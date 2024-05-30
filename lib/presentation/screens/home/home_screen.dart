import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return ListTile(
          title: Text(item.title),
          subtitle: Text(item.subtitle),
          trailing: Icon(
            Icons.chevron_right,
            color: colors.primary,
          ),
          leading: Icon(
            item.icon,
            color: colors.primary,
          ),
          onTap: () {
            Navigator.pushNamed(context, item.link);
          },
        );
      },
    );
  }
}
