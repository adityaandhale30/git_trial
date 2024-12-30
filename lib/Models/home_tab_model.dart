class HomeTabModel {
  String imagePath;
  String name;
  String? headLine;
  HomeTabModel({required this.imagePath, required this.name, this.headLine});
}

List<HomeTabModel> hometab = [
  HomeTabModel(imagePath: "assets/homeAssets/sports.png", name: "Sports"),
  HomeTabModel(imagePath: "assets/homeAssets/news.png", name: "News"),
  HomeTabModel(
      imagePath: "assets/homeAssets/internships.png", name: "internships"),
  HomeTabModel(
      imagePath: "assets/homeAssets/university.png", name: "uni Campus"),
  HomeTabModel(
      imagePath: "assets/homeAssets/hackethon.png", name: "Hackethons"),
];
