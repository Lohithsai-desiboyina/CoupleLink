import 'package:flutter/material.dart';

class SOSButton extends StatefulWidget {
  final String pairId;
  const SOSButton({super.key, required this.pairId});
  @override
  State<SOSButton> createState() => _SOSButtonState();
}

class _SOSButtonState extends State<SOSButton> {
  bool _loading = false;
  Future<void> _sendSOS() async {
    setState(() => _loading = true);
    await Future.delayed(const Duration(seconds:1));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('SOS sent (demo)')));
    setState(() => _loading = false);
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: _loading ? null : _sendSOS,
      icon: const Icon(Icons.warning),
      label: _loading ? const CircularProgressIndicator(color: Colors.white) : const Text('SOS'));
  }
}
