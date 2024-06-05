import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/ui/shared/alert_dialog.dart';

class ApiException {

  CustomAlertDialog alertDialog = CustomAlertDialog();

  void checkException({required DioException exception, required BuildContext context}) {
    List<String> errorContent = this.errorContent(exception);
    alertDialog.showErrorDialog(
        context: context,
        title: errorContent[0],
        message: errorContent[1]
    );
  }

  void defaultErrorMessage({required BuildContext context}) {
    alertDialog.showErrorDialog(
        context: context,
        title: "Unknown error",
        message: "Please, try again!"
    );
  }

  List<String> errorContent(DioException exception) {
    switch(exception.type) {
      case DioExceptionType.connectionError:
        return [
          "Connection error",
          "Try again!"
        ];
      case DioExceptionType.connectionTimeout:
        return [
          "Connection time out",
          "Try again!"
        ];
      case DioExceptionType.sendTimeout:
        return [
          "The request timed out while sending data.",
          "Please check your internet connection and try again."
        ];
      case DioExceptionType.receiveTimeout:
        return [
          "The request timed out while waiting for a response",
          "Please check your internet connection and try again."
        ];
      case DioExceptionType.badCertificate:
        return [
          "Unknown error",
          "Please check your internet connection and try again."
        ];
      case DioExceptionType.badResponse:
        return [
          "An unexpected response was received from the server.",
          "Please try again later."
        ];
      case DioExceptionType.cancel:
        return [
          "The request was cancelled",
          "Please try again."
        ];
      case DioExceptionType.unknown:
        return [
          "Unknown error",
          "Please try again unknown"
        ];
    }
  }
}