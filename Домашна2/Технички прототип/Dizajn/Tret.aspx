<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tret.aspx.cs" Inherits="Dizajn.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
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
    <div class="container-fluid">
        <div class="row fadeIn first">
            <asp:Button ID="Button3" runat="server" class="btn btn-md" Text="" style="float:right;background-color:lightblue" OnClick="Button3_Click" />
            <asp:Button ID="Button2" runat="server" class="btn btn-md" Text="" style="position: relative; margin-bottom:10px; float:left;background-color:lightblue;font-size:16px;height:35px" OnClick="button2_Click" />
            </div>
            <hr />

            <img id="slika" src="final.png" class="img-responsive" alt="Responsive image" />
                 
    </div>
    
    <div style="text-align: center; padding-top:50px;" class="fadeIn second">
        <asp:DropDownList ID="lista" runat="server" style=" background-color: lightblue; width:280px; height:60px; font-size:22px" OnSelectedIndexChanged="lista_SelectedIndexChanged">
            <asp:ListItem Value="-1"></asp:ListItem>
            <asp:ListItem Value="1">Тест центар 1</asp:ListItem>
            <asp:ListItem Value="2">Тест центар 2</asp:ListItem>
            <asp:ListItem Value="3">Тест центар 3</asp:ListItem>
        </asp:DropDownList>
    </div>

    <br />

    <div style="text-align: center; margin-top:15px;margin-bottom:20px;" class="fadeIn third">
    <asp:Button ID="button1" runat="server" Text="" class="btn btn-md" OnClick="button1_Click" style="background-color: lightblue; font-size:20px" />
    </div>
    
    <div style="text-align: center" >
        <asp:TextBox ID="err" runat="server" Visible="false" style="background-color:lightgoldenrodyellow"></asp:TextBox>
    </div>
        </div>


   

</asp:Content>
