import 'dart:convert';
import 'package:get/get.dart';
import 'package:khaledsawan/utils/AppConstants.dart';
import 'package:http/http.dart' as http;
import '../service/model/profile_data_model.dart';

class BaseRepo extends GetxController {
  late Response response;
  bool isLoading = true;
  late ProfileData profileData = ProfileData(projects: [], images: []);
  BaseRepo() {
    getImages();
  }

  Future<void> getImages() async {
    var request = http.Request('GET', Uri.parse(AppConstants.profileData));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      profileData = ProfileData.fromJson(
          jsonDecode(await response.stream.bytesToString()));
    }
    isLoading = false;
    update();
  }
}
