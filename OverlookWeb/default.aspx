<%@ Page Title="dsdsxs" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="OverlookWeb._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>
        #heroesAtributos td {
            padding-bottom:3%;
            text-align:center;
        }
        #heroesAtributos tr {
            padding-bottom:3%;
        }
        .imgAtributo{
            width:100px;
                        
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="heroes">
        <table id="heroesAtributos">
            <tr>
                <td>
                    <p><a href=""><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-attack-large.png" /></p>
                    <p>Ataque</p></a>
                </td>
                <td>
                    <a href=""><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-defense-large.png" />
                    <p>Defensa</p></a>
                </td>
            </tr>
            <tr>
                <td>
                    <a href=""><img class="imgAtributo" src="http://owinfinity.com/wp-content/themes/overwatch-theme/assets/images/icons/skill-common/flip-tank-large.png" />
                    <p>Tank</p></a>
                </td>
                <td>
                    <a href=""><img class="imgAtributo" src="http://www.overwatchgg.com/wp-content/uploads/2016/06/flip-support-large.png" />
                    <p>Healer</p></a>
                </td>
            </tr>
        </table>
        
    </div>
</asp:Content>
