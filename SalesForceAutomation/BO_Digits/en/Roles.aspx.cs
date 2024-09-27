﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalesForceAutomation.BO_Digits.en
{
    public partial class Roles : System.Web.UI.Page
    {
        GeneralFunctions ObjclsFrms = new GeneralFunctions();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }
        public void ListData()
        {
            DataTable lstRole = default(DataTable);
            lstRole = ObjclsFrms.loadList("SelectRole", "sp_Masters");
            if (lstRole.Rows.Count > 0)
            {
                grvRpt.DataSource = lstRole;
            }
        }

        internal static void CreateRole(string text)
        {
            throw new NotImplementedException();
        }

        protected void lnkAddRole_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddRole.aspx");
        }

        protected void grvRpt_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            ListData();
        }

        internal static IEnumerable<object> GetAllRoles()
        {
            throw new NotImplementedException();
        }
    }
}