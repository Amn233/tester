import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailImageSection extends StatelessWidget {
  const DetailImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    var appSize = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(appSize.height * 0.035),
            child: Center(
              child: Image.network(
                width: appSize.width * 0.920,
                "https://images.pexels.com/photos/20427348/pexels-photo-20427348/free-photo-of-house-by-street-in-town.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              ),
            ),
          ),
          Positioned(
            left: appSize.height * 0.020,
            bottom: appSize.height * 0.0999,
            child: Text(
              "Dreamsville House",
              style: TextStyle(
                fontSize: appSize.height * 0.028,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: appSize.height * 0.020,
            bottom: appSize.height * 0.0700,
            child: Text(
              "Jl. Sultan Iskandar Muda, Jakarta selatan",
              style: TextStyle(
                fontSize: appSize.height * 0.017,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: appSize.height * 0.020,
            bottom: appSize.height * 0.0200,
            child: Row(
              children: [
                Icon(Icons.bedroom_child, color: Colors.white),
                SizedBox(width: appSize.width * 0.04),
                Text(
                  "6 Bedroom",
                  style: TextStyle(
                    fontSize: appSize.height * 0.018,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: appSize.height * 0.075,
            bottom: appSize.height * 0.0200,
            child: Row(
              children: [
                Icon(Icons.bathtub_outlined, color: Colors.white),
                SizedBox(width: appSize.width * 0.04),
                Text(
                  "4 Bathroom",
                  style: TextStyle(
                    fontSize: appSize.height * 0.018,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: appSize.height * 0.018,
            top: appSize.height * 0.018,
            child: _buildIconButton(
              context,
              icon: Icons.arrow_back_ios,
              onTap: () => context.go("/home"),
            ),
          ),
          Positioned(
            right: appSize.height * 0.018,
            top: appSize.height * 0.018,
            child: _buildIconButton(
              context,
              icon: Icons.favorite_border,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(BuildContext context,
      {required IconData icon, required VoidCallback onTap}) {
    var appSize = MediaQuery.of(context).size;
    return Container(
      width: appSize.width * 0.090,
      height: appSize.height * 0.045,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(appSize.height * 0.04),
      ),
      child: Center(
        child: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            color: Colors.white,
            size: appSize.height * 0.020,
          ),
        ),
      ),
    );
  }
}
