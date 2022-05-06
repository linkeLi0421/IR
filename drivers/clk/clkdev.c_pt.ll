; ModuleID = '/llk/IR/drivers/clk/clkdev.c_pt.bc'
source_filename = "../drivers/clk/clkdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get_sys:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get_sys\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get_sys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_put\22\09\09\09\09\09"
module asm "__kstrtabns_clk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clkdev_add:\09\09\09\09\09"
module asm "\09.asciz \09\22clkdev_add\22\09\09\09\09\09"
module asm "__kstrtabns_clkdev_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clkdev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22clkdev_create\22\09\09\09\09\09"
module asm "__kstrtabns_clkdev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clkdev_hw_create:\09\09\09\09\09"
module asm "\09.asciz \09\22clkdev_hw_create\22\09\09\09\09\09"
module asm "__kstrtabns_clkdev_hw_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_add_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_add_alias\22\09\09\09\09\09"
module asm "__kstrtabns_clk_add_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clkdev_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22clkdev_drop\22\09\09\09\09\09"
module asm "__kstrtabns_clkdev_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_clkdev\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_clkdev\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_release_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_release_clkdev\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_release_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_hw_register_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_hw_register_clkdev\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_hw_register_clkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__va_list = type { ptr }
%struct.clk_lookup_alloc = type { %struct.clk_lookup, [20 x i8], [16 x i8] }

@clocks_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clocks_mutex, i64 12), ptr getelementptr (i8, ptr @clocks_mutex, i64 12) } }, align 4
@__kstrtab_clk_get_sys = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get_sys = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get_sys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get_sys to i32), ptr @__kstrtab_clk_get_sys, ptr @__kstrtabns_clk_get_sys }, section "___ksymtab+clk_get_sys", align 4
@__kstrtab_clk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get to i32), ptr @__kstrtab_clk_get, ptr @__kstrtabns_clk_get }, section "___ksymtab+clk_get", align 4
@__kstrtab_clk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_put to i32), ptr @__kstrtab_clk_put, ptr @__kstrtabns_clk_put }, section "___ksymtab+clk_put", align 4
@__kstrtab_clkdev_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_clkdev_add = external dso_local constant [0 x i8], align 1
@__ksymtab_clkdev_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clkdev_add to i32), ptr @__kstrtab_clkdev_add, ptr @__kstrtabns_clkdev_add }, section "___ksymtab+clkdev_add", align 4
@clocks = internal global %struct.list_head { ptr @clocks, ptr @clocks }, align 4
@__kstrtab_clkdev_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_clkdev_create = external dso_local constant [0 x i8], align 1
@__ksymtab_clkdev_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clkdev_create to i32), ptr @__kstrtab_clkdev_create, ptr @__kstrtabns_clkdev_create }, section "___ksymtab_gpl+clkdev_create", align 4
@__kstrtab_clkdev_hw_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_clkdev_hw_create = external dso_local constant [0 x i8], align 1
@__ksymtab_clkdev_hw_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clkdev_hw_create to i32), ptr @__kstrtab_clkdev_hw_create, ptr @__kstrtabns_clkdev_hw_create }, section "___ksymtab_gpl+clkdev_hw_create", align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_clk_add_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_add_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_add_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_add_alias to i32), ptr @__kstrtab_clk_add_alias, ptr @__kstrtabns_clk_add_alias }, section "___ksymtab+clk_add_alias", align 4
@__kstrtab_clkdev_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_clkdev_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_clkdev_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clkdev_drop to i32), ptr @__kstrtab_clkdev_drop, ptr @__kstrtabns_clkdev_drop }, section "___ksymtab+clkdev_drop", align 4
@__kstrtab_clk_register_clkdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_clkdev = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_clkdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_clkdev to i32), ptr @__kstrtab_clk_register_clkdev, ptr @__kstrtabns_clk_register_clkdev }, section "___ksymtab+clk_register_clkdev", align 4
@__kstrtab_clk_hw_register_clkdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_clkdev = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_clkdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_clkdev to i32), ptr @__kstrtab_clk_hw_register_clkdev, ptr @__kstrtabns_clk_hw_register_clkdev }, section "___ksymtab+clk_hw_register_clkdev", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/clk/clkdev.c\00", align 1
@__kstrtab_devm_clk_release_clkdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_release_clkdev = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_release_clkdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_release_clkdev to i32), ptr @__kstrtab_devm_clk_release_clkdev, ptr @__kstrtabns_devm_clk_release_clkdev }, section "___ksymtab+devm_clk_release_clkdev", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"devm_clkdev_release\00", align 1
@__kstrtab_devm_clk_hw_register_clkdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_hw_register_clkdev = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_hw_register_clkdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_hw_register_clkdev to i32), ptr @__kstrtab_devm_clk_hw_register_clkdev, ptr @__kstrtabns_devm_clk_hw_register_clkdev }, section "___ksymtab+devm_clk_hw_register_clkdev", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_clk_add_alias, ptr @__ksymtab_clk_get, ptr @__ksymtab_clk_get_sys, ptr @__ksymtab_clk_hw_register_clkdev, ptr @__ksymtab_clk_put, ptr @__ksymtab_clk_register_clkdev, ptr @__ksymtab_clkdev_add, ptr @__ksymtab_clkdev_create, ptr @__ksymtab_clkdev_drop, ptr @__ksymtab_clkdev_hw_create, ptr @__ksymtab_devm_clk_hw_register_clkdev, ptr @__ksymtab_devm_clk_release_clkdev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_find_hw(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %3 = icmp eq ptr %0, null
  %4 = select i1 %3, i32 0, i32 2
  %5 = icmp eq ptr %1, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = or i32 %4, %7
  %9 = load ptr, ptr @clocks, align 4
  %10 = icmp eq ptr %9, @clocks
  br i1 %10, label %49, label %11

11:                                               ; preds = %38, %2
  %12 = phi ptr [ %41, %38 ], [ %9, %2 ]
  %13 = phi ptr [ %40, %38 ], [ null, %2 ]
  %14 = phi i32 [ %39, %38 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.clk_lookup, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  br i1 %3, label %38, label %19

19:                                               ; preds = %18
  %20 = tail call i32 @strcmp(ptr noundef nonnull %16, ptr noundef nonnull %0) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19, %11
  %23 = phi i32 [ 0, %11 ], [ 2, %19 ]
  %24 = getelementptr inbounds %struct.clk_lookup, ptr %12, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  br i1 %5, label %38, label %28

28:                                               ; preds = %27
  %29 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull %1) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = or i32 %23, 1
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ %32, %31 ], [ %23, %22 ]
  %35 = icmp sgt i32 %34, %14
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = icmp eq i32 %34, %8
  br i1 %37, label %43, label %38

38:                                               ; preds = %36, %33, %28, %27, %19, %18
  %39 = phi i32 [ %14, %19 ], [ %14, %28 ], [ %14, %33 ], [ %14, %27 ], [ %14, %18 ], [ %34, %36 ]
  %40 = phi ptr [ %13, %19 ], [ %13, %28 ], [ %13, %33 ], [ %13, %27 ], [ %13, %18 ], [ %12, %36 ]
  %41 = load ptr, ptr %12, align 4
  %42 = icmp eq ptr %41, @clocks
  br i1 %42, label %43, label %11

43:                                               ; preds = %38, %36
  %44 = phi ptr [ %12, %36 ], [ %40, %38 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.clk_lookup, ptr %44, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %43, %2
  %50 = phi ptr [ %48, %46 ], [ inttoptr (i32 -2 to ptr), %43 ], [ inttoptr (i32 -2 to ptr), %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  ret ptr %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_get_sys(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @clk_find_hw(ptr noundef %0, ptr noundef %1) #9
  %4 = tail call ptr @clk_hw_create_clk(ptr noundef null, ptr noundef %3, ptr noundef %0, ptr noundef %1) #9
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %6, %4 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @of_clk_get_hw(ptr noundef nonnull %13, i32 noundef 0, ptr noundef %1) #9
  %17 = icmp ule ptr %16, inttoptr (i32 -4096 to ptr)
  %18 = icmp eq ptr %16, inttoptr (i32 -517 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @clk_hw_create_clk(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %11, ptr noundef %1) #9
  br label %26

22:                                               ; preds = %15, %10, %2
  %23 = phi ptr [ %11, %10 ], [ null, %2 ], [ %11, %15 ]
  %24 = tail call ptr @clk_find_hw(ptr noundef %23, ptr noundef %1) #9
  %25 = tail call ptr @clk_hw_create_clk(ptr noundef %0, ptr noundef %24, ptr noundef %23, ptr noundef %1) #9
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %21, %20 ], [ %25, %22 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_hw(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_create_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_put(ptr noundef %0) #0 {
  tail call void @__clk_put(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdev_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.clk_lookup, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_lookup, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @__clk_get_hw(ptr noundef %7) #9
  store ptr %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  tail call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr @clocks, ptr %0, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %0, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdev_add_table(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %14, %4 ], [ %0, %2 ]
  %7 = add i32 %5, -1
  %8 = getelementptr inbounds %struct.clk_lookup, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @__clk_get_hw(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.clk_lookup, ptr %6, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr @clocks, ptr %6, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %6, ptr %12, align 4
  %14 = getelementptr %struct.clk_lookup, ptr %6, i32 1
  %15 = icmp eq i32 %7, 0
  br i1 %15, label %16, label %4

16:                                               ; preds = %4, %2
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clkdev_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @__clk_get_hw(ptr noundef %0) #9
  %6 = load i32, ptr %4, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call fastcc ptr @vclkdev_alloc(ptr noundef %5, ptr noundef %1, ptr noundef %2, [1 x i32] %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr %8, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr @clocks, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  br label %13

13:                                               ; preds = %10, %3
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret ptr %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clkdev_hw_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call fastcc ptr @vclkdev_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr @clocks, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  br label %12

12:                                               ; preds = %9, %3
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_add_alias(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %8, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @of_clk_get_hw(ptr noundef nonnull %15, i32 noundef 0, ptr noundef %2) #9
  %19 = icmp ule ptr %18, inttoptr (i32 -4096 to ptr)
  %20 = icmp eq ptr %18, inttoptr (i32 -517 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call ptr @clk_hw_create_clk(ptr noundef nonnull %3, ptr noundef %18, ptr noundef %13, ptr noundef %2) #9
  br label %28

24:                                               ; preds = %17, %12, %4
  %25 = phi ptr [ %13, %12 ], [ null, %4 ], [ %13, %17 ]
  %26 = tail call ptr @clk_find_hw(ptr noundef %25, ptr noundef %2) #9
  %27 = tail call ptr @clk_hw_create_clk(ptr noundef %3, ptr noundef %26, ptr noundef %25, ptr noundef %2) #9
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi ptr [ %23, %22 ], [ %27, %24 ]
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %39

33:                                               ; preds = %28
  %34 = icmp eq ptr %1, null
  %35 = select i1 %34, ptr null, ptr @.str
  %36 = tail call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %29, ptr noundef %0, ptr noundef %35, ptr noundef %1)
  tail call void @__clk_put(ptr noundef %29) #9
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 -19, i32 0
  br label %39

39:                                               ; preds = %33, %31
  %40 = phi i32 [ %32, %31 ], [ %38, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clkdev_drop(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_register_clkdev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = ptrtoint ptr %0 to i32
  br label %22

7:                                                ; preds = %3
  %8 = tail call ptr @__clk_get_hw(ptr noundef %0) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %22

12:                                               ; preds = %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call ptr (ptr, ptr, ptr, ...) @__clk_register_clkdev(ptr noundef %8, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2) #9
  br label %18

16:                                               ; preds = %12
  %17 = tail call ptr (ptr, ptr, ptr, ...) @__clk_register_clkdev(ptr noundef %8, ptr noundef %1, ptr noundef null) #9
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i32 -12, i32 0
  br label %22

22:                                               ; preds = %18, %10, %5
  %23 = phi i32 [ %6, %5 ], [ %11, %10 ], [ %21, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_hw_register_clkdev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = ptrtoint ptr %0 to i32
  br label %17

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call ptr (ptr, ptr, ptr, ...) @__clk_register_clkdev(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2) #9
  br label %13

11:                                               ; preds = %7
  %12 = tail call ptr (ptr, ptr, ptr, ...) @__clk_register_clkdev(ptr noundef %0, ptr noundef %1, ptr noundef null) #9
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ]
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, i32 -12, i32 0
  br label %17

17:                                               ; preds = %13, %5
  %18 = phi i32 [ %6, %5 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_clk_release_clkdev(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, i32 0, i32 2
  %6 = icmp eq ptr %1, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = or i32 %5, %8
  %10 = load ptr, ptr @clocks, align 4
  %11 = icmp eq ptr %10, @clocks
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  br label %48

13:                                               ; preds = %40, %3
  %14 = phi ptr [ %43, %40 ], [ %10, %3 ]
  %15 = phi ptr [ %42, %40 ], [ null, %3 ]
  %16 = phi i32 [ %41, %40 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.clk_lookup, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  br i1 %4, label %40, label %21

21:                                               ; preds = %20
  %22 = tail call i32 @strcmp(ptr noundef nonnull %18, ptr noundef nonnull %2) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21, %13
  %25 = phi i32 [ 0, %13 ], [ 2, %21 ]
  %26 = getelementptr inbounds %struct.clk_lookup, ptr %14, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  br i1 %6, label %40, label %30

30:                                               ; preds = %29
  %31 = tail call i32 @strcmp(ptr noundef nonnull %27, ptr noundef nonnull %1) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = or i32 %25, 1
  br label %35

35:                                               ; preds = %33, %24
  %36 = phi i32 [ %34, %33 ], [ %25, %24 ]
  %37 = icmp sgt i32 %36, %16
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = icmp eq i32 %36, %9
  br i1 %39, label %45, label %40

40:                                               ; preds = %38, %35, %30, %29, %21, %20
  %41 = phi i32 [ %16, %21 ], [ %16, %30 ], [ %16, %35 ], [ %16, %29 ], [ %16, %20 ], [ %36, %38 ]
  %42 = phi ptr [ %15, %21 ], [ %15, %30 ], [ %15, %35 ], [ %15, %29 ], [ %15, %20 ], [ %14, %38 ]
  %43 = load ptr, ptr %14, align 4
  %44 = icmp eq ptr %43, @clocks
  br i1 %44, label %45, label %13

45:                                               ; preds = %40, %38
  %46 = phi ptr [ %14, %38 ], [ %42, %40 ]
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %45, %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 381, i32 noundef 9, ptr noundef null) #9
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi ptr [ null, %48 ], [ %46, %45 ]
  %51 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_clkdev_release, ptr noundef nonnull @devm_clk_match_clkdev, ptr noundef %50) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53, !prof !10

53:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 9, ptr noundef null) #9
  br label %54

54:                                               ; preds = %53, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clkdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_clk_match_clkdev(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #4 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_hw_register_clkdev(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clkdev_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %3, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call ptr (ptr, ptr, ptr, ...) @__clk_register_clkdev(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull %3) #9
  br label %15

13:                                               ; preds = %9
  %14 = tail call ptr (ptr, ptr, ptr, ...) @__clk_register_clkdev(ptr noundef %1, ptr noundef %2, ptr noundef null) #9
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  store ptr %16, ptr %5, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %20

18:                                               ; preds = %7
  %19 = ptrtoint ptr %1 to i32
  br label %21

20:                                               ; preds = %15
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #9
  br label %23

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %19, %18 ], [ -12, %15 ]
  tail call void @devres_free(ptr noundef nonnull %5) #9
  br label %23

23:                                               ; preds = %21, %20, %4
  %24 = phi i32 [ %22, %21 ], [ 0, %20 ], [ -12, %4 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @vclkdev_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %3) unnamed_addr #6 section ".ref.text" {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 60) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.clk_lookup, ptr %6, i32 0, i32 4
  store ptr %0, ptr %9, align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.clk_lookup_alloc, ptr %6, i32 0, i32 2
  %13 = tail call i32 @strlcpy(ptr noundef %12, ptr noundef nonnull %1, i32 noundef 16) #9
  %14 = getelementptr inbounds %struct.clk_lookup, ptr %6, i32 0, i32 2
  store ptr %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.clk_lookup_alloc, ptr %6, i32 0, i32 1
  %19 = tail call i32 @vscnprintf(ptr noundef %18, i32 noundef 20, ptr noundef nonnull %2, [1 x i32] %3) #9
  %20 = getelementptr inbounds %struct.clk_lookup, ptr %6, i32 0, i32 1
  store ptr %18, ptr %20, align 8
  br label %21

21:                                               ; preds = %17, %15, %4
  ret ptr %6
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @__clk_register_clkdev(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) unnamed_addr #0 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call fastcc ptr @vclkdev_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  call void @mutex_lock(ptr noundef nonnull @clocks_mutex) #9
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @clocks, i32 0, i32 1), align 4
  store ptr @clocks, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  call void @mutex_unlock(ptr noundef nonnull @clocks_mutex) #9
  br label %12

12:                                               ; preds = %9, %3
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret ptr %7
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
