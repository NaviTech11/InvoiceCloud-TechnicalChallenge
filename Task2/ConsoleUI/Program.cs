using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    class Program
    {
        static void Main(string[] args)
        {
            string folderPath = @"C:\Users\Ivan Hernandez\Desktop\TextFiles\";
            
            string inputFileName = "InvoiceData.txt";
            string outputFileName = "InvoiceOutputSpec.txt";
            
            string inputFullPath = Path.Combine(folderPath, inputFileName);
            string outputFullPath = Path.Combine(folderPath, outputFileName);

            List<Invoice> invoices = new List<Invoice>();

            List<string> lines = File.ReadAllLines(inputFullPath).ToList();
            foreach(var line in lines)
            {
                string[] entries = line.Split(',');

                Invoice newInvoice = new Invoice();

                int i = 0;
                    foreach(var prop in newInvoice.GetType().GetProperties())
                    {
                        if (i <entries.Count() && !String.IsNullOrEmpty(entries[i]))
                        {
                            prop.SetValue(newInvoice,entries[i]);
                            i++;
                        }

                    }


                invoices.Add(newInvoice);
            }

            Console.WriteLine("Read from text file");

            var invoiceDate = DateTime.Now;
            
            foreach (var invoice in invoices)
            {
                Console.WriteLine($"{ invoice.BillNumber }{invoice.PropType}{invoice.PropertyId} | { invoice.BillName } | { invoice.Address1 } | { invoice.Address2 } | { invoice.City } | { invoice.State } | { invoice.ZipCode } | { invoice.DueNow } | {invoiceDate}");
            }

            List<string> output = new List<string>();
            foreach (var invoice in invoices)
            {
                output.Add($"{ invoice.BillNumber }{invoice.PropType}{invoice.PropertyId} | { invoice.BillName } | { invoice.Address1 } | { invoice.Address2 } | { invoice.City } | { invoice.State } | { invoice.ZipCode } | { invoice.DueNow } | {invoiceDate}");
            }

            Console.WriteLine("Writing to text File");

            File.WriteAllLines(outputFullPath, output);
            Console.WriteLine("All entries written");

            Console.ReadLine();
        }
    }
}
