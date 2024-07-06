import { LightningElement, track } from 'lwc';

export default class ContadorFilho extends LightningElement {
    @track contador = 0;

    handleIncrement() {
        this.contador++;
        this.dispatchEvent(new CustomEvent('increment'));
    }

    handleDecrement() {
        this.contador--;
        this.dispatchEvent(new CustomEvent('decrement'));
    }
}