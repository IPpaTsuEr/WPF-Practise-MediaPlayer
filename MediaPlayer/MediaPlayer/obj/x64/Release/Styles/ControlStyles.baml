   M S B A M L   `   `   `  ���� F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:MediaPlayer.StylesMediaPlayer.Styles  J FFrameLessWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\?clr-namespace:FrameLessWindow.Commands;assembly=FrameLessWindowFrameLessWindow.Commands O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 7 clr-namespace:MediaPlayer.ModlesMediaPlayer.Modles  W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35   MediaListExt  �� 
TargetType �� Property �� Value �� RelativeSource �� AncestorType �� 
TargetType �� Triggers P� Property P� Value	 � DataContext
 �� Mode m� CommandParameter m� Command  LovelyToggleButton  IconText 	 Heart  ControlBarForeground  
HeartSolid  LovelyMarkForeground �� 
TargetName  ControlBarHoverBackground  Slider_RepeatButton �� CornerRadius 	 Slider_Thumb �� TextAlignment 
 AwesomeS  SliderHightLightground3   -System.Windows.Media.Effects.DropShadowEffect  SliderHightLightColor    Color    ShadowDepth    
BlurRadius    	Direction �� Padding ��Name ]�Name ]� DecreaseRepeatButton �� DecreaseLarge ]� IncreaseRepeatButton �� IncreaseLarge ]� Thumb P� 
SourceName  
SideButton  FocusVisual J� SnapsToDevicePixels �� Orientation ��Name  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  EnableInactive  �� DataType$   MediaPlayer.Modles.SideBarItem  SideBarSideSymbol  BoolVisibilityConvert! �� 	Converter  IconFont  StringIconConvert  Volume3  
Background  UnEnableInactive  
BorderLine  SideBarUnableForeground   ListViewItemStyle" �� Path# �� Mode ! SideBarHoverBackground " SideBarHoverForeground # SideBarSelectedBackground$ �� Triggers% �� Binding& �� Value
' � Tag $ PlayMultyConvert( `� 	Converter) �� Source % SideList & SideBarForeground ' SideBarBackground ( NoHeaderTabControlStyle* �Name-  'System.Windows.Input.KeyboardNavigation+   TabNavigation, � ColumnDefinitions- ��Name. � RowDefinitions/ ��Name0 ��Name1 K� IsItemsHost2   DirectionalNavigation3   TabIndex ) GroupListViewStyle4 9� 
IsExpanded5 �� StringFormat * GroupListViewItemDataStyle   MediaPlayer.Modles.Media6 d� 	IsChecked7 J� InputBindings8 d� MouseAction9 �� Command: �� CommandParameter; � ToolTip + StringTimeConvert< �� ElementName= �� Triggers , ListMenuItemDataTemplate - ListMenuItemTemplate . GroupListViewItemStyle / EvenListItemBackgroud 0 ListItemHoverBackgroud 1 ListItemSelectedBackgroud 2 ListMenuFileterConvert> ]� 
Conditions? �� Property@ �� Value 3 OddListItemBackgroud 4 ScrollRepeatButtonStyle 5 ScrollThumbStyleA J� IsMouseOverB �� PageUpCommandC �� PageDownCommandD �� PageLeftCommandE �� PageRightCommand 6 SettingTabItemStyle 7 LRC_ItemsDataStyle!  MediaPlayer.Modles.LrcModle 8 Lrc_itemStyle 9 Lrc_List : ViewPortControlButtonStyle ; MusicCircle < StringImageConvertF �� ConverterParameter = ViewPortBackground > ZoomOut ? ViewPortForeground 
@ ZoomIn A ChangetoggleButton B NothingToggleButton C SearchItemStyle D CurrentListMenuItemTemplate E CurrentListItemStyle F CurrentListItemDataStyle G PathListItemDataStyle H PathListItemStyle I NothingButton J BorderGapMaskConverterG J� OpacityMaskH `� ConverterParameter�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     *local clr-namespace:MediaPlayer.Styles  Ffw?clr-namespace:FrameLessWindow.Commands;assembly=FrameLessWindow  Bi:http://schemas.microsoft.com/expression/2010/interactivity  .sys&clr-namespace:System;assembly=mscorlib  'ml clr-namespace:MediaPlayer.Modles  %�H  &	        &	 a    7  7  7  7  '��     &	 T    &		     7 
 '�� �    7  7  7 	 &	 �
    7  7  7  7  7  7  7  7  &	 �    7  7  7  7  7  7  &	 }    &	      7 $ 7 $ 7 $ &	% a    7 $ &	( �    &	) �    &	* �    7  7  7  7 $ 7 + 7 $ &	, 
!    &	- /!    7 $ 7 $ &	. �"    7 $ 7 $ 7 - 7 , 7  7 2 7 - 7 , 7 2 7  7 $ 7 $ &	4 *)    &	5 *    '�� �*    7 4 7 4 7 5 7 4 7 4 7 5 &	6 \.    &	7 �0    &	8 @1    &	9 �2    &	: 3    7 ; 7 < 7 > 7 @ &	A 15    &	B 6    &	C '7    &	D S7    7 $ &	E J8    7 $ 7 $ 7 D 7 , 7 2 7 $ &	F :=    7 $ 7  7  7  7  7 $ 7 + &	G �@    &	H A    7 I 7 $ &	J \C    '�� aC    7 J �� "  d�.���  � ��
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
 ���� ��  � ��
 �������  � ��$ 1q���  � �� �� " n�.R��� $��Thumb_Border��$ 15��#��z��#��z��#��z��#��z��#��z��#��z��#��z��._��� $��
Inner_Text��#��z��#��z��$ Center=�$��1q�#��z��8��  #��z�� P�  �@J�IsMouseOver . . ���  �@�Cursor$
 Hand���� # �   � ���� $ Thumb_Border�� �@J�Effect    # �  $ 0Q�$ 4Q�$ 0Q��� "  ��.���  �@�OverridesDefaultStyle . ��  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ Center=���  � ��$ 1q���  � ��
 �  ����  �@�Maximum$ 1Q���  �@�Value$	 0.5Q���  � �� �� " ��.R�� #��z��.+��� $��Stretch=�#��z��#��z��$ 2��$ 0q�#��z��$��4��$
��Auto��#��z��._��� $ PART_SelectionRange��]� $ 
PART_Track�� �� 8��  #��z��#��z��#��z��$��4��$��0,0,-2,0q�#��Z  �� 8�� #��Z  n� $��P_thumb��8�� $��Center=�$��Center=�$��Center=�$��Center=�$��12��$��12��#��z�� P� $ P_thumb�� � {� .  . ��� $ P_thumb�� � ��
 ������� $ P_thumb�� � ��
 ������� $ P_thumb�� Z�  �@J�Effect�� "  ��.���  �@�FocusVisualStyle8   ��  � ��
 ���� ��  � ��
 ���� ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z�� . ._��� $ 
Horizontal=�.+��� 
����ح�$��8���� $ contentPresenter��|�.  #��z��#��z����. # z #��z�� P�  �@��IsDefaulted . . ��� $ border��# � �� � ��P�  �@J�IsMouseOver . . ��� $ border��8   � ���� $ border��8   � ��P�  � �� . . ��� $ border��8   � ���� $ border��8   � ��P�  � {� .  . ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � ���� "   .R��� $ 
Horizontal=�$��0q�.+��� $��SideIcon��$��0q�$ 0q�$��6��#���  $��Stretch=�$
��Left=�y��� *
IsSelected+ �� $ ListViewItemL�8!   �� $��Center=�$��Stretch=�$��	10,0,10,0q�$��16(�8�� ���� *Icon+8!  �� $��Center=�$��Stretch=�$��14(����� *Title+�� $��PlayingIcon��8�� 8�� 8�� $��10,0,5,0q�$��Center=�$y�Hidden=��� "   .R��� $��
Out_Border��#���  $��0,0,0,1q�
������ ._�� .+��� $��Center=�$��Stretch=�$
��10,0q�#���  ���� *Title+�� "  ��.���  � {� �� $" Interactiveable���  �@��
IsSelected �� $" 	IsCurrent�$# TwoWay=���  � ��$ 0,1,1,1q���  � ��
 ���� ��  � ��$ 0q���  � ��$ 0q���  � ��$ 48����  � ��$ Stretch=���  � ��$ Stretch=���  �@�Tag �� *DataContext+ �� $ WindowL���  � �� �� " ��.R��� #��z��#��z��#��z��#��z��#��z��# z��._��� #��z��#��z��#��z�� P�  �@J�IsMouseOver . . ��� # � !  � ���� # � "  � ��P�  �@��
IsSelected . . ��� # � #  � ��$ �� % �� *
IsMenuable+& True.a���  �@�ContextMenu �� ' �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��立即播放此歌单�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(   .1��� $) PlayAll���� $" DataContext� �� $ ContextMenuL��� m� $��编辑歌单信息��$ ShowModifyMask�� �� *Tag.TopMaskCommand+ �� $ ContextMenuL�m� $��新建歌单�� �� $" Tag.ListCommand� �� $ ContextMenuL� `� 8(  .1��� $) NewList���� $" PlacementTarget� �� $ ContextMenuL��� m� $��删除此歌单�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(  .1��� $) Delete���� $" DataContext� �� $ ContextMenuL��� "  ��.���  � ��# � & ��  � ��# � ' ��  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  �@�ContextMenu �� ' �� *PlacementTarget.DataContext+ �� $

 Self=�.@�m� $��新建歌单�� �� $" Tag.ListCommand� �� $ ContextMenuL� `� 8(   .1��� $) NewList���� $" PlacementTarget� �� $ ContextMenuL��� "  ��.���  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � ��# � ����  � �� �� " ��.R�� $* templateRoot��}�.  . $+ Local=�, �� $- ColumnDefinition0���� $- ColumnDefinition1��$��0 �. �� $/ RowDefinition0��$
��Auto ��� $/ RowDefinition1��$��* �.+��� $0 headerPanel��
������ $��0��$��0��1 . $��0q�$y�	Collapsed=��� $ contentPanel��#��z��#��z��#��z��$��0��$��1��$2 	Contained=�$3 2��$+ Local=�._��� $ PART_SelectedContentHost��$��SelectedContent��#��z��# z  P�  � {� .  . ��� $ templateRoot��# � �� � ���� "  ��.���  � ��$ 0q���  � �� �� " ��.R�9� $��0q�$��0q�4 . $��1q�
����������� $ 
Horizontal=�$��38��.+��� $��Center=����� *Name+�� $��     共��$��Center=��� $��Center=����� *	ItemCount+$5 {0}项������ �� "   .R�� $��Out_Grid��$��38��$��Center=�$��0q�, �� $
��Auto ��� $��5* ��� $��1* �$��48���� $��1* �$��48���� $��1* �$��48���� $��1* �$��68��.+��� $ 
Horizontal=�.+��� $��	Check_box��$y�	Collapsed=�$��Center=�$��Center=�$��10,0,5,0q�6 �� *	IsChecked+$# TwoWay=��� $��PlayingIcon��8��  8�� #���  $��10,0,5,0q�$��Center=�$y�Hidden=�d� $��
LovelyIcon��$��Center=�8�� $	��5,0q�6 �� *
IsLovely+$# TwoWay=�7 d� $8 	LeftClicke�9 �� *DataContext.PlayActionCommand+ �� $ WindowL�: `� 8(  .1��� $) 
MarkLovely���� �� $��1��$��CharacterEllipsis=�$��Center=�$	��5,0q����� *Name+; �� *Name+�� $��2��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *Artist+�� $��3��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *Album+�� $��4��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *Date+�� $��5��$��CharacterEllipsis=�
�������$	��5,0q�$��Center=����� *
TimeLength+8!  7 d� $8 LeftDoubleClicke�9 �� *DataContext.PlayActionCommand+ �� $ WindowL�: `� 8(  .1��� $) PlayThis���� $" DataContext� �� $ ListViewItemL��� $" SelectedItem�$< Side_Bar��= �� $
& True��% �� *	IsPlaying+.a��� $ PlayingIcon�� � y�$ Visible=��� $& False��% �� *	IsValid+�� $
& True��% �� *	CheckMode+ �� $ WindowL�.a��� $ 	Check_box�� � y�$ Visible=��� $ 
LovelyIcon�� � y�$ 	Collapsed=��� "   .R��� ���� *Title+�� "  m�.���  �@m�Command �� *Tag.ListCommand+ �� $ ContextMenuL���  �@m�CommandParameter `� 8(   .1��� $) AddTo���� $" DataContext� �� $ ContextMenuL��� $" DataContext� �� $

 Self=�$ �� % �� *	CheckMode+ �� $ WindowL�& True.a���  �@m�CommandParameter `� 8(  .1��� $) 	AddThemTo���� $" DataContext� �� $

 Self=��� "  ��.���  � ��$ 0q���  � ��$ 0q���  � ��$ 0q���  � ��
 ���� ��  � ��# � / ��  �@�Tag �� *DataContext+ �� $ WindowL���  � �� �� " ��.R��� #��z��#��z��#��z��._���  P�  �@J�IsMouseOver . . ��� # � 0  � ��P�  �@��
IsSelected . . ��� # � 1  � ����  �@�ContextMenu �� ' �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��立即播放�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(   .1��� $) PlayNow���� $" DataContext� �� $ ContextMenuL�m� $��下一首播放�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(  .1��� $) PlayNext���� $" DataContext� �� $ ContextMenuL��� m� $��将已选项添加到...��8�� 8�� y��� *Tag.CheckMode+ �� $ ContextMenuL�8!  ���� *Tag.SideBarSources+ �� $ ContextMenuL�8!  m� $��添加到...��8�� 8�� ���� *Tag.SideBarSources+ �� $ ContextMenuL�8!  �� m� $!��将已选项从列表删除��y��� *Tag.CheckMode+ �� $ ContextMenuL�8! 	  �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8( 
 .1��� $) 
DeleteThem���� $" DataContext� �� $ ContextMenuL�m� $��从列表中移除�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(  .1��� $) 
DeleteThis���� $" DataContext� �� $ ContextMenuL�$ ]� > �� ? �@J�IsMouseOver@ .  �� ? �@��AlternationIndex$@ 1���� ? �@��
IsSelected@ .  ./���  � ��# � 3 �� "  ��.���  � ��
 ���� ��  � ��$ 0q���  � �� .  ��  � |� .  ��  � �� �� " ��.R��� $��0q�$ 5��#��z�� P�  �@J�IsMouseOver . P�  � �� . $ �� "  n�.���  � �� �	#FFDDDDDD��  � �� �� " n�.R��� #��z��$ 5��$ P�  �@J�IsMouseOver . . ���  � �� �	#FF666666�� "  ��.���  �@��IsPressAndHoldEnabled .  ��  �@��IsFlicksEnabled .  ��  � ��
 ���� ��  � �� Z� ��  � ��
 �������  � ��$	 1,0q���  � ��$ 8����  � ��$ 8����  � ��$ 0,-10q���  � �� �� " ��.R�� $* Bg�� . . �� #��� q��� $��0.00001* ��� #��� q�.+��� #��z��#��z��#��z��$ 5��$��1��]� $ 
PART_Track����. #{�zA $��1�� �� #��ZB 8��   �� #��ZC 8��  n� 8��  P�  �@J�IsMouseOver . $ P�  �@��Orientation$ 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 0����  � ��$ 8����  � ��$ 8����  � ��$	 0,1q���  � ��$ -16,0q���  � �� �� " ��.R�� $* Bg�� . , �� #��� ���� $��0.00001* ��� #��� ��.+��� #��z��#��z��#��z��$ 5��$��1��]� $ 
PART_Track��$��1��#{�zA  �� #��ZD 8��  �� #��ZE 8��  n� 8�� �� "  ��.���  � ��
 �   ���  � ��
 ���� ��  � ��
 ���� ��  � ��$ 0q���  � ��$ 0q���  � ��$ 10q���  � ��$ Stretch=���  � ��$ Stretch=���  � �� �� " ��.R�� $* templateRoot�� . .+��� #��z��#��z��#��z���� $ contentPresenter��$��Header��|�.  #��z����. # z ���� *HorizontalContentAlignment+���� *VerticalContentAlignment+�� $��	BottomBar��#���  $��4��$y�Hidden=�$��Bottom=�$��0,0,0,-3q� P�  �@��
IsSelected . . ��� $ 	BottomBar�� � y�$ Visible=��� "   .R��� $��28��
������ $	��340��._��� 
������ $ Center=�$��Center=�$��Center=�$
��Wrap=�$��0q����� *Lrc+�� "  ��.���  � ��$ 0q���  � ��$ Stretch=���  � ��$
 Left=���  � ��
 �   ���  � ��
 ���� ��  � �� �� " ��.R��� #��z��#��z��#��z��#��z��._��� #��z��#��z��#��z��#��z��#��z�� P�  �@J�IsMouseOver . P�  �@��
IsSelected . . ���  � ��
 �������  � ��$ 15(��� "  ��.���  � ��$ 0q���  � ��
 ���� ��  � ��$ Disabled=���  � ��$ Disabled=��� "  ��.���  � �� �� " ��.R�� .+��� $��28(�$ Center=�$��Center=�#���  8��  �� $��64��$��64��$��UniformToFill=�$��0q����� *CurrentMedia.Cover+8!  $F Media���� $��Media_Control_Cover��#��� = $y�Hidden=�$��0q�._��� $��
Zoom_Panel��8�� #���  $��24(�$��Center=�#��� ? $ Center=� P�  �@J�IsMouseOver . . ��� $ Media_Control_Cover�� � y�$ Visible=��� $& Visible��% �� *IsMediaVisible+ �� $ WindowL�.a��� 8  $ 
Zoom_Panel�� � ���� "  d�.���  � �� �� " d�.R��� ._��� $ 
Horizontal=�.+��� �� $
��Font��$y�Visible=�$��选择��$��Center=�$	��5,0q� P�  �@d�	IsChecked$
 TrueY�. ��� $
 Font�� � ��$ 完成���� "  d�.���  � ��
 ���� ��  � ��$ 0q���  � ��
 ���� ��  � ��$ Center=���  � ��$ Center=���  � �� �� " d�.R��� #��z��#��z��#��z��#��z��._��� #��z��#��z��#��z�� P�  � {� .  . ���  � ��
 ������� "   .R�� .+��� ���� *Name+�� "  m�.���  �@m�Command �� *Tag.ListCommand+ �� $ ContextMenuL���  �@m�CommandParameter `� 8(   .1��� $) AddTo���� $" DataContext� �� $ ContextMenuL��� $" DataContext� �� $

 Self=��� "  ��.���  �@�Tag �� *DataContext+ �� $ WindowL���  � ��$ Stretch=���  � ��$ Stretch=���  � ��$ 2q���  � ��$ 0q���  � ��$ 1q���  � ��
 ���� ��  � ��# � / ��  �@�ContextMenu �� ' �� *PlacementTarget.Tag+ �� $

 Self=�.@�m� $��下一个播放�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(   .1��� $) PlayNext���� $" DataContext� �� $ ContextMenuL��� m� $��编辑信息�� �� *Tag.TopMaskCommand+ �� $ ContextMenuL� `� 8(  .1��� $) ShowMediaMask���� $" DataContext� �� $ ContextMenuL��� m� $��将此项添加到...��8�� 8�� ���� *Tag.SideBarSources+ �� $ ContextMenuL�8!  �� m� $��删除此项�� �� *Tag.ListCommand+ �� $ ContextMenuL� `� 8(  .1��� $) CurrentRemove���� $" DataContext� �� $ ContextMenuL���  � �� �� " ��.R��� #��z��#��z��#��z��._���  P�  �@J�IsMouseOver . . ���  � �� �	#AAAAAAAAP�  �@��
IsSelected . . ���  � ��
 �����$ ]� > �� ? �@J�IsMouseOver@ .  �� ? �@��AlternationIndex$@ 1��./���  � ��# � 3 �� "   .R��� 
������ $��0q�$��Stretch=�$��32��._�� $
 Left=�, �� $
��Auto �$��24���� $
��Auto �$��24���� $��* ��� $
��Auto �$��64���� $
��Auto �$��64��7 d� $8 LeftDoubleClicke�9 �� *DataContext.PlayActionCommand+ �� $ WindowL�: `� 8(   .1��� $) PlayCurrent���� $" DataContext� �� $
 TemplatedParent=�.+��� 8�� 8�� $	��5,0q�$��Center=�#���  y��� *	IsPlaying+8!  d� $��
LovelyIcon��$��Center=�8�� $	��5,0q�$��1��6 �� *
IsLovely+$# TwoWay=�7 d� $8 	LeftClicke�9 �� *DataContext.PlayActionCommand+ �� $ WindowL�: `� 8(  .1��� $) 
MarkLovely���� �� $��2��$
 Left=�$��Center=�$��CharacterEllipsis=����� *Name+; �� *Name+�� $��3��$��Center=����� *Artist+�� $	��5,0q�$��4��$��Right=�$��Center=����� *
TimeLength+8!  �� "  ��.R��� $ Center=�$��NoWrap=�$��CharacterEllipsis=����� ; �� �� "  ��.���  � ��$ 1q���  � �� �� " ��.R��� #��z��#��z��#��z��#��z��._�� #��z��, �� �� $
��Auto �.+��� #��z��#��z���� $��Remove_Item��$y�Hidden=�$��1��
������ $��24��$��24��#��z��#��z��8��  ���� * DataContext.ApplyModifyCommand+ �� $ WindowL���`� 8(  .1��� $) 
RemovePath���� $" DataContext� �� $
 TemplatedParent=�.���� X P�  �@J�IsMouseOver . . ��� $ Remove_Item�� �@�Cursor$
 Hand���� $ Remove_Item�� � y�$ Visible=��� # � 0  � ���� �� "  ��.���  � ��# �  ��  � ��$ 1q���  � �� �� " ��.R��  . , �� $��6 ��� $
��Auto ��� $��* ��� $��6 �. �� $
��Auto ��� $
��Auto ��� $��* ��� $��6 �.+��� 
������ #��z��#��z��$��4��$��0��$ 4��$��1��$��3���� 
������ #��z��$��4��$ 4��$��1��$��3��G `� $H 7��8(   .1��� $< Header��$" ActualWidth��� $" ActualWidth� �� *Self+�� $" ActualHeight� �� *Self+._��� #��z��#��z��$ 3��._��� 
������ #��z��$ 2���� $ Header��$��1��$ 3,1,3,0q�$��0��$��2��._��� $��Header����. # z �� $��2��$��1��#��z��$��2��# z 