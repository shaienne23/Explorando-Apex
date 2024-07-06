import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Inicio extends LightningElement {

    handleContact() {
        const inputFields = this.template.querySelectorAll('lightning-input-field');
        if (inputFields) {
            inputFields.forEach(field => {
                field.reset();
            });
        }
        
        const successMessage = 'Registro criado com sucesso!'; 
        const event = new ShowToastEvent({
            title: 'Sucesso',
            message: successMessage,
            variant: 'success'
        });
        this.dispatchEvent(event);
    }
}