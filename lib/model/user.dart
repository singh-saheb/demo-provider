import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyUser extends ChangeNotifier{

  String userName;
  String emailId;

  loginUser(String name,String email){
      this.userName = name;
      this.emailId = email;
      notifyListeners();
  }

  logOutUser(){
    this.userName = null;
    this.emailId = null;
    notifyListeners();
  }
}