public with sharing class ConceitosApex {
    // Final se assemelha a Const de javascript, nao podendo haver alterações em variaveis final.
   private final String conceito = 'Conceitos de Apex';
    
    //Este trecho(conceito = 'Conceito Novo') daria erro pois não será possivel a alteração
   public void ConceitosApex() {
        //conceito = 'Conceito Novo'
        System.debug(conceito);
    }
}

//anonymous
//ConceitosApex c = new ConceitosApex();
//c.ConceitosApex();
