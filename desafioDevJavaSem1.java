package desafioDevJavaSem1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        
        ArrayList<Integer> listax = new ArrayList<>();
        
        Scanner scanner = new Scanner(System.in);
        int x = 0;
        System.out.println("Digite o numero sorteado, ou -1 para finalizar: ");
        
        while (x != -1) {
            
            x = scanner.nextInt();
            if (x != -1) {
                listax.add(x);
             
            }

        }
        Collections.sort(listax);
        int primeiroNum = listax.get(0);
        int ultimoNum = listax.get(listax.size()-1);
        int totalNum = listax.size();
        System.out.println(listax);
        System.out.println("O menor numero e: " + primeiroNum);
        System.out.println("O maior numero e: " + ultimoNum);
        System.out.println("O numero total de numeros sorteados e: " + totalNum);

    }
}

