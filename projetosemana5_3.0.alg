algoritmo "dasafio_semana5"
// Autor : Vitor Aquiles (vablz)
// Data : 03/06/2022

var

opcao,i,j:inteiro
vC,vF,conversao: vetor[1..4] de real
vH: vetor[1..4] de inteiro
auxHora: inteiro
auxTemp, auxConversao: real

procedimento CpF

inicio


para i de 1 ate 4 faca

   Escreval("Informe a temperatura em Celsius")
   leia(vC[i])

   conversao[i] <- (vC[i]*1.8)+32

   limpatela

   Escreval("Informe que horas eram quando colotou a informação anterior")
   leia(vH[i])

   limpatela


   para j de 1 ate 4 faca
      se vC[j] > vC[i] entao
         auxTemp <- vC[i]
         auxHora <- vH[i]
         auxConversao <- conversao [i]
         vC[i] <- vC[j]
         vH[i] <- vH[j]
         conversao[i] <- conversao[j]
         vC[j] <- auxTemp
         vH[j] <- auxHora
         conversao[j] <- auxConversao
      fimse

   fimpara
fimpara

   para i de 1 ate 4 faca

      Escreval ("A temperatura é: ",vC[i]," ºC, registrada as ", vH[i], "h, e correspondem a ", conversao[i]:1:2," ºF")
   fimpara


fimprocedimento

procedimento FpC

inicio

para i de 1 ate 4 faca

   Escreval("Informe a temperatura em Fahrenheit")
   leia(vF[i])

   conversao[i] <- (vF[i]-32)/1.8

   limpatela

   Escreval("Informe que horas eram quando colotou a informação anterior")
   leia(vH[i])

   limpatela


   para j de 1 ate 4 faca
      se vF[j] > vF[i] entao
         auxTemp <- vF[i]
         auxHora <- vH[i]
         auxConversao <- conversao [i]
         vF[i] <- vF[j]
         vH[i] <- vH[j]
         conversao[i] <- conversao[j]
         vF[j] <- auxTemp
         vH[j] <- auxHora
         conversao[j] <- auxConversao
      fimse

   fimpara
fimpara

   para i de 1 ate 4 faca

   Escreval ("A temperatura é: ",vF[i]," ºF, registrada as ", vH[i], "h, e correspondem a ", conversao[i]:1:2," ºC")
   fimpara


fimprocedimento


inicio

repita

Escreval("Escolha uma das opções abaixo:")
Escreval("")
Escreval("1 - Converter graus Fahrenheit para graus Celsius")
Escreval("2 - Converter graus Celsius para graus Fahrenheit")
Escreval("3 - sair")
leia(opcao)


escolha opcao

caso 1

CpF

caso 2

FpC

caso 3

opcao <- 3

outrocaso

escreval("Opção inválida")


fimescolha


ate opcao = 3

fimalgoritmo
