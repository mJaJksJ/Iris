   M S B A M L   `   `   `  ���� E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient      IrisClient.SignUpWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:IrisClient     -     � Title$  Регистрация��$	��450��$	��350�� � Icon$" /Source/iris_dvoynoy_kh4.png��$	��350��$	��450��$	��450��$	��350��4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=� � WindowStartupLocation$ CenterScreen=� � 	Resources    FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background	 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonBorderStyle
 �� 
TargetType �� 
TargetType ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border  TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%-  &	        &	 N     &	 c     &	 x     &	 �     &	 �     &	 �     &	 �     &	 �     &		 �     &	
     7   7  7  7  7  7  7  7  7 	 &	 �    &	     &	      &	 5    7  7  7  �� .���  � �� �� .R��� $��2q� . #��� ��$��1��$	 1 2R��� $	 	#FFDDDDDD���� $	 	#FF707070���� $	 	#FFBEE6FD���� $	 	#FF3C7FB1���� $	 	#FFC4E5F6���� $	 	#FF2C628B���� $	 	#FFF4F4F4���� $	 	#FFADB2B5���� $	 	#FF838383���� "
 ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��$ 2��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �	#FF6C20D7�� $ border��8   � ��P�  � �� . . ��� $ border��8   � ���� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� $	 	#FFABAdB3���� $	 	#FF7EB4EA���� $	 	#FF569DE5���� "
 ��.���  � ��# � ����  � ��8   ��  � ��# � ����  � ��$ 1q���  �@ TabNavigation$
 None=���  � ��$
 Left=���  �@�FocusVisualStyle Z� ��  �@J�	AllowDrop . ��  �@��PanningMode$ VerticalFirst=���  �@��IsFlicksEnabled .  ��  � �� �� " ��.R��� $ border��$ 0�����	#FF840DE0$��0q�#��z�� . ._��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=� P�  � {� .  . ��� $ border�� �@J�Opacity$
 0.56Q�P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  �@J�IsKeyboardFocused . . ��� $ border��8   � �� ]�  �� + �@��#IsInactiveSelectionHighlightEnabled . ��  �@��IsSelectionActive .  ./���  �@��SelectionBrush# � /�.��� ���	#FF2F1035.+��� -   $��tbName��#���  ���	#FFEBEAC9$
��Left=�$��25��$��	75,58,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��200��$��Bookman Old Style)��� -   $��	tbSurname��#���  ���	#FFEBEAC9$
��Left=�$��25��$��
75,103,0,0q�$
 Wrap=�$	��Top=�$	��200��$��Bookman Old Style)��� -   $��
tbNickname��#���  ���	#FFEBEAC9$
��Left=�$��25��$��
75,148,0,0q�$
 Wrap=�$	��Top=�$	��200��$��Bookman Old Style)��� -   $��tbAge��#���  ���	#FFEBEAC9$
��Left=�$��25��$��
75,193,0,0q�$
 Wrap=�$	��Top=�$	��200��$��Bookman Old Style)��� -   $��tbLogin��#���  ���	#FFEBEAC9$
��Left=�$��23��$��
75,238,0,0q�$
 Wrap=�$	��Top=�$	��200��$��Bookman Old Style)�G� -   $��
tbPassword�����	#FFEBEAC9$
��Left=�$��25��$��
75,283,0,0q�$	��Top=�$	��200��$��Bookman Old Style)��� -   #��� 
 ���	#FFEBEAC9$*��$Зарегистрироваться��$
��Left=�$��
75,335,0,0q�$	��Top=�$	��200��$��25��$��0q�$��Bookman Old Style)� �� 	IsDefault . ���� $	 White�� �� Opacity$
 0.15Q��� -	    ��Name$ 	lErorrMes��
���  ��$,��&Логин уже существует��$��Center=�$
��Left=�$��
75,365,0,0q�$	��Top=�$	��200��$y�Hidden=�$��Bookman Old Style)��� -
   $ 	lAgeErorr��
���  ��$-��'Некорректный возраст��$��Center=�$
��Left=�$��
75,365,0,0q�$	��Top=�$	��200��$y�Hidden=�$��Bookman Old Style)��� -    ��Name$
 Back��$
��Left=�$��	25,14,0,0q�$��0q�$	��Top=�$��25��$��25��
������ $��Bookman Old Style)�.���� ���� "
 ��.���  � ��$ /Source/back-arrow.png���� $��Имя:��$
��Left=�$��	75,38,0,0q����	#FFEBEAC9$��Bookman Old Style)�$	��Top=��� $��Фамилия:��$
��Left=�$��
75,83,0,0 q����	#FFEBEAC9$��Bookman Old Style)�$	��Top=��� $��Ник:��$
��Left=�$��
75,128,0,0q����	#FFEBEAC9$��Bookman Old Style)�$	��Top=��� $��Возраст:��$
��Left=�$��
75,173,0,0q����	#FFEBEAC9$��Bookman Old Style)�$	��Top=��� $��Логин:��$
��Left=�$��
75,218,0,0q����	#FFEBEAC9$��Bookman Old Style)�$	��Top=��� $��Пароль:��$
��Left=�$��
75,263,0,0q����	#FFEBEAC9$��Bookman Old Style)�$	��Top=�