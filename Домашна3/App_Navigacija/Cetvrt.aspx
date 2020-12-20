<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cetvrt.aspx.cs" Inherits="App_Navigacija.Cetvrt" %>
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
 					

				   <asp:DropDownList ID="lista" runat="server" style="width:280px; height:60px; margin-top:20px; font-size:22px" OnSelectedIndexChanged="Lista_SelectedIndexChanged">
					 <asp:ListItem Value="-1"></asp:ListItem>
					 </asp:DropDownList>

					<br />

					<img src="strelka.png" style="align-self:center;width:20px" /><br />

                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
					<br />
					<br />
					
                    <asp:Button ID="distanca" runat="server" Text="" OnClick="Distanca_Click" />
					<br />
					<br />
					  <asp:TextBox ID="distance" runat="server" style="text-align:center"></asp:TextBox>
					<br />

					<hr />
					
				</div>
				
				<div class="col-md-1">
					<!-------null------>
				</div>
				
				<div class="col-md-5">
 				 		
					<div>
                    <asp:TextBox ID="lon" Visible="false" runat="server"></asp:TextBox>
			    	<asp:TextBox ID="lat" Visible="false" runat="server"></asp:TextBox>
				
					</div>	
				    <asp:PlaceHolder ID="mapa" runat="server"/>
				
			</div>
		</div>
		
	</div>
	</div>

    </div>

</asp:Content>
