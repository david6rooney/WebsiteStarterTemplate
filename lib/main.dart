import 'locator.dart';
import 'package:flutter/material.dart';
import 'package:WebsiteStartingTemplate/services/navigation_service.dart';
import 'package:WebsiteStartingTemplate/routing/router.dart';
import 'package:WebsiteStartingTemplate/routing/route_names.dart';
import 'package:WebsiteStartingTemplate/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUHC WebApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Rajdhani',
            ),
      ),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
