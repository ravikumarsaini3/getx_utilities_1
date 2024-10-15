import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_utilities_1/screen/getxcontroller/favourite_controller.dart';

class FavouriteDetails extends StatefulWidget {
  const FavouriteDetails({
    super.key,
  });

  @override
  State<FavouriteDetails> createState() => _FavouriteDetailsState();
}

class _FavouriteDetailsState extends State<FavouriteDetails> {
  FavouriteController favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favouriteController.templist.length,
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
