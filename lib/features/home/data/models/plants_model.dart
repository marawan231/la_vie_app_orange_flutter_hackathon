import 'package:freezed_annotation/freezed_annotation.dart';

part 'plants_model.g.dart';



@JsonSerializable(explicitToJson: true)
class HomePlanetsModel {
  String? type;
  String? message;
  List<Data>? data;

  HomePlanetsModel({this.type, this.message, this.data});

     factory HomePlanetsModel.fromJson(Map<String, dynamic> json) => _$HomePlanetsModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomePlanetsModelToJson(this);

}

@JsonSerializable(explicitToJson: true)
class Data {
  String? productId;
  String? name;
  String? description;
  String? imageUrl;
  String? type;
  int? price;
  bool? available;
  Seed? seed;
  Plant? plant;
  Tool? tool;

  Data(
      {this.productId,
      this.name,
      this.description,
      this.imageUrl,
      this.type,
      this.price,
      this.available,
      this.seed,
      this.plant,
      this.tool});
       factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
   Map<String, dynamic> toJson() => _$DataToJson(this);

}

@JsonSerializable(explicitToJson: true)
class Seed {
  String? seedId;
  String? name;
  String? description;
  String? imageUrl;

  Seed({this.seedId, this.name, this.description, this.imageUrl});


     factory Seed.fromJson(Map<String, dynamic> json) => _$SeedFromJson(json);
   Map<String, dynamic> toJson() => _$SeedToJson(this);

}

@JsonSerializable(explicitToJson: true)
class Plant {
  String? plantId;
  String? name;
  String? description;
  String? imageUrl;
  int? waterCapacity;
  int? sunLight;
  int? temperature;

  Plant(
      {this.plantId,
      this.name,
      this.description,
      this.imageUrl,
      this.waterCapacity,
      this.sunLight,
      this.temperature});
       factory Plant.fromJson(Map<String, dynamic> json) => _$PlantFromJson(json);
   Map<String, dynamic> toJson() => _$PlantToJson(this);


}

@JsonSerializable(explicitToJson: true)
class Tool {
  String? toolId;
  String? name;
  String? description;
  String? imageUrl;

  Tool({this.toolId, this.name, this.description, this.imageUrl});

     factory Tool.fromJson(Map<String, dynamic> json) => _$ToolFromJson(json);
   Map<String, dynamic> toJson() => _$ToolToJson(this);

}
