import 'package:networking/networking.dart';
import 'package:http/http.dart';

class SampleNetworkingClient extends NetworkingClient {
  SampleNetworkingClient()
      : super(
          baseUrl: Uri(
            scheme: 'https',
            host: 'sample-mkruqxiwda-ew.a.run.app',
          ),
          httpClient: Client(),
        );
}
