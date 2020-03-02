import 'package:claxy/providers/profile.dart';
import 'package:flutter/material.dart';

 class Profiles with ChangeNotifier {
  List<Profile> _items = [
    Profile(
      id: 'i1',
      title: 'Hagr',
      mobile: '+201090556127',
      email: 'h.alaaeldeen97@gmail.com',
      password: '97',
      imageUrl:'..',
    ),
    Profile(
      id: 'i2',
      title: 'Agatha',
      mobile: '+201090000000',
      email: 'a@gmail.com',
      password: '99',
      imageUrl:'..',
    ),
   
  ];

  List<Profile> get items {
    return [..._items];
  }

  Profile findById(String id) {
    return _items.firstWhere((prof) => prof.id == id);
  }
  
  void addProfile( Profile profile) {
    final newProfile = Profile(
      id: profile.id,
      title: profile.title,
      mobile: profile.mobile,
      email: profile.email,
      password: profile.password,
      imageUrl: profile.imageUrl,
    );
    _items.add(newProfile);
    notifyListeners();
  }

  void updateProfile(String id, Profile newProfile){
    final profIndex=_items.indexWhere((prof) => prof.id == id);
    _items[profIndex]= newProfile;
    notifyListeners();
  }

  void deleteProfile(String id){
    _items.removeWhere((prof) => prof.id == id);
    notifyListeners();
  }
}
