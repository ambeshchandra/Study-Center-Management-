<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="Registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
						<h1>Registeration </h1>
						<div class="page-breadcrumb">
							<a>index</a>/<span>Registeration</span>
						</div>
					</div>
				</div>
			</section>
			<!-- End Intro Section -->
			<!-- Contact Section -->
			<section class="padding ptb-xs-40">
				<div class="container">

					<div class="row">

						<div class="col-sm-6">

							<div class="headeing pb-30">
								
							<!-- END Contact FORM -->
						</div>

						<div class="col-sm-12 contact">
							<div class="headeing pb-20">
							<a href="Student_Registeration.aspx">	<h2>  Student Registeration</h2></a>

							</div>
							<div class="contact-info">

								 
   <a href="Student_Registeration.aspx"> <img src="assets/images/student_reg.png"  /></a>
								

								 
							  
							</div>
						</div>

					</div>
                        <div class="col-sm-6">

							<div class="headeing pb-30">
								
							<!-- END Contact FORM -->
						</div>

						<div class="col-sm-12 contact">
							<div class="headeing pb-20">
							<a href="Student_Registeration.aspx">	<h2>Parent's Registeration</h2></a>

							</div>
							<div class="contact-info">

							<a href="Student_Registeration.aspx"> 	 <img src="assets/images/parent.png" /></a>
							</div>
						</div>

					</div>
				</div>
				<!-- Map Section -->

			</section>
			<!-- Map -->
		 
			<!-- Contact Section -->
</asp:Content>

