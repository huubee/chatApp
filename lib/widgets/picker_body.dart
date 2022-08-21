import 'package:chat_app/models/image_model.dart';
import 'package:chat_app/repo/image_repository.dart';
import 'package:flutter/material.dart';

class NetworkImagePickerBody extends StatelessWidget {
  final Function(String) onImageSelected;

  NetworkImagePickerBody({
    Key? key,
    required this.onImageSelected,
  }) : super(key: key);

  final ImageRepository _imageRepo = ImageRepository();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PixelfordImage>>(
      future: _imageRepo.getNetworkImages(),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<PixelfordImage>> snapshot,
      ) {
        if (snapshot.hasData) {
          return GridView.builder(
            padding: const EdgeInsets.all(15),
              itemCount: snapshot.data!.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      onImageSelected(snapshot.data![index].urlFullSize);
                    },
                    child: Image.network(snapshot.data![index].urlSmallSize));
              });
        } else if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text('This is the error: ${snapshot.error}'),
          );
        }

        return const Padding(
          padding: EdgeInsets.all(28.0),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
