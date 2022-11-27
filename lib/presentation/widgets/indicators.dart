import 'package:sample/presentation/assets/assets.dart';
import 'package:sample/presentation/theme/theme.dart';
import 'package:sample/presentation/widgets/widgets.dart';

///
/// Use when you need to show loading indicators inside [ElevatedButton]
///
class ElevatedButtonLoadingIndicator extends StatelessWidget {
  const ElevatedButtonLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: AppDimensions.twentyFourPoints,
      width: AppDimensions.twentyFourPoints,
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 3.0,
        valueColor: AlwaysStoppedAnimation<Color>(
          sampleHighlight,
        ),
      ),
    );
  }
}

class SampleLoadingIndicator extends StatelessWidget {
  const SampleLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(
        strokeWidth: 3.0,
        valueColor: AlwaysStoppedAnimation<Color>(
          sampleHighlight,
        ),
      ),
    );
  }
}
