; ModuleID = '/llk/IR/kernel/sched/isolation.c_pt.bc'
source_filename = "../kernel/sched/isolation.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_overridden:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_overridden\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_overridden:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_any_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_any_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_any_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_cpumask:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_cpumask\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_cpumask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_affine:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_affine\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_affine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_housekeeping_test_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22housekeeping_test_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_housekeeping_test_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@housekeeping_overridden = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_housekeeping_overridden = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_overridden = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_overridden = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_overridden to i32), ptr @__kstrtab_housekeeping_overridden, ptr @__kstrtabns_housekeeping_overridden }, section "___ksymtab_gpl+housekeeping_overridden", align 4
@housekeeping_flags = internal unnamed_addr global i32 0, align 4
@__kstrtab_housekeeping_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_enabled to i32), ptr @__kstrtab_housekeeping_enabled, ptr @__kstrtabns_housekeeping_enabled }, section "___ksymtab_gpl+housekeeping_enabled", align 4
@housekeeping_mask = internal global [1 x %struct.cpumask] zeroinitializer, align 4
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__kstrtab_housekeeping_any_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_any_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_any_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_any_cpu to i32), ptr @__kstrtab_housekeeping_any_cpu, ptr @__kstrtabns_housekeeping_any_cpu }, section "___ksymtab_gpl+housekeeping_any_cpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_housekeeping_cpumask = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_cpumask = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_cpumask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_cpumask to i32), ptr @__kstrtab_housekeeping_cpumask, ptr @__kstrtabns_housekeeping_cpumask }, section "___ksymtab_gpl+housekeeping_cpumask", align 4
@__kstrtab_housekeeping_affine = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_affine = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_affine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_affine to i32), ptr @__kstrtab_housekeeping_affine, ptr @__kstrtabns_housekeeping_affine }, section "___ksymtab_gpl+housekeeping_affine", align 4
@__kstrtab_housekeeping_test_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_housekeeping_test_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_housekeeping_test_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @housekeeping_test_cpu to i32), ptr @__kstrtab_housekeeping_test_cpu, ptr @__kstrtabns_housekeeping_test_cpu }, section "___ksymtab_gpl+housekeeping_test_cpu", align 4
@housekeeping_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [25 x i8] c"kernel/sched/isolation.c\00", align 1
@__setup_str_housekeeping_nohz_full_setup = internal constant [11 x i8] c"nohz_full=\00", section ".init.rodata", align 1
@__setup_housekeeping_nohz_full_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_housekeeping_nohz_full_setup, ptr @housekeeping_nohz_full_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_housekeeping_isolcpus_setup = internal constant [10 x i8] c"isolcpus=\00", section ".init.rodata", align 1
@__setup_housekeeping_isolcpus_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_housekeeping_isolcpus_setup, ptr @housekeeping_isolcpus_setup, i32 0 }, section ".init.setup", align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"\014Housekeeping: nohz_full= or isolcpus= incorrect CPU range\0A\00", align 1
@__cpu_present_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"\014Housekeeping: must include one present CPU, using boot CPU:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\014Housekeeping: nohz_full= must match isolcpus=\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"\014Housekeeping: nohz unsupported. Build with CONFIG_NO_HZ_FULL\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nohz,\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"domain,\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"managed_irq,\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\014isolcpus: Invalid flag %.*s\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\016isolcpus: Skipped unknown flag %.*s\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_housekeeping_affine, ptr @__ksymtab_housekeeping_any_cpu, ptr @__ksymtab_housekeeping_cpumask, ptr @__ksymtab_housekeeping_enabled, ptr @__ksymtab_housekeeping_overridden, ptr @__ksymtab_housekeeping_test_cpu, ptr @__setup_housekeeping_isolcpus_setup, ptr @__setup_housekeeping_nohz_full_setup], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @housekeeping_enabled(i32 noundef %0) #0 {
  %2 = load i32, ptr @housekeeping_flags, align 4
  %3 = and i32 %2, %0
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @housekeeping_any_cpu(i32 noundef %0) #1 {
  %2 = load volatile i32, ptr @housekeeping_overridden, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %16, !prof !8

4:                                                ; preds = %1
  %5 = load i32, ptr @housekeeping_flags, align 4
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr @housekeeping_mask, align 4
  %10 = load i32, ptr @__cpu_online_mask, align 4
  %11 = and i32 %9, 65535
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #11, !range !9
  %15 = select i1 %13, i32 16, i32 %14
  br label %20

16:                                               ; preds = %4, %1
  %17 = tail call ptr @llvm.thread.pointer() #11
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ %15, %8 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @housekeeping_cpumask(i32 noundef %0) #3 {
  %2 = load volatile i32, ptr @housekeeping_overridden, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %8, !prof !8

4:                                                ; preds = %1
  %5 = load i32, ptr @housekeeping_flags, align 4
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi ptr [ @__cpu_possible_mask, %8 ], [ @housekeeping_mask, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @housekeeping_affine(ptr noundef %0, i32 noundef %1) #4 {
  %3 = load volatile i32, ptr @housekeeping_overridden, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %11, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr @housekeeping_flags, align 4
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %0, ptr noundef nonnull @housekeeping_mask) #11
  br label %11

11:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @housekeeping_test_cpu(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load volatile i32, ptr @housekeeping_overridden, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr @housekeeping_flags, align 4
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = lshr i32 %0, 5
  %11 = getelementptr i32, ptr @housekeeping_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %0, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %9, %5, %2
  %18 = phi i1 [ %16, %9 ], [ true, %5 ], [ true, %2 ]
  ret i1 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @housekeeping_init() local_unnamed_addr #6 section ".init.text" {
  %1 = load i32, ptr @housekeeping_flags, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr @static_key_initialized, align 1, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @housekeeping_overridden) #11
  br label %7

7:                                                ; preds = %6, %3
  %8 = load volatile i32, ptr @housekeeping_overridden, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @housekeeping_overridden, align 4
  %12 = icmp ne i32 %11, 1
  %13 = load i1, ptr @static_key_enable.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %10
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 321, i32 noundef 9, ptr noundef null) #11
  br label %18

17:                                               ; preds = %7
  store volatile i32 1, ptr @housekeeping_overridden, align 4
  br label %18

18:                                               ; preds = %17, %16, %10
  %19 = load i32, ptr @housekeeping_mask, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 0
  %22 = load i1, ptr @housekeeping_init.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %18
  store i1 true, ptr @housekeeping_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #11
  br label %26

26:                                               ; preds = %25, %18, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @housekeeping_nohz_full_setup(ptr noundef %0) #6 section ".init.text" {
  %2 = tail call fastcc i32 @housekeeping_setup(ptr noundef %0, i32 noundef 343) #12
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @housekeeping_isolcpus_setup(ptr noundef %0) #6 section ".init.text" {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %65, label %8

8:                                                ; preds = %23, %1
  %9 = phi i8 [ %28, %23 ], [ %2, %1 ]
  %10 = phi ptr [ %26, %23 ], [ %0, %1 ]
  %11 = phi i32 [ %27, %23 ], [ 0, %1 ]
  br label %12

12:                                               ; preds = %54, %8
  %13 = phi i8 [ %9, %8 ], [ %57, %54 ]
  %14 = phi ptr [ %10, %8 ], [ %56, %54 ]
  %15 = tail call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(6) @.str.7, i32 noundef 5)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(8) @.str.8, i32 noundef 7)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strncmp(ptr noundef %14, ptr noundef nonnull dereferenceable(13) @.str.9, i32 noundef 12)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20, %17, %12
  %24 = phi i32 [ 5, %12 ], [ 7, %17 ], [ 12, %20 ]
  %25 = phi i32 [ 16, %12 ], [ 32, %17 ], [ 128, %20 ]
  %26 = getelementptr i8, ptr %14, i32 %24
  %27 = or i32 %11, %25
  %28 = load i8, ptr %26, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %67, label %8

34:                                               ; preds = %39, %20
  %35 = phi i8 [ %50, %39 ], [ %13, %20 ]
  %36 = phi i1 [ %47, %39 ], [ false, %20 ]
  %37 = phi i32 [ %49, %39 ], [ 0, %20 ]
  %38 = phi ptr [ %48, %39 ], [ %14, %20 ]
  switch i8 %35, label %39 [
    i8 0, label %51
    i8 44, label %51
  ]

39:                                               ; preds = %34
  %40 = zext i8 %35 to i32
  %41 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 3
  %44 = icmp eq i8 %43, 0
  %45 = icmp ne i8 %35, 95
  %46 = select i1 %44, i1 %45, i1 false
  %47 = select i1 %46, i1 true, i1 %36
  %48 = getelementptr i8, ptr %38, i32 1
  %49 = add i32 %37, 1
  %50 = load i8, ptr %48, align 1
  br label %34

51:                                               ; preds = %34, %34
  br i1 %36, label %52, label %54

52:                                               ; preds = %51
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %37, ptr noundef %14) #13
  br label %71

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %37, ptr noundef %14) #13
  %56 = getelementptr i8, ptr %38, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 3
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %12

63:                                               ; preds = %54
  %64 = icmp eq i32 %11, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %63, %1
  %66 = phi ptr [ %56, %63 ], [ %0, %1 ]
  br label %67

67:                                               ; preds = %65, %63, %23
  %68 = phi ptr [ %66, %65 ], [ %56, %63 ], [ %26, %23 ]
  %69 = phi i32 [ 32, %65 ], [ %11, %63 ], [ %27, %23 ]
  %70 = tail call fastcc i32 @housekeeping_setup(ptr noundef %68, i32 noundef %69) #12
  br label %71

71:                                               ; preds = %67, %52
  %72 = phi i32 [ 0, %52 ], [ %70, %67 ]
  ret i32 %72
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @housekeeping_setup(ptr noundef %0, i32 noundef %1) unnamed_addr #6 section ".init.text" {
  %3 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !11
  %4 = call i32 @bitmap_parselist(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 16) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %75

8:                                                ; preds = %2
  %9 = load i32, ptr @housekeeping_flags, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = load i32, ptr @__cpu_possible_mask, align 4
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 65535
  %15 = xor i32 %14, 65535
  %16 = and i32 %15, %12
  store i32 %16, ptr @housekeeping_mask, align 4
  %17 = load i32, ptr @__cpu_present_mask, align 4
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %11
  %21 = tail call ptr @llvm.thread.pointer() #11
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %23) #13
  %25 = load i32, ptr %22, align 8
  %26 = and i32 %25, 31
  %27 = shl nuw i32 1, %26
  %28 = lshr i32 %25, 5
  %29 = getelementptr i32, ptr @housekeeping_mask, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, ptr %29, align 4
  %32 = load i32, ptr %22, align 8
  %33 = and i32 %32, 31
  %34 = shl nuw i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, ptr %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, ptr %3, align 4
  br label %64

38:                                               ; preds = %8
  %39 = load i32, ptr @__cpu_present_mask, align 4
  %40 = load i32, ptr %3, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, 65535
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = tail call ptr @llvm.thread.pointer() #11
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 31
  %50 = shl nuw i32 1, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %40, %51
  store i32 %52, ptr %3, align 4
  %53 = xor i32 %52, -1
  br label %54

54:                                               ; preds = %45, %38
  %55 = phi i32 [ %53, %45 ], [ %41, %38 ]
  %56 = load i32, ptr @__cpu_possible_mask, align 4
  %57 = and i32 %56, %55
  %58 = load i32, ptr @housekeeping_mask, align 4
  %59 = xor i32 %58, %57
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %75

64:                                               ; preds = %54, %20, %11
  %65 = and i32 %1, 16
  %66 = icmp ne i32 %65, 0
  %67 = load i32, ptr @housekeeping_flags, align 4
  %68 = and i32 %67, 16
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %66, i1 %69, i1 false
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %75

73:                                               ; preds = %64
  %74 = or i32 %67, %1
  store i32 %74, ptr @housekeeping_flags, align 4
  br label %75

75:                                               ; preds = %73, %71, %62, %6
  %76 = phi i32 [ 0, %6 ], [ 1, %73 ], [ 0, %71 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %76
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
