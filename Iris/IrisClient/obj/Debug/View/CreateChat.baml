   M S B A M L   `   `   `  ����E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient  5   	       IrisClient.CreateChat   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:IrisClient     5   	   -   5          � Title$  Создание чата��5	   	   $	��450��6   $	��350��6,    � Icon$" /Source/iris_dvoynoy_kh4.png��5
   	   $	��350��5   	   $	��450��6   $	��450��6(   $	��350��68   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=�6G    � WindowStartupLocation$ CenterScreen=�6|    � 	Resources 5         ButtonBorderStyle �� 
TargetType �� Property �� Value �� 
TargetType	 ��Name
 �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%�  &	        &	 �    &	     &	 '    &	 J    7  7  7  �� 5   
   " ��6*   .�5      ��  � ��# � ��6+   �� 5       � ��$ 0q�60   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � ��$ 1q�6(   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $	 border��6!   $
 2��61   #��z��6B   #��z��6n   #��z��6�    . ._�5      �� $ contentPresenter��6/   |�.  #��z��6[   #��z��6�   ��. # z 6�   #��z��6  5       5      P� 5       �@��IsDefaulted . . �5   "   �� $ border��6@   # � ��6T    � ��5      P� 5       �@J�IsMouseOver . . �5   "   �� $ border��6?    � �� �	#FF6C20D76S   5       5$      5&      5'      �� 5(   
   $ 	#FFABAdB3��68   �� 5)   
   $ 	#FF7EB4EA��6;   �� 5*   
   $ 	#FF569DE5��67   �� 5+   
   " ��6&   .�5,      ��  � ��# � ��6+   �� 5-       � ��8   6,   �� 5.       � ��# � ��6+   �� 5/       � ��$ 1q�60   �� 50       �@ TabNavigation$
 None=�6A   �� 51       � ��$
 Left=�6;   �� 52       �@�FocusVisualStyle 61   Z� �� 53       �@J�	AllowDrop . 6*   �� 54       �@��PanningMode$ VerticalFirst=�69   �� 55       �@��IsFlicksEnabled .  67   �� 56       � �� 57      �� 58      " ��6&   .R�59      �� $	 border��6!   $
 0��61   ���	#FF840DE0$��0q�6Z   #��z��6n    . ._�5:      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5;       5<      P� 5=       � {� .  . �5>   "   �� $ border��6<    �@J�Opacity$
 0.56Q�6P   5?      P� 5@       �@J�IsMouseOver . . �5A   "   �� $ border��6@   8   � ��6T   5B      P� 5C       �@J�IsKeyboardFocused . . �5D   "   �� $ border��6@   8   � ��6T   5E      5G      5I       5J      ]� 5K       5L      �� 5M      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 5N       �@��IsSelectionActive .  6A   ./�5P      ��  �@��SelectionBrush# � /�67   5Q      5S      5U      .��5V      � ���	#FF2F1035.+�5W   
   �� -   5        $��
tbChatName��5X      #���  5W      ���	#FFEBEAC9$
��Left=�5Y      $��25��6.   $��
75,163,0,0q�6:    �� TextWrapping$
 Wrap=�5Z      $	��Top=�5[      $	��200��6+   $��Bookman Old Style)�5\      �� 5^   
   -   5        #���   5^      $��Создать чат��6K   ���	#FFEBEAC9$��0q�6�   $
��Left=�6�   $��
75,216,0,0q�6�   $	��Top=�6�   $	��200��6�    J� RenderTransformOrigin$ -0.885,-1.66&�6�   $��25��6   $��Bookman Old Style)�6,   �� 	IsDefault . ��5_      �� 5`      $ White��6"    �� Opacity$
 0.15Q�60   5b      �� 5c   
   -   5         ��Name$ lableExistingChat��5c      $3��-Такой чат уже существует��6+   $��Center=�6N   ���	#FFA92E1A$
��Left=�6�   $��
53,261,0,0q�6�   $	��Top=�6�   $	��244��6�   $y�Hidden=�6�   $��Bookman Old Style)�6�   $��24��6  �� 5e   
   -   5        $
��Left=�5e      $��	25,14,0,0q�6-   $��0q�6A   $	��Top=�6U   $��25��6m   $��25��6x   
������ $��Bookman Old Style)�6�   .��5f      �� ��5g      �� 5h      " ��6   .�5i      ��  � ��$ /Source/back-arrow.png��63   5j      5l      5n      �� 5o   
   $��Название чата��6   $
��Left=�6(   ���	#FFEBEAC9$��
75,143,0,0q�6Z   $	��Top=�6n   $��Bookman Old Style)�6�   5p      5q      