import '../note.dart';
import '../notes_mediator.dart';

abstract class Widget {
  set mediator(NotesMediator mediator);

  void onDraw();
}

class Button extends Widget {
  final String _name;
  NotesMediator? _mediator;

  Button(this._name);

  @override
  void onDraw() {
    print(this);
  }

  @override
  set mediator(NotesMediator mediator) {
    _mediator = mediator;
  }

  void onClick() {
    _mediator?.addNote(Note('Some note'));
  }

  @override
  String toString() {
    return 'Button{ name: $_name}';
  }
}

class NotesList extends Widget {
  final List<Note> _notes = [];
  NotesMediator? _mediator;

  @override
  void onDraw() {
    print(this);
  }

  @override
  set mediator(NotesMediator mediator) {
    _mediator = mediator;
  }

  void addNote(Note note) {
    _notes.add(note);
  }

  void openNoteDetails(int position) {
    final Note note = _notes[position];
    _mediator?.openDetails(note);
  }

  @override
  String toString() {
    return 'NotesList{ notes: $_notes}';
  }
}

class NoteDetails extends Widget {
  final Note _note;
  NotesMediator? _mediator;

  NoteDetails(this._note);

  @override
  void onDraw() {
    print(this);
  }

  @override
  set mediator(NotesMediator mediator) {
    _mediator = mediator;
  }

  void backToNotesList() {
    _mediator?.openNotesList();
  }

  @override
  String toString() {
    return 'NoteDetails{ note: $_note}';
  }
}
