﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;  // view panel after clicking
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // Insert new order in DB.
        SqlDataSource2.Insert();
        GridView2.DataBind();

        // Clear text boxes.
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;

        Panel1.Visible = false; // close panel
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        // Clear text boxes.
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;

        Panel1.Visible = false; // close panel
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Button4.Text == "Редактировать заказы")
        {
            GridView2.AutoGenerateEditButton = true;
            Button4.Text = "Закончить редактирование";
        } else
        {
            GridView2.AutoGenerateEditButton = false;
            Button4.Text = "Редактировать заказы";
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Button5.Text == "Удалить заказ")
        {
            GridView2.AutoGenerateDeleteButton = true;
            Button5.Text = "Закончить удаление";
        } else
        {
            GridView2.AutoGenerateDeleteButton = false;
            Button5.Text = "Удалить заказ";
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;  // view panel after clicking
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        if (Button7.Text == "Редактировать данные покупателя")
        {
            GridView1.AutoGenerateEditButton = true;
            Button7.Text = "Закончить редактирование";
        }
        else
        {
            GridView1.AutoGenerateEditButton = false;
            Button7.Text = "Редактировать данные покупателя";
        }
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        if (Button8.Text == "Удалить покупателя")
        {
            GridView1.AutoGenerateDeleteButton = true;
            Button8.Text = "Закончить удаление";
        }
        else
        {
            GridView1.AutoGenerateDeleteButton = false;
            Button8.Text = "Удалить покупателя";
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        // Insert new order in DB.
        SqlDataSource1.Insert();
        GridView1.DataBind();

        // Clear text boxes.
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;

        Panel2.Visible = false; // close panel
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        // Clear text boxes.
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
        TextBox6.Text = string.Empty;

        Panel2.Visible = false; // close panel
    }
}