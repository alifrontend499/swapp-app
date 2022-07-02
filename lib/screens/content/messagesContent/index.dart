import 'package:flutter/material.dart';

// google fonts
import 'package:google_fonts/google_fonts.dart';

// routes
import 'package:app/theme/routing/routing_constants.dart';

class MessagesContent extends StatefulWidget {
  const MessagesContent({Key? key}) : super(key: key);

  @override
  State<MessagesContent> createState() => _MessagesContentState();
}

class _MessagesContentState extends State<MessagesContent> {

  // styles
  final userHeadingStyles = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w600
  );
  final messageTimeStyles = GoogleFonts.montserrat(
    fontSize: 16,
    color: Colors.black45
  );
  final userShortMessageStyles = GoogleFonts.montserrat(
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        titleTextStyle: GoogleFonts.montserrat(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),
        centerTitle: true,
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image.network(
                            'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(65.0),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Chris Mitchell',
                                        style: userHeadingStyles,
                                      ),
                                    ),

                                    Text(
                                      '10:24',
                                      style: messageTimeStyles,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 7),

                                Text(
                                  'I’ll be there in half an hour.',
                                  style: userShortMessageStyles,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                  )
                ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),

          InkWell( // item start
            onTap: () => Navigator.pushNamed(context, messagesViewScreenRoute),
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black38
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: Image.network(
                          'https://static.remove.bg/remove-bg-web/ea4eaf12fdb825d09a927ec03bfcfc723af95931/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(65.0),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Chris Mitchell',
                                      style: userHeadingStyles,
                                    ),
                                  ),

                                  Text(
                                    '10:24',
                                    style: messageTimeStyles,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),

                              Text(
                                'I’ll be there in half an hour.',
                                style: userShortMessageStyles,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
