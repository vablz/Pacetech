/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */
package DesafioSemana6;

import java.util.Scanner;

/**
 *
 * @author jonathandamasiomedeiros
 */
public class Principal {

    public static void main(String[] args) {

        int menu, grausC, grausF, reais, dolares, cotacao = 0;

        System.out.println("Começo do Programa...");
        Scanner leitor = new Scanner(System.in);

        do {
            System.out.println("--------------------------------------------------------------------------------------------------------------");
            System.out.println("Digite 1 para converter graus Celsius para graus Farenheit ou converter graus Farenheit para graus Celsius ");
            System.out.println("");
            System.out.println("Digite 2 para converter Reais para Dólares ou Dólares para Reais ");
            System.out.println("--------------------------------------------------------------------------------------------------------------");
            menu = leitor.nextInt();

            switch (menu) {
                case 1:

                    System.out.println("Digite 1 para converter graus Celsius para graus Farenheit ou 2 para converter graus Farenheit para Graus Celsius");
                    menu = leitor.nextInt();

                    switch (menu) {

                        case 1:
                            System.out.println("Você escolheu a opção 1");
                            System.out.println("Digite os graus Celsius que você deseja converter para graus Fahrenheit: ");
                            grausC = leitor.nextInt();
                            grausF = (grausC + 32) * (9 / 5);
                            System.out.println("A temperatura em Farenheit é: " + grausF + "ºF");
                            break;
                        case 2:
                            System.out.println("Você escolheu a opção 2");
                            System.out.println("Digite os graus Fahrenheit que você deseja converter para graus Celsius: ");
                            grausF = leitor.nextInt();
                            grausC = (grausF - 32) / (9 / 5);
                            System.out.println("A temperatura em Celsiust é: " + grausF + "ºC");
                            break;

                        default:
                            System.out.println("Opção inválida, tente novamente!");
                            break;

                    }

                    break;

                case 2:
                    System.out.println("Digite 1 para converter Reais para Dólares ou 2 para converter Dólares para Reais");
                    menu = leitor.nextInt();

                default:
                    System.out.println("Opção inválida, tente novamente!");
                    break;

                    switch (menu) {

                        case 1:
                            System.out.println("Você escolheu a opção 1");
                            System.out.println("Diga a cotação desejada");
                            cotacao = leitor.nextInt(); 
                            System.out.println ("Diga o valor em Reais");
                            reais = leitor.nextInt();
                            dolares = reais/cotacao;
                            System.out.println(reais + "Reais, são " + dolares + " Dólares");
                            break;

                        case 2:
                            System.out.println("Você escolheu a opção 2");
                            System.out.println("Diga a cotação desejada");
                            cotacao = leitor.nextInt(); 
                            System.out.println ("Diga o valor em Dólares");
                            dolares = leitor.nextInt();
                            reais = dolares*cotacao;
                            System.out.println(dolares + "Dólares, são " + reais + " Reais");

                            break;

                        default:
                            System.out.println("Opção inválida, tente novamente!");
                            break;

                    }

            }

        } while (menu != 3);

    }
}
