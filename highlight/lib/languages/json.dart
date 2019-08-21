import '../src/mode.dart';
import '../src/common_modes.dart';

var json = Mode(refs: {
  '~contains~2~contains~1~contains~3': Mode(
      begin: "\\[",
      end: "\\]",
      contains: [
        Mode(end: ",", endsWithParent: true, excludeEnd: true, contains: [
          QUOTE_STRING_MODE,
          C_NUMBER_MODE,
          Mode(ref: '~contains~2'),
          Mode(ref: '~contains~2~contains~1~contains~3')
        ], keywords: {
          "literal": "true false null"
        })
      ],
      illegal: "\\S"),
  '~contains~2': Mode(
      begin: "{",
      end: "}",
      contains: [
        Mode(
            className: "attr",
            begin: "\"",
            end: "\"",
            contains: [BACKSLASH_ESCAPE],
            illegal: "\\n"),
        Mode(
            end: ",",
            endsWithParent: true,
            excludeEnd: true,
            contains: [
              QUOTE_STRING_MODE,
              C_NUMBER_MODE,
              Mode(ref: '~contains~2'),
              Mode(ref: '~contains~2~contains~1~contains~3')
            ],
            keywords: {"literal": "true false null"},
            begin: ":")
      ],
      illegal: "\\S"),
}, contains: [
  QUOTE_STRING_MODE,
  C_NUMBER_MODE,
  Mode(ref: '~contains~2'),
  Mode(ref: '~contains~2~contains~1~contains~3')
], keywords: {
  "literal": "true false null"
}, illegal: "\\S");
