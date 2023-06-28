using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryIt2
{
    //this is the WindIntensity TryIt page
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            string noData = "-5";
            //calling service from server
            string url = @"http://webstrar34.fulton.asu.edu/page8/Service1.svc/WindIntensity?latitude=" + latEntry.Text + "&longitude=" + lonEntry.Text;

            try
            {
                //requesting and receive
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                WebResponse response = request.GetResponse();
                Stream dataStream = response.GetResponseStream();
                StreamReader sreader = new StreamReader(dataStream);
                string responseReader = sreader.ReadToEnd();
                response.Close();

                //checking if api get response vs null response
                if (responseReader.Equals(noData))
                {
                    //null response
                    outputLabel.Text = "The web API does not have any data at this given location";
                }
                else
                {
                    outputLabel.Text = "The Average Wind Speed at Latitude:" + latEntry.Text + " and Longitude:" + lonEntry.Text + " is " + responseReader + "MPH";
                }
            }
            //something went wrong
            catch
            {
                outputLabel.Text = "No data was found for the given location";
                
            }
        }
    }
}