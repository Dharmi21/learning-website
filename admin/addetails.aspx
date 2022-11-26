<%@ Page Title="" Language="C#" MasterPageFile="~/newmaster.Master" AutoEventWireup="true" CodeBehind="addetails.aspx.cs" Inherits="newwebsite.admin.addetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">  
  
        function showimagepreview(input) {  
  
            if (input.files && input.files[0]) {  
                var reader = new FileReader();  
                reader.onload = function (e) {  
  
                    document.getElementsByTagName("img")[0].setAttribute("src", e.target.result);                     
                }  
                reader.readAsDataURL(input.files[0]);  
            }  
        }  
  
    </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
        <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">

                <div class="col-md-8 col-lg-7 col-xl-6">
<%--                    <img  class="img-fluid" alt="Phone image">--%>
                    <asp:Image ID="Image1"  class="img-fluid" alt="Phone image" runat="server" ImageUrl="~/admin/photos/addcdet.png" />
                </div>
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                    <form>
                        <!-- Email input -->
                           <div class="form-outline mb-4">
    <br />
        <asp:Label ID="Label5" runat="server" Text="ADD SOME DATA ABOUT COURSE" Height="35px" ViewStateMode="Enabled" Width="518px"></asp:Label>

    <br />

                              
                               
                            
    <br />
    <asp:Label ID="Label1" runat="server" Text="select course name:-"></asp:Label>
     <asp:DropDownList ID="ddl_course" runat="server" DataTextField="C_NAME" DataValueField="C_ID" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged" >
                               </asp:DropDownList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl_course" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
                                <br />
    <asp:Label ID="Label6" runat="server" Text="select category name:-"></asp:Label>
   <asp:DropDownList ID="ddl_cat" runat="server"  DataTextField="CAT_NAME" DataValueField="CAT_ID" AppendDataBoundItems="true">
                               </asp:DropDownList>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_cat" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="give the youtube video link:-"></asp:Label>
    <asp:TextBox ID="link" runat="server"></asp:TextBox>
                                                              <br />
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="link" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                                              <br />
                                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="please enter video link only" ControlToValidate="link" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" BorderColor="Black" BorderStyle="Dotted" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>

    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="uplode photo:- "></asp:Label>
    <asp:FileUpload ID="photo" runat="server" onchange="showimagepreview(this)"  />
                               <img id="img" alt="" />
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="photo" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Enter Short Detail About Video:-"></asp:Label>
    <asp:TextBox ID="detail" runat="server"></asp:TextBox>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="detail" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
                               <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Add One Search Key Word"></asp:Label>
    <asp:TextBox ID="search" runat="server"></asp:TextBox>
                               <br />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="search" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
                               <asp:Button ID="Button1" runat="server" Text="Add Details" OnClick="Button1_Click" />
                               </div>
                               </form>
                               </div>
                        </div>
                </div>
         </section>
         
     
</asp:Content>
