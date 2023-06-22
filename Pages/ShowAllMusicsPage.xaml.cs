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
    /// Логика взаимодействия для ShowAllMusicsPage.xaml
    /// </summary>
    public partial class ShowAllMusicsPage : Window
    {
        public ShowAllMusicsPage()
        {
            InitializeComponent();
            using(var context = new semyonMusicEntities())
            {
                List<Typing> ListMusic = new List<Typing>();
                var musics = from m in context.music
                             select new Typing()
                             {
                                 id = m.id,
                                 path = m.path,
                                 name = m.name,
                                 author = m.author
                             };
                foreach(var song in musics)
                {
                    ListMusic.Add(new Typing() { 
                        id = song.id,
                        path = song.path,
                        name = song.name,
                        author = song.author
                    });
                }
                songsGrid.ItemsSource = ListMusic;
            }
        }

        public class Typing 
        { 
            public int id { get; set; }
            public string path { get; set; }
            public string name { get; set; }
            public string author { get; set; }
        }


        private void back_Click(object sender, RoutedEventArgs e)
        {
            AdminPage page = new AdminPage();
            page.Show();
            this.Close();
        }
    }
}
