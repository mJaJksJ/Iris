﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using Microsoft.Data.Sqlite;
using System.Runtime.Serialization;

namespace IrisLib
{
    [Serializable]
    [DataContract]
    public class Database
    {
        [DataMember] private const string DBPath = "Data Source=..\\..\\..\\IrisHost\\Database\\database.db";
        [DataMember] public List<User> Users { get; set; }

        [DataMember] public List<Chat> Chats { get; set; }

        [DataMember] public int UsersCountAsNextID;
        [DataMember] public int ChatsCountAsNextID;
        [DataMember] public int MessagesCountAsNextID;

        public Database()
        {
            Users = new List<User>();
            Chats = new List<Chat>();
            this.Update();
        }

        public Database(bool eWithoutUpdate)
        {
            Users = new List<User>();
            Chats = new List<Chat>();
        }

        public void Update(Database newDatabase)
        {
            if (newDatabase != null)
            {
                Users.Clear();
                Chats.Clear();
                Users.AddRange(newDatabase.Users);
                Chats.AddRange(newDatabase.Chats);
                UsersCountAsNextID = newDatabase.UsersCountAsNextID;
                ChatsCountAsNextID = newDatabase.ChatsCountAsNextID;
                MessagesCountAsNextID = newDatabase.MessagesCountAsNextID;
            }
        }

        public User GetUserFromList(string login)
        {
            for (int i = 0; i < Users.Count(); i++)
            {
                if (Users[i].Login.Equals(login))
                {
                    return Users[i];
                }
            }
            return null;
        }

        public User GetUserFromList(int id)
        {
            for (int i = 0; i < Users.Count(); i++)
            {
                if (Users[i].ID == id)
                    return Users[i];
            }
            return null;
        }

        public Chat GetChatFromList(int id)
        {
            for (int i = 0; i < Chats.Count(); i++)
            {
                if (Chats[i].ID == id)
                    return Chats[i];
            }
            return null;
        }

        public Chat GetChatFromList(string name)
        {
            for (int i = 0; i < Chats.Count(); i++)
            {
                if (Chats[i].Name.Equals(name))
                    return Chats[i];
            }
            return null;
        }

        public bool GetUsersFromDB()
        {
            Console.Out.WriteLine(AppDomain.CurrentDomain.BaseDirectory);
            try
            {
                using (var connection = new SqliteConnection(DBPath))
                {
                    connection.Open();

                    var command = connection.CreateCommand();
                    command.CommandText =
                    @"
                    SELECT * 
                    FROM Users 
                    ";

                    Users.Clear();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Users.Add(new User(reader.GetInt32(0), reader.GetString(1), reader.GetString(2),
                                reader.GetString(3), reader.GetInt32(4), reader.GetString(5), reader.GetString(6)));
                        }
                    }
                    connection.Close();
                }

                UsersCountAsNextID = Users.Count;

                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return false;
            }
        }

        public List<string> GetFilesFromDB(int ChatId)
        {
            List<string> files = new List<string>();
            Console.Out.WriteLine(AppDomain.CurrentDomain.BaseDirectory);
            try
            {
                using (var connection = new SqliteConnection(DBPath))
                {
                    connection.Open();

                    var command = connection.CreateCommand();
                    command.CommandText =
                    @"
                    SELECT DOC 
                    FROM Messages
                    WHERE DOC NOT NULL
                    AND Chat_id = @chat_id
                    ";
                    command.Parameters.AddWithValue("@chat_id", ChatId);
                    Users.Clear();
                    
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            files.Add(reader.GetString(0));
                        }
                    }
                    connection.Close();
                }
                return files;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return null;
            }
        }

        public bool AddUserToDB(User user)
        {
            Users.Add(user);
            try
            {
                using (var connection = new SqliteConnection(DBPath))
                {
                    if (user.ID == 0)
                    {
                        UsersCountAsNextID += 1;
                        user.ID = UsersCountAsNextID;
                    }

                    connection.Open();

                    var command = connection.CreateCommand();
                    command.CommandText =
                     @"
                    INSERT OR IGNORE 
                    INTO 'Users'('User_id','Name','Surname','Nickname','Age','Login','Password') 
                    VALUES (@id, @name, @surname, @nickname, @age, @login, @password)
                    ";
                    command.Parameters.AddWithValue("@id", user.ID);
                    command.Parameters.AddWithValue("@name", user.Name);
                    command.Parameters.AddWithValue("@surname", user.Surname);
                    command.Parameters.AddWithValue("@nickname", user.Nickname);
                    command.Parameters.AddWithValue("@age", user.Age);
                    command.Parameters.AddWithValue("@login", user.Login);
                    command.Parameters.AddWithValue("@password", user.Password);
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return false;
            }
        }

        public bool GetChatsFromDB()
        {
            try
            {
                using (var connection = new SqliteConnection(DBPath))
                {
                    connection.Open();

                    var command = connection.CreateCommand();
                    command.CommandText =
                    @"
                    SELECT *
                    FROM Chats
                    ";

                    Chats.Clear();

                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Chats.Add(new Chat(reader.GetInt32(0), reader.GetString(1)));
                        }
                    }
                    connection.Close();
                    connection.Open();
                    for (int i = 0; i < Chats.Count(); i++)
                    {
                        command = connection.CreateCommand();
                        command.CommandText =
                        @"
                         SELECT *
                         FROM Messages
                         WHERE Chat_id LIKE @id
                        ";
                        command.Parameters.AddWithValue("@id", Chats[i].ID);

                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                Chats[i].Messages.Add(new Message(reader.GetInt32(0), GetUserFromList(reader.GetInt32(2)), reader.GetString(3), DateTime.Parse(reader.GetString(5))));
                            }
                        }

                        command = connection.CreateCommand();
                        command.CommandText =
                        @"
                         SELECT *
                         FROM LinkUC
                         WHERE Chat_id LIKE @id
                        ";
                        command.Parameters.AddWithValue("@id", Chats[i].ID);
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                int tmp = reader.GetInt32(0);
                                Chats[i].Members.Add(GetUserFromList(tmp));
                                if (reader.GetString(2).Equals("root"))
                                    Chats[i].RootID = tmp;
                            }
                        }
                        command = connection.CreateCommand();
                        command.CommandText =
                        @"
                         SELECT *
                         FROM LinkUC
                         WHERE Chat_id LIKE @id
                         AND Muted = 1
                        ";
                        command.Parameters.AddWithValue("@id", Chats[i].ID);
                        using (var reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                int tmp = reader.GetInt32(0);
                                Chats[i].SilentMembers.Add(GetUserFromList(tmp));
                                if (reader.GetString(2).Equals("root"))
                                    Chats[i].RootID = tmp;
                            }
                        }

                    }
                    connection.Close();
                }
                ChatsCountAsNextID = Chats.Count;
                MessagesCountAsNextID = 0;
                foreach (Chat chat in Chats)
                {
                    MessagesCountAsNextID += chat.Messages.Count;
                }
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return false;
            }
        }

        public bool ChangePassword(User user)
        {
            for (int i = 0; i < Users.Count; i++)
            {
                if (user.ID == Users[i].ID)
                {
                    Users[i].Password = user.Password;
                }
            }
            try
            {
                using (var connection = new SqliteConnection(DBPath))
                {

                    connection.Open();

                    var command = connection.CreateCommand();
                    command.CommandText =
                    @"
                    UPDATE Users
                    SET Password = @password
                    WHERE User_id LIKE @id
                    ";
                    command.Parameters.AddWithValue("@id", user.ID);
                    command.Parameters.AddWithValue("@password", user.Password);
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return false;
            }
        }

        public bool AddUserToChat(User user, int chatID)
        {
            if (user == null)
            {
                return false;
            }
            try
            {
                if (GetChatFromList(chatID).Members.Contains(user))
                {
                    return false;
                }
                GetChatFromList(chatID).Members.Add(user);
                AddChatToDB(GetChatFromList(chatID));
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool AddMessageToChat(Message message, int chatID)
        {
            try
            {
                MessagesCountAsNextID += 1;
                message.ID = MessagesCountAsNextID;
                GetChatFromList(chatID).Messages.Add(message);
                AddChatToDB(GetChatFromList(chatID));
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool AddChatToDB(Chat chat)
        {
            try
            {
                using (var connection = new SqliteConnection(DBPath))
                {
                    if (chat.ID == 0)
                    {
                        ChatsCountAsNextID += 1;
                        chat.ID = ChatsCountAsNextID;
                        Chats.Add(chat);
                    }

                    connection.Open();

                    var command = connection.CreateCommand();
                    command.CommandText =
                    @"
                    INSERT OR IGNORE 
                    INTO 'Chats'('Chat_id','name')
                    VALUES (@Chat_id, @name)
                    ";
                    command.Parameters.AddWithValue("@Chat_id", chat.ID);
                    command.Parameters.AddWithValue("@name", chat.Name);

                    command.ExecuteNonQuery();

                    Directory.CreateDirectory("..\\..\\..\\IrisHost\\Files\\" + chat.Name);

                    for (int i = 0; i < chat.Messages.Count(); i++)
                    {
                        command = connection.CreateCommand();
                        if (chat.Messages[i].Doc != null)
                        {
                            command.CommandText =
                            @"
                            INSERT OR IGNORE 
                            INTO 'Messages'('Mes_id','Chat_id', 'Sender_id', 'Text','Doc','DateTime')
                            VALUES (@Mes_id, @Chat_id, @Sender_id, @Text,@Doc, @DateTime)
                            ";
                            command.Parameters.AddWithValue("@Doc", chat.Messages[i].Doc);
                        }
                        else
                        {
                            command.CommandText =
                            @"
                            INSERT OR IGNORE 
                            INTO 'Messages'('Mes_id','Chat_id', 'Sender_id', 'Text','DateTime')
                            VALUES (@Mes_id, @Chat_id, @Sender_id, @Text, @DateTime)
                            ";
                        }
                        command.Parameters.AddWithValue("@Mes_id", chat.Messages[i].ID);
                        command.Parameters.AddWithValue("@Chat_id", chat.ID);
                        command.Parameters.AddWithValue("@Sender_id", chat.Messages[i].Sender.ID);
                        command.Parameters.AddWithValue("@Text", chat.Messages[i].Text);
                        command.Parameters.AddWithValue("@DateTime", chat.Messages[i].Date.ToString());
                        command.ExecuteNonQuery();
                    }

                    for (int i = 0; i < chat.Members.Count(); i++)
                    {
                        command = connection.CreateCommand();
                        command.CommandText =
                            @"
                            INSERT OR IGNORE 
                            INTO 'LinkUC'('User_id','Chat_id', 'Rights', 'Muted')
                            VALUES (@User_id, @Chat_id, @Rights, 0)
                            ";
                        command.Parameters.AddWithValue("@User_id", chat.Members[i].ID);
                        command.Parameters.AddWithValue("@Chat_id", chat.ID);
                        if (chat.RootID != chat.Members[i].ID)
                            command.Parameters.AddWithValue("@Rights", "user");
                        else
                            command.Parameters.AddWithValue("@Rights", "root");
                        command.ExecuteNonQuery();
                    }


                    for (int i = 0; i < chat.SilentMembers.Count(); i++)
                    {
                        command = connection.CreateCommand();
                        command.CommandText =
                            @"
                            INSERT OR IGNORE 
                            INTO 'LinkUC'('User_id','Chat_id', 'Rights', 'Muted')
                            VALUES (@User_id, @Chat_id, @Rights, 1)
                            ";
                        command.Parameters.AddWithValue("@User_id", chat.SilentMembers[i].ID);
                        command.Parameters.AddWithValue("@Chat_id", chat.ID);
                        if (chat.RootID != chat.SilentMembers[i].ID)
                            command.Parameters.AddWithValue("@Rights", "user");
                        else
                            command.Parameters.AddWithValue("@Rights", "root");
                        command.ExecuteNonQuery();
                    }

                    connection.Close();
                }
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
                return false;
            }
        }

        public bool Update()
        {
            if (GetUsersFromDB() && GetChatsFromDB())
            {
                return true;
            }
            return false;
        }

        public new string ToString()
        {
            string str = "Users: \n";
            for (int i = 0; i < Users.Count(); i++)
            {
                str += Users[i].ToString();
            }
            str += "\nChats:\n";
            for (int i = 0; i < Chats.Count(); i++)
            {
                str += Chats[i].ToString();
            }
            return str;
        }

        public bool AddFileMessageToDB()
        {
            try
            {
                return true;
            }
            catch
            {
                return false;
            }

        }

        public bool RemoveUserFromChat(int userID, int chatID)
        {
            try
            {
                if (GetChatFromList(chatID).GetUserFromChat(userID) != null)
                {
                    GetChatFromList(chatID).Members.Remove(GetChatFromList(chatID).GetUserFromChat(userID));
                    GetChatFromList(chatID).SilentMembers.Remove(GetChatFromList(chatID).GetUserFromChat(userID));
                }

                Console.Out.WriteLine(AppDomain.CurrentDomain.BaseDirectory);
                try
                {
                    using (var connection = new SqliteConnection(DBPath))
                    {
                        connection.Open();

                        var command = connection.CreateCommand();
                        command.CommandText =
                        @"DELETE FROM LinkUC WHERE User_id = @userID AND Chat_id = @chatID";
                        command.Parameters.AddWithValue("@userID", userID);
                        command.Parameters.AddWithValue("@chatID", chatID);
                        command.ExecuteNonQuery();
                        connection.Close();
                    }

                    return true;
                }
                catch (Exception e)
                {
                    Console.WriteLine("{0} Exception caught.", e);
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }

        public bool MakeUserInChatSilent(int userID, int chatID)
        {
            Chat chat = GetChatFromList(chatID);
            if (chat != null)
            {
                bool res = chat.MakeUserSilent(userID);
                try
                {
                    using (var connection = new SqliteConnection(DBPath))
                    {
                        connection.Open();
                        var command = connection.CreateCommand();
                        command.CommandText =
                        @"
                        UPDATE LinkUC
                        SET Muted = 1
                        WHERE User_id LIKE @user_id
                        AND Chat_id LIKE @chat_id
                        ";
                        command.Parameters.AddWithValue("@user_id", userID);
                        command.Parameters.AddWithValue("@chat_id", chatID);
                        command.ExecuteNonQuery();
                        connection.Close();
                    }
                    return true && res;
                }
                catch (Exception e)
                {
                    Console.WriteLine("{0} Exception caught.", e);
                    return false;
                }
            }
            return false;
        }

        public bool MakeUserInChatNotSilent(int userID, int chatID)
        {
            Chat chat = GetChatFromList(chatID);
            if (chat != null)
            {
                bool res = chat.MakeUserNotSilent(userID);
                try
                {
                    using (var connection = new SqliteConnection(DBPath))
                    {
                        connection.Open();

                        var command = connection.CreateCommand();
                        command.CommandText =
                        @"
                        UPDATE LinkUC
                        SET Muted = 0
                        WHERE User_id LIKE @user_id
                        AND Chat_id LIKE @chat_id
                        ";
                        command.Parameters.AddWithValue("@user_id", userID);
                        command.Parameters.AddWithValue("@chat_id", chatID);
                        command.ExecuteNonQuery();
                        connection.Close();
                    }
                    return true && res;
                }
                catch (Exception e)
                {
                    Console.WriteLine("{0} Exception caught.", e);
                    return false;
                }
            
            }
            return false;
        }
    }
}