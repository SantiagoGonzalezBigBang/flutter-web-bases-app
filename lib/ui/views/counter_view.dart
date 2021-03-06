import 'package:flutter/material.dart';

import 'package:bases_web/ui/shared/shared.dart';

class CounterView extends StatefulWidget {
  const CounterView({
    Key? key, 
    required this.base
  }) : super(key: key);

  final String base; 

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  int _counter = 10;

  @override
  void initState() {
    if (int.tryParse(widget.base) != null) {
      _counter = int.parse(widget.base);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Stateful Counter',
          style: TextStyle(
            fontSize: 20.0
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Counter: $_counter',
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
              onPressed: () => setState(() => _counter++),
            ),
            CustomFlatButton(
              text: 'Decrement',
              onPressed: () => setState(() => _counter--),
            ),
          ],
        ),
        const Spacer()
      ],
    );
  }
}