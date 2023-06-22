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
using System.Reflection;
using System.IO;
using Microsoft.Win32;

namespace MusicAppWPF
{
    /// <summary>
    /// Логика взаимодействия для AddSongPage.xaml
    /// </summary>
    public partial class AddSongPage : Window
    {
        public string file = "";
        public string fileName = "";
        public AddSongPage()
        {
            InitializeComponent();
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            AdminPage page = new AdminPage();
            page.Show();
            this.Close();
        }

        private void addSong_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog opDig = new OpenFileDialog();
            opDig.Filter = "MP3 files (*.mp3)|*.mp3";
            Nullable<bool> result = opDig.ShowDialog();
            if(result == true)
            {
                this.file = opDig.FileName;
                this.fileName = file.Replace(file.Substring(0, file.LastIndexOf(@"\")) + @"\", "");
            }
        }

        private void submit_Click(object sender, RoutedEventArgs e)
        {
            if(name.Text != "" && author.Text != "" && this.file != "")
            {
                var location = System.Reflection.Assembly.GetExecutingAssembly().Location;
                string path = System.IO.Path.GetDirectoryName(Convert.ToString(location)).Replace(@"\bin\Debug", "") + @"\MusicAssets\File\" + this.fileName;
                if (!File.Exists(path))
                {
                    File.Copy(this.file, path);

                    using (var context = new semyonMusicEntities())
                    {
                        int id = (from u in context.music select u.id).Max() + 1;
                        music music = new music()
                        {
                            id = id,
                            name = name.Text,
                            author = author.Text,
                            path = this.fileName,
                        };

                        context.music.Add(music);
                        context.SaveChanges();

                        MessageBox.Show("Песня успешно добавлена!");
                        name.Text = "";
                        author.Text = "";
                        this.file = "";
                        this.fileName = "";
                    }
                } else
                {
                    MessageBox.Show("Песня с таким названием файла уже существует!");
                }

            } else
            {
                MessageBox.Show("Вы ввели не все данные, либо не прикрпили файл");
            }

        }
    }
}
