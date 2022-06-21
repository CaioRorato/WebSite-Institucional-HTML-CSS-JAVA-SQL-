using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Adicionar a DLL AppDatabase 4.0 nas referências do projeto.
using AppDatabase;
using ADS2022M;
using System.Data;



namespace Projeto4
{
    public partial class Usuarios : System.Web.UI.Page
    {
        //CRIAR A STRING COM A CONEXÃO COM O ACCESS
        // ref: http://connectionstrings.com
        // 1. CRIAR A STRING DE CONEXÃO COM O BD ACCESS

        string conexao = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source = "+HttpContext.Current.Server.MapPath("~/App_Data/DBADSM2022.accdb") +  ";Persist Security Info=False;";

        // DECLARAÇÃO DA INSTÂNCIA DA CLASSE DE TRANSAÇÃO COM O BANCO DE DADOS
        // QUE ESTÁ PRESENTE NO PACOTE "Bin...
        OleDBTransaction db = new OleDBTransaction();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadUsuarios();
        }

        protected void LoadUsuarios()
        {
            string comando = "SELECT Codigo,NomeCompleto,NomeAcesso FROM Usuarios ORDER BY NomeCompleto ASC;";

            DataTable tb = new DataTable();
            db.ConnectionString = conexao;
            tb = (DataTable)db.Query(comando);
            // coloque os dados da variável tb no DataGrid "ExibirUsuarios"
            ExibirUsuarios.DataSource = tb;
            ExibirUsuarios.DataBind();

            // libere os dados da tabela temporária tb
            tb.Dispose();
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            if(PossoGravar(NomeAcesso.Text.Trim().ToLower(), Codigo.Text)==false)
            {
                Mensagem.Text = "Este nome de acesso já existe para outro usuários";
            }
            
            else if (NomeCompleto.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome ";
            }
            else if(NomeAcesso.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome de acesso ";
            }
            else if(Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite sua senha ";
            }
            else
            {
                string comando = "";
                if (Codigo.Text != "")
                {
                    // UPDATE
                    // NÂO SE ESQUEÇA DO WHERE NO UPDATE
                    comando = "UPDATE Usuarios SET NomeCompleto='" + Filter(NomeCompleto.Text) + "', NomeAcesso = '" + Filter(NomeAcesso.Text) + "', Senha = '" + Filter(Senha.Text) + "' WHERE Codigo = " + Codigo.Text + ";";
                }
                else
                {
                    // INSERT
                    // 2. CRIAR A STRING DE COMANDO SQL PARA SER ENVIADA AO BD.
                    comando = "INSERT INTO Usuarios (NomeCompleto,NomeAcesso,Senha) VALUES('" + Filter(NomeCompleto.Text) + "','" + Filter(NomeAcesso.Text) + "','" + Filter(Senha.Text) + "');";

                }
                //3. CONECTA AO BANCO DE DADOS E ENVIA O COMANDO.
                db.ConnectionString = conexao;
                db.Query(comando);
                Mensagem.Text = "Dados inseridos";
                LoadUsuarios();
                LimparControles();
                
            }
        }
        protected void LimparControles()
        {
            Mensagem.Text = "";
            Codigo.Text = "";
            NomeAcesso.Text = "";
            NomeCompleto.Text = "";
            Senha.Text = "";
            Excluir.Visible = false;
        }

        protected string Filter(string exp)
        {
            return exp.Replace("'", "''");
        }

        protected void ExibirUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Text = ExibirUsuarios.SelectedRow.Cells[1].Text;

            string comando = "SELECT * FROM Usuarios WHERE Codigo = " + Codigo.Text;
            DataTable tb = new DataTable();
            db.ConnectionString = conexao;
            tb = (DataTable)db.Query(comando);

            NomeCompleto.Text = tb.Rows[0]["NomeCompleto"].ToString();
            NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
            Senha.Text = tb.Rows[0]["Senha"].ToString();
            Excluir.Visible = true;
        }

        protected void Excluir_Click(object sender, EventArgs e)
        {
            //TAREFA: IMPLEMENTAR O MÉTODO PARA EXCLUIR O REGISTRO SELECIONADO.
            string comando = "DELETE FROM Usuarios WHERE Codigo=" + Codigo.Text;
            db.ConnectionString = conexao;
            db.Query(comando);
            LoadUsuarios();
            LimparControles();

           
        }

        protected bool PossoGravar(string nomeacesso, string codigo)
        {
            string comando = "SELECT * FROM Usuarios WHERE NomeAcesso =' " + nomeacesso + "'";
            DataTable tb = new DataTable();
            db.ConnectionString = conexao;
            tb = (DataTable)db.Query(comando);

            if(tb.Rows.Count==0)
            {
                return true;
            }
            else
            {
                if(tb.Rows[0]["Codigo"].ToString()==codigo)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }



        }
    }
}
