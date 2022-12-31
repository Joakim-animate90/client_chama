import 'package:client_chama/src/common/widgets/page.dart';
import 'package:client_chama/src/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class CreateGroupForm extends StatefulWidget {
  const CreateGroupForm({Key? key}) : super(key: key);

  @override
  State<CreateGroupForm> createState() => _CreateGroupFormState();
}

class _CreateGroupFormState extends State<CreateGroupForm> {

  final _formKey = GlobalKey<FormState>();
  final _groupNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const SizedBox(height: 20),
          const CustomText(text: 'Group Name', color: kBlack, fontSize: 12),
          const SizedBox(height: 10),
          TextFormField(
            controller: _groupNameController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.group),
              hintText: 'Group Name',
              hintStyle: TextStyle(color: kGrey),


            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a group name';
              }
              return null;
            },
          ),
          const SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content:CustomText(text: 'Processing Data')),
                );
              }
            },
            child: const CustomText(text: 'Submit'),
          ),
        ],
      ),
    );
  }
}
