   M S B A M L   `   `   `  ����E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient  5   	       IrisClient.SignInWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:IrisClient     5   	   -   5          � Title$  Авторизация��5
   	   $	��450��6   $	��350��6*    � Icon$" /Source/iris_dvoynoy_kh4.png��66   $	��350��5   	   $	��450��6   $	��450��6(   $	��350��68   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=�6G    � WindowStartupLocation$ CenterScreen=�6|    � 	Resources 5         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background	 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonBorderStyle
 �� 
TargetType �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border  TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%�  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7  7 	 &	 �    &	 �    &	     &	 (    7  7  7  �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $	 	#FFDDDDDD��6;   �� 5   
   $	 	#FF707070��67   �� 5   
   $	 	#FFBEE6FD��6>   �� 5   
   $	 	#FF3C7FB1��6:   �� 5   
   $	 	#FFC4E5F6��6<   �� 5   
   $	 	#FF2C628B��68   �� 5   
   $	 	#FFF4F4F4��6=   �� 5   
   $	 	#FFADB2B5��69   �� 5   
   $	 	#FF838383��6=   �� 5   
   "
 ��6*   .�5       ��  �@�FocusVisualStyle8   61   �� 5!       � ��8  6+   �� 5"       � ��8  6,   �� 5#       � ��# � ��6+   �� 5$       � ��$ 0q�60   �� 5%       � ��$ Center=�6;   �� 5&       � ��$ Center=�69   �� 5'       � ��$ 1q�6(   �� 5(       � �� 5)      �� 5*      " ��6&   .R�5+      �� $ border��6!   $ 2��61   #��z��6B   #��z��6n   #��z��6�    . ._�5,      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5-       5.      P� 5/       �@��IsDefaulted . . �50   "   �� $ border��6@   # � ��6T    � ��51      P� 52       �@J�IsMouseOver . . �53   "   �� $ border��6?    � �� �	#FF6C20D76S   �� 54   "   $ border��6@   8   � ��6T   55      P� 56       � �� . . �57   "   �� $ border��6?   8   � ��6S   �� 58   "   $ border��6@   8   � ��6T   59      P� 5:       � {� .  . �5;   "   �� $ border��6?   8   � ��6S   �� 5<   "   $ border��6@   8   � ��6T   �� 5=   "   $ contentPresenter��6K   8   � ��6i   5>      5@      5B      5C      �� 5D   
   $	 	#FFABAdB3��68   �� 5E   
   $	 	#FF7EB4EA��6;   �� 5F   
   $	 	#FF569DE5��67   �� 5G   
   "
 ��6&   .�5H      ��  � ��# � ��6+   �� 5I       � ��8   6,   �� 5J       � ��# � ��6+   �� 5K       � ��$ 1q�60   �� 5L       �@ TabNavigation$
 None=�6A   �� 5M       � ��$
 Left=�6;   �� 5N       �@�FocusVisualStyle 61   Z� �� 5O       �@J�	AllowDrop . 6*   �� 5P       �@��PanningMode$ VerticalFirst=�69   �� 5Q       �@��IsFlicksEnabled .  67   �� 5R       � �� 5S      �� 5T      " ��6&   .R�5U      �� $ border��6!   $ 0��61   ���	#FF840DE0$��0q�6Z   #��z��6n    . ._�5V      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5W       5X      P� 5Y       � {� .  . �5Z   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5[      P� 5\       �@J�IsMouseOver . . �5]   "   �� $ border��6@   8   � ��6T   5^      P� 5_       �@J�IsKeyboardFocused . . �5`   "   �� $ border��6@   8   � ��6T   5a      5c      5e       5f      ]� 5g       5h      �� 5i      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5j       �@��IsSelectionActive .  6A   ./�5l      ��  �@��SelectionBrush# � /�67   5m      5o      5t      .��5v      � ���	#FF2F1035.+�5y   
   �� -   5         ��Name$ bSignIn��5y      #��� 
 6"   ���	#FFEBEAC9$��
Войти��6t   $
��Left=�6�   $��30��6�   $��
50,229,0,0q�6�   $	��Top=�6�   $	��250��6�   $��0q�6�   $��Bookman Old Style)�6   �� 	IsDefault . ��5z      �� 5{      $	 White��6"    �� Opacity$
 0.15Q�60   5}      �� 5~   
   -   5        $ bSignUp��5~      #��� 
 6"   ���	#FFEBEAC9$*��$Зарегистрироваться��6u   $
��Left=�6�   $��30��6�   $��
50,276,0,0q�6�   $	��Top=�6�   $	��250��6�   $��Bookman Old Style)�6  ��5      �� 5�      $	 White��6"   $
 0.15Q�60   5�      �� 5�   
   -   5         ��Name$ tblogin��5�   ;   #���  6   ���	#FFEBEAC9$
��Left=�6d   $��30��6   $��
50,100,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��250��6�   }�. $��Bookman Old Style)�6�   G� 5�   
   -   5         G�Name$ 
tbPassword��5�      $
��Left=�6.   ���	#FFEBEAC9$��30��6a   $��
50,160,0,0q�6m   $	��Top=�6�   $	��250��6�   $��0q�6�   }�. $��Bookman Old Style)�6�   �� 5�   
   -   5         ��Name$ lableLoginError��5�      $5��/Неверный логин или пароль��6)   ���	#FFA92E1A$��Center=�6d   $
��Left=�6�   $��
50,198,0,0q�6�   $	��Top=�6�   $	��250��6�   $y�Hidden=�6�   $��Bookman Old Style)�6�   �� 5�   
   $��Логин:��6   ���	#FFEBEAC9$��Bookman Old Style)�69   $
��Left=�6X   $��	50,80,0,0q�6s   $	��Top=�6�   �� 5�   
   $��Пароль:��6   ���	#FFEBEAC9$��Bookman Old Style)�6:   $
��Left=�6Y   $��
50,140,0,0q�6t   $	��Top=�6�   5�      5�      