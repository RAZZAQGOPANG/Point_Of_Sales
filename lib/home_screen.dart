import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
          actions: [
            const Icon(Icons.search_rounded),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text('Settings')),
                const PopupMenuItem(child: Text('Logout')),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // Text('Camera'),
            const Icon(Icons.camera_alt_rounded),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  // Chats
                  return const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage('images/Lion.jpg')),
                    title: Text('Muhammad Khalid'),
                    subtitle: Text('How are you bro?'),
                    trailing: Text('01:42 PM'),
                  );
                }),
            // Text('Status'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  // Chats
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        )
                      ),
                        child: const CircleAvatar(
                            backgroundImage: AssetImage('images/Lion.jpg'))),
                    title: const Text('Muhammad Khalid'),
                    subtitle: const Text('01:50 PM'),
                  );
                }),
            // Text('Calls'),
            ListView.builder(
              itemCount: 100,
                itemBuilder: (context,index)
                    {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/Lion.jpg'),
                        ),
                        trailing:Icon(Icons.phone,color: Colors.red,),
                        title: Text('Waqas Ali'),
                        subtitle: Text('12 November, 8:18 pm'),
                      );
                    }
            )
          ],
        ),
      ),
    );
  }
}
