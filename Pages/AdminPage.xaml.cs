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
    /// Логика взаимодействия для AdminPage.xaml
    /// </summary>
    public partial class AdminPage : Window
    {
        public AdminPage()
        {
            InitializeComponent();
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            User.id = 0;
            User.login = "";
            MainWindow page = new MainWindow();
            page.Show();
            this.Close();
        }

        private void add_Click(object sender, RoutedEventArgs e)
        {
            AddSongPage page = new AddSongPage();
            page.Show();
            this.Close();
        }

        private void remove_Click(object sender, RoutedEventArgs e)
        {
            RemoveSongPage page = new RemoveSongPage();
            page.Show();
            this.Close();
        }

        private void showAll_Click(object sender, RoutedEventArgs e)
        {
            ShowAllMusicsPage page = new ShowAllMusicsPage();
            page.Show();
            this.Close();
        }
    }
}
