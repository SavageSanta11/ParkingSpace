import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:parking_app/models/place.dart';

class PlacesService {
  final key = 'AIzaSyCmULUCeyD-IuoWkhh3sCUF8s0p_L8cy9Q';

  Future<List<Place>> getPlaces(double lat, double lng) async {
    var response = await http.get(Uri.parse('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=parking&rankby=distance&key=$key'));
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['results'] as List;
    return jsonResults.map((place) => Place.fromJson(place)).toList();
  }

}