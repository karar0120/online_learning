// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
//
//
// import '../../../app/app_prefs.dart';
// import '../../resources/image_manager.dart';
// import '../../resources/routes_manager.dart';
// import '../../resources/strings_manager.dart';
//
// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);
//
//   @override
//   State<LoginView> createState() => _LoginViewState();
// }
//
// class _LoginViewState extends State<LoginView> {
//   final loginViewModel = instance<LoginViewModel>();
//   final TextEditingController _useNameTextEditingController =
//       TextEditingController();
//   final TextEditingController _passwordTextEditingController =
//       TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   final AppPreferences _appPreferences =instance<AppPreferences>();
//   _bind() {
//     loginViewModel.start();
//     _useNameTextEditingController.addListener(
//         () => loginViewModel.setUserName(_useNameTextEditingController.text));
//     _passwordTextEditingController.addListener(
//         () => loginViewModel.setPassword(_passwordTextEditingController.text));
//     loginViewModel.isUserLoggedInSuccessfullyStreamController.stream
//         .listen((isLoggedIn) {
//       if (isLoggedIn) {
//         SchedulerBinding.instance.addPostFrameCallback((_) {
//           _appPreferences.setUserLoginIn();
//           Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
//         });
//       }
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _bind();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManger.white,
//       body: StreamBuilder<StateFlow>(
//         stream: loginViewModel.getOutputState,
//         builder: (context, snapshot) {
//           return snapshot.data?.getScreenWidget(
//                   context: context,
//                   contentScreenWidget: _getContentWidget(),
//                   retryActionFunction: () {}) ??
//               _getContentWidget();
//         },
//       ),
//     );
//   }
//
//   Widget _getContentWidget() {
//     return Container(
//       padding: const EdgeInsets.only(top: AppPadding.p100),
//       child: SingleChildScrollView(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Center(
//                 child: Image.asset(ImageManger.splashScreen),
//               ),
//               const SizedBox(
//                 height: AppSize.s28,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: AppPadding.p28, right: AppPadding.p28),
//                 child: StreamBuilder<bool>(
//                   stream: loginViewModel.outIsUserNameValid,
//                   builder: (context, snapShot) {
//                     return TextFormField(
//                       keyboardType: TextInputType.emailAddress,
//                       controller: _useNameTextEditingController,
//                       decoration: InputDecoration(
//                         hintText: AppString.username.tr(),
//                         labelText: AppString.username.tr(),
//                         errorText: (snapShot.data ?? true)
//                             ? null
//                             : AppString.usernameError.tr(),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: AppSize.s28,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: AppPadding.p28, right: AppPadding.p28),
//                 child: StreamBuilder<bool>(
//                   stream: loginViewModel.outIsPasswordValid,
//                   builder: (context, snapShot) {
//                     return TextFormField(
//                       keyboardType: TextInputType.visiblePassword,
//                       controller: _passwordTextEditingController,
//                       decoration: InputDecoration(
//                         hintText: AppString.password.tr(),
//                         labelText: AppString.password.tr(),
//                         errorText: (snapShot.data ?? true)
//                             ? null
//                             : AppString.passwordError.tr(),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               const SizedBox(
//                 height: AppSize.s28,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     left: AppPadding.p28, right: AppPadding.p28),
//                 child: StreamBuilder<bool>(
//                   stream: loginViewModel.outAreAllInputsValid,
//                   builder: (context, snapShot) {
//                     return SizedBox(
//                       width: double.infinity,
//                       height: AppSize.s40,
//                       child: ElevatedButton(
//                           onPressed: (snapShot.data ?? false)
//                               ? () {
//                                   loginViewModel.login();
//                                 }
//                               : null,
//                           child:  Text(AppString.login.tr())),
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                     top: AppPadding.p8,
//                     left: AppPadding.p28,
//                     right: AppPadding.p28),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pushNamed(
//                             context, Routes.forgetPasswordRoute);
//                       },
//                       child: Text(
//                         AppString.forgetPassword.tr(),
//                         style: Theme.of(context).textTheme.titleMedium,
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pushNamed(
//                             context, Routes.registerRoute);
//                       },
//                       child: Text(
//                         AppString.registerText.tr(),
//                         style: Theme.of(context).textTheme.titleMedium,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     loginViewModel.dispose();
//     super.dispose();
//   }
// }
import 'package:flutter/material.dart';
import 'package:online_learning/presentation/resources/color_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: ColorManager.darkGray,
    );
  }
}
