import 'package:sample/blocs/blocs.dart';
import 'package:sample/presentation/assets/assets.dart';
import 'package:sample/presentation/widgets/widgets.dart';
import 'package:sample/presentation/extensions/extensions.dart';

part 'home_open_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Scaffold(
      appBar: AppBar(
        title: Text(strings.homeTitle),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              strings.greet('sample'),
            ),
            const SizedBox.square(
              dimension: AppDimensions.thirtyTwoPoints,
            ),
            const HomeOpenButton(),
          ],
        ),
      ),
    );
  }
}
