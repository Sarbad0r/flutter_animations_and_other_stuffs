class PaginateList {
  //temp function, not usable, just for testing.
  static int checkListLength(
      {required List<dynamic> wholeList, required List<dynamic> currentList, int perPage = 30}) {
    return (currentList.length + perPage) > wholeList.length
        ? wholeList.length
        : (currentList.length + perPage);
  }

  ///if you want to show any progress indicator, create bool variable.
  ///that bool variable that you created will equals this fun
  ///
  ///checks is list has more or not
  static bool checkHasMoreList(
      {required List<dynamic> wholeList, required List<dynamic> currentList, int perPage = 30}) {
    return (currentList.length + perPage) > wholeList.length ? false : true;
  }

  ///
  ///paginate any list using this way calling this class
  ///--------------------------
  ///paginatingList.addAll(PaginateList.paginateList<OBJECT>(wholeList: wholeListThatYouHave, currentList: paginatingList)
  ///           .map((e) => OBJECT);
  ///--------------------------
  /// Reparse "OBJECT" to "List<T>" - T class object
  static List<T> paginateList<T>(
      {required List<T> wholeList,
      required List<T> currentList,
      int perPage = 30,
      bool showingCircularProgress = true}) {
    //if do not want to show any progress indicators in your screen -> set "showingCircularProgress" to "false"
    //you should not use any check variable, this function parameter "showingCircularProgress" will know automatically
    //and it checks whether list still has items or not
    if (!showingCircularProgress) {
      bool hasMore = currentList.length >= wholeList.length ? false : true;
      if (!hasMore) return [];
    }
    //check in which list index we are at
    int check = (currentList.length + perPage) > wholeList.length
        ? wholeList.length
        : (currentList.length + perPage);
    List<T> pagList = [];
    for (int i = currentList.length; i < check; i++) {
      pagList.add(wholeList[i]);
    }
    return pagList;
  }
}
