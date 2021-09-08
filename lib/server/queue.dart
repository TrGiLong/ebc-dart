import 'dart:async';

typedef Executor<T> = Future<T> Function();

class Task<T> {
  final Executor<T> executor;
  final Completer<T> completer;

  Task(this.executor, this.completer);

  factory Task.create(Executor<T> execute) => Task(execute, Completer());

  Future<bool> execute() async {
    try {
      completer.complete(await executor());
      return true;
    } catch (e) {
      completer.completeError(e);
      return false;
    }
  }
}

class Queue {
  final _controller = StreamController<Task>();

  Completer<T> add<T>(Future<T> Function() execute) {
    final task = Task<T>.create(execute);
    _controller.add(task);
    return task.completer;
  }

  Stream<bool> start() async* {
    await for (var task in _controller.stream) {
      print('process task');
      yield await task.execute();
    }
  }

  Future<void> close() async {
    await _controller.close();
  }
}
