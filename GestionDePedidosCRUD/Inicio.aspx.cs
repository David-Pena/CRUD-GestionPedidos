using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionDePedidosCRUD
{
    public partial class Inicio : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ddlVista_SelectedIndexChanged(object sender, EventArgs e)
        {
            int opcion = ddlVista.SelectedIndex;
            switch (opcion)
            {
                case 0: MultiView1.ActiveViewIndex = -1; break;
                case 1: MultiView1.SetActiveView(VistaAgregarClientesVendedores); break;
                case 2: MultiView1.SetActiveView(VistaRegistrar); break;
                case 3: MultiView1.SetActiveView(VistaConsultar); break;
                case 4: MultiView1.SetActiveView(VistaFacturar); break;
            }
        }

        protected void btnRegistrarPedido_Click(object sender, EventArgs e)
        {
            if (txtIngresarCantidad.Text == "" || txtImpuesto.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Debe llenar todos los campos!');", true);
            }
            else
            {
                Random r = new Random();
                float tax = float.Parse(txtImpuesto.Text);
                float total = float.Parse(txtIngresarCantidad.Text) * float.Parse(ddlPrecioUnitario.SelectedValue);
                float impuesto = (float)(total * tax);
                string insertQuery = "INSERT INTO Pedido VALUES('" + r.Next() + "','" + ddlProducto.SelectedValue + "','" + txtIngresarCantidad.Text + "','" + (total + impuesto) + "','" + ddlCliente.SelectedValue + "','" + ddlVendedor.SelectedValue + "','" + ddlEstado.SelectedValue + "','" + ddlPrecioUnitario.SelectedValue + "','" + txtImpuesto.Text + "')";
                conn.Open();
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.ExecuteNonQuery();
                conn.Close();

                LimpiarCamposRegistro();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Pedido registrado exitosamente');", true);
            }   
        }

        protected void GuardarCliente(object sender, EventArgs e)
        {
            if (txtCedula.Text == "" || txtNombre.Text == "" || txtApellido.Text == "" || txtDireccion.Text == "" ||
                txtTelefono.Text == "" || txtCelular.Text == "" || txtCorreo.Text == "" || txtEdad.Text == "" ||
                ddlSexo.SelectedValue == "" || txtFecha.Text == "" || ddlMetodoPago.SelectedValue == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Debe llenar todos los campos!');", true);
            }
            else
            {
                SqlDataSource1.Insert();
                LimpiarCamposCliente();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Cliente agregado exitosamente');", true);
            }
        }

        protected void GuardarVendedor(object sender, EventArgs e)
        {
            if (txtCedulaVendedor.Text == "" || txtNombreVendedor.Text == "" || txtApellidoVendedor.Text == "" || txtDireccionVendedor.Text == "" ||
                txtTelefonoVendedor.Text == "" || txtCelularVendedor.Text == "" || txtCorreoVendedor.Text == "" || txtEdadVendedor.Text == "" ||
                ddlSexoVendedor.SelectedValue == "" || txtFechaVendedor.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Debe llenar todos los campos!');", true);
            }
            else
            {
                SqlDataSource2.Insert();
                LimpiarCamposVendedor();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Vendedor agregado exitosamente');", true);
            } 
        }

        protected void LimpiarCamposRegistro()
        {
            txtIngresarCantidad.Text = "";
            txtImpuesto.Text = "";
        }

        protected void LimpiarCamposCliente()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCelular.Text = "";
            txtCorreo.Text = "";
            txtEdad.Text = "";
            ddlSexo.SelectedValue = "";
            txtFecha.Text = "";
            ddlMetodoPago.SelectedValue = "";
        }

        protected void LimpiarCamposVendedor()
        {
            txtCedulaVendedor.Text = "";
            txtNombreVendedor.Text = "";
            txtApellidoVendedor.Text = "";
            txtDireccionVendedor.Text = "";
            txtTelefonoVendedor.Text = "";
            txtCelularVendedor.Text = "";
            txtCorreoVendedor.Text = "";
            txtEdadVendedor.Text = "";
            ddlSexoVendedor.SelectedValue = "";
            txtFechaVendedor.Text = "";
        }

        protected void LlenarDataList()
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Pedido WHERE Estado='" + ddlFiltrarEstado.SelectedValue + "'", conn);
                DataSet ds = new DataSet();
                conn.Open();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            finally
            {
                conn.Close();
            }

        }

        protected void btnFiltrarFacturaXEstado_Click(object sender, EventArgs e)
        {
            LlenarDataList();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
                LlenarDataList();
            }
            else if (e.CommandName == "cancel")
            {
                DataList1.EditItemIndex = -1;
                LlenarDataList();
            }
            else if (e.CommandName == "update")
            {
                string id = ((Label)e.Item.FindControl("Label2")).Text;
                string producto = ((Label)e.Item.FindControl("Label3")).Text;
                string cantidad = ((Label)e.Item.FindControl("Label4")).Text;
                string total = ((Label)e.Item.FindControl("Label5")).Text;
                string cliente = ((Label)e.Item.FindControl("Label6")).Text;
                string vendedor = ((Label)e.Item.FindControl("Label7")).Text;
                string status = ((DropDownList)e.Item.FindControl("DropDownList1")).SelectedValue;
                string unidad = ((Label)e.Item.FindControl("Label9")).Text;
                string impuesto = ((Label)e.Item.FindControl("Label10")).Text;
                SqlCommand cmd = new SqlCommand("UPDATE Pedido SET IDProducto='" + producto + "',Cantidad='" + cantidad + "',PrecioTotal='" + total + "',IDCliente='" + cliente + "',IDVendedor='" + vendedor + "',Estado='" + status + "',PrecioUnitario='" + unidad + "',Impuesto='" + impuesto + "' WHERE NoPedido=" + id, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                DataList1.EditItemIndex = -1;
                LlenarDataList();
            }
            else if (e.CommandName == "delete")
            {
                string id = ((Label)e.Item.FindControl("Label2")).Text;
                SqlCommand cmd = new SqlCommand("DELETE FROM Pedido WHERE NoPedido='" + id + "'", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                LlenarDataList();
            }
        }

        protected void btnBuscarCliente_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM Cliente WHERE Nombre LIKE '%" + txtBuscarCliente.Text + "%' OR Cedula LIKE '%" + txtBuscarCliente.Text + "%'";
            SqlDataSource1.DataBind();
        }

        protected void btnBuscarVendedor_Click(object sender, EventArgs e)
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM Vendedor WHERE Nombre LIKE '%" + txtBuscarVendedor.Text + "%' OR Cedula LIKE '%" + txtBuscarVendedor.Text + "%'";
            SqlDataSource2.DataBind();
        }

        protected void btnBuscarProducto_Click(object sender, EventArgs e)
        {
            SqlDataSource3.SelectCommand = "SELECT * FROM Producto WHERE Nombre LIKE '%" + txtBuscarProducto.Text + "%' OR Codigo LIKE '%" + txtBuscarProducto.Text + "%'";
            SqlDataSource3.DataBind();
        }
    }
}