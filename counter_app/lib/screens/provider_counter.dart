import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/counter_provider.dart';

class ProviderCounterScreen extends StatelessWidget {
  const ProviderCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Light Grey Background
      appBar: AppBar(
        title: Text(
          'Provider Counter',
          style: TextStyle(color: Color(0xFFFFFFFF)), // White text
        ),
        backgroundColor: Color(0xFF42A5F5), // Blue (Primary)
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), // Surface (White)
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.track_changes,
                size: 60,
                color: Color(0xFFFFC107),
              ), // Amber
              SizedBox(height: 16),
              Text(
                'Counter Value',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121), // textPrimary
                ),
              ),
              SizedBox(height: 10),
              Text(
                '${counter.count}',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF42A5F5), // Blue (Primary)
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: counter.decrement,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFC107), // Amber
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: counter.increment,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF42A5F5), // Blue
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
