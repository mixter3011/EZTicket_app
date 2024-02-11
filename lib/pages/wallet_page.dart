import 'package:ezticket/components/my_bottom_bar.dart';
import 'package:flutter/material.dart';

class WalletIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('lib/assets/profile_image.jpg'),
              radius: 20.0, // Adjust the radius to make the profile picture bigger
            ),
            onPressed: () {
              // Add functionality when the profile picture icon is pressed
            },
          ),
        ],
      ),
    );
  }
}

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  int _currentBottomIndex = 0;

  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          WalletIcon(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 81, 131, 181),
                    Color.fromARGB(255, 90, 83, 132),
                  ],
                ),
              ),
              child: Text(
                'User Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 34, 35, 60),
              Color.fromARGB(255, 60, 42, 105),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                              colors: [
                                Color.fromARGB(255, 229, 140, 235),
                                Color.fromARGB(255, 33, 148, 146),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          child: Text(
                            'Explore',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: Color.fromARGB(255, 150, 129, 212),
                              size: 30,
                            ),
                            SizedBox(width: 5),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '5.2',
                                    style: TextStyle(
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 105, 255, 233),
                                            Color.fromARGB(255, 38, 165, 211),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  ',
                                  ),
                                  TextSpan(
                                    text: 'ETH',
                                    style: TextStyle(
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 255, 125, 166),
                                            Color.fromARGB(255, 235, 101, 228),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: MyBottomBar(
        index: _currentBottomIndex,
        onTap: _handleBottomIndexChange,
      ),
    );
  }
}
