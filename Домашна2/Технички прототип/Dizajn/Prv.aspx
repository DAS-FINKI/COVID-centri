<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prv.aspx.cs" Inherits="Dizajn.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<script src="jquery/jquery.min.js"></script>
	
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		
		
		<link rel="stylesheet" href="css/bootstrap.min.css">
	
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		
		<link rel="stylesheet" href="css/style.css">
		<script src="js/bootstrap.min.js"></script
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		
		<link rel="icon" href="images/icon.png" type="image/x-icon" />
		
		
	<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">

	<style>
	 .fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 0.8s;
  animation-duration: 0.8s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.2s;
  -moz-animation-delay: 0.2s;
  animation-delay: 0.2s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fifth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

	</style>

		
	<div class="wrapper fadeInDown">
	<div class="container-fluid" style="margin-top:20px">
		<div class="container">
			<div style="text-align: center">
            <asp:Label ID="naslov" runat="server" Text="Label" style="font-size:20px"></asp:Label>
			</div>
			<br />
 			<hr>
			<br />
			<div class="row">
				<div class="col-md-5">
 					
						<fieldset>							
							<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
 							<div class="form-group">
                                 <asp:TextBox ID="korisnickoime" runat="server" type="text" name="username" class="form-control input-lg fadeIn first" ></asp:TextBox>
							</div>

							<div class="form-group">
								 <asp:TextBox ID="email" runat="server" type="email" name="email" class="form-control input-lg fadeIn first"  ></asp:TextBox>
							</div>
							<div class="form-group">
								
								<asp:TextBox ID="pasvord" runat="server" type="password" name="password" class="form-control input-lg fadeIn first"  ></asp:TextBox>
							</div>
								<div class="form-group">
								
									<asp:TextBox ID="pasvord2" runat="server" type="password" name="password2" class="form-control input-lg fadeIn first"></asp:TextBox>
							</div>
							<div class="form-check">
								
							  </div>
 							<div>
 									  <asp:Button ID="Button2" runat="server" class="btn btn-md fadeIn fifth" style="background-color:lightblue;font-size:16px;height:35px" Text="" OnClick="Button2_Click" />
 							</div>
						</fieldset>
					
				</div>
				
				<div class="col-md-2">
					<!-------null------>
				</div>
				
				<div class="col-md-5">
 				 		
						<fieldset>							
							
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
 								
							<div class="form-group">
								<asp:TextBox ID="korisnickoime2" runat="server" type="email" name="username" class="form-control input-lg fadeIn first"  ></asp:TextBox>
							</div>
							<div class="form-group">
								<asp:TextBox ID="pasvord3" runat="server" type="password" name="password" class="form-control input-lg fadeIn first" ></asp:TextBox>
							</div>
						
						
							<asp:Button ID="Button1" runat="server" class="btn btn-md fadeIn third" style="background-color:lightblue;font-size:16px;height:35px" Text="" OnClick="Button1_Click" />	
						
								 
 						</fieldset>
					
				</div>
			</div>
		</div>
		
	</div>
	</div>
	<br />
	<br />
	<hr />
    <div style="text-align: center">
        <asp:ImageButton style="width:30px" ID="ImageButton1" runat="server"  OnClick="ImageButton1_Click" ImageUrl="~/mkd.png" />
        <asp:ImageButton style="width:30px" ID="ImageButton2" runat="server" ImageUrl="~/ang.png" OnClick="ImageButton2_Click" />
    </div>
	


</asp:Content>
