part of 'page.dart';

List<Page> onGenerateHomeViewPages(
   HomeState state, List<Page> pages) {
  if (state is HomeStateInitial) {
    return [
      ...pages,
      HomePage.page(),
    ];
  }else {
    return pages;
   }
}
