import 'package:syntax_highlight/syntax_highlight.dart';

class CodeHighlighter {
  static CodeHighlighter instance = CodeHighlighter._internal();
  factory CodeHighlighter() => instance;
  CodeHighlighter._internal();

  Highlighter? highlighter;

  initialize()async{
    await Highlighter.initialize(['dart']);
    // Load the default light theme and create a highlighter.
    var theme = await HighlighterTheme.loadLightTheme();
    highlighter = Highlighter(
      language: 'dart',
      theme: theme,
    );
  }
}


