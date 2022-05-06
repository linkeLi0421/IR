; ModuleID = '/llk/IR/lib/string_helpers.c_pt.bc'
source_filename = "../lib/string_helpers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_string_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22string_get_size\22\09\09\09\09\09"
module asm "__kstrtabns_string_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_string_unescape:\09\09\09\09\09"
module asm "\09.asciz \09\22string_unescape\22\09\09\09\09\09"
module asm "__kstrtabns_string_unescape:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_string_escape_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22string_escape_mem\22\09\09\09\09\09"
module asm "__kstrtabns_string_escape_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_quotable:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_quotable\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_quotable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_quotable_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_quotable_cmdline\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_quotable_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_quotable_file:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_quotable_file\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_quotable_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22kasprintf_strarray\22\09\09\09\09\09"
module asm "__kstrtabns_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_strarray\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kasprintf_strarray\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strscpy_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22strscpy_pad\22\09\09\09\09\09"
module asm "__kstrtabns_strscpy_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skip_spaces:\09\09\09\09\09"
module asm "\09.asciz \09\22skip_spaces\22\09\09\09\09\09"
module asm "__kstrtabns_skip_spaces:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strim:\09\09\09\09\09"
module asm "\09.asciz \09\22strim\22\09\09\09\09\09"
module asm "__kstrtabns_strim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_streq:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_streq\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_streq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22match_string\22\09\09\09\09\09"
module asm "__kstrtabns_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sysfs_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22__sysfs_match_string\22\09\09\09\09\09"
module asm "__kstrtabns___sysfs_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strreplace:\09\09\09\09\09"
module asm "\09.asciz \09\22strreplace\22\09\09\09\09\09"
module asm "__kstrtabns_strreplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memcpy_and_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22memcpy_and_pad\22\09\09\09\09\09"
module asm "__kstrtabns_memcpy_and_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.strarray = type { ptr, i32 }

@string_get_size.units_10 = internal constant [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4
@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"kB\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"EB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ZB\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"YB\00", align 1
@string_get_size.units_2 = internal constant [9 x ptr] [ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"TiB\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"PiB\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"EiB\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ZiB\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"YiB\00", align 1
@string_get_size.units_str = internal unnamed_addr constant [2 x ptr] [ptr @string_get_size.units_10, ptr @string_get_size.units_2], align 4
@string_get_size.divisor = internal unnamed_addr constant [2 x i32] [i32 1000, i32 1024], align 4
@string_get_size.rounding = internal unnamed_addr constant [3 x i32] [i32 500, i32 50, i32 5], align 4
@.str.17 = private unnamed_addr constant [6 x i8] c".%03u\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"UNK\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%u%s %s\00", align 1
@__kstrtab_string_get_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_string_get_size = external dso_local constant [0 x i8], align 1
@__ksymtab_string_get_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @string_get_size to i32), ptr @__kstrtab_string_get_size, ptr @__kstrtabns_string_get_size }, section "___ksymtab+string_get_size", align 4
@__kstrtab_string_unescape = external dso_local constant [0 x i8], align 1
@__kstrtabns_string_unescape = external dso_local constant [0 x i8], align 1
@__ksymtab_string_unescape = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @string_unescape to i32), ptr @__kstrtab_string_unescape, ptr @__kstrtabns_string_unescape }, section "___ksymtab+string_unescape", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_string_escape_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_string_escape_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_string_escape_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @string_escape_mem to i32), ptr @__kstrtab_string_escape_mem, ptr @__kstrtabns_string_escape_mem }, section "___ksymtab+string_escape_mem", align 4
@__const.kstrdup_quotable.esc = private unnamed_addr constant [10 x i8] c"\0C\0A\0D\09\0B\07\1B\\\22\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"lib/string_helpers.c\00", align 1
@__kstrtab_kstrdup_quotable = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_quotable = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_quotable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_quotable to i32), ptr @__kstrtab_kstrdup_quotable, ptr @__kstrtabns_kstrdup_quotable }, section "___ksymtab_gpl+kstrdup_quotable", align 4
@__kstrtab_kstrdup_quotable_cmdline = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_quotable_cmdline = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_quotable_cmdline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_quotable_cmdline to i32), ptr @__kstrtab_kstrdup_quotable_cmdline, ptr @__kstrtabns_kstrdup_quotable_cmdline }, section "___ksymtab_gpl+kstrdup_quotable_cmdline", align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"<no_memory>\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"<too_long>\00", align 1
@__kstrtab_kstrdup_quotable_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_quotable_file = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_quotable_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_quotable_file to i32), ptr @__kstrtab_kstrdup_quotable_file, ptr @__kstrtabns_kstrdup_quotable_file }, section "___ksymtab_gpl+kstrdup_quotable_file", align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"%s-%zu\00", align 1
@__kstrtab_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__ksymtab_kasprintf_strarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasprintf_strarray to i32), ptr @__kstrtab_kasprintf_strarray, ptr @__kstrtabns_kasprintf_strarray }, section "___ksymtab_gpl+kasprintf_strarray", align 4
@__kstrtab_kfree_strarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_strarray = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_strarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_strarray to i32), ptr @__kstrtab_kfree_strarray, ptr @__kstrtabns_kfree_strarray }, section "___ksymtab_gpl+kfree_strarray", align 4
@.str.25 = private unnamed_addr constant [20 x i8] c"devm_kfree_strarray\00", align 1
@__kstrtab_devm_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kasprintf_strarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kasprintf_strarray to i32), ptr @__kstrtab_devm_kasprintf_strarray, ptr @__kstrtabns_devm_kasprintf_strarray }, section "___ksymtab_gpl+devm_kasprintf_strarray", align 4
@__kstrtab_strscpy_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns_strscpy_pad = external dso_local constant [0 x i8], align 1
@__ksymtab_strscpy_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strscpy_pad to i32), ptr @__kstrtab_strscpy_pad, ptr @__kstrtabns_strscpy_pad }, section "___ksymtab+strscpy_pad", align 4
@__kstrtab_skip_spaces = external dso_local constant [0 x i8], align 1
@__kstrtabns_skip_spaces = external dso_local constant [0 x i8], align 1
@__ksymtab_skip_spaces = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skip_spaces to i32), ptr @__kstrtab_skip_spaces, ptr @__kstrtabns_skip_spaces }, section "___ksymtab+skip_spaces", align 4
@__kstrtab_strim = external dso_local constant [0 x i8], align 1
@__kstrtabns_strim = external dso_local constant [0 x i8], align 1
@__ksymtab_strim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strim to i32), ptr @__kstrtab_strim, ptr @__kstrtabns_strim }, section "___ksymtab+strim", align 4
@__kstrtab_sysfs_streq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_streq = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_streq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_streq to i32), ptr @__kstrtab_sysfs_streq, ptr @__kstrtabns_sysfs_streq }, section "___ksymtab+sysfs_streq", align 4
@__kstrtab_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_string to i32), ptr @__kstrtab_match_string, ptr @__kstrtabns_match_string }, section "___ksymtab+match_string", align 4
@__kstrtab___sysfs_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns___sysfs_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab___sysfs_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sysfs_match_string to i32), ptr @__kstrtab___sysfs_match_string, ptr @__kstrtabns___sysfs_match_string }, section "___ksymtab+__sysfs_match_string", align 4
@__kstrtab_strreplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_strreplace = external dso_local constant [0 x i8], align 1
@__ksymtab_strreplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strreplace to i32), ptr @__kstrtab_strreplace, ptr @__kstrtabns_strreplace }, section "___ksymtab+strreplace", align 4
@__kstrtab_memcpy_and_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns_memcpy_and_pad = external dso_local constant [0 x i8], align 1
@__ksymtab_memcpy_and_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memcpy_and_pad to i32), ptr @__kstrtab_memcpy_and_pad, ptr @__kstrtabns_memcpy_and_pad }, section "___ksymtab+memcpy_and_pad", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab___sysfs_match_string, ptr @__ksymtab_devm_kasprintf_strarray, ptr @__ksymtab_kasprintf_strarray, ptr @__ksymtab_kfree_strarray, ptr @__ksymtab_kstrdup_quotable, ptr @__ksymtab_kstrdup_quotable_cmdline, ptr @__ksymtab_kstrdup_quotable_file, ptr @__ksymtab_match_string, ptr @__ksymtab_memcpy_and_pad, ptr @__ksymtab_skip_spaces, ptr @__ksymtab_strim, ptr @__ksymtab_string_escape_mem, ptr @__ksymtab_string_get_size, ptr @__ksymtab_string_unescape, ptr @__ksymtab_strreplace, ptr @__ksymtab_strscpy_pad, ptr @__ksymtab_sysfs_streq], section "llvm.metadata"
@switch.table.string_unescape = private unnamed_addr constant [9 x i8] c"\0C\0A\0A\0A\0A\0A\0D\09\0B", align 1
@switch.table.string_escape_mem = private unnamed_addr constant [5 x i8] c"tnvfr", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @string_get_size(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = icmp eq i64 %1, 0
  %8 = icmp eq i64 %0, 0
  %9 = or i1 %8, %7
  br i1 %9, label %99, label %10

10:                                               ; preds = %5
  %11 = icmp ult i64 %1, 4294967296
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = getelementptr [2 x i32], ptr @string_get_size.divisor, i32 0, i32 %2
  %14 = load i32, ptr %13, align 4
  br label %23

15:                                               ; preds = %23
  %16 = extractvalue { i64, i64 } %26, 1
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i64 [ %1, %10 ], [ %16, %15 ]
  %19 = phi i32 [ 0, %10 ], [ %28, %15 ]
  %20 = icmp ult i64 %0, 4294967296
  %21 = getelementptr [2 x i32], ptr @string_get_size.divisor, i32 0, i32 %2
  %22 = load i32, ptr %21, align 4
  br i1 %20, label %39, label %30

23:                                               ; preds = %23, %12
  %24 = phi i32 [ 0, %12 ], [ %28, %23 ]
  %25 = phi i64 [ %1, %12 ], [ %27, %23 ]
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %25) #16, !srcloc !9
  %27 = extractvalue { i64, i64 } %26, 1
  %28 = add i32 %24, 1
  %29 = icmp ult i64 %27, 4294967296
  br i1 %29, label %15, label %23

30:                                               ; preds = %30, %17
  %31 = phi i32 [ %35, %30 ], [ %19, %17 ]
  %32 = phi i64 [ %34, %30 ], [ %0, %17 ]
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %32) #16, !srcloc !9
  %34 = extractvalue { i64, i64 } %33, 1
  %35 = add i32 %31, 1
  %36 = icmp ult i64 %34, 4294967296
  br i1 %36, label %37, label %30

37:                                               ; preds = %30
  %38 = extractvalue { i64, i64 } %33, 1
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi i64 [ %0, %17 ], [ %38, %37 ]
  %41 = phi i32 [ %19, %17 ], [ %35, %37 ]
  %42 = zext i32 %22 to i64
  %43 = mul i64 %40, %18
  %44 = icmp ult i64 %43, %42
  br i1 %44, label %68, label %45

45:                                               ; preds = %63, %39
  %46 = phi i32 [ %66, %63 ], [ %41, %39 ]
  %47 = phi i64 [ %64, %63 ], [ %43, %39 ]
  %48 = icmp ult i64 %47, 4294967296
  br i1 %48, label %49, label %57, !prof !10

49:                                               ; preds = %45
  %50 = trunc i64 %47 to i32
  %51 = freeze i32 %50
  %52 = freeze i32 %22
  %53 = udiv i32 %51, %52
  %54 = mul i32 %53, %52
  %55 = sub i32 %51, %54
  %56 = zext i32 %53 to i64
  br label %63

57:                                               ; preds = %45
  %58 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %47) #16, !srcloc !9
  %59 = extractvalue { i64, i64 } %58, 0
  %60 = extractvalue { i64, i64 } %58, 1
  %61 = lshr i64 %59, 32
  %62 = trunc i64 %61 to i32
  br label %63

63:                                               ; preds = %57, %49
  %64 = phi i64 [ %56, %49 ], [ %60, %57 ]
  %65 = phi i32 [ %55, %49 ], [ %62, %57 ]
  %66 = add i32 %46, 1
  %67 = icmp ult i64 %64, %42
  br i1 %67, label %68, label %45

68:                                               ; preds = %63, %39
  %69 = phi i64 [ %43, %39 ], [ %64, %63 ]
  %70 = phi i32 [ 0, %39 ], [ %65, %63 ]
  %71 = phi i32 [ %41, %39 ], [ %66, %63 ]
  %72 = trunc i64 %69 to i32
  br label %73

73:                                               ; preds = %73, %68
  %74 = phi i32 [ %72, %68 ], [ %76, %73 ]
  %75 = phi i32 [ 0, %68 ], [ %78, %73 ]
  %76 = mul i32 %74, 10
  %77 = icmp ult i32 %76, 1000
  %78 = add i32 %75, 1
  br i1 %77, label %73, label %79

79:                                               ; preds = %73
  %80 = icmp eq i32 %2, 1
  %81 = mul i32 %70, 1000
  %82 = lshr i32 %81, 10
  %83 = select i1 %80, i32 %82, i32 %70
  %84 = getelementptr [3 x i32], ptr @string_get_size.rounding, i32 0, i32 %75
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %83
  %87 = icmp ugt i32 %86, 999
  %88 = zext i1 %87 to i64
  %89 = add i64 %69, %88
  %90 = icmp eq i32 %75, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %79
  %92 = add i32 %86, -1000
  %93 = select i1 %87, i32 %92, i32 %86
  %94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %93)
  %95 = getelementptr [8 x i8], ptr %6, i32 0, i32 %78
  store i8 0, ptr %95, align 1
  br label %96

96:                                               ; preds = %91, %79
  %97 = icmp ugt i32 %71, 8
  %98 = trunc i64 %89 to i32
  br i1 %97, label %106, label %99

99:                                               ; preds = %96, %5
  %100 = phi i32 [ %71, %96 ], [ 0, %5 ]
  %101 = phi i32 [ %98, %96 ], [ 0, %5 ]
  %102 = getelementptr [2 x ptr], ptr @string_get_size.units_str, i32 0, i32 %2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr ptr, ptr %103, i32 %100
  %105 = load ptr, ptr %104, align 4
  br label %106

106:                                              ; preds = %99, %96
  %107 = phi i32 [ %101, %99 ], [ %98, %96 ]
  %108 = phi ptr [ %105, %99 ], [ @.str.18, %96 ]
  %109 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef %4, ptr noundef nonnull @.str.19, i32 noundef %107, ptr noundef nonnull %6, ptr noundef %108)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @string_unescape(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %124, label %7

7:                                                ; preds = %4
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %3, 2
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %3, 4
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %3, 8
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %118, %7
  %17 = phi i8 [ %5, %7 ], [ %122, %118 ]
  %18 = phi i32 [ %2, %7 ], [ %121, %118 ]
  %19 = phi ptr [ %1, %7 ], [ %120, %118 ]
  %20 = phi ptr [ %0, %7 ], [ %119, %118 ]
  %21 = add i32 %18, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %124, label %23

23:                                               ; preds = %16
  %24 = icmp eq i8 %17, 92
  br i1 %24, label %25, label %111

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %20, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 0
  %29 = icmp ugt i32 %21, 1
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %111

31:                                               ; preds = %25
  %32 = add i32 %18, -2
  br i1 %9, label %48, label %33

33:                                               ; preds = %31
  %34 = zext i8 %27 to i32
  %35 = add nsw i32 %34, -102
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 31) #15
  %37 = icmp ult i32 %36, 9
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = trunc i32 %36 to i16
  %40 = lshr i16 465, %39
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds [9 x i8], ptr @switch.table.string_unescape, i32 0, i32 %36
  %45 = load i8, ptr %44, align 1
  store i8 %45, ptr %19, align 1
  %46 = getelementptr i8, ptr %19, i32 1
  %47 = getelementptr i8, ptr %20, i32 2
  br label %118

48:                                               ; preds = %38, %33, %31
  %49 = and i8 %27, -8
  %50 = icmp eq i8 %49, 48
  %51 = select i1 %11, i1 %50, i1 false
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = and i8 %27, 7
  %54 = getelementptr i8, ptr %20, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, -8
  %57 = icmp eq i8 %56, 48
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = shl nuw nsw i8 %53, 3
  %60 = and i8 %55, 7
  %61 = or i8 %60, %59
  %62 = getelementptr i8, ptr %20, i32 3
  %63 = icmp ult i8 %61, 32
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load i8, ptr %62, align 1
  %66 = and i8 %65, -8
  %67 = icmp eq i8 %66, 48
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = shl nuw i8 %61, 3
  %70 = and i8 %65, 7
  %71 = or i8 %70, %69
  %72 = getelementptr i8, ptr %20, i32 4
  br label %73

73:                                               ; preds = %68, %64, %58, %52
  %74 = phi i8 [ %61, %58 ], [ %53, %52 ], [ %61, %64 ], [ %71, %68 ]
  %75 = phi ptr [ %62, %58 ], [ %54, %52 ], [ %62, %64 ], [ %72, %68 ]
  store i8 %74, ptr %19, align 1
  %76 = getelementptr i8, ptr %19, i32 1
  br label %118

77:                                               ; preds = %48
  br i1 %13, label %98, label %78

78:                                               ; preds = %77
  %79 = load i8, ptr %26, align 1
  %80 = icmp eq i8 %79, 120
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = getelementptr i8, ptr %20, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = tail call i32 @hex_to_bin(i8 noundef zeroext %83) #15
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %20, i32 3
  %88 = load i8, ptr %87, align 1
  %89 = tail call i32 @hex_to_bin(i8 noundef zeroext %88) #15
  %90 = icmp sgt i32 %89, -1
  %91 = getelementptr i8, ptr %20, i32 4
  %92 = shl i32 %84, 4
  %93 = or i32 %89, %92
  %94 = select i1 %90, ptr %91, ptr %87
  %95 = select i1 %90, i32 %93, i32 %84
  %96 = trunc i32 %95 to i8
  store i8 %96, ptr %19, align 1
  %97 = getelementptr i8, ptr %19, i32 1
  br label %118

98:                                               ; preds = %81, %78, %77
  br i1 %15, label %108, label %99

99:                                               ; preds = %98
  %100 = load i8, ptr %26, align 1
  switch i8 %100, label %108 [
    i8 34, label %104
    i8 92, label %101
    i8 97, label %102
    i8 101, label %103
  ]

101:                                              ; preds = %99
  br label %104

102:                                              ; preds = %99
  br label %104

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %103, %102, %101, %99
  %105 = phi i8 [ 27, %103 ], [ 7, %102 ], [ 92, %101 ], [ %100, %99 ]
  store i8 %105, ptr %19, align 1
  %106 = getelementptr i8, ptr %19, i32 1
  %107 = getelementptr i8, ptr %20, i32 2
  br label %118

108:                                              ; preds = %99, %98
  %109 = getelementptr i8, ptr %19, i32 1
  store i8 92, ptr %19, align 1
  %110 = load i8, ptr %26, align 1
  br label %111

111:                                              ; preds = %108, %25, %23
  %112 = phi i8 [ %110, %108 ], [ 92, %25 ], [ %17, %23 ]
  %113 = phi ptr [ %26, %108 ], [ %20, %25 ], [ %20, %23 ]
  %114 = phi ptr [ %109, %108 ], [ %19, %25 ], [ %19, %23 ]
  %115 = phi i32 [ %32, %108 ], [ %21, %25 ], [ %21, %23 ]
  %116 = getelementptr i8, ptr %113, i32 1
  %117 = getelementptr i8, ptr %114, i32 1
  store i8 %112, ptr %114, align 1
  br label %118

118:                                              ; preds = %111, %104, %86, %73, %43
  %119 = phi ptr [ %116, %111 ], [ %107, %104 ], [ %94, %86 ], [ %75, %73 ], [ %47, %43 ]
  %120 = phi ptr [ %117, %111 ], [ %106, %104 ], [ %97, %86 ], [ %76, %73 ], [ %46, %43 ]
  %121 = phi i32 [ %115, %111 ], [ %32, %104 ], [ %32, %86 ], [ %32, %73 ], [ %32, %43 ]
  %122 = load i8, ptr %119, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %16

124:                                              ; preds = %118, %16, %4
  %125 = phi ptr [ %1, %4 ], [ %120, %118 ], [ %19, %16 ]
  store i8 0, ptr %125, align 1
  %126 = ptrtoint ptr %125 to i32
  %127 = ptrtoint ptr %1 to i32
  %128 = sub i32 %126, %127
  ret i32 %128
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @string_escape_mem(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5) #4 {
  %7 = getelementptr i8, ptr %2, i32 %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %5, align 1
  %11 = icmp ne i8 %10, 0
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  %14 = and i32 %4, 256
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %184, label %17

17:                                               ; preds = %12
  %18 = xor i1 %15, true
  %19 = xor i1 %13, true
  %20 = and i32 %4, 128
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %4, 16
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %4, 64
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %4, 1
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %4, 2
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %4, 4
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %4, 8
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %4, 32
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %180, %17
  %37 = phi i32 [ %1, %17 ], [ %40, %180 ]
  %38 = phi ptr [ %0, %17 ], [ %41, %180 ]
  %39 = phi ptr [ %2, %17 ], [ %182, %180 ]
  %40 = add i32 %37, -1
  %41 = getelementptr i8, ptr %38, i32 1
  %42 = load i8, ptr %38, align 1
  br i1 %13, label %43, label %52

43:                                               ; preds = %36
  %44 = zext i8 %42 to i32
  %45 = tail call ptr @strchr(ptr noundef %5, i32 noundef %44)
  %46 = icmp ne ptr %45, null
  %47 = select i1 %18, i1 true, i1 %46
  %48 = select i1 %47, i1 true, i1 %19
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = icmp ult ptr %39, %7
  br i1 %50, label %51, label %180

51:                                               ; preds = %49
  store i8 %42, ptr %39, align 1
  br label %180

52:                                               ; preds = %43, %36
  %53 = phi i1 [ %46, %43 ], [ false, %36 ]
  br i1 %15, label %58, label %54

54:                                               ; preds = %52
  %55 = xor i1 %53, true
  %56 = icmp sgt i8 %42, -1
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %60, label %73

58:                                               ; preds = %52
  %59 = icmp sgt i8 %42, -1
  br i1 %59, label %60, label %74

60:                                               ; preds = %58, %54
  %61 = zext i8 %42 to i32
  %62 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, -105
  %65 = icmp eq i8 %64, 0
  %66 = or i1 %21, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = icmp ult ptr %39, %7
  br i1 %68, label %69, label %180

69:                                               ; preds = %67
  store i8 %42, ptr %39, align 1
  br label %180

70:                                               ; preds = %60
  %71 = xor i1 %53, true
  %72 = select i1 %15, i1 true, i1 %71
  br i1 %72, label %74, label %85

73:                                               ; preds = %54
  br i1 %53, label %96, label %74

74:                                               ; preds = %73, %70, %58
  %75 = phi i1 [ %53, %58 ], [ %53, %70 ], [ false, %73 ]
  %76 = zext i8 %42 to i32
  %77 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = and i8 %78, -105
  %80 = icmp eq i8 %79, 0
  %81 = or i1 %23, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = icmp ult ptr %39, %7
  br i1 %83, label %84, label %180

84:                                               ; preds = %82
  store i8 %42, ptr %39, align 1
  br label %180

85:                                               ; preds = %74, %70
  %86 = phi i1 [ %53, %70 ], [ %75, %74 ]
  %87 = icmp slt i8 %42, 0
  br i1 %15, label %91, label %88

88:                                               ; preds = %85
  %89 = select i1 %86, i1 true, i1 %87
  %90 = or i1 %89, %25
  br i1 %90, label %96, label %93

91:                                               ; preds = %85
  %92 = or i1 %87, %25
  br i1 %92, label %96, label %93

93:                                               ; preds = %91, %88
  %94 = icmp ult ptr %39, %7
  br i1 %94, label %95, label %180

95:                                               ; preds = %93
  store i8 %42, ptr %39, align 1
  br label %180

96:                                               ; preds = %91, %88, %73
  br i1 %27, label %110, label %97

97:                                               ; preds = %96
  %98 = add i8 %42, -9
  %99 = icmp ult i8 %98, 5
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = sext i8 %98 to i32
  %102 = getelementptr inbounds [5 x i8], ptr @switch.table.string_escape_mem, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = icmp ult ptr %39, %7
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i8 92, ptr %39, align 1
  br label %106

106:                                              ; preds = %105, %100
  %107 = getelementptr i8, ptr %39, i32 1
  %108 = icmp ult ptr %107, %7
  br i1 %108, label %109, label %180

109:                                              ; preds = %106
  store i8 %103, ptr %107, align 1
  br label %180

110:                                              ; preds = %97, %96
  br i1 %29, label %123, label %111

111:                                              ; preds = %110
  switch i8 %42, label %123 [
    i8 92, label %115
    i8 7, label %112
    i8 27, label %113
    i8 34, label %114
  ]

112:                                              ; preds = %111
  br label %115

113:                                              ; preds = %111
  br label %115

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %113, %112, %111
  %116 = phi i8 [ 34, %114 ], [ 101, %113 ], [ 97, %112 ], [ %42, %111 ]
  %117 = icmp ult ptr %39, %7
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i8 92, ptr %39, align 1
  br label %119

119:                                              ; preds = %118, %115
  %120 = getelementptr i8, ptr %39, i32 1
  %121 = icmp ult ptr %120, %7
  br i1 %121, label %122, label %180

122:                                              ; preds = %119
  store i8 %116, ptr %120, align 1
  br label %180

123:                                              ; preds = %111, %110
  %124 = icmp eq i8 %42, 0
  %125 = select i1 %31, i1 %124, i1 false
  %126 = icmp ult ptr %39, %7
  br i1 %125, label %127, label %133

127:                                              ; preds = %123
  br i1 %126, label %128, label %129

128:                                              ; preds = %127
  store i8 92, ptr %39, align 1
  br label %129

129:                                              ; preds = %128, %127
  %130 = getelementptr i8, ptr %39, i32 1
  %131 = icmp ult ptr %130, %7
  br i1 %131, label %132, label %180

132:                                              ; preds = %129
  store i8 48, ptr %130, align 1
  br label %180

133:                                              ; preds = %123
  br i1 %33, label %155, label %134

134:                                              ; preds = %133
  br i1 %126, label %135, label %136

135:                                              ; preds = %134
  store i8 92, ptr %39, align 1
  br label %136

136:                                              ; preds = %135, %134
  %137 = getelementptr i8, ptr %39, i32 1
  %138 = icmp ult ptr %137, %7
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = lshr i8 %42, 6
  %141 = or i8 %140, 48
  store i8 %141, ptr %137, align 1
  br label %142

142:                                              ; preds = %139, %136
  %143 = getelementptr i8, ptr %39, i32 2
  %144 = icmp ult ptr %143, %7
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = lshr i8 %42, 3
  %147 = and i8 %146, 7
  %148 = or i8 %147, 48
  store i8 %148, ptr %143, align 1
  br label %149

149:                                              ; preds = %145, %142
  %150 = getelementptr i8, ptr %39, i32 3
  %151 = icmp ult ptr %150, %7
  br i1 %151, label %152, label %180

152:                                              ; preds = %149
  %153 = and i8 %42, 7
  %154 = or i8 %153, 48
  store i8 %154, ptr %150, align 1
  br label %180

155:                                              ; preds = %133
  br i1 %35, label %178, label %156

156:                                              ; preds = %155
  br i1 %126, label %157, label %158

157:                                              ; preds = %156
  store i8 92, ptr %39, align 1
  br label %158

158:                                              ; preds = %157, %156
  %159 = getelementptr i8, ptr %39, i32 1
  %160 = icmp ult ptr %159, %7
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i8 120, ptr %159, align 1
  br label %162

162:                                              ; preds = %161, %158
  %163 = getelementptr i8, ptr %39, i32 2
  %164 = icmp ult ptr %163, %7
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = lshr i8 %42, 4
  %167 = zext i8 %166 to i32
  %168 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %167
  %169 = load i8, ptr %168, align 1
  store i8 %169, ptr %163, align 1
  br label %170

170:                                              ; preds = %165, %162
  %171 = getelementptr i8, ptr %39, i32 3
  %172 = icmp ult ptr %171, %7
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = and i8 %42, 15
  %175 = zext i8 %174 to i32
  %176 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %175
  %177 = load i8, ptr %176, align 1
  store i8 %177, ptr %171, align 1
  br label %180

178:                                              ; preds = %155
  br i1 %126, label %179, label %180

179:                                              ; preds = %178
  store i8 %42, ptr %39, align 1
  br label %180

180:                                              ; preds = %179, %178, %173, %170, %152, %149, %132, %129, %122, %119, %109, %106, %95, %93, %84, %82, %69, %67, %51, %49
  %181 = phi i32 [ 1, %49 ], [ 1, %51 ], [ 1, %67 ], [ 1, %69 ], [ 1, %82 ], [ 1, %84 ], [ 1, %93 ], [ 1, %95 ], [ 2, %106 ], [ 2, %109 ], [ 2, %119 ], [ 2, %122 ], [ 2, %129 ], [ 2, %132 ], [ 4, %149 ], [ 4, %152 ], [ 4, %170 ], [ 4, %173 ], [ 1, %178 ], [ 1, %179 ]
  %182 = getelementptr i8, ptr %39, i32 %181
  %183 = icmp eq i32 %40, 0
  br i1 %183, label %184, label %36

184:                                              ; preds = %180, %12
  %185 = phi ptr [ %2, %12 ], [ %182, %180 ]
  %186 = ptrtoint ptr %185 to i32
  %187 = ptrtoint ptr %2 to i32
  %188 = sub i32 %186, %187
  ret i32 %188
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kstrdup_quotable(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @__const.kstrdup_quotable.esc, i32 10, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strlen(ptr noundef nonnull %0)
  %7 = call i32 @string_escape_mem(ptr noundef nonnull %0, i32 noundef %6, ptr noundef null, i32 noundef 0, i32 noundef 32, ptr noundef nonnull %3)
  %8 = add i32 %7, 1
  %9 = call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef %1) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = call i32 @string_escape_mem(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %9, i32 noundef %7, i32 noundef 32, ptr noundef nonnull %3)
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %15, label %14, !prof !10

14:                                               ; preds = %11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 610, i32 noundef 9, ptr noundef null) #15
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr i8, ptr %9, i32 %7
  store i8 0, ptr %16, align 1
  br label %17

17:                                               ; preds = %15, %5, %2
  %18 = phi ptr [ %9, %15 ], [ null, %2 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #15
  ret ptr %18
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kstrdup_quotable_cmdline(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 4096) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @get_cmdline(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4095) #15
  %8 = getelementptr i8, ptr %4, i32 %7
  store i8 0, ptr %8, align 1
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi i32 [ %7, %6 ], [ %11, %13 ]
  %11 = add i32 %10, -1
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %4, i32 %11
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17

17:                                               ; preds = %23, %13
  %18 = phi i32 [ %24, %23 ], [ 0, %13 ]
  %19 = getelementptr i8, ptr %4, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8 32, ptr %19, align 1
  br label %23

23:                                               ; preds = %22, %17
  %24 = add i32 %18, 1
  %25 = icmp sgt i32 %24, %11
  br i1 %25, label %26, label %17

26:                                               ; preds = %23, %9
  %27 = tail call ptr @kstrdup_quotable(ptr noundef nonnull %4, i32 noundef %1)
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_cmdline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kstrdup_quotable_file(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.21, i32 noundef %1) #15
  br label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 4107) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.22, i32 noundef %1) #15
  br label %21

12:                                               ; preds = %6
  %13 = tail call ptr @file_path(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef 4107) #15
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.23, i32 noundef %1) #15
  br label %19

17:                                               ; preds = %12
  %18 = tail call ptr @kstrdup_quotable(ptr noundef %13, i32 noundef %1)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  tail call void @kfree(ptr noundef nonnull %8) #15
  br label %21

21:                                               ; preds = %19, %10, %4
  %22 = phi ptr [ %20, %19 ], [ %11, %10 ], [ %5, %4 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kasprintf_strarray(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %2, 1
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #15
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %31, label %7, !prof !11

7:                                                ; preds = %3
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = or i32 %0, 256
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef %9) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %28, %12
  %15 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %16 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef %0, ptr noundef nonnull @.str.24, ptr noundef %1, i32 noundef %15) #15
  %17 = getelementptr ptr, ptr %10, i32 %15
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %25, %21 ], [ 0, %19 ]
  %23 = getelementptr ptr, ptr %10, i32 %22
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #15
  %25 = add nuw i32 %22, 1
  %26 = icmp eq i32 %25, %15
  br i1 %26, label %27, label %21

27:                                               ; preds = %21, %19
  tail call void @kfree(ptr noundef nonnull %10) #15
  br label %31

28:                                               ; preds = %14
  %29 = add nuw i32 %15, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %14

31:                                               ; preds = %28, %27, %12, %7, %3
  %32 = phi ptr [ null, %27 ], [ null, %7 ], [ null, %3 ], [ %10, %12 ], [ %10, %28 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_strarray(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %10, %6 ], [ 0, %4 ]
  %8 = getelementptr ptr, ptr %0, i32 %7
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #15
  %10 = add nuw i32 %7, 1
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %4
  tail call void @kfree(ptr noundef nonnull %0) #15
  br label %13

13:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_kasprintf_strarray(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_kfree_strarray, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.25) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = add i32 %2, 1
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #15
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %33, label %10, !prof !11

10:                                               ; preds = %6
  %11 = extractvalue { i32, i1 } %8, 0
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %30, %14
  %17 = phi i32 [ %31, %30 ], [ 0, %14 ]
  %18 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %1, i32 noundef %17) #15
  %19 = getelementptr ptr, ptr %12, i32 %17
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %27, %23 ], [ 0, %21 ]
  %25 = getelementptr ptr, ptr %12, i32 %24
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #15
  %27 = add nuw i32 %24, 1
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %29, label %23

29:                                               ; preds = %23, %21
  tail call void @kfree(ptr noundef nonnull %12) #15
  br label %33

30:                                               ; preds = %16
  %31 = add nuw i32 %17, 1
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %34, label %16

33:                                               ; preds = %29, %10, %6
  store ptr null, ptr %4, align 4
  tail call void @devres_free(ptr noundef nonnull %4) #15
  br label %35

34:                                               ; preds = %30, %14
  store ptr %12, ptr %4, align 4
  br label %35

35:                                               ; preds = %34, %33, %3
  %36 = phi ptr [ inttoptr (i32 -12 to ptr), %33 ], [ %12, %34 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_kfree_strarray(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.strarray, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %11 = getelementptr ptr, ptr %3, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #15
  %13 = add nuw i32 %10, 1
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %7
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strscpy_pad(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @strscpy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #15
  %5 = icmp slt i32 %4, 0
  %6 = add i32 %2, -1
  %7 = icmp eq i32 %4, %6
  %8 = or i1 %5, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 %4
  %11 = getelementptr i8, ptr %10, i32 1
  %12 = xor i32 %4, -1
  %13 = add i32 %12, %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %11, i8 0, i32 %13, i1 false)
  br label %14

14:                                               ; preds = %9, %3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @skip_spaces(ptr noundef readonly %0) #8 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %2 ]
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr i8, ptr %3, i32 1
  br i1 %9, label %11, label %2

11:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strim(ptr noundef %0) #4 {
  %2 = tail call i32 @strlen(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 %2
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = getelementptr i8, ptr %7, i32 -1
  %9 = icmp ult ptr %8, %0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6

17:                                               ; preds = %10, %6
  store i8 0, ptr %7, align 1
  br label %18

18:                                               ; preds = %18, %17
  %19 = phi ptr [ %0, %17 ], [ %26, %18 ]
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr i8, ptr %19, i32 1
  br i1 %25, label %27, label %18

27:                                               ; preds = %18, %1
  %28 = phi ptr [ %0, %1 ], [ %19, %18 ]
  ret ptr %28
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @sysfs_streq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %11, %2
  %6 = phi i8 [ %14, %11 ], [ %3, %2 ]
  %7 = phi ptr [ %13, %11 ], [ %1, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %9 = load i8, ptr %7, align 1
  %10 = icmp eq i8 %6, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = getelementptr i8, ptr %7, i32 1
  %14 = load i8, ptr %12, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %5

16:                                               ; preds = %11, %2
  %17 = phi ptr [ %0, %2 ], [ %12, %11 ]
  %18 = phi ptr [ %1, %2 ], [ %13, %11 ]
  %19 = load i8, ptr %18, align 1
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi ptr [ %17, %16 ], [ %8, %5 ]
  %22 = phi ptr [ %18, %16 ], [ %7, %5 ]
  %23 = phi i8 [ 0, %16 ], [ %6, %5 ]
  %24 = phi i1 [ true, %16 ], [ false, %5 ]
  %25 = phi i8 [ %19, %16 ], [ %9, %5 ]
  %26 = icmp eq i8 %23, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %20
  %28 = icmp eq i8 %25, 10
  %29 = select i1 %24, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %22, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %42

34:                                               ; preds = %27
  %35 = icmp eq i8 %23, 10
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %21, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  %40 = icmp eq i8 %25, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %34, %30
  br label %43

43:                                               ; preds = %42, %36, %30, %20
  %44 = phi i1 [ false, %42 ], [ true, %20 ], [ true, %30 ], [ true, %36 ]
  ret i1 %44
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @match_string(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %13, %3
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @strcmp(ptr noundef nonnull %8, ptr noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = add nuw i32 %6, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %10, %5, %3
  %17 = phi i32 [ -22, %3 ], [ -22, %13 ], [ -22, %5 ], [ %6, %10 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__sysfs_match_string(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %53, label %5

5:                                                ; preds = %50, %3
  %6 = phi i32 [ %51, %50 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %8, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %19, %10
  %14 = phi i8 [ %22, %19 ], [ %11, %10 ]
  %15 = phi ptr [ %21, %19 ], [ %2, %10 ]
  %16 = phi ptr [ %20, %19 ], [ %8, %10 ]
  %17 = load i8, ptr %15, align 1
  %18 = icmp eq i8 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %16, i32 1
  %21 = getelementptr i8, ptr %15, i32 1
  %22 = load i8, ptr %20, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13

24:                                               ; preds = %19, %10
  %25 = phi ptr [ %8, %10 ], [ %20, %19 ]
  %26 = phi ptr [ %2, %10 ], [ %21, %19 ]
  %27 = load i8, ptr %26, align 1
  br label %28

28:                                               ; preds = %24, %13
  %29 = phi ptr [ %25, %24 ], [ %16, %13 ]
  %30 = phi ptr [ %26, %24 ], [ %15, %13 ]
  %31 = phi i8 [ 0, %24 ], [ %14, %13 ]
  %32 = phi i1 [ true, %24 ], [ false, %13 ]
  %33 = phi i8 [ %27, %24 ], [ %17, %13 ]
  %34 = icmp eq i8 %31, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %28
  %36 = icmp eq i8 %33, 10
  %37 = select i1 %32, i1 %36, i1 false
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %30, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %50

42:                                               ; preds = %35
  %43 = icmp eq i8 %31, 10
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = getelementptr i8, ptr %29, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  %48 = icmp eq i8 %33, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %53, label %50

50:                                               ; preds = %44, %42, %38
  %51 = add nuw i32 %6, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %5

53:                                               ; preds = %50, %44, %38, %28, %5, %3
  %54 = phi i32 [ -22, %3 ], [ %6, %44 ], [ %6, %38 ], [ %6, %28 ], [ -22, %50 ], [ -22, %5 ]
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strreplace(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %11, %3
  %7 = phi i8 [ %13, %11 ], [ %4, %3 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %3 ]
  %9 = icmp eq i8 %7, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8 %2, ptr %8, align 1
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr i8, ptr %8, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6

15:                                               ; preds = %11, %3
  %16 = phi ptr [ %0, %3 ], [ %12, %11 ]
  ret ptr %16
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @memcpy_and_pad(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #11 {
  %6 = icmp ugt i32 %1, %3
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %2, i32 %3, i1 false)
  %8 = getelementptr i8, ptr %0, i32 %3
  %9 = trunc i32 %4 to i8
  %10 = sub i32 %1, %3
  tail call void @llvm.memset.p0.i32(ptr align 1 %8, i8 %9, i32 %10, i1 false)
  br label %12

11:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %2, i32 %1, i1 false)
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
!9 = !{i64 2148423754, i64 2148424034, i64 2148424368, i64 2148424702}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
