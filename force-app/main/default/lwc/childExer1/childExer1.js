import { LightningElement, api } from 'lwc';

export default class ChildExer1 extends LightningElement {
    @api
    PrimeiroNome = "Shaienne";
    SegundoNome = "Oliveira";
    Classificacao = "Hot";
    Empresa = "Dbc";
    Email = "shaienneo@gmail.com";
    Idade = "21";
    ValorAnual = "2.000,00";
}