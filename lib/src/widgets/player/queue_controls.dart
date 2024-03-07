import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../misc/titles.dart';
import '../../models/player_queue.dart';

class QueueControlsTwin extends StatelessWidget {
  final Iterable<dynamic> _queueData;

  const QueueControlsTwin(this._queueData, {super.key});

  @override
  Widget build(BuildContext context) {
    final queue = Provider.of<PlayerQueue>(context, listen: true);

    return OverflowBar(
      alignment: MainAxisAlignment.center,
      spacing: 20,
      children: [
        TextButton.icon(
          onPressed: () {
            queue.addAll(_queueData.toList());
            queue.player.play();
          },
          icon: const Icon(Icons.play_arrow_rounded),
          label: const Text('Play', style: activeTextMedium),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
            iconColor: MaterialStateProperty.all(Colors.red),
          ),
        ),
        TextButton.icon(
          onPressed: () {
            queue.addAll(_queueData.toList());
            queue.player.shuffle();
            queue.player.play();
          },
          icon: const Icon(Icons.shuffle_rounded),
          label: const Text('Shuffle', style: activeTextMedium),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
            iconColor: MaterialStateProperty.all(Colors.red),
          ),
        )
      ],
    );
  }
}

class QueueControlsSingle extends StatelessWidget {
  const QueueControlsSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return OverflowBar(
      alignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.play_arrow_rounded),
            label: const Text('Play', style: activeTextMedium),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
              iconColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
