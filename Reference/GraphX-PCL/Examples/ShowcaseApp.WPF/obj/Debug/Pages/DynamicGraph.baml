   M S B A M L   `   `   `  ����J  FShowcaseApp.WPF, Version=2.1.7.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ShowcaseApp.WPFShowcaseApp.WPF  5      Z VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76N:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.ControlsGraphX.Controls 5      (    "ShowcaseApp.WPF.Pages.DynamicGraph   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -wpfclr-namespace:ShowcaseApp.WPF     5      Ocontrols:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.Controls     5      .��5
      �   � 	Resources  5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $, &/Templates/DynamicGraphXTemplates.xaml?�6)   %    5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� CornerRadius$ 2��6      ButtonBorder#���   6"     ButtonBackground#���  6O   $��2q�6   $��1q�6�   ._�5      �� $��1q�6   $
��Wrap=�6#    �� TextAlignment$ Center=�67   $����You can drag vertices, select them with Ctrl+Click and/or drag them together, delete vertices using context menu, drag new vertex from DRAG ME! area. Also try Ctrl+Alt+Click for multiple vertices selection area!��6N   5      �� 5   
   $��1��6   $��0��6   #���   6/   $��1q�6\   $��2q�6q   ._�5       !  GraphX.Controls.ZoomControl  -   5          Name$ dg_zoomctrl��5    #   
������ $��Center=�6Q   $��Center=�6s   .��5!      &    ShowcaseApp.WPF.GraphAreaExample  -   5          Name$ dg_Area��5!   '   5"      5#      ]� 5&   
   ��.  $��1��6*   $��0��6:   $��2��6G   $��3q�6X   .+�5'      �� $��Vertices��6   $��3q�6)   $	��Top=�64   .��5(      �� 	 �� Orientation$	 
Horizontal=�6   $��Center=�66   .+�5)      �� -   5        $��dg_addvertex��5)   D   $��3q�6   
 � ToolTip$
 Add random vertex��6(   $��50��6X   #���   6d   .��5*      F� $��36.6666��6   $��36.6667��6/    �� Stretch$
 Fill=�6@     
ButtonText#���  6O   �����\����C�2���C�2����D�[���D�[��2���2��}�\���}�\������!����!���\�����\����C���C��!��d���!���<R�o�X���LU���4��`��4��x��4��D��쮷~�������ɓ@@�4Y�N����#$0P��4�0P��;��d��TI����0P���x��Tn5��ĉE���@�e ���@�e@�e��Z�@�e��Z��E�l't�E�'t�x���Z��x���Z��4��Z���+�=,Ԛ�m@@��+�u�V@@fC��l����ɓ@@���~����D�����x�����`���U���(;�X������<R<F���!��C��!���!@�e���!�E�4���E�4��@�e���!@�e6s   5+      �� 5,      -   5        $��dg_remvertex��5,   K   $��3q�6   $
 Remove selected vertices��6(   $��50��6_   #���   6k   .��5-      F� $��36.6666��6   $��36.6667��6/   $
 Fill=�6@   #���  6O   �����Ԙ� D���$�$�x���Cz���Ѽ���x���D���@��$-��܎�Ѽ��,ϵ��Cz`d`�$�$,ϵ�Ԙ� ܎��G$-�Ԙ� D�����C��!��d���!���<R�o�X���LU���4��`��4��x��4��D��쮷~�������ɓ@@�4Y�N����#$0P��4�0P��;��d��TI����0P���x��Tn5��ĉE���@�e ���@�e@�e��q@�e����$-��@3D���l�������Z��;���Z��4��镲9@@�#$�Q�Nl����ɓ@@���~����D�����x�����`���U���(;�X������<R<F���!��C��!�4���x�Ӑy�x���ԣ�H[�T����z@H���e4 ��4���x�6s   5.      5/      50      �� 51      $��Edges��6   $��3q�6&   $	��Top=�61   .��52      �� $	 
Horizontal=�6   $��Center=�66   .+�53      �� -   5        $��
dg_addedge��53   Q   $��3q�6   $$
 Add an edge to random vertices��6(   $��50��6c   #���   6o   .��54      F� $��36.6666��6   $��36.6667��6/   $
 Fill=�6@   #���  6O   �������^�;Gр��;Gр�����@o@����@�( 6n�@�(@o@рu@o@рu�����;G������^ u���^�;G���7��Oр�7@x}�@�e@x}�@�e��Oр�7��O���!�2
���!��7р�O��7р�O�2
���!�2
6s   55      �� 56      -   5        $��
dg_remedge��56   I   $��3q�6   $
 Remove last added edge��6(   $��50��6[   #���   6g   .��57      F� $��36.6666��6   $��36.6667��6/   $
 Fill=�6@   #���  6O   |��������<R��C�Z��@��=R��m5�����O���C��m5��Ѥ���n5��C0P������n5�H<R�����Z���CѬ<R\�������<R6s   58      59      5:      �� 5;      $	��Top=�6   $ Center=�6-   $��Commands��6D   $
��Bold"�6T   �� 5<      -   5        $��dg_test��5<   9   $
��Test��6   $	��Top=�6$   $y�	Collapsed=�6H   �� 5=      -   5        $��dg_findrandom��5=   R   $��3q�6   $��Find random vertex��6    $	��Top=�6=   $��25��6g   6s   �� 5>      -	   5        $��
dg_butdraw��5>   f   $y�	Collapsed=�6   $��3q�6,   $��25��67   $��Enter edge drawing mode!��6C   $	��Top=�6�   �� 5@      $	��Top=�6   $ Center=�6-   $��	Darg Area��6D   $
��Bold"�6U   �� 5A      -
   5        $��dg_dragsource��5A   �   $��80��6   $��80��6    #���   6,   $ 3��6Y   $��2q�6j   $	��Top=�6~   $��8q�6�   $E
 ?Drag and drop this button onto the graph field to create vertex��5B      ._�5C      �� $	 Vertical=�6   $��Center=�65   $��Center=�6P   .+�5D      �� $
��DRAG��6    $��23(�6,   $��Center=�6:   �� 5E      $	��ME!��6    $��23(�6+   $��Center=�69   5F      5G      5H      5I      5J      