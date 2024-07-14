public with sharing class Cotacao {
 public String code; //Moeda de origem
 public String codein; //Moeda de destino
 public String name; // Nome da Moeda
 public String high; //Máximo
 public String low; //Mínimo
 public String varBid; //Variação
 public String pctChange; //Porcentagem de Variação
 public String bid; //Compra
 public String ask; //Venda
 public String timestamp; // Data da Cotação em Timestamp
 public String create_date; // Data da Cotação

 public static List<Cotacao> parse(String JSONString) {
    return (List<Cotacao>)JSON.deserialize(jsonString, List<Cotacao>.class);
 }
}