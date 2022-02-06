Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Paula Mayumi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 17/03/2021
Var
// Se��o de Declara��es das vari�veis 
cad:vetor[1..5]de inteiro
numero:inteiro
opcao:inteiro
x:inteiro//x contador da fila
i:inteiro
j:inteiro
m:inteiro
z:inteiro
k:inteiro
chumavez:inteiro

// Se��o de Comandos, procedimento, fun��es, operadores, etc...


procedimento adicionar()
Inicio
se x>=6 entao
   escreval("A fila est� cheia")
senao
   escreval("Digite um n�mero que deseja inserir na fila")
   leia(numero)
      cad[x]:=numero
      x:=x+1
fimse
fimprocedimento



procedimento remover()
inicio
se x>5 entao
   escreval("A fila est� cheia")
senao
  para j de 1 ate 4 passo 1 faca
     cad[j]:=cad[j+1]
  fimpara
fimse
cad[5]:=0
x:=x-1
fimprocedimento



procedimento limpar()
inicio
se x>5 entao
   escreval("A fila est� cheia")
senao
para z de 1 ate 5 passo 1 faca
cad[z]:=0
fimpara
fimse
x:=0
fimprocedimento



procedimento listar()
inicio
se x>5 entao
   escreval("A fila est� cheia")
senao
  para z de 1 ate 5 passo 1 faca
     se cad[z]<>0 entao
        escreval(cad[z])
           z:=z+1
     fimse
  fimpara
fimse
fimprocedimento



procedimento filavazia()
inicio
se cad[1]=0 entao
     escreva("fila vazia")
senao
     escreva("fila n�o vazia")
fimse
fimprocedimento



procedimento merge(comeco,fim:inteiro)
var
meio:real
inicio
//se chumavez=0 entao
//chumavez:=1
//escreval("arquivo desordenado")
//para m de 1 ate 5 passo 1 faca
//escreval(cad[m])
//fimpara
//fimse
se comeco<fim entao
   meio:=(comeco+fim)div 2
   merge(comeco,meio)
   merge(meio+1,fim)
   intercala(comeco,fim,meio)
fimse
se chumavez=0 entao
   chumavez:=1
   escreval("")
   escreval("vetor ordenado com sucesso")
   escreval("")
fimse
fimprocedimento



procedimento intercala(comeco,fim,meio:inteiro)
var
posLivre,comecoVet1,comecoVet2,n:inteiro
aux:vetor[1..5]de inteiro
inicio
 comecoVet1:=comeco
 comecoVet2:=meio+1
 posLivre:=comeco
 enquanto (comecoVet1<= meio) e (comecoVet2<= fim) faca
           se cad[comecoVet1]<=cad[comecoVet2]entao
            aux[posLivre]:=cad[comecoVet1]
            comecoVet1:=comecoVet1+1
           senao
            aux[posLivre]:=cad[comecoVet2]
            comecoVet2:=comecoVet2+1
           fimse
            posLivre:=posLivre+1
 fimenquanto
 para n de comecoVet1 ate meio passo 1 faca
     aux[posLivre]:=cad[n]
     posLivre:=posLivre+1
 fimpara
 para n de comecoVet2 ate fim passo 1 faca
     aux[posLivre]:=cad[n]
     posLivre:=posLivre+1
 fimpara
 para n de comeco ate fim passo 1 faca
     cad[n]:=aux[n]
 fimpara
fimprocedimento



inicio//inicio do programa principal
x:=1
enquanto x<=6 faca
   escreval("1 - Adicionar")
   escreval("2 - Remover")
   escreval("3 - Limpar")
   escreval("4 - Listar")
   escreval("5 - Fila vazia")
   escreval("6 - merge")
   escreval("7 - para sair")
   escreva("escolha uma op��o: ")
   leia(opcao)
   se(opcao>=7) entao
    escreva("sair do sistema")
    interrompa
   fimse
   escolha opcao
   caso 1
   adicionar()
   caso 2
   remover()
   caso 3
   limpar()
   caso 4
   listar()
   caso 5
   filavazia()
   caso 6
   merge(1,5)
   fimescolha
fimenquanto
se opcao>=7 entao
  escreva("sair do sistema")
  interrompa
fimse
Fimalgoritmo