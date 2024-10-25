using iText.Kernel.Pdf;
using iText.Layout;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
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
using System.Xml.Linq;

namespace Bank
{
    /// <summary>
    /// Логика взаимодействия для Srav.xaml
    /// </summary>
    public partial class Srav : Window
    {
        List<Itog> it = new List<Itog>();
        double roundedNumber, Fullst, opt, Fullopt, resul, Fullstn, days, nach, summ;
        public Srav(double roundedNumber, double Fullst, double opt, double Fullopt, double resul, double Fullstn, double days, double nach, double summ)
        {
            InitializeComponent();
            this.roundedNumber = roundedNumber;
            this.resul = resul;
            this.opt = opt;
            this.Fullopt = Fullopt;
            this.Fullst = Fullst;
            this.Fullstn = Fullstn;
            this.days = days;
            this.nach = nach;
            this.summ = summ;
            lb2.Content = roundedNumber;
            lb3.Content = Fullst;
            lb6.Content = opt;
            lb7.Content = Math.Round(Fullopt);
            lb10.Content = resul;
            lb11.Content = Math.Round(Fullstn);
            Itog it1 = new Itog("Стабильный", roundedNumber, Fullst, 8, summ, days, nach);
            Itog it2 = new Itog("Оптимальный", opt, Fullopt, 5, summ, days, nach);
            Itog it3 = new Itog("Стандарт", resul, Fullstn, 6, summ, days, nach);
            it.Add(it1);
            it.Add(it2);
            it.Add(it3);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string pdfFilename = "Document.pdf";

                PdfWriter writer = new PdfWriter(pdfFilename);
                PdfDocument pdf = new PdfDocument(writer);
                Document document = new Document(pdf);
                iText.Layout.Element.Table table = new iText.Layout.Element.Table(4);
                foreach (Itog item in it)
                {
                    table.AddCell(item.Name);
                    table.AddCell(item.Dohod.ToString());
                    table.AddCell(item.FullSum.ToString());
                    table.AddCell(item.Procent.ToString());
                }
                table.AddHeaderCell("Название");
                table.AddHeaderCell("Доход");
                table.AddHeaderCell("Сумма к концу срока");
                table.AddHeaderCell("Ставка");

                document.Add(table);
                document.Close();

                MessageBox.Show("Файл создан.", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void bt1_Click(object sender, RoutedEventArgs e)
        {
            string st = "Стабильный";
            int percent = 8;
            login l = new login(roundedNumber, Fullst, percent, st, days, nach, summ);
            l.Show();
            this.Close();
        }

        private void bt2_Click(object sender, RoutedEventArgs e)
        {
            string st = "Оптимальный";
            int percent = 5;
            login lo = new login(opt, Fullopt, percent, st, days, nach, summ);
            lo.Show();
            this.Close();
        }

        private void bt3_Click(object sender, RoutedEventArgs e)
        {
            string st = "Стандартный";
            int percent = 6;
            login log = new login(resul, Fullstn, percent, st, days, nach, summ);
            log.Show();
            this.Close();
        }
    }
}
