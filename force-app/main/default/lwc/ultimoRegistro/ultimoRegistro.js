import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';

export default class UltimoRegistro extends LightningElement {
    @wire(getContacts)
    wiredContacts;
}