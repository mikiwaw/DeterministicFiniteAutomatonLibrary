   M S B A M L   `   `   `  ����J  FShowcaseApp.WPF, Version=2.1.7.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ShowcaseApp.WPFShowcaseApp.WPF  5      Z VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76<1clr-namespace:GraphX;assembly=GraphX.WPF.ControlsGraphX 5      R<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.ControlsGraphX.Converters 5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089+    %ShowcaseApp.WPF.ValueToImageConverter   ValueToImage  GraphX.VertexControl  �� 
TargetType �� Property �� Value �� 
TargetType �� 	Converter  GraphX.VertexLabelControl  Name   LabelPositionSide �� RelativeSource  GraphX.DragBehaviour  GraphX.HighlightBehaviour �� Triggers	 P� Property
 P� Value  GraphX.EdgeControl F�Name � ToolTip�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      'localclr-namespace:ShowcaseApp.WPF  5      HpoAhttp://schemas.microsoft.com/winfx/2006/xaml/presentation/options  5      9gxl1clr-namespace:GraphX;assembly=GraphX.WPF.Controls  5      Econv<clr-namespace:GraphX.Converters;assembly=GraphX.WPF.Controls  5      %a  &	        '       7   '  �       5
      6"   �� 5      "   6   .�5   
   ��  � ��
 ���� 6'   �� 5   
    �@ VertexShape$ Circle=�6(   �� 5   
    �@ 	ShowLabel . 6&   �� 5   
    � �� 5      �� 5      "  6"   .R�5      � .+�5      �� $��1q�6d   $��80��6o   $��UniformToFill=�6z   ��6    �� *	ImageId+8   6z     5      $ PART_vertexLabel��61   $ Bottom=�6�   ��6K   �� *Vertex.Text+ �� *TemplatedParent+6�   5      5      5      �� 5    
    �@ IsDragEnabled . 5!      �� 5"   
    �@ UpdateEdgesOnMove . 5#      �� 5%   
    �@ IsHighlightEnabled .  6F    5'   
   P� 5(      	 �@ Highlighted
 . . �5)      ��  � ��
 � ���6/   �� 5*       � ��$ 7q�64   5+      P� 5,      	 �@ Highlighted
 .  . �5-      ��  � �� �	#FFE3E3E36/   �� 5.       � ��$ 5q�64   5/      51      �� 54      "   6   .�55   
   ��  � �� 56      �� 57      "  6"   .R�58      � .+�59      F� $ PART_edgePath��5<      #��z��59      $��3��5:      $��1��6/   $��1��6<   # z 5;      5<      F� 5=      $ PART_edgeArrowPath��5?      #��z��5=      $��2��5>      $��1��6/   $��1��6<   5?      5@      5A      5C      �� 5E   
    � ��$ 1��5F      �� 5G   
    � ��$ 1��5H      �� 5I   
    � ��
 ��·�5J      �� 5K   
    �@J�Opacity$ 1Q�5L      �� 5N   
    �@ IsHighlightEnabled .  6F    5Q   
   P� 5R      	 �@ Highlighted
 . . �5S      ��  � ��
 � ���6/   �� 5T       �@ StrokeThickness$ 5Q�64   5U      P� 5V      	 �@ Highlighted
 .  . �5W      ��  � ��
 �����6/   �� 5X       �@ StrokeThickness$ 2Q�64   5Y      5[      5]      