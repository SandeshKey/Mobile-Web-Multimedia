<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="HomePage.course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <!-- Courses -->
          
                <div id="courses" class="Courses">
  <div class="container-fluid padding_left3">
    <div class="row">
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="box_bg">
          <div class="box_bg_img">
            <div class="row">
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                   <asp:HyperLink ID="HyperLink1" href="#" runat="server">
                <div class="box_my">
                  <figure>
                      <ItemTemplate>
                          <asp:Image ID="Image1" Height="250px" Width="300px" runat="server" ImageUrl='<%#"~/img/"+Eval("Course_Image") %>'></asp:Image>
                      </ItemTemplate>
                  </figure>
                  <div class="overlay">
                    <h3><%# Eval("Course_Name") %></h3>
                     <p>Price:<%# Eval("Course_Price") %></p>
                     <p>Lecturer Name:<%# Eval("Lecturer_Name") %></p>
                  </div>
                </div>
                       </asp:HyperLink>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

            

            <!-- end Courses -->

        </ItemTemplate>
    </asp:ListView>
    
</asp:Content>
