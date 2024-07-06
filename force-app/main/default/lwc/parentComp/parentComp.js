import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {
    // para o pai enchergar o filho é necessario usar kebab case exemplo kebab c-child-comp sem o kebab childComp.

    handleChangeEvent(event){
        this.template.querySelector('c-child-comp').changeMessage(event.target.value);
    }

}