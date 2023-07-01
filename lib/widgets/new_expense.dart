import 'package:flutter/material.dart';

class NewSpense extends StatefulWidget {
  const NewSpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewSpenseState();
  }
}

class _NewSpenseState extends State<NewSpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _amountController,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
              suffixText: 'LKR',
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: const Text('Save Expense'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
