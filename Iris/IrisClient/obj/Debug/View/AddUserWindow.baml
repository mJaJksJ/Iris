   M S B A M L   `   `   `  ����E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient  5   	       IrisClient.AddUserWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:IrisClient     5   	   -   5          � Title$=  7Добавление пользователя в чат��5	   	   $	��450��6/   $	��350��6<    � Icon$" /Source/iris_dvoynoy_kh4.png��5
   	   $	��350��5   	   $	��450��6   $	��450��6(   $	��350��68   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=�6G    � WindowStartupLocation$ CenterScreen=�6|    � 	Resources 5         ButtonBorderStyle �� 
TargetType �� Property �� Value �� 
TargetType	 ��Name
 �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%�  &	        &	 �    &	     &	 '    &	 J    7  7  7  �� 5   
   " ��6*   .�5      ��  � ��# � ��6+   �� 5       � ��$ 0q�60   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � ��$ 1q�6(   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $	 border��6!   $
 2��61   #��z��6B   #��z��6n   #��z��6�    . ._�5      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted . . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver . . �5   "   �� $ border��6?    � �� �	#FF6C20D76S   5       5#      5%      5&      �� 5'   
   $ 	#FFABAdB3��68   �� 5(   
   $ 	#FF7EB4EA��6;   �� 5)   
   $ 	#FF569DE5��67   �� 5*   
   " ��6&   .�5+      ��  � ��# � ��6+   �� 5,       � ��8   6,   �� 5-       � ��# � ��6+   �� 5.       � ��$ 1q�60   �� 5/       �@ TabNavigation$
 None=�6A   �� 50       � ��$
 Left=�6;   �� 51       �@�FocusVisualStyle 61   Z� �� 52       �@J�	AllowDrop . 6*   �� 53       �@��PanningMode$ VerticalFirst=�69   �� 54       �@��IsFlicksEnabled .  67   �� 55       � �� 56      �� 57      " ��6&   .R�58      �� $	 border��6!   $
 0��61   ���	#FF840DE0$��0q�6Z   #��z��6n    . ._�59      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5:       5;      P� 5<       � {� .  . �5=   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5>      P� 5?       �@J�IsMouseOver . . �5@   "   �� $ border��6@   8   � ��6T   5A      P� 5B       �@J�IsKeyboardFocused . . �5C   "   �� $ border��6@   8   � ��6T   5D      5F      5H       5I      ]� 5J       5K      �� 5L      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5M       �@��IsSelectionActive .  6A   ./�5O      ��  �@��SelectionBrush# � /�67   5P      5R      5T      .��5U      � ���	#FF2F1035.+�5V   
   �� -   5        $
��tbID��5V   R   #���  6   ���	#FFEBEAC9$
��Left=�6^   $��25��6y   $��
75,154,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��200��6�   $��Bookman Old Style)�6�   �� 5W   
   -   5         ��Name$
 bAdd��5W      #���   6   $��Добавить��6y   $
��Left=�6�   $��
75,199,0,0q�6�   $	��Top=�6�   $	��200��6�   $��25��6�   
�������$��Bookman Old Style)�6    �� 	IsDefault . ��5X      �� 5Y      $ White��6"    �� Opacity$
 0.15Q�60   5[      �� 5\   
   -   5         ��Name$ lableNotAnInteger��5\      $!��Некорректный ID��6+   $��Center=�6E   ���	#FFA92E1A$
��Left=�6�   $��
75,245,0,0q�6�   $	��Top=�6�   $	��206��6�   $y�Hidden=�6�   $��Bookman Old Style)�6�   �� 5]   
   -   5        $ lableNonexistingUser��5]      $E��?Такого пользователя не существует��6.   $��Center=�6Z   ���	#FFA92E1A$
��Left=�6�   $��
53,245,0,0q�6�   $	��Top=�6�   $	��244��6�   $y�Hidden=�6�   $��Bookman Old Style)�6�   $��24��6  �� 5^   
   -   5        $
��Left=�5^      $��	25,14,0,0q�6-   $��0q�6A   $	��Top=�6U   $��25��6m   $��25��6x   
������ $��Bookman Old Style)�6�   .��5_      �� ��5`      �� 5a      " ��6   .�5b      ��  � ��$ /Source/back-arrow.png��63   5c      5e      5g      �� 5h   
   $	��ID:��6   ���	#FFEBEAC9$
��Left=�66   $	��Top=�6Q   $��
75,134,0,0q�6i   $��Bookman Old Style)�6}   5i      5j      