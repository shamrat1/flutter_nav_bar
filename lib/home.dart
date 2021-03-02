
import 'package:flutter/material.dart';
import 'package:nav_bar/pages/auth.dart';
import 'package:nav_bar/pages/cart.dart';
import 'package:nav_bar/pages/dashboard.dart';
import 'package:nav_bar/pages/empireSeller.dart';
import 'package:nav_bar/pages/wishlist.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // start of properties
  int currentIndex = 0;

  final List<Widget> screens = [
    Dashboard(),
    Cart(),
    Wishlist(),
    Auth()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget activeScreen = Dashboard();
  // end of properties

  // start of methods
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: activeScreen,
      ),
      floatingActionButton: FloatingActionButton(
          child: Image.asset("assets/images/AnazLogo.png"),
          backgroundColor: currentIndex == 4 ? Colors.orangeAccent : Colors.white,
          foregroundColor: Colors.white,
          elevation: 0,
          onPressed: (){
            setState(() {
              currentIndex = 4;
              activeScreen = EmpireSeller();
            });
          },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 3,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                    setState(() {
                      currentIndex = 0;
                      activeScreen = Dashboard();
                    });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
                          color: currentIndex == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text('Home',
                          style: TextStyle(
                            color: currentIndex == 0 ? Colors.blue : Colors.grey,
                          )
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 70,
                    onPressed: (){
                      setState(() {
                        currentIndex = 1;
                        activeScreen = Cart();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.shopping_cart,
                          color: currentIndex == 1 ? Colors.blue : Colors.grey,
                        ),
                        Row(
                          children: [
                          Text('Cart',
                          style: TextStyle(
                            color: currentIndex == 1 ? Colors.blue : Colors.grey,
                          )
                          ),
                          SizedBox(
                            width: 5,
                          ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: currentIndex == 1 ? Colors.blue : Colors.grey,
                              ),
                              child: Text('4',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentIndex = 2;
                        activeScreen = Wishlist();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: currentIndex == 2 ? Colors.red : Colors.grey,
                        ),
                        Row(
                          children: [
                            Text('Wishlist',
                                style: TextStyle(
                                  color: currentIndex == 2 ? Colors.red : Colors.grey,
                                )
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: currentIndex == 2 ? Colors.red : Colors.grey,
                              ),
                              child: Text('4',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                        currentIndex = 3;
                        activeScreen = Auth();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person_outline,
                          color: currentIndex == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text('Sign In',
                            style: TextStyle(
                              color: currentIndex == 3 ? Colors.blue : Colors.grey,
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  // end of methods

}
