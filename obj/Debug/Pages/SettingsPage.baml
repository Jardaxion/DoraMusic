   M S B A M L   `   `   `  ����E  ADora Music, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MusicAppWPFMusicAppWPF  5   	       MusicAppWPF.SettingsPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MusicAppWPF     5   	     � Title$  Настройки��5   	   $	��450��6   $	��800��6(   .��5	      �    
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
   $��Настройки��6     Text#��[ 6%   $��24(�6C   $��1��6Q   $��Center=�6a   $��Center=�6|   $��27��6�   $	��118��6�   �� 5   
   $��1��6   $��1��6"   $��	10,0,10,0q�62   .+�5      �� $!��Изменить логин��6   #��[ 6.   $��16(�6L   $��0,0,0,5q�6Z   �� 5      -   5        $��login��5   ;     inputEffect#��[ 6   $��25��6H     TextBoxTemp#��[ 6T   $��0,0,0,10q�6|   �� 5      $K��EИзменить пароль(Введите новый пароль)��6   #��[ 6E   $��16(�6c   $��0,0,0,5q�6q   G� 5      -   5        $��newPassword��5   >     
passEffect#��[ 6   $��25��6Q     PassBoxTemp#��[ 6]   $��0,0,0,15q�6�   �� 5      -   5        $ submit��5        btn#��[ 6:   $'��!Принять изменения��6W   $��25��6s   5      5      5      