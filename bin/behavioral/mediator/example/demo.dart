import 'notes_mediator.dart';
import 'widgets/widget.dart';

void main() {
  final Button addNoteButton = Button('Add Note');
  final NotesList notesList = NotesList();

  final NotesMediator notesMediator = NotesMediatorImpl(notesList);
  addNoteButton.mediator = notesMediator;
  notesList.mediator = notesMediator;

  addNoteButton.onClick();
  addNoteButton.onClick();

  notesList.openNoteDetails(0);
}
