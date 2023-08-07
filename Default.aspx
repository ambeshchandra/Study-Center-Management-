<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Maine-Banner -->

		<div class="main-banner banner_style4">
			<div id="rev_slider_34_1_wrapper" class="rev_slider_wrapper" data-alias="news-gallery34">
				<!-- START REVOLUTION SLIDER 5.0.7 fullwidth mode -->
				<div id="rev_slider_34_1" class="rev_slider" data-version="5.0.7">
					<ul>
                         
						<asp:Repeater ID="dlimg" runat="server" >
                            <ItemTemplate>
                          <li data-index="rs-129"  >
							
							<%--<img src="assets/images/slider/slide.jpg"  alt=""  class="rev-slidebg" >--%>
                              <asp:Image ID="img" runat="server" ImageUrl='<%#Eval("SlideImg") %>'  alt=""  class="rev-slidebg" />
						
							<div class="tp-caption Newspaper-Title tp-resizeme "
							id="slide-129-layer-1"
							data-x="['left','left','center','center']" data-hoffset="['50','50','0','0']"
							data-y="['center','center','center','center']" data-voffset="['0','0','0','0']"
							data-fontsize="['50','50','50','30']"
							data-lineheight="['55','55','55','35']"
							data-width="['680','680','600','420']"
							data-height="none"
							data-whitespace="normal"
							data-transform_idle="o:1;"
							data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;"
							data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;"
							data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							data-mask_out="x:0;y:0;s:inherit;e:inherit;"
							data-start="1000"
							data-splitin="none"
							data-splitout="none"
							data-responsive_offset="on" >
								<%--<div class="banner-text ">

									<h2> Welcome To <span class="text-color"> EduPonits</span></h2>
									<p>
										There are many variations of passages of Lorem Ipsum available, but the majority majority lorem amet ipsum dummy
									</p>
									<a class="btn-text green-bg" href="#"> Learn More</a>
								</div>--%>
							</div>
						</li>
                            </ItemTemplate>
						</asp:Repeater>
						
						<%--<li data-index="rs-130" data-title="" data-description="">
							
							<img src="assets/images/slider/slide1.jpg"  alt=""  class="rev-slidebg" >
							
							<div class="tp-caption Newspaper-Title   tp-resizeme "
							id="slide-130-layer-1"
							data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
							data-y="['center','center','center','center']" data-voffset="['0','0','0','0']"
							data-fontsize="['50','50','50','30']"
							data-lineheight="['55','55','55','35']"
							data-width="['680','680','600','420']"
							data-height="none"
							data-whitespace="normal"
							data-transform_idle="o:1;"
							data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;"
							data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;"
							data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
							data-mask_out="x:0;y:0;s:inherit;e:inherit;"
							data-start="1000"
							data-splitin="none"
							data-splitout="none"
							data-responsive_offset="on">
								
							</div>
						</li>--%>
						
					</ul>
					<div class="tp-bannertimer tp-bottom"></div>
				</div>
			</div>
		</div>
		<!-- Course Search -->
        <!-- End Intro Section -->
         

		<!-- Course Search End-->
        <div class="section-bar">
            <div class="pt-30 pb-30 pt-xs-40">
                <div class="container-fluid">
                    <div class="row pb-10 text-center">
                        <div class="col-sm-12">
                            <div class="creative_heading">
                                <h2 class="color"><span>Our </span>Courses</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center light-color">
                    
                        <asp:Literal ID="lblcoursemaster" runat="server"></asp:Literal>
                    
                    </div>
                     
                </div>
                </div>
            </div>
        
		
		<!--Provided skill-->
		<div id="providing" class="pt-50 blue-bg">
			<div class="container">

				<div class="row qualitiy">
					<div class="col-md-12 col-md-6 resp-none">
						<img src="assets/images/about.png" alt="">
					</div>
					<div class="col-md-12 col-md-6 d-flex align-items-center">
						<div class="text-content">
							<h2 style="font-size: 22px !important ;    color: cornsilk;">About Virtual Tuition Management System</h2>
							<p style="text-align: justify;">
                                Welcome to our Virtual Tuition Management System, where academic excellence meets technological innovation! We are dedicated to empowering students and parents alike by providing a comprehensive and dynamic platform for online education. Our mission is to inspire a love for learning and foster a supportive community that thrives on intellectual growth. With our cutting-edge tools and resources, students can explore personalized learning paths, engage in interactive virtual classrooms, and access a vast array of educational materials. We believe that every student has the potential to achieve greatness, and we are committed to guiding them towards their goals. Join us on this exciting journey of knowledge, discovery, and success!
								</p>
							<div class="button-sec mt-30">
								<a href="aboutUS.aspx" class="btn-text  btn-2">Learn More</a>
								<a href="ContactUs.aspx" class="btn-text ">get in touch</a>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--Provided skill End-->

		<!--Form And FAQ-->
        <div id="project-section" class="pt-30 pb-30 pt-xs-30">
            <div class="container">
                <div class="row pb-30 text-center">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="creative_heading">
                            <h2><span>Student  </span>Facilities</h2>
                           
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-6 mb-30">

                        <div class="img-scale about-block gray-bg hover-bg d-flex align-items-center flex-column flex-sm-row">
                            <div class="fl half-width">
                                <img class="img-responsive" src="assets/images/Application Form.jpg" alt="Photo">
                            </div>
                            <div class="text-box padding-20 d-flex flex-column half-width">

                                <div class="box-title">

                                    <h3 class="mt-0"><a href="#">Online Admission</a></h3>
                                </div>

                                <div>
                                    <p>
                                         Virtual Tuition Management System Provide Online Admission
                                    </p>
                                    <div class="donate-price">
                                        <a href="#" style="font-weight:bold; "> <b>Get Admission</b></a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-30">
                        <div class="img-scale about-block gray-bg hover-bg d-flex align-items-center flex-column flex-sm-row">
                            <div class="fl float-right-sm half-width">
                                <img class="img-responsive" src="assets/images/allbook.png" alt="Photo">
                            </div>
                            <div class="text-box padding-20 d-flex flex-column half-width">

                                <div class="box-title">

                                    <h3 class="mt-0"><a href="#">All Course Book</a></h3>
                                </div>

                                <div>
                                    <p>
                                        Virtual Tuition Management System have available all book libirary.
                                    </p>
                                    <!--<div class="donate-price">
                                        Course Fee: <b>78987 </b>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 mb-30">
                        <div class="img-scale about-block gray-bg hover-bg d-flex align-items-center flex-column flex-sm-row">
                            <div class="fr float-left-sm half-width">
                                <img class="img-responsive" src="assets/images/Teacher.png" alt="Photo">
                            </div>
                            <div class="text-box padding-20 d-flex flex-column half-width">

                                <div class="box-title">

                                    <h3 class="mt-0"><a href="#">Qualified Faculty</a></h3>
                                </div>

                                <div>
                                    <p>
                                        Highly Qualified and Experienced Faculty. Without any shadow of doubt, it is the members of the teaching community who impart progress into the students
                                    </p>
                                    <!--<div class="donate-price">
                                        <a href="#" style="font-weight:bold; "> <b>Get Admission</b></a>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="img-scale about-block gray-bg hover-bg d-flex align-items-center flex-column flex-sm-row">
                            <div class="fr half-width">
                                <img class="img-responsive" src="assets/images/virtalclass.png" alt="Photo">
                            </div>
                            <div class="text-box padding-20 d-flex flex-column half-width">

                                <div class="box-title">

                                    <h3 class="mt-0"><a href="#">Online/Virtaul Class </a></h3>
                                </div>

                                <div>
                                    <p>
                                        Online/Virtaul Class for 6th to 10th class.
                                    </p>
                                    <div class="donate-price">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
		<!--Form And FAQ-->

		 
	<br /><b></b>
</asp:Content>

