<%@ Page Title="" Language="C#" MasterPageFile="~/newmaster.Master" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="newwebsite.user.video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
                <div class="card mb-4">
  <div class="card" style="height:400px;width:500px">
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Eval("C_PHOTO") %>' NavigateUrl='<%# Eval("C_LINK") %>' ImageHeight="300px" ImageWidth="500px">HyperLink</asp:HyperLink>
    <div class="card-body">
      <h5 class="card-title">
                                                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("COUSE_DETAILS") %>'></asp:Label>
          </h5>
    </div>
  </div>
                </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [COUSE_DETAILS], [C_PHOTO], [C_LINK] FROM [C_DETAIL] WHERE ([CAT_ID] = @CAT_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CAT_ID" QueryStringField="CAT_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
