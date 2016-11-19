<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign03._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="employeesLabel" runat="server" />
    
    <asp:Label ID="label1" runat="server" />
    <div class="background">
        <div class="Jumbotron">
            <h1>A's School Of Business</h1>
            <h5>A perfect place to start with your career</h5>
            </div>
            <div class="Jumbotron">
                <p>
                    <a href="http://localhost:58731/" class="btn btn-primary btn-lg">About&raquo;</a>
                    <a href="http://localhost:58731/" class="btn btn-primary btn-lg">Speak to Staff &raquo;</a>
                    <a href="http://localhost:58731/" class="btn btn-primary btn-lg">Alumini &raquo;</a>
                    <a href="http://localhost:58731/" class="btn btn-primary btn-lg">Register &raquo;</a>
                </p>
            </div>
        
            <p class="lead">A's School Of Business is a place for building great personality and Knowledge in management workplace.</p>
        </div>
        <div class="row">
            <div class="col-md-4">


                <h2>Student Page</h2>

                <asp:DataList ID="DataList" runat="server" Height="133px" Width="266px">
                    <ItemTemplate>
                 <asp:LinkButton ID="link" runat="server" HeaderText="LinkButton" Text ='<%#string.Format("{0} {1}", Eval("FirstMidName"),Eval("LastName")) %>' PostBackUrl='<%# Eval("StudentID", "~/About.aspx?ID={0}")%>'></asp:LinkButton>
                                           
                    </ItemTemplate>
                </asp:DataList>

                <h3>Interested candidates can register here.</h3>

                <p>
                    <a class="btn btn-default" href="http://localhost:58731/About">Register &raquo;</a>
                </p>
            </div>
            <div class="col-md-4">
            </div>
        </div>
    <!--Microsoft privacy statement is used in this code-->
     <a href="https://privacy.microsoft.com/en-us/privacystatement" />
</asp:Content>

