import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
    required this.image,
    required this.sum,
    required this.price,
    required this.currency,
    required this.category,
    required this.numOfRooms,
    required this.floor,
    required this.totalFloors,
    required this.area,
    required this.metro,
    required this.place,
    required this.distance,
  });

  final String image;
  final String sum;
  final String price;
  final String currency;
  final String category;
  final int numOfRooms;
  final int floor;
  final int totalFloors;
  final double area;
  final String metro;
  final String place;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214,
      width: 169,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              image,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "$price $currency",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 4),
          Text(
            "$category • $numOfRooms ком • $floor из $totalFloors • ${area.toInt()} m²",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 2,
                children: [
                  SvgPicture.network(metro, width: 20, height: 20),
                  Text(
                    place,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Text(
                "${distance}m",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
