<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="aboutUs.aspx.cs" Inherits="aboutUs" %>

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
						<h1>About Us</h1>
						<div class="page-breadcrumb">
							<a>index</a>/<span>About Us</span>
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

							 <p style="text-align:justify;">Welcome to our Virtual Tuition Management System, where academic excellence meets technological innovation! We are dedicated to empowering students and parents alike by providing a comprehensive and dynamic platform for online education. Our mission is to inspire a love for learning and foster a supportive community that thrives on intellectual growth. With our cutting-edge tools and resources, students can explore personalized learning paths, engage in interactive virtual classrooms, and access a vast array of educational materials. We believe that every student has the potential to achieve greatness, and we are committed to guiding them towards their goals. Join us on this exciting journey of knowledge, discovery, and success!</p>
						 
						</div>

						<div class="col-sm-4 contact">
							<div class="headeing pb-20">
							 

							</div>
							<div class="contact-info">
                                <img src="assets/images/about_us.png" />
							 
							</div>
						</div>

					</div>
				</div>
				<!-- Map Section -->

			</section>
			<!-- Map -->
		 
			<!-- Contact Section -->
</asp:Content>

