import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var favorites = <bool>[].obs;

  void initItems(int count) {
    favorites.value = List.generate(count, (_) => false);
  }

  void toggleFavorite(int index) {
    favorites[index] = !favorites[index];
  }

  bool isFavorite(int index) {
    return favorites[index];
  }
}
