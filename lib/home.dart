import 'package:flutter/material.dart';
import 'turkey.dart';
import 'drink.dart';
import 'dessert.dart';
import 'recipe.dart';
import 'recipe_details.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key ?key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 7
int _selectedIndex = 0;

// 8
static List<Widget> pages = <Widget>[
  const Card1(),
  const Card2(),
  const Card3(),
];

// 9
void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thanks for giving',
          // 2
          style: Theme.of(context).textTheme.headline6)),
      body: pages[_selectedIndex],
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor:
          Theme.of(context).textSelectionTheme.selectionColor,
        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Turkey',),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Desserts'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Drinks'),
        ],
        // 10
  currentIndex: _selectedIndex,
// 11
  onTap: _onItemTapped,
)
    );
  }
}