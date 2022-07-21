import 'package:flutter/material.dart';
import 'data/baisic_tiledata.dart';
import 'model/baisicTile.dart';

class BaisicDat extends StatelessWidget {
  const BaisicDat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children:
          basicTiles.map((tile) => BasicTileWidget(tile: tile)).toList(),
        ),
      ),
    );
  }
}


class BasicTileWidget extends StatelessWidget {
  final BasicTile tile;

  const BasicTileWidget({
    Key? key,
    required this.tile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = tile.title;
    final tiles = tile.tiles;

    if (tiles.isEmpty) {
      return ListTile(
        leading: Checkbox(
          value: true,
          onChanged: (value){

          },
        ),
        title: Text(title),
        // onTap: () => Utils.showSnackBar(
        //   context,
        //   text: 'Clicked on: $title',
        //   color: Colors.green,
        // ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Theme.of(context).primaryColor),
        ),
        child: ExpansionTile(
          key: PageStorageKey(title),
          title: Text(title),
          children: tiles.map((tile) => BasicTileWidget(tile: tile)).toList(),
        ),
      );
    }
  }
}
