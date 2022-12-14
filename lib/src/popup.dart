import 'package:flutter/material.dart';

class AnimatedDailog extends StatefulWidget {
  final double? height;
  final double? width;
  final String? title;
  final Widget? content;
  final List<Widget>? actions;
  final bool centerTitle;
  final Color? color;
  final double? borderRadius;
  const AnimatedDailog({
    this.height,
    this.width,
    this.title,
    this.content,
    this.actions,
    this.centerTitle = false,
    this.color = Colors.white,
    this.borderRadius = 20,
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedDailog> createState() => _AnimatedDailogState();
}

class _AnimatedDailogState extends State<AnimatedDailog> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Card(
        elevation: 2,
        color: widget.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius!),
        ),
        child: Container(
          height: widget.height ?? size.height / 2,
          width: widget.width ?? size.width * 0.85,
          decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(widget.borderRadius!)),
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.title ?? "Animated Dialog",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 4,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              color: Colors.grey.shade200,
            ),
            Expanded(
              child: widget.content ??
                  const Center(
                    // ignore: unnecessary_const
                    child: const Text(
                      "Animated Dialog\nContent Here",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
            ),
            const SizedBox(
              height: 2,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 1,
              height: 0,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: widget.actions ??
                      [
                        OutlinedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                const BorderSide(
                                  width: 2,
                                ),
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                          onPressed: () {},
                          child: const Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "OK",
                              style:  TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ]
                  // children: [
                  //   SizedBox(
                  //     width: 12,
                  //   ),
                  // ],
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
          ]),
        ),
      ),
    );
  }
}
