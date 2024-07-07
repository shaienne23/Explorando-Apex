public with sharing class ConceitosApex {
    // Final se assemelha a Const de javascript, nao podendo haver alterações em variaveis final.
   private final String conceito = 'Cnceitos de Apex';
    
    //Este trecho(conceito = 'Conceito Novo') daria erro pois não será possivel a alteração
   public ConceitosApex() {
        //conceito = 'Conceito Novo'
        System.debug(conceito);
    }
}