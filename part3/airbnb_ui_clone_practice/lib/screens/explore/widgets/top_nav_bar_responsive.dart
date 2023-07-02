import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var topPadding = screenHeight * 0.02; // 2% of screen height
    var leftPadding = screenWidth * 0.03; // 3% of screen width
    var iconSize = screenHeight * 0.02; // 2% of screen height
    var spaceBetweenIcons = screenWidth * 0.03; // 3% of screen width

    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: leftPadding),
      child: Column(
        children: [
          SizedBox(
            height: iconSize * 2.5, // Adjust as needed
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // ... Repeat for each icon
                Column(
                  children: [
                    Image.asset(
                      'assets/images/fire.png',
                      height: iconSize,
                      width: iconSize,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Trending',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                  width: spaceBetweenIcons,
                ),
                 Column(
                  children: [
                    Image.asset(
                      'assets/images/cave.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Cave',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/cactus.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Desert',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/island.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Tropical',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/art.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Art',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/swimming-pool.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Swimming pool',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/villa.png',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Mesion',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
