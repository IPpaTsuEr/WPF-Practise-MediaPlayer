   M S B A M L   `   `   `  ���� F  BMediaPlayer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MediaPlayerMediaPlayer  J FFrameLessWindow, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullJ6clr-namespace:FrameLessWindow;assembly=FrameLessWindowFrameLessWindow R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel F BEditTextBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null>.clr-namespace:EditTextBox;assembly=EditTextBoxEditTextBox D @SearchBox, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null8*clr-namespace:SearchBox;assembly=SearchBox	SearchBox O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem     MediaPlayer.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:MediaPlayer     Efl6clr-namespace:FrameLessWindow;assembly=FrameLessWindow     c	 _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity 	 h
 dMicrosoft.Expression.Interactions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bie9http://schemas.microsoft.com/expression/2010/interactions 
 Bscm8clr-namespace:System.ComponentModel;assembly=WindowsBase 
 7ed.clr-namespace:EditTextBox;assembly=EditTextBox 
 3sb*clr-namespace:SearchBox;assembly=SearchBox 
 3System&clr-namespace:System;assembly=mscorlib 
 -   %  FrameLessWindow.FrameLessWindow   Name$  MainWin��   TitleBarHeight$ 32 �   ToolBarHeight$ 0 �   StateBarHeight$ 0 � � 
ResizeMode$ CanResizeWithGrip=� � Title$ 媒体播放器��$	��450��$	��800��$	��600��$	��800��$��1q�   
BorderLine#���   $��0q�  MainBackground#���    
Foreground#��[   OuterShadowColor   ShadowColor# [    ShadowOpacity$ 1Q�   
ShadowSize$ 6Q�$��6q�	 � 	Resources	   
NotUseView
 �� Source �� RelativeSource �� AncestorType �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName �� SortDescriptions+  %System.ComponentModel.SortDescription   PropertyName   	Direction��%t   &	       �� 
 �� *CurrentList.List+ �� " �   $
 Type��   $
 Name��$ 
Descending=�   TitleBarContext �� $��14(�
�������$
��24,0q�$��Center=����� *Title+   TitleBarExContent �� $��32��$
��Gray������ *SkinChangeCommand+.����   AwesomeS#��[ $	����
������� �� TextAlignment$ Center=�.��� $��0q�.+�� -    �Name$ MainGrid��$��0q� � RowDefinitions �� �� $��64 �.+�� $��0q� � ColumnDefinitions �� $	��200 ��� $��* �.+��   SideBarBackground#��[ $��-1q� �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0,0,0,1q�#��[  ._���  �� Orientation$ 
Horizontal=�$��48��$��Right=�.+�d�  � ToolTip$ 收起边侧栏��$��1q�$��48��  NothingToggleButton#��[ .����   IconText#��[  	 SortList#��[	 $��18(�$��2q� J� RenderTransformOrigin$ 0.5,0.5&�z���  �� Angle$ 90Q��� -    ��Name$ Side_Bar��$��1�� 
 SideList#��[
   ListViewItemStyle#��[   ListSelector#��[  �� SelectionMode$ Single=����� *SideBarSources+ �� " �. 	 (System.Windows.Interactivity.Interaction   Triggers / 	 )System.Windows.Interactivity.EventTrigger     	EventName$ SelectionChanged��. 	 (System.Windows.Interactivity.TriggerBase    Actions.  > 
 8Microsoft.Expression.Interactivity.Core.CallMethodAction  !   
MethodName$! Side_Bar_SelectionChanged��"   TargetObject" �� *DataContext+ �� $ WindowL��� $��2��#��[  $	��0,1q�._�� $��58��$��Bottom=�$��Stretch=� �� $
��Auto ��� �� $��32 ��� $��32 �.+��� # �� CornerRadius$# 25��
������ $��48��$��48��$��4q�$ J� Effect$ 3  -System.Windows.Media.Effects.DropShadowEffect    InnerShadowColor%   Color#% [ &   ShadowDepth$& 0Q�'   	Direction$' 0Q�(   
BlurRadius$( 4Q�._��� $��48��$��48��$��UniformToFill=����� *DataContext.US.UserImage+ �� $ WindowL�  StringImageConvert) �� 	Converter#) [ * �� ConverterParameter$
* User��+ J� Clip+ @� , @� Center$, 24,24&�- @� RadiusX$- 24Q�. @� RadiusY$. 24Q�/ J� InputBindings/ d� 0 d� MouseAction$0 	LeftClicke�1 �� CommandParameter$1 ShowUserMask��2 �� Command2 �� *DataContext.TopMaskCommand+ �� " ��� $��1��$��Center=�$	��4,0q�  SideBarForeground#��[ $��NoWrap=�$��CharacterEllipsis=� �� *DataContext.US.UserName+���� *DataContext.US.UserName+�� $��2��.���� #��[ $	����#��[ �� $��3��$ 系统设置��$��ShowSettingMask������ *DataContext.TopMaskCommand+ �� " �.���� #��[ $	����#��[ �� -   3 ��Name$3 MainListPanel��  NoHeaderTabControlStyle#��[ $��0q�$��0q�$��0q�$��1��4 �� SelectedIndex4 �� *SelectedItem.TabIndex+5 �� ElementName$5 Side_Bar��   $ Loaded��.  6	 	 0System.Windows.Interactivity.InvokeCommandAction	  6 	  Command6 �� *PlayerRegistCommands+ �� " �7 	  CommandParameter7 �� $5 MainListPanel��.@��� .���   ListBackgroud#���  .+��� $ 
Horizontal=�$��16(�$��50��$	��Top=�8 K� ZIndex$8 2��#���  y��� *ShowListTitleContorlBar+  BoolVisibilityConvert#) [ .+��� $��	30,0,15,0q����� *DataContext.ListCommand+ �� $ WindowL���`�   PlayMultyConvert9 `� 	Converter#9 [ .1��� : �� Source$: PlayAll���� $5 Side_Bar��; �� Path$; SelectedItem�.���� $ 
Horizontal=�$��14(�.+��� #��[   LovelyMarkForeground#���  $��Center=��� $	����� $	��4,0q��� $�播放全部���� $��Center=����� *Items.Count+$5 MainListView��< �� StringFormat$< ({0})���� $��1��$��20��
�������d�   ChangetoggleButton#��[ $
��15,0q�$��32��$��68��= d� 	IsChecked= �� *	IsChecked+$5 Head_Inner_Select��> �� Mode$> TwoWay=�.���� #��[ $	����
�������$��Center=��� $��Disabled=�$
��Auto=�
������ $��Stretch=�   $ ScrollChanged��.  	  6 �� *DataContext.MouseWheelCommand+ �� " �7 �� $5 ListControlBar��.��� $��Stretch=�$��
30,20,30,0q� �� $
��Auto ��� .+�� $��0q� �� $
��Auto ��� $
��Auto ��� .+��� $��歌单��� $��1��$��Stretch=�$��Stretch=� �� $
��Auto ��� .+��� $��0��$	��Top=�$��Right=�$��0q�
�������$��0q�$��0q�/ d� $0 	LeftClicke�2 �� *DataContext.CoverCommand+ �� " �1 �� *SelectedItem.Medias+$5 Side_Bar��.���� $��0��$	��200��$	��200��$��0q�? �� StretchDirection$
? Both=�$��UniformToFill=����� *SelectedItem.Medias.Cover+#) [ $* 	MediaList��$5 Side_Bar��� $��1��$
��10,0q� �� $��64 ��� $��40 ��� $
��Auto ��� $��30 ��� .+��� $��0��$��20(�$��40��$��Center=����� *SelectedItem.Title+$5 Side_Bar��� $��1��$	��400��$
��Left=� �� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto �.+��� $��0��$��36��$��UniformToFill=����� *DataContext.US.UserImage+#) [ $
* User��+ @� $, 18,18&�$- 18Q�$. 18Q��� $��1��$
��10,0q�$��14(�$��Center=�$��CharacterEllipsis=� �� *DataContext.US.UserName+�� ��� *DataContext.US.UserName+�� $��2��$��12(�$��Center=����� * SelectedItem.Medias.CreateDate+$5 Side_Bar��$< {0:yyyy-MM-dd} 创建��d� -   $��Open_Toggle��$��3��$ 更多操作��$��10,0,0,0q�  MediaListExt#��[ �� $��2��$ 
Horizontal=�$y�	Collapsed=�.+��� $	��6,0q�$��64��$��23��$��ShowModifyMask��$��编辑����Z� ���� *DataContext.TopMaskCommand+ �� " ��� $	��6,0q�$��64��$��23��$��删除��$��ShowDeleteMask����Z� ���� *DataContext.TopMaskCommand+ �� " ��� $��3��$ 
Horizontal=�$��Center=�.+��� $��12(��� $�标签:���� $��12(�$��10,0,0,0q����� *SelectedItem.Medias.Tag+$5 Side_Bar���� $��4��$ 
Horizontal=�$��Center=�.+��� $��12(��� $�介绍:���� $��12(�$��10,0,0,0q����� *SelectedItem.Medias.Summary+$5 Side_Bar���� -   @ ��Name$@ ListControlBar��$ 
Horizontal=�$��2��$��16(�$��0q�$��46��.+��� $
��18,0q����� *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: PlayAll���� $5 Side_Bar��$; SelectedItem�.���� $ 
Horizontal=�$��14(�.+��� #��[ #���  $��Center=��� $	����� $	��4,0q��� $�播放全部���� $��Center=����� *Items.Count+$5 MainListView��$< ({0})���� $��1��$��20��
�������d� -   $��Head_Inner_Select��#��[ $
��15,0q�$��32��$��68��= �� *	CheckMode+$> TwoWay=����� * DataContext.ApplyModifyCommand+ �� $ WindowL���`� #9 [ .1��� $: 
CancelView���� $; 	IsChecked� �� A �� Mode$
A Self=��� $5 MainListView��.���� #��[ $	����
�������$��Center=��� $ 
Horizontal=�y��� $; 	CheckMode�#) [ .+��� $ 全选��$��4q�$��32��$��32������ *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: SelectedAll���� $5 MainListView��.���� #��[   SelectedAll#��[ $��18(��� $ 反选��$��32��$��32������ *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: SelectedReavers���� $5 MainListView��.���� #��[   SelectedRevers#��[ $��18(��� $��32��$��32���� $ 分组��$��32��$��32������ *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: GroupBy���� $5 MainListView��.���� #��[  	 Group#��[ $ Center=��� $ 排序��$��32��$��32������ *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: SortBy���� $5 MainListView��.���� #��[ #��[	 $��18(��� $��32��$��32�� �� $5 Side_Bar��$'; !SelectedItem.Medias.SortDirection�  SortDirection#) [ {��� $5 Side_Bar��$ ; SelectedItem.Medias.SortBy�  EnableSortDirection#) [ ���� *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: SortDirection���� $5 MainListView��.���� #��[   	SortArrow#��[ $ 0.5,0.5&�z���  �� $5 Side_Bar��$'; !SelectedItem.Medias.SortDirection�  SortIconAngle#) [ �� $��32��$��32���� $ 取消选择��$��32��$��32��$��ClearSelected������ *DataContext.ListCommand+ �� $ WindowL�.���� #��[  
 Gabige#��[ �� -   $ MainListView��B �� AlternationCount$B 2��$	��Top=�$��1��$��0q�$��0q�$��0q�
������   GroupListViewItemDataStyle#��[    GroupListViewItemStyle#��[  $��Disabled=�$��Disabled=����� $5 Side_Bar��$; SelectedItem� ! ViewConvert#) [!    $ PreviewMouseWheel��.    $! 
PopupEvent��" ��  �� " �C �� 
GroupStyleC (
  "System.Windows.Controls.GroupStyle
   " GroupListViewStyleD 
  ContainerStyle#D [" �� .��� #���   �� $
��Auto ��� $
��Auto ��� .+��� #���   $��0,0,0,1q�$
��20,0q�$	��Top=�$��32��._��� $��搜索��$��Center=�$
��10,0q��� $��1��$��34��$��20,20q�._�  SearchBox.SearchBox  -	   $��
Search_Box�� # EvenListItemBackgroud#��� #  $ 	UnderLine#��� $ $��1q�$
��10,0q�E   RealTimeSearchE �� *%#DataContext.US.EnableRealTimeSearch+ �� $ WindowL�F   
SearchIconF ��  % IconFont#��[%  
& Search#��[&    $ OnSearchClick��.  	  6 �� *DataContext.SearchCommand+ �� $ WindowL�7 `� #9 [ .1��� $: GlobalSearch���� $; 
SearchText�$5 
Search_Box���� $5 Search_Result���� -
   $��Search_Result��$��2��#���  $��0q�$B 2��$��Disabled=�#��[  #��[ ���� *DataContext.SearchHistory+ �� $ WindowL��� .��� #���  .+��� $��1��$ 
Horizontal=�$��16(�$��50��$	��Top=�$8 2��#���  y��� *ShowListTitleContorlBar+#) [ .+��� $��	30,0,15,0q����� *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: PlayAll���� $5 Side_Bar��$; SelectedItem�.���� $ 
Horizontal=�$��14(�.+��� #��[ #���  $��Center=�$	������ $	��4,0q�$��播放全部���� $��Center=����� *Items.Count+$5 NoHeaderMainListView��$< ({0})���� $��1��$��20��
�������d� #��[ $
��15,0q�$��32��$��68��= �� *	IsChecked+$5 Inner_Select��$> TwoWay=�.���� #��[ $	����
�������$��Center=��� $��Disabled=�$
��Auto=�   $ ScrollChanged��.  	  6 �� *DataContext.MouseWheelCommand+ �� " �7 �� $5 NoHeaderListControlBar��.���  �� $
��Auto ��� $
��auto ��� .+��� 
������ $��32��
�������$��0,0,0,1q�$
��20,0q�._��� $��Center=����� *SelectedItem.Title+$5 Side_Bar��� -   $ NoHeaderListControlBar��$��1��$��16(�$��20,10q�$��32�� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� �� $
��Auto �.+��� $
��18,0q�$��0������ *DataContext.ListCommand+ �� $ WindowL���`� #9 [ .1��� $: PlayAll���� $5 Side_Bar��$; SelectedItem�.���� $ 
Horizontal=�$��14(�.+��� #��[ #���  $��Center=�$	������ $	��4,0q�$��播放全部���� $��Center=����� *Items.Count+$5 NoHeaderMainListView��$< ({0})���� $��1��$��1��$��20��#���   d� -   $��Inner_Select��#��[ $��2��$
��15,0q�$��32��$��68��= �� *	CheckMode+$> TwoWay=�.���� #��[ $	����
�������$��Center=��� $��4�� ' 
BaseButton#��[' $��ReLoadLocalMedias��y��� $; SelectedItem�$5 Side_Bar�� ( ReSearchButtonVisiable#) [( $* 本地媒体������ *DataContext.SearchCommand+ �� $ WindowL�.���� $��4q�$��14(�$��重新搜索���� -   $��NoHeaderMainListView��$��2��$��0q�
������ $B 2��$	��Top=�$
��20,0q�$��0q�#��[ #��[ #��[  $��Disabled=�$��Disabled=����� $; SelectedItem�$5 Side_Bar��#) [!    $ PreviewMouseWheel��.    $! 
PopupEvent��" ��  �� " �C 
  #D [" � $��0��$��2��
���   �y��� *IsMediaVisible+.+�r� -   G r�Name$G Player��H r� LoadedBehavior$H Manual=�$y�	Collapsed=�   $ Loaded��.  	  6 �� *PlayerRegistCommands+ �� " �7 �� $5 Player��� -   $��Lrc_GP��$��0q�}�. y��� $5 	Lrc_Panel��$; 
Visibility� �� �� $
��Auto ��� .+��� $��3��$
��-100q�$ -  'System.Windows.Media.Effects.BlurEffect  I   Radius$I 60Q�J   
KernelType$J Gaussian=����� K j� Stretch$K UniformToFill=�L �� ImageSourceL �� *CurrentMedia.Cover+#) [ $* Media��._��� ���� M �� 
StartPoint$M 0.5,0&�N �� EndPoint$N 0.5,1&�.���  ) MP3StartColorO � Color#O � ) P � Offset$P 0Q��  * MP3EndColor#O � * $	P 0.8Q�� $��1�� �� ��  �� $	��400���� $
��Auto �.+�� $��0��$��0��$��0,0,40,0q� �� �� $
��Auto �.+��� 
������ $	��Top=�$��Center=�$��	0,40,0,20q�._�� 
������ $	��300��$	��300��.+��� -   $��Lrc_Roll_Image��$	��300��$	��300��$��Uniform=�$ 0.5,0.5&�$��0q����� *CurrentMedia.Cover+#) [ + @� $, 150,150&�$	- 150Q�$	. 150Q��� $	��200��$	��200��$��UniformToFill=����� *CurrentMedia.Cover+#) [ $* Media��+ @� $, 100,100&�$- 90Q�$. 90Q����� Q �� 
TargetType"Q �.��� R �� PropertyR � z�S �� ValueS �� T �� CenterX$	T 150Q�U �� CenterY$	U 150Q�V �� TriggersV �� W �� BindingW �� *
IsStoped+X �� Value	X FalseY N� EnterActionsY �� Z ��Name$Z Roll_Ani������ .��W� [ g� 	BeginTime$[ 00:00:01X�\ g� Duration$\ 00:00:30D�] �� TargetProperty$] RenderTransform.Angle�^ W� From$^ 0X�	_ W� To$	_ 359X�` g� RepeatBehavior$` Forever��a �� Targeta ��  �� $A TemplatedParent=��� W �� *
IsPaused+ �� $ WindowL�	X FalseY �� b �� BeginStoryboardName$b Roll_Ani��c N� ExitActionsc ?� $b Roll_Ani���� $��0,0,0,0q�$��Stretch=�$	��Top=�
������ }�. ._��� $	��160��$��./Assets/MediaHander.png��$��	0,-17,0,0q����� "Q ��.��� R � z�S �� $	 -50Q�$T 20Q�$U 20Q�V �� W �� *
IsPaused+	X FalseY �� $Z Roll_Hander��.���� .��W� $	_ -16X�$\ 00:00:01D�$] RenderTransform.Angle�c �� .���� .��W� $	_ -50X�$\ 00:00:01D�$] RenderTransform.Angle�� -   $��Lrc_Grid��$��1��$��0�� �� $
��Auto ��� �� $��20 �.+��� $ Vertical=�$��	0,20,0,20q�.+��� $ 
Horizontal=�.+��� $��CharacterEllipsis=�$��18(�$	��250��$	��250������ *CurrentMedia.Name+ �� *CurrentMedia.Name+�� $
��10,0q�$��Center=� + SideBarSideSymbol#��� + $��1q�._��� $ 
Horizontal=�$	��2,1q�$��Stretch=�$��9(�.+��� #��� + ���� *" DataContext.CurrentMedia.BitRate+�� $	��Kbs��#��� + �� $��20��$��20��$��ShowMediaMask������ *DataContext.TopMaskCommand+.���� $��14(�
���   � , 	EditeLine#��[, #��[% A� d A� Rows$d 1��e A� Columns$e 3��$
��0,10q�$��13(�.+��� $ 
Horizontal=�.+��� $��专辑:���� $
��10,0q�.���� #��� $ ���� *CurrentMedia.Album+�� $ 
Horizontal=�.+��� $��歌手:���� $
��10,0q�.���� #��� $ ���� *CurrentMedia.Artist+�� $��	0,0,0,0.5q�
��������� -   $��	Lrc_Panel��$��Stretch=�$��Stretch=�$��Center=�$��Stretch=�$��Disabled=�$��Visible=�
������ $y�	Collapsed=�$��0,-10q�$��0q�$��1��$��0��$	��360��
f � Tagf `�  - LrcScrollConvert#9 [- g `� ConverterParameter$g 64��.1��� $5 	Lrc_Panel���� $; CurrentPosition� �� $ WindowL��� $; CurrentMedia� �� $ WindowL��� $5 Lrc_View���� $5 Lrc_Grid��$; ActualHeight�   $ Loaded��.  	  6 �� *PlayerRegistCommands+ �� $ WindowL�7 �� $5 	Lrc_Panel��.���  �� ���� $5 Lrc_Grid��$; ActualHeight� . LrcSpaceConvert#) [. �� $
��Auto ��� ���� $5 Lrc_Grid��$; ActualHeight�#) [. .+��� -   $��Lrc_View��$��5q�$��0q�$��Stretch=� / LRC_ItemsDataStyle#��[/  0 Lrc_itemStyle#��[0 $4 0��$��1�� 1 Lrc_List#��[1 ���� *CurrentMedia.Lrc+ 2 LrcItemConvert#) [2    $ PreviewMouseWheel��.    $! 
PopupEvent��" ��  �� " �A� $��1��$��0��$��2��$��10,20,10,10q�$��12(�
������ $��32��$d 1��$e 9��.+��� $ 设置封面��$��
MediaCover������ *DataContext.CoverCommand+ �� $ WindowL�.����  3 LrcImage#��[3 #��[% $��16(��� $ 设置歌词���� $ 设置歌词��$��MediaLrc������ *DataContext.CoverCommand+ �� $ WindowL�.����  4 Lrc#��[4 #��[% $��16(��� �� $ 歌词滞后0.5秒��$��LrcUp05������ *DataContext.ListCommand+ �� $ WindowL�.����  
5 LrcBig#��[5 #��[% $ 0.5,0.5&�z��� $	 -90Q��� $ 歌词滞后0.1秒��$��LrcUp01������ *DataContext.ListCommand+ �� $ WindowL�.����  6 LrcMicro#��[6 #��[% $ 0.5,0.5&�z��� $ 90Q��� $ 重置歌词��$��LrcReset������ *DataContext.ListCommand+ �� $ WindowL��� $ 歌词快进0.1秒��$��	LrcDown01������ *DataContext.ListCommand+ �� $ WindowL�.���� #��[6 #��[% $ 0.5,0.5&�z��� $	 -90Q��� $ 歌词快进0.5秒��$��	LrcDown05������ *DataContext.ListCommand+ �� $ WindowL�.���� #��[5 #��[% $ 0.5,0.5&�z��� $ 90Q�� $��1�� 7 ControlBarBackground#��[7  8 ControlBarForeground#��� 8  �� $
��Auto ��� $��* ��� $
��Auto �.+��� $ 
Horizontal=�$
��Left=�.+���  9 ViewPortControlButtonStyle#��[9 $��64��$��64��$��DisplayStatus������ *PlayActionCommand+ �� " ��� $��64��$��64��$��Preview������ *PlayActionCommand+.���� #��[  : PreviewItem#��[: �� $��64��$��64��$��PlayOrPuase������ *PlayActionCommand+.���� #��[ ���� *
IsPaused+ ; MediaConvert#) [; �� $��64��$��64��$
��Next������ *PlayActionCommand+z��� $T 32Q�$U 32Q�$	 180Q�.���� #��[ #��[: � $��1��$��2,10,2,0q� �� $
��Auto ��� $
��Auto � �� �� $
��Auto �.+��� $
��Left=�$��CharacterEllipsis=� �� *CurrentMedia.Name+ �� " ����� *CurrentMedia.Name+ �� " ��� $ 
Horizontal=�$��1��$��Right=�.+��� ���� *CurrentPosition+ < TimeSpanConvet#) [<  ��    MediaPlayer.MainWindow"  �� �� $�/���� ���� *TotalDuration+ = DurationConvert#) [=  �� " ��� -   $��1��$��2��$��0,2,0,4q�h �� IsMoveToPointEnabledh .   > SliderBackground#��[>  ? SliderForeground#��[?  @ SliderBorderground#��[@ $��6(�i � Minimum$i 0Q�j � Maximumj �� *TotalDuration+ A DurationToValue#) [A k � Valuek �� *CurrentPosition+ B TimeSpanToValue#) [B $> TwoWay=��� $ 
Horizontal=�$��2��$��Right=�.+�d� $��64��$��64��$��Center=�$��Center=� C LovelyToggleButton#��[C $��
MarkLovely��= �� *CurrentMedia.IsLovely+$> TwoWay=����� *PlayActionCommand+ �� " ��� $��64��$��64��$��PlayType������ *PlayActionCommand+ �� " �.���� #��[ ���� *PlayListMode+ D PlayTypeConvert#) [D  �� " ��� -   l ��Name$l Volume_Button��$��64��$��64��#��[% .���� #��[ ��`�  E VolumeConvert#9 [E .1��� $5 Player��$; Volume��� $5 Player��$; IsMuted�� -   m �Name$m Volume_Popup��$��Slide=�|�. n � 	StaysOpenn .  o � AllowsTransparencyo . p � VerticalOffset$
p -120��q � HorizontalOffset$	q -20��$��0q�r � PlacementTargetr �� $5 Volume_Button��.��� 
������ $��6q� �� �� $   $% 
WhiteSmoke��$& 0Q�$( 6Q�$' 0Q�.+��� -   s ��Name$s Volume_Border��$# 5��$��0q�$��0q�t �� Padding$t 0q����� *
Background+ �� " �._�]� $	��120��$��40��.+��� -   $l Mute_Button��$��24��$
��Left=�
������ $��0q�#��[% u � Triggersu :� v :� RoutedEvent$v UIElement.MouseEnter��.[��� .���� .��t� w �� 
TargetName$w Mute_Button��$] BorderThickness�$[ 0X�x g� AutoReversex .  	y t� To$y 0X�$\ 0D�.��`� #9 [E .1��� $5 Player��$; Volume��� $5 Player��$; IsMuted��� $��Center=�$��Stretch=�$��Stretch=�$��Stretch=�#��[> #��[? #��[@ $��4q�$j 1Q�$i 0Q�$��6(�k �� *Volume+$5 Player��$> TwoWay=�� z � Pointsz �    $�  z ��� $��1��$��	50,-1,0,0q�$��0��
����ح����� *
Background+ �� " ���� -   $l List_Button��$��64��$��64��$��16(�$�� ��$�� ��.���� #��[  F List#��[F � -   $m 
List_Popup��o . n .  $��Bottom=�$
p -464��$
q -340��$��10q�r �� $5 List_Button��.��� $��6q�$   $
% Gray��$( 4Q�$' 0Q�$& 0Q�.+��� -   $ sub_list��$	��400��$	��400��#���  $B 2��$	��Top=�$��0q�$	��0.5q�$��0q�#���    G CurrentListItemDataStyle#��[G  H CurrentListItemStyle#��[H $��Disabled=�$
��Auto=����� *CurrentList.List+ �� $ WindowL��� $��2��$��8��$��8��$��Right=�$��Bottom=�� 
������ $��-1q�y��� *	TopMask+.+��� 
������ $��0q�$��0q�$t 0q�$   $J Gaussian=�$I 5Q�._�� 
������ $��0q�.+��� $��0q�$��0q�$t 0q���!� $
K None=�{ �� Opacity${ 1Q�| !� Visual| �� $5 MainGrid����  I TopMaskOverly#��� I } J� Opacity$	} 0.5Q��� #��[ 
������ 4 �� *TopMaskType+.@��� -   $��List_Modify��{��� *	TopMask+ �� $ WindowL� J VisibilityBoolConvert#) [J ~ � DataContext~ `�  K SideBarClone#9 [K .1��� $; 	IsEnabled��� $; SelectedItem�$5 Side_Bar�� 9 
 3Microsoft.Expression.Interactivity.Core.DataTrigger     Value$
 True��D 
 >Microsoft.Expression.Interactivity.Core.PropertyChangedTrigger�   Binding� �� *	IsEnabled+$5 List_Modify��.  	  6 �� * DataContext.ApplyModifyCommand+ �� $ WindowL�7 �� $5 List_Modify��.��� $��Stretch=�$��Stretch=�$��40q�#��[I $   #% �  $( 4Q�$' 0Q�$& 0Q� �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��2��#���   $	��Top=�$��0,0,0,1q�$��	20,0,20,0q�$��40��._��� $��0,0,0,5q�$��15(�$��Bottom=��� $�编辑歌单信息���� $��0��$��2��$	��Top=�$��Right=� L CloseButton#��[L $��CloseTopMask������ *TopMaskCommand+ �� " ��� $��1��$��10q�.��� $��10q�$��Stretch=�$��Stretch=� �� $
��Auto ��� $
��Auto ��� $��64 ��� $
��Auto � �� $
��Auto ��� .+�� $��0��$��0��$��2��$��10q�$��Center=�$��Center=�.+��� $��1q�#��� I ._��� $	��200��$	��200��$��Center=�$��UniformToFill=����� *Medias.Cover+#) [ $* 	MediaList��$    M ImageShadowColor#% � M $( 4Q�$' 0Q�$& 0Q��� $��24��$��48��$��1q�$��0q�$��Right=�$	��Top=�$ 更改封面����Z� ���� *DataContext.CoverCommand+ �� " ����� *Medias+���� $M 0,0.5&�$N 1,0.5&���� � #O � * $P 1Q�� #O � ) $P 0Q�.���� #��[  
N Camera#��[N $��18(��� $��名称:��$��0,0,10,0q�$��Center=�$��1��$��0���� � �� 	MaxLength$� 20��$��32��$��1��$��1��$��Stretch=�$��Center=�
������ #��� $ ���� *Medias.Name+�� $��标签:��$��0,0,10,0q�$��Center=�$��2��$��0��� $��2��$��1��$��32��.+�� � � 
ItemHeight$� 32��� � 	ItemWidth$� 32��$��Stretch=�.+��� $	��Mps��$��Center=��� $	��Mps��$��Center=��� $��选择标签��#��� $ $��Right=�$��Center=�$��	Underline{��� $��介绍:��$��	0,10,10,0q�$	��Top=�$��3��$��0���� $
� 1000��� �� AcceptsReturn� . $��3��$��1��
������ #��� $ � �� TextWrapping$
� Wrap=�"� �� VerticalScrollBarVisibility$
� Auto=����� *Medias.Summary+�� $��2��$��2��$��	20,0,20,0q�$��64��#���   $��0,1,0,0q�$��Stretch=�$��Bottom=�._��� $ 
Horizontal=�$��	0,10,0,20q�$��Right=�.+��� $��64��$��0,0,5,0q� O 
SureButton#��[O $��确定������ * DataContext.ApplyModifyCommand+ �� $ WindowL���`� #9 [ .1��� $: SideBar���� $5 Side_Bar��$; SelectedItem��� �� $��64��$��5,0,0,0q� P CancelButton#��[P $��CloseTopMask��$��取消������ *TopMaskCommand+ �� " ��� .��� #��� I $��40q�$   #% �  $( 8Q�$& 0Q�$' 0Q�.+��� $��32��$��32��$8 12��$��0q�#��[L $��Right=�$	��Top=�$��CloseTopMask������ *TopMaskCommand+ �� " ��� $��0q�
������ 4 �� *TopMaskSubType+.@���  Q SettingTabItemStyle#��[Q $��用户信息��
������ .��� $��10q�$��Center=�$��Stretch=� �� $	��200 ��� $
��Auto �.+��� 
���   �$	��200��$	��200��$	# 200��$   #% � M $( 12Q�$' 0Q�$& 0Q�._��� $��UniformToFill=�$	��200������ *DataContext.US.UserImage+ �� $ WindowL�#) [ $
* User��+ @� $, 100,100&�$	- 100Q�$	. 100Q��� $��32��$��64��
������ $��180,160,0,0q�$��Center=�$��Center=�$��	UserImage������ *DataContext.CoverCommand+ �� $ WindowL�.���� #��[% #��[N $ 更改头像��$��24(��� $ 
Horizontal=�$��1��$
��0,20q�
������ $��32��.+��� $	��Top=�$��	0,10,10,0q�$��
用户名:��  EditTextBox.EditTextBox  #��� $ $��0,0,0,1q�$��1��$	��200��$��Center=��   Text� �� *DataContext.US.UserName+ �� $ WindowL�$> TwoWay=��   Icon� �� #��[, #��[% $��14(��� #��[Q $��系统设置��
������ .��� $
��20,0q� �� $
��Auto ��� �� $
��Auto �.+��� $��18���� $��1��$
��Auto=�$��Disabled=�.���� $ Vertical=�$��Stretch=�$��10,20q�
������ .+��� $��搜索��#��� $ 
������ .���� .���� $��15q�$��启用实时搜索��= �� *%#DataContext.US.EnableRealTimeSearch+ �� $ WindowL��� $��本地资源��$
��0,15q�#��� $ .���� .���  �� �� �� $
��Auto �.+�� $��5q� �� $
��Auto ��� .+��� $��扫描文件类型 :��$��Center=�$��0,0,10,0q�  $��1��$��32��
������ #��� $ $��0,0,0,1q��   TextWrapping$� NoWrap=�$��Center=�� �� *DataContext.US.MediaTypes+ �� $ WindowL�$> TwoWay=�� �� $��30��._��� #��[, #��[% $ Center=�$��Center=�$��14(�$	��5,0q�� $��1��$��5,15,5,5q�
������ .+��� $��扫描路径 :��$��Center=��� $��0���� $��32��$��84��$��Right=�#��� ' $��添加文件夹��$��PickPath������ *DataContext.CoverCommand+ �� $ WindowL��� $��2��$
��5,10q�
������ $��Disabled=�$��Disabled=�#��� $  R PathListItemDataStyle#��[R  S PathListItemStyle#��[S ���� *DataContext.US.ListenPath+ �� $ WindowL�   $ PreviewMouseWheel��.    $! 
PopupEvent��" ��  �� " ��� $��18��
������ $��2���� .��� $��Center=�$��Center=�$	��200��$	��400��#��� I $   #% �  $( 4Q�$' 0Q�$& 0Q� �� $�� Auto ��� �� $
��Auto �.+��� #��[L $	��Top=�$��Right=�$��CloseTopMask������ *TopMaskCommand+ �� " ��� #���   $��0,0,0,1q�$
��20,0q�._��� $��删除确认��$��10q�$��16(��� $ Vertical=�$��1��$��20q�$��Center=�.+��� $��14(��� $�是否确定删除:���� $��DemiBold"�$
��Wrap=����	#ff2277FF���� *SelectedItem.Title+$5 Side_Bar���� $��2��#���   $��0,1,0,0q�$
��20,0q�$��Stretch=�$��Center=�._��� $ 
Horizontal=�$��Right=�$��Bottom=�$��	0,10,0,10q�.+��� #��[O $��32��$��64��$
��10,0q�$��确定������ *DataContext.ListCommand+ �� " ���`� #9 [ .1��� $: Delete���� $; SelectedItem�$5 Side_Bar���� $��32��$��64��#��[P $��CloseTopMask��$��取消������ *TopMaskCommand+ �� " ��� .��� -   $��Media_Modify��$��Stretch=�$��Stretch=�$��40q�#��� I ~ �� *CurrentMedia+ T CopyMediaData#) [T f �� *CurrentMedia+ �� $ WindowL�{��� *	TopMask+ �� $ WindowL�#) [J    $
 True��� �� *	IsEnabled+$5 List_Modify��.  	  6 �� * DataContext.ApplyModifyCommand+ �� $ WindowL�7 �� $5 Media_Modify�� �� $
��Auto ��� $��* ��� $
��Auto �$   #% �  $( 8Q�$& 0Q�$' 0Q�.+��� #���   $��0,0,0,1q�$��10q�._��� $��设置媒体信息��$	��0,5q��� $��0��$��2��$	��Top=�$��Right=�$��32��$��32��#��[L $��CloseTopMask������ *TopMaskCommand+ �� " �� $��1�� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��1q�$��0��#��� I $��Center=�$��Center=�$��10q�._��� $	��200��$	��200��$��UniformToFill=����� *Cover+#) [ $* Media��$   $( 2Q�#% � M $' 0Q�$& 0Q�]� $��1��$
��15,5q�$��32��.+��� $��	名称：��$��Center=��� $��Stretch=�$��Center=�
������ #��� $ ���� *Name+]� $��2��$
��15,5q�$��32��.+��� $��	专辑：��$��Center=��� $��Stretch=�$��Center=�
������ #��� $ ���� *Album+]� $��3��$
��15,5q�$��32��.+��� $��	歌手：��$��Center=��� $��Stretch=�$��Center=�
������ #��� $ ���� *Artist+�� $��2��$��0,1,0,0q�$��20,10q�#���   $��Stretch=�$��Stretch=�._��� $ 
Horizontal=�$��Right=�$��Bottom=�$��	0,10,0,10q�.+��� $��32��$��64��$
��10,0q�$��确定��#��[O ���� * DataContext.ApplyModifyCommand+ �� " ���`� #9 [ .1��� $: 
ChangeInfo���� $; DataContext� �� $
A Self=��� $	; Tag� �� $
 GridL��� $��32��$��64��#��[P $��CloseTopMask��$��取消������ *TopMaskCommand+ �� " �