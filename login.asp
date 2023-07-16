<html>

    <body>
        <h1>
            <font face="Verdana">Login ProMerica</font>
        </h11>
        <table>
            <tr>
                <td>Usuario :</td>
                <td><input id="txtUserName" type="text" runat="server"></td>
                <td><ASP:RequiredFieldValidator ControlToValidate="txtUsuario"
                Display="Static" ErrorMessage="Ingrese usuario" runat="server" 
                ID="vUserName" /></td>
            </tr>
            <tr>
                <td>Clave:</td>
                <td><input id="txtUserPass" type="password" runat="server"></td>
                <td><ASP:RequiredFieldValidator ControlToValidate="txtClave"
                Display="Static" ErrorMessage="Ingrese Clave" runat="server"
                ID="vUserPass" />
                </td>>
        </table>
        <input type="submit" Value="Login" runat="server" ID="cmdLogin"><p></p>
        <asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
    </body>
</html>