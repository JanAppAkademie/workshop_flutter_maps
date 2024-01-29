import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class OSM extends StatelessWidget {
  const OSM({super.key});

  @override
  Widget build(BuildContext context) {
    MapController controller = MapController(
      initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
      areaLimit: BoundingBox(
        east: 10.4922941,
        north: 47.8084648,
        south: 45.817995,
        west: 5.9559113,
      ),
    );
    return Scaffold(
      body: OSMFlutter(
        controller: controller,
        osmOption: const OSMOption(),
        mapIsLoading: const Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
