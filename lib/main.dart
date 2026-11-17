import 'package:flutter/material.dart';

void main() {
  runApp(const TugasRutinApp());
}

class TugasRutinApp extends StatelessWidget {
  const TugasRutinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff155eef)),
        useMaterial3: true,
      ),
      home: const HelloPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  const HelloPage({super.key});

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  bool _isGreeting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Rutin 1'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.waving_hand_rounded,
                      size: 72,
                      color: Color(0xff155eef),
                      semanticLabel: 'Ikon tangan melambai',
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _isGreeting
                          ? 'Senang bertemu denganmu!'
                          : 'Hello, World!',
                      textAlign: TextAlign.center,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Saya Christian Nicholas Sinaga',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      'NIM 4243250005  •  PSIK 24C',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isGreeting = !_isGreeting;
                        });
                      },
                      icon: const Icon(Icons.touch_app),
                      label: Text(_isGreeting ? 'Ulangi sapaan' : 'Sapa saya'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
