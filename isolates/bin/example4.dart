import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  final ReceivePort rp = ReceivePort();
  Isolate.spawn(_parseJsonIsolateEntry, rp.sendPort);

  final todos = rp
      .takeWhile((element) => element is Iterable<Todo>)
      .cast<Iterable<Todo>>()
      .take(1);

  await for (final todo in todos) {
    print(todo);
  }
}

void _parseJsonIsolateEntry(SendPort sp) async {
  final client = HttpClient();
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos');

  final todos = await client
      .getUrl(uri)
      .then((req) => req.close())
      .then((respose) => respose.transform(utf8.decoder).join())
      .then((value) => jsonDecode(value) as List<dynamic>)
      .then((json) => json.map((m) => Todo.fromJson(m)));

  sp.send(todos);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  @override
  String toString() {
    return '''{userId:$userId,id:$id,title:$title,completed:$completed}''';
  }
}
