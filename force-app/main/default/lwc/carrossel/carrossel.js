import { LightningElement } from 'lwc';
import salesimage from '@salesforce/resourceUrl/gato1';
import salesimage2 from '@salesforce/resourceUrl/gato2';
import salesimage3 from '@salesforce/resourceUrl/gato3';

export default class Carrossel extends LightningElement {
    gato1 = salesimage;
    gato2 = salesimage2;
    gato3 = salesimage3;
}