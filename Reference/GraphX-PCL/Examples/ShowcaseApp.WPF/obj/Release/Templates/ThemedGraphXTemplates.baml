   M S B A M L   `   `   `  ���� Z  VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76<1clr-namespace:GraphX;assembly=GraphX.WPF.ControlsGraphX  R<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.ControlsGraphX.Converters  J FShowcaseApp.WPF, Version=2.1.7.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ShowcaseApp.WPFShowcaseApp.WPF R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891   +ShowcaseApp.WPF.ValueToPersonImageConverter   ValueToImage  NormalBrush  �� EndPoint �� 
StartPoint � Color � Offset  NormalBorderBrush  NormalHighlightBrush �� Color  MouseOverBrush  MouseOverBorderBrush  MouseOverHighlightBrush   GraphX.VertexControl �� 
TargetType �� Property �� Value �� 
TargetType	 � 	Resources  Key
 g� Duration �� 
TargetName �� TargetProperty	 W� To ��Name �� CornerRadius J� Opacity � RowDefinitions � ColumnDefinitions �� 	Converter �� TextAlignment �� Triggers P� Property P� Value N� ExitActions ��Name  HoverOff N� EnterActions 	 HoverOn � UseLayoutRounding �� Orientation   GraphX.DragBehaviour �� Triggers   GraphX.HighlightBehaviour1   +GraphX.Converters.VisibilityToBoolConverter   Inverted
   Not 
 BooleanToVisibility   GraphX.EdgeControl  F�Name! � ToolTip�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     HpoAhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/options  9gxl1clr-namespace:GraphX;assembly=GraphX.WPF.Controls  Econv<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.Controls  %wpfclr-namespace:ShowcaseApp.WPF  %  &	        &	      &	 �     &	 5    &	 J    &	 (    &	 �    '  �    7  7  7   7  7 	 7  &	
 &    '  9    7     �� $  0.5,1&�$ 0.5,0&�.��� $ 	#FFFFFFFF��$ 0Q�� $ 	#FFA4ADBB��$ 0.521Q�� $ 	#FFD7E0EA��$ 0.194Q�� $ 	#FFBAC1CF��$ 0.811Q�� $ 	#FFBCC5D5��$ 0.507Q�� $ 	#FFE3E4E6��$ 1Q��� $  0.5,0&�$ 0.5,1&�.��� $ 	#FF8B8B8B��� $ 	#FFADADAD��$ 1Q��� $ 	#FFFFFFFF���� $  0.5,1&�$ 0.5,0&�.��� $ 	#FFFFFFFF��$ 0Q�� $ 	#FFFEF3B5��$ 0.318Q�� $ 	#FFFFEB70��$ 0.488Q�� $ 	#FFFFD02E��$ 0.502Q�� $ 	#FFFFD932��$ 0.834Q�� $ 	#FFFFF48B��$ 1Q��� $  0.5,1&�$ 0.5,0&�.��� $ 	#FFEEE8CF��$ 0Q�� $ 	#FFC4AF8C��$ 0.536Q�� $ 	#FFDCD1BF��$ 1Q��� $  0.5,1&�$ 0.5,0&�.��� $ 	#FFFFFFFB��$ 0Q�� $ 	#FFFEF3B5��$ 1Q��� "  .���  � ��8   ��  � ��$ 	10,5,10,5q���  � ��8  ��  � ��$ 3q���  � �� �� "  	 ���� HoverOn .��W� $
 00:00:00.1000000D�$ BackgroundOver��$ Opacity�$ 1X�W� $
 00:00:00.1000000D�$ BackgroundOver_Highlight��$ Opacity�$
 0.65X��� HoverOff .��W� $
 00:00:00.4000000D�$ BackgroundOver��$ Opacity�$ 0X�W� $
 00:00:00.4000000D�$ BackgroundOver_Highlight��$ Opacity�$ 0X�.R�� .+��� $ BackgroundNorm��#��z��$ 5��#��z��#��z���� $ BackgroundNorm_highlight��$��1q�#���  $��1,0,1,1q�$ 5��$
 0.65Q��� $ BackgroundOver��#��z��$ 5��$ 0Q�#���  #���  �� $ BackgroundOver_Highlight��$��1q�$��1,0,1,1q�$ 5��$ 0Q�#���  �  �� ��  �� $
��Auto ��� $
��Auto �.+��� $��3q�$��60��$��UniformToFill=�$��2������ *	ImageId+8  �� $��Center=�$
��Bold"�
���   �$��1��$��0��$��3q�$	��120������ *Name+�� $ Center=�$��Italic$�$��14(�$��Center=�$��Center=�
�������$��1��$��1��$��3q����� *
Profession+ P�  �@J�IsMouseOver .  �� $ HoverOff_BeginStoryboard��8��  �� 8�� ��  �@�ToolTip �� 
���   �$��2q�$ 8��8��  . ._��� $ Vertical=�.+��� $��Additional person info:��$��4q�$��Center=�$��Center=�$��14(�$
��Bold"��� $ 
Horizontal=�$��3q�.+��� $��70��$��Name: ��$��Center=��� $
��Bold"�$��3q�$��Center=����� *Name+�� $ 
Horizontal=�$��3q�.+��� $��70��$��Occupation: ��$��Center=��� $
��Bold"�$��3q�$��Center=����� *
Profession+�� $ 
Horizontal=�$��3q�.+��� $��70��$��Age: ��$��Center=��� $
��Bold"�$��3q�$��Center=����� *Age+�� $ 
Horizontal=�$��3q�.+��� $��70��$��Gender: ��$��Center=��� $
��Bold"�$��3q�$��Center=����� *Gender+��  �@ IsDragEnabled .  ��  �@ UpdateEdgesOnMove .  P�  �@ Highlighted . . ���  � ��
 � �����  � ��$ 7q�   .  . �� "  .���  � �� �� "  .R�� .+�F� $  PART_edgePath��#��z��$��2��$��1��$��1��#! z! F� $  PART_edgeArrowPath��#��z��$��2��$��1��$��1����  � ��$ 1����  � ��$ 1����  � ��
 �  ����  � ��
 �   ���  �@J�Opacity$ 1Q���  �@�ToolTip �� 
���   �$��2q�$ 2��8��   . ._��� $ Vertical=�$��2q�.+��� $
��Bold"�$��Solid link: ��$��3q��� $
��Bold"�
������$��3q����� *ToolTipText+ P�  �@ Highlighted . . ���  � ��
 � �����  �@ StrokeThickness$ 5Q�