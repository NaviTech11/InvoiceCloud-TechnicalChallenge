using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Task1
{
    public class Invoice
    {

        public string BillNumber;
        public string BillType;
        public string BillName;
        public string Address1;
        public string Address2;
        public string City;
        public string State;
        public string ZipCode;
        public string Town;
        public string PropType;
        public string PropertyId;
        public string BillInfo;
        public string AltParcel;
        public string Billed;
        public string Adjustments;
        public string AbateExempt;
        public string PmtsCredits;
        public string InterestPaid;
        public string InterestDue;
        public string DueNow;

    }
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Invoice invoiceData = new Invoice();

            string folderPath = @"C:\Users\Ivan Hernandez\Desktop\TextFiles\";
            string fileName = "InvoiceData.txt";
            string fullPath = Path.Combine(folderPath, fileName);
            StreamReader sr = new StreamReader(fullPath);

            var headers = sr.ReadLine().ToString();
            var firstLine = sr.ReadLine().ToString();
            sr.Close();

            var values = firstLine.Split(',');

            //Properties  

            invoiceData.BillNumber = values[0];
            invoiceData.BillType = values[1];
            invoiceData.BillName = values[2];
            invoiceData.Address1 = values[3];
            invoiceData.Address2 = values[4];
            invoiceData.City = values[5];
            invoiceData.State = values[6];
            invoiceData.ZipCode = values[7];
            invoiceData.Town = values[8];
            invoiceData.PropType = values[9];
            invoiceData.PropertyId = values[10];
            invoiceData.BillInfo = values[11];
            invoiceData.AltParcel = values[12];
            invoiceData.Billed = values[13];
            invoiceData.Adjustments = values[14];
            invoiceData.AbateExempt = values[15];
            invoiceData.PmtsCredits = values[16];
            invoiceData.InterestPaid = values[17];
            invoiceData.InterestDue = values[18];
            invoiceData.DueNow = values[19];

            string accountNumber = invoiceData.BillNumber + invoiceData.PropType + invoiceData.BillNumber;




            //Labels 
            lblAccountNumber.Text = accountNumber;
            lblAccountNumber2.Text = accountNumber;
            lblBillName.Text = invoiceData.BillName;
            lblAddress1.Text = invoiceData.Address1;
            lblCity.Text = invoiceData.City;
            lblState.Text = invoiceData.State;
            lblZipCode.Text = invoiceData.ZipCode;
            lblBilled.Text = invoiceData.Billed;
            lblDueNow.Text = invoiceData.DueNow;

        }
    }
}
