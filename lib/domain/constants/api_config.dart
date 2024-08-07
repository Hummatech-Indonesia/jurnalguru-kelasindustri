import 'package:flutter/foundation.dart';

abstract class ApiConfig {
  // static const String _devBaseUrl = "https://classhummatech.mijurnal.com";
  static const String _devBaseUrl = "https://class.hummatech.com";
  static const String _prodBaseUrl = "https://class.hummatech.com";
  static String baseUrl = kDebugMode ? _devBaseUrl : _prodBaseUrl;
  static String apiUrl = "$baseUrl/api";
  static String storageUrl = "$baseUrl/storage";
}
