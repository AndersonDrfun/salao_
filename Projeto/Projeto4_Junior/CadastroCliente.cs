﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Projeto4_Junior
{
    public partial class Form_CadastroClientes : Form
    {
        public Form_CadastroClientes()
        {
            InitializeComponent();
        }

        private void button_CancelarCadastroCliente_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
