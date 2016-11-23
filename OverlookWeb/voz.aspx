<%@ Page Title="" Language="C#" MasterPageFile="~/Overlook.Master" AutoEventWireup="true" CodeBehind="voz.aspx.cs" Inherits="OverlookWeb.voz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #cph div{
            text-align:center;
            font-family:BigNoodle;
            margin:0 auto;
            margin-top:1em;
            font-size:10em;
        }
        output{
            text-align:center;
            font-size:1em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <output id="result"></output>
    <output id="resultao"></output>
    <div><a href="voz.aspx">Pregunta de nuevo</a></div>
    <script src="speech2txt.js"></script>
</asp:Content>
