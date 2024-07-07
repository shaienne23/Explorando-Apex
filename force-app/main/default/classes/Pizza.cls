public abstract with sharing class Pizza {
   private Integer QuantidadeSabores{get;set;}
   
    public Pizza(Integer quantidadeSabores) {
        this.QuantidadeSabores = quantidadeSabores;
    }

    public abstract List<String> ingredientes();

    public void prepararPizza(){
        for(String ingrediente : ingredientes()) {
            System.debug(ingrediente);
        }
    }
}