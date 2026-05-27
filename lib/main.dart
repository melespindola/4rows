import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '4 Rows',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const TwoRowsPage(),
    );
  }
}

class TwoRowsPage extends StatelessWidget { 
  const TwoRowsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header / Title
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                '4 Rows',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 0.5,
                ),
              ),
            ),

            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  children: [
                    // Row 1
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.grey[300],
                      ),
                    ),

                    
                    const SizedBox(height: 24),

                    // Row 2
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.grey[300],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Row 3
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.grey[300],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Row 4
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.grey[300],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}