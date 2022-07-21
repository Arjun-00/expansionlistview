import 'package:flutter/material.dart';
import 'data/advancedtile_data.dart';
import 'model/advanced_tile.dart';


class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 2,color: Colors.black),
            ),

            child: SingleChildScrollView(
              child: ExpansionPanelList.radio(
                expansionCallback: (index, isExpanded) {
                  final tile = advancedTiles[index];
                  setState(() => tile.isExpanded = isExpanded);

                },
                children: advancedTiles
                    .map((tile) => ExpansionPanelRadio(
                  value: tile.title,
                  canTapOnHeader: true,
                  headerBuilder: (context, isExpanded) => buildTile(tile),
                  body: Column(
                    children: tile.tiles.map(buildTile).toList(),
                  ),
                ))
                    .toList(),
              ),
            ),
            ),
          ),
        ),
    );
  }
  Widget buildTile(AdvancedTile tile) => ListTile(
    leading: tile.icon != null ? Icon(tile.icon) : null,
    title: Text(tile.title),

  );
}