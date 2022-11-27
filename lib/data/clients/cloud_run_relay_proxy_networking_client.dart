import 'package:networking/networking.dart';

import 'sample_networking_client.dart';

class CloudRunRelayProxyNetworkingClient extends RelayProxyNetworkingClient {
  CloudRunRelayProxyNetworkingClient({
    required SampleNetworkingClient client,
  }) : super(
          uri: Uri.parse('https://cloud-run-replay-proxy'),
          client: client,
          interceptors: [],
        );
}
