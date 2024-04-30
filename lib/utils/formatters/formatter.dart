import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-YYYY')
        .format(date); //Customize the date formate as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$')
        .format(amount); //customize the currency locale and symbol as needed
  }

  static String formatPhoneNumber(String phonenumber) {
    //Assuming a 10-digit US phone Number format :(123) 456-7890
    if (phonenumber.length == 10) {
      return '(${phonenumber.substring(0, 3)})${phonenumber.substring(3, 6)}${phonenumber.substring(6)}';
    } else if (phonenumber.length == 11) {
      return '(${phonenumber.substring(0, 4)})${phonenumber.substring(4, 7)}${phonenumber.substring(7)}';
    }
    //add more custom phone number formatting logic for different formats if needed
    return phonenumber;
  }

  //not fully tested
  static String internationalFormatPhoneNumber(String phoneNumber) {
    //Remove any non-digit characters from the phone number
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //Extract the country code from the digitOnly
    String countryCode = '+${digitOnly.substring(0, 2)}';
    digitOnly = digitOnly.substring(2);

    //Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
    return formattedNumber.toString(); // Added return statement
  }
}
