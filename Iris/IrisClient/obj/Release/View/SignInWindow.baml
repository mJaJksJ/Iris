   M S B A M L   `   `   `  ���� E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient      IrisClient.SignInWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:IrisClient     -     � Title$  Авторизация��$	��450��$	��350�� � Icon$" /Source/iris_dvoynoy_kh4.png��$	��350��$	��450��$	��450��$	��350��4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=� � WindowStartupLocation$ CenterScreen=� � 	Resources    FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background	 �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
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
 0.56Q�P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  �@J�IsKeyboardFocused . . ��� $ border��8   � �� ]�  �� + �@��#IsInactiveSelectionHighlightEnabled . ��  �@��IsSelectionActive .  ./���  �@��SelectionBrush# � /�.��� ���	#FF2F1035.+��� -    ��Name$ bSignIn��#��� 
 ���	#FFEBEAC9$��
Войти��$
��Left=�$��30��$��
50,229,0,0q�$	��Top=�$	��250��$��0q�$��Bookman Old Style)� �� 	IsDefault . ���� $	 White�� �� Opacity$
 0.15Q��� -   $ bSignUp��#��� 
 ���	#FFEBEAC9$*��$Зарегистрироваться��$
��Left=�$��30��$��
50,276,0,0q�$	��Top=�$	��250��$��Bookman Old Style)����� $	 White��$
 0.15Q��� -    ��Name$ tblogin��#���  ���	#FFEBEAC9$
��Left=�$��30��$��
50,100,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��250��}�. $��Bookman Old Style)�G� -    G�Name$ 
tbPassword��$
��Left=����	#FFEBEAC9$��30��$��
50,160,0,0q�$	��Top=�$	��250��$��0q�}�. $��Bookman Old Style)��� -    ��Name$ lableLoginError��$5��/Неверный логин или пароль�����	#FFA92E1A$��Center=�$
��Left=�$��
50,198,0,0q�$	��Top=�$	��250��$y�Hidden=�$��Bookman Old Style)��� $��Логин:�����	#FFEBEAC9$��Bookman Old Style)�$
��Left=�$��	50,80,0,0q�$	��Top=��� $��Пароль:�����	#FFEBEAC9$��Bookman Old Style)�$
��Left=�$��
50,140,0,0q�$	��Top=�