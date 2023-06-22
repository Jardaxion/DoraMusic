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
using WMPLib;

namespace MusicAppWPF
{
    /// <summary>
    /// Логика взаимодействия для AllMusicPage.xaml
    /// </summary>
    public partial class AllMusicPage : Window
    {
        WindowsMediaPlayer wmp = new WindowsMediaPlayer();
        public class Typing 
        { 
            public string author { get; set; }
            public string name { get; set; }
            public string file { get; set; }
        }
        public AllMusicPage()
        {
            InitializeComponent();
            using (var context = new semyonMusicEntities())
            {
                List<Typing> songsList = new List<Typing>();
                var songs = from m in context.music
                            select new Typing()
                            {
                                author = m.author,
                                name = m.name,
                                file = m.path,
                            };
                foreach(var song in songs)
                {
                    songsList.Add(new Typing()
                    {
                        author = song.author,
                        name = song.name,
                        file = song.file
                    });
                }
                songsWPF.ItemsSource = songsList;
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            ProfilePage prof = new ProfilePage();
            prof.Show();
            this.Close();
        }

        private void play_Click(object sender, RoutedEventArgs e)
        {
            string fileName = Convert.ToString(((Button)sender).Tag);
            var location = System.Reflection.Assembly.GetExecutingAssembly().Location;
            string path = System.IO.Path.GetDirectoryName(Convert.ToString(location)).Replace(@"\bin\Debug", "") + @"\MusicAssets\File\" + fileName;
            
            wmp.URL = path;

            wmp.controls.stop();
            wmp.controls.play();
        }

        private void pause_Click(object sender, RoutedEventArgs e)
        {
            wmp.controls.pause();
        }
    }
}
