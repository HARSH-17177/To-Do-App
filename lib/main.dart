import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';
import 'package:get/route_manager.dart';
import 'package:note_keep/providers/todo_provider.dart';
import 'package:note_keep/screens/splash_screen.dart';
import 'package:provider/provider.dart';

Client client = Client();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  client
      .setEndpoint('http://10.0.2.2/v1')
      .setProject('641767217707484d19d0')
      .setSelfSigned(status: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TodoProvider(),
        ),
      ],
      child: const GetMaterialApp(
        title: 'Material App',
        home: SplashScreen(),
      ),
    );
  }
}
