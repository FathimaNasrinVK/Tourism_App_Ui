import 'package:flutter/material.dart';

import '../../Dummy/dummy_data.dart';

class Travel_ViewAll extends StatelessWidget {
  const Travel_ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 1.6;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: (itemWidth / itemHeight),
                children: resorts
                    .map((resort) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'detailpage',
                          arguments: resort['id']);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  resort['image'],
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Positioned(
                            bottom: 15,
                            left: 10,
                            child: Text(
                              resort['name'],
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue.shade700,
                                    padding: const EdgeInsets.all(5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(5))),
                                onPressed: () {},
                                child: Text(
                                  resort['sno'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )),
                          )
                        ],
                      ),
                    )))
                    .toList()),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(5))),
              onPressed: () {},
              child: const Text(
                'Explore Now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              )),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}
