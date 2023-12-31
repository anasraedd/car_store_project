import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys {loggedIn, id, email, firstName, lastName, username, mobile, datebirth, gender, token, fcmToken, balance, accountPicture, language, theme, emailEnabled }


class SharedPrefController {
  SharedPrefController._();

  late SharedPreferences _sharedPreferences;

  static SharedPrefController? _instace;

  factory SharedPrefController() {
    return _instace ??= SharedPrefController._();
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }



  // Future<void> save(User user, AccountType accountType) async {
  //   await _sharedPreferences.setBool(PrefKeys.loggedIn.name, true);
  //   await _sharedPreferences.setInt(PrefKeys.id.name, user.id);
  //   await _sharedPreferences.setString(PrefKeys.email.name, user.email ?? '');
  //   await _sharedPreferences.setString(PrefKeys.username.name, user.username!);
  //   await _sharedPreferences.setString(PrefKeys.mobile.name, user.mobile!);
  //   // await _sharedPreferences.setString(PrefKeys.datebirth.name, user.datebirth);
  //   await _sharedPreferences.setString(PrefKeys.firstName.name, user.firstName);
  //   await _sharedPreferences.setString(PrefKeys.lastName.name, user.lastName);
  //   await _sharedPreferences.setString(PrefKeys.accountPicture.name, user.accountPicture);
  //   await _sharedPreferences.setDouble(PrefKeys.balance.name, user.balance.toDouble());
  //   await _sharedPreferences.setString(PrefKeys.token.name, 'Bearer ${user.token}');
  //   await _sharedPreferences.setString(PrefKeys.fcmToken.name, user.fcmToket);
  //   await _sharedPreferences.setString('account_type', accountType.name);
  //   await _sharedPreferences.setBool(PrefKeys.emailEnabled.name, false);
  //
  // }
  //
  //
  // void editAccountPicture({required String accountPicture,}) async {
  //
  //   await _sharedPreferences.setString(PrefKeys.accountPicture.name, accountPicture);
  // }



  T? getValueFor<T>({required String key}) {
    if(_sharedPreferences.containsKey(key)){
      return _sharedPreferences.get(key) as T;
    }

    return null;
  }






  Future<bool> removeValueFor(String key) async {
     if(_sharedPreferences.containsKey(key)){
       return _sharedPreferences.remove(key);
     }
       return false;

  }
  void clear() async {
    _sharedPreferences.clear();
  }

  void setRoute(){
    _sharedPreferences.setString('route', '/main_screen');

  }

  String? getRoute(){
    return  _sharedPreferences.getString('route');
  }


 // bool get loggedIn => _sharedPreferences.getBool(PrefKeys.loggedIn.name) ?? false;

}
