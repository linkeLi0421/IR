; ModuleID = '/llk/IR/drivers/clk/clk-bulk.c_pt.bc'
source_filename = "../drivers/clk/clk-bulk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_put\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_get_optional\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_put_all:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_put_all\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_put_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_get_all\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_unprepare\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_bulk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_clk_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@__kstrtab_clk_bulk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_put to i32), ptr @__kstrtab_clk_bulk_put, ptr @__kstrtabns_clk_bulk_put }, section "___ksymtab_gpl+clk_bulk_put", align 4
@__kstrtab_clk_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_get to i32), ptr @__kstrtab_clk_bulk_get, ptr @__kstrtabns_clk_bulk_get }, section "___ksymtab+clk_bulk_get", align 4
@__kstrtab_clk_bulk_get_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_get_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_get_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_get_optional to i32), ptr @__kstrtab_clk_bulk_get_optional, ptr @__kstrtabns_clk_bulk_get_optional }, section "___ksymtab_gpl+clk_bulk_get_optional", align 4
@__kstrtab_clk_bulk_put_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_put_all = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_put_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_put_all to i32), ptr @__kstrtab_clk_bulk_put_all, ptr @__kstrtabns_clk_bulk_put_all }, section "___ksymtab+clk_bulk_put_all", align 4
@__kstrtab_clk_bulk_get_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_get_all = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_get_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_get_all to i32), ptr @__kstrtab_clk_bulk_get_all, ptr @__kstrtabns_clk_bulk_get_all }, section "___ksymtab+clk_bulk_get_all", align 4
@__kstrtab_clk_bulk_unprepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_unprepare = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_unprepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_unprepare to i32), ptr @__kstrtab_clk_bulk_unprepare, ptr @__kstrtabns_clk_bulk_unprepare }, section "___ksymtab_gpl+clk_bulk_unprepare", align 4
@.str = private unnamed_addr constant [34 x i8] c"\013Failed to prepare clk '%s': %d\0A\00", align 1
@__kstrtab_clk_bulk_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_prepare to i32), ptr @__kstrtab_clk_bulk_prepare, ptr @__kstrtabns_clk_bulk_prepare }, section "___ksymtab_gpl+clk_bulk_prepare", align 4
@__kstrtab_clk_bulk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_disable to i32), ptr @__kstrtab_clk_bulk_disable, ptr @__kstrtabns_clk_bulk_disable }, section "___ksymtab_gpl+clk_bulk_disable", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013Failed to enable clk '%s': %d\0A\00", align 1
@__kstrtab_clk_bulk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_bulk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_bulk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_bulk_enable to i32), ptr @__kstrtab_clk_bulk_enable, ptr @__kstrtabns_clk_bulk_enable }, section "___ksymtab_gpl+clk_bulk_enable", align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to get clk '%s': %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\013%pOF: Failed to get clk index: %d ret: %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_clk_bulk_disable, ptr @__ksymtab_clk_bulk_enable, ptr @__ksymtab_clk_bulk_get, ptr @__ksymtab_clk_bulk_get_all, ptr @__ksymtab_clk_bulk_get_optional, ptr @__ksymtab_clk_bulk_prepare, ptr @__ksymtab_clk_bulk_put, ptr @__ksymtab_clk_bulk_put_all, ptr @__ksymtab_clk_bulk_unprepare], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_bulk_put(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = add i32 %0, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_put(ptr noundef %8) #6
  store ptr null, ptr %7, align 4
  %9 = add nsw i32 %6, -1
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %5, label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_bulk_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call fastcc i32 @__clk_bulk_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__clk_bulk_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %7, label %38

6:                                                ; preds = %7
  br i1 %5, label %12, label %38

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %10, %7 ], [ 0, %4 ]
  %9 = getelementptr %struct.clk_bulk_data, ptr %2, i32 %8, i32 1
  store ptr null, ptr %9, align 4
  %10 = add nuw nsw i32 %8, 1
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %6, label %7

12:                                               ; preds = %27, %6
  %13 = phi i32 [ %28, %27 ], [ 0, %6 ]
  %14 = getelementptr %struct.clk_bulk_data, ptr %2, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @clk_get(ptr noundef %0, ptr noundef %15) #6
  %17 = getelementptr %struct.clk_bulk_data, ptr %2, i32 %13, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  store ptr null, ptr %17, align 4
  %20 = icmp eq ptr %16, inttoptr (i32 -2 to ptr)
  %21 = and i1 %20, %3
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = ptrtoint ptr %16 to i32
  %24 = icmp eq ptr %16, inttoptr (i32 -517 to ptr)
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %26, i32 noundef %23) #7
  br label %30

27:                                               ; preds = %19, %12
  %28 = add nuw nsw i32 %13, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %12

30:                                               ; preds = %25, %22
  %31 = icmp eq i32 %13, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ %34, %32 ], [ %13, %30 ]
  %34 = add nsw i32 %33, -1
  %35 = getelementptr %struct.clk_bulk_data, ptr %2, i32 %34, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void @clk_put(ptr noundef %36) #6
  store ptr null, ptr %35, align 4
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %32

38:                                               ; preds = %32, %30, %27, %6, %4
  %39 = phi i32 [ %23, %30 ], [ 0, %6 ], [ 0, %4 ], [ %23, %32 ], [ 0, %27 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_bulk_get_optional(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call fastcc i32 @__clk_bulk_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_bulk_put_all(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = add i32 %0, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %15

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %13, %9 ], [ %7, %6 ]
  %11 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %10, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_put(ptr noundef %12) #6
  store ptr null, ptr %11, align 4
  %13 = add nsw i32 %10, -1
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %6
  tail call void @kfree(ptr noundef %1) #6
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_bulk_get_all(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @of_clk_get_parent_count(ptr noundef nonnull %6) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %8
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 8) #6
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %42, label %14, !prof !8

14:                                               ; preds = %11
  %15 = extractvalue { i32, i1 } %12, 0
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = shl nuw i32 %9, 3
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %16, i8 0, i32 %19, i1 false) #6
  br label %20

20:                                               ; preds = %37, %18
  %21 = phi i32 [ %38, %37 ], [ 0, %18 ]
  %22 = getelementptr %struct.clk_bulk_data, ptr %16, i32 %21
  %23 = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, ptr noundef %22, i32 noundef 1, i32 noundef %21) #6
  %24 = tail call ptr @of_clk_get(ptr noundef nonnull %6, i32 noundef %21) #6
  %25 = getelementptr %struct.clk_bulk_data, ptr %16, i32 %21, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = ptrtoint ptr %24 to i32
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %6, i32 noundef %21, i32 noundef %28) #7
  store ptr null, ptr %25, align 4
  %30 = icmp eq i32 %21, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %31, %27
  %32 = phi i32 [ %33, %31 ], [ %21, %27 ]
  %33 = add nsw i32 %32, -1
  %34 = getelementptr %struct.clk_bulk_data, ptr %16, i32 %33, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void @clk_put(ptr noundef %35) #6
  store ptr null, ptr %34, align 4
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %40, label %31

37:                                               ; preds = %20
  %38 = add nuw nsw i32 %21, 1
  %39 = icmp eq i32 %38, %9
  br i1 %39, label %41, label %20

40:                                               ; preds = %31, %27
  tail call void @kfree(ptr noundef nonnull %16) #6
  br label %42

41:                                               ; preds = %37
  store ptr %16, ptr %1, align 4
  br label %42

42:                                               ; preds = %41, %40, %14, %11, %8, %4, %2
  %43 = phi i32 [ 0, %4 ], [ %28, %40 ], [ %9, %41 ], [ 0, %8 ], [ -12, %14 ], [ -12, %11 ], [ 0, %2 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_bulk_unprepare(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = add i32 %0, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_unprepare(ptr noundef %8) #6
  %9 = add nsw i32 %6, -1
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %5, label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_bulk_prepare(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %21, %2
  %5 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %6 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %8) #7
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %17, %15 ], [ %5, %10 ]
  %17 = add nsw i32 %16, -1
  %18 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %17, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_unprepare(ptr noundef %19) #6
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %24, label %15

21:                                               ; preds = %4
  %22 = add nuw nsw i32 %5, 1
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %4

24:                                               ; preds = %21, %15, %10, %2
  %25 = phi i32 [ %8, %10 ], [ 0, %2 ], [ %8, %15 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_bulk_disable(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = add i32 %0, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  %9 = add nsw i32 %6, -1
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %5, label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_bulk_enable(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %21, %2
  %5 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %6 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_enable(ptr noundef %7) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %8) #7
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %17, %15 ], [ %5, %10 ]
  %17 = add nsw i32 %16, -1
  %18 = getelementptr %struct.clk_bulk_data, ptr %1, i32 %17, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %24, label %15

21:                                               ; preds = %4
  %22 = add nuw nsw i32 %5, 1
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %24, label %4

24:                                               ; preds = %21, %15, %10, %2
  %25 = phi i32 [ %8, %10 ], [ 0, %2 ], [ %8, %15 ], [ 0, %21 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
