
// ignore_for_file: public_member_api_docs, sort_constructors_first
class SocialModel {
  String? id;
  String? nameApp;
  String? type;
  String? rating;
  String? size;
  String? download;
  String? image;
  List? images;
  String? description;
  SocialModel({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.download,
    this.image,
    this.images,
    this.description,
  });


  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'nameApp': nameApp,
      'type': type,
      'rating': rating,
      'size': size,
      'download': download,
      'image': image,
      'images': images,
      'description': description,
    };
  }

  factory SocialModel.fromJson(Map<String, dynamic> json) {
    return SocialModel(
      id: json['id'] ,
      nameApp: json['nameApp'] ,
      type: json['type'],
      rating: json['rating'],
      size: json['size'],
      download: json['download'],
      image: json['image'],
      // json list as dinamic list
      // images: json['images'].fromMap(json['images']) ,
      // images: json['images'].json((item) => item.toString()) ,
      images: json['images'].cast<String>() ,
      description: json['description'],
    );
  }


}
