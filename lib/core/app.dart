import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:funky_backgrounds/funky_backgrounds.dart';
import 'package:sample/blocs/blocs.dart';
import 'package:sample/core/core.dart';
import 'package:sample/data/data.dart';
import 'package:sample/presentation/presentation.dart';

class SampleApp extends StatelessWidget {
  final Vault vault;

  const SampleApp({
    Key? key,
    required this.vault,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalKey<NavigatorState>();

    return RepositoryProvider<Vault>(
      create: (context) => vault,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) => AuthenticationBloc(
              authenticationRepository:
                  vault.lookup<AuthenticationRepository>(),
            ),
          ),
          BlocProvider<AppBloc>(
            create: (context) => AppBloc()..add(AppStartEvent()),
          ),
          BlocProvider<DeviceBloc>(
            create: (context) => DeviceBloc(
              deviceRepository: vault.lookup<DeviceRepository>(),
            ),
          ),
        ],
        child: BlocConsumer<AppBloc, AppState>(
          listener: (context, state) {
            if (state is AppStartSuccess) {
              navigateToHome(navigatorKey.currentContext!);
            }
          },
          builder: (_, state) {
            return MaterialApp(
              title: 'sample',
              theme: sampleLightTheme,
              themeMode: ThemeMode.light,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: supportedLocales,
              builder: (context, child) => ResponsiveWrapper.builder(
                FunkyBackground(
                  painter: FunkyBezierLines(
                    context.colorScheme.primary,
                  ),
                  child: child,
                ),
                minWidth: AppDimensions.minWidth,
                defaultScale: true,
                breakpoints: const [
                  ResponsiveBreakpoint.resize(
                    AppDimensions.mobileResizeBreakpoint,
                    name: MOBILE,
                  ),
                  ResponsiveBreakpoint.autoScale(
                    AppDimensions.tabletScaleBreakpoint,
                    name: TABLET,
                  ),
                  ResponsiveBreakpoint.resize(
                    AppDimensions.desktopResizeBreakpoint,
                    name: DESKTOP,
                  ),
                ],
              ),
              initialRoute: initialRoute,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: navigatorKey,
            );
          },
        ),
      ),
    );
  }
}
