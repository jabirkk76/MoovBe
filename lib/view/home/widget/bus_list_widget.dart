import 'package:flutter/material.dart';
import 'package:noviindus_test/controller/home_controller.dart';
import 'package:noviindus_test/helpers/app_colors.dart';
import 'package:noviindus_test/model/bus_model.dart';
import 'package:provider/provider.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({super.key, required this.list});
  final List<BusModel> list;
  @override
  Widget build(BuildContext context) {
    final homeController = Provider.of<HomeController>(context, listen: false);

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: list.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(213, 213, 213, 0.34),
                      ),
                    ],
                    color: AppColors.homeBusListBgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  height: 73,
                  width: 79,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(list[index].image),
                      ),
                    ),
                    height: 38,
                    width: 62,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(213, 213, 213, 0.34),
                      ),
                    ],
                    color: AppColors.loginButtonBgColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  height: 73,
                  width: 255.5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 21, left: 14.5),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].busType,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  height: 18 / 12),
                            ),
                            Text(
                              list[index].series,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  height: 18 / 12),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            homeController.goBustDetailsScreen(
                              context,
                              busModel: list[index],
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Manage',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      height: 15.84 / 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
          ],
        );
      },
    );
  }
}
