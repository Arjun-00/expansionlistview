import 'package:flutter/material.dart';

class BasicTile {
  final String title;
  final List<BasicTile> tiles;
  final bool isChecked;

  const BasicTile({
    required this.title,
    this.tiles = const [],
    this.isChecked = false,
  });
}