algoritmo "Atividade semana 4"
// Autor :  Vito Aquiles Boaventura Lenzi Zoboli
// Data : 26/05/2022

var
grausC, grausF, dolar, reais, conversao: real
opcaoMenu, opcaocaso5: literal

inicio
repita


   escreval ("Digite 1 para converter graus Celsius para Fahrenheit")
   escreval ("Digite 2 para converter graus Fahrenheit para Celsius")
   escreval ("Digite 3 para converter Dólar para Reais")
   escreval ("Digite 4 para converter Reais para Dólar")
   escreval ("Digite 5 para sair")

   leia (opcaoMenu)
   escolha opcaoMenu

   caso "1"
      grausC <- 0
      grausF <- 0

      escreval ("Você escolheu converter graus Celsius para Fahrenheit")
      escreval ("Informe os graus Celsius que deseja converter:")
      leia (grausC)
      grausF <- (grausC * 1.8) +32
      escreval ("A temperatura em graus fahrenheit é: ", grausF:1:2, " ºF")
      escreval ("")


   caso "2"
      grausC <- 0
      grausF <- 0

      escreval ("Você escolheu converter graus Fahrenheit para Celsius")
      escreval ("Informe os graus Fahrenheit que deseja converter:")
      leia (grausF)
      grausC <- (grausF - 32) / 1.8
      escreval ("A temperatura em graus Celsius é: ", grausC:1:2, " °C")
      escreval ("")

   caso "3"
      dolar <- 0
      reais <- 0
      conversao <- 0

      escreval ("Você escolheu converter Dólar para Reais")
      escreval ("Quantos Reais valem 1 Dólar?")
      leia (reais)
      escreval ("Qual é o valer de Dólares que você deseja converter?")
      leia (dolar)
      conversao <- dolar * reais
      escreval ("O valor da conversão é: ", conversao:1:2, " Reais")
      escreval ("")

   caso "4"
      dolar <- 0
      reais <- 0
      conversao <- 0

      escreval ("Você escolheu converter Reais para Dólar")
      escreval ("Quantos Dólares valem 1 Real?")
      leia (dolar)
      escreval ("Qual é o valer de Reais que você deseja converter?")
      leia (reais)
      conversao <- dolar * reais
      escreval ("O valor da conversão é: ", conversao:1:2, " Dólares")
      escreval ("")

   caso "5"
      escreval ("Deseja mesmo sair? 1- para Sim e 2- para Não")
      leia (opcaocaso5)
      se opcaocaso5 = "1" entao
         escreval ("Você escolheu sair no programa")
      senao
         escreval ("Você escolheu continuar no programa")
         escreval ("")
      fimse

   outrocaso
      escreval ("Opção inválida")
   fimescolha
   escreval ("")

ate opcaocaso5 = "1"

fimalgoritmo
