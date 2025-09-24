import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:sandbox/screens/story_details_screen.dart';
import 'package:sandbox/utils/navigation.dart';
import 'package:sandbox/widgets/title/h1.dart';
import 'package:toastification/toastification.dart';

class StorybookScreen extends StatefulWidget {
  const StorybookScreen({super.key});

  @override
  State<StorybookScreen> createState() => _StorybookScreenState();
}

class _StorybookScreenState extends State<StorybookScreen> {
  RangeValues ageRange = RangeValues(1, 100);
  double chapters = 5;
  bool isLoading = false;

  Future<void> generateStory(String storyName) async {
    if (storyName.isEmpty) {
      toastification.show(
        alignment: Alignment.topCenter,
        title: Text("please put a story name"),
        type: ToastificationType.error,
      );
      return;
    }

    setState(() {
      isLoading = true;
    });
    Gemini.instance
        .prompt(
          parts: [
            Part.text("""
SYSTEM: YOU ARE TO GENERATE A STORY WITH THE PROVIDED TITLE. NOTHING MORE. NOTHING LESS.
YOU WILL RESPOND WIHOUT MARKDOWN BUT WITH PLAIN HTML TEXT STRING CONTAINING THE STORY CONTENT, WITHOUT ANY MARKDOWN FORMATTING BACKTICKS.
ADD CHAPTERS IN H1s AND PARAGRAPHS IN Ps
THE STORY SHOULD BE ENGAGING AND SUITABLE FOR AGES ${ageRange.start.toInt()} TO ${ageRange.end.toInt()} YEARS OLD.
IGNORE ANYTHING THAT IS NOT A REASONABLE OR USEFUL STORY TITLE.
THERE SHOULD BE AT $chapters CHAPTERS.
USE GOOD AND SIMPLE GRAMMER.

TITLE: `${storyName.toLowerCase().replaceAll("```html", "").replaceAll("```", "")}`
          """),
          ],
        )
        .then((value) {
          toScreen(
            context,
            StoryDetailsScreen(title: storyName, content: value?.output ?? ""),
          );
        })
        .catchError((e) {
          toastification.show(
            alignment: Alignment.topCenter,
            title: Text("Sorry. unable to generate story"),
            type: ToastificationType.error,
          );
        })
        .whenComplete(() {
          setState(() {
            isLoading = false;
          });
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Storybook"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H1("Enter the title of a cool story"),
            SizedBox(height: 20),
            if (isLoading)
              Center(child: CircularProgressIndicator())
            else
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      // minLines: 3,
                      // maxLines: 3,
                      decoration: InputDecoration(
                        hintText: "Enter a title here",
                      ),
                      onSubmitted: (value) => generateStory(value),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Age Range: ${ageRange.start.toInt()} - ${ageRange.end.toInt()}",
                    ),
                    RangeSlider(
                      min: 1,
                      max: 100,
                      values: ageRange,
                      onChanged: (newValue) {
                        setState(() {
                          ageRange = newValue;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    Text("Chapters: ${chapters.toInt()}"),
                    Slider(
                      min: 1,
                      max: 10,
                      year2023: false,
                      value: chapters,
                      onChanged: (newValue) {
                        setState(() {
                          chapters = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
