import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Register every screen by its named route.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/routes': (context) => const RoutesListPage(),
        '/route1': (context) => const Route1Page(),
        '/route2': (context) => const Route2Page(),
        '/route3': (context) => const Route3Page(),
        '/route4': (context) => const Route4Page(),
      },
    );
  }
}

// The home screen opens the list of available routes.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/routes'),
          child: const Text('Go to Routes'),
        ),
      ),
    );
  }
}

// Offer a button for each route.
class RoutesListPage extends StatelessWidget {
  const RoutesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Routes')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/route1'),
              child: const Text('Route 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/route2'),
              child: const Text('Route 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/route3'),
              child: const Text('Route 3'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/route4'),
              child: const Text('Route 4'),
            ),
          ],
        ),
      ),
    );
  }
}

// Each route screen has its own title, welcome message, and background color.
class Route1Page extends StatelessWidget {
  const Route1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Route 1')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome to Route 1',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Route2Page extends StatelessWidget {
  const Route2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Route 2')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome to Route 2',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Route3Page extends StatelessWidget {
  const Route3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: const Text('Route 3')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome to Route 3',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Route4Page extends StatelessWidget {
  const Route4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(title: const Text('Route 4')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Welcome to Route 4',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
