   M S B A M L   `   `   `  ����E  ADora Music, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MusicAppWPFMusicAppWPF  5   	       MusicAppWPF.AddSongPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MusicAppWPF     5   	     � Title$!  Добавить песню��5   	   $	��450��6    $	��800��6-   .��5	      �    
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
   $!��Добавить песню��6     Text#��[ 6*   $��24(�6H   $��1��6V   $��Center=�6f   $��Center=�6�   �� 5   
   $��1��6   $��1��6"   $��	10,0,10,0q�62   .+�5      �� $��Название��6   #��[ 6(   $��16(�6F   $��0,0,0,5q�6T   �� 5      -   5        $
��name��5   ;     inputEffect#��[ 6   $��25��6G     TextBoxTemp#��[ 6S   $��0,0,0,10q�6{   �� 5      $��
Автор��6   #��[ 6%   $��16(�6C   $��0,0,0,5q�6Q   �� 5      -   5        $��author��5   ;   #��[ 6   $��25��6I   #��[ 6U   $��0,0,0,10q�6}   �� 5      -   5        $ addSong��5        btn#��[ 6<   $��Добавить файл��6Y   $��25��6q   $��0,0,0,15q�6}   �� 5      -   5        $ submit��5      #��[ 6:   $!��Добавить песню��6W   $��25��6p   5      5      5      