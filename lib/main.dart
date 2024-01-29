import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:workshop_flutter_maps/osm.dart';
import 'package:workshop_flutter_maps/osm_flutter_map.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: const SelectMapPage(), theme: ThemeData.dark()));
}

class SelectMapPage extends StatelessWidget {
  const SelectMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => const OSM()));
            },
            child: const Text("Flutter OSM Pure"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OSMFlutterMap()));
            },
            child: const Text("Flutter OSM with flutter_map"),
          ),
        ],
      ),
      ),
    );
  }
}
