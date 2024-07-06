// TaskListApp.js
import { LightningElement, track } from 'lwc';

export default class TaskListApp extends LightningElement {
    @track tasks = [
        { id: 1, text: 'Lavar o Gato' },
        { id: 2, text: 'Lavar a Casa' },
        { id: 3, text: 'Lavar os cães' }
    ];

    handleTaskUpdate(event) {
        const { taskId, newText } = event.detail;
        this.tasks = this.tasks.map(task => {
            if (task.id === taskId) {
                return { ...task, text: newText };
            }
            return task;
        });
    }
}