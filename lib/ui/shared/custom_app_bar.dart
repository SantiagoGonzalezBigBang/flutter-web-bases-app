import 'package:flutter/material.dart';

import 'package:bases_web/locator.dart';
import 'package:bases_web/ui/shared/shared.dart';
import 'package:bases_web/ui/services/services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => (constraints.maxWidth > 820) 
        ? const _LargeAppBar()
        : const _MobileAppBar()
    );
  }
}

class _LargeAppBar extends StatelessWidget {
  const _LargeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Stateful Counter',
            onPressed: () => locator<NavigatorService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 10.0,),
          CustomFlatButton(
            text: 'Provider Counter', 
            onPressed: () => locator<NavigatorService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 10.0,),
          CustomFlatButton(
            text: 'Inexistent Screen', 
            onPressed: () => locator<NavigatorService>().navigateTo('/inexistent'),
            color: Colors.black,
          ),
          CustomFlatButton(
            text: 'Stateful Counter 100',
            onPressed: () => locator<NavigatorService>().navigateTo('/stateful/100'),
            color: Colors.black,
          ),
          CustomFlatButton(
            text: 'Provider Counter 200',
            onPressed: () => locator<NavigatorService>().navigateTo('/provider?q=200'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileAppBar extends StatelessWidget {
  const _MobileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Stateful Counter',
            onPressed: () => locator<NavigatorService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 10.0,),
          CustomFlatButton(
            text: 'Provider Counter', 
            onPressed: () => locator<NavigatorService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 10.0,),
          CustomFlatButton(
            text: 'Inexistent Screen', 
            onPressed: () => locator<NavigatorService>().navigateTo('/inexistent'),
            color: Colors.black,
          ),
          const SizedBox(width: 10.0,),
          CustomFlatButton(
            text: 'Provider Counter 200',
            onPressed: () => locator<NavigatorService>().navigateTo('/provider?q=200'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}