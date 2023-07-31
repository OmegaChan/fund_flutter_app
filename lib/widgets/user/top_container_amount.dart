import 'package:flutter/material.dart';
class TopAmountWiget extends StatefulWidget {
  const TopAmountWiget({super.key});

  @override
  State<TopAmountWiget> createState() => _TopAmountWigetState();
}

class _TopAmountWigetState extends State<TopAmountWiget> {
  // tab标签
  double totalAmount = 0.0;
  double yesProfit = 0.0;
  double nowProfit = 0.0;
  double totalProfit = 0.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const Text(
              '总金额(元)',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              totalAmount.toString(),
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text('昨天收益(元)'),
                    Text(
                      yesProfit.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('持有收益(元)'),
                    Text(
                      nowProfit.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('累计收益(元)'),
                    Text(
                      totalProfit.toString(),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}