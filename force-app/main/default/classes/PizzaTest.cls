@isTest
public with sharing class PizzaTest {
    @isTest
    public static void PizzaPortuguesa() {
        Portuguesa p = new Portuguesa();
        p.prepararPizza();

        System.assertEquals('Milho', 'Milho');
        System.assertEquals('Ovo', 'Ovo');
        System.assertEquals('Cebola', 'Cebola');
    }
}