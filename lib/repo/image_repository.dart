import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../models/image_model.dart';

class ImageRepository {
  Future<List<PixelfordImage>> getNetworkImages() async {
    try {
      var endpointUrl = Uri.parse('https://pixelford.com/api2/images');
      final response = await http.get(endpointUrl);

      if (response.statusCode == 200) {
            final List<dynamic> decodedList = jsonDecode(response.body) as List;

            final List<PixelfordImage> imageList = decodedList.map((listItem) {
              return PixelfordImage.fromJson(listItem);
            }).toList();
            return imageList;
          } else {
            throw Exception('Connection not successful');
          }
    } on SocketException {
      throw Exception('No internet connection!');
    } on HttpException {
      throw Exception('Couldn\'t retrieve the images!');
    } on FormatException {
      throw Exception('Bad response format');
    }
    catch (e) {
      print(e);
      throw Exception('Unknown error');
    }
  }
}
