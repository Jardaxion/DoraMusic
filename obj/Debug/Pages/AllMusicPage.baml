   M S B A M L   `   `   `  ����E  ADora Music, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MusicAppWPFMusicAppWPF  5   	       MusicAppWPF.AllMusicPage   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MusicAppWPF     5   	     � Title$  Вся музыка��5   	   $	��450��6   $	��800��6)   .��5	      �    
background#��[  6    � ColumnDefinitions 5
   
   �� 5      $
��124* �6   �� 5      $
��561* �6   �� 5      $
��115* �6    � RowDefinitions 5   
   �� 5      $	��17* �6   �� 5      $
��200* �6   .+�5   
   �� -   5         ��Name$
 back��5   $   $��Вернуться��62     transperetButton#��[ 6F   �� 5   
   $��Вся музыка��6     Text#��[ 6&   $��24(�6D   $��1��6R   $��Center=�6b   $��Center=�6}   �� 5   
   $��1��6   $��1��6$   .��5      �� -   5         ��Name$ songsWPF��5      ��5      �� 5      .R�5      � $��50��6   $	��Top=�6+   $��0,0,0,15q�6C   
������� 5      �� 5   "   $	��32* �63   �� 5   "   $	��32* �63   �� 5   "   $
��285* �63   .+�5      �� $
 play��6%   -   5        #��[ 5   F   
 � Tag 6p   �� *file+.��5    "   �� $��../Images/play.png��6(   $��40��6D   $��34��6P   5!      �� 5"      $ pause��65   -   5        $��1��5"   %   #��[ 6X    6�   �� *file+.��5#   "   �� $��../Images/pause.png��6(   $��40��6E   $��34��6Q   5$      �� 5%      $��2��6)   .+�5&   "   �� #��[ 6B   $��20(�6`   $��0,0,0,3q�6n   ��6,   �� *name+6n   �� 5'   "   #��[ 6D   $��16(�6b   ��6,   �� *author+6b   5(      5)      5*      5,      5-      5.      5/      