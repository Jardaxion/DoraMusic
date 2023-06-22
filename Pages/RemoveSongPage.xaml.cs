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
using System.IO;

namespace MusicAppWPF
{
    /// <summary>
    /// Логика взаимодействия для RemoveSongPage.xaml
    /// </summary>
    public partial class RemoveSongPage : Window
    {
        public RemoveSongPage()
        {
            InitializeComponent();
            fillCombo();
        }

        private void fillCombo()
        {
            using (var context = new semyonMusicEntities())
            {
                var songs = context.music.ToList();
                songComboBox.ItemsSource = songs;
                songComboBox.DisplayMemberPath = "name";
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            AdminPage page = new AdminPage();
            page.Show();
            this.Close();
        }

        private void delete_Click(object sender, RoutedEventArgs e)
        {
            using (var context = new semyonMusicEntities())
            {
                var music = context.music.Single((m) => m.name == songComboBox.Text);

                var location = System.Reflection.Assembly.GetExecutingAssembly().Location;
                string path = System.IO.Path.GetDirectoryName(Convert.ToString(location)).Replace(@"\bin\Debug", "") + @"\MusicAssets\File\" + music.path;
                File.Delete(path);

                context.music.Remove(music);
                context.SaveChanges();

                MessageBox.Show("Песня удалена!");

                fillCombo();
            }
        }
    }
}
