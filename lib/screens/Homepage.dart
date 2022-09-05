import 'package:bottom_street_demo/screens/overviewpage.dart';
import 'package:bottom_street_demo/screens/performance.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Overview'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Performance'),
              ),
            ],
          ),
          title: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Bottom Sheet Demo',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Overviewpage(),
            Performancepage(),
          ],
        ),
      ),
    );
  }
}
