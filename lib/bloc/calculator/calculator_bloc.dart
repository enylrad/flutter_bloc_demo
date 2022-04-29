import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<ResetAC>(_resetAC);
    on<AddNumber>(_addNumber);
  }

  void _addNumber(event, emit) => emit(CalculatorState(
        firstNumber: state.firstNumber,
        secondNumber: state.secondNumber,
        operator: state.operator,
        mathResult: state.mathResult + event.number,
      ));

  void _resetAC(event, emit) => emit(CalculatorState(
        firstNumber: '0',
        secondNumber: '0',
        operator: 'none',
        mathResult: '0',
      ));
}
