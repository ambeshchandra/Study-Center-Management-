using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    ClsCS con = new ClsCS();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bindSilde();
            bindCourse();
        }
    }
    protected void bindSilde()
    {
        try
        {
            string s = "select 'Admin/'+[SlideImg] as 'SlideImg' from SlideImage where isActive=1 order by Sequince ";
            dt = con.getDataTable(s);
            if (dt.Rows.Count > 0)
            {
                dlimg.DataSource = dt;
                dlimg.DataBind();
            }
            else
            {
                dlimg.DataSource = null;
                dlimg.DataBind();
            }
        }
        catch (Exception ex)
        { ex.ToString(); }
    }

    protected void bindCourse()
    {
        try
        {
            string s = "select * from  CourseMasterWebsite  where IsActive=1 order by CreateDt desc  ";
            dt = con.getDataTable(s);
            if (dt.Rows.Count > 0)
            {
                lblcoursemaster.Text = "";
                int i = 0;
                for (i = 0; dt.Rows.Count > i; i++)
                {
                    //string str = "select top 3 * from SubCourseWebsite where CourseId='79B57F5C-C303-4CE1-8FDA-DE997C38F55A' and IsActive=1 order by SubCourse ";
                    //DataTable dtsub = con.getDataTable(str);
                    //if(dtsub.Rows.Count>0)
                    //{

                    //}
                    lblcoursemaster.Text += @" <div class='col-sm-2 col-md-2'>
                            <div class='flip-card'>
                                <div class='flip-card-inner'>
                                    <div class='flip-card-front'>
                                        <div class='bgcolor1'>
                                            <h1 class='bgflip'>" + dt.Rows[i]["CourseNm"].ToString() + "</h1>" +
                                        @"</div>

                                    </div>
                                    <div class='flip-card-back'>
                                      <br/><br/> 
                                        <a href='#'>Ream More...</a>
                                    </div>
                                </div>
                            </div>
                        </div>";
                }
               
               

            }
            else
            {
                lblcoursemaster.Text = "Currently No Course Available !, It will be Soon..............";

            }
        }
        catch (Exception ex)
        { ex.ToString(); }
    }
}