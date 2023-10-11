

// final instance = GetIt.instance;
//
// Future<void> initAppModule() async {
//   final sharedPreferences = await SharedPreferences.getInstance();
//
//   instance.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
//
//   instance.registerLazySingleton<AppPreferences>(
//       () => AppPreferences(sharedPreferences: instance()));
//
//   instance.registerLazySingleton<NetworkInfo>(() =>
//       NetworkInfoImpl(internetConnectionChecker: InternetConnectionChecker()));
//
//   instance.registerLazySingleton<DioFactory>(
//       () => DioFactory(appPreferences: instance()));
//
//   Dio dio = await instance<DioFactory>().getDio();
//
//   instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
//
//   instance.registerLazySingleton<RemoteDataSource>(
//       () => RemoteDataSourceImpl(appServiceClient: instance()));
//
//
//   instance.registerLazySingleton<LocalDataSource>(
//           () => LocalDataSourceImp());
//
//   instance.registerLazySingleton<Repository>(() =>
//       RepositoryImpl(networkInfo: instance(), remoteDataSource: instance(),localDataSource: instance()));
// }
//
// Future<void> initLoginModule() async {
//   if (!GetIt.I.isRegistered<LoginUseCase>()) {
//     instance.registerFactory<LoginUseCase>(
//         () => LoginUseCase(repository: instance()));
//
//     instance.registerFactory<LoginViewModel>(
//         () => LoginViewModel(loginUseCase: instance()));
//   }
// }
//
// Future<void> initForgetModule() async {
//   if (!GetIt.I.isRegistered<ForgetPasswordUseCase>()) {
//     instance.registerFactory<ForgetPasswordUseCase>(
//         () => ForgetPasswordUseCase(repository: instance()));
//
//     instance.registerFactory<ForgetPasswordViewModel>(
//         () => ForgetPasswordViewModel(forgetPasswordUseCase: instance()));
//   }
// }
//
// Future<void> initRegisterModule() async {
//   if (!GetIt.I.isRegistered<RegisterUseCase>()) {
//     instance.registerFactory<RegisterUseCase>(
//         () => RegisterUseCase(repository: instance()));
//     instance.registerFactory<RegisterViewModel>(
//         () => RegisterViewModel(registerUseCase: instance()));
//     instance.registerFactory<ImagePicker>(
//             () => ImagePicker());
//   }
// }
//
// Future<void> initHomeModule() async {
//   if (!GetIt.I.isRegistered<GetHomeDataUseCase>()) {
//     instance.registerFactory<GetHomeDataUseCase>(
//             () => GetHomeDataUseCase(repository: instance()));
//     instance.registerFactory<HomeViewModel>(
//             () => HomeViewModel(getHomeDataUseCase: instance()));
//   }
// }
//
// Future<void> initStoreDetailsModule() async {
//   if (!GetIt.I.isRegistered<StoreDetailsUseCase>()) {
//     instance.registerFactory<StoreDetailsUseCase>(
//             () => StoreDetailsUseCase(repository: instance()));
//     instance.registerFactory<StoreDetailsViewModel>(
//             () => StoreDetailsViewModel(storeDetailsUseCase: instance()));
//   }
// }
