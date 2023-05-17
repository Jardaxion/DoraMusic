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
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
        }

        private void auth_Click(object sender, RoutedEventArgs e)
        {
            if(login.Text != "" && password.Password != "")
            {
                semyonMusicEntities context = new semyonMusicEntities();
                bool valid = false;
                using (context)
                {
                    var usersArray = context.users;
                    foreach(users user in usersArray)
                    {
                        if(user.login == login.Text && user.password == password.Password)
                        {
                            valid = true;

                            User.login = user.login;
                            User.id = user.id;
                        }
                    }

                    if (valid)
                    {
                        ProfilePage profile = new ProfilePage();
                        profile.Show();
                        this.Close();
                    } else
                    {
                        MessageBox.Show("Логин или пароль введены не верно");
                    }
                }
            } else
            {
                MessageBox.Show("Вы не заполнили данные!");
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }
    }
}
