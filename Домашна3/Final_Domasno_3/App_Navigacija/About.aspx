<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="App_Navigacija.About" %>
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

    <div class="fadeIn first">
    <asp:Button ID="Button4" runat="server" class="btn btn-md" Text="Назад" style="float:right;background-color:lightblue" OnClick="Button4_Click"/>
    </div>
    <br />
    <hr />
    <div class="jumbotron fadeIn second" style="margin-top:40px">
    <h2>Систем за пребарување и навигација до ковид центри</h2>
    <p>Преку овој систем, корисниците ќе имаат можност во секој момент да најдат најблиско место каде можат да направат PCR тест за COVID-19, тест за антитела и сл.
Со користење на оваа програма е олеснето наоѓањето на центрите каде може да се направи тест и овозможува лесна навигација до него.
Проблемот со кој се соочуваме е пандемија од светско ниво.
Почнувајќи од овој факт треба да забележеме и да размслиме за тоа како би го решиле проблемот настанат од оваа пандемија со цел да се обезбеди лесен пристап до тест и стручен медицински и епидемиолошки персонал. 
Нашиот систем систем елиминира непотребни контакти и овозможува лесен пристап до секаков тест.</p>
     </div>

     </div>



</asp:Content>
