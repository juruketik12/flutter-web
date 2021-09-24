import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_wolrd/src/controllers/userController.dart';

class UsersPage extends StatelessWidget {
  UsersPage({Key? key}) : super(key: key);

  final user = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'List Users',
                style: TextStyle(fontSize: 32),
              ),
            ),
            Container(
              width: size.width * 0.1,
              padding: EdgeInsets.only(right: 10, bottom: 20),
              child: new Divider(),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                ),
                child: Obx(
                  () {
                    if (user.listUser.isNotEmpty) {
                      return DataTable2(
                        columnSpacing: 12,
                        horizontalMargin: 12,
                        minWidth: 600,
                        columns: [
                          DataColumn(
                            label: Text('#'),
                          ),
                          DataColumn(
                            label: Text('Name'),
                          ),
                          DataColumn(
                            label: Text('Username'),
                          ),
                          DataColumn(
                            label: Text('Email'),
                          ),
                          DataColumn(
                            label: Text('Address'),
                          ),
                          DataColumn(
                            label: Text('Phone'),
                          ),
                          DataColumn(
                            label: Text('Website'),
                          ),
                          DataColumn2(
                            label: Text('Action'),
                            size: ColumnSize.L,
                          ),
                        ],
                        rows: List<DataRow>.generate(
                          user.listUser.length,
                          (i) => DataRow(
                            cells: [
                              DataCell(Text('${i + 1}')),
                              DataCell(Text('${user.listUser[i].name}')),
                              DataCell(Text('${user.listUser[i].username}')),
                              DataCell(Text('${user.listUser[i].email}')),
                              DataCell(Text(
                                  '${user.listUser[i].address!.street}, ${user.listUser[i].address!.city}, ${user.listUser[i].address!.zipcode}')),
                              DataCell(Text('${user.listUser[i].phone}')),
                              DataCell(Text('${user.listUser[i].website}')),
                              DataCell(Row(
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(8),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.orange),
                                    ),
                                    onPressed: () {},
                                    child: Text('Edit'),
                                  ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(8),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.redAccent),
                                    ),
                                    onPressed: () {},
                                    child: Text('Delete'),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      );
                    } else if (user.loading.value) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return Center(
                        child: Text(
                          'Data is Empty..',
                          style: TextStyle(fontSize: 28),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
