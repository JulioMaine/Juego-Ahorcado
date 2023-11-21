<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prueba_Ahorcado.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <title>Juego del ahorcado</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" ID="ScriptManager"></asp:ScriptManager>
        <asp:UpdatePanel runat="server" ID="update">
            <ContentTemplate>
                <div class="d-flex justify-content-center flex-column align-items-center" style="height: 500px">
                    <div>
                        <asp:Label ID="lblIntentos" runat="server" Text="">Intentos: <%:Intentos%>/5</asp:Label>
                    </div>
                    <div class="mb-4">
                        <asp:Label ID="lblPalabra" CssClass="fs-1" runat="server" Text=""></asp:Label>
                    </div>
                    <div>
                        <% if (Botones)
                            { %>
                        <p>
                            <asp:Button ID="btnA" runat="server" OnClick="btn_Click" Text="A" Width="23px" />
                            <asp:Button ID="btnB" runat="server" OnClick="btn_Click" Text="B" />
                            <asp:Button ID="btnC" runat="server" OnClick="btn_Click" Text="C" />
                            <asp:Button ID="btnD" runat="server" OnClick="btn_Click" Text="D" />
                            <asp:Button ID="btnE" runat="server" OnClick="btn_Click" Text="E" Width="23px" />
                            <asp:Button ID="btnF" runat="server" OnClick="btn_Click" Text="F" />
                            <asp:Button ID="btnG" runat="server" OnClick="btn_Click" Text="G" />
                            <asp:Button ID="btnH" runat="server" OnClick="btn_Click" Text="H" />
                            <asp:Button ID="btnI" runat="server" OnClick="btn_Click" Text="I" />
                            <asp:Button ID="btnJ" runat="server" OnClick="btn_Click" Text="J" />
                            <asp:Button ID="btnK" runat="server" OnClick="btn_Click" Text="K" />
                            <asp:Button ID="btnL" runat="server" OnClick="btn_Click" Text="L" />
                            <asp:Button ID="btnM" runat="server" OnClick="btn_Click" Text="M" Width="25px" />
                            <asp:Button ID="btnN" runat="server" OnClick="btn_Click" Text="N" />
                        </p>
                        <p>
                            <asp:Button ID="btnO" runat="server" OnClick="btn_Click" Text="O" />
                            <asp:Button ID="btnP" runat="server" OnClick="btn_Click" Text="P" />
                            <asp:Button ID="btnQ" runat="server" OnClick="btn_Click" Text="Q" />
                            <asp:Button ID="btnR" runat="server" OnClick="btn_Click" Text="R" />
                            <asp:Button ID="btnS" runat="server" OnClick="btn_Click" Text="S" Width="24px" />
                            <asp:Button ID="btnT" runat="server" OnClick="btn_Click" Text="T" />
                            <asp:Button ID="btnU" runat="server" OnClick="btn_Click" Text="U" />
                            <asp:Button ID="btnV" runat="server" OnClick="btn_Click" Text="V" />
                            <asp:Button ID="btnW" runat="server" OnClick="btn_Click" Text="W" />
                            <asp:Button ID="btnX" runat="server" OnClick="btn_Click" Text="X" />
                            <asp:Button ID="btnY" runat="server" OnClick="btn_Click" Text="Y" />
                            <asp:Button ID="btnZ" runat="server" OnClick="btn_Click" Text="Z" />
                        </p>
                        <% } %>
                    </div>
                    <asp:Label ID="lblPrueba" runat="server" Text=""></asp:Label>
                    <a href="Default.aspx" class="btn btn-success mt-5" id="btnReset" runat="server">Reset</a>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
