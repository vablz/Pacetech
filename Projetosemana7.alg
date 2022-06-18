//Main.java


package projetoSemana7;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
    
        Empregado objetoEmpregado = new Empregado();
        
        Scanner leitor = new Scanner(System.in);
        
        int menu = 0;
        
       do{
        System.out.println ("Digite 1 para executar o programa e 2 para sair");  
        menu = leitor.nextInt();
        
        switch (menu) {
            
        case 1:
        
        System.out.println ("Digite o primeiro nome do primeiro empregado");
        objetoEmpregado.nome1 = leitor.next();
        
        System.out.println ("Digite o segundo nome do primeiro empregado");
        objetoEmpregado.nome2 = leitor.next();
        
        System.out.println ("O nome completo do primeiro  empregado e " + objetoEmpregado.calcularnomeCompleto());
        
        System.out.println ("Digite o primeiro nome do segundo empregado");
        objetoEmpregado.nome1 = leitor.next();
        
        System.out.println ("Digite o segundo nome do segundo empregado");
        objetoEmpregado.nome2 = leitor.next();
        
        System.out.println ("O nome completo do segundo  empregado e " + objetoEmpregado.calcularnomeCompleto());
        
         // if (objetoEmpregado.salarioMensal < 0); ?????
      
        
       System.out.println ("Digite o salario mensal do primeiro empregado");
       objetoEmpregado.salarioMensal = leitor.nextFloat();
       System.out.println ("O salario anual do primeiro empregado e " + objetoEmpregado.calcularsalarioAnual());
       System.out.println ("Ele acabou de ganhar um aumento de 10% em seus salarios");
       objetoEmpregado.salarioMensal = objetoEmpregado.salarioMensal + (objetoEmpregado.salarioMensal/10);
       System.out.println ("Agora o salario do primeiro empregado e " + objetoEmpregado.calcularsalarioAnual());
       
       System.out.println ("Digite o salario mensal do segundo empregado");
       objetoEmpregado.salarioMensal = leitor.nextFloat();
       System.out.println ("O salario anual do segundo empregado e " + objetoEmpregado.calcularsalarioAnual());
       System.out.println ("Ele acabou de ganhar um aumento de 10% em seus salarios");
       objetoEmpregado.salarioMensal = objetoEmpregado.salarioMensal + (objetoEmpregado.salarioMensal/10);
       System.out.println ("Agora o salario do segundo empregado e " + objetoEmpregado.calcularsalarioAnual()); 
        break;
        
        case 2:
        System.out.println ("Voce escolheu sair!");
        break;
        
        default:
        System.out.println("Opcao invalida, tente novamente!");
        break;
        
       }
        
    }while (menu !=2);    
       
    } 
}


//-----------------------------------
//-----------------------------------




//Empregado.java


package projetoSemana7;

public class Empregado {  
    
    //Atributos
    String nome1;
    String nome2;
    float salarioMensal;
    
    //Metodos
    public float calcularsalarioAnual () {
     if (salarioMensal < 0){
       salarioMensal = 0;
       }else{ 
       salarioMensal = salarioMensal;
       }
    float salarioAnual = (salarioMensal * 12);
    return salarioAnual;  
    
    } 
    
    public String calcularnomeCompleto () {
        
    String nomeCompleto = (nome1 + " " + nome2);
    return nomeCompleto;
    
    }

    //Fim dos metodos 
    
    public String getNome1() {
        return nome1;
    }

    public String getNome2() {
        return nome2;
    }

    public float getSalarioMensal() {
        return salarioMensal;
    }

    public void setNome1(String nome1) {
        this.nome1 = nome1;
    }

    public void setNome2(String nome2) {
        this.nome2 = nome2;
    }

    public void setSalarioMensal(float salarioMensal) {
       if (salarioMensal < 0){
       this.salarioMensal = 0;
       }else{ 
       this.salarioMensal = salarioMensal;
       }
    }
    
    
    
}

