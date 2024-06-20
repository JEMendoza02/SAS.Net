using System;
using System.Web.UI;
using System.Data.SqlClient;

public partial class login : Page
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

    public bool RegistrarUsuario(string nombre, string email, string password)
    {
        // Obtiene la cadena de conexión desde el archivo de configuración
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();

                string query = "INSERT INTO Usuarios (Username, contra, Email, rol) VALUES (@Nombre,@Password, @Email,2)";
                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Nombre", nombre);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                int result = cmd.ExecuteNonQuery();
                return result > 0;
            }
            catch (Exception ex)
            {
                // Manejo de excepciones si ocurre un error al insertar el usuario
                Response.Write("Error al registrar usuario: " + ex.Message);
                return false;
            }
        }
    }
    /* Tupla se usa para que el método pueda retornar 2 valores con tipos de datos diferentes*/
    public Tuple<bool, int> LoginUsuario(string email, string password)
    {
        // Obtiene la cadena de conexión desde el archivo de configuración
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            try
            {
                conn.Open();

                string query = "SELECT Rol FROM Usuarios WHERE Email = @Email AND contra = @Password";
                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                // Ejecutar consulta para obtener el rol
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    int rol = Convert.ToInt32(result);
                    return Tuple.Create(true, rol);
                }
                else
                {
                    return Tuple.Create(false, -1); // Usuario no encontrado
                }
            }
            catch (Exception ex)
            {
                // Manejo de excepciones si ocurre un error al verificar el usuario
                Response.Write("Error al iniciar sesión: " + ex.Message);
                return Tuple.Create(false, -1);
            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
{
    string email = txtEmailLogin.Text;
    string password = txtPasswordLogin.Text;
    var loginResult = LoginUsuario(email, password);

    if (loginResult.Item1) // Si el inicio de sesión es exitoso
    {
        int rol = loginResult.Item2;

        // Redirigir según el rol
        if (rol == 1)
        {
            // Rol 1: Empleado
            Response.Write("<script>alert('Login exitoso como empleado');</script>");
            Response.Redirect("dashboard_empleado.aspx");
        }
        else if (rol == 2)
        {
            // Rol 2: Cliente
            Response.Write("<script>alert('Login exitoso como cliente');</script>");
            Response.Redirect("index.aspx");
        }
        else
        {
            // Rol desconocido (esto debería manejarse adecuadamente)
            Response.Write("<script>alert('Rol de usuario desconocido');</script>");
        }
    }
    else
    {
        // Si el inicio de sesión falla, mostrar un mensaje de error
        Response.Write("<script>alert('Email o contraseña incorrectos');</script>");
    }
}


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (chkTerms.Checked)
        {
            string nombre = txtNombre.Text;
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            //Conexion conexion = new Conexion();
            if (RegistrarUsuario(nombre, email, password))
            {
                // Si el registro es exitoso, mostrar un mensaje de éxito
                Response.Write("<script>alert('Registro exitoso');</script>");
            }
            else
            {
                // Si el registro falla, mostrar un mensaje de error
                Response.Write("<script>alert('Error al registrar usuario');</script>");
            }
        }
        else
        {
            // Si el usuario no ha aceptado los términos y condiciones, mostrar un mensaje de error
            Response.Write("<script>alert('Debes aceptar los términos y condiciones');</script>");
        }
    }
}

