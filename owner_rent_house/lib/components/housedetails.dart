import 'package:flutter/material.dart';
import 'package:owner_rent_house/components/house.dart';

class HouseDetails extends StatelessWidget {
  final List<House> houseDetails = House.moreDetailsofHouse();
  final PageController _pageController = PageController();

  HouseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your house details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: houseDetails
                .map(
                  (house) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 350,
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: house.imageUrls.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(house.imageUrls[0]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                house.type,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.person,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'Owner: ${house.ownername}',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    house.address,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.room_preferences,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'Rooms: ${house.rooms}',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.attach_money,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    'Rent: ${house.rent}',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.school,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    house.university,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.book,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 16),
                                  Text(
                                    house.faculty,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
