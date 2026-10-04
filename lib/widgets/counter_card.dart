import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onIncrementByFive;
  final VoidCallback onDecrement;
  final VoidCallback onReset;

  const CounterCard({
    super.key,
    required this.counter,
    required this.onIncrement,
    required this.onIncrementByFive,
    required this.onDecrement,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'COUNTER VALUE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.2,
                  color: colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              transitionBuilder: (child, animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$counter',
                key: ValueKey<int>(counter),
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.w900,
                  color: colorScheme.primary,
                  height: 1.0,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              counter == 0
                  ? 'Tap the buttons below to change'
                  : (counter > 0
                      ? 'Positive count: +$counter'
                      : 'Negative count: $counter'),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.textTheme.bodySmall?.color?.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filledTonal(
                  onPressed: onDecrement,
                  icon: const Icon(Icons.remove_rounded),
                  tooltip: 'Decrement -1',
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: onIncrement,
                  icon: const Icon(Icons.add_rounded),
                  label: const Text('+1'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton.tonal(
                  onPressed: onIncrementByFive,
                  child: const Text('+5'),
                ),
              ],
            ),
            const SizedBox(height: 14),
            TextButton.icon(
              onPressed: counter == 0 ? null : onReset,
              icon: const Icon(Icons.refresh_rounded, size: 18),
              label: const Text('Reset Counter'),
              style: TextButton.styleFrom(
                foregroundColor: colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
