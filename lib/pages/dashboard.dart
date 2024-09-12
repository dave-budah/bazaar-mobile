import 'package:bazaar/components/custom_listtile.dart';
import 'package:bazaar/components/info_card.dart';
import 'package:bazaar/components/square_button.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.add))
                ],
              ),
            ),

            const SizedBox(height: 25,),

            // Cards
            SizedBox(
              height: 180,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  InfoCard(balance: 00.00, cardNumber: 123456789, expiryMonth: 12, expiryYear: 25, color: Colors.green[800],),
                  InfoCard(balance: 00.00, cardNumber: 123456789, expiryMonth: 12, expiryYear: 25, color: Colors.green[500],),
                  InfoCard(balance: 00.00, cardNumber: 123456789, expiryMonth: 12, expiryYear: 25, color: Colors.green[300],),
                ],
              ),
            ),

            const SizedBox(height: 25,),
            SmoothPageIndicator(controller: _controller, count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.green.shade900
              ),
            ),

            const SizedBox(height: 25,),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Buttons
                  SquareButton(iconImage: 'assets/images/icons/send.png', buttonText: 'Send',),
                  SquareButton(iconImage: 'assets/images/icons/pay.png', buttonText: 'Fund',),
                  SquareButton(iconImage: 'assets/images/icons/transact.png', buttonText: 'Transact',),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  CustomListTile(iconImage: 'assets/images/icons/history.png', tileTitle: 'Recent transactions', titleSubtitle: 'View your last 10 transactions',),
                  CustomListTile(iconImage: 'assets/images/icons/history.png', tileTitle: 'Recent transactions', titleSubtitle: 'View your last 10 transactions',),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 12),
          child: GNav(
              backgroundColor: Colors.grey.shade100,
              color: Colors.green.shade800,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.green.shade800,
              gap: 8,
              onTabChange: (index) {
                print(index);
              },
              padding: const EdgeInsets.all(16),
              tabs: const [
                GButton(icon: Icons.home_outlined, text: 'Home',),
                GButton(icon: Icons.settings_suggest, text: 'Services',),
                GButton(icon: Icons.credit_card, text: 'Cards',),
                GButton(icon: Icons.settings_outlined, text: 'Settings',),
              ]),
        ),
      ),
    );
  }
}
