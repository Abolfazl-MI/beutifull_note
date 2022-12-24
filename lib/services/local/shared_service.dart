import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  late SharedPreferences _pref;
  final String _token = 'token';
  // gives _pref value whenever called
  Future<void> _init() async {
    _pref = await SharedPreferences.getInstance();
  }

  // calls init funtion every time when instantiate from this class
  SharedService() {
    _init();
  }

  // saves userToken
  Future<void> saveUserToken({required String userToken}) async {
    await _pref.setString(_token, userToken);
  }

  // loads user token from storage
  Future<String?> getUserToken() async {
    String? token = _pref.getString(_token);
    return token;
  }

  // checks if user loged in or not

  Future<bool> isLogedIn()async{
    String ? token=_pref.getString(_token);
    if(token!=null){
      return true;
    }else{
      return false;
    }
  }
  
  // deletes user token from storage
  Future<void> deleteUserToken()async{
    await _pref.remove(_token);
  }
}
