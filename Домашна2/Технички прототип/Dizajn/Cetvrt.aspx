<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cetvrt.aspx.cs" Inherits="Dizajn.Navigacija" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row" style="margin-top:3px;">
    <asp:Button ID="Button6" runat="server" class="btn btn-md" Text="Sign out" style="float:right;background-color:lightblue" OnClick="Button6_Click" />
    <asp:Button ID="Button1" runat="server" class="btn btn-md" Text="Назад" OnClick="Button1_Click" style="float:left;background-color:lightblue"/>
    </div>
	<hr />

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
			<div style="text-align: center" class="fadeIn first">
            <asp:Label ID="naslov" runat="server" Text=""></asp:Label>
			</div>
			<br />
 			<hr>
			<br />
			<div class="row fadeIn second">
				<div class="col-md-5" style="background-color:dodgerblue;text-align:center">
 					

				   <asp:TextBox ID="TextBox1" runat="server" style="margin-top:20px" ></asp:TextBox><br />

					<img src="strelka.png" style="align-self:center;width:20px" /><br />

                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					<br />
					<br />
					<hr />
					
				</div>
				
				<div class="col-md-1">
					<!-------null------>
				</div>
				
				<div class="col-md-5">
 				 		
					
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d47436.117038508484!2d21.36410541811356!3d42.005483628198405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1354146ed2aaff4b%3A0xdd79f5654c79d7e7!2sKarposh%2C%20Skopje%201000!5e0!3m2!1sen!2smk!4v1607129652816!5m2!1sen!2smk" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
  
					
				</div>
			</div>
		</div>
		
	</div>
	</div>
	


</asp:Content>

