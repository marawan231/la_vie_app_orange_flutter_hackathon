// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePlanetsModel _$HomePlanetsModelFromJson(Map<String, dynamic> json) =>
    HomePlanetsModel(
      type: json['type'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomePlanetsModelToJson(HomePlanetsModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      productId: json['productId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      type: json['type'] as String?,
      price: json['price'] as int?,
      available: json['available'] as bool?,
      seed: json['seed'] == null
          ? null
          : Seed.fromJson(json['seed'] as Map<String, dynamic>),
      plant: json['plant'] == null
          ? null
          : Plant.fromJson(json['plant'] as Map<String, dynamic>),
      tool: json['tool'] == null
          ? null
          : Tool.fromJson(json['tool'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'price': instance.price,
      'available': instance.available,
      'seed': instance.seed?.toJson(),
      'plant': instance.plant?.toJson(),
      'tool': instance.tool?.toJson(),
    };

Seed _$SeedFromJson(Map<String, dynamic> json) => Seed(
      seedId: json['seedId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$SeedToJson(Seed instance) => <String, dynamic>{
      'seedId': instance.seedId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };

Plant _$PlantFromJson(Map<String, dynamic> json) => Plant(
      plantId: json['plantId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      waterCapacity: json['waterCapacity'] as int?,
      sunLight: json['sunLight'] as int?,
      temperature: json['temperature'] as int?,
    );

Map<String, dynamic> _$PlantToJson(Plant instance) => <String, dynamic>{
      'plantId': instance.plantId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'waterCapacity': instance.waterCapacity,
      'sunLight': instance.sunLight,
      'temperature': instance.temperature,
    };

Tool _$ToolFromJson(Map<String, dynamic> json) => Tool(
      toolId: json['toolId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$ToolToJson(Tool instance) => <String, dynamic>{
      'toolId': instance.toolId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
