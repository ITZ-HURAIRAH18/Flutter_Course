import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Professional UI",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        fontFamily: "Roboto",
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Dashboard",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none,
                color: Colors.black),
          ),

          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage:
              NetworkImage(
                  "https://i.pravatar.cc/150"),
            ),
          )

        ],
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              Text(
                "Welcome Back 👋",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight:
                    FontWeight.bold),
              ),

              SizedBox(height: 5),

              Text(
                "Have a productive day",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16),
              ),

              SizedBox(height: 25),

              Container(
                padding: EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                  BorderRadius.circular(25),
                ),

                child: Row(

                  children: [

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          Text(
                            "Today's Progress",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            "78%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          ElevatedButton(
                            onPressed: () {},

                            style:
                            ElevatedButton.styleFrom(
                              backgroundColor:
                              Colors.white,
                            ),

                            child: Text(
                              "View Details",
                              style: TextStyle(
                                  color:
                                  Colors.black),
                            ),
                          )

                        ],
                      ),
                    ),

                    Icon(
                      Icons.show_chart,
                      size: 100,
                      color: Colors.white,
                    )

                  ],
                ),
              ),

              SizedBox(height: 30),

              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics:
                NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,

                children: [

                  buildCard(
                      Icons.person,
                      "Profile",
                      Colors.orange),

                  buildCard(
                      Icons.wallet,
                      "Wallet",
                      Colors.green),

                  buildCard(
                      Icons.analytics,
                      "Analytics",
                      Colors.purple),

                  buildCard(
                      Icons.settings,
                      "Settings",
                      Colors.red),

                ],
              ),

              SizedBox(height: 30),

              Text(
                "Recent Activity",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              buildListTile(
                  "Payment Received",
                  "2 min ago",
                  Icons.payment),

              buildListTile(
                  "Profile Updated",
                  "1 hour ago",
                  Icons.person),

              buildListTile(
                  "Loan Approved",
                  "Yesterday",
                  Icons.check_circle),

              buildListTile(
                  "New Message",
                  "2 days ago",
                  Icons.message),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      IconData icon,
      String title,
      Color color) {

    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),

        boxShadow: [

          BoxShadow(
            color:
            Colors.black12,
            blurRadius: 8,
          )

        ],
      ),

      child: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,

        children: [

          Icon(
            icon,
            size: 45,
            color: color,
          ),

          SizedBox(height: 10),

          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                fontWeight:
                FontWeight.bold),
          )

        ],
      ),
    );
  }

  Widget buildListTile(
      String title,
      String subtitle,
      IconData icon) {

    return Card(

      shape:
      RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(15),
      ),

      child: ListTile(

        leading: CircleAvatar(
          backgroundColor:
          Colors.grey.shade200,

          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),

        title: Text(title),

        subtitle:
        Text(subtitle),

        trailing:
        Icon(Icons.arrow_forward_ios,
            size: 16),
      ),
    );
  }
}