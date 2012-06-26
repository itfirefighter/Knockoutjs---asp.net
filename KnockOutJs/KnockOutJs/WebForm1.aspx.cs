using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
namespace KnockOutJs
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load( object sender, EventArgs e )
		{
			grid.DataSource = new int[]{1};
			grid.DataBind();
		}
	}
}