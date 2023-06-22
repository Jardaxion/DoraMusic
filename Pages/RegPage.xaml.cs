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
    /// Логика взаимодействия для RegPage.xaml
    /// </summary>
    public partial class RegPage : Window
    {
        public RegPage()
        {
            InitializeComponent();
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            if (login.Text != "" && password.Password != "")
            {
                semyonMusicEntities context = new semyonMusicEntities();
                bool valid = true;
                using (context)
                {
                    var usersArray = context.users;
                    foreach (users user in usersArray)
                    {
                        if (user.login == login.Text)
                        {
                            valid = false;
                            break;
                        }
                    }

                    if (valid)
                    {
                        users user = new users();

                        user.login = login.Text;
                        user.password = password.Password;
                        user.type = typeUser.SelectedIndex + 1;
                        context.users.Add(user);
                        context.SaveChanges();

                        MessageBox.Show("Вы успешно зарегистрировались!");

                        Window1 loginPage = new Window1();
                        loginPage.Show();
                        this.Close();
                    }
                    else
                    {
                        MessageBox.Show("Деибл, логин занят!!!");
                    }
                }
            }
            else
            {
                MessageBox.Show("Вы заполнили не все данные");
            }

        }
        private void Back_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = new MainWindow();
            main.Show();
            this.Close();
        }
    }
}
