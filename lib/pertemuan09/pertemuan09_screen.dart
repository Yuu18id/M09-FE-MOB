import 'package:flutter/material.dart';

class Pertemuan09Screen extends StatefulWidget {
  const Pertemuan09Screen({super.key});

  @override
  State<Pertemuan09Screen> createState() => _Pertemuan09ScreenState();
}

class _Pertemuan09ScreenState extends State<Pertemuan09Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 09"),
        bottom: TabBar(isScrollable: true, tabs: [
          Tab(
            child: Text('Music'),
          ),
          Tab(
            child: Text('Favorite'),
          ),
          Tab(
            child: Text('Saved'),
          ),
        ])
      ),
      body: TabBarView(
        children: [
          buttonSheets(context),
          TextButton(
            onPressed: () {
              print('Home');
            },
            child: Text('Home')
          ),
          TextButton(
            onPressed: () {
              print('Favorite');
            },
            child: Text('Favorite')
          ),
          TextButton(
            onPressed: () {
              print('Saved');
            },
            child: Text('Saved')
          ),
        ]
      ),
      drawer: Drawer(
        child: ListView(
          padding:EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(16.0),
              decoration:BoxDecoration(color: Colors.purple),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    // child: Image.assets(''),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('John Doe',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        Text('joen@mail.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                      ]
                    )
                  )
                ]
              )
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.inbox),
              title: Text('Inbox'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.save),
              title: Text('Archived'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.download),
              title: Text('Saved'),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
          ]
        )
      ),
    ));
  }
}

buttonSheets(BuildContext context) {
  return Builder(builder:((context) {
    return Center(
      child: TextButton(
        onPressed: () {showBottomSheet(enableDrag: true,
        context: context,
        builder: (context) {
          final theme = Theme.of(context);
          return Wrap(
            children: [
              ListTile(
                title: const Text(
                  'Header',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white
                  ),
                  
                ),
                tileColor: theme.colorScheme.primary,
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: Colors.white,),
                ),
              ),
              ListTile(
                title: Text('Facebook'),
              ),
              ListTile(
                title: Text('Twitter'),
              ),
            ]
          );
        });},child: Text('Social Media Share'),)
        );
  }));
}