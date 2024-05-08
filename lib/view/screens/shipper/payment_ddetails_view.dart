import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});

  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        color: kWhite,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(
            onTap: () {
              // context.pushNamed("newAddressView");
            },
            text: "Pay",
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 85,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          'Payment',
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryDarkColor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Address",
                style: TextStyle(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Card Holder Name",
                style: TextStyle(
                  color: grey1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  fillColor: kWhite,
                  hintText: "Enter Name",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Card Number",
                style: TextStyle(
                  color: grey1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: kWhite,
                  hintText: "Ex- 1245 1245 2356 8956",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://w7.pngwing.com/pngs/397/885/png-transparent-logo-mastercard-product-font-mastercard-text-orange-logo.png",
                      height: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Card Number",
                          style: TextStyle(
                            color: grey1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: kWhite,
                            hintText: "Ex- 09/25",
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "CVV",
                          style: TextStyle(
                            color: grey1,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: kWhite,
                            hintText: "Ex- 023",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Transaction Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kBlack,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Load ID",
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "#12345645",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kBlack,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Company",
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "ABC Logistics",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kBlack,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Amount",
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "\$1,400",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kBlack,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
