import 'package:figma/controllers/login/login_bloc.dart';
import 'package:figma/widgets/buttons.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(context),
      child: Scaffold(
        body:
      LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
    return SingleChildScrollView(
    child: ConstrainedBox(
    constraints: BoxConstraints(
    minHeight: viewportConstraints.maxHeight,
    ),
    child:

        Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Container(
              color: const Color(0xff109D10),
              child: Image.asset(
                "assets/login.png",
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.4//276,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                const  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 12),
                    child:  TextLato(
                      'One Stop Solution \n For All Your Planting Needs',
                      fontSize: 22,
                      height: 1.4,
                      fontWeight: FontWeight.w600,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const TextWithDivider('Log In or Sign Up'),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xff757575)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: Row(
                            children: [
                              Image.asset('assets/ic-flag-india.png',
                                  width: 24, height: 24),
                              const SizedBox(width: 8),
                              const TextLato('+91',
                                  fontSize: 16, color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: 46,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xff757575)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return ButtonTemplate('Log In', onPressed: () {
                        context.read<LoginBloc>().add(GoToOTPPage());
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  const TextLato(

                      'By continuing, you agree to our terms of service, privacy policy, content policy',
                      color: Color(0xff166ED5),
                      textAlign: TextAlign.center,
                      fontSize: 16),
                  const SizedBox(height: 24),
                  const TextWithDivider('Other Login Methods',
                      divierHeight: 0.2, textColor: Colors.black),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/ic-facebook.png',
                          width: 34, height: 34),
                      const SizedBox(width: 30),
                      Image.asset('assets/ic-google.png',
                          width: 34, height: 34),
                      const SizedBox(width: 30),
                      const FaIcon(
                        FontAwesomeIcons.apple,
                        size: 34,
                        color: Colors.black,
                      ),
                    ],
                  ),

                  const SizedBox(height: 34),
                ],
              ),
            ),
          ],
        ),
    ));
      })
        ));


  }
}
