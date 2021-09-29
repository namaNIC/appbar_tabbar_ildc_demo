//Model
class ModelDemo {
  final String? title;
  final String? subTitle;
  final String? image;

  ModelDemo({this.title, this.subTitle, this.image});
}

List modelDataFromServer = [
  {
    "title": "naman",
    "subTitle": "iOS developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "Bhargav",
    "subTitle": "iOS developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "Nikunj",
    "subTitle": "iOS developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "Mehul",
    "subTitle": "Android developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "naman2",
    "subTitle": "iOS developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "Mehul",
    "subTitle": "Android developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "naman2",
    "subTitle": "iOS developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "Mehul",
    "subTitle": "Android developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
  {
    "title": "naman2",
    "subTitle": "iOS developer",
    "image": "https://upload.wikimedia.org/wikipedia/en/6/63/The_Croods.png"
  },
];

// Controller
List<ModelDemo> arrModelData() {
  return modelDataFromServer
      .map(
        (item) => ModelDemo(
            title: item["title"],
            subTitle: item["subTitle"],
            image: item["image"]),
      )
      .toList();
}
