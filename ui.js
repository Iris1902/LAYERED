const TaskUI = {
  init(onAddTask) {
    const btn = document.getElementById('addTaskBtn');
    btn.addEventListener('click', () => {
      const input = document.getElementById('taskInput');
      const task = input.value;
      const added = onAddTask(task);
      if (added) input.value = '';
      TaskUI.renderTasks(TaskService.getTasks());
    });

    this.renderTasks(TaskService.getTasks());
  },

  renderTasks(tasks) {
    const list = document.getElementById('taskList');
    list.innerHTML = '';
    tasks.forEach((task, index) => {
      const li = document.createElement('li');
      li.textContent = `${index + 1}. ${task}`;
      list.appendChild(li);
    });
  }
};
