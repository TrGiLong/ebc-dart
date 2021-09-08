import 'dart:async';

class Mutex {
  final List<Completer<void>> processes = [];

  Future<void> lock() {
    final completer = Completer<void>();

    if (processes.isEmpty) completer.complete();
    processes.add(completer);

    return completer.future;
  }

  void unlock() {
    processes.removeAt(0);
    if (processes.isNotEmpty) processes.first.complete();
  }
}
