<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="Student_Registeration.aspx.cs" Inherits="Student_Registeration" %>
<%@ Register Assembly="RJS.Web.WebControl.PopCalendar.Net.2008" Namespace="RJS.Web.WebControl" TagPrefix="rjs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
   

    <style>
        .contact-form input[type="text"] {
    display: block;
    height: 46px;
    margin-bottom: 32px;
    width: 100%;
    font-size: 14px;
    padding: 0 15px;
    border: 1px solid #e5e5e5;
    color: #878787;
    background: transparent;
    -webkit-appearance: none;
    border-radius: 0;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Intro Section -->
			<section class="inner-intro  padding ptb-xs-40 bg-img1 overlay-dark light-color">
				<div class="container">
					<div class="row title">
						<h1>Student Registeration </h1>
						<div class="page-breadcrumb">
							<a>index</a>/<span>Student Registeration</span>
						</div>
					</div>
				</div>
			</section>
			<!-- End Intro Section -->
			<!-- Contact Section -->
			<section class="padding ptb-xs-40">
				<div class="container">

					<div class="row">

						<div class="col-sm-12">

							<div class="headeing pb-30">
								 
							<!-- END Contact FORM -->
						</div>

						   <div class="mail-w3agile">
        <asp:ScriptManager ID="SM" runat="server"></asp:ScriptManager>
        <div class="row">
            <div class="col-sm-12 mail-w3agile">
                <section class="panel">

                    <header class="panel-heading wht-bg">
                        <h4 class="gen-case">Student's Details<asp:Label ID="lblSrno" runat="server" ForeColor="Blue" Visible="false"></asp:Label></h4>
                        <%-- <span class="pull-right" style="margin-top: -42px;"><a href="CreateTask.aspx">Create New Task</a></span>--%>
                    </header>
                    <div class="panel-body minimal">
                        <div class="row">
                            <asp:UpdatePanel ID="upnl" runat="server">
                                <ContentTemplate>
                                    <div class="col-lg-3" >
                                        <label>Center </label>
                                        <asp:DropDownList ID="ddlcenter" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlcenter_SelectedIndexChanged">
                                            <%-- <asp:ListItem Text="--- Select Course ---" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Task 1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Task 1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Task 1" Value="1"></asp:ListItem>--%>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="rfCenter" runat="server" ErrorMessage="*" ControlToValidate="ddlcenter" InitialValue="0" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3" >
                                        <label>
                                            Admission Date
                                    <rjs:PopCalendar ID="Popcalendar3" runat="server" Control="txtAdmissionDate" Format="dd mmm yyyy" />
                                        </label>
                                        <asp:TextBox ID="txtAdmissionDate" runat="server" CssClass="form-control"></asp:TextBox>
                                      
                                    </div>


                                    <div class="col-lg-3" >
                                        <label>Student Roll No</label>
                                        <asp:TextBox ID="txt_student_Rollno" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                       
                                    </div>
                                    <div class="col-lg-3" >
                                        <label>Student Registration Number</label>
                                        <asp:TextBox ID="txtStudentRegistrationNumber" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtStudentRegistrationNumber" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>



                                    <div class="col-lg-3">
                                        <label>Student Name</label>
                                        <asp:TextBox ID="txt_student_name" runat="server" CssClass="form-control" Style="text-transform: capitalize;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txt_student_name" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>D/o, S/o, W/o</label>
                                        <asp:TextBox ID="txt_father" runat="server" CssClass="form-control" Style="text-transform: capitalize;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txt_father" ValidationGroup="A"></asp:RequiredFieldValidator>

                                    </div>
                                    <div class="col-lg-3">
                                        <label>
                                            Date of Birth 
                                    <rjs:PopCalendar ID="Popcalendar1" runat="server" Control="txtDOB" Format="dd mmm yyyy" />
                                        </label>
                                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtDOB" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>Eaducation Qulification</label>
                                        <asp:TextBox ID="txt_education_qulification" runat="server" CssClass="form-control" Style="text-transform: capitalize;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txt_education_qulification" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>Gender</label>
                                        <asp:DropDownList ID="ddl_gender" runat="server" CssClass="form-control">

                                            <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>



                                    <div class="col-lg-3">
                                        <label>Select Course</label>
                                        <asp:DropDownList ID="ddl_select_couse" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddl_select_couse_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="ddl_select_couse" InitialValue="0" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>Duration	</label>
                                        <asp:DropDownList ID="ddlduration" runat="server" CssClass="form-control" Enabled="false"></asp:DropDownList>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="ddlduration" ValidationGroup="A" InitialValue="0"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-lg-3">
                                        <label>Course Fee</label>
                                        <asp:TextBox ID="txtCourse_Fee" runat="server" CssClass="form-control" onkeypress="return isNumber(event)"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtCourse_Fee" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>Address	</label>
                                        <asp:TextBox ID="txt_address" runat="server" CssClass="form-control" Style="text-transform: capitalize;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txt_address" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>City/Town	</label>
                                        <asp:TextBox ID="txt_city" runat="server" CssClass="form-control" Style="text-transform: capitalize;"></asp:TextBox>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="txt_city" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-lg-3">
                                        <label>State</label>
                                        <asp:DropDownList ID="ddl_state" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="ddl_state_TextChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" InitialValue="0" ControlToValidate="ddl_state" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-3">
                                        <label>District</label>
                                        <asp:DropDownList ID="ddl_diatric" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" InitialValue="0" ControlToValidate="ddl_diatric" ValidationGroup="A"></asp:RequiredFieldValidator>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div class="col-lg-3">
                                <label>Mobile No	<span style="color: red; font-size: small; font-style: italic">(without 0/+92)</span> </label>
                                <asp:TextBox ID="txt_mobile" runat="server" CssClass="form-control" MaxLength="10" onkeypress="return isNumber(event)"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txt_mobile" ValidationGroup="A"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-lg-3">
                                <label>Email ID	</label>
                                <asp:TextBox ID="txtStudentEmailID" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtStudentEmailID" ValidationGroup="A"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="rfDirectorEmailIDExp" runat="server" ForeColor="red" ErrorMessage="*" ControlToValidate="txtStudentEmailID" ValidationGroup="A" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-lg-3" style="display:none;">
                                <label>Student Aadhar No.</label>
                                <asp:TextBox ID="txtStudentAadharNo" runat="server" CssClass="form-control" MaxLength="12" onkeypress="return isNumber(event)"></asp:TextBox>
                                
                            </div>
                            <div class="col-lg-3">
                                <label>Student Image	</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator ForeColor="Red" ID="rfImage" runat="server" ErrorMessage="*" ControlToValidate="FileUpload1" ValidationGroup="A" Enabled="false"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-lg-3 col-md-offset-5">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="A" />
                                
                                <asp:Button ID="btnPDF" runat="server" Text="PDF" CssClass="btn btn-primary" OnClientClick="return printdv();" />
                                <asp:Button ID="Button2" runat="server" Text="EXCLE" CssClass="btn btn-primary" OnClientClick="return exportTOExcel();" />

                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </div>
                        </div>
                        <br />
                         
                    </div>
                </section>
            </div>
        </div>
    </div>

					</div>
				</div>
				<!-- Map Section -->

			</section>
			<!-- Map -->
		 
			<!-- Contact Section -->
</asp:Content>

