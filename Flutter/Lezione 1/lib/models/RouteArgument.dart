class RouteArgument {
  String id;
  String heroTag;
  dynamic param;
  Function function;
  String title;

  RouteArgument({this.id, this.heroTag, this.param, this.function, this.title});

  @override
  String toString() {
    return '{id: $id, heroTag:${heroTag.toString()}}';
  }
}
