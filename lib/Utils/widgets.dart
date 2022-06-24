import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sib_t_product_design/Utils/navigation.dart';


PreferredSizeWidget homePageAppBar(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),// Кнопка "Бургер" для открытия Drawer
    title: Center(
        child: Text('$pageName',
          style: const TextStyle(
            fontSize: 20,
          ),
      )
    ),// Заголовок страницы
);// AppBar для страницы выбора группы

PreferredSizeWidget nextPageAppBar(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),// Кнопка "Бургер" для открытия Drawer
    title: Center(
        child: Text('$pageName',
          textAlign:TextAlign.center ,
          style: const TextStyle(
            fontSize: 18,
          ),
        )
    ),// Заголовок страницы
    actions: <Widget>[
      IconButton(
        tooltip: 'На начальную страницу',
        onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.groupSelectionScreen);},
        // onPressed: (){Navigator.pushNamed(context, '/group_selection_screen');},
        icon: const Icon(Icons.home),),// Кнопка перехода на экран выбора группы
      IconButton(
        tooltip: 'На предыдущую страницу',
        onPressed: (){Navigator.pop(context);},
        icon: const Icon(Icons.arrow_back),),// Кнопка перехода на предыдущую страницу
    ]
);// AppBar для последующих страниц

PreferredSizeWidget drawingViewScreenPageAppBar(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),// Кнопка "Бургер" для открытия Drawer
    title: Center(
        child: Text('$pageName',
          textAlign:TextAlign.center ,
          style: const TextStyle(
            fontSize: 18,
          ),
        )
    ),// Заголовок страницы
    actions: <Widget>[
      IconButton(
        tooltip: 'На начальную страницу',
        onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.groupSelectionScreen);},
        icon: const Icon(Icons.home),),// Кнопка перехода на экран выбора группы
      IconButton(
        tooltip: 'На предыдущую страницу',
        onPressed: (){Navigator.pop(context);},
        icon: const Icon(Icons.arrow_back),),// Кнопка перехода на предыдущую страницу
    ]
);// AppBar для последующих страниц

PreferredSizeWidget panDrawingSelectionScreenAppBar(context, pageName) => AppBar(
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () { Scaffold.of(context).openDrawer(); },
          tooltip: 'Открыть меню навигации',
        );
      },
    ),// Кнопка "Бургер" для открытия Drawer
    title: Center(
        child: Text('$pageName',
          textAlign:TextAlign.center ,
          style: const TextStyle(
            fontSize: 20,
          ),
        )
    ),// Заголовок страницы
    actions: <Widget>[
      IconButton(
        tooltip: 'На начальную страницу',
        onPressed: (){Navigator.pushNamed(context, MainNavigationRouteNames.groupSelectionScreen);},
        icon: const Icon(Icons.home),),// Кнопка перехода на экран выбора группы
      IconButton(
        tooltip: 'На предыдущую страницу',
        onPressed: (){Navigator.pop(context);},
        icon: const Icon(Icons.arrow_back),),// Кнопка перехода на предыдущую страницу
    ]
);// AppBar для страницы выбора чертежа кастрюли

Widget navDrawer(context) => Drawer(
  child: SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: MediaQuery.of(context).size.height,
      ),// Ограничения в соответствии с разрешением экрана устройства
      child: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),// Отступ по вертикали
            SizedBox(
              width: 165,
              height: 105,
              child: Image.asset ('assets/images/logo SibTov.png')),//Логотип "Сибирские товары"
            const SizedBox(height: 15,),// Отступ по вертикали
            const Divider(
              thickness: 2,
            ),// Линия-разделитель
            ListTile(
              leading: SizedBox(
                child: Image.asset ('assets/images/pan_group.png',),
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Text('Кастрюли',),
              ),
              onTap: (){Navigator.pushNamed(context, MainNavigationRouteNames.panSelection);},
            ),// Кнопка перехода к списку кастрюль
            ListTile(
              leading: SizedBox(
                child: Image.asset ('assets/images/kettle_group.png',),
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 38.0),
                child: Text('Чайники'),
              ),
              onTap: (){Navigator.pushNamed(context, MainNavigationRouteNames.kettleSelection);},
            ),// Кнопка перехода к списку чайников
            ListTile(
              leading: SizedBox(
                child: Image.asset ('assets/images/household_items_group.png',),
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 22.0),
                child: Text('Хозяйственные изделия'),
              ),
              onTap: (){Navigator.pushNamed(context, MainNavigationRouteNames.householdItemsSelection);},
            ),// Кнопка перехода к к списку хозяйственных изделий
            ListTile(
              leading: SizedBox(
                child: Image.asset ('assets/images/flat_items_group.png',),
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 45.0),
                child: Text('Плоские изделия'),
              ),
              onTap: (){Navigator.pushNamed(context, MainNavigationRouteNames.flatItemsSelection);},
            ),// Кнопка перехода к к списку плоских изделий
            const Divider(
              thickness: 2,
            ),// Линия-разделитель
            ListTile(
              leading: const Icon(Icons.exit_to_app,
                color: Colors.blueAccent,),
              title: const Text('Закрыть приложение'),
              onTap: (){SystemChannels.platform.invokeMethod('SystemNavigator.pop');},
            ),// Кнопка выхода из приложения
            const Divider(
              thickness: 2,
            ),// Линия-разделитель
            const Expanded(child: SizedBox()),
            SizedBox(
                child: Image.asset ('assets/images/sibt_auth_background.png')),//Фоновое изображение
          ],
        ),
      ),
    ),// Виджет для задания габаритов
  ),// Скроллинг внутри панели
);// Выдвигающаяся панель Drawer


