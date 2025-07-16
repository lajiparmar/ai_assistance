import 'package:my_assistance/app_import.dart';

class HistorySearchPage extends GetView<HistorySearchController> {
  const HistorySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _bodyView(),
    );
  }

  Widget _bodyView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 40),
          _searchView(),
          const SizedBox(height: 10),
          Expanded(
              child: controller.searchList.isEmpty
                  ? historyEmptyView()
                  : previousSearchView()),
        ],
      ),
    );
  }

  Widget _searchView() {
    return Row(
      children: [
        InkWell(
            onTap: () => RouterHelper.gotoBack(),
            child: const Icon(Icons.arrow_back, size: 25,color: ColorConstant.colorBlack,)),
        const SizedBox(width: 10),
        Expanded(
            child: AppTextField(
          controller: controller.searchController,
          borderColor: ColorConstant.colorSoftBlue,
          hintText: 'Search',
          prefixIcon: AssetConstant.icSearch,
          action: TextInputAction.done,
        )),
      ],
    );
  }

  Widget historyListView() {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: controller.searchList.length,
        itemBuilder: (context, index) {
          HistoryModel historyModel = controller.searchList[index];
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

  Widget previousSearchView() {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      children: [
        Row(
          children: [
            const AppText(StringConstant.previousSearch,
                fontWeight: FontWeight.bold, fontSize: 18),
            const Spacer(),
            InkWell(
                onTap: () {},
                child: const AppImage(
                  image: AssetConstant.icClose,
                  height: 15,
                  width: 15,
                ))
          ],
        ),
        const SizedBox(height: 20),
        Container(
          height: 1,
          width: double.infinity,
          color: ColorConstant.colorGreyVeryLightGrey,
        ),
        const SizedBox(height: 20),
        previousSearchListView(),
      ],
    );
  }

  Widget previousSearchListView() {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.searchList.length,
        itemBuilder: (context, index) {
          HistoryModel model = controller.searchList[index];
          return previousSearchContent(model);
        });
  }

  Widget previousSearchContent(HistoryModel model) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: AppText(
              model.historyTitle,
              fontColor: ColorConstant.colorGrey600,
              fontWeight: FontWeight.bold,
              maxLine: 2,
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: const AppImage(
              image: AssetConstant.icClose,
              height: 15,
              width: 15,
            ),
          )
        ],
      ),
    );
  }

  Widget historyEmptyView() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImage(
          image: AssetConstant.imgSearchHistoryNotFound,
          height: 200,
          width: 200,
          boxFit: BoxFit.contain,
        ),
        SizedBox(height: 10),
        AppText(
          StringConstant.notFound,
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
}
