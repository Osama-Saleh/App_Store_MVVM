
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
  String? discription;
  SocialModel({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.download,
    this.image,
    this.images,
    this.discription,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nameApp': nameApp,
      'type': type,
      'rating': rating,
      'size': size,
      'download': download,
      'image': image,
      'images': images,
      'discription': discription,
    };
  }

  factory SocialModel.fromMap(Map<String, dynamic> map) {
    return SocialModel(
      id: map['id'] ,
      nameApp: map['nameApp'] ,
      type: map['type'],
      rating: map['rating'],
      size: map['size'],
      download: map['download'],
      image: map['image'],
      // json list as dinamic list
      // images: map['images'].fromMap(map['images']) ,
      // images: map['images'].map((item) => item.toString()) ,
      images: map['images'].cast<String>() ,
      discription: map['discription'],
    );
  }


}
