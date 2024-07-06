import { LightningElement, track } from 'lwc';

export default class ComponentePai extends LightningElement {
    @track msg; // Variável rastreada para armazenar a mensagem do filho

    constructor() {
        super();
        // Adiciona um listener para o evento personalizado 'mycustomevent' quando o componente é criado
        this.template.addEventListener('mycustomevent', this.handleCustomEvent.bind(this));
    }

    handleCustomEvent(event) {
        // Handler para o evento personalizado, atualiza a variável 'msg' com o valor do detalhe do evento
        this.msg = event.detail;
    }
}