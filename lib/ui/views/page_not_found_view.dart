import 'package:bases_web/locator.dart';
import 'package:bases_web/ui/services/services.dart';
import 'package:flutter/material.dart';

import 'package:bases_web/ui/shared/custom_flat_button.dart';

class PageNotFoundView extends StatelessWidget {
   
  const PageNotFoundView({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
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
              onPressed: () => locator<NavigatorService>().navigateTo('/stateful')
            )
          ],
        )
      ),
    );
  }
}