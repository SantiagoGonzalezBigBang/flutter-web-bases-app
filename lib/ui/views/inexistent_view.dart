import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class InexistentView extends StatelessWidget {
   
  const InexistentView({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '404',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10.0,),
          const Text(
            'Page Not Found',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 10.0,),
          CustomFlatButton(
            text: 'Go Back', 
            onPressed: () => Navigator.pushReplacementNamed(context, '/stateful')
          )
        ],
      )
    );
  }
}