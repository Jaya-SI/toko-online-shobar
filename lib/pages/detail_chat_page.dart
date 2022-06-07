import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/models/message_model.dart';
import 'package:shopbar/models/product_model.dart';
import 'package:shopbar/providers/auth_provider.dart';
import 'package:shopbar/services/message_service.dart';
import 'package:shopbar/theme.dart';
import 'package:shopbar/widgets/buble_chat.dart';

class DetailChatPage extends StatefulWidget {
  ProductModel product;
  DetailChatPage(this.product);

  @override
  State<DetailChatPage> createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
  TextEditingController messageController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleAddMessage() async {
      await MessageService().addMessage(
        user: authProvider.user,
        isFromUser: true,
        product: widget.product,
        message: messageController.text,
      );

      setState(() {
        widget.product = UninitializedProductModel();
        messageController.text = '';
      });
    }

    header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left),
          ),
          backgroundColor: warnaHitam1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                'assets/image_shop_online.png',
                width: 50,
              ),
              SizedBox(width: 12),
              Column(
                children: [
                  Text(
                    'JStore',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: medium,
                      color: waranaPutih,
                    ),
                  ),
                  Text(
                    'Online',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: light,
                      color: abuText,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    chatProduct() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(10),
        height: 74,
        width: 225,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: warnaHitam3,
          border: Border.all(
            color: warnaUngu,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                widget.product.galleries[0].url,
                width: 54,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: GoogleFonts.poppins(
                      color: waranaPutih,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$${widget.product.price}',
                    style: GoogleFonts.poppins(
                      color: warnaUngu,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.product = UninitializedProductModel();
                });
              },
              child: Image.asset(
                'assets/icon_close.png',
                width: 22,
              ),
            ),
          ],
        ),
      );
    }

    chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            widget.product is UninitializedProductModel
                ? SizedBox()
                : chatProduct(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: warnaHitam4,
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: messageController,
                        style: GoogleFonts.poppins(
                          color: waranaPutih,
                        ),
                        decoration: InputDecoration.collapsed(
                            hintText: 'Type Message...',
                            hintStyle: GoogleFonts.poppins(
                              color: abuText,
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: handleAddMessage,
                  child: Image.asset(
                    'assets/button_send.png',
                    width: 45,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    content() {
      return StreamBuilder<List<MessageModel>>(
          stream:
              MessageService().getMessageByUserId(userId: authProvider.user.id),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(
                padding: EdgeInsets.symmetric(horizontal: 30),
                children: snapshot.data
                    .map((MessageModel message) => BubleChat(
                          pengirim: message.isFromUser,
                          text: message.message,
                          product: message.product,
                        ))
                    .toList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          });
    }

    return Scaffold(
      backgroundColor: warnaHitam2,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
