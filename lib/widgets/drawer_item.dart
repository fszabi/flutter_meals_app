import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onSelectScreen,
    required this.identifier,
  });

  final IconData icon;
  final String title;
  final String identifier;
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onSelectScreen(identifier);
      },
      leading: Icon(
        icon,
        size: 24,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 20,
            ),
      ),
    );
  }
}
