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
    /// Логика взаимодействия для ProfilePage.xaml
    /// </summary>
    public partial class ProfilePage : Window
    {
        public ProfilePage()
        {
            InitializeComponent();
            Hello.Text = "Добро пожаловать, ";
            Hello.Text += User.login;
        }

        private void logout_Click(object sender, RoutedEventArgs e)
        {
            User.login = "";
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }

        private void allMusic_Click(object sender, RoutedEventArgs e)
        {
            AllMusicPage allMusicPage = new AllMusicPage();
            allMusicPage.Show();
            this.Close();
        }

        private void setting_Click(object sender, RoutedEventArgs e)
        {
            SettingsPage set = new SettingsPage();
            set.Show();
            this.Close();
        }
    }
}
