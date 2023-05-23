import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const ScreenOne(),
    const ScreenTwo(),
    const ScreenThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Menu',
          ),
          title: const Text('Maye App'),
          actions: const [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
              tooltip: 'Search',
            )
          ],
        ),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Accessibility',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Text(
          'Welcome!',
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: WelcomeWidget());
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: .5,
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Contact Card',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                  
                ),
                SizedBox(
                  height: 12.0,
                  width: 80,
                ),
                
                Divider(),
                Text(
                  'Maye Innocent Muhavi',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 12.0),
                Text(
                  'Tel: 0796331359',
                  style: TextStyle(fontSize: 14.0),
                ),
              ],
            ),
          ),
        ));
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Settings...',
        style: TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}
