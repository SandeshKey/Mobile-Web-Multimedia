<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="AddCourses.aspx.cs" Inherits="HomePage.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
  <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1> Courses</h1>
  </div>
</div>
    <div class="container" style=" position:relative; margin-left:-50px">
  <div class="row">
    <div class="col-md-12">
     <div class="form-group">
         <asp:Label ID="lblmessage" runat="server"></asp:Label>
         <div class="container">
          
  <div class="row">
    <div class="col-md-10">
        <div class="form-group">
         <asp:TextBox runat="server" type="text" class="form-control" id="txtsearchcourse" placeholder=" Search Course Name here" required BorderColor="Black"/>
            <hr class="mb-4">
            <asp:Button id="searchbtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="SEARCH" OnClick="submitBtn_Click"></asp:Button>
    </div>
     
     <div class="form-group">
         Course Name<asp:TextBox runat="server" type="text" class="form-control" id="txtcoursename" placeholder="Course Name" BorderColor="Black" />
    </div>
     
    <div class="form-group">
        
        Course Content<asp:TextBox runat="server" type="email" class="form-control" id="txtcontent" placeholder="Description" BorderColor="Black" Height="123px" Width="766px" />
    </div>
  
  <div class="form-group">
      Course Price<asp:TextBox runat="server" type="text" class="form-control" id="txtprice" placeholder="In RS." BorderColor="Black" />
  </div>
  <div class="form-group">
      Lecturer Name<asp:TextBox runat="server" type="text" class="form-control" id="txtlname" placeholder="dr. Jem" BorderColor="Black" />
  </div>
  <div class="form-group">
      Class Duration<asp:TextBox runat="server" type="text" class="form-control" id="txtcduration" placeholder="Class Duration" BorderColor="Black" />
  </div>
          <div class="form-group">
      Image name:<asp:TextBox runat="server" type="text" class="form-control" id="txtimage"  placeholder="Image" BorderColor="Black" />
  </div>
           <div class="form-group">
      Added by:<asp:TextBox runat="server" type="text" class="form-control" id="txtadded"  placeholder="Admin username" BorderColor="Black" />
  </div>
  &nbsp;<br>
<hr class="mb-4">
  <asp:Button id="updatebtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="UPDATE" OnClick="updatebtn_Click" ></asp:Button>
        <asp:Button id="deletbtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="DELET" OnClick="deletbtn_Click" ></asp:Button>
 
    </div>
  </div>
  </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetConn %>" SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
         <div class="col">
         <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Course_Name" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" InsertVisible="False" ReadOnly="True" SortExpression="Course_ID" />
                 <asp:TemplateField>
                     <ItemTemplate>
                        <div class="container-fluid">
                              <div class="row">
                                  <div class="col-lg-10">
                                     <div class="col-lg-12">
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Course_Name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                         </div>
                                 
                                 <div class="row">
                                     <div class="col-lg-12">
                                         Cost:
                                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("Course_Price") %>' Font-Bold="True"></asp:Label>
                                         </div>
                                 </div>
                                 <div class="row">
                                     <div class="col-lg-12">

                                         Lecturer Name:<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("Lecturer_Name") %>'></asp:Label>
                                         &nbsp; class duration:<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Class_Duration") %>'></asp:Label>
                                     </div>
                                </div>
                         
                            </div>
                             <div class="col-lg-2">
                              <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%#"~/img/"+Eval("Course_Image") %>'></asp:Image>
                              </div>
                            
                            </div>
                         </div>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
         </asp:GridView>
             </div>
         <br />
         <br />
         <br />
    </div>
  </div>
        </div>
  </div>

</asp:Content>
