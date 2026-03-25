import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavLink extends StatelessWidget {
  const NavLink({
    super.key,
    required this.path,
    required this.label,
    required this.selected,
  });

  final String path;
  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: selected ? null : () => context.go(path),
      style: TextButton.styleFrom(
        foregroundColor: selected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onSurface,
      ),
      child: Text(label),
    );
  }
}
