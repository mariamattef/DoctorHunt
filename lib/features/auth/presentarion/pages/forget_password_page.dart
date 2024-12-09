import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forget Password Example'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true, // For better height control
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              builder: (context) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            // Add your password reset logic here
                            Navigator.pop(context);
                          },
                          child: const Text('Continue'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Forget Password'),
        ),
      ),
    );
  }
}
