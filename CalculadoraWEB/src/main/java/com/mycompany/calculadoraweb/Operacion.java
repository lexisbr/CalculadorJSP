package com.mycompany.calculadoraweb;

/**
 *
 * @author lex
 */
public class Operacion {
    private double num1 = 0;
    private double num2 = 0;

    public Operacion(double num1, double num2) {
        this.num1 = num1;
        this.num2 = num2;
   
    }
    
    public double getSuma(){
        double resultado = num1 + num2;
        return resultado;
    }
    
    public double getMultiplicacion(){
        double resultado = num1 * num2;
        return resultado;
    }
    
    public double getMayor(){
        if(num1>num2){
            return num1;
        }else{
            return num2;
        }
    }
    
    public double getPotencia(){
        double resultado = Math.pow(num1, num2);
        return resultado;
    }
    
    public String getBinario1(){
        String binario="";
        if(num1>0){
            while(num1 >0){
                   if(num1%2==0){
                       binario = "0"+binario;
                   }else{
                       binario = "1"+binario;
                   }
                  num1 = (int) num1/2;  
            }
            return binario;
        }else{
            System.out.println("error numero negativo");
            return "0";
        }
        
    }
   
    public String getBinario2(){
        String binario="";
        if(num2>0){
            while(num2 >0){
                   if(num2%2==0){
                       binario = "0"+binario;
                   }else{
                       binario = "1"+binario;
                   }
                  num2 = (int) num2/2;  
            }
            return binario;
        }else{
            System.out.println("error numero negativo");
            return "0";
        }
        
    }
    
}