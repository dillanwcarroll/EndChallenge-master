using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Threading.Tasks;


namespace WebApplication
{
    public class DebugTreatmentsException : Exception
    {

        public DebugTreatmentsException(string id) : base("TreatmentsException: " + id)
        { }
    }

    public class FatalTreatmentsException : Exception
    {

        public FatalTreatmentsException(string id) : base("TreatmentsException: " + id)
        { }
    }
}
