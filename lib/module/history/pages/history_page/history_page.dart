import 'package:my_assistance/app_import.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _bodyView(context),
    );
  }

  Widget _bodyView(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LogoAppbar(
            title: StringConstant.history,
            actions: [
              InkWell(
                onTap: () => RouterHelper.gotoHistorySearchPage(),
                child: const AppImage(
                    image: AssetConstant.icSearch, height: 20, width: 20),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () => clearAllBottomSheet(context),
                child: const AppImage(
                  image: AssetConstant.icDelete,
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: controller.historyModelList.isEmpty
              ? Center(
                  child: historyEmptyView(),
                )
              : historyListView(),
        ),
      ],
    );
  }

  Widget historyListView() {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        itemCount: controller.historyModelList.length,
        itemBuilder: (context, index) {
          HistoryModel historyModel = controller.historyModelList[index];
          return slidableListTile(historyModel);
        });
  }

  Widget slidableListTile(HistoryModel model) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Slidable(
        key: UniqueKey(),
        endActionPane: ActionPane(
          extentRatio: 0.15,
          motion: const ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: ColorConstant.colorBrightRed,
                child: Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppImage(
                              image: AssetConstant.icDeleteSlidable,
                              height: 22,
                              width: 22,
                              color: ColorConstant.colorWhite,
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        child: historyView(model),
      ),
    );
  }

  Widget historyView(HistoryModel historyModel) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorConstant.colorVeryLightGray,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  historyModel.historyTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                AppText(historyModel.time,
                    fontSize: 12, fontColor: ColorConstant.colorDarkGray)
              ],
            ),
          ),
          const SizedBox(width: 10),
          const AppImage(
              image: AssetConstant.icForwardArrow, height: 20, width: 20),
        ],
      ),
    );
  }

  Widget historyEmptyView() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImage(
          image: AssetConstant.imgHistoryNotFound,
          height: 250,
          width: 250,
          boxFit: BoxFit.contain,
        ),
        SizedBox(height: 10),
        AppText(
          StringConstant.empty,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10),
        AppText(
          StringConstant.youHaveNoHistory,
          fontSize: 16,
        )
      ],
    );
  }

  dynamic clearAllBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: ColorConstant.colorTransparent,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: const BoxDecoration(
                color: ColorConstant.colorWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                )),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstant.colorLightGray,
                  ),
                ),
                const SizedBox(height: 20),
                const AppText(
                  StringConstant.clearAllHistory,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                const SizedBox(height: 20),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: ColorConstant.colorGreyVeryLightGrey,
                ),
                const SizedBox(height: 20),
                const AppText(
                  StringConstant.areYouSureWantToClearAllHistory,
                  fontColor: ColorConstant.colorGrey800,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child: AppButton(
                            title: StringConstant.cancel,
                            borderRadius: 50,
                            height: 50,
                            buttonColor: ColorConstant.colorLightBlueGray,
                            fontColor: ColorConstant.appPrimary,
                            onTap: () => RouterHelper.gotoBack())),
                    const SizedBox(width: 10),
                    Expanded(
                        child: AppButton(
                            borderRadius: 50,
                            title: StringConstant.clear,
                            onTap: () {}))
                  ],
                )
              ],
            ),
          );
        });
  }
}
