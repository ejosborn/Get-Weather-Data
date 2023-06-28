using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryIt3
{
    //this is the TryIt page for WordFilter
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            //calling service from server
            string url = @"http://webstrar34.fulton.asu.edu/page8/Service1.svc/WordFilter?input=" + stringEntry.Text;

            //request and receive
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            WebResponse response = request.GetResponse();
            Stream dataStream = response.GetResponseStream();
            StreamReader sreader = new StreamReader(dataStream);
            string responseReader = sreader.ReadToEnd();
            response.Close();

            //outputting response
            filteredOutput.Text = responseReader;
        }
    }
}