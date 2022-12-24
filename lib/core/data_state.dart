abstract class DataState<T>{
  T?data;
  String ? error;
  DataState({this.data,this.error});
}
class DataSuccesState<T>extends DataState<T>{
  DataSuccesState(T data):super(data: data, error: null);
}
class DataFailState<T>extends DataState<T>{
  DataFailState(String error):super(error: error, data: null);
}