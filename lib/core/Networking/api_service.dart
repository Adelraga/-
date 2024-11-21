// import 'package:dio/dio.dart';
// import 'package:holy_quran_app/features/home/data/models/surah_list_model.dart';

// import 'package:json_annotation/json_annotation.dart';
// import 'package:retrofit/retrofit.dart';

// import 'api_constants.dart';
// part 'api_service.g.dart';

// @RestApi(baseUrl: ApiConstants.apiBaseUrl) //BaseUrl
// abstract class ApiService {
//   factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

//   // @POST(ApiConstants.login) // the endpoint
//   // Future<LoginResponse> login( @Body() LoginRequestBody loginRequestBody);

//   // @POST(ApiConstants.signup)
//   // Future<SignupResponse> signup( @Body() SignupRequestBody loginRequestBody);

//   @GET(ApiConstants.surahList)
//   Future<SurahlistModel> getSurahList ( );

//   // ignore: unnecessary_brace_in_string_interps
// //   @GET('/users/{id}') // the endpoint
// //   Future<Users> getUerById(@Path('id') int id);

// //   @POST('/users') // the endpoint
// //   Future<Users> createNewUser(
// //       @Body() Users newUser, @Header('Authorization') String token);

// //   @DELETE('/users/{id}') // the endpoint
// //   Future<dynamic> deleteUser(
// //       @Path('id') int id, @Header('Authorization') String token);
// }

// // to create the web_services.g.dart use this commend ==>"flutter pub run build_runner build"

// // note i must write this line part 'web_services.g.dart'; and the name must be the same name of the file 
// // web_services.dart