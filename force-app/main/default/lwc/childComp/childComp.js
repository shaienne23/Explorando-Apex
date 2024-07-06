import { LightningElement, api, track } from 'lwc';

export default class ChildComp extends LightningElement {
    //@track = rastreia variações de propriedades dentros de componentes, traz função
    // mensao renderização(atualizar valores de maneira dinamica, mais rapida)
    //@api= deixa a variavel publica e deixa que seja consumida, sempre inserida no filho

    //exemplo retorno de mensagem 
   //@track greeting = "Hello";

  // handleChange(event){
   // this.greeting = event.target.value;
 //  }

 message = "teste";

 @api

 changeMessage(strString){
    this.message = strString.toUpperCase();
 }
}