class Task {
  Task({this.isDone = false, required this.title});
  late final String title;
  late bool isDone;
  void ToggleDone() => isDone = !isDone;
}
