// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// part of 'responses.dart';
//
// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************
//
// BaseResponsesData _$BaseResponsesDataFromJson(Map<String, dynamic> json) =>
//     BaseResponsesData()
//       ..status = json['status'] as int?
//       ..message = json['message'] as String?;
//
// Map<String, dynamic> _$BaseResponsesDataToJson(BaseResponsesData instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//     };
//
// CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) =>
//     CustomerResponse(
//       name: json['name'] as String?,
//       id: json['id'] as String?,
//       numOfNotification: json['numOfNotification'] as int?,
//     );
//
// Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'name': instance.name,
//       'numOfNotification': instance.numOfNotification,
//     };
//
// ContactsResponse _$ContactsResponseFromJson(Map<String, dynamic> json) =>
//     ContactsResponse(
//       phone: json['phone'] as String?,
//       email: json['email'] as String?,
//       link: json['link'] as String?,
//     );
//
// Map<String, dynamic> _$ContactsResponseToJson(ContactsResponse instance) =>
//     <String, dynamic>{
//       'phone': instance.phone,
//       'email': instance.email,
//       'link': instance.link,
//     };
//
// AuthenticationResponse _$AuthenticationResponseFromJson(
//         Map<String, dynamic> json) =>
//     AuthenticationResponse(
//       customer: json['customer'] == null
//           ? null
//           : CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
//       contacts: json['contacts'] == null
//           ? null
//           : ContactsResponse.fromJson(json['contacts'] as Map<String, dynamic>),
//     )
//       ..status = json['status'] as int?
//       ..message = json['message'] as String?;
//
// Map<String, dynamic> _$AuthenticationResponseToJson(
//         AuthenticationResponse instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//       'customer': instance.customer,
//       'contacts': instance.contacts,
//     };
//
// ForgetPasswordResponse _$ForgetPasswordResponseFromJson(
//         Map<String, dynamic> json) =>
//     ForgetPasswordResponse(
//       support: json['support'] as String?,
//     )
//       ..status = json['status'] as int?
//       ..message = json['message'] as String?;
//
// Map<String, dynamic> _$ForgetPasswordResponseToJson(
//         ForgetPasswordResponse instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//       'support': instance.support,
//     };
//
// HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
//       data: json['data'] == null
//           ? null
//           : HomeDataResponse.fromJson(json['data'] as Map<String, dynamic>),
//     )
//       ..status = json['status'] as int?
//       ..message = json['message'] as String?;
//
// Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//       'data': instance.data,
//     };
//
// HomeDataResponse _$HomeDataResponseFromJson(Map<String, dynamic> json) =>
//     HomeDataResponse(
//       service: (json['services'] as List<dynamic>?)
//           ?.map((e) => ServiceResponse.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       banner: (json['banners'] as List<dynamic>?)
//           ?.map((e) => BannerResponse.fromJson(e as Map<String, dynamic>))
//           .toList(),
//       store: (json['stores'] as List<dynamic>?)
//           ?.map((e) => StoreResponse.fromJson(e as Map<String, dynamic>))
//           .toList(),
//     );
//
// Map<String, dynamic> _$HomeDataResponseToJson(HomeDataResponse instance) =>
//     <String, dynamic>{
//       'services': instance.service,
//       'banners': instance.banner,
//       'stores': instance.store,
//     };
//
// ServiceResponse _$ServiceResponseFromJson(Map<String, dynamic> json) =>
//     ServiceResponse(
//       id: json['id'] as int?,
//       title: json['title'] as String?,
//       image: json['image'] as String?,
//     );
//
// Map<String, dynamic> _$ServiceResponseToJson(ServiceResponse instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'title': instance.title,
//       'image': instance.image,
//     };
//
// BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) =>
//     BannerResponse(
//       id: json['id'] as int?,
//       title: json['title'] as String?,
//       image: json['image'] as String?,
//     );
//
// Map<String, dynamic> _$BannerResponseToJson(BannerResponse instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'title': instance.title,
//       'image': instance.image,
//     };
//
// StoreResponse _$StoreResponseFromJson(Map<String, dynamic> json) =>
//     StoreResponse(
//       id: json['id'] as int?,
//       title: json['title'] as String?,
//       image: json['image'] as String?,
//     );
//
// Map<String, dynamic> _$StoreResponseToJson(StoreResponse instance) =>
//     <String, dynamic>{
//       'id': instance.id,
//       'title': instance.title,
//       'image': instance.image,
//     };
//
// StoreDetailsResponse _$StoreDetailsResponseFromJson(
//         Map<String, dynamic> json) =>
//     StoreDetailsResponse(
//       json['id'] as int?,
//       json['title'] as String?,
//       json['image'] as String?,
//       json['details'] as String?,
//       json['services'] as String?,
//       json['about'] as String?,
//     )
//       ..status = json['status'] as int?
//       ..message = json['message'] as String?;
//
// Map<String, dynamic> _$StoreDetailsResponseToJson(
//         StoreDetailsResponse instance) =>
//     <String, dynamic>{
//       'status': instance.status,
//       'message': instance.message,
//       'id': instance.id,
//       'title': instance.title,
//       'image': instance.image,
//       'details': instance.details,
//       'services': instance.services,
//       'about': instance.about,
//     };
