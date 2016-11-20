<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Comp229_Assign03.Course" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
     <div class="row">
            <div class="col-md-4">
                <h2 style="color: #FF0000">Click on course to get access for registration</h2>

                <asp:DataList ID="DataList" runat="server" Height="133px" Width="266px">
                    <ItemTemplate>
                 <asp:LinkButton ID="link" runat="server" HeaderText="LinkButton" Text ='<%#string.Format("{0} {1}", Eval("CourseID"),Eval("Title")) %>' PostBackUrl='<%# Eval("CourseID", "~/Student.aspx?ID={0}")%>'></asp:LinkButton>
                                          
                    </ItemTemplate>
                </asp:DataList>
                </div>
       
         </div>
</asp:Content>
