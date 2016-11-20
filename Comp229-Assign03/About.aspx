<%@ Page Title="Student Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Comp229_Assign03.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="label1" runat="server" />
    <h2><%: Title %>.</h2>
 
        <p> LastName</p>
    <p><asp:TextBox ID="LastName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="LastNameReq" runat="server" controltovalidate="LastName">
   </asp:RequiredFieldValidator></p>
    <p>FirstMidName</p>
    <p>  <asp:TextBox ID="FirstMidName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="FirstNameReq" runat="server" controltovalidate="FirstMidName">
   </asp:RequiredFieldValidator></p>
    <p>EnrollmentDate</p>
     <p><asp:TextBox ID="EnrollmentDate" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="EnrollmentDateReq" runat="server" controltovalidate="EnrollmentDate"></asp:RequiredFieldValidator>
    </p>
   <!--<p style="color: #FFFFFF">Courses</p>    
    <p><asp:DropDownList ID="Courses" runat="server"  ValidateRequestMode="Enabled"></asp:DropDownList></p>  -->  
    <p><asp:Button ID="Add" OnClick="Add_Click" Text="ADD" runat="server" href="http://localhost:58731" class="btn btn-primary btn-lg"></asp:Button></p>-->
<p><b><a href="Student.aspx" >Update</a></b></p>
         </asp:Content>
 
       