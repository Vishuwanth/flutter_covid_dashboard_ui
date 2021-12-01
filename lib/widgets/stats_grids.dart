import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  // const StatsGrid({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                _buildStatsCard("Total Cases", "1.81 M", Colors.orange),
                _buildStatsCard("Deaths", "105 K", Colors.red),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildStatsCard("Recovered", "391 K", Colors.green),
                _buildStatsCard("Active", "1.31 M", Colors.lightBlue),
                _buildStatsCard("Critical", "N/A", Colors.purple),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStatsCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              count,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
