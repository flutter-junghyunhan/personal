import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_test/counter_bloc.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';

void main() {
  group(CounterBloc(), () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 0', () {
      expect(counterBloc.state, equals(0));
    });

    blocTest(
      'emit [1] when CounterincrementPressed is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterIncrementPressed()),
      expect: () => [1],
    );

    blocTest(
      'emits [-1] when CounterDecrementPressed is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterDecrementPressed()),
      expect: () => [-1],
    );
  });
}
