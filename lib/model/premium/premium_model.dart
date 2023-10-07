
// ignore_for_file: public_member_api_docs, sort_constructors_first
class PremiumModel {
  List games;
  List artDesign;
  List education;
  // List artDesign;
  // List education;
  PremiumModel({
    required this.games,
    required this.artDesign,
    required this.education,
  });
  
  

  

  // Map<String, dynamic> toJson() {
  //   return <String, dynamic>{
  //     'games': games.map((x) => x.toJson()).toList(),
  //     // 'artDesign': artDesign.map((x) => x.toMap()).toList(),
  //     // 'education': education.map((x) => x.toMap()).toList(),
  //   };
  // }

  factory PremiumModel.fromJson(Map<String, dynamic> json) {
    return PremiumModel(
      games: json['games'].map((json)=>GamesModel.fromJson(json)).toList(),
      artDesign: json['artDesign'].map((json)=>GamesModel.fromJson(json)).toList(),
      education: json['education'].map((json)=>GamesModel.fromJson(json)).toList(),
    );
  }
  }  
class GamesModel {
  String id;
  String nameApp;
  String nameCat;
  String type;
  String rating;
  String size;
  String image;
  String discription;
  String price;
  String download;
  List? images;
  String urlApp;
  GamesModel({
    required this.id,
    required this.nameApp,
    required this.nameCat,
    required this.type,
    required this.rating,
    required this.size,
    required this.image,
    required this.discription,
    required this.price,
    required this.download,
    required this.images,
    required this.urlApp
  });


  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'nameApp': nameApp,
      'nameCat': nameCat,
      'type': type,
      'rating': rating,
      'size': size,
      'image': image,
      'discription': discription,
      'price': price,
      'download': download,
      'images': images,
      'urlApp': urlApp
    };
  }

  factory GamesModel.fromJson(Map<String, dynamic> json) {
    return GamesModel(
      id: json['id'],
      nameApp: json['nameApp'],
      nameCat: json['nameCat'],
      type: json['type'],
      rating: json['rating'],
      size: json['size'],
      image: json['image'],
      discription: json['description'],
      price: json['price'],
      download: json['download'],
      images: json['images'].cast<String>() ,
      urlApp: json['urlApp']
    );
  }

  }

