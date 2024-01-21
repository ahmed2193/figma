import 'package:figma/bloc_observer.dart';
import 'package:figma/controllers/bottom_nav/bottom_nav_bloc.dart';
import 'package:figma/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
    Bloc.observer = AppObserver();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavBloc>(
          create: (context) => BottomNavBloc()..add(const BottomNavInit()),
        )
      ],
      child: MaterialApp.router(routerConfig: AppRouter.router),
    );
  }
}
