import { LightningElement } from 'lwc';
import salesimage from '@salesforce/resourceUrl/pokemon1';
import salesimage2 from '@salesforce/resourceUrl/pokemon2';

export default class Pokemon extends LightningElement {
    mostrarPokemon1 = true;
    mostrarPokemon2 = false;

    pokemon1 = salesimage;
    pokemon2 = salesimage2;

    ocultarImagem() {
        this.mostrarPokemon1 = !this.mostrarPokemon1;
        this.mostrarPokemon2 = !this.mostrarPokemon2;
    }
}