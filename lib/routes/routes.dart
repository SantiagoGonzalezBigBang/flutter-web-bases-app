import 'package:fluro/fluro.dart';

import 'package:bases_web/routes/route_handlers.dart';

class Routes {

  static final FluroRouter fluroRouter = FluroRouter();

  static void configureRoutes() {
    //* Not Found Page Routes
    fluroRouter.notFoundHandler = pageNotFoundHandler;
    
    //* Default Routes
    fluroRouter.define(
      '/', 
      handler: statefulCounterHandler,
      transitionType: TransitionType.fadeIn      
    );

    //* Stateful Routes
    fluroRouter.define(
      '/stateful', 
      handler: statefulCounterHandler,
      transitionType: TransitionType.fadeIn
    );
    fluroRouter.define(
      '/stateful/:base', 
      handler: statefulCounterHandler,
      transitionType: TransitionType.fadeIn
    );

    //* Provider Routes
    fluroRouter.define(
      '/provider', 
      handler: providerCounterHandler,
      transitionType: TransitionType.fadeIn
    );

    //* Dashboard Users Routes
    fluroRouter.define(
      '/dashboard/users/:userid/:roleid', 
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn
    );
  }  
  
}