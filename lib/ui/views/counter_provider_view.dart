import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bases_web/ui/shared/shared.dart';
import 'package:bases_web/providers/providers.dart';

class CounterProviderView extends StatelessWidget {

  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const _CounterProviderBody(),
    );
  }
}

class _CounterProviderBody extends StatelessWidget {
  const _CounterProviderBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Provider Counter',
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Counter: ${counterProvider.counter}',
              style: const TextStyle(
                fontSize: 80.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Increment',
              onPressed: counterProvider.increment
            ),
            CustomFlatButton(
              text: 'Decrement',
              onPressed: counterProvider.decrement,
            ),
          ],
        ),
        const Spacer()
      ],
    );
  }
}