import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'How do I place an order?',
      answer: 'To place an order, follow these steps: ...',
    ),
    FAQItem(
      question: 'What payment methods are accepted?',
      answer: 'We accept credit cards, debit cards, and cash on delivery.',
    ),
    FAQItem(
      question: 'How can I track my order?',
      answer: 'You can track your order in the "Order History" section...',
    ),
    FAQItem(
      question: 'Is there a minimum order amount?',
      answer: 'Yes, there is a minimum order amount of \$10 for delivery.',
    ),
    FAQItem(
      question: 'Can I cancel my order?',
      answer: 'You can cancel your order within 15 minutes of placing it.',
    ),
    FAQItem(
      question: 'What is the delivery time?',
      answer:
          'Delivery times may vary but are typically between 30-45 minutes.',
    ),
    FAQItem(
      question: 'Do you offer vegetarian options?',
      answer: 'Yes, we have a variety of vegetarian dishes on our menu.',
    ),
    FAQItem(
      question: 'How can I contact customer support?',
      answer: 'You can reach our customer support team at support@example.com.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      appBar: AppBar(
        title: const Text('Help Center'),
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      ),
      body: ListView.builder(
        itemCount: faqItems.length,
        itemBuilder: (context, index) {
          final faqItem = faqItems[index];
          return ExpansionTile(
            title: Text(faqItem.question),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  faqItem.answer,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
