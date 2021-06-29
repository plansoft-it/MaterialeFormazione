
class UserAccount {

  UserAccount();

  String emailAddress;
  String password;

  Map<String, dynamic> toJson() => {
    "email_address": emailAddress,
    "password": password,
  };


}