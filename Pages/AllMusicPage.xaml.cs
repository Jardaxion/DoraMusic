using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace MusicAppWPF
{
    /// <summary>
    /// Логика взаимодействия для AllMusicPage.xaml
    /// </summary>
    public partial class AllMusicPage : Window
    {
        public AllMusicPage()
        {
            InitializeComponent();
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            ProfilePage prof = new ProfilePage();
            prof.Show();
            this.Close();
        }
    }
}
