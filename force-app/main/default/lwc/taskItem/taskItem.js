// TaskItem - filho
// TaskItem.js
import { LightningElement, api, track } from 'lwc';

export default class TaskItem extends LightningElement {
    @api initialTask;
    @track newTaskText;

    handleTaskTextChange(event) {
        this.newTaskText = event.target.value;
    }

    handleUpdateTask() {
        // Dispara um evento personalizado para informar o componente pai sobre a atualização da tarefa
        const event = new CustomEvent('taskupdate', {
            detail: { taskId: this.initialTask.id, newText: this.newTaskText }
        });
        this.dispatchEvent(event);
    }
}