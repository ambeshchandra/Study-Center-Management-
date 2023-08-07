using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Registeration : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    ClsCS con = new ClsCS();
    int i = 0; string Pass = "";

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Session["UserName"] = "OnlineStudent";
             
                bindRollNo();
                bindCenter();
                bindcourse();
                bindState();

                ddl_diatric.Items.Insert(0, "--- Select District ---");
                ddl_diatric.Items[0].Value = "0";
                ddlduration.Items.Insert(0, "--- Select Course Duration ---");
                ddlduration.Items[0].Value = "0";
                btnSubmit.Visible = true;

                rfImage.Enabled = true;
            
        }

    }
    protected void bindRollNo()
    {
        txt_student_Rollno.Text = con.getDataTable("select '13213'+count(*)+1 as RegistrationNo from Add_Student").Rows[0]["RegistrationNo"].ToString();
        lblSrno.Text = "00" + con.getDataTable("select count(*)+1 as RegistrationNo from Add_Student").Rows[0]["RegistrationNo"].ToString();
    }
    protected void bindCenter()
    {
        try
        {
            DataTable dtnew = new DataTable();
            
                dt = con.getDataTable("select Id,centerNm from [Add_Center] where isactive=1 and DeleteStatus=0 order by OrderId ");
            
            if (dt.Rows.Count > 0)
            {
                ddlcenter.DataSource = dt;
                ddlcenter.DataTextField = "centerNm";
                ddlcenter.DataValueField = "Id";
                ddlcenter.DataBind();
                
            }
            else
            {
                ddlcenter.Items.Insert(0, "--- Select Center ---");
                ddlcenter.Items[0].Value = "0";
            }
        }
        catch (Exception ex)
        {
            ddlcenter.Items.Insert(0, "--- Select Center ---");
            ddlcenter.Items[0].Value = "0";
        }
    }
    protected void bindcourse()
    {
        try
        {
            dt = con.getDataTable("select Id,CoureNm from CoureMaster where IsActive=1 order by OrderId ");
            if (dt.Rows.Count > 0)
            {
                ddl_select_couse.DataSource = dt;
                ddl_select_couse.DataTextField = "CoureNm";
                ddl_select_couse.DataValueField = "Id";
                ddl_select_couse.DataBind();
                ddl_select_couse.Items.Insert(0, "--- Select Course ---");
                ddl_select_couse.Items[0].Value = "0";
            }
            else
            {
                ddl_select_couse.Items.Insert(0, "--- Select Course Type ---");
                ddl_select_couse.Items[0].Value = "0";
            }
        }
        catch (Exception ex)
        { }
    }
    protected void bindState()
    {
        dt = con.getDataTable("select  StateId,StateNM from StateMaster where IsActive=1");
        if (dt.Rows.Count > 0)
        {
            ddl_state.DataSource = dt;
            ddl_state.DataTextField = "StateNM";
            ddl_state.DataValueField = "StateId";
            ddl_state.DataBind();
            ddl_state.Items.Insert(0, "--- Select State ---");
            ddl_state.Items[0].Value = "0";
        }
        else
        {
            ddl_state.Items.Insert(0, "--- Select State ---");
            ddl_state.Items[0].Value = "0";
        }
    }
    protected void ddl_state_TextChanged(object sender, EventArgs e)
    {
        bindDistrict();
    }
    protected void bindDistrict()
    {
        dt = con.getDataTable("select DistrictId,DistrictNm  from [DistrictMaster] where StateId='" + ddl_state.SelectedValue.Trim() + "' and IsActive=1");

        ddl_diatric.DataSource = dt;
        ddl_diatric.DataTextField = "DistrictNm";
        ddl_diatric.DataValueField = "DistrictId";
        ddl_diatric.DataBind();
        ddl_diatric.Items.Insert(0, "--- Select District ---");
        ddl_diatric.Items[0].Value = "0";

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.OpenConnection();
        SqlTransaction Tran;
        Tran = con.Sqlconn.BeginTransaction(IsolationLevel.Serializable);
        con.SqlCmd.Transaction = Tran;
        try
        {
            bindUserDtl();
            bindRoll();
            MembershipUser mu = Membership.GetUser(txtStudentRegistrationNumber.Text);
            string userId = mu.ProviderUserKey.ToString();

            //string userId = System.Guid.NewGuid().ToString();

            rfImage.Enabled = true;
            string images = string.Empty;
            //DataTable dta = new DataTable();
            //string a = @"select 'Student Already Exist In '+ CM.CoureNm +' Course And ' +AC.CenterNm +' Center' 
            //            from Add_Student ADS 
            //            inner join Add_Center AC on ADS.CenterId=AC.Id
            //        inner join CoureMaster CM on ADS.CourseId=CM.Id
            //        where ADS.IsActive=1 and AC.IsActive=1 and CM.IsActive=1 and  
            //        ADS.[StudentNm]='" + txt_student_name.Text.Trim() + "' and " +
            //        " ADS.[DOB]='" + txtDOB.Text.Trim() + "' " +
            //        "and ADS.[AadharNo]='" + txtStudentAadharNo.Text.Trim() + "'";
            //dta = con.getDataTable(a);
            if (string.IsNullOrEmpty(Convert.ToString(Session["UserName"])))
            {
                Response.Redirect("~/default.aspx");
            }
            //else if (con.getDataTable("select len('" + txtStudentAadharNo.Text.Trim() + "')").Rows[0][0].ToString() != "12" || con.getDataTable("select len('" + txt_mobile.Text.Trim() + "')").Rows[0][0].ToString() != "10")
            //{ //lblmsg.Text = "Envalid Aadhar Number Or Mobile Number";
            //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Envalid Aadhar Number Or Mobile Number');", true);
            //}
            //else if (dta.Rows.Count > 0)
            //{
            //    string s = dta.Rows[0][0].ToString();
            //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('" + s + "');", true);
            //}


            else
            {
                if (FileUpload1.HasFile)
                {
                    string FileUploadURL = string.Empty;
                    FileUploadURL = "~/StudentImage/" + DateTime.Now.Year.ToString() + "/" + DateTime.Now.ToString("MMM") + "/" + DateTime.Today.ToString("dd-MMM-yyyy");
                    if (!System.IO.Directory.Exists(FileUploadURL))
                    {
                        //If Directory (Folder) does not exists. Create it.
                        System.IO.Directory.CreateDirectory(Server.MapPath(FileUploadURL));
                    }

                    string path = FileUploadURL + "/" + "IMG_" + Guid.NewGuid().ToString() + ".JPG";
                    FileUpload1.PostedFile.SaveAs(HttpContext.Current.Server.MapPath(path));  // + filename));
                    images = path;
                }
                string str = @"
                    INSERT INTO [dbo].[Add_Student]
                     (Id,[CenterId],[AdmissionDt],DOB
                     ,[RollNo],[RegistrationNo],[StudentNm]
                     ,[ParientsBy],[Quelification],[Gender]
                     ,[CourseId],[Duration],[CourseFee]
                     ,[Address],[City],[State]
                     ,[District],[MobileNo],[EmailId]
                     ,[AadharNo],[Image],[IsActive]
                     ,[VerifyStatus],[CreateBy],Ip,Password,CertificateNo)
     VALUES('" + userId.ToString().Trim() + "','" + ddlcenter.SelectedValue.Trim() + "','" + txtAdmissionDate.Text.Trim() + "','" + txtDOB.Text.Trim() + "' "
         + " ,'" + txt_student_Rollno.Text.Trim() + "','" + txtStudentRegistrationNumber.Text.Trim() + "','" + txt_student_name.Text.Trim().ToLower() + "' "
         + " ,'" + txt_father.Text.Trim().ToLower() + "','" + txt_education_qulification.Text.Trim().ToLower() + "','" + ddl_gender.SelectedValue + "' "
         + " , '" + ddl_select_couse.SelectedValue.Trim() + "','" + ddlduration.SelectedValue.Trim() + "','" + txtCourse_Fee.Text.Trim().ToLower() + "' "
         + " , '" + txt_address.Text.Trim().ToLower() + "','" + txt_city.Text.Trim().ToLower() + "','" + ddl_state.SelectedValue.Trim() + "' "
         + " , '" + ddl_diatric.SelectedValue.Trim() + "','" + txt_mobile.Text.Trim() + "','" + txtStudentEmailID.Text.Trim().ToLower() + "' "
         + " , '" + txtStudentAadharNo.Text.Trim() + "','" + images + "','1','0','" + Session["UserName"].ToString() + "','" + Request.UserHostAddress.ToString() + "','" + Pass.ToString() + "','" + lblSrno.Text.Trim() + "')";

                if (con.ExecuteSql_Trans(str) <= 0)
                {
                    Membership.DeleteUser(txtStudentRegistrationNumber.Text);
                    Tran.Rollback();
                    con.CloseConnection();
                    return;
                }

                //if (i == 0)
                //{
                //    Tran.Rollback();
                //    con.CloseConnection();
                //    return;
                //}
                Tran.Commit();
                con.CloseConnection();


                string aa = @"select Id,(select MobileNo from Add_Center where id='" + ddlcenter.SelectedValue.Trim() + "'  and IsActive=1 )as 'Centetmobileno' " +
                @" from Add_Student where [CenterId]='" + ddlcenter.SelectedValue.Trim() + "' and [AdmissionDt]='" + txtAdmissionDate.Text.Trim() + "' and DOB='" + txtDOB.Text.Trim() + "' " +
                "  and [RollNo]='" + txt_student_Rollno.Text.Trim() + "' and [RegistrationNo]='" + txtStudentRegistrationNumber.Text.Trim() + "' and [StudentNm]='" + txt_student_name.Text.Trim() + "' " +
                "  and [ParientsBy]='" + txt_father.Text.Trim() + "' and [Quelification]='" + txt_education_qulification.Text.Trim() + "' and [Gender]='" + ddl_gender.SelectedValue + "' " +
                "  and [CourseId]='" + ddl_select_couse.SelectedValue.Trim() + "' and [Duration]='" + ddlduration.SelectedValue.Trim() + "' and [CourseFee]='" + txtCourse_Fee.Text.Trim() + "' " +
                "  and [Address]='" + txt_address.Text.Trim() + "' and [City]='" + txt_city.Text.Trim() + "' and [State]='" + ddl_state.SelectedValue.Trim() + "' " +
                "  and [District]='" + ddl_diatric.SelectedValue.Trim() + "' and [MobileNo]='" + txt_mobile.Text.Trim() + "' and [EmailId]='" + txtStudentEmailID.Text.Trim() + "' " +
                "  and [AadharNo]= '" + txtStudentAadharNo.Text.Trim() + "'";
                DataTable dtaa = new DataTable();
                dtaa = con.getDataTable(aa);
                if (dtaa.Rows.Count > 0)
                {
                    string studname = txt_student_name.Text.Trim();
                    string studRegno = txtStudentRegistrationNumber.Text.Trim();
                    string studpass = Pass.ToString().Trim();
                    string studmobile = txt_mobile.Text.Trim();
                    string centernm = ddlcenter.SelectedItem.Text.Trim();

                    Session["SID"] = dtaa.Rows[0]["Id"].ToString();
                    Response.Redirect("StudentSlip.aspx");
                }
                else
                {
                    Session["SID"] = null;
                }
                //  string smsMsg = "Student  " + txt_student_name.Text.ToUpper() + " \n\n\n  is Join ..... Your UserId is='" + txtStudentRegistrationNumber.Text + "' and " +
                //   "       Password is='" + Pass.ToString() + "'";

                reset();
            }


        }
        catch (SqlException ex)
        {
            Tran.Rollback();

            con.CloseConnection();
            con.Shows("Something Went wrong! Please Try Again..");
        }
        finally
        {

        }
    }
    public string Get8Digits()
    {
        var bytes = new byte[4];
        var rng = RandomNumberGenerator.Create();
        rng.GetBytes(bytes);
        uint random = BitConverter.ToUInt32(bytes, 0) % 100000000;
        return String.Format("{0:D8}", random);
    }
    protected void bindUserDtl()
    {
        try
        {


            // Create new user.
            i = 1;
            // Membership.DeleteUser(txtStudentRegistrationNumber.Text);

            Pass = Get8Digits();
            //Membership.DeleteUser(txtStudentRegistrationNumber.Text);
            MembershipUser newUser = Membership.CreateUser(txtStudentRegistrationNumber.Text, Pass.ToString());

            if (Membership.RequiresQuestionAndAnswer)
            {
                newUser.ChangePasswordQuestionAndAnswer(txtStudentRegistrationNumber.Text, "a", "a");

            }

            //Response.Redirect("login.aspx");
        }
        catch (MembershipCreateUserException e)
        {
            i = 0;
            // string s = GetErrorMessage(e.StatusCode);
        }
        catch (HttpException e)
        {
            i = 0;
        }
    }
    protected void bindRoll()
    {
        try
        {
            MembershipUserCollection users = Membership.FindUsersByName(txtStudentRegistrationNumber.Text.Trim());
            Roles.AddUserToRole(txtStudentRegistrationNumber.Text.Trim(), "Student");

        }
        catch (Exception ex)
        { i = 0; }

    }

    private string GetErrorMessage(MembershipCreateStatus statusCode)
    {
        throw new NotImplementedException();
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {

    }
    protected void reset()
    {
        ddlcenter.ClearSelection(); txtAdmissionDate.Text = string.Empty; txtStudentRegistrationNumber.Text = string.Empty; txt_student_name.Text = string.Empty; txt_father.Text = string.Empty;
        txt_education_qulification.Text = string.Empty; ddl_gender.ClearSelection(); ddl_select_couse.ClearSelection(); ddlduration.ClearSelection(); txtCourse_Fee.Text = string.Empty;
        txt_address.Text = string.Empty; txt_city.Text = string.Empty; bindState(); txt_mobile.Text = string.Empty; txtStudentEmailID.Text = string.Empty; txtStudentAadharNo.Text = string.Empty;
        txtDOB.Text = string.Empty;
        bindRegistrationNo();
        bindRollNo();
        ddlduration.ClearSelection();
        btnSubmit.Visible = true;

    }
    protected void ddlcenter_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindRegistrationNo();
    }

    protected void bindDuration()
    {
        try
        {
            dt = con.getDataTable("select Id,CourseNmAlp from CoureDurationMaster where IsActive=1 order by OrderId ");
            if (dt.Rows.Count > 0)
            {
                ddlduration.DataSource = dt;
                ddlduration.DataTextField = "CourseNmAlp";
                ddlduration.DataValueField = "Id";
                ddlduration.DataBind();
                ddlduration.Items.Insert(0, "--- Select Course Duration ---");
                ddlduration.Items[0].Value = "0";
            }
            else
            {
                ddlduration.Items.Insert(0, "--- Select Course Duration ---");
                ddlduration.Items[0].Value = "0";
            }
        }
        catch (Exception ex)
        { }
    }
    protected void bindRegistrationNo()
    {
        if (ddlcenter.SelectedValue == "0" || ddl_select_couse.SelectedValue == "0")
        {
            txtStudentRegistrationNumber.Text = string.Empty;
        }
        else
        {
            DataTable dtreg = new DataTable();
            dtreg = con.getDataTable(" select CenterCode from [Add_Center] where   id='" + ddlcenter.SelectedValue + "' and isActive=1");
            DataTable dtreg1 = new DataTable();
            dtreg1 = con.getDataTable(" select CoureShortNm from CoureMaster where IsActive=1 and Id='" + ddl_select_couse.SelectedValue + "'");
            txtStudentRegistrationNumber.Text = txt_student_Rollno.Text.Trim() + dtreg.Rows[0]["CenterCode"].ToString() + dtreg1.Rows[0]["CoureShortNm"].ToString();
        }
    }
    protected void ddl_select_couse_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindDuration();
        bindRegistrationNo();
        DataTable dtnew = new DataTable();
        dtnew = con.getDataTable("select CoureDurationId from CoureMaster where Id='" + ddl_select_couse.SelectedValue + "' and IsActive=1");
        if (dtnew.Rows.Count > 0)
        {

            bindDuration();
            ddlduration.SelectedValue = dtnew.Rows[0]["CoureDurationId"].ToString();
        }
        else
        {
            ddlduration.ClearSelection();
        }

    }
}