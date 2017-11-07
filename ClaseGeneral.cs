using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.Common;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace AdminProjects
{
    public class ClaseGeneral
    {
        private SqlConnection conexion = new SqlConnection("Data Source=PALOMAMTZ\\PALOMALIDIA;Initial Catalog = AdminProjects;Trusted_Connection=true;");
        //private SqlConnection conexion = new SqlConnection("workstation id=AdminProjects.mssql.somee.com;packet size=4096;user id=mycloud_SQLLogin_1;pwd=amcs2317ug;data source=AdminProjects.mssql.somee.com;persist security info=False;initial catalog=AdminProjects");

        private SqlCommand CrearComando()
        {
            conexion.Close();
            conexion.Open();
            SqlCommand Comando = new SqlCommand();
            Comando.Connection = conexion;
            Comando.CommandType = CommandType.StoredProcedure;
            return Comando;

        }
        //Buscar elementos sin un parámetro
        public SqlDataAdapter BuscarElementosSinParametro(string NombreProcedimiento)
        {
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;
            SqlDataAdapter resultado = new SqlDataAdapter(Comando);
            return resultado;
        }
        //Buscar elementos enviandole un parametro
        public SqlDataAdapter BuscarElementosConParametro(string NombreProcedimiento, IList<IDbDataParameter> lista_parametros)
        {
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;
            foreach (IDbDataParameter parameter in lista_parametros)
            {
                Comando.Parameters.Add(parameter);
            }
            //Comando.Parameters.Add(_parametro);
            SqlDataAdapter da = new SqlDataAdapter(Comando);
            return da;
        }
        public SqlDataAdapter ObtenerPDF(string NombreProcedimiento, IList<IDbDataParameter> lista_parametros)
        {
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;
            foreach (IDbDataParameter parameter in lista_parametros)
            {
                Comando.Parameters.Add(parameter);
            }
            SqlDataAdapter da = new SqlDataAdapter(Comando);
            return da;
        }
        public void GuardarDatos(string NombreProcedimiento, IList<IDbDataParameter> lista_parametros)
        {
            
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;

            foreach (IDbDataParameter parameter in lista_parametros)
            {
                Comando.Parameters.Add(parameter);
            }
            Comando.ExecuteNonQuery();
            //this.conexion.Close();
        }
        public void EliminarDato(string NombreProcedimiento, IList<IDbDataParameter> lista_parametros)
        {
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;
            foreach (IDbDataParameter parameter in lista_parametros)
            {
                Comando.Parameters.Add(parameter);
            }
            Comando.ExecuteNonQuery();
        }
        public int ContadorProyectos(string NombreProcedimiento)
        {
            int contador;
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;
            contador = (int)Comando.ExecuteScalar();
            this.conexion.Close();
            return contador;
        }
        public int ContadorGeneral(string NombreProcedimiento, IDbDataParameter _clave)
        {
            int contador;
            SqlCommand Comando = CrearComando();
            Comando.CommandText = NombreProcedimiento;
            Comando.Parameters.Add(_clave);
            contador = (int)Comando.ExecuteScalar();
            this.conexion.Close();
            return contador;
        }
    }
}


