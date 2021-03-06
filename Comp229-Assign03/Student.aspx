﻿<%@ Page Title="Student Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Comp229_Assign03.Student" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="label1" runat="server" />
    <h2><%: Title %>.</h2>
    <asp:DataList ID="DataList" runat="server" Height="133px" Width="266px">
                    <ItemTemplate>
                 <asp:LinkButton ID="link" runat="server" HeaderText="LinkButton" Text ='<%#string.Format("{0} {1}", Eval("CourseID"),Eval("Title")) %>' PostBackUrl='<%# Eval("CourseID", "~/Student.aspx?ID={0}")%>'></asp:LinkButton>
                                          
                    </ItemTemplate>
                </asp:DataList>
    <p><asp:TextBox ID="StudentID" runat="server" Visible="false" ></asp:TextBox>
    </p>
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
    <p >Courses</p>    
    <p><asp:DropDownList ID="Courses" runat="server"  ValidateRequestMode="Enabled"></asp:DropDownList></p>    
    <p><asp:Button ID="Delete" OnClick="Delete_Click" Text="Delete" runat="server" href="http://localhost:58731" class="btn btn-primary btn-lg"></asp:Button></p>
<asp:Button ID="Update" OnClick="update_click" Text="Udate" runat="server" />
    </asp:Content>