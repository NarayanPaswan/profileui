import '../../utils/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CollegeDashboardView extends StatefulWidget {
  const CollegeDashboardView({super.key});

  @override
  State<CollegeDashboardView> createState() => _CollegeDashboardViewState();
}

class _CollegeDashboardViewState extends State<CollegeDashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
           
            Container(
             height: Dimensions.screenHeight(context) * .3,
             
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  image: AssetImage(AssetsPath.himalaya),
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              
              child: SizedBox(
                height: Dimensions.profilePicHeight(context),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                    radius: 32,
                    backgroundColor: AppColors.whiteColor,
                    backgroundImage: const NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8SQH36f8x7yKZpCYQGhNPr2z9vZV_SfKSjLzZP9QxfA&s'),
                    ),
                     const SizedBox(width: 16.0,),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Narayan", style: AppTextStyle.poppinsRegular),
                      Text("12345678", style: AppTextStyle.poppinsRegular),

                      
                      ],
                     ),

                     

                  ],
                ),
            
              ),
              
            ),
          
            Padding(
              padding: const EdgeInsets.only(top: 132.0),
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                primary: false,
                children: [
                  
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.network("")
                        SvgPicture.asset(AssetsPath.dashboardConsultation, height: 128,),
                        Text("consultation", style: AppTextStyle.poppinsRegular)
                      ],
                    ),
                  ),

                   Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.network("")
                        SvgPicture.asset(AssetsPath.dashboardDental, height: 128,),
                        Text("Dental", style: AppTextStyle.poppinsRegular)
                      ],
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.network("")
                        SvgPicture.asset(AssetsPath.dashboardHeart, height: 128,),
                        Text("Heart", style: AppTextStyle.poppinsRegular)
                      ],
                    ),
                  ),

                   Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.network("")
                        SvgPicture.asset(AssetsPath.dashboardHospital, height: 128,),
                        Text("Hospital", style: AppTextStyle.poppinsRegular)
                      ],
                    ),
                  ),

                   Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.network("")
                        SvgPicture.asset(AssetsPath.dashboardMedicine, height: 128,),
                        Text("Medicine", style: AppTextStyle.poppinsRegular)
                      ],
                    ),
                  ),

                Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SvgPicture.network("")
                        SvgPicture.asset(AssetsPath.dashboardPhysician, height: 128,),
                        Text("Physician", style: AppTextStyle.poppinsRegular)
                      ],
                    ),
                  ),

                  


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}