import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parking_app/screens/search.dart';
import 'package:parking_app/services/geolocator_service.dart';
import 'package:provider/provider.dart';
import '';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final locatorService = GeoLocatorService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider<Position?>(
      create: (context) => locatorService.getLocation(),
     
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        home: Search(),
        
      ),
    );
  }
}
