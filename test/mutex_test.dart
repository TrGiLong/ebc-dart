import 'package:ebc_dart/server/mutex.dart';

import 'package:test/test.dart';

void main() {
  group('Mutex', () {
    test('Mutex should be empty after init', () {
      final mutex = Mutex();
      expect(mutex.processes.length, 0);
    });

    test('Mutex should share ressource to one process', () async {
      final mutex = Mutex();
      var x = 0;

      await Future.wait([
        Future(() async {
          await mutex.lock();
          x = x + 1;
          mutex.unlock();
        }),
      ]);

      expect(x, 1);
    });

    test('Mutex should share ressource to ten process', () async {
      final mutex = Mutex();
      var x = 0;

      await Future.wait(List.generate(
          10,
          (index) => Future(() async {
                await mutex.lock();
                var y = x;
                await Future.delayed(Duration(milliseconds: index * 100));
                y += 1;
                x = y;
                mutex.unlock();
              })));
      expect(x, 10);
    });
  });
}
