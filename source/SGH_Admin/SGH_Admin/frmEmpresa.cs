using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;

namespace SGH_Admin
{
    public partial class frmEmpresa : Form
    {
        #region private Variables
        private EXLi.Data.eDatabase _database;
        //private DataSet internalData = null;
        private IDbDataAdapter internalAdapter = null;
        #endregion

        #region SQL Variables
        private string selectCommandSQL = "SELECT * FROM SYS_EMPRESA";
        private string updateCommandSQL = @"UPDATE SYS_EMPRESA 
                                            SET 
                                                NOMBRE=@NOMBRE, 
                                                DIRECCION = @DIRECCION                                                 
                                            WHERE 
                                                SID_EMPRESA=@SID_EMPRESA";
        #endregion

        public frmEmpresa()
        {
            InitializeComponent();
        }        

        private byte[] GetFileContent(string fileName)
        {
            FileStream f = new FileStream(fileName, FileMode.Open, FileAccess.Read);
            int len = Convert.ToInt32(f.Length);
            byte[] fileContent = new byte[len];

            f.Read(fileContent, 0, len);
            f.Close();

            return fileContent;
        }

        private IDbDataAdapter CreateDataAdapter()
        {
            IDbDataParameter param1;
            IDbDataAdapter _adapter = _database.GetDataAdapter(selectCommandSQL);
            
            _adapter.UpdateCommand = _database.CreateCommand();
            _adapter.UpdateCommand.CommandText = updateCommandSQL;

            param1 = _adapter.UpdateCommand.CreateParameter();
            param1.ParameterName = "@SID_EMPRESA";
            param1.SourceColumn = "SID_EMPRESA";
            param1.SourceVersion = DataRowVersion.Current;
            param1.DbType = DbType.String;
            _adapter.UpdateCommand.Parameters.Add(param1);

            param1 = _adapter.UpdateCommand.CreateParameter();
            param1.ParameterName = "@NOMBRE";
            param1.SourceColumn = "NOMBRE";
            param1.SourceVersion = DataRowVersion.Current;
            param1.DbType = DbType.String;
            _adapter.UpdateCommand.Parameters.Add(param1);

            param1 = _adapter.UpdateCommand.CreateParameter();
            param1.ParameterName = "@DIRECCION";
            param1.SourceColumn = "DIRECCION";
            param1.SourceVersion = DataRowVersion.Current;
            param1.DbType = DbType.String;
            _adapter.UpdateCommand.Parameters.Add(param1);

            _adapter.TableMappings.Add("Table", "SYS_EMPRESA");
            return _adapter;
        }

        private void UpdateImage(string fieldName, byte[] fieldValue, object keyValue)
        {
            string sql = string.Format("UPDATE SYS_EMPRESA SET {0}=@{0} WHERE SID_EMPRESA=@SID_EMPRESA",fieldName);
            IDbCommand cmd = _database.CreateCommand();
            cmd.CommandText = sql;

            IDbDataParameter param1 = cmd.CreateParameter();
            param1.ParameterName = "@" + fieldName;
            param1.DbType = DbType.Binary;
            param1.Value = fieldValue;
            cmd.Parameters.Add(param1);

            param1 = cmd.CreateParameter();
            param1.ParameterName = "@SID_EMPRESA";
            param1.DbType = DbType.String;
            param1.Value = keyValue;

            cmd.Parameters.Add(param1);

            _database.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            finally
            {
                if (_database.State == ConnectionState.Open)
                    _database.Close();
            }        
        }       

        private void frmEmpresa_Load(object sender, EventArgs e)
        {        
            _database = EXLi.Utilities.eApplication.GetAppDatabase();
            internalAdapter = CreateDataAdapter();
            _database.FillDataTable(selectCommandSQL,internalData.Tables["SYS_EMPRESA"]);            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            bsEmpresa.EndEdit();
            
            internalAdapter.Update(internalData);
            internalData.AcceptChanges();
            MessageBox.Show("Datos Salvados con exito");



        }

        private void button4_Click(object sender, EventArgs e)
        {
            
            byte[] fileContent;

            if (dialogFile.ShowDialog() == DialogResult.OK)
            {
                picLogoP.Image = Image.FromFile(dialogFile.FileName);
                fileContent = GetFileContent(dialogFile.FileName);

                UpdateImage("LOGO", fileContent, internalData.Tables["SYS_EMPRESA"].Rows[0]["SID_EMPRESA"]);                 
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {                    
            byte[] fileContent;
            if (dialogFile.ShowDialog() == DialogResult.OK)
            {
                picLogoG.Image = Image.FromFile(dialogFile.FileName);

                fileContent = GetFileContent(dialogFile.FileName);

                UpdateImage("LOGO2", fileContent, internalData.Tables["SYS_EMPRESA"].Rows[0]["SID_EMPRESA"]);                 
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            Application.Exit();
        }
    }
}