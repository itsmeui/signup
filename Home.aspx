<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="margin-top:50px">
        
       <div class="row">
           <div class="col-md-6 col-md-offset-3">
               <div class="alert alert-success hide"  runat="server" id="showMsg"> <asp:Label Text=" " runat="server" ID="postMsg" /> </div>
                <div class="panel panel-default">
            <div class="panel-heading">Sign Up</div>
            <div class="panel-body">

                <div class="form-group">
                    <label>Name</label>
                    <asp:TextBox ID="nameTxtBox" runat="server" placeholder="Enter Name" CssClass="form-control"></asp:TextBox>  
                </div>
                 <div class="form-group">
                    <label>Mobile</label>
                     <asp:TextBox ID="mobileTxtBox" runat="server" placeholder="Enter Mobile" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
    <asp:Button ID="submitButton" runat="Server" Text="Submit" OnClick="submitButton_Click" cssClass="btn" />
</div>
            </div>
        </div>
           </div>
       </div>
    
         
 
  

    </div>
    </form>
</body>
</html>
