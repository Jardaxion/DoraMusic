   M S B A M L   `   `   `  ����E  ADora Music, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MusicAppWPFMusicAppWPF  5   	   #    MusicAppWPF.ShowAllMusicsPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MusicAppWPF     5   	     � Title$  ShowAllMusicsPage��5   	   $	��450��6#   $	��800��60   .��5	      �    
background#��[  6    � ColumnDefinitions 5
   
   �� 5      $
��145* �6   �� 5      $
��502* �6   �� 5      $
��153* �6    � RowDefinitions 5   
   �� 5      $	��57* �6   �� 5      $
��377* �6   .+�5   
   �� -   5         ��Name$
 back��5   %   $��Вернуться��63     transperetButton#��[ 6G   �� 5   
   $��Вся музыка��6     Text#��[ 6&   $��24(�6D   $��1��6R   $��Center=�6b   $��Center=�6}   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	songsGrid��5      $��1��6&   $��1��63   $��0,0,0,23q�6C      AutoGenerateColumns .  ��6U   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��5      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5      �� *id+	 �� Mode$	 TwoWay=�  5      $ 
Автор��5       5      �� *author+$	 TwoWay=�  5      $! Название песни��5        5!      �� *name+$	 TwoWay=�  5#      $! Название файла��5$       5%      �� *path+$	 TwoWay=�5(      5)      5*      