import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';

class MostVisitedPlaces extends StatefulWidget {
  final String partnerId;
  const MostVisitedPlaces({super.key, required this.partnerId});

  @override
  State<MostVisitedPlaces> createState() => _MostVisitedPlacesState();
}

class _MostVisitedPlacesState extends State<MostVisitedPlaces> {
  late GoogleMapController _controller;
  Set<Marker> _markers = {};
  Set<Heatmap> _heatmaps = {};
  static const LatLng _center = LatLng(17.385044, 78.486671);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: const CameraPosition(target: _center, zoom: 12),
          onMapCreated: (c) => _controller = c,
          markers: _markers,
          heatmaps: _heatmaps,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: FloatingActionButton.extended(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Load locations after backend is connected.')));
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Load'),
          ),
        ),
      ],
    );
  }
}
