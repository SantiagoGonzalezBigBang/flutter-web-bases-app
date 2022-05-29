import 'package:flutter/material.dart';

import 'package:bases_web/ui/shared/shared.dart';

class MainLayout extends StatelessWidget {
   
  const MainLayout({
    Key? key, 
    required this.child
  }) : super(key: key);

  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppBar(),
            const Spacer(),
            Expanded(child: child),
            const Spacer()
          ],
        )
      ),
    );
  }
}