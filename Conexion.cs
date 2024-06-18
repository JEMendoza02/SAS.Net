using System;
using System.Data.SqlClient;

public partial class Conexion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Método que se ejecuta al cargar la página
        if (!IsPostBack)
        {
            // Intenta establecer la conexión
            if (ProbarConexion())
            {
                // Si la conexión es exitosa, muestra un mensaje en la página HTML
                Response.Write("<script>console.log('Conexion exitosa')</script>");
            }
            else
            {
                // Si no se puede conectar, muestra un mensaje de error
                Response.Write("<script>console.log('Conexion fallida')</script>");
            }
        }
    }

    private bool ProbarConexion()
    {
        // Intenta conectar utilizando la cadena de conexión desde web.config
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();
                return true; // Si la conexión se abre correctamente, devuelve true
            }
            catch (Exception ex)
            {
                // Manejo de excepciones si la conexión falla
                Response.Write("Error al conectar a la base de datos: " + ex.Message);
                return false;
            }
        }
    }
}
