import 'package:flutter/material.dart';
import 'package:orthophonienewversion/provider/dio.dart';
import 'package:orthophonienewversion/provider/save-date-provider.dart';
import 'package:orthophonienewversion/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => ApiProvider()),
        ChangeNotifierProxyProvider<ApiProvider, FormDataProvider>(
          create: (context) =>
              FormDataProvider(Provider.of<ApiProvider>(context, listen: false)),
          update: (context, api, user) => FormDataProvider(api),
        ),
        // Add other providers as needed
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
