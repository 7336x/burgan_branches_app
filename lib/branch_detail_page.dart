// lib/pages/branch_detail_page.dart

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/branch.dart';

class BranchDetailPage extends StatelessWidget {
  final Branch branch;

  const BranchDetailPage({Key? key, required this.branch}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          branch.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Branch Image
            branch.imageUrl.isNotEmpty
                ? Image.network(
                    branch.imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.grey,
                    child: Icon(Icons.image, color: Colors.white, size: 100),
                  ),
            SizedBox(height: 16),

            // Location
            Text(
              'Location:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(branch.location),
            SizedBox(height: 8),

            // Map View
            Container(
              height: 200,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(branch.latitude, branch.longitude),
                  zoom: 15,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId(branch.id),
                    position: LatLng(branch.latitude, branch.longitude),
                    infoWindow: InfoWindow(title: branch.name),
                  ),
                },
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
              ),
            ),
            SizedBox(height: 16),

            // Opening Hours
            Text(
              'Opening Hours:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(branch.openingHours),
            SizedBox(height: 16),

            // Services
            Text(
              'Services:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            ...branch.services.map((service) => Text('- $service')).toList(),
            SizedBox(height: 16),

            // Contact Details
            Text(
              'Contact Details:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(branch.contactDetails),
          ],
        ),
      ),
    );
  }
}

