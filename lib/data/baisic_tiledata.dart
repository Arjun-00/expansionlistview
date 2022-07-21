import 'package:expansionlistview/model/baisicTile.dart';
import 'package:flutter/material.dart';

final basicTiles = <BasicTile>[
  BasicTile(title: 'Countries', tiles: [
    BasicTile(title: 'Russia'),
    BasicTile(title: 'Canada'),
    BasicTile(title: 'USA'),
    BasicTile(title: 'China'),
    BasicTile(title: 'China'),
    BasicTile(title: 'Australia'),
    BasicTile(title: 'India'),
    BasicTile(title: 'Argentina'),
  ]),
  BasicTile(title: 'Dates', tiles: [
    BasicTile(title: '2020', tiles: buildMonths()),
    BasicTile(title: '2021', tiles: buildMonths()),
    BasicTile(title: '2022',tiles: [
      BasicTile(title: 'Monday',tiles: [
        BasicTile(title: 'Indipendance Day',tiles: [
          BasicTile(title: 'Free Day')
        ]),
        BasicTile(title: 'Ifthar Day')
      ]),
      BasicTile(title: 'WensDay'),
      BasicTile(title: 'Friday')
    ]),
    BasicTile(title: '2023'),
  ]),
];

List<BasicTile> buildMonths() => [
  'January',
  'February',
  'March',
  'April',
  'November',
  'December',
].map<BasicTile>(buildMonth).toList();

BasicTile buildMonth(String month) => BasicTile(
    title: month,
    tiles: List.generate(28, (index) => BasicTile(title: '$index.')));
