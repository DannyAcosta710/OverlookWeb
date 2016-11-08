<%@ Page Title="dsdsxs" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="OverlookWeb._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style>
        #contenedorDefault{
            background-image: url(http://www.hdwallpaper.nu/wp-content/uploads/2016/05/u7GYupt.png );
            background-size: 152vh 100vh;
            background-repeat:no-repeat;
            min-width:100vh;
            min-height:100vh;
        }
        #heroes{
            min-width:100vh;
            min-height:100vh;
        }
        .imgAtributo{
            width:100px;
        }
        .atributos{
            float:left;
            padding:11.1vh;
        }
        button{
            border-radius:2vh;
            background-color:black;
            color:white;
        }
        button:hover {
            background-color: #FCBD49;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contenedorDefault">
        <header class="headMenu">Heroes</header>
        <div id="heroes">
            <div class="atributos">
                <button><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-attack-large.png" />
                <p>Ataque</p></button>
            </div>
            <div class="atributos">
                <button><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-defense-large.png" />
                <p>Defensa</p></button>
            </div>
            <div class="atributos">
                <button><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-tank-large.png" />
                <p>Tank</p></button>
            </div>
            <div class="atributos">
                <button><img class="imgAtributo" src="http://www.overwatchgg.com/wp-content/uploads/2016/06/flip-support-large.png" />
                <p>Healer</p></button>
            </div>
        </div>
    </div>
</asp:Content>