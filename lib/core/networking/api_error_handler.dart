import 'package:daweny/core/networking/api_errors_model.dart';
import 'package:dio/dio.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "Connection to server failed");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was cancelled");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "Connection timeout with the server");
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message: "Connection to the server failed due to internet connection");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: "Receive timeout in connection with the server");
        case DioExceptionType.badResponse:
          return _handleError(error.response?.statusCode, error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: "Send timeout in connection with the server");
        default:
          return ApiErrorModel(message: "Something went wrong");
      }
    } else {
      return ApiErrorModel(message: "Unexpected error occurred");
    }
  }

  static ApiErrorModel _handleError(int? statusCode, dynamic error) {
    // Handle different response data types
    if (error is Map<String, dynamic>) {
      // If error is a Map, extract message and data as before
      return ApiErrorModel(
        message: error['message'] ?? "Unknown error occurred",
        code: statusCode,
        errors: error['data'],
      );
    } else if (error is List) {
      // If error is a List, handle it appropriately
      String message = "Unknown error occurred";
      
      // Try to extract message from the first item if it's a Map
      if (error.isNotEmpty && error.first is Map<String, dynamic>) {
        Map<String, dynamic> firstError = error.first as Map<String, dynamic>;
        message = firstError['message'] ?? firstError['error'] ?? message;
      }
      
      return ApiErrorModel(
        message: message,
        code: statusCode,
        errors: error
      );
    } else if (error is String) {
      // If error is a String, use it directly as message
      return ApiErrorModel(
        message: error,
        code: statusCode,
      );
    } else {
      // Fallback for any other type
      return ApiErrorModel(
        message: "Unknown error occurred",
        code: statusCode,
        errors: error,
      );
    }
  }
}