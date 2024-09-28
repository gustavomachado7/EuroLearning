import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

class LocalAuthApi {
  final auth = LocalAuthentication();

  Future<bool> isBiometricAvailable() async {
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    try {
      return canAuthenticateWithBiometrics || await auth.isDeviceSupported();
    } on PlatformException catch (e) {
      if (e.code == auth_error.notAvailable) {
        return false;
      }
      return false;
    }
  }

  Future<bool> authenthicate() async {
    final isLocalAuthAvailable = await isBiometricAvailable();

    if (!isLocalAuthAvailable) return false;

    try {
      return await auth.authenticate(
        localizedReason: 'Use a biometria para marcar a presença',
        options: const AuthenticationOptions(
          useErrorDialogs: false,
          // biometricOnly: true
        ),
      );
    } on PlatformException catch (e) {
      if (e.code == auth_error.notAvailable) {
        return false;
      }
      return false;
    }
  }
}
