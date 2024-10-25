using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Bank
{
    /// <summary>
    /// Логика взаимодействия для Calcul.xaml
    /// </summary>
    public partial class Calcul : Window
    {
        //List<Itog> vkladList = new List<Itog>();
        double summa, srok, pop, dok, opt=0, roundedNumber, resul, Fullst, Fullopt, Fullstn, days, nach, summ, zn;
        public Calcul()
        {
            InitializeComponent();
            txt1.IsEnabled = false;
            txt2.IsEnabled = false;
            txt3.IsEnabled = false;
            text1.IsEnabled = false;
            text2.IsEnabled = false;
            text3.IsEnabled = false;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Srav sr = new Srav(roundedNumber, Fullst, opt, Fullopt, resul, Fullstn, days, nach, summ);
            sr.Show();
            this.Hide();
        }

        private void inSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            summa = Convert.ToDouble(te1.Text);
            srok = Convert.ToDouble(te2.Text);
            pop = Convert.ToDouble(te3.Text);
            stab();
            days = inSlider.Value;
        }

        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            summa = Convert.ToDouble(te1.Text);
            srok = Convert.ToDouble(te2.Text);
            pop = Convert.ToDouble(te3.Text);
            stab();
            nach = Slider.Value;
        }

        private void incomeSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            summa = Convert.ToDouble(te1.Text);
            srok = Convert.ToDouble(te2.Text);
            pop = Convert.ToDouble(te3.Text);
            stab();
            summ = incomeSlider.Value;
        }
        private void stab()
        {
            double na = incomeSlider.Value;
            double sr = inSlider.Value;
            double po = Slider.Value;
            if (srok >= 3)
            {
                double stab = (summa * 0.08 * (srok*30)) / (365 * 1);
                roundedNumber = Math.Round(stab);
                Fullst = summa + roundedNumber;
                txt1.Text = roundedNumber.ToString() + "  Руб.";
            }

            if (srok >= 6)
            {
                double summe = 0;
                double schet = 0;
                double ib = 0;
                summe = ((na * 0.05) / 365) * 30;
                for(int i = 1; i <= sr; i++)
                {
                    schet += summe;
                    summe = (((na + ib + po + schet) * 0.05) / 365) * 30;
                    ib += po;
                }
                opt = schet;
                opt = Math.Round(opt);
                txt2.Text = opt.ToString() + "  Руб.";
                Fullopt = opt + na + (po * (sr - 1));
            }


            if (srok >= 3)
            {
                double stn = (summa + po) * 0.06 * ((sr * 30) / 365);
                resul = Math.Round(stn);
                Fullstn = summa + resul;
                txt3.Text = resul.ToString() + "  Руб.";
            }
        }
    }
}
