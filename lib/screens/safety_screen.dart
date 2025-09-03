import 'package:flutter/material.dart';
import '../widgets/sos_button.dart';

class SafetyScreen extends StatelessWidget {
  final String pairId;
  const SafetyScreen({super.key, required this.pairId});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Safety Center'),
        const SizedBox(height: 20),
        SOSButton(pairId: pairId),
      ]),
    );
  }
}
