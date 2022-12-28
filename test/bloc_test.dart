import 'package:bloc/bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';

class MyBloc extends Cubit<int> {
  MyBloc(super.initialState);

  void update(int v) => emit(v);
}

void main() {
  group('Inside a group', () {
    blocTest<MyBloc, int>(
      'sample bloc test',
      build: () => MyBloc(3),
      seed: () => 5,
      act: (b) => b.update(4),
      expect: () => [4],
    );

    test('Failing test', () {
      expect(1, 2);
    });
  });
}
