   M S B A M L   `   `   `  ����Z  VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76<1clr-namespace:GraphX;assembly=GraphX.WPF.ControlsGraphX  5      R<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.ControlsGraphX.Converters  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 
  Freeze  NormalBrush  �� EndPoint �� 
StartPoint � Color � Offset  NormalBorderBrush  	EdgeBrush  EdgeArrowBrush �� Color    GraphX.VertexControl �� 
TargetType �� Property �� Value �� 
TargetType	 � 	Resources  Key
 g� Duration �� 
TargetName �� TargetProperty	 W� To ��Name �� CornerRadius  NormalHighlightBrush J� Opacity  MouseOverBrush  MouseOverBorderBrush 	 MouseOverHighlightBrush � UseLayoutRounding J� SnapsToDevicePixels � RowDefinitions � ColumnDefinitions �� TextAlignment �� Triggers P� Property P� Value N� ExitActions ��Name 
 HoverOff N� EnterActions  HoverOn   GraphX.DragBehaviour �� Triggers   GraphX.HighlightBehaviour   GraphX.EdgeControl F�Name � ToolTip�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      HpoAhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/options  5      9gxl1clr-namespace:GraphX;assembly=GraphX.WPF.Controls  5      Econv<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.Controls  5      %�  &	       &	 z    &	     &	 �    '   �    7  7  7 
 7  '  �    7  7  �� 5      4true  6R   $  0.5,1&�6.   $ 0.5,0&�6?   .��5	   
   � $ 	#FFFFFFFF��6   $ 0Q�6)   � 5
   
   $ 	#FFA4ADBB��6   $ 0.521Q�6)   � 5   
   $ 	#FFD7E0EA��6   $ 0.194Q�6)   � 5   
   $ 	#FFBAC1CF��6   $ 0.811Q�6)   � 5   
   $ 	#FFBCC5D5��6   $ 0.507Q�6)   � 5   
   $ 	#FFE3E4E6��6   $ 1Q�6)   5      �� 5      4true  6X   $  0.5,0&�64   $ 0.5,1&�6E   .��5   
   � $ 	#FF8B8B8B��6   � 5   
   $ 	#FFADADAD��6   $ 1Q�6)   5      �� 5      4true  6P   $  0.5,0&�6,   $ 0.5,1&�6=   .��5   
   � $ 	#FF000000��6   � 5   
   $ 	#FFBF931E��6   $ 1Q�6)   5      �� 5      4true  6;   $ Black��6-   6;   �� 5      "   6   .�5   
   ��  � ��8   6'   �� 5    
    � ��$ 	10,5,10,5q�6$   �� 5!   
    � ��8  6(   �� 5"   
    � ��$ 3q�6,   �� 5$   
    � �� 5%      �� 5&      "   6"   	 5'      ���� 5(      HoverOn .��5)      W� $
 00:00:00.1000000D�6.   $ BackgroundOver��6J   $ Opacity�6q   $ 1X�6�   W� 5*      $
 00:00:00.1000000D�6.   $ BackgroundOver_Highlight��6J   $ Opacity�6{   $
 0.65X�6�   5+      �� 5,      HoverOff .��5-      W� $
 00:00:00.4000000D�6.   $ BackgroundOver��6J   $ Opacity�6q   $ 0X�6�   W� 5.      $
 00:00:00.4000000D�6.   $ BackgroundOver_Highlight��6J   $ Opacity�6{   $ 0X�6�   5/      50      .R�52      � .+�53      �� $ BackgroundNorm��6!   #��z��69   $ 5��6m   #��z��6~   #��z��6�   �� 54      $ BackgroundNorm_highlight��6!   $��1q�6C   #���  6N   $��1,0,1,1q�6�   $ 5��6�   $
 0.65Q�6�   �� 55      $ BackgroundOver��6!   #��z��69   $ 5��6m   $ 0Q�6~   #���  6�   #���  6�   �� 56      $ BackgroundOver_Highlight��6!   $��1q�6C   $��1,0,1,1q�6N   $ 5��6h   $ 0Q�6y   #��� 	 6�   � 58       .  .  59      �� 5:   "   �� 5;   "    5=      �� 5>   "   $
��Auto �63   �� 5?   "   $
��Auto �63   .+�5A      �� $��3q�6C   $��60��6O   $��UniformToFill=�6Z   $��2��6r   ��6$   �� *PersonImage+6r   �� 5B      $��Center=�6>   $
��Bold"�6Y   
���   �$��1��6~   $��0��6�   $��3q�6�   $	��120��6�   ��6(   �� *Name+6�   �� 5C      $ Center=�6D   $��Italic$�6[   $��14(�6n   $��Center=�6|   $��Center=�6�   
�������$��1��6�   $��1��6�   $��3q�6�   ��6(   �� *
Profession+6�   5D      5E       5F      P� 5G       �@J�IsMouseOver .  5H      �� 5I   "   $ HoverOff_BeginStoryboard��6Y   8��  5K      �� 5L   "   8�� 62   5N      5P      5S      �� 5V   
    �@ IsDragEnabled .  5W      �� 5X   
    �@ UpdateEdgesOnMove . 5Y       5\   
   P� 5]       �@ Highlighted . . �5^      ��  � ��
 � ���60   �� 5_       � ��$ 7q�64   5`      5c      �� 5g      "  6   .�5h   
   ��  � �� 5i      �� 5j      "  6"   .R�5k      � .+�5l      F� $ PART_edgePath��5o      8��  $��2��5m      $��1��6/   $��1��6<   # z 5n      5o      F� 5p      $ PART_edgeArrowPath��5r      8�� $��2��5q      $��1��6/   $��1��6<   5r      5s      5t      5v      �� 5x   
    � ��$ 1��5y      �� 5z   
    � ��$ 1��5{      �� 5|   
    � ��
 �  ��5}      �� 5~   
    � ��
 �����5      �� 5�   
    �@J�Opacity$ 1Q�5�      �� 5�   
    �@ IsHighlightEnabled .  6F    5�   
   P� 5�       �@ Highlighted . . �5�      ��  � ��
 � ���6/   �� 5�       �@ StrokeThickness$ 5Q�64   5�      P� 5�       �@ Highlighted .  . �5�      ��  � ��
 �����6/   �� 5�       �@ StrokeThickness$ 2Q�64   5�      5�      5�      