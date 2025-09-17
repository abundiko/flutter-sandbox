import 'package:flutter/material.dart';
import 'package:sandbox/widgets/airtel/airtel_ad_card.dart';

class AirtelAds extends StatelessWidget {
  const AirtelAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          AirtelAdCard(
            imageUrl:
                "https://cdn-webportal.airtelstream.net/website/nigeria/assets/images/ng/banner-331.jpg",
            redirectUrl: "https://google.com",
          ),
          AirtelAdCard(
            imageUrl:
                "https://cdn-webportal.airtelstream.net/website/nigeria/assets/images/ng/banner-333.jpg",
            redirectUrl: "https://google.com",
          ),
          AirtelAdCard(
            imageUrl:
                "https://cdn-webportal.airtelstream.net/website/nigeria/assets/images/ng/banner-331.jpg",
            redirectUrl: "https://google.com",
          ),
        ],
      ),
    );
  }
}
