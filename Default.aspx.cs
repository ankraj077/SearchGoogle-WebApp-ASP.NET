using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        labelinfo.Visible = false;

        string[] searchList = new string[10];
        searchList[0] = "News";
        searchList[1] = "Sports";
        searchList[2] = "Weather";
        searchList[3] = "Movies";
        searchList[4] = "Music";
        searchList[5] = "Politics";
        searchList[6] = "Finance";
        searchList[7] = "Tech";
        searchList[8] = "Shopping";
        searchList[9] = "Tech";

        Repeater1ID.DataSource = searchList;
        Repeater1ID.DataBind();
    }



    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        string searchData = searchText.Text;

        if (searchData.Trim() == "")
        {
            labelinfo.Visible = true;
            labelinfo.ForeColor = System.Drawing.Color.Red;
            labelinfo.Text = "No input Data.";
        }
        else
        {
            System.Web.HttpContext.Current.Response.Redirect("https://www.google.ca/search?site=&source=hp&q=" + searchData);
        }
    }
}