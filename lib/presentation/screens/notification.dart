import 'package:caffe/core/constants/colors.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, dynamic>> notifications = [
    {
      "title": "Table no 1 Has Placed an order",
      "amount": 23,
      "time": 3,
      "quantity": 2,
      "img": "assets/food.png"
    },
    {
      "title": "Table no 2 Has paid the bills",
      "amount": 45,
      "time": 5,
      "quantity": 1,
      "img": "assets/food.png"
    },
    {
      "title": "Table no 3 Has ordered drinks",
      "amount": 30,
      "time": 2,
      "quantity": 4,
      "img": "assets/food.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: SizedBox(
                      height: 100,
                      width: 80,
                      child: Image.asset(
                        notification['img'],
                        // height: 10,
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: SizedBox(
                      width: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.info_outlined),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              notification['title'],
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Amount: ${notification['amount']} - Time: ${notification['time']} min - Quantity: ${notification['quantity']}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    // You can customize the trailing or other properties as needed
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 51,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.all(Radius.circular(8))),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary), elevation: MaterialStateProperty.all<double>(0)),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
