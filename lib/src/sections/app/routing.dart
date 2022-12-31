part of 'page.dart';

List<Page> onGenerateHomeViewPages(
   HomeState state, List<Page> pages) {
  if (state is HomeStateInitial) {
    return [
      ...pages,
      HomeEngineRenderPage.page(),
    ];
  }else if (state is HomeStateCreateGroup) {
    return [
      ...pages,
      CreateGroupRenderPage.page(),
    ];
  }else {
    return pages;
  }
}
