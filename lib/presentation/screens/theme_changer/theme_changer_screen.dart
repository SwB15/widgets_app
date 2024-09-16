import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_sreeen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final darkMode = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
            icon: darkMode
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: const ThemeChangerView(),
    );
  }
}

class ThemeChangerView extends ConsumerWidget {
  const ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          },
        );
      },
    );
  }
}
