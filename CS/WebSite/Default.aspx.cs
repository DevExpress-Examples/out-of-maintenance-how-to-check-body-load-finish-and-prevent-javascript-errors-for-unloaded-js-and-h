using System;
using System.Data;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using DevExpress.Web;
using System.Text;
using System.Xml;


public partial class ASPxperience_DataView_ItemCommand : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        // Slow connection simulation
        if(!string.IsNullOrEmpty(Request.Params["dummy"])) { 
            System.Threading.Thread.Sleep(5000);
            Response.Clear();
            Response.ContentType = "text/javascript";
            Response.Write("");
            Response.End();
        }
    }
    protected void ASPxCallback1_Callback(object source, DevExpress.Web.CallbackEventArgs e) {
        e.Result = "Done!";
    }
}