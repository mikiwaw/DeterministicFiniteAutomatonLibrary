   M S B A M L   `   `   `  ���� Z  VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76<1clr-namespace:GraphX;assembly=GraphX.WPF.ControlsGraphX  R<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.ControlsGraphX.Converters  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 
  Freeze  NormalBrush  �� EndPoint �� 
StartPoint � Color � Offset  NormalBorderBrush  	EdgeBrush  EdgeArrowBrush �� Color    GraphX.VertexControl �� 
TargetType �� Property �� Value �� 
TargetType	 � 	Resources  Key
 g� Duration �� 
TargetName �� TargetProperty	 W� To ��Name �� CornerRadius  NormalHighlightBrush J� Opacity  MouseOverBrush  MouseOverBorderBrush 	 MouseOverHighlightBrush � UseLayoutRounding J� SnapsToDevicePixels � RowDefinitions � ColumnDefinitions �� TextAlignment �� Triggers P� Property P� Value N� ExitActions ��Name 
 HoverOff N� EnterActions  HoverOn   GraphX.DragBehaviour �� Triggers   GraphX.HighlightBehaviour   GraphX.EdgeControl F�Name � ToolTip�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     HpoAhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/options  9gxl1clr-namespace:GraphX;assembly=GraphX.WPF.Controls  Econv<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.Controls  %�	  &	       &	 �     &	 B    &	 �    '   �    7  7  7 
 7  '  '    7  7  �� 4true  $  0.5,1&�$ 0.5,0&�.��� $ 	#FFFFFFFF��$ 0Q�� $ 	#FFA4ADBB��$ 0.521Q�� $ 	#FFD7E0EA��$ 0.194Q�� $ 	#FFBAC1CF��$ 0.811Q�� $ 	#FFBCC5D5��$ 0.507Q�� $ 	#FFE3E4E6��$ 1Q��� 4true  $  0.5,0&�$ 0.5,1&�.��� $ 	#FF8B8B8B��� $ 	#FFADADAD��$ 1Q��� 4true  $  0.5,0&�$ 0.5,1&�.��� $ 	#FF000000��� $ 	#FFBF931E��$ 1Q��� 4true  $ Black���� "   .���  � ��8   ��  � ��$ 	10,5,10,5q���  � ��8  ��  � ��$ 3q���  � �� �� "   	 ���� HoverOn .��W� $
 00:00:00.1000000D�$ BackgroundOver��$ Opacity�$ 1X�W� $
 00:00:00.1000000D�$ BackgroundOver_Highlight��$ Opacity�$
 0.65X��� HoverOff .��W� $
 00:00:00.4000000D�$ BackgroundOver��$ Opacity�$ 0X�W� $
 00:00:00.4000000D�$ BackgroundOver_Highlight��$ Opacity�$ 0X�.R�� .+��� $ BackgroundNorm��#��z��$ 5��#��z��#��z���� $ BackgroundNorm_highlight��$��1q�#���  $��1,0,1,1q�$ 5��$
 0.65Q��� $ BackgroundOver��#��z��$ 5��$ 0Q�#���  #���  �� $ BackgroundOver_Highlight��$��1q�$��1,0,1,1q�$ 5��$ 0Q�#��� 	 �  .  .  �� ��  �� $
��Auto ��� $
��Auto �.+��� $��3q�$��60��$��UniformToFill=�$��2������ *PersonImage+�� $��Center=�$
��Bold"�
���   �$��1��$��0��$��3q�$	��120������ *Name+�� $ Center=�$��Italic$�$��14(�$��Center=�$��Center=�
�������$��1��$��1��$��3q����� *
Profession+ P�  �@J�IsMouseOver .  �� $ HoverOff_BeginStoryboard��8��  �� 8�� ��  �@ IsDragEnabled .  ��  �@ UpdateEdgesOnMove .  P�  �@ Highlighted . . ���  � ��
 � �����  � ��$ 7q��� "  .���  � �� �� "  .R�� .+�F� $ PART_edgePath��8��  $��2��$��1��$��1��# z F� $ PART_edgeArrowPath��8�� $��2��$��1��$��1����  � ��$ 1����  � ��$ 1����  � ��
 �  ����  � ��
 �������  �@J�Opacity$ 1Q���  �@ IsHighlightEnabled .   P�  �@ Highlighted . . ���  � ��
 � �����  �@ StrokeThickness$ 5Q�P�  �@ Highlighted .  . ���  � ��
 �������  �@ StrokeThickness$ 2Q�