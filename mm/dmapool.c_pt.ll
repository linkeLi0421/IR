; ModuleID = '/llk/IR/mm/dmapool.c_pt.bc'
source_filename = "../mm/dmapool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_pool_free\22\09\09\09\09\09"
module asm "__kstrtabns_dma_pool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_pool_create\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_pool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmam_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22dmam_pool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_dmam_pool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.dma_pool = type { %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, [32 x i8], %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.dma_page = type { %struct.list_head, ptr, i32, i32, i32 }

@pools_reg_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pools_reg_lock, i64 12), ptr getelementptr (i8, ptr @pools_reg_lock, i64 12) } }, align 4
@pools_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pools_lock, i64 12), ptr getelementptr (i8, ptr @pools_lock, i64 12) } }, align 4
@dev_attr_pools = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @pools_show, ptr null }, align 4
@__kstrtab_dma_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_create to i32), ptr @__kstrtab_dma_pool_create, ptr @__kstrtabns_dma_pool_create }, section "___ksymtab+dma_pool_create", align 4
@.str = private unnamed_addr constant [16 x i8] c"%s %s, %p busy\0A\00", align 1
@__func__.dma_pool_destroy = private unnamed_addr constant [17 x i8] c"dma_pool_destroy\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\013%s %s, %p busy\0A\00", align 1
@__kstrtab_dma_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_destroy to i32), ptr @__kstrtab_dma_pool_destroy, ptr @__kstrtabns_dma_pool_destroy }, section "___ksymtab+dma_pool_destroy", align 4
@__kstrtab_dma_pool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_alloc to i32), ptr @__kstrtab_dma_pool_alloc, ptr @__kstrtabns_dma_pool_alloc }, section "___ksymtab+dma_pool_alloc", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s %s, %p/%pad (bad dma)\0A\00", align 1
@__func__.dma_pool_free = private unnamed_addr constant [14 x i8] c"dma_pool_free\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\013%s %s, %p/%pad (bad dma)\0A\00", align 1
@__kstrtab_dma_pool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_pool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_pool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_pool_free to i32), ptr @__kstrtab_dma_pool_free, ptr @__kstrtabns_dma_pool_free }, section "___ksymtab+dma_pool_free", align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"dmam_pool_release\00", align 1
@__kstrtab_dmam_pool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_pool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_pool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_pool_create to i32), ptr @__kstrtab_dmam_pool_create, ptr @__kstrtabns_dmam_pool_create }, section "___ksymtab+dmam_pool_create", align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"mm/dmapool.c\00", align 1
@__kstrtab_dmam_pool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmam_pool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_dmam_pool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmam_pool_destroy to i32), ptr @__kstrtab_dmam_pool_destroy, ptr @__kstrtabns_dmam_pool_destroy }, section "___ksymtab+dmam_pool_destroy", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"pools\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"poolinfo - 0.1\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%-16s %4u %4zu %4zu %2u\0A\00", align 1
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@init_on_free = external dso_local global %struct.static_key_false, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_dma_pool_alloc, ptr @__ksymtab_dma_pool_create, ptr @__ksymtab_dma_pool_destroy, ptr @__ksymtab_dma_pool_free, ptr @__ksymtab_dmam_pool_create, ptr @__ksymtab_dmam_pool_destroy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_pool_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @llvm.ctpop.i32(i32 %3), !range !8
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %54

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %3, %7 ], [ 1, %5 ]
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @llvm.umax.i32(i32 %2, i32 4)
  %15 = add i32 %14, -1
  %16 = add i32 %15, %11
  %17 = sub i32 0, %11
  %18 = and i32 %16, %17
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 4096)
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = icmp ule i32 %18, %4
  %23 = tail call i32 @llvm.ctpop.i32(i32 %4), !range !8
  %24 = icmp ult i32 %23, 2
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %54

26:                                               ; preds = %21, %13
  %27 = phi i32 [ %19, %13 ], [ %4, %21 ]
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 68) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 6
  %33 = tail call i32 @strscpy(ptr noundef %32, ptr noundef %0, i32 noundef 32) #8
  %34 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 3
  store ptr %1, ptr %34, align 8
  store volatile ptr %29, ptr %29, align 8
  %35 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %29, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 1
  store i32 0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 2
  store i32 %18, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 5
  store i32 %27, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 4
  store i32 %19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 7
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_pool, ptr %29, i32 0, i32 7, i32 1
  store ptr %40, ptr %41, align 8
  tail call void @mutex_lock(ptr noundef nonnull @pools_reg_lock) #8
  tail call void @mutex_lock(ptr noundef nonnull @pools_lock) #8
  %42 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 21
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  %45 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %40, ptr %45, align 4
  store ptr %43, ptr %40, align 4
  store ptr %42, ptr %41, align 8
  store volatile ptr %40, ptr %42, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #8
  br i1 %44, label %46, label %53

46:                                               ; preds = %31
  %47 = tail call i32 @device_create_file(ptr noundef %1, ptr noundef nonnull @dev_attr_pools) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  tail call void @mutex_lock(ptr noundef nonnull @pools_lock) #8
  %50 = load ptr, ptr %41, align 8
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #8
  tail call void @mutex_unlock(ptr noundef nonnull @pools_reg_lock) #8
  tail call void @kfree(ptr noundef nonnull %29) #8
  br label %54

53:                                               ; preds = %46, %31
  tail call void @mutex_unlock(ptr noundef nonnull @pools_reg_lock) #8
  br label %54

54:                                               ; preds = %53, %49, %26, %21, %10, %7
  %55 = phi ptr [ %29, %53 ], [ null, %7 ], [ null, %10 ], [ null, %21 ], [ null, %26 ], [ null, %49 ]
  ret ptr %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_pool_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %59, label %3, !prof !9

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @pools_reg_lock) #8
  tail call void @mutex_lock(ptr noundef nonnull @pools_lock) #8
  %4 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 21
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #8
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4
  tail call void @device_remove_file(ptr noundef %17, ptr noundef nonnull @dev_attr_pools) #8
  br label %19

18:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #8
  br label %19

19:                                               ; preds = %18, %16, %12
  tail call void @mutex_unlock(ptr noundef nonnull @pools_reg_lock) #8
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %58, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 4
  br label %25

25:                                               ; preds = %55, %22
  %26 = phi ptr [ %20, %22 ], [ %27, %55 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_page, ptr %26, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %9, align 4
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds %struct.dma_page, ptr %26, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %37, label %36

36:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %32, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dma_pool_destroy, ptr noundef %23, ptr noundef %35) #9
  br label %39

37:                                               ; preds = %31
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dma_pool_destroy, ptr noundef %23, ptr noundef %35) #9
  br label %39

39:                                               ; preds = %37, %36
  %40 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %26, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  br label %55

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.dma_page, ptr %26, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr %9, align 4
  %48 = load i32, ptr %24, align 4
  %49 = getelementptr inbounds %struct.dma_page, ptr %26, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void @dma_free_attrs(ptr noundef %47, i32 noundef %48, ptr noundef %50, i32 noundef %46, i32 noundef 0) #8
  %51 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  br label %55

55:                                               ; preds = %44, %39
  %56 = phi ptr [ %40, %39 ], [ %51, %44 ]
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  tail call void @kfree(ptr noundef %26) #8
  %57 = icmp eq ptr %27, %0
  br i1 %57, label %58, label %25

58:                                               ; preds = %55, %19
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_pool_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %0, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dma_page, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %70, label %7

16:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %17 = and i32 %1, -257
  %18 = and i32 %1, 17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %16
  %21 = and i32 %1, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 2
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ 0, %16 ], [ %23, %20 ]
  %26 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %25, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef %17, i32 noundef 24) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %93, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %6, align 4
  %34 = getelementptr inbounds %struct.dma_page, ptr %28, i32 0, i32 2
  %35 = lshr i32 %1, 5
  %36 = and i32 %35, 256
  %37 = tail call ptr @dma_alloc_attrs(ptr noundef %32, i32 noundef %33, ptr noundef %34, i32 noundef %17, i32 noundef %36) #8
  %38 = getelementptr inbounds %struct.dma_page, ptr %28, i32 0, i32 1
  store ptr %37, ptr %38, align 8
  %39 = icmp eq ptr %37, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 2
  br label %44

44:                                               ; preds = %54, %40
  %45 = phi i32 [ 0, %40 ], [ %56, %54 ]
  %46 = phi i32 [ %42, %40 ], [ %55, %54 ]
  %47 = load i32, ptr %43, align 4
  %48 = add i32 %47, %45
  %49 = add i32 %48, %47
  %50 = icmp ult i32 %49, %46
  br i1 %50, label %54, label %51, !prof !10

51:                                               ; preds = %44
  %52 = load i32, ptr %41, align 4
  %53 = add i32 %52, %46
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i32 [ %53, %51 ], [ %46, %44 ]
  %56 = phi i32 [ %46, %51 ], [ %48, %44 ]
  %57 = load ptr, ptr %38, align 8
  %58 = getelementptr i8, ptr %57, i32 %45
  store i32 %56, ptr %58, align 4
  %59 = load i32, ptr %6, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %44, label %62

61:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %28) #8
  br label %93

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.dma_page, ptr %28, i32 0, i32 3
  store i32 0, ptr %63, align 8
  %64 = getelementptr inbounds %struct.dma_page, ptr %28, i32 0, i32 4
  store i32 0, ptr %64, align 4
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %28, ptr %67, align 4
  store ptr %66, ptr %28, align 8
  %68 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %0, ptr %68, align 4
  store volatile ptr %28, ptr %0, align 4
  %69 = load i32, ptr %64, align 4
  br label %70

70:                                               ; preds = %62, %11
  %71 = phi i32 [ %69, %62 ], [ %13, %11 ]
  %72 = phi ptr [ %28, %62 ], [ %9, %11 ]
  %73 = phi i32 [ %65, %62 ], [ %5, %11 ]
  %74 = getelementptr inbounds %struct.dma_page, ptr %72, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = getelementptr inbounds %struct.dma_page, ptr %72, i32 0, i32 4
  %78 = getelementptr inbounds %struct.dma_page, ptr %72, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %79, i32 %71
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %77, align 4
  %82 = getelementptr inbounds %struct.dma_page, ptr %72, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %71
  store i32 %84, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %73) #8
  %85 = load volatile i32, ptr @init_on_alloc, align 4
  %86 = icmp sgt i32 %85, 0
  %87 = and i32 %1, 256
  %88 = icmp ne i32 %87, 0
  %89 = or i1 %88, %86
  br i1 %89, label %90, label %93

90:                                               ; preds = %70
  %91 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %80, i8 0, i32 %92, i1 false)
  br label %93

93:                                               ; preds = %90, %70, %61, %24
  %94 = phi ptr [ %80, %90 ], [ %80, %70 ], [ null, %24 ], [ null, %61 ]
  ret ptr %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_pool_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 4
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi ptr [ %7, %9 ], [ %21, %20 ]
  %13 = getelementptr inbounds %struct.dma_page, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %2
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = sub i32 %2, %14
  %18 = load i32, ptr %10, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %25, label %11

23:                                               ; preds = %16
  %24 = icmp eq ptr %12, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %23, %20, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  %26 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 6
  br i1 %28, label %31, label %30

30:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %27, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dma_pool_free, ptr noundef %29, ptr noundef %1, ptr noundef nonnull %4) #9
  br label %50

31:                                               ; preds = %25
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dma_pool_free, ptr noundef %29, ptr noundef %1, ptr noundef nonnull %4) #9
  br label %50

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.dma_page, ptr %12, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = ptrtoint ptr %1 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  %39 = load volatile i32, ptr @init_on_free, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %43, i1 false)
  br label %44

44:                                               ; preds = %41, %33
  %45 = getelementptr inbounds %struct.dma_page, ptr %12, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.dma_page, ptr %12, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %1, align 4
  store i32 %38, ptr %48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  br label %50

50:                                               ; preds = %44, %31, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dmam_pool_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @dmam_pool_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @dma_pool_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  store ptr %9, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @devres_add(ptr noundef %1, ptr noundef nonnull %6) #8
  br label %13

12:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #8
  br label %13

13:                                               ; preds = %12, %11, %5
  %14 = phi ptr [ null, %5 ], [ null, %12 ], [ %9, %11 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dmam_pool_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @dma_pool_destroy(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dmam_pool_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_pool, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @devres_release(ptr noundef %3, ptr noundef nonnull @dmam_pool_release, ptr noundef nonnull @dmam_pool_match, ptr noundef %0) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 527, i32 noundef 9, ptr noundef null) #8
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dmam_pool_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #4 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pools_show(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.7) #8
  %5 = sub i32 4096, %4
  tail call void @mutex_lock(ptr noundef nonnull @pools_lock) #8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %2, i32 %4
  br label %11

11:                                               ; preds = %29, %9
  %12 = phi ptr [ %44, %29 ], [ %7, %9 ]
  %13 = phi i32 [ %42, %29 ], [ %5, %9 ]
  %14 = phi ptr [ %43, %29 ], [ %10, %9 ]
  %15 = getelementptr i8, ptr %12, i32 -60
  %16 = getelementptr i8, ptr %12, i32 -52
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #8
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, %15
  br i1 %18, label %29, label %19

19:                                               ; preds = %19, %11
  %20 = phi ptr [ %27, %19 ], [ %17, %11 ]
  %21 = phi i32 [ %23, %19 ], [ 0, %11 ]
  %22 = phi i32 [ %26, %19 ], [ 0, %11 ]
  %23 = add i32 %21, 1
  %24 = getelementptr inbounds %struct.dma_page, ptr %20, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %22
  %27 = load ptr, ptr %20, align 4
  %28 = icmp eq ptr %27, %15
  br i1 %28, label %29, label %19

29:                                               ; preds = %19, %11
  %30 = phi i32 [ 0, %11 ], [ %26, %19 ]
  %31 = phi i32 [ 0, %11 ], [ %23, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %32 = load i16, ptr %16, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %34 = getelementptr i8, ptr %12, i32 -32
  %35 = getelementptr i8, ptr %12, i32 -40
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %12, i32 -48
  %38 = load i32, ptr %37, align 4
  %39 = udiv i32 %36, %38
  %40 = mul i32 %39, %31
  %41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %13, ptr noundef nonnull @.str.8, ptr noundef %34, i32 noundef %30, i32 noundef %40, i32 noundef %38, i32 noundef %31) #8
  %42 = sub i32 %13, %41
  %43 = getelementptr i8, ptr %14, i32 %41
  %44 = load ptr, ptr %12, align 4
  %45 = icmp eq ptr %44, %6
  br i1 %45, label %46, label %11

46:                                               ; preds = %29, %3
  %47 = phi i32 [ %5, %3 ], [ %42, %29 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pools_lock) #8
  %48 = sub i32 4096, %47
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149221720}
!12 = !{i64 2149217544}
!13 = !{i64 2149217619, i64 2149217646, i64 2149217693, i64 2149217715, i64 2149217743, i64 2149217763}
!14 = !{i64 613771}
!15 = !{i64 2149245864}
