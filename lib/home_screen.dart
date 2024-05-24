import 'package:flutter/material.dart';
import 'package:well_seven_home/custom_title_widget.dart';
import 'package:well_seven_home/get_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: getSize(context) / 66,
                ),
                height: getSize(context) / 4.5,
                decoration: const BoxDecoration(
                  color: Color(0xffFFF4CD),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getSize(context) / 44),
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/02.png'),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'welcome',
                            maxLines: 1,
                            style: TextStyle(
                              color: const Color(0xff747474),
                              fontSize: getSize(context) / 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'happiness store',
                            maxLines: 1,
                            style: TextStyle(
                              color: const Color(0xff110101),
                              fontSize: getSize(context) / 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none_outlined,
                            )))
                  ],
                ),
              ),
              const CustomTtileWIdget(
                title: 'Statistics',
              ),
              GridView(
                padding: EdgeInsets.all(getSize(context) / 44),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                children: [
                  CustomHomeScreenWidget(
                    color: const Color(0xff50C5DF),
                    imagePath: 'assets/images/client1.png',
                    count: '10',
                    message: "This Month's Clients",
                    title: 'Cients',
                  ),
                  CustomHomeScreenWidget(
                    color: const Color(0xffFF7A00),
                    imagePath: 'assets/images/order22.png',
                    count: '165',
                    message: "This Month's Order",
                    title: 'Order',
                  ),
                  CustomHomeScreenWidget(
                    color: const Color(0xffFFCA06),
                    imagePath: 'assets/images/order2.png',
                    count: '320',
                    message: "This Month's Miss Order",
                    title: 'Order',
                  ),
                  CustomHomeScreenWidget(
                    color: const Color(0xffD27CF0),
                    imagePath: 'assets/images/client2.png',
                    count: '67',
                    message: "Total Cients This Year",
                    title: 'Cients',
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(getSize(context) / 32),
                height: getSize(context) / 6,
                decoration: BoxDecoration(
                  color: const Color(0xff0F0F0F),
                  borderRadius: BorderRadius.circular(getSize(context) / 32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/starts.png',
                      width: getSize(context) / 12,
                    ),
                    const Text(
                      'Customer Reviews',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/vat.png',
                    width: getSize(context) / 12,
                  ),
                  const Text(
                    'VAT Number : ',
                    style: TextStyle(
                      color: Color(0xff747474),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    '123 123 231',
                    style: TextStyle(
                      color: Color(0xff747474),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomHomeScreenWidget extends StatelessWidget {
  CustomHomeScreenWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.count,
    required this.message,
    required this.color,
  });
  String imagePath;
  String title;
  String count;
  Color color;
  String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getSize(context) / 32),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getSize(context) / 22),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(1, 0.5),
                spreadRadius: 0)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: getSize(context) / 16,
            backgroundColor: color,
            child: CircleAvatar(
              radius: getSize(context) / 22,
              backgroundColor: color,
              backgroundImage: AssetImage(
                imagePath,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Text(
                  count,
                  maxLines: 1,
                  style: TextStyle(
                    color: color,
                    fontSize: getSize(context) / 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    color: const Color(0xff747474),
                    fontSize: getSize(context) / 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Text(message,
              maxLines: 2,
              style: TextStyle(
                color: const Color(0xff110101),
                fontSize: getSize(context) / 20,
                fontWeight: FontWeight.w400,
              )),
        ],
      ),
    );
  }
}
