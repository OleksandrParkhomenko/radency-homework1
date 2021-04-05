import 'package:todo/task.dart';

class ToDoList {
  final name;
  List<Task> tasks;

  ToDoList({this.name});

  void addTask(int id, String name, String category,
      [DayOfTheWeek dayOfTheWeek]) {
    var newTask;
    if (dayOfTheWeek != null) {
      newTask = ReccuringTask();
      newTask.dayOfTheWeek = dayOfTheWeek;
    } else {
      newTask = Task();
    }
    newTask.id = id;
    newTask.name = name;
    newTask.category = category;
  }

  void addFewTasks(List<Task> newTasks) {
    tasks.addAll(newTasks);
  }

  bool remove(int id) {
    for (var task in tasks) {
      if (task.id == id) {
        tasks.remove(task);
        return true;
      }
    }
    return false;
  }

  Map<String, int> summary() {
    Map<String, int> grouppedByCategory;
    for (var task in tasks) {
      grouppedByCategory[task.category] += 1;
    }
    return grouppedByCategory;
  }
}
