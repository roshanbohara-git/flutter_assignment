import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class BlocCounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // background
      appBar: AppBar(
        title: const Text('BLoC Counter'),
        backgroundColor: Color(0xFF42A5F5), // primary
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF), // surface
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
                    Icons.settings_input_component,
                    size: 60,
                    color: Color(0xFF42A5F5), // primary
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Counter Value',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF212121), // textPrimary
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${state.count}',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFC107), // accent
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () =>
                            context.read<CounterBloc>().add(DecrementEvent()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF757575), // textSecondary
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        child: const Icon(Icons.remove, color: Colors.white),
                      ),
                      const SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: () =>
                            context.read<CounterBloc>().add(IncrementEvent()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF42A5F5), // primary
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
