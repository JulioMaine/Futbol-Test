<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PreguntasEquipos.aspx.cs" Inherits="PaginaWebFutbol.PreguntasEquipos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" ID="ScripManagerEquipos">
    </asp:ScriptManager>
    <asp:UpdatePanel runat="server" ID="updatePanelEquipos">
        <ContentTemplate>
            <div class="row">
                <div class="col text-end">
                    <asp:Label ID="Label1" runat="server" CssClass="fs-5 h2 text-white" Text="">Pregunta: <%: NroPregunta %>/10</asp:Label>
                </div>
                <div class="col">
                </div>
                <div class="col text-start">
                    <asp:Label ID="lblCorrectas" runat="server" CssClass="fs-5 h2 me-3 text-white" Text="Label">✔️ Correctas: <%: RespuestasCorrectas %> </asp:Label>
                    <asp:Label ID="lblIncorrectas" runat="server" CssClass="fs-5 h2 text-white" Text="Label">❌ Incorrectas: <%: RespuestasIncorrectas %></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-2">
                </div>
                <div class="col text-center mt-2 mb-2">
                    <br />
                    <div>
                        <asp:Label ID="lblPregunta" runat="server" class=" h2 fs-2 text-white" Text="PREGUNTA"></asp:Label>
                        <asp:Label ID="lblNumeroPregunta" runat="server" CssClass="fs-5 h2s text-white" Text=""></asp:Label>
                    </div>
                </div>
                <div class="col-2">
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-3">
                </div>
                <div class="col">
                    <!-- CURSO DE BOOTSTRAP ANTES DE SEGUIR E INTENTAR CUALQUIER COSA... -->
                    <div>
                        <asp:Button ID="btnOpcionA" runat="server" CssClass="btn btn-dark btn-lg anchoBotonesRespuestas" OnClick="btnOpcionA_Click" Text="Opción A" />
                        <asp:Button ID="btnOpcionB" runat="server" CssClass="btn btn-dark btn-lg float-end anchoBotonesRespuestas" OnClick="btnOpcionB_Click" Text="Opción B" />
                    </div>                                                           
                    <div class="mt-2">                                               
                        <asp:Button ID="btnOpcionC" runat="server" CssClass="btn btn-dark btn-lg anchoBotonesRespuestas" OnClick="btnOpcionC_Click" Text="Opción C" />
                        <asp:Button ID="btnOpcionD" runat="server" CssClass="btn btn-dark btn-lg float-end anchoBotonesRespuestas" OnClick="btnOpcionD_Click" Text="Opción D" />
                    </div>
                    <div class="text-center mt-4">
                        <asp:Label ID="lblRespuesta" runat="server" CssClass="form-label fs-3 text-white" Text=""></asp:Label>
                    </div>
                    <div class="text-center mt-2">
                        <asp:Button ID="BtnSiguiente" runat="server" Text="Siguiente" CssClass="btn btn-dark btn-lg" OnClick="BtnSiguiente_Click" />
                    </div>
                </div>
                <div class="col-3">
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
