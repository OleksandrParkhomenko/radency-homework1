import 'package:todo/task.dart';
import 'package:todo/todolist.dart';

void main(List<String> arguments) {
  var toDoList = ToDoList(name: 'My ToDos');
  toDoList.addTask(1, 'first', 'task', DayOfTheWeek.monday);
  toDoList.addTask(2, 'second', 'task', DayOfTheWeek.monday);
  toDoList.addTask(3, 'third', 'homework', DayOfTheWeek.sunday);
  print(toDoList.summary());

  toDoList.remove(2);
  print(toDoList.summary());

  var newTasks = <Task>[];
  var plainTask = Task();
  plainTask.id = 5;
  plainTask.name = 'plain task';
  plainTask.category = 'new tasks';

  var reccuringTask = ReccuringTask();
  reccuringTask.id = 6;
  reccuringTask.name = 'reccuring task';
  reccuringTask.category = 'new tasks';
  reccuringTask.dayOfTheWeek = DayOfTheWeek.saturday;

  newTasks.addAll([plainTask, reccuringTask]);
  toDoList.addFewTasks(newTasks);

  print(toDoList.summary());
}
