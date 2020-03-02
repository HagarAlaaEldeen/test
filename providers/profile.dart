import 'package:flutter/foundation.dart';

class Profile with ChangeNotifier {
  final String id;
  final String title;
  final String mobile;
  final String email;
  final String password;
  final String imageUrl;


   Profile({
    @required this.id,
    @required this.title,
    @required this.mobile,
    @required this.email,
    @required this.password, 
    @required this.imageUrl,
  });
}
