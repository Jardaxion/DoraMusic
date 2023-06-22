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
    /// Логика взаимодействия для SettingsPage.xaml
    /// </summary>
    public partial class SettingsPage : Window
    {
        public SettingsPage()
        {
            InitializeComponent();
            login.Text = User.login;
        }
        private void back_Click(object sender, RoutedEventArgs e)
        {
            ProfilePage prof = new ProfilePage();
            prof.Show();
            this.Close();
        }

        private void submit_Click(object sender, RoutedEventArgs e)
        {
            using (var context = new semyonMusicEntities())
            {
                bool valid = true;
                var user = context.users.Single((u) => u.id == User.id);

                if(user.login.TrimEnd() != login.Text)
                {
                    var users = context.users;
                    foreach(users u in users)
                    {
                        if(u.login == login.Text)
                        {
                            valid = false;
                        }
                    }
                }

                if (valid)
                {
                    user.login = login.Text;

                    if(newPassword.Password != "")
                    {
                        user.password = newPassword.Password;
                    }

                    context.SaveChanges();

                    MessageBox.Show("Данные были успешно изменены");

                    ProfilePage prof = new ProfilePage();
                    prof.Show();
                    this.Close();
                } else
                {
                    MessageBox.Show("Такой логин уже есть!");
                }
            }
        }
    }
}
