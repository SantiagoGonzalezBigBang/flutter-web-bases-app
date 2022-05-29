import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:bases_web/ui/views/views.dart';

class Routes {
  
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/stateful':
        return _fadeRoute(child: const CounterView(), routeName: '/stateful');
      case '/provider':
        return _fadeRoute(child: const CounterProviderView(), routeName: '/provider');
      default:
        return _fadeRoute(child: const InexistentView(), routeName: '/inexistent');
    }
  }

  static PageRoute _fadeRoute({required Widget child, required String routeName}){
    return PageRouteBuilder(      
      settings: RouteSettings(name: routeName),
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (kIsWeb) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        } else {
          return CupertinoPageTransition(
            primaryRouteAnimation: animation, 
            secondaryRouteAnimation: secondaryAnimation, 
            linearTransition: true, 
            child: child
          );
        }
      },
      // transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
      pageBuilder: (context, animation, secondaryAnimation) => child,
    );
  }

}