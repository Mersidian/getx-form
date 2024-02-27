import 'package:flutter/material.dart';
import 'package:flutter_application/views/components/confirm_button.dart';
import 'package:flutter_application/views/components/cow_birthdate.dart';
import 'upload_cow_image.dart';
import 'cow_parent.dart';
import 'cow_number.dart';
import 'cow_id.dart';
import 'cow_name.dart';
import 'cow_gender.dart';
import 'cow_status.dart';
import 'cow_breeds.dart';
import 'cow_shed.dart';
import 'cow_herd.dart';

final formKey = GlobalKey<FormState>();

class FormBody extends StatelessWidget {
  const FormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const CowImage(),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 3),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: ParentCow(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  children: [
                    CowNumber(),
                    CowId(),
                    CowName(),
                    BirthDate(),
                    CowGender(),
                    CowStatus(),
                    CowBreeds(),
                    CowShed(),
                    CowHerd(),
                  ],
                ),
              ),
            ),
            const ConfirmButton(),
          ],
        ),
      ),
    );
  }
}
