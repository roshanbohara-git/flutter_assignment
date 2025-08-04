import 'package:flutter/material.dart';
import 'provider_counter.dart';
import 'bloc_counter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // background
      appBar: AppBar(
        title: Text(
          'Choose Counter Type',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF42A5F5), // primary
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), // surface
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.compare_arrows,
                size: 48,
                color: Color(0xFF42A5F5),
              ), // primary
              SizedBox(height: 16),
              Text(
                'Counter Pattern',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121), // textPrimary
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF42A5F5), // primary
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Provider Counter',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProviderCounterScreen()),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFC107), // accent
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'BLoC Counter',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BlocCounterScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
