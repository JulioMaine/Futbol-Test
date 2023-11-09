<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PaginaWebFutbol.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScripManagerDefault" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="UpdatePanelDefault">
        <ContentTemplate>

            <div class="row align-items-start">
                <div class="col-2">
                </div>
                <div class="col text-center">
                    <p class=" text-white text-center fs-4">Elige una opción:</p>
                    <asp:Button ID="btnSelecciones" runat="server" CssClass="btn btn-dark btn-lg mb-3 btnTamañoInicio" OnClick="btnSelecciones_Click" Style="margin-top: auto;" Text="Selecciones" />
                    <br />
                    <asp:Button ID="btnEquipos" runat="server" class="btn btn-dark btn-lg btnTamañoInicio" OnClick="btnEquipos_Click" Text="Equipos" />
                </div>
                <div class="col-2">
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
