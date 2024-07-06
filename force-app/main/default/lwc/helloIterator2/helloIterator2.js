import { LightningElement, wire } from 'lwc';
import getLeads from '@salesforce/apex/LeadController.getLeads';

export default class HelloIterator2 extends LightningElement {
    @wire(getLeads)
    wiredLeads;
}