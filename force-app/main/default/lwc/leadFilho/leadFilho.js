import { LightningElement, api } from 'lwc';

export default class LeadFilho extends LightningElement {
    @api
    Lead = [
        {numero: 1, Id: "987897ssd", Nome: "Juca", Sobrenome: "Oliveira", Empresa: "Desentupidora Oliveira", Status: "Fechado-Convertido", Estagio: "Inicial"},
        {numero: 2, Id: "091234trs", Nome: "Ted", Sobrenome: "Oliveira", Empresa: "Desentupidora Oliveira", Status: "Fechado-Convertido", Estagio: "Inicial"},
      ];

}