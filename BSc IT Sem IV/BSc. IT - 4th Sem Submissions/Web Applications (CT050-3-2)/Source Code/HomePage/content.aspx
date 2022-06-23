<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="HomePage.content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <asp:Label ID="labcourse" runat="server" ></asp:Label>
    
  
<asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <!-- Courses -->
            <div class="make">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="titlepage">
          <h2><%# Eval("Course_Name") %></h2>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
        <div class="make_text">
          <p><%# Eval("Course_content") %></p>
        </div>
      </div>
      <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
        <div class="make_img">
          <figure>
                 <ItemTemplate>
                          <asp:Image ID="Image1" Height="250px" Width="300px" runat="server" ImageUrl='<%#"~/img/"+Eval("Course_Image") %>'></asp:Image>
                      </ItemTemplate>
          </figure>
        </div>
      </div>
    </div>
  </div>
</div>
            <!--
 <div id="courses" class="Courses">
  <div class="container-fluid padding_left3">
    <div class="row">
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="box_bg">
         
                <p><%# Eval("Course_content") %></p>
             
        </div>
      </div>
    </div>
  </div>
</div>
-->

<!-- end Courses -->
          
    

        </ItemTemplate>
    </asp:ListView>
      <div id="important" class="important">
  <div class="container" style="width:100%; position:relative; left:none">
    <div class="row">
      <div class="col-md-12">
        <div class="titlepage">
          <h2>Available <strong class="yellow">Assignment </strong></h2>
          <span>Assignment need to be submitted on time</span>
        </div>
      </div>
    </div>
     <asp:GridView ID="grdAssignment" runat="server" AutoGenerateColumns="False" 

                BackColor="White"    style=" text-align: center;position:relative;left:-100px" Width="1305px" HeaderStyle-BackColor="#ffcc00" ForeColor="Black" Height="236px" >
               
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("ID") %>' runat="server" />
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course Name">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Course_Name") %>' runat="server" />
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hand Out">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Hand_Out") %>' runat="server" />
                        </ItemTemplate>
                       
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Assignment">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" Text="Download" OnClick="lnkDownload_Click" runat="server" ForeColor="#ff9933" CommandArgument='<%# Eval("ID") %>'> </asp:LinkButton>
                        </ItemTemplate>
                       
                    </asp:TemplateField>
                  
                       
                    
                     
                </Columns>
            </asp:GridView>
    </div>

    </div>
  
</asp:Content>
