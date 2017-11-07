using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AdminProjects.TareasPrincipales
{

    public class ProcedimientosAltaActividades
    {
        ClaseGeneral  Proceso = new ClaseGeneral();


        public DataTable ConsultapProyectosActivos(string _status)
        {
            DataTable dt = new DataTable();
            IList<IDbDataParameter> Lista = new List<IDbDataParameter>();
            IDbDataParameter dato = new SqlParameter("@Status", SqlDbType.NVarChar) { Value = _status };
            Lista.Add(dato);
            SqlDataAdapter adaptador = Proceso.BuscarElementosConParametro("sp_ProyectosPorStatus", Lista);
            adaptador.Fill(dt);
            return dt;
        }

        public DataTable ConsultaEntregables(string _folio)
        {
            DataTable dt = new DataTable();
            IList<IDbDataParameter> Lista = new List<IDbDataParameter>();
            IDbDataParameter dato = new SqlParameter("@FolioProyecto", SqlDbType.NVarChar) { Value = _folio };
            Lista.Add(dato);
            SqlDataAdapter adaptador = Proceso.BuscarElementosConParametro("sp_MostrarEntregables", Lista);
            adaptador.Fill(dt);
            return dt;
        }



    }
}