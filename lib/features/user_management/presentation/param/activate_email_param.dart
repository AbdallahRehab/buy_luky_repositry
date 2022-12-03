enum FromScreen { Register, Login, ForgotPassword }

class ActivateEmailParam {
  final FromScreen fromScreen;
  final String? email;

  ActivateEmailParam(this.fromScreen, {this.email});
}
