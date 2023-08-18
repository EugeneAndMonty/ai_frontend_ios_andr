import 'package:ai_frontend/initial_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const App());
  WidgetsFlutterBinding.ensureInitialized();
}


final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: initialRoute['path'],
      pageBuilder: (BuildContext context, GoRouterState state) {
        return NoTransitionPage(child: routes[0]['route_widget']);
      },
      routes: <RouteBase>[
        ...regularRoutes.map((route) {
          return GoRoute(
            path: route['path'],
            pageBuilder: (BuildContext context, GoRouterState state) {
              return NoTransitionPage(child: route['route_widget']);
            },
          );
        })
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
