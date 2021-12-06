using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace Clasificador_Colores
{
    public partial class Form1 : Form
    {
       
        int cB, cG, cR,count;
        String m1="", m2="", m3="";
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-2O58G6O\\SQLEXPRESS;Initial Catalog=NameTexture;User ID=usuario324;Password=123456");
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            openFileDialog1.ShowDialog();
            Bitmap bmp = new Bitmap(openFileDialog1.FileName);
            pictureBox1.Image = bmp;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Bitmap bmp = new Bitmap(pictureBox1.Image);
            Color c = new Color();
            c = bmp.GetPixel(10, 10);
            textBox1.Text = c.R.ToString();
            textBox2.Text = c.G.ToString();
            textBox3.Text = c.B.ToString();
 
        }

        private void pictureBox1_MouseClick(object sender, MouseEventArgs e)
        {

            Bitmap bmp = new Bitmap(pictureBox1.Image);
            Color c = new Color();
            c = bmp.GetPixel(e.X, e.Y);
            textBox1.Text = c.R.ToString();
            textBox2.Text = c.G.ToString();
            textBox3.Text = c.B.ToString();
            cR = c.R;
            cG = c.G;
            cB = c.B;
            Color myColor = Color.FromArgb(255,cR,cG,cB);
            String mycolor=myColor.R.ToString("X2") + myColor.G.ToString("X2") + myColor.B.ToString("X2");
            String namecolor = ColorMapper.GetName("0x" + mycolor);
            textBox4.Text = namecolor; 
            textBox5.Text="0x"+mycolor;
            count++;
            if (m1 == "")
            {
                m1 = namecolor;
                textBox6.BackColor = myColor;
            }
            else {
                if (m2 == "")
                {
                    m2 = namecolor;
                    textBox7.BackColor = myColor;
                }
                else {
                    m3 = namecolor;
                    textBox8.BackColor = myColor;
                }
            }

            if(count>3){
                SaveTexture();              
            }
        }
        public void restart() {
            pictureBox1.Image = null;
            SaveTexture();
            count = 0;
            m1 = m2 = m3 = "";
            textBox6.BackColor=Color.FromArgb(255,0,0,0);
            textBox7.BackColor=Color.FromArgb(255,0,0,0);
            textBox8.BackColor = Color.FromArgb(255,0,0,0);
            
        }
     
        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        public void SaveTexture()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO session (color1, color2, color3,name) VALUES ('" + m1 + "','" + m2 + "','" + m3 + "','" + DateTime.Now.ToString("dddd, dd MMMM yyyy HH:mm:ss") + "');", con);
            int i=cmd.ExecuteNonQuery();
            if (i!=0)
            {
                MessageBox.Show("Saved");
                con.Close();
            }
            else {
                MessageBox.Show("error");
                con.Close();
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }




    }
}
