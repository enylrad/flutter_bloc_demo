import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_bloc_app/widgets/line_separator.dart';
import 'package:flutter_bloc_app/widgets/main_result.dart';
import 'package:flutter_bloc_app/widgets/sub_result.dart';

class ResultsLabels extends StatelessWidget {
  const ResultsLabels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operator),
            SubResult(text: state.secondNumber),
            LineSeparator(),
            MainResultText(text: state.mathResult),
          ],
        );
      },
    );
  }
}
