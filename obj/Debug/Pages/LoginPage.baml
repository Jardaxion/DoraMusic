   M S B A M L   `   `   `  ����E  ADora Music, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MusicAppWPFMusicAppWPF  5   	       MusicAppWPF.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MusicAppWPF     5   	     � Title$  Вход��5   	   $	��450��6   $	��800��6#   .��5	      �    
background#��[  6    � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   ��  	 Title#��[ 6   $��Вход��63   $��1��6?   $��0,0,0,15q�6O   $��Center=�6a   $��Bottom=�6~   �� 5   
   $��1��6   $��1��6"   $��10, 0, 10, 0q�62   .+�5      �� -   5         ��Name$ login��5      $��
Логин��6%     inputEffect#��[ 62     TextBoxTemp#��[ 6W   $��0,0,0,10q�6   G� 5      -   5         G�Name$ password��5        
passEffect#��[ 6,     PassBoxTemp#��[ 6P   $��0,0,0,10q�6x   �� 5      -   5         ��Name$
 auth��5      $��
Войти��6#     btn#��[ 63   $��25��6c   $��0,0,0,10q�6o   �� 5      -   5        $
 back��5      $��
Назад��6#   #��[ 63   $��25��6c   5      �� 5   
   $��/Images/melody.png��6   $��2��6,   $��2��6<   $��103,36,-103,-36q�6I    J� RenderTransformOrigin$ 0.5,0.5&�6b   z�5      V� 5      .~�5      �� �� 5      �� 5        �� Angle$ -18.629Q�6&   T� 5!      5"      5$      5%      5&      