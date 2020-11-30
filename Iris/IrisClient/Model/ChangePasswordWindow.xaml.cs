﻿using IrisLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace IrisClient
{
    /// <summary>
    /// Логика взаимодействия для EditProfile.xaml
    /// </summary>
    public partial class ChangePasswordWindow : Window
    {
        private bool isShowOldPassword = true, isShowNewPassword = true;

        public ChangePasswordWindow()
        {
            InitializeComponent();
        }
         
        private void RemoveTextOldPassword(object sender, RoutedEventArgs e)
        {
            if(isShowOldPassword)
            {
                tbOldPassword.Text = null;
                tbOldPassword.Foreground = Brushes.Black;
                isShowOldPassword = false;
            }
        }

        private void RemoveTextNewPassword(object sender, RoutedEventArgs e)
        {
            if (isShowNewPassword)
            {
                tbNewPassword.Text = null;
                tbNewPassword.Foreground = Brushes.Black;
                isShowNewPassword = false;
            }
        }

        private void ButtonClickChangePassword(object sender, RoutedEventArgs e)
        {
            if (ClientData.CurrentUser.Password.Equals(tbOldPassword.Text))
            {
                ClientData.CurrentUser.Password = tbNewPassword.Text;
                ClientData.client.ChangePassword(ClientData.CurrentUser);
                this.Close();
            }
            else
            {
                lableChangePassword.Visibility = Visibility.Visible;
                tbOldPassword.Text = null;
                tbNewPassword.Text = null;
            }
        }


        private void ButtonClickBack(object sender, EventArgs e)
        {
            this.Close();
        }

        private void WindowClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MainWindow.isWindowOpenChangePassword = false;
            //new MainWindow().Show();
            //ClientData.ShowMainWindow();

        }
    }
}
