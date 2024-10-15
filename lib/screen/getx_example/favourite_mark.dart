import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/getx_example/favourite_details.dart';
import 'package:getx_utilities_1/screen/getxcontroller/favourite_controller.dart';

class FavouriteMark extends StatefulWidget {
  const FavouriteMark({super.key});

  @override
  State<FavouriteMark> createState() => _FavouriteMarkState();
}

class _FavouriteMarkState extends State<FavouriteMark> {
  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const FavouriteDetails());
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ))
        ],
        title: const Text('Favourite Applications '),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteController.furite.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                      onTap: () {
                        if (favouriteController.templist.contains(
                            favouriteController.furite[index].toString())) {
                          favouriteController.removefavourite(
                              favouriteController.furite[index].toString());
                          //  templist.remove(furite[index]);
                          // setState(() {});
                        } else {
                          favouriteController.addfavourite(
                              favouriteController.furite[index].toString());
                          // templist.add(furite[index].toString());
                          // setState(() {});
                        }
                      },
                      leading: Text(index.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      title: Text(
                        favouriteController.furite[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(favouriteController.price[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      trailing: Obx(
                        () => Icon(
                          favouriteController.templist.contains(
                                  favouriteController.furite[index].toString())
                              ? Icons.favorite
                              : Icons.favorite_outline_rounded,
                        ),
                      )),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
