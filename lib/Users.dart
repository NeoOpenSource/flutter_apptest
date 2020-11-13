class Users{
  List<User> _list = [];
  List<User> get results => _list;
  Users.fromJson(parsedJson){
    _list.clear();
    for (int i = 0; i < parsedJson.length; i++) {
      User _user = User(parsedJson[i]);
      _list.add(_user);
    }
  }
}

class User{
   int _id;
   String _name;
   String _username;
   String _email;
   String _phone;
   _Address _address;
   User(result) {
      _id = result["id"];
      _name = result["name"];
      _username = result["username"];
      _phone = result["phone"];
      _email = result["email"];
      _address = _Address(result["address"]);
  }
  int get id => _id;
   String get name => _name;
   String get username => _username;
   String get email => _email;
   String get phone => _phone;
   _Address get address => _address;
}

class _Address{
  String _street;
  String _suite;
  String _city;
  String _zipCode;

  String get street => _street;
  String get suite => _suite;
  String get city => _city;
  String get zipCode => _zipCode;

  _Address(result){
    _street = result["street"];
    _suite = result["suite"];
    _city = result["city"];
    _zipCode = result["zipcode"];
  }


}