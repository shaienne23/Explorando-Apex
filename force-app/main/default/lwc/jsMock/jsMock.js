import { LightningElement, track } from 'lwc';

export default class JsMock extends LightningElement {
    @track empresa = 'Sorveteria Flocos de Neve';
    @track cnpj = '01.561.966/0001-12';
    @track endereco = 'Rua X, 12';
    @track produto = 'Sorvete de Chocolate';
    @track descricao = 'Um sorvete muito bom.';
    @track preco = 'R$ 10,00';
    @track oferta1 = 'R$ 8,00';
    @track oferta2 = 'R$ 5,00';
    @track mostrarDetalhes = true;

    ocultarDescricaoPreco() {
        if (this.mostrarDetalhes) {
            this.mostrarDetalhes = false;
            this.mostrarPromocao = true;
        } else {
            this.mostrarDetalhes = true;
            this.mostrarPromocao = false;
        }
    }
}