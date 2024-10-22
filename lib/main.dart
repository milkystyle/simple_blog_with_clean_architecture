import 'package:flutter/material.dart';
import 'package:simple_blog/core/secrets/app_secrets.dart';
import 'package:simple_blog/core/theme/theme.dart';
import 'package:simple_blog/features/auth/presentation/pages/signin_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: const SigninPage(),
    );
  }
}
