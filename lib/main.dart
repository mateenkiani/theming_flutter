import 'package:flutter/material.dart';
import './src/theming/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, theme, child) => MaterialApp(
              theme: theme.getTheme(),
              home: Scaffold(
                appBar: AppBar(
                  title: Text('Hybrid Theme'),
                ),
                body: Row(
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: () => {
                          print('Set Light Theme'),
                          theme.setLightMode(),
                        },
                        child: Text('Set Light Theme'),
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: () => {
                          print('Set Dark theme'),
                          theme.setDarkMode(),
                        },
                        child: Text('Set Dark theme'),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
