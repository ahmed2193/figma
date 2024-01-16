import 'package:figma/controllers/otp/otp_bloc.dart';
import 'package:figma/controllers/splash/splash_bloc.dart';
import 'package:figma/widgets/buttons.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../routers/route.dart';

class OTPVerificationPage extends StatelessWidget {
  const OTPVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OtpBloc>(
      create: (context) => OtpBloc(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0, // Remove shadow
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              context.pop();
            },
          ),
          title: const TextLato('OTP Verification',
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              // Message about sending a verification code
              const TextLato(
                'We have sent a verification code to +919088990099',
                textAlign: TextAlign.center,
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 15),
              // Display OTP input fields
              const ContainerOTPDigits(6),
              // Add some spacing
              const SizedBox(height: 30),
              const TextLato('Didn\'t get verification code?',
                  color: Colors.black, fontSize: 19),
              const SizedBox(height: 21),

              // Small container for Resend SMS and Call Me
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: smallButtonContainer(
                        'Resend SMS in 16', const Color(0xffC1C2C6), () {}),
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: smallButtonContainer(
                        'Call me in 16', const Color(0xffC1C2C6), () {}),
                  ),
                ],
              ),
              const SizedBox(height: 32),


              BlocBuilder<OtpBloc, OtpState>(
                builder: (context, state) {
                  return     ButtonTemplate('Submit', onPressed: () {

                    context.read<OtpBloc>().add(GoToHomePage());
                  });
                },
              ),



              const SizedBox(height: 16),
              // Text widget for trying other login methods
              BlocBuilder<OtpBloc, OtpState>(
                builder: (context, state) {
                  return TextButtonTemplate('Try other login methods',
                      fonSize: 16, fontWeight: FontWeight.w600, () {

                       context.go(Routes.login);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
