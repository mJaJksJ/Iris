   M S B A M L   `   `   `  ���� E  AIrisClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:IrisClient
IrisClient      IrisClient.CreateChat   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     *localclr-namespace:IrisClient     -     � Title$  Создание чата��$	��450��$	��350�� � Icon$" /Source/iris_dvoynoy_kh4.png��$	��350��$	��450��$	��450��$	��350��4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=� � WindowStartupLocation$ CenterScreen=� � 	Resources    ButtonBorderStyle �� 
TargetType �� Property �� Value �� 
TargetType	 ��Name
 �� CornerRadius J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName  TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border  TextBoxStyle1-  'System.Windows.Input.KeyboardNavigation ��Name �� Triggers ]� 
Conditions �� Property �� Value��%a  &	        &	 �    &	 �    &	 �    &	 �    7  7  7  �� " ��.���  � ��# � ����  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $	 border��$
 2��#��z��#��z��#��z�� . ._��� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border�� � �� �	#FF6C20D7�� $ 	#FFABAdB3���� $ 	#FF7EB4EA���� $ 	#FF569DE5���� " ��.���  � ��# � ����  � ��8   ��  � ��# � ����  � ��$ 1q���  �@ TabNavigation$
 None=���  � ��$
 Left=���  �@�FocusVisualStyle Z� ��  �@J�	AllowDrop . ��  �@��PanningMode$ VerticalFirst=���  �@��IsFlicksEnabled .  ��  � �� �� " ��.R��� $	 border��$
 0�����	#FF840DE0$��0q�#��z�� . ._��� $ PART_ContentHost��|�.  $��Hidden=�$��Hidden=� P�  � {� .  . ��� $ border�� �@J�Opacity$
 0.56Q�P�  �@J�IsMouseOver . . ��� $ border��8   � ��P�  �@J�IsKeyboardFocused . . ��� $ border��8   � �� ]�  �� + �@��#IsInactiveSelectionHighlightEnabled . ��  �@��IsSelectionActive .  ./���  �@��SelectionBrush# � /�.��� ���	#FF2F1035.+��� -   $��
tbChatName��#���  ���	#FFEBEAC9$
��Left=�$��25��$��
75,163,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��200��$��Bookman Old Style)��� -   #���   $��Создать чат�����	#FFEBEAC9$��0q�$
��Left=�$��
75,216,0,0q�$	��Top=�$	��200�� J� RenderTransformOrigin$ -0.885,-1.66&�$��25��$��Bookman Old Style)� �� 	IsDefault . ���� $ White�� �� Opacity$
 0.15Q��� -    ��Name$ lableExistingChat��$3��-Такой чат уже существует��$��Center=����	#FFA92E1A$
��Left=�$��
53,261,0,0q�$	��Top=�$	��244��$y�Hidden=�$��Bookman Old Style)�$��24���� -   $
��Left=�$��	25,14,0,0q�$��0q�$	��Top=�$��25��$��25��
������ $��Bookman Old Style)�.���� ���� " ��.���  � ��$ /Source/back-arrow.png���� $��Название чата��$
��Left=����	#FFEBEAC9$��
75,143,0,0q�$	��Top=�$��Bookman Old Style)�