//import 'package:google_fonts_arabic/fonts.dart';
//import '../widgets/drawer.dart';
import 'package:claxy/providers/profile.dart';
import 'package:claxy/providers/profiles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Account extends StatefulWidget {

  static const routeName= '/Account' ;

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _form= GlobalKey<FormState> ();
  var _editedProfile = Profile(
    id: null,
    email: 'null', 
    mobile: 'null', 
    title: '', 
    password: 'null', 
    imageUrl: 'null',
    );

  var _isInit= true;

  var _initValues={
    'title': '' ,
    'mobile': '',
    'email': '',
    'password': '',
    'imageUrl':'',
  };

  @override
  void didChangeDependencies(){
    if(_isInit){
      final profileId= ModalRoute.of(context).settings.arguments as String;
      if(profileId != null){
        final profile= Provider.of<Profiles>(context, listen: false).findById(profileId);
        _editedProfile= profile;
        _initValues={
          'title': _editedProfile.title ,
          'mobile': _editedProfile.mobile,
          'email': _editedProfile.email,
          'password': _editedProfile.password,
          'imageUrl':_editedProfile.imageUrl,
      };

      }
      
    }
    _isInit= false;
    super.didChangeDependencies();
  }

  void _saveForm(){
    _form.currentState.save();
    if(_editedProfile.id != null){
      Provider.of<Profiles>(context, listen: false).updateProfile(_editedProfile.id, _editedProfile);
    }
    else{
      Provider.of<Profiles>(context, listen: false).addProfile(_editedProfile);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' تعديل حسابك'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveForm,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _form,
          child: ListView(
            children: <Widget>[
              Container(
                width: 75,
                height: 75,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  ),
              ),
              TextFormField(
                initialValue: _initValues['title'],
                decoration: InputDecoration(labelText: 'الأسم'),
                textInputAction: TextInputAction.done,
                onSaved: (value){
                  _editedProfile = Profile(
                    title: value,
                    mobile: _editedProfile.mobile,
                    email: _editedProfile.email,
                    password: _editedProfile.password, 
                    imageUrl: _editedProfile.imageUrl, 
                    id: _editedProfile.id,
                  );
                },
              ),
              TextFormField(
                initialValue: _initValues['mobile'],
                decoration: InputDecoration(labelText: 'رقم الموبايل'),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.phone,
                onSaved: (value){
                  _editedProfile = Profile(
                    title: _editedProfile.title,
                    mobile: value,
                    email: _editedProfile.email,
                    password: _editedProfile.password,
                    imageUrl: _editedProfile.imageUrl,
                    id: _editedProfile.id,
                  );
                }
              ),
              TextFormField(
                initialValue: _initValues['email'],
                decoration: InputDecoration(labelText: 'البريد الألكتروني'),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                onSaved: (value){
                  _editedProfile = Profile(
                    title: _editedProfile.title,
                    mobile: _editedProfile.mobile,
                    email: value,
                    password: _editedProfile.password,
                    imageUrl: _editedProfile.imageUrl,
                    id: _editedProfile.id,
                  );
                }
              ),
              TextFormField(
                initialValue: _initValues['password'],
                decoration: InputDecoration(labelText: 'كلمة المرور'),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                onSaved: (value){
                  _editedProfile = Profile(
                    title: _editedProfile.title,
                    mobile: _editedProfile.mobile,
                    email: _editedProfile.email,
                    password: value,
                    imageUrl: _editedProfile.imageUrl,
                    id: _editedProfile.id,
                  );
                }
              ),
            ],
          ),
        ),
      )
    );
  }
}