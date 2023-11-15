class HomeIthemApi {
  String title;
  String price;
  String image;

  HomeIthemApi({required this.price, required this.title, required this.image});

  factory HomeIthemApi.fromJson(Map<String, dynamic> json) {
    return HomeIthemApi(
        price: json["price"], title: json["title"], image: json["thumbnail"]);
  }
}
