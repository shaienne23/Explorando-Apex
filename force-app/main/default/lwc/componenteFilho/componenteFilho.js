import { LightningElement } from 'lwc';

export default class ComponenteFilho extends LightningElement {
    handleChange(event) {
        const name = event.target.value; // Obtém o valor do evento de mudança
        // Cria um evento personalizado 'mycustomevent' com o detalhe 'name' e dispara o evento
        const selectEvent = new CustomEvent('mycustomevent', { detail: name, bubbles: true });
        this.dispatchEvent(selectEvent); // Dispara o evento personalizado
    }
}