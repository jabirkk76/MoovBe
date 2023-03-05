import 'package:flutter/material.dart';
import 'package:noviindus_test/helpers/app_colors.dart';

class BookingSeatWidget extends StatelessWidget {
  const BookingSeatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(46),
      child: Container(
        height: 487,
        width: 283,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: AppColors.BookingContainerBorderColor),
            borderRadius: const BorderRadius.all(Radius.circular(13))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 6,
              ),
              child: Image.asset(
                'assets/Seat.png',
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GridView.builder(
                      itemCount: 12,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 10,
                              mainAxisExtent: 60,
                              childAspectRatio: 2),
                      itemBuilder: (context, index) => Image.asset(
                        'assets/Seat.png',
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 80),
                  Expanded(
                    child: GridView.builder(
                      itemCount: 12,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 60,
                        childAspectRatio: 2,
                      ),
                      itemBuilder: (context, index) => Image.asset(
                        'assets/Seat.png',
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
