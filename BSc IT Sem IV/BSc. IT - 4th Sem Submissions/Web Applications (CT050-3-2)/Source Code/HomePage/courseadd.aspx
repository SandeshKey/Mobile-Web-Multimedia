<%@ Page Title="" Language="C#" MasterPageFile="~/Admintemplate.Master" AutoEventWireup="true" CodeBehind="courseadd.aspx.cs" Inherits="HomePage.courseadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-1">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="images/logo.png" alt="" width="150" height="150">
    <h1>ADD COURSE</h1>
  </div>
</div>
    <div class="container">
  <div class="row">
    <div class="col-md-12">
     
     <div class="form-group">
         Course Name<asp:TextBox runat="server" type="text" class="form-control" id="txtcname" placeholder="Course Name" required/>
    </div>
     
    <div class="form-group">
        Course Content<asp:TextBox runat="server" type="text" class="form-control" id="txtccontent" placeholder="Description" required Height="85px" Width="426px"/>
   </div>
  
  <div class="form-group">
      Course Price<asp:TextBox runat="server" type="text" class="form-control" id="txtcprice" placeholder="In RS." required Width="436px"/>
  </div>
  <div class="form-group">
      Lecturer Name<asp:TextBox runat="server" type="text" class="form-control" id="txtlname" placeholder="dr. Jem" required/>
  </div>
  <div class="form-group">
      Class Duration<asp:TextBox runat="server" type="text" class="form-control" id="txtcduration" placeholder="Class Duration" required/>
  </div>

   <div class="form-group">
       Image <asp:FileUpload ID="FileUpload1" runat="server" />
  </div>
  &nbsp;<br>
<hr class="mb-4">
  <asp:Button id="submitBtn"  runat="server" type="submit" style=" background-color: #f4b328;border:none" class="btn btn-primary btn-lg btn-block" Text="ADD COURSE" OnClick="submitBtn_Click"></asp:Button><br />
  
 
    </div>
  </div>
  </div>

</asp:Content>
