import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pwa/utils/exports.dart';

AppBar kAppBar = AppBar(
  toolbarHeight: 104,
  backgroundColor: Colors.white,
  automaticallyImplyLeading: false,
  centerTitle: true,
  title: Column(
    children: [
      SvgPicture.asset('assets/logo/logo.svg'),
      Container(
        height: 32,
        child: TextFormField(
          cursorColor: kdark,
          cursorWidth: 1.5,
          decoration: InputDecoration(
            hintText: 'Search for items',
            hintStyle: kSearchBarTS,
            focusColor: kdark,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child:
                  SvgPicture.asset('assets/icons/search.svg', fit: BoxFit.none),
            ),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: kdark)),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kdarkVariant, width: 2),
            ),
          ),
        ),
      ),
    ],
  ),
);
