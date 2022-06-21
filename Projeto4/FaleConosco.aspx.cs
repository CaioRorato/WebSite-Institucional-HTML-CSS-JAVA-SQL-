using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//PACOTE COM AS CLASSE PARA ENVIAR EMAIL
using System.Net.Mail;
using System.Net;
using ADS2022M;

namespace Projeto4
{
    public partial class FaleConosco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            try
            {

                //1. Validar os dados registrados
                if (Mensagem.Text.Trim() == "")
                {
                    Msg.Text = "Digite a Mensagem";
                }
                else if (Nome.Text.Trim() == "")
                {
                    Msg.Text = "Digite seu Nome";
                }
                else if (Email.Text.Trim() == "")
                {
                    Msg.Text = "Digite o Email";
                }
                else
                {
                    //2. CRIAR O EMAIL
                    MailMessage mail = new MailMessage();
                    mail.To.Add("contato@seudominio.com.br");
                    MailAddress from = new MailAddress("contato@seudominio.com.br");
                    mail.From = from;
                    mail.Subject = "Email enviado pelo form de contato";
                    mail.IsBodyHtml = false;
                    mail.Body = "Mensagem: " + Mensagem.Text.Trim() + "\n ";
                    mail.Body += "Nome: " + Nome.Text.Trim() + "\n";
                    mail.Body += "E-mail" + Email.Text.Trim() + "\n";

                    //3. ENVIAR O E-MAIL
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.seudominio.com.br";
                    smtp.Credentials = new NetworkCredential("contato@seudominio.com.br", "suasenha");
                    smtp.EnableSsl = true;
                    smtp.Send(mail);

                    //4. LIMPAR A MEMÓRIA
                    mail.Dispose();
                    smtp.Dispose();

                }

            }
            catch (Exception ex)
            {
                Msg.Text = "Houve uma falha ao enviar o E-mail";

                ControleExcecoes salvar = new ControleExcecoes();
                salvar.SaveException(ex);
            }
        }
    }
}