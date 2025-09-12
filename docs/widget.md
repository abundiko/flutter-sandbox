# Widgets

A flutter widget is a component that displays a UI element.

## Material Built-in Widgets

### Two main types of widgets
- Stateless Widget: A widget that just displays data without any interaction.
- Stateful Widget: A widget that can display data with functionality and interactions

- Placeholder: does nothing except displays a placeholder

- Scaffold: defines a screen and holds all it's content

- AppBar: defines the header of a screen (passed to a Scaffold)

- Text: for displaying text

### Layout widgets
- Column: displays children in a vertical layout
- Row: displays children in a horizontal layout
- Stack: displays children on the z-axis (one over another, similar to z-index in css)
- - Positioned: used in Stack to position children

- Padding: adds padding space around it's child
- - EdgeInsets.all: adds the provided space to every side
- - EdgeInsets.symmetric: adds padding differently for x and y axis
- - EdgeInsets.only: adds padding to sides individually

- SizedBox: it renders a box with a specified size

- Center: places its child in the center

- Image: used to render an image
- - asset: for asset images
- - create assets/images dir
- - put the image files in the just-created dir
- - edit pubspec.yaml file's asset block
- - network: for online image (from url)
- - memory: for in-memory image
- - file: for device files

- SingleChildScrollView: makes its child scrollable
- ListView: creates a scrollable area for its children (better for long lists)

- Icon: renders an IconData
- - IconData: a vector image (svg)

- AspectRatio: renders its child in a fixed aspect ratio

- Container: renders a box with various properties for design

- Buttons: a ui element that accepts click 
- - ElevatedButton
- - TextButton
- - IconButton
- - MaterialButton

- GestureDetector: receives gestures; tap, long tap, double tap

- PageView: creates a swipable area for its children and all children snap

- ListTile: displays a ListTile

- TextField: displays an input field for collecting user input
- - TextEditingController: used to acces the value in a TextField

- IndexStack: creates a stack of widgets but shows the Widget at a provided index

- Expanded: fills up the available space (use only in a Row or Column)