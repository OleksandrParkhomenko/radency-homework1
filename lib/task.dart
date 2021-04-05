enum DayOfTheWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday
}

class Task {
  var id;
  var name;
  var category;

  String get info => 'Task #$id | name: $name, category: $category';
}

class ReccuringTask implements Task {
  @override
  var id;

  @override
  var name;

  @override
  var category;

  DayOfTheWeek dayOfTheWeek;

  @override
  String get info =>
      'Task #$id | name: $name, category: $category, day: $dayOfTheWeek';
}
