import 'package:figma/controllers/splash/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleSplashPage extends StatelessWidget {
  const SimpleSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(context)..add(SplashLoading()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashFinish) {
            context.read<SplashBloc>().add(GoToLoginPage());
          }
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Image.asset('assets/img-splash.png',
                  fit: BoxFit.cover), // Your splash screen image
            ),
          ),
        ),
      ),
    );
  }
}
