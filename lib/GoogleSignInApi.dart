import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final _clientIdWeb =
      '784041366384-8j4n50crdd9d3asmuqmse433baqgrnpq.apps.googleusercontent.com';

  static final _googleSignIn = GoogleSignIn(clientId: _clientIdWeb);

  static Future<GoogleSignInAccount> login() => _googleSignIn.signIn();

  static Future logout() => _googleSignIn.disconnect();
}
