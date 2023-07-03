// // ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart';

// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// class CustomDio {
//   var _dio;

//   CustomDio() {
//     _dio = Dio();

//     _dio.interceptors.add(
//       PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//           responseHeader: true,
//           responseBody: true,
//           error: true,
         
//           // canShowLog: kDebugMode,
//           ),
//     );
//   }
//   CustomDio.() {
//     _dio = Dio();
//     _dio.interceptors.add(
//       PrettyDioLogger(
//           requestHeader: true,
//           requestBody: true,
//           responseHeader: true,
//           responseBody: true,
//           error: true,
//           ),
//     );
//   }
//   Dio get instance => _dio;
//   final kBaseUrl = "https://my-json-server.typicode.com/Adrianogba/desafio-flutter/purchases;
 

//   _onResponse(response, ResponseInterceptorHandler handler) {
//     print(response.data);
//     return handler.next(response);
//   }

//   _onError(e, handler) async {
  
//             //create request with new access token
//             final opts = Options(
//                 method: e.requestOptions.method,
//                 headers: e.requestOptions.headers);
//             final cloneReq = await _dio.request(e.requestOptions.path,
//                 options: opts,
//                 data: e.requestOptions.data,
//                 queryParameters: e.requestOptions.queryParameters);

//             return handler.resolve(cloneReq);
          

//   }
// }
//         return _dio;
//       } catch (e, s) {
//         return log('Erro não esperado', error: e, stackTrace: s);
//       }
   
