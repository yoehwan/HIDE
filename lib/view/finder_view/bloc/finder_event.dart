part of finder_bloc;

abstract class FinderEvent {}

class FinderInitialized extends FinderEvent {}

class FinderOnSelectedFile extends FinderEvent {
  FinderOnSelectedFile(this.file);
  final HFile file;
}
