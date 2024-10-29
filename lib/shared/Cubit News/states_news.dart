abstract class StatesNews {}

class Inizlization extends StatesNews {}

class LoadingThemesDark extends StatesNews {}
class ChangeThemesDark extends StatesNews {}

class ChangeIndexBottomNavigator extends StatesNews {}


class LoadingGetBusinessNews extends StatesNews {}

class GetBusinessNews extends StatesNews {}

class CatchErrorGetBusinessNews extends StatesNews
{
  final String error ;
  CatchErrorGetBusinessNews(this.error);
}
class LoadingGetSportsNews extends StatesNews {}

class GetSportsNews extends StatesNews {}

class CatchErrorGetSportsNews extends StatesNews
{
  final String error ;
  CatchErrorGetSportsNews(this.error);

}class LoadingGetScienceNews extends StatesNews {}

class GetScienceNews extends StatesNews {}

class CatchErrorGetScienceNews extends StatesNews
{
  final String error ;
  CatchErrorGetScienceNews(this.error);
}
class LoadingGetSearchNews extends StatesNews {}

class GetSearchNews extends StatesNews {}

class CatchErrorGetSearchNews extends StatesNews
{
  final String error ;
  CatchErrorGetSearchNews(this.error);
}

