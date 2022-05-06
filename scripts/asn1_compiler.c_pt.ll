; ModuleID = '/llk/IR/scripts/asn1_compiler.c_pt.bc'
source_filename = "../scripts/asn1_compiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.token = type { i16, i8, i8, ptr, ptr, ptr }
%struct.type = type { ptr, ptr, ptr, i32, i32 }
%struct.action = type { ptr, ptr, i8 }
%struct.element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i8, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"KBUILD_VERBOSE\00", align 1
@verbose_opt = internal unnamed_addr global i8 0, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@debug_opt = internal unnamed_addr global i1 false, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"Format: %s [-v] [-d] <grammar-file> <c-file> <hdr-file>\0A\00", align 1
@filename = internal unnamed_addr global ptr null, align 8
@outputname = internal unnamed_addr global ptr null, align 8
@headername = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: Short read\0A\00", align 1
@grammar_name = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@token_list = internal unnamed_addr global ptr null, align 8
@directives = internal unnamed_addr constant [82 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"::=\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"({\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"})\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"%s:%u: Unknown character in grammar: '%c'\0A\00", align 1
@nr_tokens = internal unnamed_addr global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"Extracted %u tokens\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ABSENT\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"APPLICATION\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"AUTOMATIC\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"BIT\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"BMPString\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"CHARACTER\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"CHOICE\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"COMPONENT\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"COMPONENTS\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"CONSTRAINED\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"CONTAINING\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"DEFINED\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"DEFINITIONS\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"EMBEDDED\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ENCODED\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"ENCODING-CONTROL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"ENUMERATED\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"EXCEPT\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"EXPLICIT\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"EXPORTS\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"EXTENSIBILITY\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"EXTERNAL\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"FROM\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"GeneralString\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"GeneralizedTime\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"GraphicString\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"IA5String\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"IMPLICIT\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"IMPLIED\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"IMPORTS\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"INCLUDES\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"INSTANCE\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"INSTRUCTIONS\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"INTERSECTION\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"ISO646String\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"MINUS-INFINITY\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"NumericString\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"OCTET\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"OPTIONAL\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"ObjectDescriptor\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"PATTERN\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"PDV\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"PLUS-INFINITY\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"PRESENT\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"PrintableString\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"RELATIVE-OID\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"SYNTAX\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"T61String\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"TAGS\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"TeletexString\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"UNION\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"UTCTime\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"UTF8String\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"UniversalString\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"VideotexString\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"VisibleString\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"WITH\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"%s: No defined types\0A\00", align 1
@nr_types = internal unnamed_addr global i32 0, align 4
@type_list = internal unnamed_addr global ptr null, align 8
@type_index = internal unnamed_addr global ptr null, align 8
@.str.99 = private unnamed_addr constant [20 x i8] c"Extracted %u types\0A\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"%s:%d: Parse error at token '%s'\0A\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"Extracted %u actions\0A\00", align 1
@nr_actions = internal unnamed_addr global i32 0, align 4
@.str.102 = private unnamed_addr constant [42 x i8] c"%s:%d: Unrecognised tag class token '%s'\0A\00", align 1
@.str.103 = private unnamed_addr constant [32 x i8] c"%s:%d: Missing tag number '%s'\0A\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"%s:%d: Missing closing square bracket '%s'\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"%s:%d: Type '%s' undefined\0A\00", align 1
@.str.106 = private unnamed_addr constant [45 x i8] c"%s:%d: Token '%s' does not introduce a type\0A\00", align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"%s:%d: Token '%s' is not an action function name\0A\00", align 1
@action_list = internal unnamed_addr global ptr null, align 8
@.str.108 = private unnamed_addr constant [39 x i8] c"%s:%d: Missing close action, got '%s'\0A\00", align 1
@.str.109 = private unnamed_addr constant [30 x i8] c"%s:%d: Unexpected token '%s'\0A\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"%s: Unexpectedly hit EOF\0A\00", align 1
@element_list = internal unnamed_addr global ptr null, align 8
@token_to_tag = internal unnamed_addr constant <{ [81 x i8], [12 x i8] }> <{ [81 x i8] c"\00\00\00\00\00\00\03\1E\01\00\1D\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\08\00\00\1B\18\19\16\00\00\00\00\00\00\00\02\00\00\00\00\00\05\12\06\04\00\00\07\00\00\00\00\00\13\09\0D\10\11\00\00\00\14\00\00\14\00\00\00\17\0C\17\15\1A", [12 x i8] zeroinitializer }>, align 16
@.str.112 = private unnamed_addr constant [55 x i8] c"%s:%d: Expected compound to start with brace not '%s'\0A\00", align 1
@.str.113 = private unnamed_addr constant [23 x i8] c"%s:%d: Empty compound\0A\00", align 1
@.str.114 = private unnamed_addr constant [44 x i8] c"%s:%d: Expected compound closure, got '%s'\0A\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@asn1_classes = internal constant [4 x [5 x i8]] [[5 x i8] c"UNIV\00", [5 x i8] c"APPL\00", [5 x i8] c"CONT\00", [5 x i8] c"PRIV\00"], align 16
@asn1_methods = internal constant [2 x [5 x i8]] [[5 x i8] c"PRIM\00", [5 x i8] c"CONS\00"], align 1
@asn1_universal_tags = internal unnamed_addr constant [32 x ptr] [ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.65, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.78, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr null, ptr null, ptr @.str.134, ptr @.str.81, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr null], align 16
@.str.118 = private unnamed_addr constant [9 x i8] c"%s %s %u\00", align 1
@.str.119 = private unnamed_addr constant [50 x i8] c"%c%c%c%c%c %c %*s[*] \1B[33m%s\1B[m %s %s \1B[35m%s\1B[m\0A\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"-tTqQcaro\00", align 1
@.str.121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"EOC\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"BOOL\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"BTS\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"OTS\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"OID\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"ODE\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"EXT\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"ENUM\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"EPDV\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"UTF8STR\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"RELOID\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"SEQ\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"NUMSTR\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"PRNSTR\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"TEXSTR\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"VIDSTR\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"IA5STR\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"UNITIM\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"GENTIM\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"GRASTR\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"VISSTR\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"GENSTR\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"UNISTR\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"CHRSTR\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"BMPSTR\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@.str.149 = private unnamed_addr constant [59 x i8] c" * Automatically generated by asn1_compiler.  Do not edit\0A\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c" *\0A\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c" * ASN.1 parser for %s\0A\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.153 = private unnamed_addr constant [33 x i8] c"#include <linux/asn1_decoder.h>\0A\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.155 = private unnamed_addr constant [46 x i8] c"extern const struct asn1_decoder %s_decoder;\0A\00", align 1
@.str.156 = private unnamed_addr constant [38 x i8] c"#include <linux/asn1_ber_bytecode.h>\0A\00", align 1
@.str.157 = private unnamed_addr constant [22 x i8] c"#include \22%s.asn1.h\22\0A\00", align 1
@.str.158 = private unnamed_addr constant [69 x i8] c"extern int %s(void *, size_t, unsigned char, const void *, size_t);\0A\00", align 1
@.str.159 = private unnamed_addr constant [19 x i8] c"enum %s_actions {\0A\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"\09ACT_%s = %u,\0A\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"\09NR__%s_actions = %u\0A\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.163 = private unnamed_addr constant [64 x i8] c"static const asn1_action_t %s_action_table[NR__%s_actions] = {\0A\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"\09[%4u] = %s,\0A\00", align 1
@nr_entries = internal unnamed_addr global i32 0, align 4
@.str.166 = private unnamed_addr constant [19 x i8] c"ASN1_OP_COMPLETE,\0A\00", align 1
@.str.168 = private unnamed_addr constant [45 x i8] c"static const unsigned char %s_machine[] = {\0A\00", align 1
@.str.169 = private unnamed_addr constant [42 x i8] c"const struct asn1_decoder %s_decoder = {\0A\00", align 1
@.str.170 = private unnamed_addr constant [25 x i8] c"\09.machine = %s_machine,\0A\00", align 1
@.str.171 = private unnamed_addr constant [33 x i8] c"\09.machlen = sizeof(%s_machine),\0A\00", align 1
@.str.172 = private unnamed_addr constant [30 x i8] c"\09.actions = %s_action_table,\0A\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"\09// %s\0A\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"COND_\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"_ACT\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"ASN1_OP_%sMATCH_ANY%s%s,\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"_OR_SKIP\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"\09\09// %s\00", align 1
@.str.179 = private unnamed_addr constant [21 x i8] c"ASN1_OP_%sMATCH%s%s,\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"_JUMP\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"_tag(%s, %s, %s),\0A\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"_tagn(%s, %s, %2u),\0A\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"ASN1_OP_%sACT,\0A\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"MAYBE_\00", align 1
@.str.185 = private unnamed_addr constant [18 x i8] c"_jump_target(%u),\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"\09\09// --> %s\00", align 1
@render_list_p = internal unnamed_addr global ptr @render_list, align 8
@render_depth = internal unnamed_addr global i32 1, align 4
@.str.187 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SEQ%s,\0A\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SEQ_OF%s,\0A\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"ASN1_OP_END_SET_OF%s,\0A\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"_jump_target(%u),\0A\00", align 1
@.str.191 = private unnamed_addr constant [48 x i8] c"The ASN.1 SET type is not currently supported.\0A\00", align 1
@.str.192 = private unnamed_addr constant [20 x i8] c"ASN1_OP_COND_FAIL,\0A\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"ASN1_OP_ACT,\0A\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"_action(ACT_%s),\0A\00", align 1
@render_list = internal global ptr null, align 8
@.str.195 = private unnamed_addr constant [12 x i8] c"\09[%4d] =%*s\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"ASN1_OP_END_SET%s,\0A\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"ASN1_OP_RETURN,\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"Pass 2\00", align 1
@str.198 = private unnamed_addr constant [7 x i8] c"Pass 1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strtol(ptr nocapture noundef nonnull %5, ptr noundef null, i32 noundef 10) #22
  %9 = trunc i64 %8 to i32
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr @verbose_opt, align 1, !tbaa !5
  br label %12

12:                                               ; preds = %7, %2
  %13 = icmp sgt i32 %0, 4
  br i1 %13, label %14, label %34

14:                                               ; preds = %12
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  %17 = zext i32 %0 to i64
  br label %18

18:                                               ; preds = %28, %14
  %19 = phi i64 [ %17, %14 ], [ %32, %28 ]
  %20 = load ptr, ptr %15, align 8, !tbaa !9
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.1) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i8 1, ptr @verbose_opt, align 1, !tbaa !5
  br label %28

24:                                               ; preds = %18
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.2) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  store i1 true, ptr @debug_opt, align 1
  br label %28

28:                                               ; preds = %27, %23
  %29 = shl i64 %19, 3
  %30 = add i64 %29, 34359738352
  %31 = and i64 %30, 34359738360
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %15, ptr nonnull align 8 %16, i64 %31, i1 false)
  %32 = add nsw i64 %19, -1
  %33 = icmp sgt i64 %19, 5
  br i1 %33, label %18, label %40

34:                                               ; preds = %12
  %35 = icmp eq i32 %0, 4
  br i1 %35, label %40, label %36

36:                                               ; preds = %34, %24
  %37 = load ptr, ptr @stderr, align 8, !tbaa !9
  %38 = load ptr, ptr %1, align 8, !tbaa !9
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef %38) #24
  tail call void @exit(i32 noundef 2) #25
  unreachable

40:                                               ; preds = %34, %28
  %41 = getelementptr inbounds ptr, ptr %1, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  store ptr %42, ptr @filename, align 8, !tbaa !9
  %43 = getelementptr inbounds ptr, ptr %1, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !9
  store ptr %44, ptr @outputname, align 8, !tbaa !9
  %45 = getelementptr inbounds ptr, ptr %1, i64 3
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  store ptr %46, ptr @headername, align 8, !tbaa !9
  %47 = tail call i32 (ptr, i32, ...) @open(ptr noundef %42, i32 noundef 0) #22
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load ptr, ptr @filename, align 8, !tbaa !9
  tail call void @perror(ptr noundef %50) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

51:                                               ; preds = %40
  %52 = call i32 @__fxstat(i32 noundef 1, i32 noundef %47, ptr noundef nonnull %4) #22
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load ptr, ptr @filename, align 8, !tbaa !9
  call void @perror(ptr noundef %55) #24
  call void @exit(i32 noundef 1) #25
  unreachable

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 8
  %58 = load i64, ptr %57, align 8, !tbaa !11
  %59 = add nsw i64 %58, 1
  %60 = call noalias ptr @malloc(i64 noundef %59) #26
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  call void @perror(ptr noundef null) #24
  call void @exit(i32 noundef 1) #25
  unreachable

63:                                               ; preds = %56
  %64 = call i64 @read(i32 noundef %47, ptr noundef nonnull %60, i64 noundef %58) #22
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load ptr, ptr @filename, align 8, !tbaa !9
  call void @perror(ptr noundef %67) #24
  call void @exit(i32 noundef 1) #25
  unreachable

68:                                               ; preds = %63
  %69 = call i32 @close(i32 noundef %47) #22
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr @filename, align 8, !tbaa !9
  call void @perror(ptr noundef %72) #24
  call void @exit(i32 noundef 1) #25
  unreachable

73:                                               ; preds = %68
  %74 = load i64, ptr %57, align 8, !tbaa !11
  %75 = icmp eq i64 %64, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr @stderr, align 8, !tbaa !9
  %78 = load ptr, ptr @filename, align 8, !tbaa !9
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.4, ptr noundef %78) #24
  call void @exit(i32 noundef 1) #25
  unreachable

80:                                               ; preds = %73
  %81 = load ptr, ptr %41, align 8, !tbaa !9
  %82 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %81, i32 noundef 47) #23
  %83 = icmp eq ptr %82, null
  %84 = getelementptr inbounds i8, ptr %82, i64 1
  %85 = select i1 %83, ptr %81, ptr %84
  %86 = call noalias ptr @strdup(ptr noundef %85) #22
  store ptr %86, ptr @grammar_name, align 8, !tbaa !9
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  call void @perror(ptr noundef null) #24
  call void @exit(i32 noundef 1) #25
  unreachable

89:                                               ; preds = %80
  %90 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %86, i32 noundef 46) #23
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i8 0, ptr %90, align 1, !tbaa !16
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds i8, ptr %60, i64 %64
  store i8 0, ptr %94, align 1, !tbaa !16
  %95 = ptrtoint ptr %94 to i64
  %96 = lshr i64 %64, 1
  %97 = call noalias ptr @calloc(i64 noundef %96, i64 noundef 32) #27
  store ptr %97, ptr @token_list, align 8, !tbaa !9
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = icmp eq i64 %64, 0
  br i1 %100, label %359, label %102

101:                                              ; preds = %93
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

102:                                              ; preds = %356, %99
  %103 = phi ptr [ %117, %356 ], [ %60, %99 ]
  %104 = phi i32 [ %106, %356 ], [ 0, %99 ]
  %105 = phi i32 [ %357, %356 ], [ 0, %99 ]
  %106 = add i32 %104, 1
  %107 = ptrtoint ptr %103 to i64
  %108 = sub i64 %95, %107
  %109 = call ptr @memchr(ptr noundef %103, i32 noundef 10, i64 noundef %108) #23
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 0, ptr %109, align 1, !tbaa !16
  %113 = ptrtoint ptr %109 to i64
  br label %114

114:                                              ; preds = %111, %102
  %115 = phi i64 [ %95, %102 ], [ %113, %111 ]
  %116 = phi ptr [ %94, %102 ], [ %109, %111 ]
  %117 = phi ptr [ %94, %102 ], [ %112, %111 ]
  br label %118

118:                                              ; preds = %128, %114
  %119 = phi ptr [ %103, %114 ], [ %129, %128 ]
  %120 = ptrtoint ptr %119 to i64
  %121 = sub i64 %115, %120
  %122 = call ptr @memchr(ptr noundef %119, i32 noundef 45, i64 noundef %121) #23
  %123 = icmp eq ptr %122, null
  br i1 %123, label %148, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds i8, ptr %122, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !16
  %127 = icmp eq i8 %126, 45
  br i1 %127, label %130, label %128

128:                                              ; preds = %142, %124
  %129 = phi ptr [ %125, %124 ], [ %122, %142 ]
  br label %118

130:                                              ; preds = %124
  %131 = getelementptr inbounds i8, ptr %122, i64 2
  br label %132

132:                                              ; preds = %138, %130
  %133 = phi ptr [ %131, %130 ], [ %139, %138 ]
  %134 = ptrtoint ptr %133 to i64
  %135 = sub i64 %115, %134
  %136 = call ptr @memchr(ptr noundef nonnull %133, i32 noundef 45, i64 noundef %135) #23
  %137 = icmp eq ptr %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds i8, ptr %136, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !16
  %141 = icmp eq i8 %140, 45
  br i1 %141, label %142, label %132

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %136, i64 2
  %144 = ptrtoint ptr %143 to i64
  %145 = sub i64 %115, %144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %122, ptr nonnull align 1 %143, i64 %145, i1 false) #22
  br label %128

146:                                              ; preds = %132
  store i8 0, ptr %122, align 1, !tbaa !16
  %147 = ptrtoint ptr %122 to i64
  br label %148

148:                                              ; preds = %146, %118
  %149 = phi i64 [ %147, %146 ], [ %115, %118 ]
  %150 = phi ptr [ %122, %146 ], [ %116, %118 ]
  %151 = icmp ult ptr %103, %150
  br i1 %151, label %152, label %356

152:                                              ; preds = %148
  %153 = trunc i32 %106 to i16
  br label %154

154:                                              ; preds = %263, %152
  %155 = phi i32 [ %105, %152 ], [ %265, %263 ]
  %156 = phi ptr [ %103, %152 ], [ %264, %263 ]
  %157 = icmp ult ptr %156, %150
  br i1 %157, label %158, label %356

158:                                              ; preds = %154
  %159 = ptrtoint ptr %156 to i64
  %160 = tail call ptr @__ctype_b_loc() #29
  %161 = getelementptr i8, ptr %156, i64 %149
  %162 = sub i64 0, %159
  %163 = getelementptr i8, ptr %161, i64 %162
  br label %164

164:                                              ; preds = %173, %158
  %165 = phi ptr [ %156, %158 ], [ %174, %173 ]
  %166 = load ptr, ptr %160, align 8, !tbaa !9
  %167 = load i8, ptr %165, align 1, !tbaa !16
  %168 = sext i8 %167 to i64
  %169 = getelementptr inbounds i16, ptr %166, i64 %168
  %170 = load i16, ptr %169, align 2, !tbaa !17
  %171 = and i16 %170, 8192
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 0, ptr %165, align 1, !tbaa !16
  %175 = icmp eq ptr %174, %163
  br i1 %175, label %356, label %164

176:                                              ; preds = %164
  %177 = ptrtoint ptr %165 to i64
  %178 = zext i32 %155 to i64
  %179 = getelementptr inbounds %struct.token, ptr %97, i64 %178
  store i16 %153, ptr %179, align 8, !tbaa !19
  %180 = load i8, ptr %165, align 1, !tbaa !16
  %181 = sext i8 %180 to i64
  %182 = getelementptr inbounds i16, ptr %166, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !17
  %184 = zext i16 %183 to i32
  %185 = and i32 %184, 1024
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %267, label %187

187:                                              ; preds = %176
  %188 = getelementptr inbounds i8, ptr %165, i64 1
  %189 = icmp ult ptr %188, %150
  br i1 %189, label %190, label %207

190:                                              ; preds = %187
  %191 = getelementptr i8, ptr %165, i64 %149
  %192 = sub i64 0, %177
  %193 = getelementptr i8, ptr %191, i64 %192
  br label %194

194:                                              ; preds = %203, %190
  %195 = phi ptr [ %204, %203 ], [ %188, %190 ]
  %196 = load i8, ptr %195, align 1, !tbaa !16
  %197 = sext i8 %196 to i64
  %198 = getelementptr inbounds i16, ptr %166, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !17
  %200 = freeze i16 %199
  %201 = and i16 %200, 8
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %206, %206, %194
  %204 = getelementptr inbounds i8, ptr %195, i64 1
  %205 = icmp eq ptr %204, %193
  br i1 %205, label %207, label %194

206:                                              ; preds = %194
  switch i8 %196, label %207 [
    i8 95, label %203
    i8 45, label %203
  ]

207:                                              ; preds = %206, %203, %187
  %208 = phi ptr [ %188, %187 ], [ %193, %203 ], [ %195, %206 ]
  %209 = ptrtoint ptr %208 to i64
  %210 = sub i64 %209, %177
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 2
  store i8 %211, ptr %212, align 1, !tbaa !21
  %213 = and i64 %210, 255
  %214 = add nuw nsw i64 %213, 1
  %215 = call noalias ptr @malloc(i64 noundef %214) #26
  %216 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr %215, ptr %216, align 8, !tbaa !22
  %217 = icmp eq ptr %215, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %207
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

219:                                              ; preds = %207
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %215, ptr nonnull align 1 %165, i64 %213, i1 false) #22
  %220 = getelementptr inbounds i8, ptr %215, i64 %213
  store i8 0, ptr %220, align 1, !tbaa !16
  %221 = load ptr, ptr %160, align 8, !tbaa !9
  %222 = load i8, ptr %215, align 1, !tbaa !16
  %223 = sext i8 %222 to i64
  %224 = getelementptr inbounds i16, ptr %221, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !17
  %226 = and i16 %225, 512
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %219
  %229 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 92, ptr %229, align 2
  br label %263

230:                                              ; preds = %254, %219
  %231 = phi i64 [ %256, %254 ], [ 0, %219 ]
  %232 = phi i64 [ %255, %254 ], [ 82, %219 ]
  %233 = add i64 %232, %231
  %234 = lshr i64 %233, 1
  %235 = shl i64 %234, 3
  %236 = getelementptr inbounds i8, ptr @directives, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !9
  %238 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %237) #23
  %239 = call i64 @llvm.umin.i64(i64 %238, i64 %213) #22
  %240 = call i32 @memcmp(ptr noundef nonnull %215, ptr noundef %237, i64 noundef %239) #23
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %230
  %243 = icmp eq i64 %238, %213
  br i1 %243, label %258, label %244

244:                                              ; preds = %242
  %245 = sub i64 %238, %213
  %246 = trunc i64 %245 to i32
  br label %247

247:                                              ; preds = %244, %230
  %248 = phi i32 [ %246, %244 ], [ %240, %230 ]
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %247
  %251 = icmp eq i32 %248, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %250
  %253 = add nuw i64 %234, 1
  br label %254

254:                                              ; preds = %252, %247
  %255 = phi i64 [ %232, %252 ], [ %234, %247 ]
  %256 = phi i64 [ %253, %252 ], [ %231, %247 ]
  %257 = icmp ult i64 %256, %255
  br i1 %257, label %230, label %261

258:                                              ; preds = %250, %242
  %259 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  %260 = trunc i64 %234 to i8
  store i8 %260, ptr %259, align 2
  br label %263

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 91, ptr %262, align 2
  br label %263

263:                                              ; preds = %346, %342, %338, %334, %330, %319, %311, %301, %292, %261, %258, %228
  %264 = phi ptr [ %272, %292 ], [ %302, %301 ], [ %312, %311 ], [ %320, %319 ], [ %347, %346 ], [ %343, %342 ], [ %339, %338 ], [ %335, %334 ], [ %331, %330 ], [ %208, %261 ], [ %208, %258 ], [ %208, %228 ]
  %265 = add i32 %155, 1
  %266 = icmp ult ptr %264, %150
  br i1 %266, label %154, label %356

267:                                              ; preds = %176
  %268 = and i32 %184, 2048
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %295, label %270

270:                                              ; preds = %274, %267
  %271 = phi ptr [ %272, %274 ], [ %165, %267 ]
  %272 = getelementptr inbounds i8, ptr %271, i64 1
  %273 = icmp ult ptr %272, %150
  br i1 %273, label %274, label %281

274:                                              ; preds = %270
  %275 = load i8, ptr %272, align 1, !tbaa !16
  %276 = sext i8 %275 to i64
  %277 = getelementptr inbounds i16, ptr %166, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !17
  %279 = and i16 %278, 2048
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %281, label %270

281:                                              ; preds = %274, %270
  %282 = ptrtoint ptr %272 to i64
  %283 = sub i64 %282, %177
  %284 = trunc i64 %283 to i8
  %285 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 2
  store i8 %284, ptr %285, align 1, !tbaa !21
  %286 = and i64 %283, 255
  %287 = add nuw nsw i64 %286, 1
  %288 = call noalias ptr @malloc(i64 noundef %287) #26
  %289 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr %288, ptr %289, align 8, !tbaa !22
  %290 = icmp eq ptr %288, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %281
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

292:                                              ; preds = %281
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %288, ptr nonnull align 1 %165, i64 %286, i1 false) #22
  %293 = getelementptr inbounds i8, ptr %288, i64 %286
  store i8 0, ptr %293, align 1, !tbaa !16
  %294 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 90, ptr %294, align 2
  br label %263

295:                                              ; preds = %267
  %296 = sub i64 %149, %177
  %297 = icmp sgt i64 %296, 2
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %165, ptr noundef nonnull dereferenceable(3) @.str.6, i64 3) #22
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = getelementptr inbounds i8, ptr %165, i64 3
  %303 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 2
  store i8 3, ptr %303, align 1, !tbaa !21
  %304 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.6, ptr %304, align 8, !tbaa !22
  %305 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 82, ptr %305, align 2
  br label %263

306:                                              ; preds = %295
  %307 = icmp eq i64 %296, 2
  br i1 %307, label %308, label %324

308:                                              ; preds = %306, %298
  %309 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %165, ptr noundef nonnull dereferenceable(2) @.str.7, i64 2) #22
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = getelementptr inbounds i8, ptr %165, i64 2
  %313 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 2
  store i8 2, ptr %313, align 1, !tbaa !21
  %314 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.7, ptr %314, align 8, !tbaa !22
  %315 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 87, ptr %315, align 2
  br label %263

316:                                              ; preds = %308
  %317 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %165, ptr noundef nonnull dereferenceable(2) @.str.8, i64 2) #22
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %316
  %320 = getelementptr inbounds i8, ptr %165, i64 2
  %321 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 2
  store i8 2, ptr %321, align 1, !tbaa !21
  %322 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.8, ptr %322, align 8, !tbaa !22
  %323 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 88, ptr %323, align 2
  br label %263

324:                                              ; preds = %306
  %325 = icmp sgt i64 %296, 0
  br i1 %325, label %326, label %350

326:                                              ; preds = %324, %316
  %327 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 2
  store i8 1, ptr %327, align 1, !tbaa !21
  %328 = load i8, ptr %165, align 1, !tbaa !16
  %329 = sext i8 %328 to i32
  switch i32 %329, label %350 [
    i32 123, label %330
    i32 125, label %334
    i32 91, label %338
    i32 93, label %342
    i32 44, label %346
  ]

330:                                              ; preds = %326
  %331 = getelementptr inbounds i8, ptr %165, i64 1
  %332 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.9, ptr %332, align 8, !tbaa !22
  %333 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 83, ptr %333, align 2
  br label %263

334:                                              ; preds = %326
  %335 = getelementptr inbounds i8, ptr %165, i64 1
  %336 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.10, ptr %336, align 8, !tbaa !22
  %337 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 84, ptr %337, align 2
  br label %263

338:                                              ; preds = %326
  %339 = getelementptr inbounds i8, ptr %165, i64 1
  %340 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.11, ptr %340, align 8, !tbaa !22
  %341 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 85, ptr %341, align 2
  br label %263

342:                                              ; preds = %326
  %343 = getelementptr inbounds i8, ptr %165, i64 1
  %344 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.12, ptr %344, align 8, !tbaa !22
  %345 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 86, ptr %345, align 2
  br label %263

346:                                              ; preds = %326
  %347 = getelementptr inbounds i8, ptr %165, i64 1
  %348 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 4
  store ptr @.str.13, ptr %348, align 8, !tbaa !22
  %349 = getelementptr inbounds %struct.token, ptr %97, i64 %178, i32 1
  store i8 89, ptr %349, align 2
  br label %263

350:                                              ; preds = %326, %324
  %351 = phi i8 [ %180, %324 ], [ %328, %326 ]
  %352 = sext i8 %351 to i32
  %353 = load ptr, ptr @stderr, align 8, !tbaa !9
  %354 = load ptr, ptr @filename, align 8, !tbaa !9
  %355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %353, ptr noundef nonnull @.str.14, ptr noundef %354, i32 noundef %106, i32 noundef %352) #28
  call void @exit(i32 noundef 1) #25
  unreachable

356:                                              ; preds = %263, %173, %154, %148
  %357 = phi i32 [ %105, %148 ], [ %155, %173 ], [ %265, %263 ], [ %155, %154 ]
  %358 = icmp ult ptr %117, %94
  br i1 %358, label %102, label %359

359:                                              ; preds = %356, %99
  %360 = phi i32 [ 0, %99 ], [ %357, %356 ]
  store i32 %360, ptr @nr_tokens, align 4, !tbaa !23
  %361 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %359
  %364 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef %360) #22
  %365 = load i32, ptr @nr_tokens, align 4, !tbaa !23
  br label %366

366:                                              ; preds = %363, %359
  %367 = phi i32 [ %360, %359 ], [ %365, %363 ]
  %368 = add i32 %367, -1
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %426, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr @token_list, align 8, !tbaa !9
  %372 = zext i32 %368 to i64
  %373 = and i64 %372, 1
  %374 = icmp eq i32 %368, 1
  br i1 %374, label %407, label %375

375:                                              ; preds = %370
  %376 = and i64 %372, 4294967294
  br label %377

377:                                              ; preds = %403, %375
  %378 = phi i64 [ 0, %375 ], [ %396, %403 ]
  %379 = phi i32 [ 0, %375 ], [ %404, %403 ]
  %380 = phi i64 [ 0, %375 ], [ %405, %403 ]
  %381 = getelementptr inbounds %struct.token, ptr %371, i64 %378, i32 1
  %382 = load i8, ptr %381, align 2
  %383 = icmp eq i8 %382, 91
  %384 = or i64 %378, 1
  br i1 %383, label %385, label %391

385:                                              ; preds = %377
  %386 = getelementptr inbounds %struct.token, ptr %371, i64 %384, i32 1
  %387 = load i8, ptr %386, align 2
  %388 = icmp eq i8 %387, 82
  %389 = zext i1 %388 to i32
  %390 = add i32 %379, %389
  br label %391

391:                                              ; preds = %385, %377
  %392 = phi i32 [ %390, %385 ], [ %379, %377 ]
  %393 = getelementptr inbounds %struct.token, ptr %371, i64 %384, i32 1
  %394 = load i8, ptr %393, align 2
  %395 = icmp eq i8 %394, 91
  %396 = add nuw nsw i64 %378, 2
  br i1 %395, label %397, label %403

397:                                              ; preds = %391
  %398 = getelementptr inbounds %struct.token, ptr %371, i64 %396, i32 1
  %399 = load i8, ptr %398, align 2
  %400 = icmp eq i8 %399, 82
  %401 = zext i1 %400 to i32
  %402 = add i32 %392, %401
  br label %403

403:                                              ; preds = %397, %391
  %404 = phi i32 [ %402, %397 ], [ %392, %391 ]
  %405 = add i64 %380, 2
  %406 = icmp eq i64 %405, %376
  br i1 %406, label %407, label %377

407:                                              ; preds = %403, %370
  %408 = phi i32 [ undef, %370 ], [ %404, %403 ]
  %409 = phi i64 [ 0, %370 ], [ %396, %403 ]
  %410 = phi i32 [ 0, %370 ], [ %404, %403 ]
  %411 = icmp eq i64 %373, 0
  br i1 %411, label %423, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.token, ptr %371, i64 %409, i32 1
  %414 = load i8, ptr %413, align 2
  %415 = icmp eq i8 %414, 91
  br i1 %415, label %416, label %423

416:                                              ; preds = %412
  %417 = add nuw nsw i64 %409, 1
  %418 = getelementptr inbounds %struct.token, ptr %371, i64 %417, i32 1
  %419 = load i8, ptr %418, align 2
  %420 = icmp eq i8 %419, 82
  %421 = zext i1 %420 to i32
  %422 = add i32 %410, %421
  br label %423

423:                                              ; preds = %416, %412, %407
  %424 = phi i32 [ %408, %407 ], [ %422, %416 ], [ %410, %412 ]
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %430

426:                                              ; preds = %423, %366
  %427 = load ptr, ptr @stderr, align 8, !tbaa !9
  %428 = load ptr, ptr @filename, align 8, !tbaa !9
  %429 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %427, ptr noundef nonnull @.str.98, ptr noundef %428) #28
  call void @exit(i32 noundef 1) #25
  unreachable

430:                                              ; preds = %423
  store i32 %424, ptr @nr_types, align 4, !tbaa !23
  %431 = add i32 %424, 1
  %432 = zext i32 %431 to i64
  %433 = call noalias ptr @calloc(i64 noundef %432, i64 noundef 32) #27
  store ptr %433, ptr @type_list, align 8, !tbaa !9
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %436

435:                                              ; preds = %430
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

436:                                              ; preds = %430
  %437 = zext i32 %424 to i64
  %438 = call noalias ptr @calloc(i64 noundef %437, i64 noundef 8) #27
  store ptr %438, ptr @type_index, align 8, !tbaa !9
  %439 = icmp eq ptr %438, null
  br i1 %439, label %440, label %441

440:                                              ; preds = %436
  call void @perror(ptr noundef null) #28
  call void @exit(i32 noundef 1) #25
  unreachable

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.type, ptr %433, i64 0, i32 4
  store i32 2, ptr %442, align 4, !tbaa !25
  br label %443

443:                                              ; preds = %460, %441
  %444 = phi i64 [ 0, %441 ], [ %450, %460 ]
  %445 = phi i32 [ 0, %441 ], [ %461, %460 ]
  %446 = getelementptr inbounds %struct.token, ptr %371, i64 %444
  %447 = getelementptr inbounds %struct.token, ptr %371, i64 %444, i32 1
  %448 = load i8, ptr %447, align 2
  %449 = icmp eq i8 %448, 91
  %450 = add nuw nsw i64 %444, 1
  br i1 %449, label %451, label %460

451:                                              ; preds = %443
  %452 = getelementptr inbounds %struct.token, ptr %371, i64 %450, i32 1
  %453 = load i8, ptr %452, align 2
  %454 = icmp eq i8 %453, 82
  br i1 %454, label %455, label %460

455:                                              ; preds = %451
  %456 = zext i32 %445 to i64
  %457 = getelementptr inbounds %struct.type, ptr %433, i64 %456
  store ptr %446, ptr %457, align 8, !tbaa !27
  %458 = getelementptr inbounds ptr, ptr %438, i64 %456
  store ptr %457, ptr %458, align 8, !tbaa !9
  %459 = add i32 %445, 1
  br label %460

460:                                              ; preds = %455, %451, %443
  %461 = phi i32 [ %445, %451 ], [ %459, %455 ], [ %445, %443 ]
  %462 = icmp eq i64 %450, %372
  br i1 %462, label %463, label %443

463:                                              ; preds = %460
  %464 = zext i32 %461 to i64
  %465 = getelementptr inbounds %struct.type, ptr %433, i64 %464, i32 4
  %466 = load i32, ptr %465, align 4, !tbaa !25
  %467 = zext i32 %367 to i64
  %468 = or i32 %466, 1
  %469 = getelementptr inbounds %struct.token, ptr %371, i64 %467
  %470 = getelementptr inbounds %struct.type, ptr %433, i64 %464
  store ptr %469, ptr %470, align 8, !tbaa !27
  store i32 %468, ptr %465, align 4, !tbaa !25
  call void @qsort(ptr noundef nonnull %438, i64 noundef %437, i64 noundef 8, ptr noundef nonnull @type_index_compare) #22
  %471 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %463
  %474 = load i32, ptr @nr_types, align 4, !tbaa !23
  %475 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.99, i32 noundef %474) #22
  br label %476

476:                                              ; preds = %473, %463
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %477 = load ptr, ptr @type_list, align 8, !tbaa !9
  %478 = load ptr, ptr %477, align 8, !tbaa !27
  br label %479

479:                                              ; preds = %507, %476
  %480 = phi ptr [ %478, %476 ], [ %496, %507 ]
  %481 = phi ptr [ %477, %476 ], [ %492, %507 ]
  %482 = getelementptr inbounds %struct.token, ptr %480, i64 0, i32 1
  %483 = load i8, ptr %482, align 2
  %484 = icmp eq i8 %483, 91
  br i1 %484, label %485, label %489

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.token, ptr %480, i64 1, i32 1
  %487 = load i8, ptr %486, align 2
  %488 = icmp eq i8 %487, 82
  br i1 %488, label %490, label %489

489:                                              ; preds = %485, %479
  call void @abort() #25
  unreachable

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.token, ptr %480, i64 2
  store ptr %491, ptr %3, align 8, !tbaa !9
  %492 = getelementptr inbounds %struct.type, ptr %481, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !27
  %494 = call fastcc ptr @parse_type(ptr noundef nonnull %3, ptr noundef %493, ptr noundef null) #22
  %495 = getelementptr inbounds %struct.type, ptr %481, i64 0, i32 2
  store ptr %494, ptr %495, align 8, !tbaa !28
  store ptr %481, ptr %494, align 8, !tbaa !29
  %496 = load ptr, ptr %3, align 8, !tbaa !9
  %497 = load ptr, ptr %492, align 8, !tbaa !27
  %498 = icmp eq ptr %496, %497
  br i1 %498, label %507, label %499

499:                                              ; preds = %490
  %500 = load ptr, ptr @stderr, align 8, !tbaa !9
  %501 = load ptr, ptr @filename, align 8, !tbaa !9
  %502 = load i16, ptr %496, align 8, !tbaa !19
  %503 = zext i16 %502 to i32
  %504 = getelementptr inbounds %struct.token, ptr %496, i64 0, i32 4
  %505 = load ptr, ptr %504, align 8, !tbaa !22
  %506 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %500, ptr noundef nonnull @.str.100, ptr noundef %501, i32 noundef %503, ptr noundef %505) #28
  call void @exit(i32 noundef 1) #25
  unreachable

507:                                              ; preds = %490
  %508 = getelementptr inbounds %struct.type, ptr %481, i64 1, i32 4
  %509 = load i32, ptr %508, align 4, !tbaa !25
  %510 = and i32 %509, 1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %479, label %512

512:                                              ; preds = %507
  %513 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %518, label %515

515:                                              ; preds = %512
  %516 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %517 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.101, i32 noundef %516) #22
  br label %518

518:                                              ; preds = %515, %512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %519 = load i1, ptr @debug_opt, align 1
  br i1 %519, label %520, label %524

520:                                              ; preds = %518
  %521 = load ptr, ptr @type_list, align 8, !tbaa !9
  %522 = getelementptr inbounds %struct.type, ptr %521, i64 0, i32 2
  %523 = load ptr, ptr %522, align 8, !tbaa !28
  call fastcc void @dump_element(ptr noundef %523, i32 noundef 0) #22
  br label %524

524:                                              ; preds = %520, %518
  %525 = load ptr, ptr @outputname, align 8, !tbaa !9
  %526 = call ptr @fopen(ptr noundef %525, ptr noundef nonnull @.str.5)
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %529) #24
  call void @exit(i32 noundef 1) #25
  unreachable

530:                                              ; preds = %524
  %531 = load ptr, ptr @headername, align 8, !tbaa !9
  %532 = call ptr @fopen(ptr noundef %531, ptr noundef nonnull @.str.5)
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %536

534:                                              ; preds = %530
  %535 = load ptr, ptr @headername, align 8, !tbaa !9
  call void @perror(ptr noundef %535) #24
  call void @exit(i32 noundef 1) #25
  unreachable

536:                                              ; preds = %530
  %537 = call i64 @fwrite(ptr nonnull @.str.148, i64 3, i64 1, ptr nonnull %532) #22
  %538 = call i64 @fwrite(ptr nonnull @.str.149, i64 58, i64 1, ptr nonnull %532) #22
  %539 = call i64 @fwrite(ptr nonnull @.str.150, i64 3, i64 1, ptr nonnull %532) #22
  %540 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %541 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %532, ptr noundef nonnull @.str.151, ptr noundef %540) #22
  %542 = call i64 @fwrite(ptr nonnull @.str.152, i64 4, i64 1, ptr nonnull %532) #22
  %543 = call i64 @fwrite(ptr nonnull @.str.153, i64 32, i64 1, ptr nonnull %532) #22
  %544 = call i32 @fputc(i32 10, ptr nonnull %532) #22
  %545 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %546 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %532, ptr noundef nonnull @.str.155, ptr noundef %545) #22
  %547 = call i32 @ferror(ptr noundef nonnull %532) #22
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %551, label %549

549:                                              ; preds = %536
  %550 = load ptr, ptr @headername, align 8, !tbaa !9
  call void @perror(ptr noundef %550) #28
  call void @exit(i32 noundef 1) #25
  unreachable

551:                                              ; preds = %536
  %552 = call i64 @fwrite(ptr nonnull @.str.148, i64 3, i64 1, ptr nonnull %526) #22
  %553 = call i64 @fwrite(ptr nonnull @.str.149, i64 58, i64 1, ptr nonnull %526) #22
  %554 = call i64 @fwrite(ptr nonnull @.str.150, i64 3, i64 1, ptr nonnull %526) #22
  %555 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %556 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %526, ptr noundef nonnull @.str.151, ptr noundef %555) #22
  %557 = call i64 @fwrite(ptr nonnull @.str.152, i64 4, i64 1, ptr nonnull %526) #22
  %558 = call i64 @fwrite(ptr nonnull @.str.156, i64 37, i64 1, ptr nonnull %526) #22
  %559 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %560 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %526, ptr noundef nonnull @.str.157, ptr noundef %559) #22
  %561 = call i32 @fputc(i32 10, ptr nonnull %526) #22
  %562 = call i32 @ferror(ptr noundef nonnull %526) #22
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %566, label %564

564:                                              ; preds = %551
  %565 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %565) #28
  call void @exit(i32 noundef 1) #25
  unreachable

566:                                              ; preds = %551
  %567 = call i32 @fputc(i32 10, ptr nonnull %532) #22
  %568 = load ptr, ptr @action_list, align 8, !tbaa !9
  %569 = icmp eq ptr %568, null
  br i1 %569, label %581, label %570

570:                                              ; preds = %570, %566
  %571 = phi ptr [ %579, %570 ], [ %568, %566 ]
  %572 = phi i32 [ %573, %570 ], [ 0, %566 ]
  %573 = add nuw nsw i32 %572, 1
  %574 = trunc i32 %572 to i8
  %575 = getelementptr inbounds %struct.action, ptr %571, i64 0, i32 2
  store i8 %574, ptr %575, align 8, !tbaa !31
  %576 = getelementptr inbounds %struct.action, ptr %571, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !33
  %578 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %532, ptr noundef nonnull @.str.158, ptr noundef %577) #22
  %579 = load ptr, ptr %571, align 8, !tbaa !9
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %570

581:                                              ; preds = %570, %566
  %582 = call i32 @fputc(i32 10, ptr nonnull %532) #22
  %583 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %584 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.159, ptr noundef %583) #22
  %585 = load ptr, ptr @action_list, align 8, !tbaa !9
  %586 = icmp eq ptr %585, null
  br i1 %586, label %597, label %587

587:                                              ; preds = %587, %581
  %588 = phi ptr [ %595, %587 ], [ %585, %581 ]
  %589 = getelementptr inbounds %struct.action, ptr %588, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !33
  %591 = getelementptr inbounds %struct.action, ptr %588, i64 0, i32 2
  %592 = load i8, ptr %591, align 8, !tbaa !31
  %593 = zext i8 %592 to i32
  %594 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.160, ptr noundef %590, i32 noundef %593) #22
  %595 = load ptr, ptr %588, align 8, !tbaa !9
  %596 = icmp eq ptr %595, null
  br i1 %596, label %597, label %587

597:                                              ; preds = %587, %581
  %598 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %599 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %600 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.161, ptr noundef %598, i32 noundef %599) #22
  %601 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %526) #22
  %602 = call i32 @fputc(i32 10, ptr %526) #22
  %603 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %604 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.163, ptr noundef %603, ptr noundef %603) #22
  %605 = load ptr, ptr @action_list, align 8, !tbaa !9
  %606 = icmp eq ptr %605, null
  br i1 %606, label %617, label %607

607:                                              ; preds = %607, %597
  %608 = phi ptr [ %615, %607 ], [ %605, %597 ]
  %609 = getelementptr inbounds %struct.action, ptr %608, i64 0, i32 2
  %610 = load i8, ptr %609, align 8, !tbaa !31
  %611 = zext i8 %610 to i32
  %612 = getelementptr inbounds %struct.action, ptr %608, i64 0, i32 1
  %613 = load ptr, ptr %612, align 8, !tbaa !33
  %614 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.164, i32 noundef %611, ptr noundef %613) #22
  %615 = load ptr, ptr %608, align 8, !tbaa !9
  %616 = icmp eq ptr %615, null
  br i1 %616, label %617, label %607

617:                                              ; preds = %607, %597
  %618 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %526) #22
  %619 = call i32 @ferror(ptr noundef %526) #22
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %623, label %621

621:                                              ; preds = %617
  %622 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %622) #28
  call void @exit(i32 noundef 1) #25
  unreachable

623:                                              ; preds = %617
  %624 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %623
  %627 = call i32 @puts(ptr nonnull @str.198) #22
  br label %628

628:                                              ; preds = %626, %623
  store i32 0, ptr @nr_entries, align 4, !tbaa !23
  %629 = load ptr, ptr @type_list, align 8, !tbaa !9
  %630 = getelementptr inbounds %struct.type, ptr %629, i64 0, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !28
  call fastcc void @render_element(ptr noundef null, ptr noundef %631, ptr noundef null) #22
  %632 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %633 = add nsw i32 %632, 1
  store i32 %633, ptr @nr_entries, align 4, !tbaa !23
  call fastcc void @render_out_of_line_list(ptr noundef null) #22
  %634 = load ptr, ptr @element_list, align 8, !tbaa !9
  %635 = icmp eq ptr %634, null
  br i1 %635, label %644, label %636

636:                                              ; preds = %636, %628
  %637 = phi ptr [ %642, %636 ], [ %634, %628 ]
  %638 = getelementptr inbounds %struct.element, ptr %637, i64 0, i32 12
  %639 = load i32, ptr %638, align 4, !tbaa !34
  %640 = and i32 %639, -9
  store i32 %640, ptr %638, align 4, !tbaa !34
  %641 = getelementptr inbounds %struct.element, ptr %637, i64 0, i32 7
  %642 = load ptr, ptr %641, align 8, !tbaa !9
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %636

644:                                              ; preds = %636, %628
  %645 = load i8, ptr @verbose_opt, align 1, !tbaa !5, !range !24
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %644
  %648 = call i32 @puts(ptr nonnull @str) #22
  br label %649

649:                                              ; preds = %647, %644
  %650 = call i32 @fputc(i32 10, ptr %526) #22
  %651 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %652 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.168, ptr noundef %651) #22
  store i32 0, ptr @nr_entries, align 4, !tbaa !23
  %653 = load ptr, ptr @type_list, align 8, !tbaa !9
  %654 = getelementptr inbounds %struct.type, ptr %653, i64 0, i32 2
  %655 = load ptr, ptr %654, align 8, !tbaa !28
  call fastcc void @render_element(ptr noundef %526, ptr noundef %655, ptr noundef null) #22
  call void (ptr, ptr, ...) @render_opcode(ptr noundef %526, ptr noundef nonnull @.str.166) #22
  call fastcc void @render_out_of_line_list(ptr noundef %526) #22
  %656 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %526) #22
  %657 = call i32 @fputc(i32 10, ptr %526) #22
  %658 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %659 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.169, ptr noundef %658) #22
  %660 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %661 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.170, ptr noundef %660) #22
  %662 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %663 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.171, ptr noundef %662) #22
  %664 = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %665 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %526, ptr noundef nonnull @.str.172, ptr noundef %664) #22
  %666 = call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr %526) #22
  %667 = call i32 @fclose(ptr noundef nonnull %526)
  %668 = icmp slt i32 %667, 0
  br i1 %668, label %669, label %671

669:                                              ; preds = %649
  %670 = load ptr, ptr @outputname, align 8, !tbaa !9
  call void @perror(ptr noundef %670) #24
  call void @exit(i32 noundef 1) #25
  unreachable

671:                                              ; preds = %649
  %672 = call i32 @fclose(ptr noundef nonnull %532)
  %673 = icmp slt i32 %672, 0
  br i1 %673, label %674, label %676

674:                                              ; preds = %671
  %675 = load ptr, ptr @headername, align 8, !tbaa !9
  call void @perror(ptr noundef %675) #24
  call void @exit(i32 noundef 1) #25
  unreachable

676:                                              ; preds = %671
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @type_index_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  %5 = getelementptr inbounds %struct.token, ptr %4, i64 0, i32 2
  %6 = load i8, ptr %5, align 1, !tbaa !21
  %7 = load ptr, ptr %1, align 8, !tbaa !9
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = getelementptr inbounds %struct.token, ptr %8, i64 0, i32 2
  %10 = load i8, ptr %9, align 1, !tbaa !21
  %11 = icmp eq i8 %6, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = zext i8 %10 to i32
  %14 = zext i8 %6 to i32
  %15 = sub nsw i32 %14, %13
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.token, ptr %4, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.token, ptr %8, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = zext i8 %6 to i64
  %22 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %20, i64 noundef %21) #23
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %15, %12 ], [ %22, %16 ]
  ret i32 %24
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_type(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !9
  store ptr %6, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %7 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #27
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @perror(ptr noundef null) #28
  tail call void @exit(i32 noundef 1) #25
  unreachable

10:                                               ; preds = %3
  %11 = load ptr, ptr @element_list, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 7
  store ptr %11, ptr %12, align 8, !tbaa !35
  store ptr %7, ptr @element_list, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 9
  %14 = getelementptr inbounds %struct.token, ptr %6, i64 0, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [93 x i8], ptr @token_to_tag, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !16
  %19 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 10
  store i8 %18, ptr %19, align 4, !tbaa !36
  %20 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 1
  store ptr %2, ptr %20, align 8, !tbaa !37
  %21 = load i8, ptr %14, align 2
  %22 = icmp eq i8 %21, 85
  br i1 %22, label %23, label %103

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.token, ptr %6, i64 1
  store ptr %24, ptr %4, align 8, !tbaa !9
  %25 = icmp ult ptr %24, %1
  br i1 %25, label %26, label %413

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.token, ptr %6, i64 1, i32 1
  %28 = load i8, ptr %27, align 2
  switch i8 %28, label %36 [
    i8 75, label %29
    i8 3, label %31
    i8 90, label %33
    i8 60, label %34
  ]

29:                                               ; preds = %26
  store i24 0, ptr %13, align 1
  %30 = getelementptr inbounds %struct.token, ptr %6, i64 2
  store ptr %30, ptr %4, align 8, !tbaa !9
  br label %44

31:                                               ; preds = %26
  store i24 256, ptr %13, align 1
  %32 = getelementptr inbounds %struct.token, ptr %6, i64 2
  store ptr %32, ptr %4, align 8, !tbaa !9
  br label %44

33:                                               ; preds = %26
  store i24 512, ptr %13, align 1
  br label %44

34:                                               ; preds = %26
  store i24 768, ptr %13, align 1
  %35 = getelementptr inbounds %struct.token, ptr %6, i64 2
  store ptr %35, ptr %4, align 8, !tbaa !9
  br label %44

36:                                               ; preds = %26
  %37 = load ptr, ptr @stderr, align 8, !tbaa !9
  %38 = load ptr, ptr @filename, align 8, !tbaa !9
  %39 = load i16, ptr %24, align 8, !tbaa !19
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.token, ptr %6, i64 1, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.102, ptr noundef %38, i32 noundef %40, ptr noundef %42) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

44:                                               ; preds = %34, %33, %31, %29
  %45 = phi ptr [ %35, %34 ], [ %24, %33 ], [ %32, %31 ], [ %30, %29 ]
  %46 = icmp ult ptr %45, %1
  br i1 %46, label %47, label %413

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.token, ptr %45, i64 0, i32 1
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 90
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @stderr, align 8, !tbaa !9
  %53 = load ptr, ptr @filename, align 8, !tbaa !9
  %54 = load i16, ptr %45, align 8, !tbaa !19
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.token, ptr %45, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.103, ptr noundef %53, i32 noundef %55, ptr noundef %57) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

59:                                               ; preds = %47
  %60 = and i8 %18, -32
  store i8 %60, ptr %19, align 4, !tbaa !36
  %61 = getelementptr inbounds %struct.token, ptr %45, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = call i64 @strtoul(ptr noundef %62, ptr noundef nonnull %5, i32 noundef 10) #22
  %64 = load i8, ptr %19, align 4, !tbaa !36
  %65 = trunc i64 %63 to i8
  %66 = or i8 %64, %65
  store i8 %66, ptr %19, align 4, !tbaa !36
  %67 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %68 = load i32, ptr %67, align 4, !tbaa !34
  %69 = or i32 %68, 4
  store i32 %69, ptr %67, align 4, !tbaa !34
  %70 = load ptr, ptr %5, align 8, !tbaa !9
  %71 = load ptr, ptr %4, align 8, !tbaa !9
  %72 = getelementptr inbounds %struct.token, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  %74 = ptrtoint ptr %70 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = getelementptr inbounds %struct.token, ptr %71, i64 0, i32 2
  %78 = load i8, ptr %77, align 1, !tbaa !21
  %79 = zext i8 %78 to i64
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %59
  tail call void @abort() #25
  unreachable

82:                                               ; preds = %59
  %83 = getelementptr inbounds %struct.token, ptr %71, i64 1
  %84 = icmp ult ptr %83, %1
  br i1 %84, label %85, label %413

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.token, ptr %71, i64 1, i32 1
  %87 = load i8, ptr %86, align 2
  %88 = icmp eq i8 %87, 86
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr @stderr, align 8, !tbaa !9
  %91 = load ptr, ptr @filename, align 8, !tbaa !9
  %92 = load i16, ptr %83, align 8, !tbaa !19
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.token, ptr %71, i64 1, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !22
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.104, ptr noundef %91, i32 noundef %93, ptr noundef %95) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.token, ptr %71, i64 2
  store ptr %98, ptr %4, align 8, !tbaa !9
  %99 = icmp ult ptr %98, %1
  br i1 %99, label %100, label %413

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.token, ptr %71, i64 2, i32 1
  %102 = load i8, ptr %101, align 2
  br label %103

103:                                              ; preds = %100, %10
  %104 = phi i32 [ %69, %100 ], [ 0, %10 ]
  %105 = phi i8 [ %102, %100 ], [ %21, %10 ]
  %106 = phi ptr [ %98, %100 ], [ %6, %10 ]
  switch i8 %105, label %117 [
    i8 37, label %107
    i8 26, label %112
  ]

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %109 = or i32 %104, 1
  store i32 %109, ptr %108, align 4, !tbaa !34
  %110 = getelementptr inbounds %struct.token, ptr %106, i64 1
  store ptr %110, ptr %4, align 8, !tbaa !9
  %111 = icmp ult ptr %110, %1
  br i1 %111, label %119, label %413

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %114 = or i32 %104, 2
  store i32 %114, ptr %113, align 4, !tbaa !34
  %115 = getelementptr inbounds %struct.token, ptr %106, i64 1
  store ptr %115, ptr %4, align 8, !tbaa !9
  %116 = icmp ult ptr %115, %1
  br i1 %116, label %117, label %413

117:                                              ; preds = %112, %103
  %118 = phi ptr [ %106, %103 ], [ %115, %112 ]
  br i1 %22, label %122, label %147

119:                                              ; preds = %107
  br i1 %22, label %120, label %147

120:                                              ; preds = %119
  %121 = load i24, ptr %13, align 1
  br label %125

122:                                              ; preds = %117
  %123 = load i24, ptr %13, align 1
  %124 = or i24 %123, 65536
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi ptr [ %118, %122 ], [ %110, %120 ]
  %127 = phi i24 [ %124, %122 ], [ %121, %120 ]
  %128 = phi i32 [ 3, %122 ], [ 8, %120 ]
  %129 = trunc i32 %128 to i24
  %130 = and i24 %127, -256
  %131 = or i24 %130, %129
  store i24 %131, ptr %13, align 1
  %132 = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #27
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  tail call void @perror(ptr noundef null) #28
  tail call void @exit(i32 noundef 1) #25
  unreachable

135:                                              ; preds = %125
  %136 = load ptr, ptr @element_list, align 8, !tbaa !9
  %137 = getelementptr inbounds %struct.element, ptr %132, i64 0, i32 7
  store ptr %136, ptr %137, align 8, !tbaa !35
  store ptr %132, ptr @element_list, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 4
  store ptr %132, ptr %138, align 8, !tbaa !38
  %139 = getelementptr inbounds %struct.element, ptr %132, i64 0, i32 9
  store i24 0, ptr %139, align 1
  %140 = getelementptr inbounds %struct.token, ptr %126, i64 0, i32 1
  %141 = load i8, ptr %140, align 2
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [93 x i8], ptr @token_to_tag, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !16
  %145 = getelementptr inbounds %struct.element, ptr %132, i64 0, i32 10
  store i8 %144, ptr %145, align 4, !tbaa !36
  %146 = getelementptr inbounds %struct.element, ptr %132, i64 0, i32 1
  store ptr %2, ptr %146, align 8, !tbaa !37
  br label %147

147:                                              ; preds = %135, %119, %117
  %148 = phi ptr [ %126, %135 ], [ %118, %117 ], [ %110, %119 ]
  %149 = phi ptr [ %132, %135 ], [ %7, %117 ], [ %7, %119 ]
  %150 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 2
  store ptr %148, ptr %150, align 8, !tbaa !39
  %151 = getelementptr inbounds %struct.token, ptr %148, i64 0, i32 1
  %152 = load i8, ptr %151, align 2
  switch i8 %152, label %310 [
    i8 2, label %153
    i8 49, label %159
    i8 8, label %159
    i8 24, label %159
    i8 43, label %159
    i8 29, label %164
    i8 7, label %169
    i8 32, label %169
    i8 34, label %169
    i8 35, label %169
    i8 45, label %169
    i8 50, label %169
    i8 61, label %169
    i8 69, label %169
    i8 72, label %169
    i8 78, label %169
    i8 77, label %169
    i8 79, label %169
    i8 80, label %169
    i8 55, label %169
    i8 33, label %169
    i8 76, label %169
    i8 6, label %174
    i8 52, label %174
    i8 51, label %186
    i8 91, label %198
    i8 11, label %260
    i8 64, label %268
    i8 65, label %289
  ]

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %155 = load i24, ptr %154, align 1
  %156 = and i24 %155, -256
  %157 = or i24 %156, 6
  store i24 %157, ptr %154, align 1
  %158 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %158, ptr %4, align 8, !tbaa !9
  br label %318

159:                                              ; preds = %147, %147, %147, %147
  %160 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %161 = load i24, ptr %160, align 1
  %162 = and i24 %161, -256
  store i24 %162, ptr %160, align 1
  %163 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %163, ptr %4, align 8, !tbaa !9
  br label %318

164:                                              ; preds = %147
  %165 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %166 = load i24, ptr %165, align 1
  %167 = and i24 %166, 65535
  %168 = or i24 %167, 65536
  store i24 %168, ptr %165, align 1
  br label %169

169:                                              ; preds = %164, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147, %147
  %170 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %171 = load i24, ptr %170, align 1
  %172 = and i24 %171, -256
  store i24 %172, ptr %170, align 1
  %173 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %173, ptr %4, align 8, !tbaa !9
  br label %318

174:                                              ; preds = %147, %147
  %175 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %176 = load i24, ptr %175, align 1
  %177 = and i24 %176, -256
  store i24 %177, ptr %175, align 1
  %178 = getelementptr inbounds %struct.token, ptr %148, i64 1
  %179 = icmp ult ptr %178, %1
  br i1 %179, label %180, label %413

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.token, ptr %148, i64 1, i32 1
  %182 = load i8, ptr %181, align 2
  %183 = icmp eq i8 %182, 67
  br i1 %183, label %184, label %404

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.token, ptr %148, i64 2
  store ptr %185, ptr %4, align 8, !tbaa !9
  br label %318

186:                                              ; preds = %147
  %187 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %188 = load i24, ptr %187, align 1
  %189 = and i24 %188, -256
  store i24 %189, ptr %187, align 1
  %190 = getelementptr inbounds %struct.token, ptr %148, i64 1
  %191 = icmp ult ptr %190, %1
  br i1 %191, label %192, label %413

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.token, ptr %148, i64 1, i32 1
  %194 = load i8, ptr %193, align 2
  %195 = icmp eq i8 %194, 36
  br i1 %195, label %196, label %404

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.token, ptr %148, i64 2
  store ptr %197, ptr %4, align 8, !tbaa !9
  br label %318

198:                                              ; preds = %147
  %199 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %200 = load i24, ptr %199, align 1
  %201 = and i24 %200, -256
  %202 = or i24 %201, 7
  store i24 %202, ptr %199, align 1
  %203 = load ptr, ptr @type_index, align 8, !tbaa !9
  %204 = load i32, ptr @nr_types, align 4, !tbaa !23
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %244, label %206

206:                                              ; preds = %198
  %207 = zext i32 %204 to i64
  %208 = getelementptr inbounds %struct.token, ptr %148, i64 0, i32 2
  %209 = load i8, ptr %208, align 1, !tbaa !21
  %210 = zext i8 %209 to i32
  %211 = getelementptr inbounds %struct.token, ptr %148, i64 0, i32 4
  %212 = zext i8 %209 to i64
  br label %213

213:                                              ; preds = %240, %206
  %214 = phi i64 [ %242, %240 ], [ 0, %206 ]
  %215 = phi i64 [ %241, %240 ], [ %207, %206 ]
  %216 = add i64 %215, %214
  %217 = lshr i64 %216, 1
  %218 = shl i64 %217, 3
  %219 = getelementptr inbounds i8, ptr %203, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !9
  %221 = load ptr, ptr %220, align 8, !tbaa !27
  %222 = getelementptr inbounds %struct.token, ptr %221, i64 0, i32 2
  %223 = load i8, ptr %222, align 1, !tbaa !21
  %224 = icmp eq i8 %209, %223
  br i1 %224, label %228, label %225

225:                                              ; preds = %213
  %226 = zext i8 %223 to i32
  %227 = sub nsw i32 %210, %226
  br label %233

228:                                              ; preds = %213
  %229 = load ptr, ptr %211, align 8, !tbaa !22
  %230 = getelementptr inbounds %struct.token, ptr %221, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !22
  %232 = tail call i32 @memcmp(ptr noundef %229, ptr noundef %231, i64 noundef %212) #23
  br label %233

233:                                              ; preds = %228, %225
  %234 = phi i32 [ %227, %225 ], [ %232, %228 ]
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = icmp eq i32 %234, 0
  br i1 %237, label %252, label %238

238:                                              ; preds = %236
  %239 = add nuw i64 %217, 1
  br label %240

240:                                              ; preds = %238, %233
  %241 = phi i64 [ %215, %238 ], [ %217, %233 ]
  %242 = phi i64 [ %239, %238 ], [ %214, %233 ]
  %243 = icmp ult i64 %242, %241
  br i1 %243, label %213, label %244

244:                                              ; preds = %240, %198
  %245 = load ptr, ptr @stderr, align 8, !tbaa !9
  %246 = load ptr, ptr @filename, align 8, !tbaa !9
  %247 = load i16, ptr %148, align 8, !tbaa !19
  %248 = zext i16 %247 to i32
  %249 = getelementptr inbounds %struct.token, ptr %148, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !22
  %251 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.105, ptr noundef %246, i32 noundef %248, ptr noundef %250) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

252:                                              ; preds = %236
  %253 = getelementptr inbounds i8, ptr %203, i64 %218
  %254 = getelementptr inbounds %struct.token, ptr %148, i64 0, i32 5
  store ptr %220, ptr %254, align 8, !tbaa !40
  %255 = load ptr, ptr %253, align 8, !tbaa !9
  %256 = getelementptr inbounds %struct.type, ptr %255, i64 0, i32 3
  %257 = load i32, ptr %256, align 8, !tbaa !41
  %258 = add i32 %257, 1
  store i32 %258, ptr %256, align 8, !tbaa !41
  %259 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %259, ptr %4, align 8, !tbaa !9
  br label %318

260:                                              ; preds = %147
  %261 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %262 = load i24, ptr %261, align 1
  %263 = and i24 %262, -256
  %264 = or i24 %263, 5
  store i24 %264, ptr %261, align 1
  %265 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %265, ptr %4, align 8, !tbaa !9
  %266 = call fastcc ptr @parse_compound(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 1)
  %267 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 4
  store ptr %266, ptr %267, align 8, !tbaa !38
  br label %318

268:                                              ; preds = %147
  %269 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %270 = load i24, ptr %269, align 1
  %271 = and i24 %270, 65280
  %272 = or i24 %271, 65539
  store i24 %272, ptr %269, align 1
  %273 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %273, ptr %4, align 8, !tbaa !9
  %274 = icmp ult ptr %273, %1
  br i1 %274, label %275, label %413

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.token, ptr %148, i64 1, i32 1
  %277 = load i8, ptr %276, align 2
  %278 = icmp eq i8 %277, 53
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = or i24 %271, 65540
  store i24 %280, ptr %269, align 1
  %281 = getelementptr inbounds %struct.token, ptr %148, i64 2
  store ptr %281, ptr %4, align 8, !tbaa !9
  %282 = icmp ult ptr %281, %1
  br i1 %282, label %283, label %413

283:                                              ; preds = %279
  %284 = call fastcc ptr @parse_type(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef null)
  %285 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 4
  store ptr %284, ptr %285, align 8, !tbaa !38
  br label %318

286:                                              ; preds = %275
  %287 = call fastcc ptr @parse_compound(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef 0)
  %288 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 4
  store ptr %287, ptr %288, align 8, !tbaa !38
  br label %318

289:                                              ; preds = %147
  %290 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 9
  %291 = load i24, ptr %290, align 1
  %292 = and i24 %291, 65280
  %293 = or i24 %292, 65537
  store i24 %293, ptr %290, align 1
  %294 = getelementptr inbounds %struct.token, ptr %148, i64 1
  store ptr %294, ptr %4, align 8, !tbaa !9
  %295 = icmp ult ptr %294, %1
  br i1 %295, label %296, label %413

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.token, ptr %148, i64 1, i32 1
  %298 = load i8, ptr %297, align 2
  %299 = icmp eq i8 %298, 53
  br i1 %299, label %300, label %307

300:                                              ; preds = %296
  %301 = or i24 %292, 65538
  store i24 %301, ptr %290, align 1
  %302 = getelementptr inbounds %struct.token, ptr %148, i64 2
  store ptr %302, ptr %4, align 8, !tbaa !9
  %303 = icmp ult ptr %302, %1
  br i1 %303, label %304, label %404

304:                                              ; preds = %300
  %305 = call fastcc ptr @parse_type(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef null)
  %306 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 4
  store ptr %305, ptr %306, align 8, !tbaa !38
  br label %318

307:                                              ; preds = %296
  %308 = call fastcc ptr @parse_compound(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef 1)
  %309 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 4
  store ptr %308, ptr %309, align 8, !tbaa !38
  br label %318

310:                                              ; preds = %147
  %311 = load ptr, ptr @stderr, align 8, !tbaa !9
  %312 = load ptr, ptr @filename, align 8, !tbaa !9
  %313 = load i16, ptr %148, align 8, !tbaa !19
  %314 = zext i16 %313 to i32
  %315 = getelementptr inbounds %struct.token, ptr %148, i64 0, i32 4
  %316 = load ptr, ptr %315, align 8, !tbaa !22
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.106, ptr noundef %312, i32 noundef %314, ptr noundef %316) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

318:                                              ; preds = %307, %304, %286, %283, %260, %252, %196, %184, %169, %159, %153
  %319 = load ptr, ptr %4, align 8, !tbaa !9
  %320 = icmp ult ptr %319, %1
  br i1 %320, label %321, label %329

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.token, ptr %319, i64 0, i32 1
  %323 = load i8, ptr %322, align 2
  switch i8 %323, label %329 [
    i8 54, label %324
    i8 17, label %324
  ]

324:                                              ; preds = %321, %321
  %325 = getelementptr inbounds %struct.token, ptr %319, i64 1
  store ptr %325, ptr %4, align 8, !tbaa !9
  %326 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %327 = load i32, ptr %326, align 4, !tbaa !34
  %328 = or i32 %327, 16
  store i32 %328, ptr %326, align 4, !tbaa !34
  br label %329

329:                                              ; preds = %324, %321, %318
  %330 = phi ptr [ %319, %321 ], [ %325, %324 ], [ %319, %318 ]
  %331 = icmp ult ptr %330, %1
  br i1 %331, label %332, label %417

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.token, ptr %330, i64 0, i32 1
  %334 = load i8, ptr %333, align 2
  %335 = icmp eq i8 %334, 87
  br i1 %335, label %336, label %417

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.token, ptr %330, i64 1
  store ptr %337, ptr %4, align 8, !tbaa !9
  %338 = icmp ult ptr %337, %1
  br i1 %338, label %339, label %413

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.token, ptr %330, i64 1, i32 1
  %341 = load i8, ptr %340, align 2
  %342 = icmp eq i8 %341, 92
  br i1 %342, label %351, label %343

343:                                              ; preds = %339
  %344 = load ptr, ptr @stderr, align 8, !tbaa !9
  %345 = load ptr, ptr @filename, align 8, !tbaa !9
  %346 = load i16, ptr %337, align 8, !tbaa !19
  %347 = zext i16 %346 to i32
  %348 = getelementptr inbounds %struct.token, ptr %330, i64 1, i32 4
  %349 = load ptr, ptr %348, align 8, !tbaa !22
  %350 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef nonnull @.str.107, ptr noundef %345, i32 noundef %347, ptr noundef %349) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

351:                                              ; preds = %339
  %352 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #26
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  tail call void @perror(ptr noundef null) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.action, ptr %352, i64 0, i32 2
  store i8 0, ptr %356, align 8, !tbaa !31
  %357 = getelementptr inbounds %struct.token, ptr %330, i64 1, i32 4
  %358 = load ptr, ptr %357, align 8, !tbaa !22
  %359 = getelementptr inbounds %struct.action, ptr %352, i64 0, i32 1
  store ptr %358, ptr %359, align 8, !tbaa !33
  %360 = load ptr, ptr @action_list, align 8, !tbaa !9
  %361 = icmp eq ptr %360, null
  br i1 %361, label %379, label %362

362:                                              ; preds = %376, %355
  %363 = phi ptr [ %377, %376 ], [ %360, %355 ]
  %364 = phi ptr [ %363, %376 ], [ @action_list, %355 ]
  %365 = getelementptr inbounds %struct.action, ptr %363, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !33
  %367 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %358, ptr noundef nonnull dereferenceable(1) %366) #23
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %362
  tail call void @free(ptr noundef nonnull %352) #22
  %370 = load ptr, ptr %364, align 8, !tbaa !9
  br label %383

371:                                              ; preds = %362
  %372 = icmp slt i32 %367, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %371
  store ptr %363, ptr %352, align 8, !tbaa !42
  store ptr %352, ptr %364, align 8, !tbaa !9
  %374 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %375 = add i32 %374, 1
  store i32 %375, ptr @nr_actions, align 4, !tbaa !23
  br label %383

376:                                              ; preds = %371
  %377 = load ptr, ptr %363, align 8, !tbaa !9
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %362

379:                                              ; preds = %376, %355
  %380 = phi ptr [ @action_list, %355 ], [ %363, %376 ]
  store ptr null, ptr %352, align 8, !tbaa !42
  store ptr %352, ptr %380, align 8, !tbaa !9
  %381 = load i32, ptr @nr_actions, align 4, !tbaa !23
  %382 = add i32 %381, 1
  store i32 %382, ptr @nr_actions, align 4, !tbaa !23
  br label %383

383:                                              ; preds = %379, %373, %369
  %384 = phi ptr [ %352, %379 ], [ %352, %373 ], [ %370, %369 ]
  %385 = getelementptr inbounds %struct.element, ptr %149, i64 0, i32 3
  store ptr %384, ptr %385, align 8, !tbaa !43
  %386 = load ptr, ptr %4, align 8, !tbaa !9
  %387 = getelementptr inbounds %struct.token, ptr %386, i64 0, i32 3
  store ptr %384, ptr %387, align 8, !tbaa !44
  %388 = getelementptr inbounds %struct.token, ptr %386, i64 1
  %389 = icmp ult ptr %388, %1
  br i1 %389, label %390, label %413

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.token, ptr %386, i64 1, i32 1
  %392 = load i8, ptr %391, align 2
  %393 = icmp eq i8 %392, 88
  br i1 %393, label %402, label %394

394:                                              ; preds = %390
  %395 = load ptr, ptr @stderr, align 8, !tbaa !9
  %396 = load ptr, ptr @filename, align 8, !tbaa !9
  %397 = load i16, ptr %388, align 8, !tbaa !19
  %398 = zext i16 %397 to i32
  %399 = getelementptr inbounds %struct.token, ptr %386, i64 1, i32 4
  %400 = load ptr, ptr %399, align 8, !tbaa !22
  %401 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef nonnull @.str.108, ptr noundef %396, i32 noundef %398, ptr noundef %400) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

402:                                              ; preds = %390
  %403 = getelementptr inbounds %struct.token, ptr %386, i64 2
  br label %417

404:                                              ; preds = %300, %192, %180
  %405 = phi ptr [ %302, %300 ], [ %190, %192 ], [ %178, %180 ]
  %406 = load ptr, ptr @stderr, align 8, !tbaa !9
  %407 = load ptr, ptr @filename, align 8, !tbaa !9
  %408 = load i16, ptr %405, align 8, !tbaa !19
  %409 = zext i16 %408 to i32
  %410 = getelementptr inbounds %struct.token, ptr %405, i64 0, i32 4
  %411 = load ptr, ptr %410, align 8, !tbaa !22
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %406, ptr noundef nonnull @.str.109, ptr noundef %407, i32 noundef %409, ptr noundef %411) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

413:                                              ; preds = %383, %336, %289, %279, %268, %186, %174, %112, %107, %97, %82, %44, %23
  %414 = load ptr, ptr @stderr, align 8, !tbaa !9
  %415 = load ptr, ptr @filename, align 8, !tbaa !9
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %414, ptr noundef nonnull @.str.110, ptr noundef %415) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

417:                                              ; preds = %402, %332, %329
  %418 = phi ptr [ %330, %329 ], [ %330, %332 ], [ %403, %402 ]
  store ptr %418, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_compound(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.token, ptr %6, i64 0, i32 1
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 83
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @stderr, align 8, !tbaa !9
  %12 = load ptr, ptr @filename, align 8, !tbaa !9
  %13 = load i16, ptr %6, align 8, !tbaa !19
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.token, ptr %6, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.112, ptr noundef %12, i32 noundef %14, ptr noundef %16) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.token, ptr %6, i64 1
  store ptr %19, ptr %5, align 8, !tbaa !9
  %20 = icmp ult ptr %19, %1
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.token, ptr %6, i64 1, i32 1
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 83
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %2, 0
  br label %33

27:                                               ; preds = %21
  %28 = load ptr, ptr @stderr, align 8, !tbaa !9
  %29 = load ptr, ptr @filename, align 8, !tbaa !9
  %30 = load i16, ptr %19, align 8, !tbaa !19
  %31 = zext i16 %30 to i32
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.113, ptr noundef %29, i32 noundef %31) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

33:                                               ; preds = %57, %25
  %34 = phi ptr [ %58, %57 ], [ %19, %25 ]
  %35 = phi ptr [ %50, %57 ], [ %4, %25 ]
  %36 = getelementptr inbounds %struct.token, ptr %34, i64 0, i32 1
  %37 = load i8, ptr %36, align 2
  %38 = icmp eq i8 %37, 92
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.token, ptr %34, i64 1
  store ptr %40, ptr %5, align 8, !tbaa !9
  %41 = icmp ult ptr %40, %1
  br i1 %41, label %42, label %78

42:                                               ; preds = %39, %33
  %43 = phi ptr [ %34, %39 ], [ null, %33 ]
  %44 = call fastcc ptr @parse_type(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef %43)
  br i1 %26, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.element, ptr %44, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !34
  %48 = or i32 %47, 48
  store i32 %48, ptr %46, align 4, !tbaa !34
  br label %49

49:                                               ; preds = %45, %42
  store ptr %44, ptr %35, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.element, ptr %44, i64 0, i32 5
  %51 = load ptr, ptr %5, align 8, !tbaa !9
  %52 = icmp ult ptr %51, %1
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.token, ptr %51, i64 0, i32 1
  %55 = load i8, ptr %54, align 2
  %56 = icmp eq i8 %55, 89
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.token, ptr %51, i64 1
  store ptr %58, ptr %5, align 8, !tbaa !9
  %59 = icmp ult ptr %58, %1
  br i1 %59, label %33, label %78

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.token, ptr %51, i64 0, i32 1
  %62 = load ptr, ptr %4, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.element, ptr %62, i64 0, i32 12
  %64 = load i32, ptr %63, align 4, !tbaa !34
  %65 = and i32 %64, -33
  store i32 %65, ptr %63, align 4, !tbaa !34
  %66 = load i8, ptr %61, align 2
  %67 = icmp eq i8 %66, 84
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr @stderr, align 8, !tbaa !9
  %70 = load ptr, ptr @filename, align 8, !tbaa !9
  %71 = load i16, ptr %51, align 8, !tbaa !19
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds %struct.token, ptr %51, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.114, ptr noundef %70, i32 noundef %72, ptr noundef %74) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

76:                                               ; preds = %60
  %77 = getelementptr inbounds %struct.token, ptr %51, i64 1
  store ptr %77, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  ret ptr %62

78:                                               ; preds = %57, %49, %39, %18
  %79 = load ptr, ptr @stderr, align 8, !tbaa !9
  %80 = load ptr, ptr @filename, align 8, !tbaa !9
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.110, ptr noundef %80) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @dump_element(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 {
  %3 = alloca [32 x i8], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.token, ptr %6, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ @.str.115, %2 ]
  %13 = icmp eq ptr %4, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !27
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.token, ptr %15, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %17, %14, %11
  %21 = phi ptr [ %19, %17 ], [ @.str.115, %14 ], [ @.str.115, %11 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %22 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 9
  %23 = load i24, ptr %22, align 1
  %24 = icmp ult i24 %23, 256
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 10
  %27 = load i8, ptr %26, align 4, !tbaa !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.116, i64 6, i1 false) #22
  br label %54

30:                                               ; preds = %25, %20
  %31 = lshr i24 %23, 8
  %32 = and i24 %31, 255
  %33 = icmp eq i24 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = lshr i24 %23, 16
  %36 = zext i24 %35 to i64
  %37 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 10
  %39 = load i8, ptr %38, align 4, !tbaa !36
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [32 x ptr], ptr @asn1_universal_tags, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.117, ptr noundef nonnull @asn1_classes, ptr noundef nonnull %37, ptr noundef %42) #22
  br label %54

44:                                               ; preds = %30
  %45 = zext i24 %32 to i64
  %46 = getelementptr inbounds [4 x [5 x i8]], ptr @asn1_classes, i64 0, i64 %45
  %47 = lshr i24 %23, 16
  %48 = zext i24 %47 to i64
  %49 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 10
  %51 = load i8, ptr %50, align 4, !tbaa !36
  %52 = zext i8 %51 to i32
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.118, ptr noundef nonnull %46, ptr noundef nonnull %49, i32 noundef %52) #22
  br label %54

54:                                               ; preds = %44, %34, %29
  %55 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 12
  %56 = load i32, ptr %55, align 4, !tbaa !34
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 45, i32 73
  %60 = insertelement <4 x i32> poison, i32 %56, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  %62 = and <4 x i32> %61, <i32 32, i32 16, i32 4, i32 2>
  %63 = icmp eq <4 x i32> %62, zeroinitializer
  %64 = extractelement <4 x i1> %63, i64 3
  %65 = select i1 %64, i32 45, i32 69
  %66 = extractelement <4 x i1> %63, i64 2
  %67 = select i1 %66, i32 45, i32 84
  %68 = extractelement <4 x i1> %63, i64 1
  %69 = select i1 %68, i32 45, i32 83
  %70 = extractelement <4 x i1> %63, i64 0
  %71 = select i1 %70, i32 45, i32 67
  %72 = load i24, ptr %22, align 1
  %73 = and i24 %72, 255
  %74 = zext i24 %73 to i64
  %75 = getelementptr inbounds [10 x i8], ptr @.str.120, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !16
  %77 = sext i8 %76 to i32
  %78 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %54
  %82 = getelementptr inbounds %struct.action, ptr %79, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !33
  br label %84

84:                                               ; preds = %81, %54
  %85 = phi ptr [ %83, %81 ], [ @.str.121, %54 ]
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.119, i32 noundef %59, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %77, i32 noundef %1, ptr noundef nonnull @.str.121, ptr noundef nonnull %3, ptr noundef %21, ptr noundef %12, ptr noundef %85)
  %87 = load i24, ptr %22, align 1
  %88 = and i24 %87, 255
  %89 = icmp eq i24 %88, 7
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !39
  %93 = getelementptr inbounds %struct.token, ptr %92, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !40
  %95 = getelementptr inbounds %struct.type, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !28
  %97 = add nsw i32 %1, 3
  call fastcc void @dump_element(ptr noundef %96, i32 noundef %97)
  br label %109

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.element, ptr %0, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = add nsw i32 %1, 3
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi ptr [ %100, %102 ], [ %107, %104 ]
  call fastcc void @dump_element(ptr noundef nonnull %105, i32 noundef %103)
  %106 = getelementptr inbounds %struct.element, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %104

109:                                              ; preds = %104, %98, %90
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @render_element(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  br label %5

5:                                                ; preds = %76, %3
  %6 = phi ptr [ %1, %3 ], [ %78, %76 ]
  %7 = phi ptr [ %2, %3 ], [ %6, %76 ]
  %8 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %12
  %20 = load ptr, ptr %6, align 8, !tbaa !29
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %24

22:                                               ; preds = %14, %5
  %23 = load ptr, ptr %6, align 8, !tbaa !29
  br label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.type, ptr %20, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !41
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %20, %24 ], [ %23, %22 ]
  %30 = phi i1 [ true, %24 ], [ false, %22 ]
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %20, %24 ], [ %29, %28 ]
  %33 = phi i1 [ true, %24 ], [ %30, %28 ]
  %34 = phi i1 [ true, %24 ], [ false, %28 ]
  %35 = icmp ne ptr %32, null
  %36 = and i1 %4, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load ptr, ptr %32, align 8, !tbaa !27
  %39 = getelementptr inbounds %struct.token, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef nonnull %0, ptr noundef nonnull @.str.173, ptr noundef %40)
  %41 = load i32, ptr %8, align 4, !tbaa !34
  br label %42

42:                                               ; preds = %37, %31, %19
  %43 = phi i32 [ %41, %37 ], [ %9, %31 ], [ %9, %19 ]
  %44 = phi i1 [ %34, %37 ], [ %34, %31 ], [ true, %19 ]
  %45 = phi i1 [ %33, %37 ], [ %33, %31 ], [ true, %19 ]
  %46 = and i32 %43, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = icmp eq ptr %7, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %52 = load i32, ptr %51, align 4, !tbaa !34
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %50, %48
  %57 = phi ptr [ @.str.174, %55 ], [ @.str.121, %50 ], [ @.str.121, %48 ]
  %58 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  %60 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 9
  %61 = load i24, ptr %60, align 1
  %62 = trunc i24 %61 to i8
  switch i8 %62, label %95 [
    i8 6, label %63
    i8 8, label %76
    i8 3, label %79
    i8 4, label %79
    i8 1, label %79
    i8 2, label %79
    i8 5, label %150
    i8 7, label %85
  ]

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3
  %65 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 9
  %66 = icmp eq ptr %59, null
  %67 = select i1 %66, ptr @.str.121, ptr @.str.175
  %68 = select i1 %45, ptr @.str.121, ptr @.str.177
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.176, ptr noundef nonnull %57, ptr noundef nonnull %67, ptr noundef nonnull %68)
  %69 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !37
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.token, ptr %70, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.178, ptr noundef %74)
  br label %75

75:                                               ; preds = %72, %63
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.154)
  br label %155

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  br label %5

79:                                               ; preds = %56, %56, %56, %56
  %80 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3
  %81 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 9
  %82 = icmp eq ptr %59, null
  %83 = select i1 %82, ptr @.str.121, ptr @.str.175
  %84 = select i1 %44, ptr @.str.121, ptr @.str.180
  br label %100

85:                                               ; preds = %56
  %86 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3
  %87 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 9
  %88 = icmp eq ptr %59, null
  %89 = select i1 %88, ptr @.str.121, ptr @.str.175
  %90 = icmp ult i24 %61, 256
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 10
  %93 = load i8, ptr %92, align 4, !tbaa !36
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %155, label %100

95:                                               ; preds = %56
  %96 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3
  %97 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 9
  %98 = icmp eq ptr %59, null
  %99 = select i1 %98, ptr @.str.121, ptr @.str.175
  br label %100

100:                                              ; preds = %95, %91, %85, %79
  %101 = phi ptr [ %84, %79 ], [ %99, %95 ], [ %89, %85 ], [ %89, %91 ]
  %102 = phi ptr [ %80, %79 ], [ %96, %95 ], [ %86, %85 ], [ %86, %91 ]
  %103 = phi ptr [ %81, %79 ], [ %97, %95 ], [ %87, %85 ], [ %87, %91 ]
  %104 = phi ptr [ %83, %79 ], [ %99, %95 ], [ %89, %85 ], [ %89, %91 ]
  %105 = select i1 %45, ptr @.str.121, ptr @.str.177
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.179, ptr noundef nonnull %57, ptr noundef nonnull %101, ptr noundef nonnull %105)
  %106 = icmp eq ptr %7, null
  %107 = select i1 %106, ptr %6, ptr %7
  %108 = getelementptr inbounds %struct.element, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !37
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.token, ptr %109, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.178, ptr noundef %113)
  br label %114

114:                                              ; preds = %111, %100
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.154)
  br i1 %106, label %120, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.element, ptr %7, i64 0, i32 12
  %117 = load i32, ptr %116, align 4, !tbaa !34
  %118 = and i32 %117, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %114
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi ptr [ %7, %115 ], [ %6, %120 ]
  %123 = getelementptr inbounds %struct.element, ptr %122, i64 0, i32 9
  %124 = load i24, ptr %123, align 1
  %125 = and i24 %124, 65280
  %126 = icmp eq i24 %125, 0
  %127 = getelementptr inbounds %struct.element, ptr %122, i64 0, i32 10
  %128 = load i8, ptr %127, align 4, !tbaa !36
  br i1 %126, label %129, label %139

129:                                              ; preds = %121
  switch i8 %128, label %130 [
    i8 14, label %139
    i8 15, label %139
    i8 31, label %139
  ]

130:                                              ; preds = %129
  %131 = load i24, ptr %103, align 1
  %132 = or i24 %131, %124
  %133 = lshr i24 %132, 16
  %134 = zext i24 %133 to i64
  %135 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %134
  %136 = zext i8 %128 to i64
  %137 = getelementptr inbounds [32 x ptr], ptr @asn1_universal_tags, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !9
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.181, ptr noundef nonnull @asn1_classes, ptr noundef nonnull %135, ptr noundef %138)
  br label %155

139:                                              ; preds = %129, %129, %129, %121
  %140 = lshr i24 %124, 8
  %141 = and i24 %140, 255
  %142 = zext i24 %141 to i64
  %143 = getelementptr inbounds [4 x [5 x i8]], ptr @asn1_classes, i64 0, i64 %142
  %144 = load i24, ptr %103, align 1
  %145 = or i24 %144, %124
  %146 = lshr i24 %145, 16
  %147 = zext i24 %146 to i64
  %148 = getelementptr inbounds [2 x [5 x i8]], ptr @asn1_methods, i64 0, i64 %147
  %149 = zext i8 %128 to i32
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.182, ptr noundef nonnull %143, ptr noundef nonnull %148, i32 noundef %149)
  br label %155

150:                                              ; preds = %56
  %151 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 3
  %152 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 9
  %153 = icmp eq ptr %59, null
  %154 = select i1 %153, ptr @.str.121, ptr @.str.175
  br label %155

155:                                              ; preds = %150, %139, %130, %91, %75
  %156 = phi ptr [ %86, %91 ], [ %64, %75 ], [ %102, %139 ], [ %102, %130 ], [ %151, %150 ]
  %157 = phi ptr [ %87, %91 ], [ %65, %75 ], [ %103, %139 ], [ %103, %130 ], [ %152, %150 ]
  %158 = phi ptr [ %89, %91 ], [ %67, %75 ], [ %104, %139 ], [ %104, %130 ], [ %154, %150 ]
  %159 = phi ptr [ %7, %91 ], [ %7, %75 ], [ null, %139 ], [ null, %130 ], [ %7, %150 ]
  %160 = load i24, ptr %157, align 1
  %161 = trunc i24 %160 to i8
  switch i8 %161, label %259 [
    i8 7, label %162
    i8 3, label %173
    i8 4, label %209
    i8 2, label %209
    i8 1, label %241
    i8 5, label %244
  ]

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !39
  %165 = getelementptr inbounds %struct.token, ptr %164, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !40
  %167 = getelementptr inbounds %struct.type, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !28
  tail call fastcc void @render_element(ptr noundef %0, ptr noundef %168, ptr noundef %159)
  %169 = load ptr, ptr %156, align 8, !tbaa !43
  %170 = icmp eq ptr %169, null
  br i1 %170, label %265, label %171

171:                                              ; preds = %162
  %172 = select i1 %45, ptr @.str.121, ptr @.str.184
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.183, ptr noundef nonnull %172)
  br label %259

173:                                              ; preds = %155
  br i1 %44, label %193, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 11
  %176 = load i32, ptr %175, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.185, i32 noundef %176)
  %177 = load ptr, ptr %6, align 8, !tbaa !29
  %178 = icmp eq ptr %177, null
  br i1 %178, label %185, label %179

179:                                              ; preds = %174
  %180 = load ptr, ptr %177, align 8, !tbaa !27
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.token, ptr %180, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.186, ptr noundef %184)
  br label %185

185:                                              ; preds = %182, %179, %174
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.154)
  %186 = load i32, ptr %8, align 4, !tbaa !34
  %187 = and i32 %186, 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %265

189:                                              ; preds = %185
  %190 = or i32 %186, 8
  store i32 %190, ptr %8, align 4, !tbaa !34
  %191 = load ptr, ptr @render_list_p, align 8, !tbaa !9
  store ptr %6, ptr %191, align 8, !tbaa !9
  %192 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 6
  store ptr %192, ptr @render_list_p, align 8, !tbaa !9
  br label %265

193:                                              ; preds = %173
  %194 = load i32, ptr @render_depth, align 4, !tbaa !23
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr @render_depth, align 4, !tbaa !23
  %196 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !9
  %198 = icmp eq ptr %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %199, %193
  %200 = phi ptr [ %202, %199 ], [ %197, %193 ]
  tail call fastcc void @render_element(ptr noundef %0, ptr noundef nonnull %200, ptr noundef null)
  %201 = getelementptr inbounds %struct.element, ptr %200, i64 0, i32 5
  %202 = load ptr, ptr %201, align 8, !tbaa !9
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %199

204:                                              ; preds = %199
  %205 = load i32, ptr @render_depth, align 4, !tbaa !23
  br label %206

206:                                              ; preds = %204, %193
  %207 = phi i32 [ %205, %204 ], [ %195, %193 ]
  %208 = add nsw i32 %207, -1
  store i32 %208, ptr @render_depth, align 4, !tbaa !23
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.187, ptr noundef nonnull %158)
  br label %259

209:                                              ; preds = %155, %155
  br i1 %44, label %229, label %210

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 11
  %212 = load i32, ptr %211, align 8, !tbaa !45
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.185, i32 noundef %212)
  %213 = load ptr, ptr %6, align 8, !tbaa !29
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %213, align 8, !tbaa !27
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.token, ptr %216, i64 0, i32 4
  %220 = load ptr, ptr %219, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.186, ptr noundef %220)
  br label %221

221:                                              ; preds = %218, %215, %210
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.154)
  %222 = load i32, ptr %8, align 4, !tbaa !34
  %223 = and i32 %222, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %265

225:                                              ; preds = %221
  %226 = or i32 %222, 8
  store i32 %226, ptr %8, align 4, !tbaa !34
  %227 = load ptr, ptr @render_list_p, align 8, !tbaa !9
  store ptr %6, ptr %227, align 8, !tbaa !9
  %228 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 6
  store ptr %228, ptr @render_list_p, align 8, !tbaa !9
  br label %265

229:                                              ; preds = %209
  %230 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %231 = load i32, ptr @render_depth, align 4, !tbaa !23
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr @render_depth, align 4, !tbaa !23
  %233 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 4
  %234 = load ptr, ptr %233, align 8, !tbaa !38
  tail call fastcc void @render_element(ptr noundef %0, ptr noundef %234, ptr noundef null)
  %235 = load i32, ptr @render_depth, align 4, !tbaa !23
  %236 = add nsw i32 %235, -1
  store i32 %236, ptr @render_depth, align 4, !tbaa !23
  %237 = load i24, ptr %157, align 1
  %238 = and i24 %237, 255
  %239 = icmp eq i24 %238, 4
  %240 = select i1 %239, ptr @.str.188, ptr @.str.189
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull %240, ptr noundef nonnull %158)
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef %230)
  br label %259

241:                                              ; preds = %155
  %242 = load ptr, ptr @stderr, align 8, !tbaa !9
  %243 = tail call i64 @fwrite(ptr nonnull @.str.191, i64 47, i64 1, ptr %242) #24
  tail call void @exit(i32 noundef 1) #25
  unreachable

244:                                              ; preds = %155
  %245 = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 4
  %246 = load ptr, ptr %245, align 8, !tbaa !9
  %247 = icmp eq ptr %246, null
  br i1 %247, label %253, label %248

248:                                              ; preds = %248, %244
  %249 = phi ptr [ %251, %248 ], [ %246, %244 ]
  tail call fastcc void @render_element(ptr noundef %0, ptr noundef nonnull %249, ptr noundef nonnull %249)
  %250 = getelementptr inbounds %struct.element, ptr %249, i64 0, i32 5
  %251 = load ptr, ptr %250, align 8, !tbaa !9
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %248

253:                                              ; preds = %248, %244
  br i1 %45, label %254, label %255

254:                                              ; preds = %253
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.192)
  br label %255

255:                                              ; preds = %254, %253
  %256 = load ptr, ptr %156, align 8, !tbaa !43
  %257 = icmp eq ptr %256, null
  br i1 %257, label %265, label %258

258:                                              ; preds = %255
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.193)
  br label %259

259:                                              ; preds = %258, %229, %206, %171, %155
  %260 = load ptr, ptr %156, align 8, !tbaa !43
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.action, ptr %260, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !33
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef %264)
  br label %265

265:                                              ; preds = %262, %259, %255, %225, %221, %189, %185, %162
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @render_opcode(ptr noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #17 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %7 = load i32, ptr @render_depth, align 4, !tbaa !23
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.195, i32 noundef %6, i32 noundef %7, ptr noundef nonnull @.str.121)
  call void @llvm.va_start(ptr nonnull %3)
  %9 = call i32 @vfprintf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %3)
  br label %10

10:                                               ; preds = %5, %2
  %11 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @nr_entries, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @render_out_of_line_list(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @render_list, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %45, %1
  %5 = phi ptr [ %46, %45 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.element, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  store ptr %7, ptr @render_list, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store ptr @render_list, ptr @render_list_p, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %9, %4
  tail call void (ptr, ptr, ...) @render_more(ptr noundef %0, ptr noundef nonnull @.str.154)
  %11 = load i32, ptr @nr_entries, align 4, !tbaa !23
  %12 = getelementptr inbounds %struct.element, ptr %5, i64 0, i32 11
  store i32 %11, ptr %12, align 8, !tbaa !45
  %13 = load i32, ptr @render_depth, align 4, !tbaa !23
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @render_depth, align 4, !tbaa !23
  %15 = getelementptr inbounds %struct.element, ptr %5, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %10
  %19 = phi ptr [ %21, %18 ], [ %16, %10 ]
  tail call fastcc void @render_element(ptr noundef %0, ptr noundef nonnull %19, ptr noundef null)
  %20 = getelementptr inbounds %struct.element, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  %24 = load i32, ptr @render_depth, align 4, !tbaa !23
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi i32 [ %24, %23 ], [ %14, %10 ]
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr @render_depth, align 4, !tbaa !23
  %28 = getelementptr inbounds %struct.element, ptr %5, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @.str.121, ptr @.str.175
  %32 = getelementptr inbounds %struct.element, ptr %5, i64 0, i32 9
  %33 = load i24, ptr %32, align 1
  %34 = trunc i24 %33 to i8
  switch i8 %34, label %39 [
    i8 3, label %35
    i8 4, label %36
    i8 1, label %37
    i8 2, label %38
  ]

35:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.187, ptr noundef nonnull %31)
  br label %39

36:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.188, ptr noundef nonnull %31)
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef %11)
  br label %39

37:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.196, ptr noundef nonnull %31)
  br label %39

38:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.189, ptr noundef nonnull %31)
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.190, i32 noundef %11)
  br label %39

39:                                               ; preds = %38, %37, %36, %35, %25
  %40 = load ptr, ptr %28, align 8, !tbaa !43
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.action, ptr %40, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef %44)
  br label %45

45:                                               ; preds = %42, %39
  tail call void (ptr, ptr, ...) @render_opcode(ptr noundef %0, ptr noundef nonnull @.str.197)
  %46 = load ptr, ptr @render_list, align 8, !tbaa !9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %4

48:                                               ; preds = %45, %1
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @render_more(ptr noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #17 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %6 = call i32 @vfprintf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %3)
  br label %7

7:                                                ; preds = %5, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nofree nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { cold }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"_Bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !13, i64 48}
!12 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !15, i64 72, !15, i64 88, !15, i64 104, !7, i64 120}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!"timespec", !13, i64 0, !13, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!20, !18, i64 0}
!20 = !{!"token", !18, i64 0, !7, i64 2, !7, i64 3, !10, i64 8, !10, i64 16, !10, i64 24}
!21 = !{!20, !7, i64 3}
!22 = !{!20, !10, i64 16}
!23 = !{!14, !14, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{!26, !14, i64 28}
!26 = !{!"type", !10, i64 0, !10, i64 8, !10, i64 16, !14, i64 24, !14, i64 28}
!27 = !{!26, !10, i64 0}
!28 = !{!26, !10, i64 16}
!29 = !{!30, !10, i64 0}
!30 = !{!"element", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 65, !7, i64 66, !7, i64 67, !7, i64 68, !14, i64 72, !14, i64 76}
!31 = !{!32, !7, i64 16}
!32 = !{!"action", !10, i64 0, !10, i64 8, !7, i64 16}
!33 = !{!32, !10, i64 8}
!34 = !{!30, !14, i64 76}
!35 = !{!30, !10, i64 56}
!36 = !{!30, !7, i64 68}
!37 = !{!30, !10, i64 8}
!38 = !{!30, !10, i64 32}
!39 = !{!30, !10, i64 16}
!40 = !{!20, !10, i64 24}
!41 = !{!26, !14, i64 24}
!42 = !{!32, !10, i64 0}
!43 = !{!30, !10, i64 24}
!44 = !{!20, !10, i64 8}
!45 = !{!30, !14, i64 72}
!46 = !{!30, !10, i64 48}
