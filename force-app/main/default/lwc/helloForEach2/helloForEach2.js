import { LightningElement, wire } from 'lwc';
import getLeads from '@salesforce/apex/LeadController.getLeads';

export default class HelloForEach2 extends LightningElement {
    @wire(getLeads)
    wiredLeads;
}