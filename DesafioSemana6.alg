package DesafioSemana6;

import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {

        int menu, menu2, menu3 = 0;
        float grausC, grausF, cotacao, dolares, reais =0;

        System.out.println("Começo do Programa...");
        Scanner leitor = new Scanner(System.in);

        do {
            System.out.println("--------------------------------------------------------------------------------------------------------------");
            System.out.println("Digite 1 para converter graus Celsius para graus Farenheit ou converter graus Farenheit para graus Celsius ");
            System.out.println("");
            System.out.println("Digite 2 para converter Reais para Dolares ou Dolares para Reais ");
            System.out.println("");
            System.out.println("Digite 3 para sair");
            System.out.println("--------------------------------------------------------------------------------------------------------------");
            menu = leitor.nextInt();

            switch (menu) {
                case 1:
do{
                    System.out.println("Digite 1 para converter graus Celsius para graus Farenheit ou 2 para converter graus Farenheit para Graus Celsius (digite 3 para voltar ao menu principal)");
                    menu2 = leitor.nextInt();

                    switch (menu2) {

                        case 1:
                            System.out.println("Voce escolheu a opcao 1");
                            System.out.println("Digite os graus Celsius que voce deseja converter para graus Fahrenheit: ");
                            grausC = leitor.nextFloat();
                            grausF = (grausC * 9/5) + 32;
                            System.out.println("A temperatura em Farenheit e: " + String.format("%.2f", grausF) + "F");
                            break;
                        case 2:
                            System.out.println("Voce escolheu a opcao 2");
                            System.out.println("Digite os graus Fahrenheit que voce deseja converter para graus Celsius: ");
                            grausF = leitor.nextFloat();
                            grausC = (grausF - 32)*5/9;
                            System.out.println("A temperatura em Celsiust e: " + String.format("%.2f", grausC) + "C");
                            break;
                            
                        case 3:
                            break;

                        default:
                            System.out.println("Opcao invalida, tente novamente!");
                            break;
                            
                            } 

                    } while (menu2 != 3);

                    break;

                case 2:
                    do {
                    System.out.println("Digite 1 para converter Reais para Dolares ou 2 para converter Dolares para Reais (digite 3 para voltar ao menu principal)");
                    menu3 = leitor.nextInt();
                    switch (menu3) {

                        case 1:
                            System.out.println("Voce escolheu a opcao 1");
                            System.out.println("Diga a cotação desejada");
                            cotacao = leitor.nextFloat(); 
                            System.out.println ("Diga o valor em Reais");
                            reais = leitor.nextFloat();
                            dolares = reais/cotacao;
                            System.out.println(reais + "Reais, sao " + String.format("%.2f", dolares) + " Dolares");
                            break;

                        case 2:
                            System.out.println("Voce escolheu a opcao 2");
                            System.out.println("Diga a cotação desejada");
                            cotacao = leitor.nextFloat(); 
                            System.out.println ("Diga o valor em Dolares");
                            dolares = leitor.nextFloat();
                            reais = dolares*cotacao;
                            System.out.println(dolares + "Dolares, sao " + String.format("%.2f", reais) + " Reais");

                            break;
                            
                            case 3:
                            break;

                        default:
                            System.out.println("Opcao invalida, tente novamente!");
                            break;
                            
                    }  

                    } while (menu3 != 3);

                case 3:
                    System.out.println("Voce escolheu sair!");
                            break;
                            
                default:
                System.out.println("Opcao invalida, tente novamente!");
                break;

            }

        } while (menu != 3);

    }
}
