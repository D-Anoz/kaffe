import 'package:caffe/core/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownvalue = 'EN';

  var items = [
    'EN',
    'NEP',
  ];

  List<String> tableStatusValues = List.generate(8, (index) => 'Empty');

  var tables = [
    'Table 1',
    'Table 2',
    'Table 3',
    'Table 4',
    'Table 5',
    'Table 6',
    'Table 7',
    'Table 8'
  ];
  var tableStatus = [
    'Empty',
    'To clean',
    'Order placed',
    'Occupied',
  ];

  Color getStatusColor(String status) {
    switch (status) {
      case 'Empty':
        return AppColors.emptyColor;
      case 'To clean':
        return AppColors.toCleanColor;
      case 'Order placed':
        return AppColors.orderPlacedColor;
      case 'Occupied':
        return AppColors.occupiedColor;
      default:
        return AppColors.toCleanColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70,
              decoration: const BoxDecoration(color: AppColors.lightPrimary),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: AppColors.primary,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Badge(
                        label: Text('3'),
                        largeSize: 20,
                        textStyle: TextStyle(fontSize: 16),
                        child: Icon(Icons.notifications_none_outlined, size: 40),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(width: 2, color: AppColors.borderColor)),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text(
                          'Occupied',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(width: 1, color: AppColors.borderColor)),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text(
                          'Empty',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(width: 1, color: AppColors.borderColor)),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text(
                          'To Clean',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '3',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: tables.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: getStatusColor(tableStatusValues[index]),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  tables[index],
                                  style: const TextStyle(fontSize: 24),
                                ),
                                const SizedBox(
                                  width: 26,
                                ),
                                const Icon(Icons.info_outlined)
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Status:'),
                                const SizedBox(
                                  height: 10,
                                ),
                                DropdownButton(
                                  value: tableStatusValues[index],
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: tableStatus.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    );
                                  }).toList(),
                                  focusColor: Colors.white.withOpacity(0.9),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      tableStatusValues[index] = newValue!;
                                    });
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
