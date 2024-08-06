import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  List<ThemeMode> themeType = [
    ThemeMode.dark,
    ThemeMode.light,
  ];
  bool value = true;
  final _box = GetStorage();
  final _key = "isDarkMode";
  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  void changeTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
