<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="OnlinePayment.aspx.cs" Inherits="OnlinePayment" %>

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
						<h1>Online Payment </h1>
						<div class="page-breadcrumb">
							<a>index</a>/<span>Online Payment</span>
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
								<h2>Bank Account Details</h2>

							</div>
							<!-- Contact FORM -->
                            <h4>Fysal Bank</h4>
							 <p>
                                 Account Number: 3586301000001288<br />
Account Title: Talha Younas

							 </p>
                            <h4>Easypaisa</h4>
                            <p>
                                          Account Number: 03433326275 <br />

         Account Title: Talha Younas

                            </p>
                            <h4>Jazzcash</h4>
                            <p>
                                Account Number: 03046644533 <br />
Account Title: Talha Younas

                            </p>
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

