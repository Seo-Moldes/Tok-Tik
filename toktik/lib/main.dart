import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/discover/discover_provider.dart';
import 'package:toktik/presentation/discover/discover_screen.dart';
import 'package:toktik/src/config/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider(), )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'Tok Tik',
        home: const DiscoverScreen()
      ),
    );
  }
}