import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final getHeight = mediaQuery.size.height;
    final getWidht = mediaQuery.size.width;
    final appbarHeight = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return SafeArea(
      minimum: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/82513502?v=4'),
                  ),
                  onTap: () {
                    // ignore: avoid_print
                    print("tap pp");
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Gibran Alazka",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                InkWell(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xff161B22),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  onTap: () {
                    // ignore: avoid_print
                    print("tap pp");
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: getWidht,
                height: 180,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SafeArea(
                  minimum: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Total Wallet Balance",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            child: const Text(
                              "USD",
                              style: TextStyle(
                                color: Color(0xFFF7931A),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "\$ 66641.20",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Monthly Profit",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          const Text(
                            "\$1850.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            constraints: const BoxConstraints(
                              maxHeight: double.infinity,
                            ),
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xff58BD7D),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(" +13%")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              "Portofolio",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cardCrypto(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto(getWidht),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Market Trend",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend(getWidht),
          ],
        ),
      ),
    );
  }
}

cardCrypto(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/82513502?v=4'),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "Bitcoin",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xff58BD7D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(" +13%")
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "\$36,641.20",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "BTC",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
    onTap: () {},
  );
}

cardMarketTrend(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: getWidht,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/82513502?v=4'),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "UNISWAP",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "UNI",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "\$16,351.57",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "3.7%",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    onTap: () {},
  );
}
