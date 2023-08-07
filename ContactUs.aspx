<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
						<h1>Contact</h1>
						<div class="page-breadcrumb">
							<a>index</a>/<span>Contact</span>
						</div>
					</div>
				</div>
			</section>
			<!-- End Intro Section -->
			<!-- Contact Section -->
			<section class="padding ptb-xs-40">
				<div class="container">

					<div class="row">

						<div class="col-sm-8">

							<div class="headeing pb-30">
								<h2>Get in Touch</h2>

							</div>
							<!-- Contact FORM -->
							<form class="contact-form " id="contact">
								<!-- IF MAIL SENT SUCCESSFULLY -->
								<div id="success">
									<div role="alert" class="alert alert-success">
										<strong>Thanks</strong> for using our template. Your message has been sent.
									</div>
								</div>
								<!-- END IF MAIL SENT SUCCESSFULLY -->
								<div class="row">
									<div class="col-sm-6">
										<div class="form-field">
                                            <asp:TextBox ID="txtname" runat="server" placeholder="Your Name" class="form-control mb-30"></asp:TextBox>
										</div>
										<div class="form-field">
                                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email" class="form-control mb-30"></asp:TextBox>
										</div>
										<div class="form-field">
                                            <asp:TextBox ID="txtSubject" runat="server" placeholder="Your Subject" class="form-control mb-30"></asp:TextBox>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-field">
                                            <asp:TextBox ID="TextBox1" TextMode="MultiLine" Rows="6" Columns="7" runat="server" placeholder="Your Message" class="form-control"></asp:TextBox>
										</div>
									</div>
									<div class="col-sm-12 mt-30">
                                        <asp:Button ID="btnsubmit" runat="server" class="btn-text" Text="Submit" />
									</div>
								</div>
							</form>
							<!-- END Contact FORM -->
						</div>

						<div class="col-sm-4 contact">
							<div class="headeing pb-20">
								<h2>Contact Info</h2>

							</div>
							<div class="contact-info">

								<ul class="info">
									 

									<li>
										<div class="icon ion-android-call"></div>
										<div class="content">
											<p>
												
+92-3017096837
											</p>
											 
										</div>
									</li>
									<li>
										<div class="icon ion-ios-email"></div>
										<div class="content">
											<p>
												 VirtualTuitionManagementSystem@gmail.com
											</p>
											 
										</div>
									</li>
								</ul>
								<ul class="event-social">
									<li>
										<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
									</li>
									
								</ul>
							</div>
						</div>

					</div>
				</div>
				<!-- Map Section -->

			</section>
			<!-- Map -->
		 
			<!-- Contact Section -->
</asp:Content>

