import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'providers/auth.dart';
import 'screens/authentication.dart';
import 'package:provider/provider.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => Auth())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'EthioDen',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Consumer<Auth>(
            builder: (context, auth, _) {
              return auth.accessToken != ""
                  ? const Authentication()
                  : const Home();
            },
          ),
          // routes: {
            
          // },
        ));
  }
}
