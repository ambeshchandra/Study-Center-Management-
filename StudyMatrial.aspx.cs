using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudyMatrial : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    ClsCS con = new ClsCS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcourse();
        }
    }
    protected void bindcourse()
    {
        try
        {
            string str = "select Id from CoureMaster where IsActive=1 ";
            DataTable dt1 = new DataTable();
            dt1 = con.getDataTable(str);
            if (dt1.Rows.Count > 0)
            {
                DataTable dtN = new DataTable();
                dtN.Columns.AddRange(new DataColumn[4] {
                    new DataColumn("CoureNm", typeof(string)),
                    new DataColumn("CourseId", typeof(string)),
                    new DataColumn("TotalP",typeof(int)),
                    new DataColumn("TotalV", typeof(int))});
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                DataTable dt2 = new DataTable();
                DataTable dt3 = new DataTable();


                for (int i = 0; i < dt1.Rows.Count; i++)
                {

                    dt2 = con.getDataTable(@"select isnull(count(A.Id),0)  'TotalP',CM.CoureNm,CM.Id
                                from StudyMatriallPdf A
                                inner join CoureMaster CM on A.CourseId = CM.Id
                                where A.isActive = 1 and CM.IsActive = 1 and CM.Id='" + dt1.Rows[i][0].ToString() + "' group by CM.CoureNm,CM.Id");
                    dt3 = con.getDataTable(@"select isnull(count(A.Id),0)  'TotalV',CM.CoureNm,CM.Id
                                from StudyMatriallVideo A
                                inner join CoureMaster CM on A.CourseId = CM.Id
                                where A.isActive = 1 and CM.IsActive = 1 and CM.Id='" + dt1.Rows[i][0].ToString() + "' group by CM.CoureNm,CM.Id");
                    if (dt2.Rows.Count<=0 && dt3.Rows.Count<=0)
                    { }
                    else
                    {
                        DataRow dr;
                        dr = dtN.NewRow();
                        if (dt2.Rows.Count > 0)
                        {
                            dr["TotalP"] = dt2.Rows[0][0].ToString();
                            dr["CoureNm"] = dt2.Rows[0][1].ToString();

                            dr["CourseId"] = dt2.Rows[0][2].ToString();
                        }
                        else
                        { dr["TotalP"] = "0"; }

                        if (dt3.Rows.Count > 0)
                        {
                            dr["TotalV"] = dt3.Rows[0][0].ToString();
                            dr["CoureNm"] = dt3.Rows[0][1].ToString();

                            dr["CourseId"] = dt3.Rows[0][2].ToString();
                        }

                        else
                        { dr["TotalV"] = "0"; }
                        dtN.Rows.Add(dr);
                    }
                }
                if (dtN.Rows.Count > 0)
                {
                    DlCourse.DataSource = dtN;
                    DlCourse.DataBind();
                }
                else
                {
                    DlCourse.DataSource = null;
                    DlCourse.DataBind();
                }
            }
        }
        catch (Exception ex)
        { }
    }
}