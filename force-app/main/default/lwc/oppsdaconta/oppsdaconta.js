import { LightningElement, api } from 'lwc';

export default class Oppsdaconta extends LightningElement {
@api
opportunidades = [
    { Id: "1x3245", Nome: "James", Valor: 10000, Fase: "Prospecção" },
    { Id: "2f3466", Nome: "Jake", Valor: 20000, Fase: "Negociação" },
    { Id: "3h2526", Nome: "Travis", Valor: 30000, Fase: "Qualificação" },
    { Id: "4g2546", Nome: "Theo", Valor: 40000, Fase: "Proposta" },
    { Id: "5p4316", Nome: "Mike", Valor: 50000, Fase: "Fechada" },
  ];

}