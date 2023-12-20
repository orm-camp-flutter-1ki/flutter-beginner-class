import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StarWidget(),
    );
  }
}

class StarWidget extends StatefulWidget {
  const StarWidget({super.key});

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  'https://i.namu.wiki/i/R0AhIJhNi8fkU2Al72pglkrT8QenAaCJd1as-d_iY6MC8nub1iI5VzIqzJlLa-1uzZm--TkB-KHFiT-P-t7bEg.webp',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              secondArea(),
              thirdArea(),
              forthArea(),
            ],
          ),
        ),
      ),
    );
  }

  Widget secondArea() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'sub title',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Row(
              children: [
                Icon(
                  isFavorite ? Icons.star : Icons.star_border,
                  color: Colors.red,
                ),
                const Text('41'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget thirdArea() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWidget(
          icon: Icon(
            Icons.phone,
            color: Colors.blue,
          ),
          title: 'CALL',
        ),
        IconButtonWidget(
          icon: Icon(
            Icons.near_me,
            color: Colors.blue,
          ),
          title: 'ROUTE',
        ),
        IconButtonWidget(
          icon: Icon(
            Icons.share,
            color: Colors.blue,
          ),
          title: 'SHARE',
        ),
      ],
    );
  }

  Widget forthArea() {
    return const Padding(
      padding: EdgeInsets.all(32.0),
      child: Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam quis eleifend lectus. Aliquam accumsan, dui eu ornare consectetur, massa ligula fringilla leo, quis consectetur magna mi at sem. Ut sollicitudin turpis a condimentum volutpat. Nunc dapibus lacus libero, vel condimentum mauris mattis sollicitudin. Suspendisse iaculis massa metus, in viverra eros ultricies et. Morbi aliquet ornare cursus. Mauris luctus vestibulum libero et suscipit. Aenean eleifend dolor at risus consequat malesuada. Proin at magna et nunc dictum sodales. Morbi pellentesque lacus eget purus vehicula posuere. Aenean lobortis tincidunt sodales. Donec ornare lobortis tellus et tincidunt. Ut ligula sem, porta in venenatis eu, vulputate at metus. Proin ac scelerisque tellus, vel aliquam magna. Ut aliquet dui purus, a blandit turpis dignissim vel.

Praesent commodo tincidunt nunc, a bibendum massa molestie ac. Integer et urna risus. Donec eu elementum eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla hendrerit dolor vel dui rutrum eleifend. Nullam ligula neque, facilisis sed auctor quis, commodo tincidunt nibh. Vivamus porta augue ut tellus dictum, at pulvinar augue tincidunt. In hac habitasse platea dictumst. Suspendisse justo ex, mollis ac vulputate in, lobortis nec odio. Etiam euismod ante eleifend, convallis massa ut, congue nisl. Fusce aliquet hendrerit libero vel venenatis. Nunc accumsan enim orci, sed semper nisl ultricies mollis. Pellentesque fringilla ultricies lorem, vehicula pretium dolor lobortis at. Fusce rhoncus tincidunt ipsum vel dignissim.

Nulla volutpat metus ut malesuada aliquet. Sed a pulvinar nulla. Cras aliquet dui ac ipsum auctor, ac vestibulum urna lacinia. Donec justo risus, vulputate sit amet semper quis, convallis quis mi. Aenean ultrices, turpis id tristique accumsan, tortor tortor varius felis, eu semper diam felis at erat. Quisque sollicitudin neque ac tincidunt varius. Sed vitae libero neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla malesuada eleifend purus sit amet condimentum.

Vivamus blandit ultrices fermentum. Nulla ut tortor sed turpis mattis venenatis nec suscipit orci. Aliquam vestibulum erat turpis, a accumsan libero tempor ac. In eu vehicula nulla, non commodo justo. Donec et lorem massa. Curabitur turpis erat, feugiat ut eleifend in, convallis et erat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi ullamcorper sem sapien. Sed vitae arcu libero. Nam pharetra mollis libero vitae luctus. Sed hendrerit, metus vitae aliquam fermentum, turpis lectus gravida eros, sit amet bibendum ipsum turpis eget metus. Pellentesque non leo aliquet, blandit nisl sed, faucibus dolor. Mauris est odio, condimentum et pharetra quis, venenatis quis diam. Donec sed odio at quam blandit lobortis in vitae ante. Pellentesque purus ex, commodo ut nisl vel, pellentesque auctor purus.

Sed vitae nisl at orci vulputate placerat vel non felis. In mattis urna et libero ullamcorper scelerisque. Nam volutpat ut libero eget posuere. Curabitur tempor neque eget sapien convallis, vitae laoreet ligula rhoncus. Ut blandit quis ex eu euismod. Nullam placerat sed arcu at venenatis. Vivamus consequat, lacus non semper faucibus, nulla elit sollicitudin nulla, dictum tincidunt quam lacus a est. Etiam ullamcorper, odio sit amet porttitor commodo, augue massa gravida mi, a suscipit neque enim tempus augue.'''),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final String title;
  final Icon icon;

  const IconButtonWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          title,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
