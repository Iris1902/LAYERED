const TaskService = {
  addTask(taskText) {
    if (!taskText.trim()) return false;
    TaskRepository.add(taskText.trim());
    return true;
  },

  getTasks() {
    return TaskRepository.getAll();
  }
};
