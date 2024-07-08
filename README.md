# Flutter Todo App with GetX and Hive

A feature-rich Todo application built using Flutter, leveraging GetX for state management and Hive for local data persistence.

## Features

- Add new todos
- Edit existing todos
- Mark todos as complete or incomplete
- Delete todos
- Local data persistence using Hive
- Clean architecture with GetX

## Dependencies

- [get](https://pub.dev/packages/get)
- [hive](https://pub.dev/packages/hive)
- [hive_flutter](https://pub.dev/packages/hive_flutter)
- [path_provider](https://pub.dev/packages/path_provider)
- [build_runner](https://pub.dev/packages/build_runner) (dev dependency)
- [hive_generator](https://pub.dev/packages/hive_generator) (dev dependency)

## Project Structure

```
lib/
  ├── app/
  │   ├── bindings/
  │   │   └── home_binding.dart
  │   ├── controllers/
  │   │   └── todo_controller.dart
  │   ├── data/
  │   │   ├── models/
  │   │   │   └── todo_model.dart
  │   │   └── providers/
  │   │       └── todo_provider.dart
  │   ├── modules/
  │   │   └── home/
  │   │       ├── views/
  │   │       │   └── home_view.dart
  │   │       └── widgets/
  │   │           └── todo_item.dart
  │   ├── routes/
  │   │   └── app_pages.dart
  │   └── themes/
  │       └── app_theme.dart
  └── main.dart
```

## Getting Started

1. Ensure you have Flutter installed on your machine. For installation instructions, refer to the official [Flutter website](https://flutter.dev/docs/get-started/install).

2. Clone this repository:
```
   git clone https://github.com/Stoic2002/flutter_todoapp_getx.git
```

3. Navigate to the project directory:
```  
   cd flutter_todoapp_getx
```   

4. Install the dependencies:
```   
   flutter pub get
```   

5. Run the build_runner to generate the necessary Hive adapter code:
```   
   flutter pub run build_runner build
```   

6. Run the app:
```
   flutter run
```   

## Usage

- To add a new todo, tap the floating action button and enter the todo title in the dialog that appears.
- To mark a todo as complete or incomplete, tap the checkbox next to the todo.
- To edit a todo, tap the edit icon on the right side of the todo item and modify the title in the dialog that appears.
- To delete a todo, swipe the todo item from right to left.
