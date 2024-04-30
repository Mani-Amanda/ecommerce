class TPricingCalculator {
  ///---Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLoaction(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  ///---Calculating shipping cost
  static String calculateShippingCost(double productPrice, String loaction) {
    double shippingCost = getShippingCost(loaction);
    return shippingCost.toStringAsFixed(2);
  }

  ///---Calculating tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLoaction(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLoaction(String location) {
    //lookup the tax rate for the given location from a tax rate database or API
    //return the appropriate tax rate.
    return 0.10; //example tax rate of 10%
  }

  static double getShippingCost(String loaction) {
    //lookup the shipping cost for the given loaction using a shipping rate API
    //Calculate the shipping cost based on various factors like distcamnce, weight, etc
    return 5.00; //Example shipping cost od $5
  }
}
