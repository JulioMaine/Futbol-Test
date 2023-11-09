<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Resultado.aspx.cs" Inherits="PaginaWebFutbol.Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="row">
                <divdiv class="col-2">
                </divdiv>
                <div class="col text-center">
                    <div>
                        <asp:Label ID="lblAprobacion" CssClass="h1 mt-5" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblPuntuacion" CssClass="h2 mt-5 text-white" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
                <div class="col-2">

                </div>
            </div>
         <div class="row justify-content-center">
                    <asp:Image ID="imgAprobacion" runat="server" Width="550px"  CssClass="object-fit-fill mt-5 mb-5" />
         </div>
</asp:Content>
