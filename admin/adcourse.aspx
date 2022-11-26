<%@ Page Title="" Language="C#" MasterPageFile="~/newmaster.Master" AutoEventWireup="true" CodeBehind="adcourse.aspx.cs" Inherits="newwebsite.admin.adcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta name="description" content="WebUni Education Template">
    <meta name="keywords" content="webuni, education, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="shortcut icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/style.css">


    <!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
    <style>
        .divider:after,
        .divider:before {
            content: "";
            flex: 1;
            height: 1px;
            background: #eee;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
                <div class="col-md-8 col-lg-7 col-xl-6">
                    <%--                    <img  class="img-fluid" alt="Phone image">--%>
                    <asp:Image ID="Image1" class="img-fluid" alt="Phone image" runat="server" ImageUrl="~/admin/photos/addc01.png" />
                </div>
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                    <form>
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <asp:TextBox CssClass="form-control" ID="c_name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="c_name" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>


                        </div>


                        <asp:Button ID="Button1" runat="server" Text="Add Course" OnClick="Button1_Click" />
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
