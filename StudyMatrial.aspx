<%@ Page Title="" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="StudyMatrial.aspx.cs" Inherits="StudyMatrial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .box {
            border-radius: 30px 30px 0px 0px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            padding: 10px 6px;
            text-align: right;
            display: block;
            margin-top: 60px;
            background: linear-gradient(to bottom, #4d4df7 0%, #160980 100%);
        }

            .box:hover {
                box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
                border-radius: 0px 0px 0px 0px;
                background: linear-gradient(to bottom, #4948ee 0%, #4645e8 100%);
            }

        .btn {
            display: inline-block;
            padding: 6px 5px;
            margin-bottom: 0;
            font-size: 13px;
            font-weight: normal;
            border: 1px solid transparent;
            border-radius: 4px;
        }

        .box-icon {
            background-color: #f2184f;
            border-radius: 50%;
            display: table;
            height: 60px;
            margin: 0 auto;
            width: 60px;
            margin-top: -38px;
        }

            .box-icon span {
                color: #fff;
                display: table-cell;
                text-align: center;
                vertical-align: middle;
            }

        .info h4 {
            font-size: 34px;
            letter-spacing: 2px;
            text-transform: uppercase;
            color: #fff;
        }

        .info > p {
            color: #717171;
            font-size: 16px;
            padding-top: 10px;
            text-align: justify;
        }

        .info > a {
            background-color: #f2184f;
            border-radius: 2px;
            box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);
            color: #fff;
            transition: all 0.5s ease 0s;
        }

            .info > a:hover {
                background-color: #0288d1;
                box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 0.16), 0 2px 5px 0 rgba(0, 0, 0, 0.12);
                color: #fff;
                transition: all 0.5s ease 0s;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="inner-intro  padding ptb-xs-40 bg-img1 overlay-dark light-color">
        <div class="container">
            <div class="row title">
                <h1>Study Matrial</h1>

            </div>
        </div>
    </section>
    <!-- Intro Section -->
    <section class="course-section__block padding ptb-xs-60">
        <div class="container">
            <div class="row">
                
                      <%--  <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">--%>
                             <asp:DataList runat="server" ID="DlCourse" RepeatColumns="4" CellPadding="5" RepeatLayout="Table" RepeatDirection="Horizontal" HeaderStyle-VerticalAlign="Top">
                                <ItemStyle HorizontalAlign="Center" />
                                 <ItemTemplate>
                            <div class="box" style="padding-left:5px;">
                                <div class="box-icon">
                                    <span class="fa fa-4x fa-html5"></span>
                                </div>
                                <div class="info">
                                   
                                    <h4 class="text-center"><%#Eval("CoureNm") %></h4>
                                   
                                    <a href="StudyMatrialListPdf.aspx?Id=<%# Eval("CourseId") %>" class="btn"><%#Eval("TotalP") %> PDF Study Matrial </a>
                                    <a href="StudyMatrialListVideo.aspx?Id=<%# Eval("CourseId") %>" class="btn"><%#Eval("TotalV") %> Video Study Matrial </a>
                       
                                </div>
                            </div>
                        <div style="padding:10px"></div>
                                </ItemTemplate>
                </asp:DataList>
                       <%-- </div>--%>
                    
                <%-- <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>
        
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
            <div class="box">
                <div class="box-icon">
                    <span class="fa fa-4x fa-html5"></span>
                </div>
                <div class="info">
                    <h4 class="text-center">DCA</h4>
                    
                    <a href="" class="btn">PDF Study Matrial</a>
                     <a href="" class="btn">Video Study Matrial</a>
                </div>
            </div>
        </div>--%>
        `

            </div>

        </div>
    </section>
</asp:Content>

