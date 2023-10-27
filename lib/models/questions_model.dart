class Question {
  final String id;
  final String title;
  final Map<String, bool> options;
  Question( {required this.id, required this.title, required this.options});

  @override
  //override the to string method to print the answer on console
  String toString() {
    return 'Question(id:$id,title:$title,options:$options)';
  }
}