   M S B A M L   `   `   `  ����E  ADora Music, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MusicAppWPFMusicAppWPF  5   	        MusicAppWPF.RemoveSongPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MusicAppWPF     5   	     � Title$  RemoveSongPage��5   	   $	��450��6    $	��800��6-   .��5	      �    
background#��[  6    � ColumnDefinitions 5
   
   �� 5      $
��145* �6   �� 5      $
��502* �6   �� 5      $
��153* �6    � RowDefinitions 5   
   �� 5      $	��57* �6   �� 5      $
��377* �6   .+�5   
   �� -   5         ��Name$
 back��5   $   $��Вернуться��62     transperetButton#��[ 6F   �� 5   
   $��Удалить песню��6     Text#��[ 6)   $��24(�6G   $��1��6U   $��Center=�6e   $��Center=�6�   �� 5   
   $��1��6   $��1��6"   .+�5      �� -   5         ��Name$ songComboBox��5      
�������
�������
���   �$��0,0,0,10q�6f    �� SelectedIndex$ 0��6x   5      �� 5      -   5        $ delete��5      $��Удалить��6;     btn#��[ 6M   $��25��6j   5      5      5      