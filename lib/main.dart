import 'package:flutter/material.dart';

void main() {
  runApp(const HelloHermesApp());
}

class HelloHermesApp extends StatelessWidget {
  const HelloHermesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Hermes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3FB950),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.smart_toy_outlined, size: 72, color: scheme.primary),
            const SizedBox(height: 16),
            Text(
              'Hello Hermes 👋',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Starter app — dibuat oleh agent',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: scheme.outline),
            ),
            const SizedBox(height: 32),
            FilledButton.icon(
              onPressed: () => setState(() => _counter++),
              icon: const Icon(Icons.touch_app),
              label: Text('Ditekan $_counter kali'),
            ),
          ],
        ),
      ),
    );
  }
}
