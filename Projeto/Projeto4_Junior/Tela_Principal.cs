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
    public partial class Form_Index : Form
    {
        public Form_Index()
        {
            InitializeComponent();
        }
        private void inserirClienteMenuItem_Click(object sender, EventArgs e)
        {
            Form_CadastroClientes cad_cli = new Form_CadastroClientes();
            cad_cli.ShowDialog();
        }

        private void alterarClienteMenuItem_Click(object sender, EventArgs e)
        {
            Form_AlterarCliente alt_cli = new Form_AlterarCliente();
            alt_cli.ShowDialog();
        }

        private void listarClienteMenuItem_Click(object sender, EventArgs e)
        {
            Form_ListarClientes list_cli = new Form_ListarClientes();
            list_cli.ShowDialog();
        }

        private void removerClienteMenuItem_Click(object sender, EventArgs e)
        {
            Form_RemoverCliente remov_cli = new Form_RemoverCliente();
            remov_cli.ShowDialog();
        }

        private void button_CadastrarClienteBarraDeFerramentas_Click(object sender, EventArgs e)
        {
            Form_CadastroClientes cad_cli = new Form_CadastroClientes();
            cad_cli.ShowDialog();
        }
    }
}
