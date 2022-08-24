import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/features/home/data/models/plants_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/auth/data/models/auth_model.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: "https://lavie.orangedigitalcenteregypt.com/api/v1/")
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @POST("auth/signin")
  Future<AuthModel> login(
    @Field("email") email,
    @Field("password") password,
  );

  //register
  @POST("auth/signup")
  Future<AuthModel> register(
    @Field("firstName") firstName,
    @Field("lastName") lastName,
    @Field("email") email,
    @Field("password") password,
  );

  //get planets producs
  @GET("products")
  Future<HomePlanetsModel> fetchPlanets(@Header('Authorization') String token);
}
