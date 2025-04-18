enum AppPage{
  homePage,
  detailsPage,
}

extension AppPageExtension on AppPage{
  String toPath ({bool isAbsolute = true}){
    final path = switch (this) {
      AppPage.homePage => '',
      AppPage.detailsPage => 'detailsPage',
    };
    return isAbsolute ? '/$path' : path;
  }

  String get toName{
    return switch (this) {
      AppPage.homePage => 'HOME_PAGE',
      AppPage.detailsPage => 'DETAILS_PAGE',
    };
  }
}



