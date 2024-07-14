import 'package:flutter/material.dart';

Widget defaultFormField(
        {required TextEditingController controller,
         String? text,
         Function? validate,
        bool isPassword = false}) =>
    TextFormField(
      controller: controller,
      validator: (value) {
        validate!(value);
        return null;
      },
      obscureText: isPassword,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: text,
          prefixIconColor: Colors.blue,
          prefixIcon: const Icon(Icons.search_outlined,size: 35,),
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.grey
          ),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.blue
          )
        )
      ),
    );
