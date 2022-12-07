import 'package:flutter/material.dart';

import '../model.dart';

class Details extends StatefulWidget {
  List<Result> name;
  int index;
  Details({Key? key, required this.name, required this.index})
      : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(widget.name[widget.index].name!.first!),
              Text(widget.name[widget.index].name!.last!),
              Text(widget.name[widget.index].location!.street!.name!),
              Text(widget.name[widget.index].location!.coordinates!.latitude!),
              Text(widget.name[widget.index].location!.coordinates!.longitude!),
              Text(widget.name[widget.index].location!.city!),
              ElevatedButton(
                  onPressed: () {
                    widget.name.removeAt(widget.index);
                    Navigator.pop(context);
                  },
                  child: Text('remove'))
            ],
          ),
        ),
      ),
    );
  }
}
