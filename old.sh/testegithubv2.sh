#!/bin/bash
# Teste de commit ao github
#
Principal() {
  echo "Teste de Github Versão 1.0"
  echo "------------------------------------------"
  echo "Opções:"
  echo
  echo "1. Adicionar chave ssh ao github"
  echo "2. Commitar Arquivos"
  echo "3. Sair do exemplo"
  echo
  echo -n "Qual a opção desejada? "
  read opcao
  case $opcao in
    1) Adicionar ;;
    2) Commitar ;;
    3) exit ;;
    *) "Opção desconhecida." ; echo ; Principal ;;
  esac
}
 
Adicionar() {
  clear
  echo "Iniciando o Agente ssh em Background"
  eval "$(ssh-agent -s)"
  sleep 1s
  echo -n "Qual o Caminho da Chave? "
  read keyname
  echo "ATENÇÃO! Digite a Senha de sua chave."
  sleep 1s
  ssh-add $keyname 2>&-
  RESULT=$?
  sleep 2s
   if [ $RESULT -eq 0 ]; then
     echo "Arquivo Localizado!"
     echo "Efetuando seu Login ao Github! =]"
     ssh -T git@github.com
     echo "A chave foi adicionada! com sucesso"
     sleep 1s     
     ssh-add -l -E md5
     exit 0

   else
     echo "Arquivo não localizado. Escolha novamente uma das opções"
   fi
  Principal
}
 
Commitar() {
  clear
  echo -n "Qual o comentario que deseja incluir? "
  read comentario
  git add *
  git commit -m "$comentario" #já concatenar o comentário sem aspas 
  git push origin master

  exit 0
  Principal
}
 

Principal