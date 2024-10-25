using System;
using System.Collections.Generic;
using System.Linq;
using System.Globalization;
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
using Word = Microsoft.Office.Interop.Word;

namespace Bank
{
    /// <summary>
    /// Логика взаимодействия для login.xaml
    /// </summary>
    public partial class login : Window
    {
        public BankEntities db = new BankEntities();
        Itog New;
        private double roundedNumber;
        private double Fullst;
        private int percent;
        private string st;
        private double days;
        private double nach;
        private double summ;

        public login(double roundedNumber, double Fullst, int percent, string st, double days, double nach, double summ)
        {
            InitializeComponent();
            this.roundedNumber = roundedNumber;
            this.Fullst = Fullst;
            this.percent = percent;
            this.st = st;
            this.days = days;
            this.nach = nach;
            this.summ = summ;
            New = new Itog(st, roundedNumber, Fullst, percent, summ, days, nach);
        }

        private void Button1_Click(object sender, RoutedEventArgs e)
        {
            double log = Convert.ToDouble(textBox7.Text);
            User_ user = db.User_.Where(x => x.Login == log && x.Password == textBox8.Text).FirstOrDefault();
            Passport_ NowPasp = db.Passport_.Where(x => x.Number_Series == user.Number_Series).FirstOrDefault();
            string SeriaNum = NowPasp.Number_Series.ToString();
            char[] symb = SeriaNum.ToCharArray();
            string Seria = "";
            string Number = "";
            for (int i = 0; i < symb.Length; i++)
            {
                if (i >= 4)
                    Seria += symb[i].ToString();
                else
                    Number += symb[i].ToString();
            }
            if (user != null)
            {
                BankAccount_ ba = db.BankAccount_.OrderByDescending(b => b.NumberAccount).FirstOrDefault();

                int id = 0;
                if (New.Name == "Стабильный")
                    id = 1;
                else if (New.Name == "Оптимальный")
                    id = 2;
                else if (New.Name == "Стандарт")
                    id = 3;

                BankAccount_ NewBa = new BankAccount_
                {
                    NumberAccount = ba.NumberAccount + 1,
                    DateOpen = DateTime.Today,
                    Balance = New.Dep,
                    Type = id
                };
                DateTime dt = DateTime.Today;
                Contract_ con = new Contract_
                {
                    NumberAccount = NewBa.NumberAccount,
                    IDUser = user.IDUser,
                    Amount = New.Dep,
                    Period = Convert.ToInt32(New.Period * 30),
                    ExpirationDate = dt.AddDays(New.Period),
                    Percet = New.Procent
                };
                db.BankAccount_.Add(NewBa);
                db.Contract_.Add(con);
                db.SaveChanges();

                string monthName = CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(DateTime.Now.Month);

                var WordApp = new Word.Application();
                WordApp.Visible = false;
                var Worddoc = WordApp.Documents.Open(Environment.CurrentDirectory + @"\otchet.docx");
                Repwo("{Номер договора}", NewBa.NumberAccount.ToString(), Worddoc);
                Repwo("{День}", DateTime.Now.Day.ToString(), Worddoc);
                Repwo("{Месяц}", monthName, Worddoc);
                Repwo("{Год}", DateTime.Now.Year.ToString(), Worddoc);
                Repwo("{ФИО}", user.Surname + " " + user.Name + " " + user.Patronymic, Worddoc);
                Repwo("{Сумма вклада}", New.Dep.ToString(), Worddoc);
                Repwo("{Срок вклада}", (New.Period * 30).ToString(), Worddoc);
                Repwo("{Дата окончания}", con.ExpirationDate.ToString(), Worddoc);
                Repwo("{Процентная ставка}", New.Procent.ToString(), Worddoc);
                Repwo("{Номер счета}", NewBa.NumberAccount.ToString(), Worddoc);
                Repwo("{ФИО}", user.Surname + " " + user.Name + " " + user.Patronymic, Worddoc);
                Repwo("{Адрес регистрации}", NowPasp.Adress, Worddoc);
                Repwo("{Адрес электронной почты}", user.E_Mail.ToString(), Worddoc);
                Repwo("{Серия}", Seria, Worddoc);
                Repwo("{Номер}", Number, Worddoc);
                Repwo("{Кем выдан}", NowPasp.Issued, Worddoc);
                Repwo("{Дата рождения}", NowPasp.DateOfBirth.ToString(), Worddoc);
                Repwo("{Место рождения}", NowPasp.PlaceOfBirth, Worddoc);
                Worddoc.SaveAs2(Environment.CurrentDirectory + $@"\Договор №{NewBa.NumberAccount}.docx");

                MessageBox.Show("Вся информация успешно сохранена!");
            }
            else
                MessageBox.Show("Такого пользователя не существует");
        }
        private void Repwo(string subToReplace, string text, Word.Document worddoc)
        {
            var range = worddoc.Content;
            range.Find.ClearFormatting();
            range.Find.Execute(FindText: subToReplace, ReplaceWith: text);
        }
    }
}
