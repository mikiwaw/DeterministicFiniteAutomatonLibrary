   M S B A M L   `   `   `  ���� J  FShowcaseApp.WPF, Version=2.1.7.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ShowcaseApp.WPFShowcaseApp.WPF  Z VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76N:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.ControlsGraphX.Controls (    "ShowcaseApp.WPF.Pages.DynamicGraph   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     -wpfclr-namespace:ShowcaseApp.WPF     Ocontrols:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.Controls     .���   � 	Resources   �� MergedDictionaries �� Source��  �� $, &/Templates/DynamicGraphXTemplates.xaml?�%     � ColumnDefinitions �� $��* ��� $
��Auto � � RowDefinitions �� $
��Auto ��� $��* �.+���  �� CornerRadius$ 2��   ButtonBorder#���     ButtonBackground#���  $��2q�$��1q�._��� $��1q�$
��Wrap=� �� TextAlignment$ Center=�$����You can drag vertices, select them with Ctrl+Click and/or drag them together, delete vertices using context menu, drag new vertex from DRAG ME! area. Also try Ctrl+Alt+Click for multiple vertices selection area!���� $��1��$��0��#���   $��1q�$��2q�._�!  GraphX.Controls.ZoomControl  -     Name$ dg_zoomctrl��
������ $��Center=�$��Center=�.��&    ShowcaseApp.WPF.GraphAreaExample  -     Name$ dg_Area��]� ��.  $��1��$��0��$��2��$��3q�.+��� $��Vertices��$��3q�$	��Top=�.���� 	 �� Orientation$	 
Horizontal=�$��Center=�.+��� -   $��dg_addvertex��$��3q�
 � ToolTip$
 Add random vertex��$��50��#���   .��F� $��36.6666��$��36.6667�� �� Stretch$
 Fill=�  
ButtonText#���  �����\����C�2���C�2����D�[���D�[��2���2��}�\���}�\������!����!���\�����\����C���C��!��d���!���<R�o�X���LU���4��`��4��x��4��D��쮷~�������ɓ@@�4Y�N����#$0P��4�0P��;��d��TI����0P���x��Tn5��ĉE���@�e ���@�e@�e��Z�@�e��Z��E�l't�E�'t�x���Z��x���Z��4��Z���+�=,Ԛ�m@@��+�u�V@@fC��l����ɓ@@���~����D�����x�����`���U���(;�X������<R<F���!��C��!���!@�e���!�E�4���E�4��@�e���!@�e�� -   $��dg_remvertex��$��3q�$
 Remove selected vertices��$��50��#���   .��F� $��36.6666��$��36.6667��$
 Fill=�#���  �����Ԙ� D���$�$�x���Cz���Ѽ���x���D���@��$-��܎�Ѽ��,ϵ��Cz`d`�$�$,ϵ�Ԙ� ܎��G$-�Ԙ� D�����C��!��d���!���<R�o�X���LU���4��`��4��x��4��D��쮷~�������ɓ@@�4Y�N����#$0P��4�0P��;��d��TI����0P���x��Tn5��ĉE���@�e ���@�e@�e��q@�e����$-��@3D���l�������Z��;���Z��4��镲9@@�#$�Q�Nl����ɓ@@���~����D�����x�����`���U���(;�X������<R<F���!��C��!�4���x�Ӑy�x���ԣ�H[�T����z@H���e4 ��4���x��� $��Edges��$��3q�$	��Top=�.���� $	 
Horizontal=�$��Center=�.+��� -   $��
dg_addedge��$��3q�$$
 Add an edge to random vertices��$��50��#���   .��F� $��36.6666��$��36.6667��$
 Fill=�#���  �������^�;Gр��;Gр�����@o@����@�( 6n�@�(@o@рu@o@рu�����;G������^ u���^�;G���7��Oр�7@x}�@�e@x}�@�e��Oр�7��O���!�2
���!��7р�O��7р�O�2
���!�2
�� -   $��
dg_remedge��$��3q�$
 Remove last added edge��$��50��#���   .��F� $��36.6666��$��36.6667��$
 Fill=�#���  |��������<R��C�Z��@��=R��m5�����O���C��m5��Ѥ���n5��C0P������n5�H<R�����Z���CѬ<R\�������<R�� $	��Top=�$ Center=�$��Commands��$
��Bold"��� -   $��dg_test��$
��Test��$	��Top=�$y�	Collapsed=��� -   $��dg_findrandom��$��3q�$��Find random vertex��$	��Top=�$��25���� -	   $��
dg_butdraw��$y�	Collapsed=�$��3q�$��25��$��Enter edge drawing mode!��$	��Top=��� $	��Top=�$ Center=�$��	Darg Area��$
��Bold"��� -
   $��dg_dragsource��$��80��$��80��#���   $ 3��$��2q�$	��Top=�$��8q�$E
 ?Drag and drop this button onto the graph field to create vertex��._��� $	 Vertical=�$��Center=�$��Center=�.+��� $
��DRAG��$��23(�$��Center=��� $	��ME!��$��23(�$��Center=�