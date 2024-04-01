//TileModel.dart

class TileModel {
  late String imageAssetPath;
  late bool isSelected;

  TileModel({this.imageAssetPath = "", this.isSelected = false});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
