   M S B A M L   `   `   `  ����J  FShowcaseApp.WPF, Version=2.1.7.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ShowcaseApp.WPFShowcaseApp.WPF  5      Z VGraphX.WPF.Controls, Version=2.1.7.0, Culture=neutral, PublicKeyToken=bab23663f80c9e76N:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.ControlsGraphX.Controls 5      '    !ShowcaseApp.WPF.Pages.EditorGraph   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -wpfclr-namespace:ShowcaseApp.WPF     5      Ocontrols:clr-namespace:GraphX.Controls;assembly=GraphX.WPF.Controls     5      .��5
      �   � 	Resources  5   
    �� MergedDictionaries �� Source�� 5       5      �� 5      $+ %/Templates/EditorGraphXTemplates.xaml?�6)   %    5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� CornerRadius$ 2��6      ButtonBorder#���   6"     ButtonBackground#���  6O   $��2q�6   $��1q�6�   ._�5      �� $��1q�6   $
��Wrap=�6#    �� TextAlignment$ Center=�67   $2��,Create vertices and connect them with edges!��6N   5      �� 5   
   $��1��6   $��0��6   #���   6/   $��1q�6\   $��2q�6q   ._�5       !  GraphX.Controls.ZoomControl  -   5          Name$ zoomCtrl��5    #   
������ $��Center=�6N   $��Center=�6p   .��5!      &    ShowcaseApp.WPF.GraphAreaExample  -   5          Name$ 	graphArea��5!   '   5"      5#      ]� 5&   
   ��.  $��1��6*   $��0��6:   $��2��6G   $��3q�6X   .+�5'      �� $	��Top=�6   	 �� Orientation$	 
Horizontal=�6.   .+�5(      d� $��25��6   $��25��6*   .��5)      F� 
 �� Stretch$
 Uniform=�6   ���	#FF000000O����@����ѐEl'tѤr�����gta�8��lΙ� Q%���@��Ї,�@����6?   5*      d� 5+      $��25��6   $��25��6*   .��5,      F� $
 Uniform=�6   ���	#FF000000������:|�MѤ��|�M����E�4���E�2�����4��0P�Ѭ<R8�Ӭ<R8�Ԙ� |�M�:|�M�X�+���������C����l't��Z�����X�+����8�h�=�Զ1��Ә�I���0P�0P�0P�0P�Ѩ1�2�������+8�h�=8�h�=��x�l't�$����kP@�@�����5�  ��� ��bXi� ��Z�H	���x�l't6>   5-      d� 5.      $��25��6   $��25��6*   .��5/      F� $
 Uniform=�6   ���	#FF000000O����@����ѐEl'tѤr�����gta�8��lΙ� Q%���@��Ї,�@����6?   50      51      �� 52      $��Vertices��6   $��3q�6)   $	��Top=�64   .��53      �� $	 
Horizontal=�6   $��Center=�66   .+�54      �� -   5        $��addVertexButton��54   D   $��3q�6    � ToolTip$ Add random vertex��6(   $��50��6[   #���   6g   .��55      F� $��36.6666��6   $��36.6667��6/   $

 Fill=�6@     
ButtonText#���  6O   �����\����C�2���C�2����D�[���D�[��2���2��}�\���}�\������!����!���\�����\����C���C��!��d���!���<R�o�X���LU���4��`��4��x��4��D��쮷~�������ɓ@@�4Y�N����#$0P��4�0P��;��d��TI����0P���x��Tn5��ĉE���@�e ���@�e@�e��Z�@�e��Z��E�l't�E�'t�x���Z��x���Z��4��Z���+�=,Ԛ�m@@��+�u�V@@fC��l����ɓ@@���~����D�����x�����`���U���(;�X������<R<F���!��C��!���!@�e���!�E�4���E�4��@�e���!@�e6s   56      �� 57      -   5        $��addEdgeButton��57   K   $��3q�6   $ Remove selected vertices��6(   $��50��6`   #���   6l   .��58      F� $��36.6666��6   $��36.6667��6/   $

 Fill=�6@   #���  6O   �������^�;Gр��;Gр�����@o@����@�( 6n�@�(@o@рu@o@рu�����;G������^ u���^�;G���7��Oр�7@x}�@�e@x}�@�e��Oр�7��O���!�2
���!��7р�O��7р�O�2
���!�2
6s   59      5:      5;      5<      5=      5>      