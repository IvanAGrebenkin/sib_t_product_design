import 'package:flutter/material.dart';

import '../Screens/FlatItemsScreens/flat_item_drawing_view_screen.dart';
import '../Screens/FlatItemsScreens/flat_items_selection_screen.dart';
import '../Screens/HouseholdItemsScreens/household_items_drawing_selection_screen.dart';
import '../Screens/HouseholdItemsScreens/household_items_drawing_view_screen.dart';
import '../Screens/HouseholdItemsScreens/household_items_selection_screen.dart';
import '../Screens/KettleScreens/kettle_drawing_selection_screen.dart';
import '../Screens/KettleScreens/kettle_drawing_view_screen.dart';
import '../Screens/KettleScreens/kettle_selection_screen.dart';
import '../Screens/PanScreens/pan_drawing_selection_screen.dart';
import '../Screens/PanScreens/pan_drawing_view_screen.dart';
import '../Screens/PanScreens/pan_selection_screen.dart';
import '../Screens/auth_screen.dart';
import '../Screens/consent_to_use.dart';
import '../Screens/group_selection_screen.dart';

abstract class MainNavigationRouteNames {
  static const authScreen = '/'; //: (context) => const AuthScreen(),
  static const consentToUse = '/consent_to_use'; //: (context) => const ConsentToUse(),
  static const groupSelectionScreen = '/group_selection_screen'; //: (context) => const GroupSelectionScreen(),
  static const panSelection = '/pan_selection_screen'; //: (context) => const PanSelection(),
  static const kettleSelection = '/kettle_selection_screen'; //: (context) => const KettleSelection(),
  static const householdItemsSelection = '/household_items_selection_screen'; //: (context) => const HouseholdItemsSelection(),
  static const flatItemsSelection = '/flat_items_selection_screen'; //: (context) => const FlatItemsSelection(),
  static const panDrawingSelectionScreen = PanDrawingSelectionScreen.routeName; //: (context) => const PanDrawingSelectionScreen(),
  static const panDrawingViewScreen = PanDrawingViewScreen.routeName; //: (context) => const PanDrawingViewScreen(),
  static const kettleDrawingSelectionScreen = KettleDrawingSelectionScreen.routeName; //: (context) => const KettleDrawingSelectionScreen(),
  static const kettleDrawingViewScreen = KettleDrawingViewScreen.routeName; //: (context) => const KettleDrawingViewScreen(),
  static const flatItemsDrawingViewScreen = FlatItemsDrawingViewScreen.routeName; //: (context) => const FlatItemsDrawingViewScreen(),
  static const householdItemsDrawingSelectionScreen = HouseholdItemsDrawingSelectionScreen.routeName; //: (context) => const HouseholdItemsDrawingSelectionScreen(),
  static const householdItemsDrawingViewScreen = HouseholdItemsDrawingViewScreen.routeName; //: (context) => const HouseholdItemsDrawingViewScreen(),
}

class MainNavigation {
  String initialRoute (bool isAuth) => isAuth
      ? MainNavigationRouteNames.groupSelectionScreen
      : MainNavigationRouteNames.authScreen;

  final routes = <String,Widget Function(BuildContext)>{
    '/': (context) => const AuthScreen(),
    '/consent_to_use': (context) => const ConsentToUse(),
    '/group_selection_screen': (context) => const GroupSelectionScreen(),
    '/pan_selection_screen': (context) => const PanSelection(),
    '/kettle_selection_screen': (context) => const KettleSelection(),
    '/household_items_selection_screen': (context) => const HouseholdItemsSelection(),
    '/flat_items_selection_screen': (context) => const FlatItemsSelection(),
    PanDrawingSelectionScreen.routeName: (context) => const PanDrawingSelectionScreen(),
    PanDrawingViewScreen.routeName: (context) => const PanDrawingViewScreen(),
    KettleDrawingSelectionScreen.routeName: (context) => const KettleDrawingSelectionScreen(),
    KettleDrawingViewScreen.routeName: (context) => const KettleDrawingViewScreen(),
    FlatItemsDrawingViewScreen.routeName: (context) => const FlatItemsDrawingViewScreen(),
    HouseholdItemsDrawingSelectionScreen.routeName: (context) => const HouseholdItemsDrawingSelectionScreen(),
    HouseholdItemsDrawingViewScreen.routeName: (context) => const HouseholdItemsDrawingViewScreen(),
  };
}