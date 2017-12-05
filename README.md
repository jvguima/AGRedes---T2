AGRedes---T2
João Victor Lopes da Silva Guimarães   8936843
Rafael Pedrosa Silva Clerici   9422928
Augusto Paulo Silva   9266639

IPs
Em adição aos IPs já especificados no 1o relatório, o computador INTERNET, que
representa acessos de redes externas, tem o ip 192.168.1.1 e o FIREWALL, na
interface eth0 tem o ip 192.168.2.1

SERVIÇOS------------------------------------------------------------------------
As máquinas da rede interna utilizam DNS, com o Root server localizado no
ROTEADOR1, uma zona "maximaonline" em ROTEADOR2, "maximaonlinestore" em SERVIDOR
e "netadm" em NETADM.

O osCommerce teve seus arquivos colocados na máquina SERVIDOR. Apesar de
tentativas de inicializá-lo, ele aparenta ser incompatível com a natureza do
ambiente do netkit, por versões desatualizadas de PHP e MySQL, além dos browsers
dispoíveis serem incapazes de renderizar propriamente a tela de configuração
interativa do osCommerce.


SENHAS--------------------------------------------------------------------------
O laboratório está utilizando as senhas default nos serviços, caso contrário
seria necessário alterar o filesystem do netkit para deixar as alterações
permanentes.

Para alterar as senhas do MySQL

sudo /etc/init.d/mysql stop
sudo mysqld --skip-grant-tables &
mysql -u root mysql
UPDATE user SET Password=PASSWORD('YOURNEWPASSWORD') WHERE User='root'; FLUSH PRIVILEGES; exit;
sudo /etc/init.d/mysql restart
