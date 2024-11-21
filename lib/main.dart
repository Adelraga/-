import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/DI/dependency_injection.dart';
import 'core/Routing/app_router.dart';
import 'bloc_observe.dart';

void main() async {
  // initGetIt();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router, // Using GoRouter for navigation
        debugShowCheckedModeBanner: false,
      //   theme: ThemeData(
      //     fontFamily: 'Poppins',
      //   brightness: Brightness.dark,
      //   scaffoldBackgroundColor: MainColors.darkBackGround, // Your custom background color
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: MainColors.darkBackGround, // Same background for AppBar
      //     elevation: 0, // Optional: remove AppBar shadow for a flat design
      //   ),
      //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //     backgroundColor: Color(0xFF121931),
      //     selectedItemColor: Color(0xFF8257E5), // Purple color for selected item
      //     unselectedItemColor: Colors.grey, // Gray color for unselected item
      //   ),
      
      // ),
      ),
    );
  }
}
