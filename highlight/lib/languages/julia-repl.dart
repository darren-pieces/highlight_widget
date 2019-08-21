import '../src/mode.dart';
import '../src/common_modes.dart';

var juliaRepl = Mode(refs: {}, contains: [
  Mode(
      className: "meta",
      begin: "^julia>",
      relevance: 10,
      starts: Mode(end: "^(?![ ]{6})", subLanguage: ["julia"]),
      aliases: ["jldoctest"])
]);
