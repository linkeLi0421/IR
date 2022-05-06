; ModuleID = '/llk/IR/kernel/kallsyms.c_pt.bc'
source_filename = "../kernel/kallsyms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_symbol:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_symbol\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_symbol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_symbol_build_id:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_symbol_build_id\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_symbol_build_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_symbol_no_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_symbol_no_offset\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_symbol_no_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.7 }
%union.anon.7 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.kallsym_iter = type { i64, i64, i64, i64, i64, i32, i32, i8, [128 x i8], [60 x i8], i32, i32 }
%struct.file = type { %union.anon.30, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.30 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@kallsyms_num_syms = extern_weak dso_local local_unnamed_addr constant i32, section ".rodata", align 4
@__kstrtab_sprint_symbol = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_symbol = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_symbol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_symbol to i32), ptr @__kstrtab_sprint_symbol, ptr @__kstrtabns_sprint_symbol }, section "___ksymtab_gpl+sprint_symbol", align 4
@__kstrtab_sprint_symbol_build_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_symbol_build_id = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_symbol_build_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_symbol_build_id to i32), ptr @__kstrtab_sprint_symbol_build_id, ptr @__kstrtabns_sprint_symbol_build_id }, section "___ksymtab_gpl+sprint_symbol_build_id", align 4
@__kstrtab_sprint_symbol_no_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_symbol_no_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_symbol_no_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_symbol_no_offset to i32), ptr @__kstrtab_sprint_symbol_no_offset, ptr @__kstrtabns_sprint_symbol_no_offset }, section "___ksymtab_gpl+sprint_symbol_no_offset", align 4
@kptr_restrict = external dso_local local_unnamed_addr global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__initcall__kmod_kallsyms__378_887_kallsyms_init6 = internal global ptr @kallsyms_init, section ".initcall6.init", align 4
@kallsyms_names = extern_weak dso_local constant [0 x i8], align 1
@kallsyms_token_table = extern_weak dso_local local_unnamed_addr constant [0 x i8], align 1
@kallsyms_token_index = extern_weak dso_local local_unnamed_addr constant [0 x i16], align 2
@kallsyms_relative_base = extern_weak dso_local local_unnamed_addr constant i32, section ".rodata", align 4
@kallsyms_offsets = extern_weak dso_local constant [0 x i32], align 4
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@kallsyms_markers = extern_weak dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"+%#lx/%#lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" [%s\00", align 1
@sysctl_perf_event_paranoid = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"kallsyms\00", align 1
@kallsyms_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @kallsyms_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null }, align 4
@kallsyms_op = internal constant %struct.seq_operations { ptr @s_start, ptr @s_stop, ptr @s_next, ptr @s_show }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"__builtin__kprobes\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%px %c %s\09[%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%px %c %s\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_kallsyms__378_887_kallsyms_init6, ptr @__ksymtab_sprint_symbol, ptr @__ksymtab_sprint_symbol_build_id, ptr @__ksymtab_sprint_symbol_no_offset], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kallsyms_lookup_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !8
  %3 = load i32, ptr @kallsyms_num_syms, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %70, label %5

5:                                                ; preds = %65, %1
  %6 = phi i32 [ %67, %65 ], [ 0, %1 ]
  %7 = phi i32 [ %68, %65 ], [ 0, %1 ]
  %8 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %6
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %55, label %17

12:                                               ; preds = %45, %17
  %13 = phi ptr [ %22, %17 ], [ %46, %45 ]
  %14 = phi i32 [ %21, %17 ], [ %47, %45 ]
  %15 = phi i32 [ %19, %17 ], [ 1, %45 ]
  %16 = icmp eq i32 %30, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %12, %5
  %18 = phi ptr [ %23, %12 ], [ %8, %5 ]
  %19 = phi i32 [ %15, %12 ], [ 0, %5 ]
  %20 = phi i32 [ %30, %12 ], [ %10, %5 ]
  %21 = phi i32 [ %14, %12 ], [ 128, %5 ]
  %22 = phi ptr [ %13, %12 ], [ %2, %5 ]
  %23 = getelementptr i8, ptr %18, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %25
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %28
  %30 = add nsw i32 %20, -1
  %31 = load i8, ptr %29, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %12, label %33

33:                                               ; preds = %45, %17
  %34 = phi i8 [ %49, %45 ], [ %31, %17 ]
  %35 = phi ptr [ %48, %45 ], [ %29, %17 ]
  %36 = phi i32 [ 1, %45 ], [ %19, %17 ]
  %37 = phi i32 [ %47, %45 ], [ %21, %17 ]
  %38 = phi ptr [ %46, %45 ], [ %22, %17 ]
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = icmp ult i32 %37, 2
  br i1 %41, label %51, label %42

42:                                               ; preds = %40
  store i8 %34, ptr %38, align 1
  %43 = getelementptr i8, ptr %38, i32 1
  %44 = add i32 %37, -1
  br label %45

45:                                               ; preds = %42, %33
  %46 = phi ptr [ %43, %42 ], [ %38, %33 ]
  %47 = phi i32 [ %44, %42 ], [ %37, %33 ]
  %48 = getelementptr i8, ptr %35, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %12, label %33

51:                                               ; preds = %40, %12
  %52 = phi ptr [ %38, %40 ], [ %13, %12 ]
  %53 = phi i32 [ %37, %40 ], [ %14, %12 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51, %5
  %56 = phi ptr [ %52, %51 ], [ %2, %5 ]
  store i8 0, ptr %56, align 1
  br label %57

57:                                               ; preds = %55, %51
  %58 = call i32 @strcmp(ptr noundef nonnull %2, ptr noundef %0)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, ptr @kallsyms_relative_base, align 4
  %62 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %7
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  br label %72

65:                                               ; preds = %57
  %66 = add i32 %6, 1
  %67 = add i32 %66, %10
  %68 = add nuw i32 %7, 1
  %69 = icmp eq i32 %68, %3
  br i1 %69, label %70, label %5

70:                                               ; preds = %65, %1
  %71 = tail call i32 @module_kallsyms_lookup_name(ptr noundef %0) #10
  br label %72

72:                                               ; preds = %70, %60
  %73 = phi i32 [ %64, %60 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #10
  ret i32 %73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @module_kallsyms_lookup_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kallsyms_lookup_size_offset(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  %5 = icmp uge i32 %0, ptrtoint (ptr @_stext to i32)
  %6 = icmp ult i32 %0, ptrtoint (ptr @_etext to i32)
  %7 = and i1 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = icmp ult i32 %0, ptrtoint (ptr @_sinittext to i32)
  %13 = icmp uge i32 %0, ptrtoint (ptr @_einittext to i32)
  %14 = or i1 %12, %13
  br i1 %14, label %77, label %15

15:                                               ; preds = %11, %8, %3
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %16, label %17, !prof !9

16:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

17:                                               ; preds = %15
  %18 = load i32, ptr @kallsyms_num_syms, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, ptr @kallsyms_relative_base, align 4
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %18, %20 ], [ %34, %22 ]
  %24 = phi i32 [ %18, %20 ], [ %33, %22 ]
  %25 = phi i32 [ 0, %20 ], [ %32, %22 ]
  %26 = lshr i32 %23, 1
  %27 = add i32 %25, %26
  %28 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %21
  %31 = icmp ugt i32 %30, %0
  %32 = select i1 %31, i32 %25, i32 %27
  %33 = select i1 %31, i32 %27, i32 %24
  %34 = sub i32 %33, %32
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %22, label %36

36:                                               ; preds = %22, %17
  %37 = phi i32 [ 0, %17 ], [ %32, %22 ]
  br label %38

38:                                               ; preds = %43, %36
  %39 = phi i32 [ %44, %43 ], [ %37, %36 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, ptr @kallsyms_offsets, align 4
  br label %50

43:                                               ; preds = %38
  %44 = add i32 %39, -1
  %45 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %39
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %38, label %50

50:                                               ; preds = %43, %41
  %51 = phi i32 [ %42, %41 ], [ %48, %43 ]
  %52 = load i32, ptr @kallsyms_relative_base, align 4
  %53 = add i32 %52, %51
  br label %54

54:                                               ; preds = %58, %50
  %55 = phi i32 [ %39, %50 ], [ %56, %58 ]
  %56 = add i32 %55, 1
  %57 = icmp ult i32 %56, %18
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %56
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %52
  %62 = icmp ugt i32 %61, %53
  br i1 %62, label %68, label %54

63:                                               ; preds = %54
  %64 = icmp uge i32 %0, ptrtoint (ptr @_sinittext to i32)
  %65 = icmp ult i32 %0, ptrtoint (ptr @_einittext to i32)
  %66 = and i1 %64, %65
  %67 = select i1 %66, i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_etext to i32)
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i32 [ %67, %63 ], [ %61, %58 ]
  %70 = icmp eq ptr %1, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = sub i32 %69, %53
  store i32 %72, ptr %1, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = icmp eq ptr %2, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %73
  %76 = sub i32 %0, %53
  store i32 %76, ptr %2, align 4
  br label %81

77:                                               ; preds = %11
  %78 = call ptr @module_address_lookup(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) #10
  %79 = icmp ne ptr %78, null
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %77, %75, %73
  %82 = phi i32 [ %80, %77 ], [ 1, %73 ], [ 1, %75 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @module_address_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kallsyms_lookup(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @kallsyms_lookup_buildid(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kallsyms_lookup_buildid(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr i8, ptr %5, i32 127
  store i8 0, ptr %7, align 1
  store i8 0, ptr %5, align 1
  %8 = icmp uge i32 %0, ptrtoint (ptr @_stext to i32)
  %9 = icmp ult i32 %0, ptrtoint (ptr @_etext to i32)
  %10 = and i1 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = icmp ult i32 %0, ptrtoint (ptr @_sinittext to i32)
  %16 = icmp uge i32 %0, ptrtoint (ptr @_einittext to i32)
  %17 = or i1 %15, %16
  br i1 %17, label %156, label %18

18:                                               ; preds = %14, %11, %6
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %19, label %20, !prof !9

19:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

20:                                               ; preds = %18
  %21 = load i32, ptr @kallsyms_num_syms, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i32, ptr @kallsyms_relative_base, align 4
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i32 [ %21, %23 ], [ %37, %25 ]
  %27 = phi i32 [ %21, %23 ], [ %36, %25 ]
  %28 = phi i32 [ 0, %23 ], [ %35, %25 ]
  %29 = lshr i32 %26, 1
  %30 = add i32 %28, %29
  %31 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %24
  %34 = icmp ugt i32 %33, %0
  %35 = select i1 %34, i32 %28, i32 %30
  %36 = select i1 %34, i32 %30, i32 %27
  %37 = sub i32 %36, %35
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %25, label %39

39:                                               ; preds = %25, %20
  %40 = phi i32 [ 0, %20 ], [ %35, %25 ]
  br label %41

41:                                               ; preds = %46, %39
  %42 = phi i32 [ %47, %46 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, ptr @kallsyms_offsets, align 4
  br label %53

46:                                               ; preds = %41
  %47 = add i32 %42, -1
  %48 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %42
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %41, label %53

53:                                               ; preds = %46, %44
  %54 = phi i32 [ %45, %44 ], [ %51, %46 ]
  %55 = load i32, ptr @kallsyms_relative_base, align 4
  %56 = add i32 %55, %54
  br label %57

57:                                               ; preds = %61, %53
  %58 = phi i32 [ %42, %53 ], [ %59, %61 ]
  %59 = add i32 %58, 1
  %60 = icmp ult i32 %59, %21
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %59
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %55
  %65 = icmp ugt i32 %64, %56
  br i1 %65, label %71, label %57

66:                                               ; preds = %57
  %67 = icmp uge i32 %0, ptrtoint (ptr @_sinittext to i32)
  %68 = icmp ult i32 %0, ptrtoint (ptr @_einittext to i32)
  %69 = and i1 %67, %68
  %70 = select i1 %69, i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_etext to i32)
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i32 [ %70, %66 ], [ %64, %61 ]
  %73 = icmp eq ptr %1, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = sub i32 %72, %56
  store i32 %75, ptr %1, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = icmp eq ptr %2, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %76
  %79 = sub i32 %0, %56
  store i32 %79, ptr %2, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = lshr i32 %42, 8
  %82 = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %83
  %85 = and i32 %42, 255
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %87, %80
  %88 = phi i32 [ %94, %87 ], [ 0, %80 ]
  %89 = phi ptr [ %93, %87 ], [ %84, %80 ]
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr i8, ptr %89, i32 1
  %93 = getelementptr i8, ptr %92, i32 %91
  %94 = add nuw nsw i32 %88, 1
  %95 = icmp eq i32 %94, %85
  br i1 %95, label %96, label %87

96:                                               ; preds = %87, %80
  %97 = phi ptr [ %84, %80 ], [ %93, %87 ]
  %98 = ptrtoint ptr %97 to i32
  %99 = sub i32 %98, ptrtoint (ptr @kallsyms_names to i32)
  %100 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %148, label %103

103:                                              ; preds = %96
  %104 = zext i8 %101 to i32
  br label %110

105:                                              ; preds = %138, %110
  %106 = phi ptr [ %115, %110 ], [ %139, %138 ]
  %107 = phi i32 [ %114, %110 ], [ %140, %138 ]
  %108 = phi i32 [ %112, %110 ], [ 1, %138 ]
  %109 = icmp eq i32 %123, 0
  br i1 %109, label %144, label %110

110:                                              ; preds = %105, %103
  %111 = phi ptr [ %116, %105 ], [ %100, %103 ]
  %112 = phi i32 [ %108, %105 ], [ 0, %103 ]
  %113 = phi i32 [ %123, %105 ], [ %104, %103 ]
  %114 = phi i32 [ %107, %105 ], [ 128, %103 ]
  %115 = phi ptr [ %106, %105 ], [ %5, %103 ]
  %116 = getelementptr i8, ptr %111, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %118
  %120 = load i16, ptr %119, align 2
  %121 = zext i16 %120 to i32
  %122 = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %121
  %123 = add nsw i32 %113, -1
  %124 = load i8, ptr %122, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %105, label %126

126:                                              ; preds = %138, %110
  %127 = phi i8 [ %142, %138 ], [ %124, %110 ]
  %128 = phi ptr [ %141, %138 ], [ %122, %110 ]
  %129 = phi i32 [ 1, %138 ], [ %112, %110 ]
  %130 = phi i32 [ %140, %138 ], [ %114, %110 ]
  %131 = phi ptr [ %139, %138 ], [ %115, %110 ]
  %132 = icmp eq i32 %129, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = icmp ult i32 %130, 2
  br i1 %134, label %144, label %135

135:                                              ; preds = %133
  store i8 %127, ptr %131, align 1
  %136 = getelementptr i8, ptr %131, i32 1
  %137 = add i32 %130, -1
  br label %138

138:                                              ; preds = %135, %126
  %139 = phi ptr [ %136, %135 ], [ %131, %126 ]
  %140 = phi i32 [ %137, %135 ], [ %130, %126 ]
  %141 = getelementptr i8, ptr %128, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %105, label %126

144:                                              ; preds = %133, %105
  %145 = phi ptr [ %131, %133 ], [ %106, %105 ]
  %146 = phi i32 [ %130, %133 ], [ %107, %105 ]
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144, %96
  %149 = phi ptr [ %145, %144 ], [ %5, %96 ]
  store i8 0, ptr %149, align 1
  br label %150

150:                                              ; preds = %148, %144
  %151 = icmp eq ptr %3, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  store ptr null, ptr %3, align 4
  br label %153

153:                                              ; preds = %152, %150
  %154 = icmp eq ptr %4, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %153
  store ptr null, ptr %4, align 4
  br label %158

156:                                              ; preds = %14
  %157 = tail call ptr @module_address_lookup(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #10
  br label %158

158:                                              ; preds = %156, %155, %153
  %159 = phi ptr [ %5, %155 ], [ %5, %153 ], [ %157, %156 ]
  ret ptr %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lookup_symbol_name(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i8 0, ptr %1, align 1
  %3 = getelementptr i8, ptr %1, i32 127
  store i8 0, ptr %3, align 1
  %4 = icmp uge i32 %0, ptrtoint (ptr @_stext to i32)
  %5 = icmp ult i32 %0, ptrtoint (ptr @_etext to i32)
  %6 = and i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = icmp ult i32 %0, ptrtoint (ptr @_sinittext to i32)
  %12 = icmp uge i32 %0, ptrtoint (ptr @_einittext to i32)
  %13 = or i1 %11, %12
  br i1 %13, label %120, label %14

14:                                               ; preds = %10, %7, %2
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %15, label %16, !prof !9

15:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

16:                                               ; preds = %14
  %17 = load i32, ptr @kallsyms_num_syms, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, ptr @kallsyms_relative_base, align 4
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %17, %19 ], [ %33, %21 ]
  %23 = phi i32 [ %17, %19 ], [ %32, %21 ]
  %24 = phi i32 [ 0, %19 ], [ %31, %21 ]
  %25 = lshr i32 %22, 1
  %26 = add i32 %24, %25
  %27 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %20
  %30 = icmp ugt i32 %29, %0
  %31 = select i1 %30, i32 %24, i32 %26
  %32 = select i1 %30, i32 %26, i32 %23
  %33 = sub i32 %32, %31
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %21, label %35

35:                                               ; preds = %21, %16
  %36 = phi i32 [ 0, %16 ], [ %31, %21 ]
  br label %37

37:                                               ; preds = %43, %35
  %38 = phi i32 [ %44, %43 ], [ %36, %35 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, ptr @kallsyms_markers, align 4
  %42 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %41
  br label %66

43:                                               ; preds = %37
  %44 = add i32 %38, -1
  %45 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %38
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %37, label %50

50:                                               ; preds = %43
  %51 = lshr i32 %38, 8
  %52 = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %53
  %55 = and i32 %38, 255
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %57, %50
  %58 = phi i32 [ %64, %57 ], [ 0, %50 ]
  %59 = phi ptr [ %63, %57 ], [ %54, %50 ]
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr i8, ptr %59, i32 1
  %63 = getelementptr i8, ptr %62, i32 %61
  %64 = add nuw nsw i32 %58, 1
  %65 = icmp eq i32 %64, %55
  br i1 %65, label %66, label %57

66:                                               ; preds = %57, %50, %40
  %67 = phi ptr [ %54, %50 ], [ %42, %40 ], [ %63, %57 ]
  %68 = ptrtoint ptr %67 to i32
  %69 = sub i32 %68, ptrtoint (ptr @kallsyms_names to i32)
  %70 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %66
  %74 = zext i8 %71 to i32
  br label %80

75:                                               ; preds = %108, %80
  %76 = phi ptr [ %85, %80 ], [ %109, %108 ]
  %77 = phi i32 [ %84, %80 ], [ %110, %108 ]
  %78 = phi i32 [ %82, %80 ], [ 1, %108 ]
  %79 = icmp eq i32 %93, 0
  br i1 %79, label %114, label %80

80:                                               ; preds = %75, %73
  %81 = phi ptr [ %86, %75 ], [ %70, %73 ]
  %82 = phi i32 [ %78, %75 ], [ 0, %73 ]
  %83 = phi i32 [ %93, %75 ], [ %74, %73 ]
  %84 = phi i32 [ %77, %75 ], [ 128, %73 ]
  %85 = phi ptr [ %76, %75 ], [ %1, %73 ]
  %86 = getelementptr i8, ptr %81, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %88
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %91
  %93 = add nsw i32 %83, -1
  %94 = load i8, ptr %92, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %75, label %96

96:                                               ; preds = %108, %80
  %97 = phi i8 [ %112, %108 ], [ %94, %80 ]
  %98 = phi ptr [ %111, %108 ], [ %92, %80 ]
  %99 = phi i32 [ 1, %108 ], [ %82, %80 ]
  %100 = phi i32 [ %110, %108 ], [ %84, %80 ]
  %101 = phi ptr [ %109, %108 ], [ %85, %80 ]
  %102 = icmp eq i32 %99, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %96
  %104 = icmp ult i32 %100, 2
  br i1 %104, label %114, label %105

105:                                              ; preds = %103
  store i8 %97, ptr %101, align 1
  %106 = getelementptr i8, ptr %101, i32 1
  %107 = add i32 %100, -1
  br label %108

108:                                              ; preds = %105, %96
  %109 = phi ptr [ %106, %105 ], [ %101, %96 ]
  %110 = phi i32 [ %107, %105 ], [ %100, %96 ]
  %111 = getelementptr i8, ptr %98, i32 1
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %75, label %96

114:                                              ; preds = %103, %75
  %115 = phi ptr [ %101, %103 ], [ %76, %75 ]
  %116 = phi i32 [ %100, %103 ], [ %77, %75 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %114, %66
  %119 = phi ptr [ %115, %114 ], [ %1, %66 ]
  store i8 0, ptr %119, align 1
  br label %123

120:                                              ; preds = %10
  %121 = tail call i32 @lookup_module_symbol_name(i32 noundef %0, ptr noundef %1) #10
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %118, %114
  br label %124

124:                                              ; preds = %123, %120
  %125 = phi i32 [ 0, %123 ], [ %121, %120 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_module_symbol_name(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lookup_symbol_attrs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  store i8 0, ptr %4, align 1
  %6 = getelementptr i8, ptr %4, i32 127
  store i8 0, ptr %6, align 1
  %7 = icmp uge i32 %0, ptrtoint (ptr @_stext to i32)
  %8 = icmp ult i32 %0, ptrtoint (ptr @_etext to i32)
  %9 = and i1 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @in_gate_area_no_mm(i32 noundef %0) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = icmp ult i32 %0, ptrtoint (ptr @_sinittext to i32)
  %15 = icmp uge i32 %0, ptrtoint (ptr @_einittext to i32)
  %16 = or i1 %14, %15
  br i1 %16, label %150, label %17

17:                                               ; preds = %13, %10, %5
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %18, label %19, !prof !9

18:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

19:                                               ; preds = %17
  %20 = load i32, ptr @kallsyms_num_syms, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i32, ptr @kallsyms_relative_base, align 4
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %20, %22 ], [ %36, %24 ]
  %26 = phi i32 [ %20, %22 ], [ %35, %24 ]
  %27 = phi i32 [ 0, %22 ], [ %34, %24 ]
  %28 = lshr i32 %25, 1
  %29 = add i32 %27, %28
  %30 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %23
  %33 = icmp ugt i32 %32, %0
  %34 = select i1 %33, i32 %27, i32 %29
  %35 = select i1 %33, i32 %29, i32 %26
  %36 = sub i32 %35, %34
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %24, label %38

38:                                               ; preds = %24, %19
  %39 = phi i32 [ 0, %19 ], [ %34, %24 ]
  br label %40

40:                                               ; preds = %45, %38
  %41 = phi i32 [ %46, %45 ], [ %39, %38 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, ptr @kallsyms_offsets, align 4
  br label %52

45:                                               ; preds = %40
  %46 = add i32 %41, -1
  %47 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %41
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %40, label %52

52:                                               ; preds = %45, %43
  %53 = phi i32 [ %44, %43 ], [ %50, %45 ]
  %54 = load i32, ptr @kallsyms_relative_base, align 4
  %55 = add i32 %54, %53
  br label %56

56:                                               ; preds = %60, %52
  %57 = phi i32 [ %41, %52 ], [ %58, %60 ]
  %58 = add i32 %57, 1
  %59 = icmp ult i32 %58, %20
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %58
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %54
  %64 = icmp ugt i32 %63, %55
  br i1 %64, label %70, label %56

65:                                               ; preds = %56
  %66 = icmp uge i32 %0, ptrtoint (ptr @_sinittext to i32)
  %67 = icmp ult i32 %0, ptrtoint (ptr @_einittext to i32)
  %68 = and i1 %66, %67
  %69 = select i1 %68, i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_etext to i32)
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i32 [ %69, %65 ], [ %63, %60 ]
  %72 = icmp eq ptr %1, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = sub i32 %71, %55
  store i32 %74, ptr %1, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = icmp eq ptr %2, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = sub i32 %0, %55
  store i32 %78, ptr %2, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = lshr i32 %41, 8
  %81 = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %82
  %84 = and i32 %41, 255
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %86, %79
  %87 = phi i32 [ %93, %86 ], [ 0, %79 ]
  %88 = phi ptr [ %92, %86 ], [ %83, %79 ]
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr i8, ptr %88, i32 1
  %92 = getelementptr i8, ptr %91, i32 %90
  %93 = add nuw nsw i32 %87, 1
  %94 = icmp eq i32 %93, %84
  br i1 %94, label %95, label %86

95:                                               ; preds = %86, %79
  %96 = phi ptr [ %83, %79 ], [ %92, %86 ]
  %97 = ptrtoint ptr %96 to i32
  %98 = sub i32 %97, ptrtoint (ptr @kallsyms_names to i32)
  %99 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %98
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %147, label %102

102:                                              ; preds = %95
  %103 = zext i8 %100 to i32
  br label %109

104:                                              ; preds = %137, %109
  %105 = phi ptr [ %114, %109 ], [ %138, %137 ]
  %106 = phi i32 [ %113, %109 ], [ %139, %137 ]
  %107 = phi i32 [ %111, %109 ], [ 1, %137 ]
  %108 = icmp eq i32 %122, 0
  br i1 %108, label %143, label %109

109:                                              ; preds = %104, %102
  %110 = phi ptr [ %115, %104 ], [ %99, %102 ]
  %111 = phi i32 [ %107, %104 ], [ 0, %102 ]
  %112 = phi i32 [ %122, %104 ], [ %103, %102 ]
  %113 = phi i32 [ %106, %104 ], [ 128, %102 ]
  %114 = phi ptr [ %105, %104 ], [ %4, %102 ]
  %115 = getelementptr i8, ptr %110, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %117
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %120
  %122 = add nsw i32 %112, -1
  %123 = load i8, ptr %121, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %104, label %125

125:                                              ; preds = %137, %109
  %126 = phi i8 [ %141, %137 ], [ %123, %109 ]
  %127 = phi ptr [ %140, %137 ], [ %121, %109 ]
  %128 = phi i32 [ 1, %137 ], [ %111, %109 ]
  %129 = phi i32 [ %139, %137 ], [ %113, %109 ]
  %130 = phi ptr [ %138, %137 ], [ %114, %109 ]
  %131 = icmp eq i32 %128, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = icmp ult i32 %129, 2
  br i1 %133, label %143, label %134

134:                                              ; preds = %132
  store i8 %126, ptr %130, align 1
  %135 = getelementptr i8, ptr %130, i32 1
  %136 = add i32 %129, -1
  br label %137

137:                                              ; preds = %134, %125
  %138 = phi ptr [ %135, %134 ], [ %130, %125 ]
  %139 = phi i32 [ %136, %134 ], [ %129, %125 ]
  %140 = getelementptr i8, ptr %127, i32 1
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %104, label %125

143:                                              ; preds = %132, %104
  %144 = phi ptr [ %130, %132 ], [ %105, %104 ]
  %145 = phi i32 [ %129, %132 ], [ %106, %104 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143, %95
  %148 = phi ptr [ %144, %143 ], [ %4, %95 ]
  store i8 0, ptr %148, align 1
  br label %149

149:                                              ; preds = %147, %143
  store i8 0, ptr %3, align 1
  br label %153

150:                                              ; preds = %13
  %151 = tail call i32 @lookup_module_symbol_attrs(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150, %149
  br label %154

154:                                              ; preds = %153, %150
  %155 = phi i32 [ 0, %153 ], [ %151, %150 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_module_symbol_attrs(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_symbol(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__sprint_symbol(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sprint_symbol(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = add i32 %2, %1
  %10 = call fastcc ptr @kallsyms_lookup_buildid(i32 noundef %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %1)
  br label %38

14:                                               ; preds = %4
  %15 = icmp eq ptr %10, %0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = call ptr @strcpy(ptr noundef %0, ptr noundef nonnull %10)
  br label %18

18:                                               ; preds = %16, %14
  %19 = call i32 @strlen(ptr noundef %0)
  %20 = load i32, ptr %7, align 4
  %21 = sub i32 %20, %2
  store i32 %21, ptr %7, align 4
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %0, i32 %19
  %25 = load i32, ptr %8, align 4
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %25)
  %27 = add i32 %26, %19
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i32 [ %27, %23 ], [ %19, %18 ]
  %30 = load ptr, ptr %5, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 %29
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %33, ptr noundef nonnull @.str.2, ptr noundef nonnull %30)
  %35 = add i32 %34, %29
  %36 = getelementptr i8, ptr %0, i32 %35
  store i16 93, ptr %36, align 1
  %37 = add i32 %35, 1
  br label %38

38:                                               ; preds = %32, %28, %12
  %39 = phi i32 [ %13, %12 ], [ %37, %32 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_symbol_build_id(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__sprint_symbol(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_symbol_no_offset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__sprint_symbol(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_backtrace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @__sprint_symbol(ptr noundef %0, i32 noundef %1, i32 noundef -1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sprint_backtrace_build_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @__sprint_symbol(ptr noundef %0, i32 noundef %1, i32 noundef -1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_get_kallsym(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kallsyms_show_value(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @kptr_restrict, align 4
  switch i32 %2, label %9 [
    i32 0, label %3
    i32 1, label %6
  ]

3:                                                ; preds = %1
  %4 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %3, %1
  %7 = tail call i32 @cap_capable(ptr noundef %0, ptr noundef nonnull @init_user_ns, i32 noundef 34, i32 noundef 2) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %1
  br label %10

10:                                               ; preds = %9, %6, %3
  %11 = phi i1 [ false, %9 ], [ true, %3 ], [ true, %6 ]
  ret i1 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kallsyms_init() #5 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @kallsyms_proc_ops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area_no_mm(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kallsyms_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef nonnull @kallsyms_op, i32 noundef 248) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kallsym_iter, ptr %3, i32 0, i32 8
  store i8 0, ptr %6, align 1
  %7 = load i32, ptr @kallsyms_markers, align 4
  %8 = getelementptr inbounds %struct.kallsym_iter, ptr %3, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr @kptr_restrict, align 4
  switch i32 %11, label %18 [
    i32 0, label %12
    i32 1, label %15
  ]

12:                                               ; preds = %5
  %13 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %5
  %16 = tail call i32 @cap_capable(ptr noundef %10, ptr noundef nonnull @init_user_ns, i32 noundef 34, i32 noundef 2) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %5
  br label %19

19:                                               ; preds = %18, %15, %12
  %20 = phi i32 [ 0, %18 ], [ 1, %12 ], [ 1, %15 ]
  %21 = getelementptr inbounds %struct.kallsym_iter, ptr %3, i32 0, i32 11
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi i32 [ 0, %19 ], [ -12, %2 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = tail call fastcc i32 @update_iter(ptr noundef %4, i64 noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @s_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_next(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call fastcc i32 @update_iter(ptr noundef %7, i64 noundef %5)
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr null, ptr %1
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 8
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = inttoptr i32 %14 to ptr
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %15, %12 ], [ null, %8 ]
  %18 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 9
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 10
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 7
  %26 = load i8, ptr %25, align 8
  %27 = zext i8 %26 to i32
  %28 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = select i1 %24, i8 1, i8 2
  %31 = select i1 %24, i8 32, i8 -32
  %32 = and i8 %29, %30
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i8 0, i8 %31
  %35 = add i8 %26, %34
  %36 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %17, i32 noundef %36, ptr noundef %5, ptr noundef %18) #10
  br label %41

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.kallsym_iter, ptr %4, i32 0, i32 7
  %39 = load i8, ptr %38, align 8
  %40 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %17, i32 noundef %40, ptr noundef %5) #10
  br label %41

41:                                               ; preds = %37, %21, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_iter(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @kallsyms_num_syms, align 4
  %4 = zext i32 %3 to i64
  %5 = icmp sgt i64 %4, %1
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  store i64 %1, ptr %0, align 8
  %7 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = icmp sgt i64 %8, %1
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = trunc i64 %1 to i32
  %14 = sub i32 %13, %3
  %15 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 5
  %16 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 8
  %18 = tail call i32 @arch_get_kallsym(i32 noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %172

20:                                               ; preds = %12
  %21 = load i64, ptr %0, align 8
  store i64 %21, ptr %7, align 8
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i64 [ %21, %20 ], [ %8, %6 ]
  %24 = phi i64 [ %21, %20 ], [ %1, %6 ]
  %25 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = icmp sgt i64 %26, %1
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = sub i64 %24, %23
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 5
  %34 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 7
  %35 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 8
  %36 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 9
  %37 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 10
  %38 = tail call i32 @module_get_kallsym(i32 noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %172

40:                                               ; preds = %30
  %41 = load i64, ptr %0, align 8
  store i64 %41, ptr %25, align 8
  br label %42

42:                                               ; preds = %40, %22
  %43 = phi i64 [ %41, %40 ], [ %24, %22 ]
  %44 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 3
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = icmp sgt i64 %45, %1
  %48 = or i1 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i64 %43, ptr %44, align 8
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 4
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, 0
  %54 = icmp sgt i64 %52, %1
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 9
  %58 = tail call i32 @strlcpy(ptr noundef %57, ptr noundef nonnull @.str.5, i32 noundef 60) #10
  %59 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 10
  store i32 0, ptr %59, align 8
  %60 = load i64, ptr %0, align 8
  store i64 %60, ptr %51, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 9
  %63 = tail call i32 @strlcpy(ptr noundef %62, ptr noundef nonnull @.str.6, i32 noundef 60) #10
  %64 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 10
  store i32 0, ptr %64, align 8
  br label %172

65:                                               ; preds = %2
  %66 = load i64, ptr %0, align 8
  %67 = icmp eq i64 %66, %1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = trunc i64 %1 to i32
  br label %98

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 8
  store i8 0, ptr %73, align 1
  %74 = trunc i64 %1 to i32
  %75 = lshr i32 %74, 8
  %76 = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %77
  %79 = and i32 %74, 255
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %81, %72
  %82 = phi i32 [ %88, %81 ], [ 0, %72 ]
  %83 = phi ptr [ %87, %81 ], [ %78, %72 ]
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = getelementptr i8, ptr %83, i32 1
  %87 = getelementptr i8, ptr %86, i32 %85
  %88 = add nuw nsw i32 %82, 1
  %89 = icmp eq i32 %88, %79
  br i1 %89, label %90, label %81

90:                                               ; preds = %81, %72
  %91 = phi ptr [ %78, %72 ], [ %87, %81 ]
  %92 = ptrtoint ptr %91 to i32
  %93 = sub i32 %92, ptrtoint (ptr @kallsyms_names to i32)
  %94 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 6
  store i32 %93, ptr %94, align 4
  store i64 %1, ptr %0, align 8
  %95 = icmp eq i64 %1, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %97, i8 0, i64 32, i1 false) #10
  br label %98

98:                                               ; preds = %96, %90, %68
  %99 = phi i32 [ %71, %68 ], [ 0, %96 ], [ %74, %90 ]
  %100 = phi i32 [ %70, %68 ], [ %93, %96 ], [ %93, %90 ]
  %101 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 9
  store i8 0, ptr %102, align 1
  %103 = load i32, ptr @kallsyms_relative_base, align 4
  %104 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %99
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %103
  %107 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 5
  store i32 %106, ptr %107, align 8
  %108 = add i32 %100, 1
  %109 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %108
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %111
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %114
  %116 = load i8, ptr %115, align 1
  %117 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 7
  store i8 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.kallsym_iter, ptr %0, i32 0, i32 8
  %119 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %100
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %166, label %128

123:                                              ; preds = %156, %128
  %124 = phi ptr [ %133, %128 ], [ %157, %156 ]
  %125 = phi i32 [ %132, %128 ], [ %158, %156 ]
  %126 = phi i32 [ %130, %128 ], [ 1, %156 ]
  %127 = icmp eq i32 %141, 0
  br i1 %127, label %162, label %128

128:                                              ; preds = %123, %98
  %129 = phi ptr [ %134, %123 ], [ %119, %98 ]
  %130 = phi i32 [ %126, %123 ], [ 0, %98 ]
  %131 = phi i32 [ %141, %123 ], [ %121, %98 ]
  %132 = phi i32 [ %125, %123 ], [ 128, %98 ]
  %133 = phi ptr [ %124, %123 ], [ %118, %98 ]
  %134 = getelementptr i8, ptr %129, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %136
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  %140 = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %139
  %141 = add nsw i32 %131, -1
  %142 = load i8, ptr %140, align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %123, label %144

144:                                              ; preds = %156, %128
  %145 = phi i8 [ %160, %156 ], [ %142, %128 ]
  %146 = phi ptr [ %159, %156 ], [ %140, %128 ]
  %147 = phi i32 [ 1, %156 ], [ %130, %128 ]
  %148 = phi i32 [ %158, %156 ], [ %132, %128 ]
  %149 = phi ptr [ %157, %156 ], [ %133, %128 ]
  %150 = icmp eq i32 %147, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %144
  %152 = icmp ult i32 %148, 2
  br i1 %152, label %162, label %153

153:                                              ; preds = %151
  store i8 %145, ptr %149, align 1
  %154 = getelementptr i8, ptr %149, i32 1
  %155 = add i32 %148, -1
  br label %156

156:                                              ; preds = %153, %144
  %157 = phi ptr [ %154, %153 ], [ %149, %144 ]
  %158 = phi i32 [ %155, %153 ], [ %148, %144 ]
  %159 = getelementptr i8, ptr %146, i32 1
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %123, label %144

162:                                              ; preds = %151, %123
  %163 = phi ptr [ %149, %151 ], [ %124, %123 ]
  %164 = phi i32 [ %148, %151 ], [ %125, %123 ]
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162, %98
  %167 = phi ptr [ %163, %162 ], [ %118, %98 ]
  store i8 0, ptr %167, align 1
  br label %168

168:                                              ; preds = %166, %162
  %169 = add i32 %108, %121
  store i32 %169, ptr %101, align 4
  %170 = load i64, ptr %0, align 8
  %171 = add i64 %170, 1
  store i64 %171, ptr %0, align 8
  br label %172

172:                                              ; preds = %168, %61, %30, %12
  %173 = phi i32 [ 1, %168 ], [ 0, %61 ], [ 1, %12 ], [ 1, %30 ]
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @module_get_kallsym(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155723232, i64 2155723714, i64 2155723269, i64 2155723325, i64 2155723359, i64 2155723383, i64 2155723424, i64 2155723445, i64 2155723473, i64 2155723507}
