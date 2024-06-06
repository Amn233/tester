import 'package:flutter/material.dart';
import '../../CustomWidgets/Texts/custom_text.dart';


class OwnerSection extends StatelessWidget {
  const OwnerSection({super.key});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Row(
      children: [
        CircleAvatar(
          radius: appSize.height * 0.03,
          backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          ),
        ),
        SizedBox(width: appSize.width * 0.06),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: "Garry Allen",
              textColor: Colors.black,
              fontSize: appSize.height * 0.022,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: "Owner",
              textColor: Colors.black,
              fontSize: appSize.height * 0.019,
              fontWeight: FontWeight.normal,
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            _buildContactButton(appSize, icon: Icons.phone),
            SizedBox(width: appSize.width * 0.04),
            _buildContactButton(appSize, icon: Icons.chat_bubble),
          ],
        ),
      ],
    );
  }

  Widget _buildContactButton(Size appSize, {required IconData icon}) {
    return Container(
      height: appSize.height * 0.055,
      width: appSize.width * 0.12,
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
