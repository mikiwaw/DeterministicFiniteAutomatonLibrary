   M S B A M L   `   `   `  ���� Z  VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76N:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.ControlsGraphX.Controls  J FShowcaseApp.WPF, Version=2.1.7.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ShowcaseApp.WPFShowcaseApp.WPF H DAccordion, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=nullT8clr-namespace:System.Windows.Controls;assembly=AccordionSystem.Windows.Controls (   "ShowcaseApp.WPF.Pages.GeneralGraph   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     Ocontrols:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.Controls     -wpfclr-namespace:ShowcaseApp.WPF     Hacc8clr-namespace:System.Windows.Controls;assembly=Accordion     .���   � ColumnDefinitions  �� $��* ��� $
��Auto � � RowDefinitions �� $�� Auto ��� $��* � � 	Resources  �� MergedDictionaries �� Source��  �� $% /Templates/GeneralTemplate.xaml?�%    .+���  �� CornerRadius$ 2��   ButtonBorder#���     ButtonBackground#���  $��2q�$��1q�._��� $��1q�$
��Wrap=� �� TextAlignment$ Center=�$b��\Along with the main algorithms showcase this example shows how to save/load and export data.���� $��1��$��0��#���   $��1q�$��2q�._�!   GraphX.Controls.ZoomControl  -     Name$ gg_zoomctrl��#���    
ButtonText#���  .��&   ShowcaseApp.WPF.GraphAreaExample  -     Name$ gg_Area���� -   $��	gg_loader��$y�	Collapsed=�$ 4��#���   $��1q�$��Center=�$��Center=�#���  $��1��$��0��._��� $��Center=�$��Async loading graph...��$��10q�]� $��1��$��0��$��2��.+��� 	 �� Orientation$	 
Horizontal=�$	��Top=�$��Center=�.+��� -   $��gg_but_randomgraph��$��50��$��3q�$	��Top=�
 � UseLayoutRounding
 .   ModernButtonBorder#���  .���� $��/Assets/dice.png��$��UniformToFill=��� -   $��gg_but_relayout��$��50��$��3q�$	��Top=�
 . #���  .��F� $��34.8333��$��41.1667�� �� Stretch$
 Fill=�#���  �������C�:�����:����Z�0n�����	��M�<R�|�M���0P���р�C��р�����������yȢ���CȢ����Ȣ�4���`;���+��(;��+��]G�8�p4��:��C�:���C8�����8�̟�0��<o�D�[�$�LD�[�$M@r��v�|�M��C|�M�0��|�M��|�-4���<��4���}ф:Tn5ф:l't��Z�l'tр�C���Ƽ���������8+8���C8��� $	��Top=�$ Center=�$��SETTINGS��$
��Bold"��� .��'  !System.Windows.Controls.Accordion  $	��Top=�$��Stretch=�@�+  %System.Windows.Controls.AccordionItem  $��
Algorithms��.��]� ��.  .+��� $��Common settings��$	��Top=�$
��Bold"�$��Center=�]� $	��Top=�.+��� $��Vertex count��$
��Left=�$ Center=�$��Center=��� -   $��gg_vertexCount��$��3q��� -   $��gg_async��$��3q�$��Use async computation��$	��Top=��� $��Layout��$	��Top=�$��Center=�$
��Bold"��� -   $��
gg_layalgo�� �� 
IsReadOnly . $��3q�$	��Top=��� -	   $��gg_useExternalLayAlgo��$	��Top=�$��3q�$��Use external algorithm���� $��Overlap removal��$	��Top=�$��Center=�$
��Bold"��� -
   $��	gg_oralgo�� . $��3q�$	��Top=��� -   $��gg_useExternalORAlgo��$	��Top=�$��3q�$��Use external algorithm���� $��Edge routing��$	��Top=�$��Center=�$
��Bold"��� -   $��	gg_eralgo�� . $��3q�$	��Top=��� -   $��gg_useExternalERAlgo��$	��Top=�$��3q�$��Use external algorithm��  $��Layout serialization��.��]� ��.  .+��� $��Export to file��$	��Top=�$��Center=�]� $	��Top=�.+��� -   $��gg_saveLayout��$��3q�$
��Left=�$��80��$
��SAVE���� -   $��gg_loadLayout��$��3q�$��Right=�$��80��$
��LOAD���� $��State management��$	��Top=�$��Center=�]� $	��Top=�.+��� -   $��gg_saveState��$��3q�$
��Left=�$��80��$
��SAVE���� -   $��gg_loadState��$��3q�$��Right=�$��80��$
��LOAD��  $��Imaging and printing��.��]� ��.  .+��� -   $��3q�$	��Top=�$��Save as PNG image���� -   $��3q�$	��Top=�$��Print layout��