import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/views.dart';

final Handler statefulCounterHandler = Handler(
  handlerFunc: (context, parameters) {
    // print(parameters['base']?[0]);
    return CounterView(base: parameters['base']?.first ?? '5');
  }
);

final Handler providerCounterHandler = Handler(
  handlerFunc: (context, parameters) {
    // print(parameters);
    return CounterProviderView(base: parameters['q']?.first ?? '10');
  }
);

final Handler dashboardUserHandler = Handler(
  handlerFunc: (context, parameters) {
    // print(parameters);
    return const PageNotFoundView();
  }
);

final Handler pageNotFoundHandler = Handler(
  handlerFunc: (context, parameters) => const PageNotFoundView(),
);