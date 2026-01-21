import 'package:flutter/material.dart';

class ThemedSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ThemedSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Theme.of(context).colorScheme.primary;
            }
            return Theme.of(context).colorScheme.outline;
          }),
          trackColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.4);
            }
            return Theme.of(context).colorScheme.surfaceContainerHighest;
          }),
        ),
      ),
      child: Switch.adaptive(value: value, onChanged: onChanged),
    );
  }
}
