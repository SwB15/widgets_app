import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subtitle: 'Contador',
    link: '/counter_river',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios Botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbars y Dialogos',
    subtitle: 'Indicadores en pantalla',
    link: '/snackbar',
    icon: Icons.invert_colors_off_outlined,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'StatefulWidget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'UI Controls + Tiles',
    subtitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'Introduccion a la aplicacion',
    subtitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull',
    subtitle: 'Listas infinitas y pull request',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Cambiar Tema',
    subtitle: 'Cambiar tema de la aplicación',
    link: '/theme_changer',
    icon: Icons.color_lens_outlined,
  ),
];
