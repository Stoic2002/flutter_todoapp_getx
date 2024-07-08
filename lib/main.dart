import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app/routes/app_pages.dart';
import 'app/themes/app_theme.dart';
import 'app/data/models/todo_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoModelAdapter());
  await Hive.openBox<TodoModel>('todos');
  runApp(
    GetMaterialApp(
      title: "Todo App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    ),
  );
}
