import 'package:flutter/material.dart';
import 'package:sib_t_product_design/Utils/navigation.dart';
import '../Utils/decoration.dart';
import '../Utils/widgets.dart';

class GroupSelectionScreen extends StatefulWidget {
  const GroupSelectionScreen({Key? key}) : super(key: key);
  @override
  State<GroupSelectionScreen> createState() => _GroupSelectionScreenState();
}

class _GroupSelectionScreenState extends State<GroupSelectionScreen> {
  get pageName => 'Выбор группы изделий';// Имя заголовка в AppBar
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: homePageAppBar(context, pageName),
        drawer: navDrawer(context),
        body: Container(
          decoration: backgroundOfOthersScreen,// Задание фонового изображения
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),// Ограничения в соответствии с разрешением экрана устройства
            child: Center(
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child:SizedBox()),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.panSelection);},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/pan_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Кастрюли',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы кастрюль
                  const Expanded(
                      flex: 1,
                      child:SizedBox()),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.kettleSelection);},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/kettle_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Чайники',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы чайников
                  const Expanded(
                      flex: 1,
                      child:SizedBox()),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.householdItemsSelection);},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/household_items_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Хозяйственные изделия',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы Хозяйственные изделия
                  const Expanded(
                      flex: 1,
                      child:SizedBox()),// Отступ по вертикали
                  SizedBox(height: 126,width: 178,
                    child: ElevatedButton(
                      style: groupButtonDecoration,
                      onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.flatItemsSelection);},
                      child: Column(
                        children: [
                          Expanded(child: Image.asset ('assets/images/flat_items_group.png',),),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Плоские изделия',
                              textAlign: TextAlign.center,
                              style: groupSelectionButtonTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// Кнопка выбора группы Плоские изделия
                  const Expanded(
                      flex: 1,
                      child:SizedBox()),// Отступ по вертикали
                ],
              ),
            ),
          ),// Скроллинг кнопок на странице
        ),
      ),
    );
  }
}


