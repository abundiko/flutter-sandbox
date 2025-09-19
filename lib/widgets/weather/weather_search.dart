import 'package:flutter/material.dart';

class WeatherSearch extends StatefulWidget {
  const WeatherSearch({super.key, required this.onSearchSubmit});

  final Function(String) onSearchSubmit;

  @override
  State<WeatherSearch> createState() => _WeatherSearchState();
}

class _WeatherSearchState extends State<WeatherSearch> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(hintText: "Enter city name"),
              onSubmitted: (val) {
                widget.onSearchSubmit(val);
              },
            ),
          ),
          SizedBox(
            width: 50,
            child: AspectRatio(
              aspectRatio: 1,
              child: GestureDetector(
                onTap: () {
                  widget.onSearchSubmit(controller.text);
                },
                child: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
