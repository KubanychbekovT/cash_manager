import 'package:flutter/material.dart';

class CriticalFailureCard extends StatelessWidget {
  const CriticalFailureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            'Непредвиденная ощибка. \nПожалуйста, обратитесь в службу поддержки.',
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: () {}, child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(Icons.mail),
              const SizedBox(width: 4),
              Text('Мне нужна помощь.'),
            ],
          ))
        ],
      ),
    );
  }
}
