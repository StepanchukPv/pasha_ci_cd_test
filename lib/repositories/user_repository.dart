import 'package:injectable/injectable.dart';

import 'package:pasha_ci_cd_test/models/index.dart';
import 'package:pasha_ci_cd_test/services/http/http_client.dart';

@Injectable(scope: 'auth')
class UserRepository {
  final HttpClient httpClient;

  UserRepository(this.httpClient);

  Future<UserProfile> getUserProfile() async {
    return UserProfile.fromJson({'userName': 'test'});
  }
}
