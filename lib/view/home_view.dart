import 'package:profile/view/profile/profile_view.dart';
import 'package:profile/view/travel/travel_booking.dart';

import '../utils/exports.dart';
import 'college_dashboard/college_dashboard.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Ui"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .47,
                child: ElevatedButton(onPressed: (){
                PageNavigator(ctx: context).nextPage(page: const ProfileView());
                        }, child:const Text("Profile")),
              ),
          
            SizedBox(
               width: MediaQuery.of(context).size.width * .47,
              child: ElevatedButton(onPressed: (){
                PageNavigator(ctx: context).nextPage(page: const CollegeDashboardView());
              }, child:const Text("College Dashboard")),
            )
          
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .47,
                child: ElevatedButton(onPressed: (){
                PageNavigator(ctx: context).nextPage(page: const TravelBookingView());
                        }, child:const Text("Travel Booking")),
              ),
          
          
          
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}