
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
