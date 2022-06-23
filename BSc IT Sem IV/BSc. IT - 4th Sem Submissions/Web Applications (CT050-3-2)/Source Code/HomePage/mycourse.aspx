<%@ Page Title="" Language="C#" MasterPageFile="~/First.Master" AutoEventWireup="true" CodeBehind="mycourse.aspx.cs" Inherits="HomePage.mycourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
     .bar{
         width:100px;
     }
     h1{
         color:white;
     }
    
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
        <div
            <!-- Courses -->
                  <a href="content.aspx?course=<%# Eval("Course_Name") %>">
                      <div id="courses" class="Courses">
                          <div class="container-fluid padding_left3">
                            <div class="row">
                              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="box_bg">
                                  <div class="box_bg_img">
                                    <div class="row">
                                      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                        <div class="box_my">
                                          <figure>
                                              <ItemTemplate>
                                                <asp:Image runat="server"></asp:Image>
                                              </ItemTemplate>
                                          </figure>
                                          <div class="overlay">
                                              <div class="bar">
                                              <h1 >  <%# Eval("Course_Name")  %> </h1>
                                            <p>
                                                 <%# Eval("Course_Name")  %> 
                                            </p>
                                                  </div>
                                           </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                       </div>
                     </a>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
