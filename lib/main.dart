import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/blocs/blocs.dart';
import 'package:sample/logging/logging.dart';
import 'package:sample/core/core.dart';

void main() {
  BlocOverrides.runZoned(
    () async {
      final lumberdashClients = <LumberdashClient>[
        ColorizeLumberdash(),
      ];

      WidgetsFlutterBinding.ensureInitialized();

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      const isReleaseMode = kReleaseMode;

      putLumberdashToWork(
        withClients: lumberdashClients,
      );

      final vault = await createVault(
        isReleaseMode: isReleaseMode,
      );

      runApp(
        SampleApp(
          vault: vault,
        ),
      );
    },
    blocObserver: LogBlocObserver(),
  );
}
