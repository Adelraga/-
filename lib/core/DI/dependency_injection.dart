// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:holy_quran_app/features/home/data/repos/surah_list_repo.dart';
// import 'package:holy_quran_app/features/home/logic/surah_list/surah_list_cubit.dart';

// import '../Networking/api_service.dart';
// import 'dio_factory_logger.dart';

// final getIt = GetIt.instance;
// void initGetIt() {
//   Dio dio = DioFactory.getDio();
//   // singleton is the used of method we take acopy of it many times so we make it one time and reused it  /// here a singleton for apiservice


//   /// here a singleton for apiservice
//  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//   // surahList
//   getIt.registerFactory<SurahListCubit>(() => SurahListCubit(getIt()));
//   getIt.registerLazySingleton<SurahListRepo>(() => SurahListRepo(getIt()));

//   // signup
//   // getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
//   // getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));

//   // // specialization
//   // getIt.registerLazySingleton<SpecializationRepo>(() => SpecializationRepo(getIt()));
// }
