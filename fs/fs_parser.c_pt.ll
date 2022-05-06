; ModuleID = '/llk/IR/fs/fs_parser.c_pt.bc'
source_filename = "../fs/fs_parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_constant:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_constant\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_constant:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fs_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22__fs_parse\22\09\09\09\09\09"
module asm "__kstrtabns___fs_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_lookup_param:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_lookup_param\22\09\09\09\09\09"
module asm "__kstrtabns_fs_lookup_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_bool\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_u32\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_s32:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_s32\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_s32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_u64\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_enum:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_enum\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_enum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_string\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_blob\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_blob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_fd\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_blockdev:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_blockdev\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_blockdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_param_is_path:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_param_is_path\22\09\09\09\09\09"
module asm "__kstrtabns_fs_param_is_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.fs_parse_result = type { i8, %union.anon.64 }
%union.anon.64 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.p_log = type { ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { i64 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }

@__kstrtab_lookup_constant = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_constant = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_constant = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_constant to i32), ptr @__kstrtab_lookup_constant, ptr @__kstrtabns_lookup_constant }, section "___ksymtab+lookup_constant", align 4
@.str = private unnamed_addr constant [26 x i8] c"Deprecated parameter '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unexpected value for '%s'\00", align 1
@__kstrtab___fs_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns___fs_parse = external dso_local constant [0 x i8], align 1
@__ksymtab___fs_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fs_parse to i32), ptr @__kstrtab___fs_parse, ptr @__kstrtabns___fs_parse }, section "___ksymtab+__fs_parse", align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: not usable as path\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: Lookup failure for '%s'\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: Non-blockdev passed as '%s'\00", align 1
@__kstrtab_fs_lookup_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_lookup_param = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_lookup_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_lookup_param to i32), ptr @__kstrtab_fs_lookup_param, ptr @__kstrtabns_fs_lookup_param }, section "___ksymtab+fs_lookup_param", align 4
@bool_names = internal unnamed_addr constant [7 x %struct.constant_table] [%struct.constant_table { ptr @.str.6, i32 0 }, %struct.constant_table { ptr @.str.7, i32 1 }, %struct.constant_table { ptr @.str.8, i32 0 }, %struct.constant_table { ptr @.str.9, i32 0 }, %struct.constant_table { ptr @.str.10, i32 1 }, %struct.constant_table { ptr @.str.11, i32 1 }, %struct.constant_table zeroinitializer], align 4
@__kstrtab_fs_param_is_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_bool to i32), ptr @__kstrtab_fs_param_is_bool, ptr @__kstrtabns_fs_param_is_bool }, section "___ksymtab+fs_param_is_bool", align 4
@__kstrtab_fs_param_is_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_u32 to i32), ptr @__kstrtab_fs_param_is_u32, ptr @__kstrtabns_fs_param_is_u32 }, section "___ksymtab+fs_param_is_u32", align 4
@__kstrtab_fs_param_is_s32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_s32 = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_s32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_s32 to i32), ptr @__kstrtab_fs_param_is_s32, ptr @__kstrtabns_fs_param_is_s32 }, section "___ksymtab+fs_param_is_s32", align 4
@__kstrtab_fs_param_is_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_u64 to i32), ptr @__kstrtab_fs_param_is_u64, ptr @__kstrtabns_fs_param_is_u64 }, section "___ksymtab+fs_param_is_u64", align 4
@__kstrtab_fs_param_is_enum = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_enum = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_enum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_enum to i32), ptr @__kstrtab_fs_param_is_enum, ptr @__kstrtabns_fs_param_is_enum }, section "___ksymtab+fs_param_is_enum", align 4
@__kstrtab_fs_param_is_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_string to i32), ptr @__kstrtab_fs_param_is_string, ptr @__kstrtabns_fs_param_is_string }, section "___ksymtab+fs_param_is_string", align 4
@__kstrtab_fs_param_is_blob = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_blob = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_blob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_blob to i32), ptr @__kstrtab_fs_param_is_blob, ptr @__kstrtabns_fs_param_is_blob }, section "___ksymtab+fs_param_is_blob", align 4
@__kstrtab_fs_param_is_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_fd to i32), ptr @__kstrtab_fs_param_is_fd, ptr @__kstrtabns_fs_param_is_fd }, section "___ksymtab+fs_param_is_fd", align 4
@__kstrtab_fs_param_is_blockdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_blockdev = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_blockdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_blockdev to i32), ptr @__kstrtab_fs_param_is_blockdev, ptr @__kstrtabns_fs_param_is_blockdev }, section "___ksymtab+fs_param_is_blockdev", align 4
@__kstrtab_fs_param_is_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_param_is_path = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_param_is_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_param_is_path to i32), ptr @__kstrtab_fs_param_is_path, ptr @__kstrtabns_fs_param_is_path }, section "___ksymtab+fs_param_is_path", align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Bad value for '%s'\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab___fs_parse, ptr @__ksymtab_fs_lookup_param, ptr @__ksymtab_fs_param_is_blob, ptr @__ksymtab_fs_param_is_blockdev, ptr @__ksymtab_fs_param_is_bool, ptr @__ksymtab_fs_param_is_enum, ptr @__ksymtab_fs_param_is_fd, ptr @__ksymtab_fs_param_is_path, ptr @__ksymtab_fs_param_is_s32, ptr @__ksymtab_fs_param_is_string, ptr @__ksymtab_fs_param_is_u32, ptr @__ksymtab_fs_param_is_u64, ptr @__ksymtab_lookup_constant], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @lookup_constant(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %11, %3
  %7 = phi ptr [ %13, %11 ], [ %4, %3 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %3 ]
  %9 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull %7) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.constant_table, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %6

15:                                               ; preds = %6
  %16 = icmp eq ptr %8, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.constant_table, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15, %11, %3
  %21 = phi i32 [ %19, %17 ], [ %2, %15 ], [ %2, %3 ], [ %2, %11 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__fs_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  store i64 0, ptr %5, align 8
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  store i8 0, ptr %3, align 1
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %23, %4
  %13 = phi ptr [ %26, %23 ], [ %10, %4 ]
  %14 = phi ptr [ %24, %23 ], [ null, %4 ]
  %15 = phi ptr [ %25, %23 ], [ %1, %4 ]
  %16 = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef %6) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.fs_parameter_spec, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = xor i1 %9, %21
  br i1 %22, label %23, label %57, !prof !8

23:                                               ; preds = %18, %12
  %24 = phi ptr [ %14, %12 ], [ %15, %18 ]
  %25 = getelementptr %struct.fs_parameter_spec, ptr %15, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12

28:                                               ; preds = %23, %4
  %29 = phi ptr [ null, %4 ], [ %24, %23 ]
  br i1 %9, label %30, label %57

30:                                               ; preds = %28
  %31 = load i8, ptr %6, align 1
  %32 = icmp eq i8 %31, 110
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %6, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 111
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %6, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i1 true, i1 %11
  br i1 %41, label %57, label %42

42:                                               ; preds = %53, %37
  %43 = phi ptr [ %55, %53 ], [ %10, %37 ]
  %44 = phi ptr [ %54, %53 ], [ %1, %37 ]
  %45 = tail call i32 @strcmp(ptr noundef nonnull %43, ptr noundef %38) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.fs_parameter_spec, ptr %44, i32 0, i32 3
  %49 = load i16, ptr %48, align 2
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i8 1, ptr %3, align 1
  br label %57

53:                                               ; preds = %47, %42
  %54 = getelementptr %struct.fs_parameter_spec, ptr %44, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42

57:                                               ; preds = %53, %52, %37, %33, %30, %28, %18
  %58 = phi ptr [ %44, %52 ], [ %29, %30 ], [ %29, %33 ], [ %29, %37 ], [ %29, %28 ], [ %29, %53 ], [ %15, %18 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %92, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.fs_parameter_spec, ptr %58, i32 0, i32 3
  %62 = load i16, ptr %61, align 2
  %63 = and i16 %62, 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %0, align 4
  %69 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %67, ptr noundef %68, i8 noundef zeroext 119, ptr noundef nonnull @.str, ptr noundef %69) #5
  br label %70

70:                                               ; preds = %65, %60
  %71 = getelementptr inbounds %struct.fs_parameter_spec, ptr %58, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i8, ptr %7, align 4
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %0, align 4
  %81 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %79, ptr noundef %80, i8 noundef zeroext 101, ptr noundef nonnull @.str.1, ptr noundef %81) #5
  br label %92

82:                                               ; preds = %74
  %83 = load i8, ptr %3, align 8, !range !9
  %84 = xor i8 %83, 1
  store i8 %84, ptr %5, align 8
  br label %88

85:                                               ; preds = %70
  %86 = tail call i32 %72(ptr noundef %0, ptr noundef nonnull %58, ptr noundef %2, ptr noundef %3) #5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %82
  %89 = getelementptr inbounds %struct.fs_parameter_spec, ptr %58, i32 0, i32 2
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %88, %85, %77, %57
  %93 = phi i32 [ -22, %77 ], [ %91, %88 ], [ %86, %85 ], [ -519, %57 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_lookup_param(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %17 [
    i8 2, label %7
    i8 4, label %14
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @getname_kernel(ptr noundef %9) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = ptrtoint ptr %10 to i32
  br label %48

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %21

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %19, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.2, ptr noundef %20) #5
  br label %48

21:                                               ; preds = %14, %7
  %22 = phi ptr [ %16, %14 ], [ %10, %7 ]
  %23 = phi i1 [ false, %14 ], [ true, %7 ]
  %24 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @filename_lookup(i32 noundef %25, ptr noundef %22, i32 noundef 0, ptr noundef %3, ptr noundef null) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  br i1 %2, label %29, label %45

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, -4096
  %36 = icmp eq i16 %35, 24576
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  tail call void @path_put(ptr noundef %3) #5
  store ptr null, ptr %30, align 4
  store ptr null, ptr %3, align 4
  br label %38

38:                                               ; preds = %37, %21
  %39 = phi ptr [ @.str.4, %37 ], [ @.str.3, %21 ]
  %40 = phi i32 [ -15, %37 ], [ %26, %21 ]
  %41 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %1, align 4
  %44 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %42, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull %39, ptr noundef %43, ptr noundef %44) #5
  br label %45

45:                                               ; preds = %38, %29, %28
  %46 = phi i32 [ %26, %29 ], [ %26, %28 ], [ %40, %38 ]
  br i1 %23, label %47, label %48

47:                                               ; preds = %45
  tail call void @putname(ptr noundef %22) #5
  br label %48

48:                                               ; preds = %47, %45, %17, %12
  %49 = phi i32 [ -22, %17 ], [ %13, %12 ], [ %46, %47 ], [ %46, %45 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filename_lookup(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %10, ptr noundef %11, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %12) #5
  br label %55

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18, %13
  %24 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.6) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.7) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(6) @.str.8) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.9) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(5) @.str.10) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.11) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %35, %32, %29, %26, %23
  %42 = phi ptr [ @bool_names, %23 ], [ getelementptr inbounds ([7 x %struct.constant_table], ptr @bool_names, i32 0, i32 1), %26 ], [ getelementptr inbounds ([7 x %struct.constant_table], ptr @bool_names, i32 0, i32 2), %29 ], [ getelementptr inbounds ([7 x %struct.constant_table], ptr @bool_names, i32 0, i32 3), %32 ], [ getelementptr inbounds ([7 x %struct.constant_table], ptr @bool_names, i32 0, i32 4), %35 ], [ getelementptr inbounds ([7 x %struct.constant_table], ptr @bool_names, i32 0, i32 5), %38 ]
  %43 = getelementptr inbounds %struct.constant_table, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %41, %38
  %47 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %0, align 4
  %50 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %48, ptr noundef %49, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %50) #5
  br label %55

51:                                               ; preds = %41
  %52 = icmp ne i32 %44, 0
  %53 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %54 = zext i1 %52 to i8
  store i8 %54, ptr %53, align 8
  br label %55

55:                                               ; preds = %51, %46, %18, %8
  %56 = phi i32 [ -22, %8 ], [ -22, %46 ], [ 0, %51 ], [ 0, %18 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16, %11
  %22 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %23 = tail call i32 @kstrtouint(ptr noundef %13, i32 noundef %7, ptr noundef %22) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %4
  %26 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %27, ptr noundef %28, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %29) #5
  br label %30

30:                                               ; preds = %25, %21, %16
  %31 = phi i32 [ 0, %16 ], [ 0, %21 ], [ -22, %25 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13, %8
  %19 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %20 = tail call i32 @kstrtoint(ptr noundef %10, i32 noundef 0, ptr noundef %19) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %4
  %23 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %24, ptr noundef %25, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %26) #5
  br label %27

27:                                               ; preds = %22, %18, %13
  %28 = phi i32 [ 0, %13 ], [ 0, %18 ], [ -22, %22 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13, %8
  %19 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %20 = tail call i32 @kstrtoull(ptr noundef %10, i32 noundef 0, ptr noundef %19) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %4
  %23 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %24, ptr noundef %25, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %26) #5
  br label %27

27:                                               ; preds = %22, %18, %13
  %28 = phi i32 [ 0, %13 ], [ 0, %18 ], [ -22, %22 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_enum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %10, ptr noundef %11, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %12) #5
  br label %48

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %18, %13
  %24 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %33, %23
  %29 = phi ptr [ %35, %33 ], [ %26, %23 ]
  %30 = phi ptr [ %34, %33 ], [ %25, %23 ]
  %31 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull %29) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.constant_table, ptr %30, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %28

37:                                               ; preds = %28
  %38 = icmp eq ptr %30, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %37, %33, %23
  %40 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %0, align 4
  %43 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %41, ptr noundef %42, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %43) #5
  br label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.constant_table, ptr %30, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  store i32 %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %44, %39, %18, %8
  %49 = phi i32 [ -22, %8 ], [ 0, %44 ], [ -22, %39 ], [ 0, %18 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %4
  %19 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %20, ptr noundef %21, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %22) #5
  br label %23

23:                                               ; preds = %18, %13, %8
  %24 = phi i32 [ -22, %18 ], [ 0, %13 ], [ 0, %8 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_blob(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %10, ptr noundef %11, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %12) #5
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ -22, %8 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fs_param_is_fd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %29 [
    i8 2, label %7
    i8 5, label %24
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.fs_parameter_spec, ptr %1, i32 0, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12, %7
  %18 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %19 = tail call i32 @kstrtouint(ptr noundef %9, i32 noundef 0, ptr noundef %18) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %18, align 8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %34, label %29

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.fs_parameter, ptr %2, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  store i32 %26, ptr %27, align 8
  %28 = icmp sgt i32 %26, -1
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %21, %17, %12, %4
  %30 = getelementptr inbounds %struct.p_log, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %31, ptr noundef %32, i8 noundef zeroext 101, ptr noundef nonnull @.str.5, ptr noundef %33) #5
  br label %34

34:                                               ; preds = %29, %24, %21
  %35 = phi i32 [ -22, %29 ], [ 0, %21 ], [ 0, %24 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @fs_param_is_blockdev(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @fs_param_is_path(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
