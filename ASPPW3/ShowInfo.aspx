<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowInfo.aspx.cs" Inherits="ShowInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Номер" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Имя" SortExpression="Name"></asp:BoundField>
                <asp:BoundField DataField="Surname" HeaderText="Фамилия" SortExpression="Surname"></asp:BoundField>
                <asp:BoundField DataField="YearOfBirth" HeaderText="Год рождения" SortExpression="YearOfBirth"></asp:BoundField>
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:TradeCompanyDBConnectionString %>" SelectCommand="SELECT * FROM [Customers]" InsertCommand="Insert into Customers (Name,Surname,YearOfBirth) values (@Name,@Surname,@YearOfBirth)" UpdateCommand="Update Customers set Name=@Name,Surname=@Surname,YearOfBirth=@YearOfBirth where Id=@Id" DeleteCommand="Delete from Customers where Id=@Id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Id"></asp:ControlParameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" PropertyName="Text" Name="Name"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox5" PropertyName="Text" Name="Surname"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox6" PropertyName="Text" Name="YearOfBirth"></asp:ControlParameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Name"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Surname"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="YearOfBirth"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="Id"></asp:ControlParameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div>&nbsp;</div>
        <div>&nbsp;<asp:Button runat="server" Text="Добавить покупателя" ID="Button6" OnClick="Button6_Click"></asp:Button> <asp:Button runat="server" Text="Редактировать данные покупателя" ID="Button7" OnClick="Button7_Click"></asp:Button> <asp:Button runat="server" Text="Удалить покупателя" ID="Button8" OnClick="Button8_Click"></asp:Button> </div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>
            
            <asp:Panel runat="server" ID="Panel2" Visible="False">
                <p>Имя: <asp:TextBox runat="server" ID="TextBox4"></asp:TextBox> </p>
                <p>Фамилия: <asp:TextBox runat="server" ID="TextBox5"></asp:TextBox></p>
                <p>Год рождения: <asp:TextBox runat="server" ID="TextBox6"></asp:TextBox></p>
                <asp:Button runat="server" Text="Добавить" ID="Button9" OnClick="Button9_Click"></asp:Button>
                <asp:Button runat="server" Text="Отменить" ID="Button10" OnClick="Button10_Click"></asp:Button>
            </asp:Panel>
            &nbsp;</div>
        <div>&nbsp;</div>
        <div>&nbsp;</div>
        <div>
            <asp:GridView runat="server" ID="GridView2" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="Id">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Номер" ReadOnly="True" InsertVisible="False" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="Название товара" SortExpression="Title"></asp:BoundField>
                    <asp:BoundField DataField="IdCust" HeaderText="Номер заказчика" ReadOnly="True" SortExpression="IdCust"></asp:BoundField>
                    <asp:BoundField DataField="Price" HeaderText="Цена" SortExpression="Price"></asp:BoundField>
                    <asp:BoundField DataField="Quant" HeaderText="Количество" SortExpression="Quant"></asp:BoundField>
                </Columns>
            </asp:GridView>
            
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:TradeCompanyDBConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([IdCust] = @IdCust)" InsertCommand="Insert into Orders (Title,IdCust,Price,Quant) values (@Title,@IdCust,@Price,@Quant)" UpdateCommand="Update Orders set Title=@Title,IdCust=@IdCust,Price=@Price,Quant=@Quant where Id=@Id" DeleteCommand="Delete from Orders where Id=@Id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="Id"></asp:ControlParameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="Title"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="IdCust"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" Name="Price"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox3" PropertyName="Text" Name="Quant"></asp:ControlParameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="IdCust" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="Title"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="IdCust"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="Price"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="Quant"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="GridView2" PropertyName="SelectedValue" Name="Id"></asp:ControlParameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            &nbsp;</div>
        <div>
            <asp:Button runat="server" Text="Добавить заказ" ID="Button1" OnClick="Button1_Click"></asp:Button>&nbsp;<asp:Button runat="server" Text="Редактировать заказы" OnClick="Button4_Click" ID="Button4"></asp:Button> <asp:Button runat="server" Text="Удалить заказ" ID="Button5" OnClick="Button5_Click"></asp:Button></div>
        <div>
            
            <asp:Panel runat="server" ID="Panel1" Visible="False">
                <p>Название товара: <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox> </p>
                <p>Цена: <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox></p>
                <p>Количество: <asp:TextBox runat="server" ID="TextBox3"></asp:TextBox></p>
                <asp:Button runat="server" Text="Добавить" ID="Button2" OnClick="Button2_Click"></asp:Button>
                <asp:Button runat="server" Text="Отменить" ID="Button3" OnClick="Button3_Click"></asp:Button>
            </asp:Panel>
            &nbsp;</div>
    </form>
</body>
</html>
