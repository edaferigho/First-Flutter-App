import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'profile',
      home: Profile(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: const Color(0xff240469),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 15, top: 15, left: 10, right: 30),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/avatar.jpg'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Edaferigho Michael',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('edafem@gmail.com',
                            style: TextStyle(fontSize: 16)),
                        Text(
                          'Texas A&M University, Texas',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'General',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const BuildListTile(text: 'Edit Profile', icon: Icons.person),
              const BuildListTile(text: 'Badges', icon: Icons.badge),
              const BuildListTile(
                  text: 'Study Goal', icon: Icons.add_circle_outline),
              const BuildListTile(
                  text: 'Focus Mode', icon: Icons.notifications_off),
              const BuildListTile(
                  text: 'School Schedule', icon: Icons.schedule),
              const BuildListTile(
                  text: 'Invite Friends', icon: Icons.person_search)
            ],
          ),
        ),
      ),
    );
  }
}

class BuildListTile extends StatelessWidget {
  final String text;
  final IconData icon;

  const BuildListTile({this.text, this.icon, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300)),
        child: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: ListTile(
            leading: Icon(icon, color: Color(0xff240469)),
            title: Text(text),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade300,
            ),
          ),
        ));
  }
}
