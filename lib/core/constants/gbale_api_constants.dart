/// This class holds all the endpoints to be used in this app
class GbaleApiConstants {
  GbaleApiConstants._();

  static const String _scheme = 'https';

  static const String _host =
      'https://documenter.getpostman.com/view/7529860/2s8Z72VrMQ';

  /// This is the base uri for the gbale app.
  static Uri baseUri = Uri(
    host: _host,
    scheme: _scheme,
    path: '/',
  );

  //-------------------------------AUTHENTICATION ENDPOINTS--------------------//

  /// This is the endpoint for user login
  static Uri loginEndPoint = Uri(
      scheme: _scheme,
      host: _host,
      path: '/gbale.ng/applogin?password=string&email=string');

  /// This is the endpoint for user signUp
  static Uri signUpEndpoint = Uri(
      scheme: _scheme,
      host: _host,
      path:
          '/gbale.ng/appregister?firstName=string&lastName=string&email=string&password=string');
  static Uri profileEndpoint = Uri(
    scheme: _scheme,
    host: _host,
    path: '/gbale.ng/appprofile?email=string'
  );


  //----------------------END OF AUTHENTICATION ENDPOINTS-----------------------//

 //-----------------------------USER ENDPOINTS---------------------------------//

 //-----------------------------END OF USER ENDPOINTS--------------------------//
}
