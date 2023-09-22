import 'package:injectable/injectable.dart';

import 'package:pasha_ci_cd_test/models/index.dart';
import 'package:pasha_ci_cd_test/repositories/index.dart';

@lazySingleton
class PostsBloc extends NetworkListBloc<Post, NetworkListState<Post>> {
  PostsBloc(this.repository) : super(const NetworkListState(data: []));

  final PostsRepository repository;

  @override
  Future<List<Post>> onLoadAsync() {
    return repository.getPosts();
  }

  @override
  bool equals(Post item1, Post item2) {
    return item1.id == item2.id;
  }
}
