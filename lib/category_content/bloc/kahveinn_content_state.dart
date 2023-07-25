part of 'kahveinn_content_bloc.dart';

enum KahveinnContentStatus { initial, loaded, error }

class KahveinnContentState extends Equatable {
  const KahveinnContentState({
    this.status = KahveinnContentStatus.initial,
    this.content,
  });

  final KahveinnContentStatus status;
  final CategoryContent? content;

  @override
  List<Object?> get props => [
        status,
        content,
      ];

  KahveinnContentState copyWith({
    KahveinnContentStatus? status,
    CategoryContent? content,
  }) {
    return KahveinnContentState(
      status: status ?? this.status,
      content: content ?? this.content,
    );
  }
}
