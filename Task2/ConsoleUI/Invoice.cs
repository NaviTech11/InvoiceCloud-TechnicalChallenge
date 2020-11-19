using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleUI
{
    public class Invoice
    {
        public string BillNumber { get; set; }
        public string BillType { get; set; }
        public string BillName { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public string Town { get; set; }
        public string PropType { get; set; }
        public string PropertyId { get; set; }
        public string BillInfo { get; set; }
        public string AltParcel { get; set; }
        public string Billed { get; set; }
        public string Adjustments { get; set; }
        public string AbateExempt { get; set; }
        public string PmtsCredits { get; set; }
        public string InterestPaid { get; set; }
        public string InterestDue { get; set; }
        public string DueNow { get; set; }
    }
}
