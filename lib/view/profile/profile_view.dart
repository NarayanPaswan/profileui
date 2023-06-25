import '../../utils/exports.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    // print("Screen Height is ${Dimensions.screenHeight(context)}");
    // print("Screen Width is ${Dimensions.screenWidth(context)}");
    return SafeArea(
      child: Scaffold(
        body:  Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Image(image: NetworkImage("url")),
               
                Image(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/3,
                  image: const AssetImage(AssetsPath.himalaya,)
                  ),
                
                Positioned(
                bottom: -50.0,  
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: AppColors.whiteColor,
                  backgroundImage: const ExactAssetImage(AssetsPath.profilePic),
                  // backgroundImage: NetworkImage(''),
                   
                ),
                ),

              

              ],
            ),
              const SizedBox(height: 40,),
                 ListTile(
                  title: Center(child: Text("Narayan Paswan", style: AppTextStyle.poppinsRegular,)),
                  subtitle: Center(child: Text("Flutter and Laravel Developer",style: AppTextStyle.poppinsRegular,)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  
                  child: TextButton.icon(
                  onPressed: (){}, 
                  icon:  Icon(Icons.mail, color: AppColors.whiteColor,), 
                  label: Text("Hire Me", style: TextStyle(color: AppColors.whiteColor)),
                  ),
                ),

                ListTile(
                  title: Text("About Me", style: AppTextStyle.poppinsRegularUnderlined,),
                  subtitle: const Text('''Hi, I'm an experienced software developer \nwith a total of 4 years and 9 months of experience. During this time, I have worked as a Flutter developer for 2 years and as a Laravel developer for 2 years and 9 months. Currently, I am seeking a remote job. ''', style: TextStyle(letterSpacing: 2),)
                ),

          ],
        ),
      ),
    );
  }
}