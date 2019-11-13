// GENERATED CODE - DO NOT MODIFY BY HAND

import '../src/mode.dart';
import '../src/common_modes.dart';

final objectivec = Mode(
    refs: {},
    aliases: ["mm", "objc", "obj-c"],
    keywords: {
      "keyword":
          "int float while char export sizeof typedef const struct for union unsigned long volatile static bool mutable if do return goto void enum else break extern asm case short default double register explicit signed typename this switch continue wchar_t inline readonly assign readwrite self @synchronized id typeof nonatomic super unichar IBOutlet IBAction strong weak copy in out inout bycopy byref oneway __strong __weak __block __autoreleasing @private @protected @public @try @property @end @throw @catch @finally @autoreleasepool @synthesize @dynamic @selector @optional @required @encode @package @import @defs @compatibility_alias __bridge __bridge_transfer __bridge_retained __bridge_retain __covariant __contravariant __kindof _Nonnull _Nullable _Null_unspecified __FUNCTION__ __PRETTY_FUNCTION__ __attribute__ getter setter retain unsafe_unretained nonnull nullable null_unspecified null_resettable class instancetype NS_DESIGNATED_INITIALIZER NS_UNAVAILABLE NS_REQUIRES_SUPER NS_RETURNS_INNER_POINTER NS_INLINE NS_AVAILABLE NS_DEPRECATED NS_ENUM NS_OPTIONS NS_SWIFT_UNAVAILABLE NS_ASSUME_NONNULL_BEGIN NS_ASSUME_NONNULL_END NS_REFINED_FOR_SWIFT NS_SWIFT_NAME NS_SWIFT_NOTHROW NS_DURING NS_HANDLER NS_ENDHANDLER NS_VALUERETURN NS_VOIDRETURN",
      "literal": "false true FALSE TRUE nil YES NO NULL",
      "built_in":
          "BOOL dispatch_once_t dispatch_queue_t dispatch_sync dispatch_async dispatch_once"
    },
    lexemes: "[a-zA-Z@][a-zA-Z0-9_]*",
    illegal: "</",
    contains: [
      Mode(
          className: "built_in",
          begin:
              "\\b(AV|CA|CF|CG|CI|CL|CM|CN|CT|MK|MP|MTK|MTL|NS|SCN|SK|UI|WK|XC)\\w+"),
      C_LINE_COMMENT_MODE,
      C_BLOCK_COMMENT_MODE,
      C_NUMBER_MODE,
      QUOTE_STRING_MODE,
      Mode(className: "string", variants: [
        Mode(
            begin: "@\"",
            end: "\"",
            illegal: "\\n",
            contains: [BACKSLASH_ESCAPE]),
        Mode(begin: "'", end: "[^\\\\]'", illegal: "[^\\\\][^']")
      ]),
      Mode(className: "meta", begin: "#", end: "\$", contains: [
        Mode(className: "meta-string", variants: [
          Mode(begin: "\"", end: "\""),
          Mode(begin: "<", end: ">")
        ])
      ]),
      Mode(
          className: "class",
          begin: "(@interface|@class|@protocol|@implementation)\\b",
          end: "({|\$)",
          excludeEnd: true,
          keywords: "@interface @class @protocol @implementation",
          lexemes: "[a-zA-Z@][a-zA-Z0-9_]*",
          contains: [UNDERSCORE_TITLE_MODE]),
      Mode(begin: "\\.[a-zA-Z_]\\w*", relevance: 0)
    ]);
