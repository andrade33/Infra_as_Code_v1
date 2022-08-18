#!/bin/sh

echo "============================================"
echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "============================================"
echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "============================================"
echo "Criando usuarios e determinando o grupo pertencente..."

useradd pedro -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd ana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd antonio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "============================================"
echo "Especificando diretorio ao grupo e determnando as permissoes..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim do script....."
