final List<String> sidebarImages = [
  'assets/icons/sidebar_red1.png',
  'assets/icons/sidebar_purple.png',
  'assets/icons/sidebar_orange.png',
];

class UnbordingContent {
  String image;
  String title1;
  String title2;
  String sidebarImages;
  String description;

  UnbordingContent(
      {required this.image,
      required this.title1,
      required this.sidebarImages,
      required this.description,
      required this.title2});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title1: 'CHOOSE YOUR FAVOURITE',
      title2: 'RESTAURANTS',
      image: 'assets/icons/icon1.png',
      sidebarImages: "assets/icons/sidebar_red.png",
      description: "Lorem ipsum dolor sit amet.\n"
          "Nam aspernatur repellendus ut velit "),
  UnbordingContent(
      title1: 'CUSTOMIZE YOUR',
      title2: 'FOOD SEARCH',
      image: 'assets/icons/icon2.png',
      sidebarImages: "assets/icons/sidebar_purple.png",
      description: "Lorem ipsum dolor sit amet.\n"
          "Nam aspernatur repellendus ut velit "),
  UnbordingContent(
      title1: 'FRESH & FAST',
      title2: 'DELIVERY',
      image: 'assets/icons/icon3.png',
      sidebarImages: "assets/icons/sidebar_orange.png",
      description: "Lorem ipsum dolor sit amet.\n"
          "Nam aspernatur repellendus ut velit "),
];
