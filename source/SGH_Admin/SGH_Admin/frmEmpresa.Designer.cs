namespace SGH_Admin
{
    partial class frmEmpresa
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.bsEmpresa = new System.Windows.Forms.BindingSource(this.components);
            this.internalData = new System.Data.DataSet();
            this.dtSYS_EMPRESA = new System.Data.DataTable();
            this.dataColumn1 = new System.Data.DataColumn();
            this.dataColumn2 = new System.Data.DataColumn();
            this.dataColumn3 = new System.Data.DataColumn();
            this.dataColumn4 = new System.Data.DataColumn();
            this.dataColumn5 = new System.Data.DataColumn();
            this.label2 = new System.Windows.Forms.Label();
            this.txtDireccion = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.picLogoP = new System.Windows.Forms.PictureBox();
            this.label4 = new System.Windows.Forms.Label();
            this.picLogoG = new System.Windows.Forms.PictureBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.dialogFile = new System.Windows.Forms.OpenFileDialog();
            ((System.ComponentModel.ISupportInitialize)(this.bsEmpresa)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.internalData)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtSYS_EMPRESA)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picLogoP)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.picLogoG)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre";
            // 
            // txtNombre
            // 
            this.txtNombre.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsEmpresa, "NOMBRE", true));
            this.txtNombre.Location = new System.Drawing.Point(12, 38);
            this.txtNombre.Multiline = true;
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(453, 53);
            this.txtNombre.TabIndex = 1;
            // 
            // bsEmpresa
            // 
            this.bsEmpresa.DataMember = "SYS_EMPRESA";
            this.bsEmpresa.DataSource = this.internalData;
            // 
            // internalData
            // 
            this.internalData.DataSetName = "EMPRESA";
            this.internalData.Tables.AddRange(new System.Data.DataTable[] {
            this.dtSYS_EMPRESA});
            // 
            // dtSYS_EMPRESA
            // 
            this.dtSYS_EMPRESA.Columns.AddRange(new System.Data.DataColumn[] {
            this.dataColumn1,
            this.dataColumn2,
            this.dataColumn3,
            this.dataColumn4,
            this.dataColumn5});
            this.dtSYS_EMPRESA.Constraints.AddRange(new System.Data.Constraint[] {
            new System.Data.UniqueConstraint("Constraint1", new string[] {
                        "SID_EMPRESA"}, false)});
            this.dtSYS_EMPRESA.TableName = "SYS_EMPRESA";
            // 
            // dataColumn1
            // 
            this.dataColumn1.ColumnName = "SID_EMPRESA";
            // 
            // dataColumn2
            // 
            this.dataColumn2.ColumnName = "NOMBRE";
            // 
            // dataColumn3
            // 
            this.dataColumn3.ColumnName = "DIRECCION";
            // 
            // dataColumn4
            // 
            this.dataColumn4.ColumnName = "LOGO";
            this.dataColumn4.DataType = typeof(byte[]);
            // 
            // dataColumn5
            // 
            this.dataColumn5.ColumnName = "LOGO2";
            this.dataColumn5.DataType = typeof(byte[]);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 94);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Dirección:";
            // 
            // txtDireccion
            // 
            this.txtDireccion.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.bsEmpresa, "DIRECCION", true));
            this.txtDireccion.Location = new System.Drawing.Point(12, 110);
            this.txtDireccion.Multiline = true;
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.Size = new System.Drawing.Size(453, 90);
            this.txtDireccion.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(468, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "Logo Pequeño:";
            // 
            // picLogoP
            // 
            this.picLogoP.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picLogoP.DataBindings.Add(new System.Windows.Forms.Binding("Image", this.bsEmpresa, "LOGO", true));
            this.picLogoP.Location = new System.Drawing.Point(471, 38);
            this.picLogoP.Name = "picLogoP";
            this.picLogoP.Size = new System.Drawing.Size(222, 95);
            this.picLogoP.TabIndex = 5;
            this.picLogoP.TabStop = false;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 209);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(72, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Logo Grande:";
            // 
            // picLogoG
            // 
            this.picLogoG.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picLogoG.DataBindings.Add(new System.Windows.Forms.Binding("Image", this.bsEmpresa, "LOGO2", true));
            this.picLogoG.Location = new System.Drawing.Point(15, 226);
            this.picLogoG.Name = "picLogoG";
            this.picLogoG.Size = new System.Drawing.Size(601, 190);
            this.picLogoG.TabIndex = 7;
            this.picLogoG.TabStop = false;
            // 
            // button1
            // 
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Location = new System.Drawing.Point(15, 434);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(83, 24);
            this.button1.TabIndex = 8;
            this.button1.Text = "Aceptar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Location = new System.Drawing.Point(104, 434);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(85, 24);
            this.button2.TabIndex = 9;
            this.button2.Text = "Salir";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(621, 252);
            this.button3.Margin = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(65, 23);
            this.button3.TabIndex = 10;
            this.button3.Text = "Cargar";
            this.button3.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.Location = new System.Drawing.Point(471, 136);
            this.button4.Margin = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(65, 23);
            this.button4.TabIndex = 11;
            this.button4.Text = "Cargar";
            this.button4.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button5.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.Location = new System.Drawing.Point(540, 136);
            this.button5.Margin = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(65, 23);
            this.button5.TabIndex = 12;
            this.button5.Text = "Limpiar";
            this.button5.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button6.Location = new System.Drawing.Point(621, 226);
            this.button6.Margin = new System.Windows.Forms.Padding(0, 0, 0, 3);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(65, 23);
            this.button6.TabIndex = 13;
            this.button6.Text = "Limpiar";
            this.button6.TextAlign = System.Drawing.ContentAlignment.TopCenter;
            this.button6.UseVisualStyleBackColor = true;
            // 
            // dialogFile
            // 
            this.dialogFile.Filter = "Archivos BMP|*.bmp|Archivos JPG|*.jpg|Archivos PNG|*.png";
            // 
            // frmEmpresa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(711, 538);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.picLogoG);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.picLogoP);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtDireccion);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.label1);
            this.Name = "frmEmpresa";
            this.Text = "Sistema de Gestion Hospitalaria - Información de Empresa";
            this.Load += new System.EventHandler(this.frmEmpresa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bsEmpresa)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.internalData)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtSYS_EMPRESA)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picLogoP)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.picLogoG)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtDireccion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.PictureBox picLogoP;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.PictureBox picLogoG;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.BindingSource bsEmpresa;
        private System.Data.DataSet internalData;
        private System.Data.DataTable dtSYS_EMPRESA;
        private System.Data.DataColumn dataColumn1;
        private System.Data.DataColumn dataColumn2;
        private System.Data.DataColumn dataColumn3;
        private System.Data.DataColumn dataColumn4;
        private System.Data.DataColumn dataColumn5;
        private System.Windows.Forms.OpenFileDialog dialogFile;
    }
}

