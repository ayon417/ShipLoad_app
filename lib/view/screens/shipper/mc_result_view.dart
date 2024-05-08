import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/mc_search_model.dart';
import 'package:shipload_app/utils/utils.dart';
import 'package:shipload_app/view/components/customButton.dart';

class MCResultView extends StatefulWidget {
  final McSearchResponse data;
  const MCResultView({super.key, required this.data});

  @override
  State<MCResultView> createState() => _MCResultViewState();
}

class _MCResultViewState extends State<MCResultView> {
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
              context.pop();
            },
            text: "Ok",
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
          'MC Checker',
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: primaryColor,
                        backgroundImage: widget.data.data?.profilePicUrl != ""
                            ? NetworkImage(
                                widget.data.data?.profilePicUrl ?? "",
                              )
                            : NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlTjFPuo9VZ3r2MxqAmWUqhft8G-Ba9dY1cw&usqp=CAU",
                              ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data.data?.companyName ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kBlack,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            widget.data.data?.role ?? "",
                            style: const TextStyle(
                              color: darkGrey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "MC#${widget.data.data?.mcNumber}",
                        style: const TextStyle(
                          color: grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.data.data?.dotNumber == null
                            ? ""
                            : "DOT#${widget.data.data?.dotNumber}",
                        style: const TextStyle(
                          color: grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const DottedLine(
                    dashLength: 10.0,
                    dashColor: kGrey,
                    dashGapLength: 8.0,
                    // dashGapGradient: [Colors.red, Colors.blue],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Safety Score",
                        style: TextStyle(
                          color: grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffC3FFC1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          widget.data.data?.safetyScore ?? "",
                          style: const TextStyle(
                            color: Color(0xff0AB506),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Risk Score",
                        style: TextStyle(
                          color: grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffC3FFC1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          widget.data.data?.riskScore ?? "",
                          style: const TextStyle(
                            color: Color(0xff0AB506),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const DottedLine(
                    dashLength: 10.0,
                    dashColor: kGrey,
                    dashGapLength: 8.0,
                    // dashGapGradient: [Colors.red, Colors.blue],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/profile.webp",
                        height: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          widget.data.data?.fullName ?? "",
                          style: const TextStyle(
                            color: grey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Image.asset(
                  //       "assets/icons/location_green.webp",
                  //       color: grey2,
                  //       height: 20,
                  //     ),
                  //     const SizedBox(
                  //       width: 5,
                  //     ),
                  //     Expanded(
                  //       child: Text(
                  //         widget.data.data?.location ?? "",
                  //         style: const TextStyle(
                  //           color: grey2,
                  //           fontSize: 16,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/phone.webp",
                        height: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          widget.data.data?.phoneNumber ?? "",
                          style: const TextStyle(
                            color: grey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/profile_email.webp",
                        height: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          widget.data.data?.email ?? "",
                          style: const TextStyle(
                            color: grey2,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Align(
              child: Image.asset(
                "assets/icons/verified.webp",
                height: 80,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Carrier Credentials have been verified. We recommend proceeding with your own check in case you consider it necessary before moving a load.",
              style: TextStyle(
                color: grey1,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
