int resendCodeTime(int hits) {
  switch (hits) {
    case 1:
      return 60;
    case 2:
      return 60 * 2;
    case 3:
      return 60 * 5;
    case 4:
      return 60 * 10;
    case 5:
      return 60 * 15;
  }
  return 0;
}

bool validateToResendCode(int hits, DateTime lastHit) {
  final now = DateTime.now();
  if (now.difference(lastHit).inSeconds < resendCodeTime(hits)) {
    return false;
  }
  return true;
}
