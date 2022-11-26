<%@ Page Title="" Language="C#" MasterPageFile="~/newmaster.Master" AutoEventWireup="true" CodeBehind="addcategory.aspx.cs" Inherits="newwebsite.admin.addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
    <div class="col-md-8 col-lg-7 col-xl-6">
<%--                    <img  class="img-fluid" alt="Phone image">--%>
                    <asp:Image ID="Image1"  class="img-fluid" alt="Phone image" runat="server" ImageUrl="~/admin/photos/addccat.png" />
                </div>
                  <div class="form-outline mb-4">
  <asp:Label ID="Label1" runat="server" Text="Select Course" Font-Bold="True" Font-Size="Medium"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:DropDownList ID="cat" runat="server" DataSourceID="SqlDataSource1" DataTextField="C_NAME" DataValueField="C_ID" Font-Bold="True" Font-Overline="True" Height="44px" Width="169px"></asp:DropDownList>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cat" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

                      <br />
                   <br/>

             
                            <asp:Label ID="Label2" runat="server" Text="Category Name" Font-Bold="True" Font-Size="Medium"></asp:Label>
                      &nbsp;&nbsp;
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

    
                      <br />
                      <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button1" runat="server" Text="Add Category" OnClick="Button1_Click" BorderStyle="Outset"/>
                  </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [COURSE]"></asp:SqlDataSource>
    <br />
  
    <br />
   
                </div>
            </div>
         
         </section>
</asp:Content>
