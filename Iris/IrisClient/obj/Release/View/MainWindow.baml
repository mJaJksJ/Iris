   M S B A M L   `   `   `  ���� E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient      IrisClient.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:IrisClient     -     � Icon$"  /Source/iris_dvoynoy_kh4.png�� � Title$
 Iris��$	��450��$	��800��$	��800��$	��450�����	#FF2F10354  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=� � WindowStartupLocation$ CenterScreen=� � 	Resources    ListBox.Static.Background �� Color  ListBox.Static.Border  ListBox.Disabled.Background  ListBox.Disabled.Border  ListBoxStyle1 �� 
TargetType �� Property �� Value	 �� 
TargetType
 ��Name �� Padding J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName ]� 
Conditions �� Property �� Value��%�  &	        &	      &	 *     &	 ?     &	 T     7   7  7  7  �� $ 	#FFFFFFFF���� $ 	#FFABADB3���� $ 	#FFFFFFFF���� $ 	#FFD9D9D9���� " ��.���  � ��8   ��  � ��8  ��  � ��$ 1q���  � ��# � ����  � ��$
 Auto=���  � �� . ��  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��  � ��$ Center=���  � �� �� "	 ��.R��� $
 Bd��#��z��#��z��#��z��$ 1q� . ._��� |�.  #��z��.���� # z  P�  � {� .  . ��� $ Bd��8   � ���� $ Bd��8   � ��]�  ��  �@��
IsGrouping . �� " �@%�IsVirtualizingWhenGrouping .  ./���  � �� .  .���  � ColumnDefinitions �� $	��190 �$	��190��$	��190����  � RowDefinitions �� $��80 ��� .+��� -    ��Name$ 	lbDialogs��{�.  $y�Hidden=�$��0,0,0,0q� J� RenderTransformOrigin$ 0.293,0.577&�$��1��$��16(�$��Bookman Old Style)����	#FFEBEAC9$��0q����� $ White�� �� Opacity$	 0.1Q����� $ 	#FF929AB3��$ 0Q��� -   $ lbFile��{�.  $y�Hidden=�$��
0,0,0.4,51q�$ 0.293,0.577&�$��1��$��16(�$��Bookman Old Style)����	#FFEBEAC9$��0q����� $ White��$	 0.1Q����� $ 	#FF929AB3��$ 0Q��� -    ��Name$ 
lSavedFile�����	#FFEBEAC9$
��Left=�$��52,0,0,5q�$��Bottom=�$	��130��$y�Hidden=�$��12(�$��Bookman Old Style)�$��1��$ 
0.59,0.884&�.���� -    ��Name$ tbSavedFile��$,��&Файл сохранен в Downloads��$
��Wrap=�$	��122���� -   $ 	lbProfile�� J� IsHitTestVisible .  $y�Hidden=�$��
0,0,0.4,51q�$ 0.293,0.577&�$��1��$��Bookman Old Style)����	#FFEBEAC9$��0q�$��16(����� $ White��$	 0.1Q����� $ 	#FF929AB3��$ 0Q��� -   $ lbChatParticipant��{�.  $y�Hidden=�$��
0,0,0.4,51q�$ 0.293,0.577&�$��1��$��Bookman Old Style)����	#FFEBEAC9$��0q�$��16(����� $ White��$	 0.1Q����� $ 	#FF929AB3��$ 0Q��� -   $ lbCurrentDialog��$��Disabled=�$��0,0,-0.4,50q�$��1��$��1��$��14(�$��Bookman Old Style)�$��0q����	#FFEBEAC9 �� SelectionMode$ Extended=�#���  ���� .R��� $
��Wrap=����� ���� $ 	#FFB383FF��$ 0Q����� $ 	#FFABADB3��$ 0Q��� -	   $��bChangePassword��$y�Hidden=�{�. 
������ $��0q�$
��Left=�$��70,0,0,8q�$��1��$��Bottom=�$��37��$��37��$��Bookman Old Style)�.���� ���� " ��.���  � ��$ /Source/changepass.png���� -
    ��Name$ 	tbMessage�� �� TextWrapping$
 Wrap=�$	��450��$��50��$��52��$��14(�$��Bookman Old Style)�$��1.6,0,151.6,0q�$��0q�$��1��$��1�����	#FFEBEAC9$��Bottom=����	#FFA375BD�� -    ��Name$ bSendMessage��$��Center=�  � UseLayoutRounding  .  $��1��$��1��$��0q�$��2q�
���   �
�������$��52��$
��97.6��$��75��$��52��$��52��$��Bottom=�$��Right=�$��75��$��0,0,0,0q����� $ 	#FFFFF2F2��$	 0.5Q�.���� $��40��$��40������ " ��.���  � ��$ /Source/email.png���� -   $ 	bSendFile��$��Center=�  .  $��1��$��1��$��0q�$��2q�
���   �
�������$��52��$
��97.6��$��75��$��52��$��52��$��Bottom=�$��Right=�$��75��$��0,0,75,0q����� $ 	#FFFFF2F2��$	 0.5Q�.���� $��40��$��40������ " ��.���  � ��$ /Source/Upload.png���� -   $ 
bShowChats��$
��Left=�$��0q�
������ $��	57,15,0,0q�$	��Top=�$��37��$��37��$ 1.539,0.71 &�$��0��$��0��.���� ���� " ��.���  � ��$ /Source/message.png���� -   $
��Left=�$��0q�
������ $��
107,15,0,0q�$	��Top=�$��37��$��37��$ 1.539,0.71 &�$��0��$��0��.���� $ 0.5,0.5&�z�V� .~��� �� �� ! �� Angle$	! 360Q�T� ���� " ��.���  � ��$ /Source/addmes.png�� � $�� ��$��190,0,-0.4,0q�$��Trebuchet MS)�$��2������ $ Black��$	 0.1Q��� -   $ bAddUser��$��Right=�
������ $��0q�$��	0,15,75,0q�$	��Top=�$��50��$��50��$ 
1.539,0.71&�$��1��$��0��$y�Hidden=�.���� ���� " ��.���  � ��$ /Source/adduser.png���� -   $ bProfile��$
��Left=�
������ $��0q�$��	10,15,0,0q�$	��Top=�$��37��$��37��$ 
1.539,0.71&�$��0��$��0��.���� ���� " ��.���  � ��$ /Source/user.png���� -   $ bFiles��$
��Left=�
������ $��0q�$��
153,15,0,0q�$	��Top=�$��37��$��37��$ 
1.539,0.71&�$��0��$��0��.���� ���� " ��.���  � ��$ /Source/files.png���� -   $ lCurrentChatName��$�� ��$��1��$��16,20,161,15q�$��20(�$��Bookman Old Style)����	#FFEBEAC9�� -   $ bChatParticipant��
������ $��1��$��Right=�$��	0,15,10,0q�$	��Top=�$��0q�$��50��$��50��.���� ���� " ��.���  � ��$ /Source/members.png���� -   $��bExit��$y�Hidden=�{�.  
������ $��0q�$
��Left=�$��10,0,0,8q�$��1��$��Bottom=�$��37��$��37��.���� ���� " ��.���  � ��$ /Source/exit.png���� -   $��	bSaveFile��$y�Hidden=�{�.  
������ $��0q�$��5,0,0,8q�$��1��$��37��$��Bottom=�$ 0.522,0.741&�$
��Left=�$��37��.���� ���� " ��.���  � ��$ /Source/download.png���� -   $��bExitFromChat��$y�Hidden=�{�.  
������ $��0q�$
��Left=�$��10,0,0,8q�$��1��$��Bottom=�$��37��$��37��.���� ���� " ��.���  � ��$ /Source/exitfromchat.png���� -   $��bRemoveUserFromChat��
������ $��0q�$y�Hidden=�{�.  $
��Left=�$��	130,0,0,8q�$��1��$��Bottom=�$��37��$��37��.���� ���� " ��.���  � ��$ /Source/trash.png���� -   $��bMakeSilent��$y�Hidden=�{�.  
������ $��0q�$
��Left=�$��70,0,0,8q�$��1��$��Bottom=�$��37��$��37��.���� ���� " ��.���  � ��$ /Source/mute.png���� -   $��bMakeNotSilent��$y�Hidden=�{�.  
������ $��0q�$
��Left=�$��70,0,0,8q�$��1��$��Bottom=�$��37��$��37��.���� ���� " ��.���  � ��$ /Source/unmute.png��