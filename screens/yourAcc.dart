import 'package:claxy/providers/profiles.dart';
import 'package:claxy/screens/Account.dart';
import 'package:claxy/widgets/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class YourAccount extends StatelessWidget {
  static const routeName = '/yourAcc';

  @override
  Widget build(BuildContext context) {
    final profileData = Provider.of<Profiles>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('حسابك الشخصي'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Account.routeName);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: profileData.items.length,
          itemBuilder: (_, i) => Column(
                children: [
                  UserProfile(
                    profileData.items[i].id,
                    profileData.items[i].title,
                    profileData.items[i].imageUrl,
                  ),
                  Divider(),
                ],
              ),
        ),
      ),
    );
  }
}
