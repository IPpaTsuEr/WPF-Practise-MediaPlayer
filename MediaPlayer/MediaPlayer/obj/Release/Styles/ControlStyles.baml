   M S B A M L   `   `   `  ���� F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:MediaPlayer.StylesMediaPlayer.Styles  J FFrameLessWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\?clr-namespace:FrameLessWindow.Commands;assembly=FrameLessWindowFrameLessWindow.Commands O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 7 clr-namespace:MediaPlayer.ModlesMediaPlayer.Modles  W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35   MediaListExt  �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType �� 
TargetType �� Triggers P� Property P� Value	 � DataContext
 �� Mode m� CommandParameter m� Command  LovelyToggleButton  IconText 	 Heart  ControlBarForeground  
HeartSolid  LovelyMarkForeground �� 
TargetName  ControlBarHoverBackground  Slider_RepeatButton �� CornerRadius 	 Slider_Thumb �� TextAlignment 
 AwesomeS  SliderHightLightground3   -System.Windows.Media.Effects.DropShadowEffect  SliderHightLightColor    Color    ShadowDepth    
BlurRadius    	Direction �� Padding ��Name ]�Name ]� DecreaseRepeatButton �� DecreaseLarge ]� IncreaseRepeatButton �� IncreaseLarge ]� Thumb J� Effect  InnerShadowColor P� 
SourceName  
SideButton  FocusVisual J� SnapsToDevicePixels �� Orientation  ��Name  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  EnableInactive! �� DataType$   MediaPlayer.Modles.SideBarItem  SideBarSideSymbol  BoolVisibilityConvert" �� 	Converter  IconFont  StringIconConvert  Volume3  
Background  UnEnableInactive  
BorderLine   SideBarUnableForeground ! ListViewItemStyle# �� Path$ �� Mode " SideBarHoverBackground # SideBarHoverForeground $ SideBarSelectedBackground% �� Triggers& �� Binding' �� Value
( � Tag % PlayMultyConvert) `� 	Converter* �� Source & SideList ' SideBarForeground ( SideBarBackground ) NoHeaderTabControlStyle+ �Name-  'System.Windows.Input.KeyboardNavigation,   TabNavigation- � ColumnDefinitions. ��Name/ � RowDefinitions0 ��Name1 ��Name2 K� IsItemsHost3   DirectionalNavigation4   TabIndex * GroupListViewStyle5 9� 
IsExpanded6 �� StringFormat + GroupListViewItemDataStyle   MediaPlayer.Modles.Media7 d� 	IsChecked8 J� InputBindings9 d� MouseAction: �� Command; �� CommandParameter< � ToolTip , StringTimeConvert= �� ElementName> �� Triggers - ListMenuItemDataTemplate . ListMenuItemTemplate / GroupListViewItemStyle 0 EvenListItemBackgroud 1 ListItemHoverBackgroud 2 ListItemSelectedBackgroud 3 ListMenuFileterConvert? ]� 
Conditions@ �� PropertyA �� Value 4 OddListItemBackgroud 5 ScrollRepeatButtonStyle 6 ScrollThumbStyleB J� IsMouseOverC �� PageUpCommandD �� PageDownCommandE �� PageLeftCommandF �� PageRightCommand 7 SettingTabItemStyle 8 LRC_ItemsDataStyle!  MediaPlayer.Modles.LrcModle 9 Lrc_itemStyle : Lrc_List ; ViewPortControlButtonStyle < MusicCircle = StringImageConvertG �� ConverterParameter > ViewPortBackground ? ZoomOut @ ViewPortForeground 
A ZoomIn B ChangetoggleButton C NothingToggleButton D SearchItemStyle E CurrentListMenuItemTemplate F CurrentListItemStyle G CurrentListItemDataStyle H PathListItemDataStyle I PathListItemStyle J NothingButton K BorderGapMaskConverterH J� OpacityMaskI `� ConverterParameter�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     *local clr-namespace:MediaPlayer.Styles  Ffw?clr-namespace:FrameLessWindow.Commands;assembly=FrameLessWindow  Bi:http://schemas.microsoft.com/expression/2010/interactivity  .sys&clr-namespace:System;assembly=mscorlib  'ml clr-namespace:MediaPlayer.Modles  %�G  &	        &	 a    7  7  7  7  '��     &	 T    &		     7 
 '��     7  7  7 	 &	 �
    7  7  7  7  7  7  7  7  &	 �    7  7  7  7  7  7  &	 R    &	! �    7 % 7 % &	& �    &	)      &	* �    &	+     7  7  7  7 % 7 , 7 % &	- G     &	. l     7 % 7 % &	/ "    7 % 7 % 7 . 7 - 7  7 3 7 . 7 - 7 3 7  7 % 7 % &	5 H(    &	6  )    '�� �)    7 5 7 5 7 6 7 5 7 5 7 6 &	7 z-    &	8 �/    &	9 ^0    &	: �1    &	; 32    7 < 7 = 7 ? 7 A &	B O4    &	C 05    &	D E6    &	E q6    7 % &	F h7    7 % 7 % 7 E 7 - 7 3 7 % &	G X<    7 % 7  7  7  7  7 % 7 , &	H �?    &	I ;@    7 J 7 % &	K zB    '�� B    7 K �� "  d�.���  � ��
 ���� ��  � ��$	 ...����  � ��$ 0q���  �@�Tag �� *DataContext+ �� $ WindowL���  � �� �� " d�.R��� #��z��#��z��#��z��#��z��#��z��._��� #��z��#��z�� P�  �@J�IsMouseOver . . ���  �@�Cursor$
 Hand����  �@�ContextMenu �� 	 �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��编辑��$ ShowModifyMask�� �� *DataContext.TopMaskCommand+ �� $ ContextMenuL�m� $��删除��$ ShowDeleteMask�� �� *DataContext.TopMaskCommand+ �� $ ContextMenuL��� "  d�.���  � ��
 ���� ��  � �� �� " d�.R��� #��z��._�� .+��� $��No_Love��8��  8�� #���  #��z��#��z���� $��Yes_Love��8�� 8�� #���  $y�	Collapsed=�#��z��#��z�� P�  �@d�	IsChecked$
 TrueY�. ��� $ Yes_Love�� � y�$ Visible=��� $ No_Love�� � y�$ 	Collapsed=�P�  �@J�IsMouseOver . . ���  �@�Cursor$
 Hand���� # �   � ���� "  ��.���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  � ��$ 0q���  � ��$ 0q���  � �� �� " ��.R��� #��z��#��z��#��z��#��z��#��z��._��� #��z��#��z��#��z��#��z�� P�  �@J�IsMouseOver . . ��� # �   � ��P�  � �� . . ���  � ��
 ��ح��� "  ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� " ��.R��� #��z��$ 2��#��z��#��z��#��z���� "  n�.���  � ��
 ���� ��  � �� �� " n�.R��� $ 15��#��z��#��z��#��z��#��z��#��z��#��z��#��z��._��� $��
Inner_Text��#��z��#��z��$ Center=�$��1q�#��z��8��  #��z�� P�  �@J�IsMouseOver . . ���  �@�Cursor$
 Hand���� # �   � ����  �@J�Effect    # �  $ 0Q�$ 4Q�$ 0Q��� "  ��.���  �@�OverridesDefaultStyle . ��  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ Center=���  � ��$ 1q���  � ��
 �  ����  �@�Maximum$ 1Q���  �@�Value$	 0.5Q���  � �� �� " ��.R�� #��z��.+��� $��Stretch=�#��z��#��z��$ 2��$ 0q�#��z��$��4��$
��Auto��#��z��._��� $ PART_SelectionRange��]� $ 
PART_Track�� �� 8��  #��z��#��z��#��z��$��4��$��0,0,-2,0q�#��Z  �� 8�� #��Z  n� $��P_thumb��8�� $��Center=�$��Center=�$��Center=�$��Center=�$��12��$��12��#��z��    # �  $ 0Q�$ 4Q�$ 0Q� P� $ P_thumb�� � {� .  . ��� $ P_thumb�� � ��
 ������� $ P_thumb�� � ��
 ������� $ P_thumb�� Z�  �@J�Effect�� "  ��.���  �@�FocusVisualStyle8   ��  � ��
 ���� ��  � ��
 ���� ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ 
Horizontal=�.+��� 
����ح�$��8���� $  contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ���� $ border��8   � ��P�  � �� . . ��� $ border��8   � ���� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� "!  .R��� $ 
Horizontal=�$��0q�.+��� $��SideIcon��$��0q�$ 0q�$��6��#���  $��Stretch=�$
��Left=�y��� *
IsSelected+ �� $ ListViewItemL�8"   �� $��Center=�$��Stretch=�$��	10,0,10,0q�$��16(�8�� ���� *Icon+8"  �� $��Center=�$��Stretch=�$��14(����� *Title+�� $��PlayingIcon��8�� 8�� 8�� $��10,0,5,0q�$��Center=�$y�Hidden=��� "!  .R��� $��
Out_Border��#���  $��0,0,0,1q�
������ ._�� .+��� $��Center=�$��Stretch=�$
��10,0q�#���   ���� *Title+�� "  ��.���  � {� �� $# Interactiveable���  �@��
IsSelected �� $# 	IsCurrent�$$ TwoWay=���  � ��$ 0,1,1,1q���  � ��
 ���� ��  � ��$ 0q���  � ��$ 0q���  � ��$ 48����  � ��$ Stretch=���  � ��$ Stretch=���  �@�Tag �� *DataContext+ �� $ WindowL���  � �� �� " ��.R��� #��z��#��z��#��z��#��z��#��z��# z��._��� #��z��#��z��#��z�� P�  �@J�IsMouseOver . . ��� # � "  � ���� # � #  � ��P�  �@��
IsSelected . . ��� # � $  � ��% �� & �� *
IsMenuable+' True.a���  �@�ContextMenu �� ( �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��立即播放此歌单�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)   .1��� $* PlayAll���� $# DataContext� �� $ ContextMenuL��� m� $��编辑歌单信息��$ ShowModifyMask�� �� *Tag.TopMaskCommand+ �� $ ContextMenuL�m� $��新建歌单��$ NewList�� �� $# Tag.ListCommand� �� $ ContextMenuL��� m� $��删除此歌单�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)  .1��� $* Delete���� $# DataContext� �� $ ContextMenuL��� "  ��.���  � ��# � ' ��  � ��# � ( ��  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  �@�ContextMenu �� ( �� *PlacementTarget.DataContext+ �� $

 Self=�.@�m� $��新建歌单��$ NewList�� �� $# Tag.ListCommand� �� $ ContextMenuL��� "  ��.���  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � ��# � ����  � �� �� " ��.R�� $+ templateRoot��}�.  . $, Local=�- �� $. ColumnDefinition0���� $. ColumnDefinition1��$��0 �/ �� $0 RowDefinition0��$
��Auto ��� $0 RowDefinition1��$��* �.+��� $1 headerPanel��
������ $��0��$��0��2 . $��0q�$y�	Collapsed=��� $ contentPanel��#��z��#��z��#��z��$��0��$��1��$3 	Contained=�$4 2��$, Local=�._��� $  PART_SelectedContentHost��$��SelectedContent��#��z��# z  P�  � {� .  . ��� $ templateRoot��# � �� � ���� "  ��.���  � ��$ 0q���  � �� �� " ��.R�9� $��0q�$��0q�5 . $��1q�
����������� $ 
Horizontal=�$��38��.+��� $��Center=����� *Name+�� $��     共��$��Center=��� $��Center=����� *	ItemCount+$6 {0}项������ �� "!  .R�� $��Out_Grid��$��38��$��Center=�$��0q�- �� $
��Auto ��� $��5* ��� $��1* �$��48���� $��1* �$��48���� $��1* �$��48���� $��1* �$��68��.+��� $ 
Horizontal=�.+��� $��	Check_box��$y�	Collapsed=�$��Center=�$��Center=�$��10,0,5,0q�7 �� *	IsChecked+$$ TwoWay=��� $��PlayingIcon��8��  8�� #���  $��10,0,5,0q�$��Center=�$y�Hidden=�d� $��
LovelyIcon��$��Center=�8�� $	��5,0q�7 �� *
IsLovely+$$ TwoWay=�8 d� $9 	LeftClicke�: �� *DataContext.PlayActionCommand+ �� $ WindowL�; `� 8)  .1��� $* 
MarkLovely���� �� $��1��$��CharacterEllipsis=�$��Center=�$	��5,0q����� *Name+< �� *Name+�� $��2��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *Artist+�� $��3��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *Album+�� $��4��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *Date+�� $��5��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *
TimeLength+8"  8 d� $9 LeftDoubleClicke�: �� *DataContext.PlayActionCommand+ �� $ WindowL�; `� 8)  .1��� $* PlayThis���� $# DataContext� �� $ ListViewItemL��� $# SelectedItem�$= Side_Bar��> �� $
' True��& �� *	IsPlaying+.a��� $ PlayingIcon�� � y�$ Visible=��� $' False��& �� *	IsValid+�� $
' True��& �� *	CheckMode+ �� $ WindowL�.a��� $ 	Check_box�� � y�$ Visible=��� $ 
LovelyIcon�� � y�$ 	Collapsed=��� "!  .R��� ���� *Title+�� "  m�.���  �@m�Command �� *Tag.ListCommand+ �� $ ContextMenuL���  �@m�CommandParameter `� 8)   .1��� $* AddTo���� $# DataContext� �� $ ContextMenuL��� $# DataContext� �� $

 Self=�% �� & �� *	CheckMode+ �� $ WindowL�' True.a���  �@m�CommandParameter `� 8)  .1��� $* 	AddThemTo���� $# DataContext� �� $

 Self=��� "  ��.���  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  � ��
 ���� ��  � ��# � 0 ��  �@�Tag �� *DataContext+ �� $ WindowL���  � �� �� " ��.R��� #��z��#��z��#��z��._���  P�  �@J�IsMouseOver . . ��� # � 1  � ��P�  �@��
IsSelected . . ��� # � 2  � ����  �@�ContextMenu �� ( �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��立即播放�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)   .1��� $* PlayNow���� $# DataContext� �� $ ContextMenuL�m� $��下一首播放�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)  .1��� $* PlayNext���� $# DataContext� �� $ ContextMenuL��� m� $��将已选项添加到...��8�� 8�� y��� *Tag.CheckMode+ �� $ ContextMenuL�8"  ���� *Tag.SideBarSources+ �� $ ContextMenuL�8"  m� $��添加到...��8�� 8�� ���� *Tag.SideBarSources+ �� $ ContextMenuL�8"  �� m� $!��将已选项从列表删除��y��� *Tag.CheckMode+ �� $ ContextMenuL�8" 	  �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8) 
 .1��� $* 
DeleteThem���� $# DataContext� �� $ ContextMenuL�m� $��从列表中移除�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)  .1��� $* 
DeleteThis���� $# DataContext� �� $ ContextMenuL�% ]� ? �� @ �@J�IsMouseOverA .  �� @ �@��AlternationIndex$A 1��./���  � ��# � 4 �� "  ��.���  � ��
 ���� ��  � ��$ 0q���  � �� .  ��  � |� .  ��  � �� �� " ��.R��� $��0q�$ 5��#��z�� P�  �@J�IsMouseOver . P�  � �� . % �� "  n�.���  � �� �	#FFDDDDDD��  � �� �� " n�.R��� #��z��$ 5��% P�  �@J�IsMouseOver . . ���  � �� �	#FF666666�� "  ��.���  �@��IsPressAndHoldEnabled .  ��  �@��IsFlicksEnabled .  ��  � ��
 ���� ��  � �� Z� ��  � ��
 �������  � ��$	 1,0q���  � ��$ 8����  � ��$ 8����  � ��$ 0,-10q���  � �� �� " ��.R�� $+ Bg�� . / �� #��� q��� $��0.00001* ��� #��� q�.+��� #��z��#��z��#��z��$ 5��$��1��]� $ 
PART_Track����. #{�zB $��1�� �� #��ZC 8��   �� #��ZD 8��  n� 8��  P�  �@J�IsMouseOver . % P�  �@��Orientation$ 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 0����  � ��$ 8����  � ��$ 8����  � ��$	 0,1q���  � ��$ -16,0q���  � �� �� " ��.R�� $+ Bg�� . - �� #��� ���� $��0.00001* ��� #��� ��.+��� #��z��#��z��#��z��$ 5��$��1��]� $ 
PART_Track��$��1��#{�zB  �� #��ZE 8��  �� #��ZF 8��  n� 8�� �� "  ��.���  � ��
 �   ���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � ��$ 0q���  � ��$ 10q���  � ��$ Stretch=���  � ��$ Stretch=���  � �� �� " ��.R�� $+ templateRoot�� . .+��� #��z��#��z��#��z���� $  contentPresenter��$��Header��|�.  #��z����. # z ���� *HorizontalContentAlignment+���� *VerticalContentAlignment+�� $��	BottomBar��#���  $��4��$y�Hidden=�$��Bottom=�$��0,0,0,-3q� P�  �@��
IsSelected . . ��� $ 	BottomBar�� � y�$ Visible=��� "!  .R��� $��28��
������ $	��340��._��� 
������ $ Center=�$��Center=�$��Center=�$
��Wrap=�$��0q����� *Lrc+�� "  ��.���  � ��$ 0q���  � ��$ Stretch=���  � ��$
 Left=���  � ��
 �   ���  � ��
 ���� ��  � �� �� " ��.R��� #��z��#��z��#��z��#��z��._��� #��z��#��z��#��z��#��z��#��z�� P�  �@J�IsMouseOver . P�  �@��
IsSelected . . ���  � ��
 �������  � ��$ 15(��� "  ��.���  � ��$ 0q���  � ��
 ���� ��  � ��$ Disabled=���  � ��$ Disabled=��� "  ��.���  � �� �� " ��.R�� .+��� $��28(�$ Center=�$��Center=�#���  8��  �� $��64��$��64��$��UniformToFill=�$��0q����� *CurrentMedia.Cover+8"  $G Media���� $��Media_Control_Cover��#��� > $y�Hidden=�$��0q�._��� $��
Zoom_Panel��8�� #���  $��24(�$��Center=�#��� @ $ Center=� P�  �@J�IsMouseOver . . ��� $ Media_Control_Cover�� � y�$ Visible=��� $' Visible��& �� *IsMediaVisible+ �� $ WindowL�.a��� 8  $ 
Zoom_Panel�� � ���� "  d�.���  � �� �� " d�.R��� ._��� $ 
Horizontal=�.+��� �� $
��Font��$y�Visible=�$��选择��$��Center=�$	��5,0q� P�  �@d�	IsChecked$
 TrueY�. ��� $
 Font�� � ��$ 完成���� "  d�.���  � ��
 ���� ��  � ��$ 0q���  � ��
 ���� ��  � ��$ Center=���  � ��$ Center=���  � �� �� " d�.R��� #��z��#��z��#��z��#��z��._��� #��z��#��z��#��z�� P�  � {� .  . ���  � ��
 ������� "!  .R�� .+��� ���� *Name+�� "  m�.���  �@m�Command �� *Tag.ListCommand+ �� $ ContextMenuL���  �@m�CommandParameter `� 8)   .1��� $* AddTo���� $# DataContext� �� $ ContextMenuL��� $# DataContext� �� $

 Self=��� "  ��.���  �@�Tag �� *DataContext+ �� $ WindowL���  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ 2q���  � ��$ 0q���  � ��$ 1q���  � ��
 ���� ��  � ��# � 0 ��  �@�ContextMenu �� ( �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��下一个播放�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)   .1��� $* PlayNext���� $# DataContext� �� $ ContextMenuL��� m� $��编辑信息�� �� *Tag.TopMaskCommand+ �� $ ContextMenuL� `� 8)  .1��� $* ShowMediaMask���� $# DataContext� �� $ ContextMenuL��� m� $��将此项添加到...��8�� 8�� ���� *Tag.SideBarSources+ �� $ ContextMenuL�8"  �� m� $��删除此项�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8)  .1��� $* CurrentRemove���� $# DataContext� �� $ ContextMenuL���  � �� �� " ��.R��� #��z��#��z��#��z��._���  P�  �@J�IsMouseOver . . ���  � �� �	#AAAAAAAAP�  �@��
IsSelected . . ���  � ��
 �����% ]� ? �� @ �@J�IsMouseOverA .  �� @ �@��AlternationIndex$A 1��./���  � ��# � 4 �� "!  .R��� 
������ $��0q�$��Stretch=�$��32��._�� $
 Left=�- �� $
��Auto �$��24���� $
��Auto �$��24���� $��* ��� $
��Auto �$��64���� $
��Auto �$��64��8 d� $9 LeftDoubleClicke�: �� *DataContext.PlayActionCommand+ �� $ WindowL�; `� 8)   .1��� $* PlayCurrent���� $# DataContext� �� $
 TemplatedParent=�.+��� 8�� 8�� $	��5,0q�$��Center=�#���  y��� *	IsPlaying+8"  d� $��
LovelyIcon��$��Center=�8�� $	��5,0q�$��1��7 �� *
IsLovely+$$ TwoWay=�8 d� $9 	LeftClicke�: �� *DataContext.PlayActionCommand+ �� $ WindowL�; `� 8)  .1��� $* 
MarkLovely���� �� $��2��$
 Left=�$��Center=�$��CharacterEllipsis=����� *Name+< �� *Name+�� $��3��$��Center=����� *Artist+�� $	��5,0q�$��4��$��Right=�$��Center=����� *
TimeLength+8"  �� "! ��.R��� $ Center=�$��NoWrap=�$��CharacterEllipsis=����� < �� �� "  ��.���  � ��$ 1q���  � �� �� " ��.R��� #��z��#��z��#��z��#��z��._�� #��z��- �� �� $
��Auto �.+��� #��z��#��z���� $��Remove_Item��$y�Hidden=�$��1��
������ $��24��$��24��#��z��#��z��8��  ���� * DataContext.ApplyModifyCommand+ �� $ WindowL���`� 8)  .1��� $* 
RemovePath���� $# DataContext� �� $
 TemplatedParent=�.���� X P�  �@J�IsMouseOver . . ��� $ Remove_Item�� �@�Cursor$
 Hand���� $ Remove_Item�� � y�$ Visible=��� # � 1  � ���� �� "  ��.���  � ��# �  ��  � ��$ 1q���  � �� �� " ��.R��  . - �� $��6 ��� $
��Auto ��� $��* ��� $��6 �/ �� $
��Auto ��� $
��Auto ��� $��* ��� $��6 �.+��� 
������ #��z��#��z��$��4��$��0��$ 4��$��1��$��3���� 
������ #��z��$��4��$ 4��$��1��$��3��H `� $I 7��8)   .1��� $= Header��$# ActualWidth��� $# ActualWidth� �� *Self+�� $# ActualHeight� �� *Self+._��� #��z��#��z��$ 3��._��� 
������ #��z��$ 2���� $ Header��$��1��$ 3,1,3,0q�$��0��$��2��._��� $��Header����. # z �� $��2��$��1��#��z��$��2��# z 