<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Vtor.aspx.cs" Inherits="Dizajn._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


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

    <div class="fadeInDown">
    <div class="wrapper fadeIn first" style="text-align:right; font-size:26px">
    <asp:Button ID="Button5" runat="server" class="btn btn-md" Text="" style="float:right;background-color:lightblue" OnClick="Button5_Click" />
    <asp:Button ID="Button2" runat="server" class="btn btn-md" Text="" style="float:left;background-color:lightblue;margin-right:5px" OnClick="Button2_Click" />
    <br />
    <hr />
    </div>

    <div>
    <div id="tekst" style="margin-top:150px">

   <div style="text-align: center;font-size:50px" class="fadeIn first">
        <asp:Label ID="label1" runat="server" Text=""></asp:Label>
   </div>

   <div style="text-align: center;font-size:30px;" class="fadeIn second">
       <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
   </div>

   <div style="text-align: center;font-size:25px;" class="fadeIn second">
       <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
   </div>

    </div>


        <div class="wrapper" style="text-align:center">

            <img src="strelka.png" style="align-self:center;width:60px" class="fadeIn fourth"/><br />
 
             <asp:Button ID="Button1" runat="server" class="btn btn-md fadeIn fourth" Text="" style="background-color: lightblue; height:70px; width:120px;font-size:22px;margin-bottom:20px;" OnClick="Button1_Click"/>
   
        </div>

    </div>
        </div>

    
</asp:Content>
