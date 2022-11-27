import 'package:sample/presentation/l10n/l10n.dart';
import 'package:sample/presentation/widgets/widgets.dart';

extension LocalizationExtensions on BuildContext {
  AppLocalizations get strings {
    return AppLocalizations.of(this);
  }
}
