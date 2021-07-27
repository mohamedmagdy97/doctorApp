import 'package:doctor_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  bool isMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('أحمد'),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: !isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: !isMe
                                ? Color(0xFFdbedf3)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: !isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'مرحبًا ، أنا مساعدك الطبي ، يمكنك أن تسألني',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: !isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: !isMe
                                ? Color(0xFFdbedf3)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: !isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'قد ترغب في السؤال',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                              Text(
                                'هل تشعر بأعراض جديدة؟',
                                style: TextStyle(
                                  color: isMe ? Colors.blue : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                              Text(
                                'هل تشعر بصداع مستمر؟',
                                style: TextStyle(
                                  color: isMe ? Colors.blue : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: isMe
                                ? Color(0xFFdbedf3)
                                : Theme.of(context).accentColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'تم قياس نسبة السكر في دمي ، لكني أشعر بأعراض جديدة',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                    isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),

                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: !isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: !isMe
                                ? Color(0xFFdbedf3)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: !isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'مرحبًا ، أنا مساعدك الطبي ، يمكنك أن تسألني',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: !isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: !isMe
                                ? Color(0xFFdbedf3)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: !isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'قد ترغب في السؤال',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                              Text(
                                'هل تشعر بأعراض جديدة؟',
                                style: TextStyle(
                                  color: isMe ? Colors.blue : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                              Text(
                                'هل تشعر بصداع مستمر؟',
                                style: TextStyle(
                                  color: isMe ? Colors.blue : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: isMe
                                ? Color(0xFFdbedf3)
                                : Theme.of(context).accentColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'تم قياس نسبة السكر في دمي ، لكني أشعر بأعراض جديدة',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),

                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: !isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: !isMe
                                ? Color(0xFFdbedf3)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: !isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'مرحبًا ، أنا مساعدك الطبي ، يمكنك أن تسألني',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: !isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: !isMe
                                ? Color(0xFFdbedf3)
                                : Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: !isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'قد ترغب في السؤال',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                              Text(
                                'هل تشعر بأعراض جديدة؟',
                                style: TextStyle(
                                  color: isMe ? Colors.blue : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                              Text(
                                'هل تشعر بصداع مستمر؟',
                                style: TextStyle(
                                  color: isMe ? Colors.blue : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: isMe
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: isMe
                                ? Color(0xFFdbedf3)
                                : Theme.of(context).accentColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: !isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                              bottomRight: isMe
                                  ? Radius.circular(0)
                                  : Radius.circular(15),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.70,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 16),
                          margin:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: isMe
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Text(
                                'تم قياس نسبة السكر في دمي ، لكني أشعر بأعراض جديدة',
                                style: TextStyle(
                                  color: isMe ? Colors.black : Colors.white,
                                ),
                                textAlign:
                                isMe ? TextAlign.end : TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  overflow: Overflow.visible,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: Colors.white,
            child: defaultFormField(
              // controller: searchController,
              validator: (String val) {},
              type: TextInputType.phone,
              pIcon: Icon(Icons.rate_review_outlined),
              sIcon: Icon(Icons.mic_outlined),
              label: 'يرجى وصف المشكلة',
            ),
          )
        ],
      ),
    );
  }
}
