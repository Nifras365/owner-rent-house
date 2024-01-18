import 'package:flutter/material.dart';
import 'package:owner_rent_house/components/house.dart';
import 'package:owner_rent_house/components/ownerdetails.dart';
import 'package:owner_rent_house/components/postahouse.dart';
import 'package:owner_rent_house/components/housedetails.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HouseBox(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    ));

class HouseBox extends StatelessWidget {
  final housePostings = Housepost.yourHousePostings();

  HouseBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Baseline(
                      baseline: 30,
                      baselineType: TextBaseline.alphabetic,
                      child: OwnerDetails(),
                    ),
                    Baseline(
                      baseline: 120,
                      baselineType: TextBaseline.alphabetic,
                      child: Text(
                        'Your Postings',
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: housePostings
                          .map(
                            (house) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HouseDetails()),
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Stack(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 150,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  house.imageUrls[0]),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              house.type,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayLarge!
                                                  .copyWith(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              house.address,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(
                                                    fontSize: 14,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 16.0,
              right: 16.0,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PostaHouse()),
                  );
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
