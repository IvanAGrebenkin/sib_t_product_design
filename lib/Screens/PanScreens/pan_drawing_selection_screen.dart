import 'package:flutter/material.dart';
import '../../Utils/widgets.dart';

// Класс для объявления передаваемых аргумнтов
class PassedArguments {
  final String panTypeValue;
  final String panShapeValue;
  final String panSizeValue;

  PassedArguments(this.panTypeValue, this.panShapeValue, this.panSizeValue,);
}

class PanDrawingSelectionScreen extends StatelessWidget {
  const PanDrawingSelectionScreen({Key? key}) : super(key: key);
  get pageName => 'Выберите чертеж кастрюли';// Заголовок для AppBar


  static const routeName = '/pan_drawing_selection_screen';// Маршрут куда передаются аргументы

  @override
  Widget build(BuildContext context) {

    // Метод для доступа к класу, в котором объявлены передаваемые аргументы
    final args = ModalRoute.of(context)!.settings.arguments as PassedArguments;

    return Scaffold(appBar: nextPageAppBar(context, pageName),
      drawer: navDrawer(context),
      body: Center(
        child: Column(
            children: [
              const SizedBox(height:20,),
              Text('Выбран тип: ${args.panTypeValue}'),// Вывод типа кастрюли
              const SizedBox(height:20,),
              Text('Выбрана форма: ${args.panShapeValue}'),// Вывод формы кастрюли
              const SizedBox(height:20,),
              Text('Выбрана вместимость: ${args.panSizeValue}'),// Вывод формы кастрюли
            ]
        ),
      ),
    );
  }
}