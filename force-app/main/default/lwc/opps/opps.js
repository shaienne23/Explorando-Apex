import { LightningElement, api } from 'lwc';

export default class Oppsdaconta extends LightningElement {
@api
opportunidades = [
    {numero: 1, Id: "1x3245", Nome: "James", Valor: 10000, Fase: "Prospecção" },
    {numero: 2, Id: "2f3466", Nome: "Jake", Valor: 20000, Fase: "Negociação" },
    {numero: 3, Id: "3h2526", Nome: "Travis", Valor: 30000, Fase: "Qualificação" },
    {numero: 4, Id: "4g2546", Nome: "Theo", Valor: 40000, Fase: "Proposta" },
    {numero: 5, Id: "5p4316", Nome: "Mike", Valor: 50000, Fase: "Fechada" },
  ];

}