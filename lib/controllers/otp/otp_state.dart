part of 'otp_bloc.dart';

sealed class OtpState extends Equatable {
  final int numberOfDigits;
  const OtpState(this.numberOfDigits);

  @override
  List<Object> get props => [numberOfDigits];
}

final class OtpInitial extends OtpState {
  const OtpInitial(int numberOfDigits) : super(numberOfDigits);
}
