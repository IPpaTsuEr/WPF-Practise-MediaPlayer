   M S B A M L   `   `   `  ����F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:MediaPlayer.StylesMediaPlayer.Styles  5      J FFrameLessWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\?clr-namespace:FrameLessWindow.Commands;assembly=FrameLessWindowFrameLessWindow.Commands 5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      7 clr-namespace:MediaPlayer.ModlesMediaPlayer.Modles  5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35   MediaListExt  �� 
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
A ZoomIn B ChangetoggleButton C NothingToggleButton D SearchItemStyle E CurrentListMenuItemTemplate F CurrentListItemStyle G CurrentListItemDataStyle H PathListItemDataStyle I PathListItemStyle J NothingButton K BorderGapMaskConverterH J� OpacityMaskI `� ConverterParameter�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      *local clr-namespace:MediaPlayer.Styles  5      Ffw?clr-namespace:FrameLessWindow.Commands;assembly=FrameLessWindow  5      Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      .sys&clr-namespace:System;assembly=mscorlib  5      'ml clr-namespace:MediaPlayer.Modles  5      %�|  &	        &	 �    7  7  7  7  '��     &	 �	    &		 8    7 
 '��     7  7  7 	 &	 �    7  7  7  7  7  7  7  7  &	 ]    7  7  7  7  7  7  &	 �    &	!      7 % 7 % &	& g%    &	) n'    &	* H,    &	+ b.    7  7  7  7 % 7 , 7 % &	- �8    &	. �8    7 % 7 % &	/ �;    7 % 7 % 7 . 7 - 7  7 3 7 . 7 - 7 3 7  7 % 7 % &	5 �E    &	6 �G    '�� �H    7 5 7 5 7 6 7 5 7 5 7 6 &	7 P    &	8 �S    &	9 U    &	: �W    &	; �X    7 < 7 = 7 ? 7 A &	B 0\    &	C �]    &	D /`    &	E �`    7 % &	F (b    7 % 7 % 7 E 7 - 7 3 7 % &	G zj    7 % 7  7  7  7  7 % 7 , &	H �p    &	I q    7 J 7 % &	K Iu    '�� \u    7 K �� 5	      "  d�6!   .�5
   
   ��  � ��
 ���� 6=   �� 5   
    � ��$	 ...��6$   62   �� 5   
    � ��$ 0q�6,   68   �� 5   
    �@�Tag 6    �� *DataContext+ �� $ WindowL�6t   �� 5   
    � �� 5      �� 5      " d�6"   .R�5      �� #��z��6   #��z��5      #��z��5      #��z��5      #��z��5      ._�5      �� #��z��6+   #��z��5   +   6p   5       5      P� 5       �@J�IsMouseOver . . �5      ��  �@�Cursor$
 Hand��67   6F   5      5      5!      �� 5"   
    �@�ContextMenu 5#      �� 5$      	 6   �� *PlacementTarget.Tag+ �� $

 Self=�.@�5%      m� $��编辑��6   $ ShowModifyMask��5'       5&      �� *DataContext.TopMaskCommand+ �� $ ContextMenuL�5(   "   m� 5)      $��删除��6   $ ShowDeleteMask��5+       5*      �� *DataContext.TopMaskCommand+ �� $ ContextMenuL�5.      5/      51      52      �� 54      "  d�6'   .�55   
   ��  � ��
 ���� 6=   �� 56   
    � �� 57      �� 58      " d�6"   .R�59      �� #��z��6   ._�5:      � .+�5;      �� $��No_Love��5>   (   8��  8�� #���  5=   (   #��z��5?   (   #��z��5@   (   5A   +   �� 5B      $��Yes_Love��5E   (   8�� 8�� #���  5D   (   $y�	Collapsed=�5E   8   #��z��5F   (   #��z��5G   (   5H   +   5I      5J       5K      P� 5L       �@d�	IsChecked$
 TrueY�67   . �5M      �� $ Yes_Love��6K    � y�$ Visible=�6;   6c   �� 5N      $ No_Love��6M    � y�$ 	Collapsed=�6;   6d   5O      P� 5P       �@J�IsMouseOver . . �5Q      ��  �@�Cursor$
 Hand��67   6F   �� 5R      # �  6;    � ��6q   5S      5U      5W      5X      �� 5Z      "  ��6   .�5[   
   ��  � ��
 ���� 6=   �� 5\   
    � ��
 ���� 6>   �� 5]   
    � ��$ 1q�6,   68   �� 5^   
    � ��$ 0q�6$   60   �� 5_   
    � ��$ 0q�6#   6/   �� 5`   
    � �� 5a      �� 5b      " ��6"   .R�5c      �� #��z��5d      #��z��5e      #��z��5f      #��z��5g      #��z��5h      ._�5k      �� #��z��5l      #��z��5m      #��z��5n      #��z��5o      6b   5p       5r      P� 5�       �@J�IsMouseOver . . �5�      �� # �  6;    � ��6q   5�      P� 5�       � �� . . �5�      ��  � ��
 ��ح�6P   5�      5�      5�      5�      �� 5�      "  ��6(   .�5�   
   ��  �@�OverridesDefaultStyle . 62   �� 5�   
    � ��
 ���� 6'   �� 5�   
    � |� .  6&   �� 5�   
    � �� .  6&   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      �� #��z��6    $ 2��5�       #��z��5�       #��z��5�       #��z��5�       5�      5�      5�      �� 5�      "  n�6!   .�5�   
   ��  � ��
 ���� 6=   �� 5�   
    � �� 5�      �� 5�      " n�6"   .R�5�      �� $ 15��6   #��z��5�      #��z��5�      #��z��5�      #��z��5�      #��z��5�      #��z��5�      #��z��5�      ._�5�      �� $��
Inner_Text��6$   #��z��5�      #��z��5�   $   $ Center=�5�   $   $��1q�5�   $   #��z��5�   $   8��  #��z��5�   $   6Y   5�       5�      P� 5�       �@J�IsMouseOver . . �5�      ��  �@�Cursor$
 Hand��67   6G   �� 5�      # �  6;    � ��6n   �� 5�       �@J�Effect 5�   "      5�   &   # �  67   $ 0Q�6g   $ 4Q�6w   $ 0Q�6�   6�   5�      5�      5�      5�      5�      �� 5�      "  ��6   .�5�   
   ��  �@�OverridesDefaultStyle . 6A   �� 5�   
    � ��$ Stretch=�60   6B   �� 5�   
    � ��$ Stretch=�6.   6@   �� 5�   
    � ��$ Center=�67   6H   �� 5�   
    � ��$ 1q�6,   68   �� 5�   
    � ��
 �  ��65   �� 5�   
    �@�Maximum$ 1Q�6$   60   �� 5�   
    �@�Value$	 0.5Q�6"   60   �� 5�   
    � �� 5�      �� 5�      " ��6"   .R�5�      � #��z��6   .+�5�      �� $��Stretch=�6%   #��z��5�   %   #��z��5�   %   $ 2��5�   %   $ 0q�66   #��z��5�   %   $��4��5�   %   $
��Auto��60   #��z��5�   %   ._�5�   "   �� $ PART_SelectionRange��6*   6J   5�      ]� 5�      $ 
PART_Track��6     5�      �� 5�   "   8��  #��z��5�   /   #��z��5�   /   #��z��5�   /   $��4��5�   /   $��0,0,-2,0q�6:   #��Z 5�   /   6\    5�      �� 5�   "   8�� #��Z 6]   6�    5�      n� 5�   "   $��P_thumb��5�   (   8�� $��Center=�5�   (   $��Center=�6E   $��Center=�5�   (   $��Center=�6L   $��12��5�   (   $��12��63   #��z��5�   (    5�   &      5�   *   # �  6;   $ 0Q�6f   $ 4Q�6v   $ 0Q�6�   6�   5�   #   5�      5�       5�      P� 5�      $ P_thumb��6E    � {� .  . �5�      �� $ P_thumb��6H    � ��
 �����6_   �� 5�      $ P_thumb��6H    � ��
 �����6_   �� 5      $ P_thumb��6H    67   Z�  �@J�Effect6_   5     5     5     5     �� 5
     "  ��6   .�5  
   ��  �@�FocusVisualStyle8   6-   �� 5  
    � ��
 ���� 6'   �� 5  
    � ��
 ���� 6(   �� 5  
    � ��# � ��6'   �� 5  
    � ��$ 1q�6,   �� 5  
    � ��$ Center=�67   �� 5  
    � ��$ Center=�65   �� 5  
    � ��$ 1q�6$   �� 5  
    � �� 5     �� 5     " ��6"   .R�5     �� $ border��6   #��z��5     #��z��5     #��z��5      . ._�5     �� $ 
Horizontal=�6%   .+�5     �� 
����ح�$��8��6<   6H   �� 5     $  contentPresenter��6/   |�.  #��z��5  +   #��z��5   +   ��. # z 5"  +   #��z��5#  +   5&     5'      5(     P� 5)      �@��IsDefaulted . . �5*     �� $ border��6<   # � ��5+  %    � ��5,     P� 5-      �@J�IsMouseOver . . �5.     �� $ border��6;   8   � ��5/  %   �� 50     $ border��6<   8   � ��51  %   52     P� 53      � �� . . �54     �� $ border��6;   8   � ��55  %   �� 56     $ border��6<   8   � ��57  %   58     P� 59      � {� .  . �5:     �� $ border��6;   8   � ��5;  %   �� 5<     $ border��6<   8   � ��5=  %   �� 5>     $ contentPresenter��6G   8   � ��5?  %   5@     5B     5D     5E     �� 5G     "!  6*   .R�5I     �� $ 
Horizontal=�6   $��0q�62   .+�5K     �� $��SideIcon��6   $��0q�6)   $ 0q�64   $��6��5L     #���  6#   $��Stretch=�5O     $
��Left=�65   y�5M     �� *
IsSelected+ �� $ ListViewItemL�8"   5O  R   �� 5P     $��Center=�6   $��Stretch=�67   $��	10,0,10,0q�5Q     $��16(�6/   8�� ��5S     �� *Icon+8"  6b   �� 5T     $��Center=�6   $��Stretch=�67   $��14(�5U     ��6+   �� *Title+6F   �� 5V     $��PlayingIcon��6   8�� 8�� 8�� $��10,0,5,0q�5Y     $��Center=�6.   $y�Hidden=�6I   6_   5Z     5\     �� 5^     "!  6,   .R�5_  
   �� $��
Out_Border��6   #���  5`     $��0,0,0,1q�5a     
������ ._�5c     � .+�5d     �� $��Center=�6   $��Stretch=�67   $
��10,0q�5e  3   #���   5f     ��5e     �� *Title+5f  U   5h     5i     5k     �� 5n     "  ��6&   .�5o  
   ��  � {� 6&   �� $# Interactiveable�6O   �� 5p  
    �@��
IsSelected 6'   �� $# 	IsCurrent�$$ TwoWay=�6V   �� 5q  
    � ��$ 0,1,1,1q�6,   6>   �� 5r  
    � ��
 ���� 6>   �� 5s  
    � ��$ 0q�6#   6/   �� 5t  
    � ��$ 0q�6$   60   �� 5u  
    � ��$ 48��6#   60   �� 5v  
    � ��$ Stretch=�67   6I   �� 5w  
    � ��$ Stretch=�65   6G   �� 5x  
    �@�Tag 6    �� *DataContext+ �� $ WindowL�6t   �� 5y  
    � �� 5z     �� 5{     " ��6"   .R�5|     �� #��z��6   #��z��5}     #��z��5~     #��z��5     #��z��5�     # z��5�     ._�5�     �� #��z��6+   #��z��5�  +   #��z��5�  +   5�  .   5�      5�     P� 5�      �@J�IsMouseOver . . �5�     �� # � " 6;    � ��6n   �� 5�     # � # 6;    � ��6n   5�     P� 5�      �@��
IsSelected . . �5�     �� # � $ 6;    � ��6q   5�     5�     5�     % 5�  
   �� 5�     & 6   �� *
IsMenuable+' True69   .a�5�     ��  �@�ContextMenu 5�     �� 5�     ( 6&   �� *PlacementTarget.Tag+ �� $

 Self=�.@�5�     m� $��立即播放此歌单��6'    5�  '   �� *Tag.ListCommand+ �� $ ContextMenuL� 5�  "   `� 5�  &   8)   .1�5�  *   �� $* PlayAll��62   6E   �� 5�  *   $# DataContext�62    6E   �� $ ContextMenuL�6�   5�  '   5�     �� 5�     6*   m� 5�     $��编辑歌单信息��6'   $ ShowModifyMask��5�  �    6'   �� *Tag.TopMaskCommand+ �� $ ContextMenuL�5�     m� 5�     $��新建歌单��6'   $ NewList��5�  '    5�  '   �� $# Tag.ListCommand� �� $ ContextMenuL�5�     �� 5�     6*   m� 5�     $��删除此歌单��6'    5�  '   �� *Tag.ListCommand+ �� $ ContextMenuL� 5�  "   `� 5�  &   8)  .1�5�  *   �� $* Delete��62   6D   �� 5�  *   $# DataContext�62    6E   �� $ ContextMenuL�6�   5�  '   5�     5�     5�     5�     5�     �� 5�     "  ��6   .�5�  
   ��  � ��# � ' 6'   6U   �� 5�  
    � ��# � ( 6'   6U   �� 5�  
    � ��$ 0q�6#   60   �� 5�  
    � ��$ 0q�6$   61   �� 5�  
    � ��$ 0q�6,   68   �� 5�  
    �@�ContextMenu 5�     �� 5�     ( 6   �� *PlacementTarget.DataContext+ �� $

 Self=�.@�5�     m� $��新建歌单��6   $ NewList��5�  '    5�  '   �� $# Tag.ListCommand� �� $ ContextMenuL�5�     5�     5�     5�     �� 5�     "  ��6,   .�5�  
   ��  � ��$ 0q�6$   �� 5�  
    � ��$ 0q�6#   6/   �� 5�  
    � ��$ 0q�6,   68   �� 5�  
    � ��$ Center=�67   �� 5�  
    � ��$ Center=�65   �� 5�  
    � ��$ 1q�6,   �� 5�  
    � ��# � ��6'   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     � $+ templateRoot��6   }�.  . $, Local=�6`   - 5�     �� 5�     $. ColumnDefinition0��6/   �� 5�     $. ColumnDefinition1��6/   $��0 �6J   / 5�     �� 5�     $0 RowDefinition0��6,   $
��Auto �6D   �� 5�     $0 RowDefinition1��6,   $��* �6D   .+�5�     �� $1 headerPanel��6#   
������ $��0��5�  #   $��0��63   2 . $��0q�5�  6   $y�	Collapsed=�5�  #   �� 5�     $ contentPanel��6!   #��z��5�  !   #��z��5�  !   #��z��5�  !   $��0��5�  !   $��1��5�  !   $3 	Contained=�5�  !   $4 2��5�  !   $, Local=�5�  !   ._�5�     �� $  PART_SelectedContentHost��6/   $��SelectedContent��5�  /   #��z��5�  /   # z 5�  /   5�     5�      5�     P� 5�      � {� .  . �5      �� $ templateRoot��6G   # � ��6a    � ��5     5     5     5     �� 5
     "  ��6(   .�5  
   ��  � ��$ 0q�6#   6/   �� 5  
    � �� 5     �� 5     " ��6"   .R�5     9� $��0q�6   $��0q�6*   5 . $��1q�6H   
���������5     �� 5     $ 
Horizontal=�6)   $��38��6B   .+�5  "   �� $��Center=�6B   ��6,   �� *Name+6_   �� 5  "   $��     共��6,   $��Center=�6:   6W   �� 5  "   $��Center=�6[   ��6,   �� *	ItemCount+$6 {0}项��6x   5     ��5     �� 5     6/   5     5     5     5     �� 5      "!  66   .R�5!  
   � $��Out_Grid��6A   $��38��6   $��Center=�6   $��0q�66   - 5"     �� 5#     $
��Auto �6#   62   �� 5$     $��5* �6#   60   �� 5%     $��1* �6#   $��48��6.   6>   �� 5&     $��1* �6#   $��48��6.   6>   �� 5'     $��1* �6#   $��48��6.   6>   �� 5(     $��1* �6#   $��68��6.   6>   .+�5*     �� $ 
Horizontal=�6   .+�5+     �� $��	Check_box��6   $y�	Collapsed=�6,   $��Center=�5,     $��Center=�68   $��10,0,5,0q�6S   7 5+  C   �� *	IsChecked+$$ TwoWay=�5,  g   �� 5-     $��PlayingIcon��6    8��  8�� #���  5.      $��10,0,5,0q�6T   $��Center=�6f   $y�Hidden=�6�   6�   d� 5/     $��
LovelyIcon��6   $��Center=�61   8�� $	��5,0q�52     7 51     �� *
IsLovely+$$ TwoWay=�8 53     d� 54     $9 	LeftClicke�6'   : 55  +   �� *DataContext.PlayActionCommand+ �� $ WindowL�; 56  "   `� 57  &   8)  .1�58  *   �� $* 
MarkLovely��62   6H   �� 59  *   65   5:  '   5<     5>     5@     �� 5A     $��1��6   $��CharacterEllipsis=�6>   $��Center=�5B     $	��5,0q�63   ��5A  (   �� *Name+< 5B  @   �� *Name+6[   �� 5C     $��2��6   $��CharacterEllipsis=�6@   
�������$	��5,0q�5D  .   $��Center=�6;   ��5C  (   �� *Artist+5D  X   �� 5E     $��3��6   $��CharacterEllipsis=�6?   
�������$	��5,0q�5F  .   $��Center=�6;   ��5E  (   �� *Album+5F  X   �� 5G     $��4��6   $��CharacterEllipsis=�6>   
�������$	��5,0q�5H  .   $��Center=�6;   ��5G  (   �� *Date+5H  X   �� 5I     $��5��6   $��CharacterEllipsis=�6q   
�������$	��5,0q�5J  .   $��Center=�6;   ��5I  (   �� *
TimeLength+8"  5J  X   8 5K     d� 5L     $9 LeftDoubleClicke�6#   : 5M  #   �� *DataContext.PlayActionCommand+ �� $ WindowL�; 5O     `� 5P     8)  .1�5Q  "   �� $* PlayThis��6*   6>   �� 5R  "   $# DataContext�6*    6=   �� $ ListViewItemL�6{   �� 5S  "   $# SelectedItem�6*   $= Side_Bar��6>   6W   5T     5V     5X     > 5Z  
   �� 5\     $
' True��68   & 6   �� *	IsPlaying+.a�5]     �� $ PlayingIcon��6/    � y�$ Visible=�6H   6Z   5^     �� 5_     $' False��66   & 6   �� *	IsValid+5a     �� 5b     $
' True��6l   & 6   �� *	CheckMode+ �� $ WindowL�.a�5c     �� $ 	Check_box��6    � y�$ Visible=�6F   6X   �� 5d     $ 
LovelyIcon��6/    � y�$ 	Collapsed=�6G   6[   5e     5i     �� 5k     "!  64   .R�5l  
   �� ��6   �� *Title+6-   5m     �� 5o     "  m�6)   .�5p  
   ��  �@m�Command 6$   �� *Tag.ListCommand+ �� $ ContextMenuL�6�   �� 5q  
    �@m�CommandParameter 5r     `� 5s     8)   .1�5t     �� $* AddTo��6   6/   �� 5u     $# DataContext�6    61   �� $ ContextMenuL�6n   �� 5v     $# DataContext�6    61   �� $

 Self=�6_   5w     5y     % 5z  
   �� 5{     & 6   �� *	CheckMode+ �� $ WindowL�' True6l   .a�5|     ��  �@m�CommandParameter 5}     `� 5~     8)  .1�5     �� $* 	AddThemTo��6&   6;   �� 5�     $# DataContext�6&    69   �� $

 Self=�6g   5�     5�     5�     5�     �� 5�     "  ��6+   .�5�  
   ��  � ��$ 0q�6#   6/   �� 5�  
    � ��$ 0q�6$   60   �� 5�  
    � ��$ 0q�6,   68   �� 5�  
    � ��
 ���� 6>   �� 5�  
    � ��# � 0 6'   6Y   �� 5�  
    �@�Tag 6    �� *DataContext+ �� $ WindowL�6t   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     �� #��z��6   #��z��5�     #��z��5�     ._�5�     �� 6-   5�      5�     P� 5�      �@J�IsMouseOver . . �5�     �� # � 1 6;    � ��6n   5�     P� 5�      �@��
IsSelected . . �5�     �� # � 2 6;    � ��6q   5�     5�     5�     �� 5�  
    �@�ContextMenu 5�     �� 5�     ( 6   �� *PlacementTarget.Tag+ �� $

 Self=�.@�5�     m� $��立即播放��6    5�     �� *Tag.ListCommand+ �� $ ContextMenuL� 5�     `� 5�     8)   .1�5�  "   �� $* PlayNow��6*   6=   �� 5�  "   $# DataContext�6*    6=   �� $ ContextMenuL�6z   5�     5�     m� 5�     $��下一首播放��6    5�     �� *Tag.ListCommand+ �� $ ContextMenuL� 5�     `� 5�     8)  .1�5�  "   �� $* PlayNext��6*   6>   �� 5�  "   $# DataContext�6*    6=   �� $ ContextMenuL�6z   5�     5�     �� 5�     6"   m� 5�     $��将已选项添加到...��6   8�� 8�� y�5�     �� *Tag.CheckMode+ �� $ ContextMenuL�8"  ��5�     �� *Tag.SideBarSources+ �� $ ContextMenuL�8"  5�     m� 5�     $��添加到...��6   8�� 8�� ��5�     �� *Tag.SideBarSources+ �� $ ContextMenuL�8"  5�     �� 5�     6"   m� 5�     $!��将已选项从列表删除��6   y�5�     �� *Tag.CheckMode+ �� $ ContextMenuL�8" 	  5�     �� *Tag.ListCommand+ �� $ ContextMenuL� 5�     `� 5�     8) 
 .1�5�  "   �� $* 
DeleteThem��6*   6@   �� 5�  "   $# DataContext�6*    6>   �� $ ContextMenuL�6{   5�     5�     m� 5�     $��从列表中移除��6    6/   �� *Tag.ListCommand+ �� $ ContextMenuL� 5�     `� 5�     8)  .1�5�  "   �� $* 
DeleteThis��6*   6@   �� 5�  "   $# DataContext�6*    6=   �� $ ContextMenuL�6z   5�     5�     5�     5�     % 5�  
   ]� 5�     ? 5�     �� 5�     @ �@J�IsMouseOverA .  6G   �� 5�     @ �@��AlternationIndex$A 1��6E   6Q   �� 5�     @ �@��
IsSelectedA .  6F   ./�5�     ��  � ��# � 4 6/   6`   5�     5�     �� 5�     "  ��6,   .�5�  
   ��  � ��
 ���� 6=   �� 5�  
    � ��$ 0q�6,   68   �� 5�  
    � �� .  66   �� 5�  
    � |� .  66   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     �� $��0q�6   $ 5��61   #��z��6B   5�      5�     P� 5�      �@J�IsMouseOver . 5�     P� 5�      � �� . 5�     5�     5     % 5  
   5     �� 5     "  n�6%   .�5  
   ��  � �� �	#FFDDDDDD6;   �� 5	  
    � �� 5
     �� 5     " n�6"   .R�5     �� #��z��6   $ 5��6G   5     5     5     % 5  
   P� 5      �@J�IsMouseOver . . �5     ��  � �� �	#FF6666666C   5     5     �� 5     "  ��6   .�5  
   ��  �@��IsPressAndHoldEnabled .  69   �� 5  
    �@��IsFlicksEnabled .  63   �� 5  
    � ��
 ���� 6'   �� 5  
    � �� 6(   Z� �� 5  
    � ��
 �����6'   �� 5  
    � ��$	 1,0q�6,   �� 5  
    � ��$ 8��6"   �� 5   
    � ��$ 8��6%   �� 5!  
    � ��$ 0,-10q�6#   63   �� 5"  
    � �� 5#     �� 5$     " ��6"   .R�5%     � $+ Bg��6    . / 5&     �� 5'     #��� q�6,   �� 5(     $��0.00001* �6,   �� 5)     #��� q�6,   .+�5+     �� #��z��6!   #��z��5,  !   #��z��5-  !   $ 5��5.  !   $��1��5/  !   ]� 51     $ 
PART_Track��6    ��. #{�zB 52      $��1��6J    53     �� 54  "   #��ZC 6/   8��  55  /    57     �� 58  "   #��ZD 6/   8�� 59  /    5;     n� 5<  "   8�� 6(   5>     5?      5@     P� 5A      �@J�IsMouseOver . 5C     5E     5G     % 5H  
   P� 5I      �@��Orientation$ 
Horizontal=�6-   . �5J     ��  � ��$
 Auto��6*   �� 5K      � ��$ 0��6-   �� 5L      � ��$ 8��6+   �� 5M      � ��$ 8��6.   �� 5N      � ��$	 0,1q�64   �� 5O      � ��$ -16,0q�6+   6;   �� 5P      � �� 5Q     �� 5R     " ��6*   .R�5S     � $+ Bg��6#    . - 5T  "   �� 5U  &   #��� ��67   �� 5V  &   $��0.00001* �67   �� 5W  &   #��� ��67   .+�5Y  "   �� #��z��6)   #��z��5Z  )   #��z��5[  )   $ 5��5\  )   $��1��5]  )   ]� 5_  "   $ 
PART_Track��6(   $��1��6<   #{�zB 6L    5`  &   �� 5a  *   #��ZE 67   8�� 5b  7    5d  &   �� 5e  *   #��ZF 67   8�� 5f  7    5h  &   n� 5i  *   8�� 60   5k  #   5l     5m     5o     5p     5r     �� 5v     "  ��6(   .�5w  
   ��  � ��
 �   �6'   �� 5x  
    � ��
 ���� 6'   �� 5y  
    � ��
 ���� 6(   �� 5z  
    � ��$ 0q�6,   68   �� 5{  
    � ��$ 0q�6#   �� 5|  
    � ��$ 10q�6$   �� 5}  
    � ��$ Stretch=�67   �� 5~  
    � ��$ Stretch=�65   �� 5  
    � �� 5�     �� 5�     " ��6"   .R�5�     � $+ templateRoot��6    . .+�5�     �� #��z��6!   #��z��5�  !   #��z��5�  !   6W   �� 5�     $  contentPresenter��6+   $��Header��5�  +   |�.  #��z��5�  +   ��. # z 5�  +   ��5�  +   �� *HorizontalContentAlignment+��5�  +   �� *VerticalContentAlignment+�� 5�     $��	BottomBar��6!   #���  62   $��4��6f   $y�Hidden=�6q   $��Bottom=�5�  !   $��0,0,0,-3q�6<   6P   5�      5�     P� 5�      �@��
IsSelected . . �5�     �� $ 	BottomBar��6K    � y�$ Visible=�6;   6d   5�     5�     5�     5�     �� 5�     "!  6.   .R�5�  
   �� $��28��6   
������ $	��340��69   ._�5�     �� 
������ $ Center=�5�     $��Center=�5�     $��Center=�5�     $
��Wrap=�5�     $��0q�5�     ��5�     �� *Lrc+5�  %   5�     5�     �� 5�     "  ��6"   .�5�  
   ��  � ��$ 0q�6,   68   �� 5�  
    � ��$ Stretch=�65   6G   �� 5�  
    � ��$
 Left=�67   6F   �� 5�  
    � ��
 �   �67   �� 5�  
    � ��
 ���� 6=   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     �� #��z��6   #��z��5�     #��z��5�     #��z��5�     ._�5�     �� #��z��6+   #��z��5�  +   #��z��5�  +   #��z��5�  +   #��z��5�  +   6_   5�      5�     P� 5�      �@J�IsMouseOver . 5�     P� 5�      �@��
IsSelected . . �5�     ��  � ��
 �����6K   �� 5�      � ��$ 15(�69   6F   5�     5�     5�     5�     �� 5�     "  ��6   .�5�  
   ��  � ��$ 0q�6,   68   �� 5�  
    � ��
 ���� 6=   �� 5�  
    � ��$ Disabled=�6G   6Z   �� 5�  
    � ��$ Disabled=�6E   6X   5�     �� 5�     "  ��6/   .�5�  
   ��  � �� 5�     �� 5�     " ��6"   .R�5�     � .+�5�     �� $��28(�6$   $ Center=�62   $��Center=�6I   #���  5�  $   8��  6o   �� 5�     $��64��6    $��64��6+   $��UniformToFill=�67   $��0q�5�  D   ��5�      �� *CurrentMedia.Cover+8"  $G Media��5�     �� 5�     $��Media_Control_Cover��5�  !   #��� > 5�  !   $y�Hidden=�5�  <   $��0q�6P   ._�5�     �� $��
Zoom_Panel��6)   8�� #���  5�  (   $��24(�5�  (   $��Center=�66   #��� @ 5�  (   $ Center=�6Z   5�     5�     5�      5�     P� 5�      �@J�IsMouseOver . . �5�     �� $ Media_Control_Cover��6K    � y�$ Visible=�6;   6n   5�     �� 5�     $' Visible��6}   & 6&   �� *IsMediaVisible+ �� $ WindowL�.a�5�     �� 8  $ 
Zoom_Panel��6U    � ��6o   5�     5�     5�     5�     �� 5�     "  d�6'   .�5   
   ��  � �� 5     �� 5     " d�6"   .R�5     �� ._�5     �� $ 
Horizontal=�6%   .+�5     �� 61   �� 5     $
��Font��6(   $y�Visible=�64   $��选择��6I   $��Center=�6S   $	��5,0q�6n   6}   5     5	      5     P� 5      �@d�	IsChecked$
 TrueY�67   . �5     �� $
 Font��6B    � ��$ 完成��65   6V   5     5     5     5     �� 5     "  d�6(   .�5  
   ��  � ��
 ���� 6>   �� 5  
    � ��$ 0q�6,   68   �� 5  
    � ��
 ���� 6=   �� 5  
    � ��$ Center=�65   6F   �� 5  
    � ��$ Center=�67   6H   �� 5  
    � �� 5     �� 5     " d�6"   .R�5     �� #��z��5     #��z��5      #��z��5!     #��z��5"     ._�5$     �� #��z��5%     #��z��5&     #��z��5'     5(      5)      5+     P� 5,      � {� .  . �5-     ��  � ��
 �����6J   5.     50     52     53     �� 56     "!  6+   .R�57  
   � .+�58     �� ��6   �� *Name+60   59     5:     �� 5?     "  m�60   .�5@  
   ��  �@m�Command 6$   �� *Tag.ListCommand+ �� $ ContextMenuL�6�   �� 5A  
    �@m�CommandParameter 5B     `� 5C     8)   .1�5D     �� $* AddTo��6   6/   �� 5E     $# DataContext�6    61   �� $ ContextMenuL�6n   �� 5F     $# DataContext�6    61   �� $

 Self=�6_   5G     5I     5J     �� 5L     "  ��6)   .�5M  
   ��  �@�Tag 6    �� *DataContext+ �� $ WindowL�6t   �� 5N  
    � ��$ Stretch=�60   6B   �� 5O  
    � ��$ Stretch=�6.   6@   �� 5P  
    � ��$ 2q�6#   6/   �� 5Q  
    � ��$ 0q�6$   60   �� 5R  
    � ��$ 1q�6,   68   �� 5S  
    � ��
 ���� 6>   �� 5T  
    � ��# � 0 6'   6Y   �� 5U  
    �@�ContextMenu 5V     �� 5W     ( 6   �� *PlacementTarget.Tag+ �� $

 Self=�.@�5X     m� $��下一个播放��6    5Y     �� *Tag.ListCommand+ �� $ ContextMenuL� 5Z     `� 5[     8)   .1�5\  "   �� $* PlayNext��6*   6>   �� 5]  "   $# DataContext�6*    6=   �� $ ContextMenuL�6z   5^     5`     �� 5a     6"   m� 5b     $��编辑信息��6    5c     �� *Tag.TopMaskCommand+ �� $ ContextMenuL� 5d     `� 5e     8)  .1�5f  "   �� $* ShowMediaMask��6*   6C   �� 5g  "   $# DataContext�6*    6=   �� $ ContextMenuL�6z   5h     5j     �� 5k     6"   m� 5l     $��将此项添加到...��6   8�� 8�� ��5o     �� *Tag.SideBarSources+ �� $ ContextMenuL�8"  5p     �� 5q     6"   m� 5r     $��删除此项��6    5s     �� *Tag.ListCommand+ �� $ ContextMenuL� 5t     `� 5u     8)  .1�5v  "   �� $* CurrentRemove��6*   6C   �� 5w  "   $# DataContext�6+    6>   �� $ ContextMenuL�6{   5x     5z     5{     5}     �� 5  
    � �� 5�     �� 5�     " ��6"   .R�5�     �� #��z��6   #��z��5�     #��z��5�     ._�5�     �� 6-   5�      5�     P� 5�      �@J�IsMouseOver . . �5�     ��  � �� �	#AAAAAAAA6O   5�     P� 5�      �@��
IsSelected . . �5�     ��  � ��
 �����6O   5�     5�     5�     % 5�  
   ]� 5�     ? 5�     �� 5�     @ �@J�IsMouseOverA .  6G   �� 5�     @ �@��AlternationIndex$A 1��6E   6Q   ./�5�     ��  � ��# � 4 6/   6`   5�     5�     �� 5�     "!  64   .R�5�  
   �� 
������ $��0q�6+   $��Stretch=�6?   $��32��6]   ._�5�     � $
 Left=�6   - 5�     �� 5�     $
��Auto �6'   $��24��64   6E   �� 5�     $
��Auto �6'   $��24��64   6E   �� 5�     $��* �6'   63   �� 5�     $
��Auto �6'   $��64��64   6E   �� 5�     $
��Auto �6'   $��64��64   6E   8 5�     d� 5�     $9 LeftDoubleClicke�6#   : 6A   �� *DataContext.PlayActionCommand+ �� $ WindowL�; 5�     `� 5�     8)   .1�5�  "   �� $* PlayCurrent��6*   6A   �� 5�  "   $# DataContext�6*    6=   �� $
 TemplatedParent=�6v   5�     5�     .+�5�     �� 8�� 8�� $	��5,0q�6d   $��Center=�5�     #���  67   y�5�     �� *	IsPlaying+8"  6p   d� 5�     $��
LovelyIcon��6   $��Center=�61   8�� $	��5,0q�5�     $��1��6-   7 5�     �� *
IsLovely+$$ TwoWay=�8 5�     d� 5�     $9 	LeftClicke�6'   : 5�  +   �� *DataContext.PlayActionCommand+ �� $ WindowL�; 5�     `� 5�  "   8)  .1�5�  &   �� $* 
MarkLovely��6.   6D   �� 5�  &   61   5�  #   5�     5�     �� 5�     $��2��6L   $
 Left=�5�     $��Center=�61   $��CharacterEllipsis=�6L   ��5�     �� *Name+< 63   �� *Name+5�  o   �� 5�     $��3��65   $��Center=�6E   ��6   �� *Artist+6c   �� 5�     $	��5,0q�6e   $��4��5�     $��Right=�6,   $��Center=�6H   ��5�     �� *
TimeLength+8"  5�  e   5�     5�     5�     �� 5�     "! ��61   .R�5�  
   �� $ Center=�6;   $��NoWrap=�6R   $��CharacterEllipsis=�6h   ��6   �� < 6&   �� 6�   5�     �� 5�     "  ��6&   .�5�  
   ��  � ��$ 1q�6#   6/   �� 5�  
    � �� 5�     �� 5�     " ��6"   .R�5�     �� #��z��6!   #��z��5�  !   #��z��5�  !   #��z��5�  !   ._�5�     � #��z��5�     - 5�     �� 5�  "   66   �� 5�  "   $
��Auto �63   6B   .+�5�     �� #��z��5�  !   #��z��5�  !   6c   �� 5�     $��Remove_Item��6%   $y�Hidden=�68   $��1��6L   
������ $��24��5�  >   $��24��6I   #��z��5�  %   #��z��5�  %   8��  ��5�  +   �� * DataContext.ApplyModifyCommand+ �� $ WindowL���5�  "   `� 5�  &   8)  .1�5�  *   �� $* 
RemovePath��62   6H   �� 5�  *   $# DataContext�62    6E   �� $
 TemplatedParent=�6~   5�  '   .��5�  "   �� X6/   5�     5�     5�      5�     P� 5�      �@J�IsMouseOver . . �5�     �� $ Remove_Item��6E    �@�Cursor$
 Hand��67   6`   �� 5�     $ Remove_Item��6K    � y�$ Visible=�6;   6f   �� 5      # � 1 6;    � ��6n   5     5     5     5     �� 5     6   �� 5	     "  ��6   .�5
  
   ��  � ��# �  6(   �� 5  
    � ��$ 1q�6,   �� 5  
    � �� 5     �� 5     " ��6"   .R�5     �  . - 5     �� 5     $��6 �6/   �� 5     $
��Auto �6/   �� 5     $��* �6/   �� 5     $��6 �6/   / 5     �� 5     $
��Auto �6,   �� 5     $
��Auto �6,   �� 5     $��* �6,   �� 5     $��6 �6,   .+�5     �� 
������ #��z��5  !   #��z��5  !   $��4��5  !   $��0��65   $ 4��5   !   $��1��62   $��3��6?   �� 5!     
������ #��z��6;   $��4��6o   $ 4��6�   $��1��6�   $��3��6�   H 5"     `� 5#  "   $I 7��6/   8)   .1�5$  &   �� $= Header��6.   $# ActualWidth�6C   �� 5%  &   $# ActualWidth�6.    6A   �� *Self+�� 5&  &   $# ActualHeight�6.    6B   �� *Self+5'  #   ._�5)     �� #��z��6%   #��z��5*  %   $ 3��5+  %   ._�5,  "   �� 
������ #��z��5-  )   $ 2��5.  )   5/     50     �� 51     $ Header��6!   $��1��61   $ 3,1,3,0q�6A   $��0��6S   $��2��6`   ._�52     �� $��Header��6/   ��. # z 6a   53     �� 54     $��2��6+   $��1��6?   #��z��6O   $��2��6r   # z 6   55     56     58     59     5:     