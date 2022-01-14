part of 'app_utils.dart';

class WarnWidget {
  static dataNotValid(BuildContext context) {
    ModalBottomSheet.show(
      radiusCircle: 20.h,
      context: context,
      children: [
        Lottie.asset(
          'assets/animation/error.json',
          height: 0.2.sh,
          width: double.infinity,
          repeat: false,
        ),
        Center(
          child: Text(
            'masukkan nomor tanda penduduk yg valid',
            style: Get.textTheme.headline6,
          ),
        )
      ],
    );
  }
}

class ModalBottomSheet {
  static void show({
    required List<Widget> children,
    required BuildContext context,
    double radiusCircle = 0,
    bool isDismisslable = true,
  }) {
    showModalBottomSheet(
      context: context,
      isDismissible: isDismisslable,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 0.08.sh,
              width: double.infinity,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      size: 40.h,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 0.05.sh),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: children,
                      ),
                      SizedBox(height: 20.h)
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
