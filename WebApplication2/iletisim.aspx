<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApplication2.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        height: 26px;
    }
    .auto-style7 {
        height: 26px;
        font-size: x-large;
        text-align: center;
    }
    .auto-style8 {
        font-weight: bold;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style6">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style7" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="TxtGonderen" runat="server" Height="25px" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Mail Adresimiz:</td>
                    <td>
                        <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Konu:</td>
                    <td>
                        <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Mesaj:</td>
                    <td>
                        <asp:TextBox ID="TxtMesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Gönder" Width="230px" CssClass="fb8" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </td>
        </tr>
</table>
</asp:Content>
