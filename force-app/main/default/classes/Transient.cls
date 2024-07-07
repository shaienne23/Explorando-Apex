public with sharing class Transient {
    public String conceito = 'Conceitos Apex';

    // transient utilizado para que o valor pertença apenas a classe nao sendo serializado.
    public transient String Oculto;
    public String Visivel;

    
    public void Transient(String conceito) {
        String novoConceito = 'Testes de Conceitos';
        this.conceito = novoConceito;

        this.Oculto = 'x';
        this.Visivel = 'y';
    }

    public void showConceito(){
        Transient('aqui aparece o que esta visivel');
        System.debug(JSON.serialize(this));
    }
}

//Transient transient = new Transient();
//transient.showConceito();