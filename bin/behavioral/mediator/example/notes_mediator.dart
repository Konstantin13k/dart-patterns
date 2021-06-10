import 'note.dart';
import 'widgets/widget.dart';

abstract class NotesMediator {
  void addNote(Note note);

  void openDetails(Note note);

  void openNotesList();
}

class NotesMediatorImpl extends NotesMediator {
  final NotesList _notesList;

  NotesMediatorImpl(this._notesList);

  @override
  void addNote(Note note) {
    _notesList.addNote(note);
    _notesList.onDraw();
  }

  @override
  void openDetails(Note note) {
    final NoteDetails noteDetails = NoteDetails(note);
    noteDetails.onDraw();
  }

  @override
  void openNotesList() {
    _notesList.onDraw();
  }
}
