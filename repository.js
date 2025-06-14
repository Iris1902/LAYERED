const TaskRepository = {
  tasks: [],

  getAll() {
    return this.tasks;
  },

  add(task) {
    this.tasks.push(task);
  }
};
