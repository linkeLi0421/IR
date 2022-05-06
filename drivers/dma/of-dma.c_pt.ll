; ModuleID = '/llk/IR/drivers/dma/of-dma.c_pt.bc'
source_filename = "../drivers/dma/of-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_controller_free:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_controller_free\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_controller_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_router_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_router_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_router_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_request_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_request_slave_channel\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_request_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_simple_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_simple_xlate\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_simple_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_xlate_by_chan_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_xlate_by_chan_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_xlate_by_chan_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_router = type { ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }

@.str = private unnamed_addr constant [39 x i8] c"\013%s: not enough information provided\0A\00", align 1
@__func__.of_dma_controller_register = private unnamed_addr constant [27 x i8] c"of_dma_controller_register\00", align 1
@of_dma_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_dma_lock, i64 12), ptr getelementptr (i8, ptr @of_dma_lock, i64 12) } }, align 4
@of_dma_list = internal global %struct.list_head { ptr @of_dma_list, ptr @of_dma_list }, align 4
@__kstrtab_of_dma_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_controller_register to i32), ptr @__kstrtab_of_dma_controller_register, ptr @__kstrtabns_of_dma_controller_register }, section "___ksymtab_gpl+of_dma_controller_register", align 4
@__kstrtab_of_dma_controller_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_controller_free = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_controller_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_controller_free to i32), ptr @__kstrtab_of_dma_controller_free, ptr @__kstrtabns_of_dma_controller_free }, section "___ksymtab_gpl+of_dma_controller_free", align 4
@__func__.of_dma_router_register = private unnamed_addr constant [23 x i8] c"of_dma_router_register\00", align 1
@__kstrtab_of_dma_router_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_router_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_router_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_router_register to i32), ptr @__kstrtab_of_dma_router_register, ptr @__kstrtabns_of_dma_router_register }, section "___ksymtab_gpl+of_dma_router_register", align 4
@of_dma_request_slave_channel.last_index = internal global %struct.atomic_t zeroinitializer, align 4
@__func__.of_dma_request_slave_channel = private unnamed_addr constant [29 x i8] c"of_dma_request_slave_channel\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\013%s: dma-names property of node '%pOF' missing or empty\0A\00", align 1
@__kstrtab_of_dma_request_slave_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_request_slave_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_request_slave_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_request_slave_channel to i32), ptr @__kstrtab_of_dma_request_slave_channel, ptr @__kstrtabns_of_dma_request_slave_channel }, section "___ksymtab_gpl+of_dma_request_slave_channel", align 4
@__kstrtab_of_dma_simple_xlate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_simple_xlate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_simple_xlate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_simple_xlate to i32), ptr @__kstrtab_of_dma_simple_xlate, ptr @__kstrtabns_of_dma_simple_xlate }, section "___ksymtab_gpl+of_dma_simple_xlate", align 4
@__kstrtab_of_dma_xlate_by_chan_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_xlate_by_chan_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_xlate_by_chan_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_xlate_by_chan_id to i32), ptr @__kstrtab_of_dma_xlate_by_chan_id, ptr @__kstrtabns_of_dma_xlate_by_chan_id }, section "___ksymtab_gpl+of_dma_xlate_by_chan_id", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_of_dma_controller_free, ptr @__ksymtab_of_dma_controller_register, ptr @__ksymtab_of_dma_request_slave_channel, ptr @__ksymtab_of_dma_router_register, ptr @__ksymtab_of_dma_simple_xlate, ptr @__ksymtab_of_dma_xlate_by_chan_id], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_dma_controller_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_dma_controller_register) #8
  br label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.of_dma, ptr %11, i32 0, i32 1
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.of_dma, ptr %11, i32 0, i32 2
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.of_dma, ptr %11, i32 0, i32 5
  store ptr %2, ptr %16, align 8
  tail call void @mutex_lock(ptr noundef nonnull @of_dma_lock) #10
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  store ptr %11, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  store ptr @of_dma_list, ptr %11, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %11, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #10
  br label %19

19:                                               ; preds = %13, %9, %7
  %20 = phi i32 [ 0, %13 ], [ -22, %7 ], [ -12, %9 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_dma_controller_free(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @of_dma_lock) #10
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @of_dma_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @of_dma_list
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_dma, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %4) #10
  br label %15

15:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_dma_router_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_dma_router_register) #8
  br label %22

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.of_dma, ptr %13, i32 0, i32 1
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.of_dma, ptr %13, i32 0, i32 2
  store ptr @of_dma_router_xlate, ptr %17, align 4
  %18 = getelementptr inbounds %struct.of_dma, ptr %13, i32 0, i32 3
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.of_dma, ptr %13, i32 0, i32 4
  store ptr %2, ptr %19, align 4
  tail call void @mutex_lock(ptr noundef nonnull @of_dma_lock) #10
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  store ptr @of_dma_list, ptr %13, align 8
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %13, ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #10
  br label %22

22:                                               ; preds = %15, %11, %9
  %23 = phi i32 [ 0, %15 ], [ -22, %9 ], [ -12, %11 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_dma_router_xlate(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, ptr noundef align 4 dereferenceable(72) %0, i32 72, i1 false)
  %4 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = call ptr %5(ptr noundef nonnull %3, ptr noundef %1) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %54, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %12, %14 ], [ @of_dma_list, %8 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @of_dma_list
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.of_dma, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %9
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = icmp eq ptr %12, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_router, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  call void %24(ptr noundef %25, ptr noundef %6) #10
  br label %51

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.of_dma, ptr %12, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = call ptr %28(ptr noundef nonnull %3, ptr noundef nonnull %12) #10
  %30 = icmp eq ptr %29, null
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = or i1 %30, %31
  %33 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  br i1 %32, label %35, label %39

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.dma_router, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %34, align 4
  call void %37(ptr noundef %38, ptr noundef %6) #10
  br label %51

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 12
  store ptr %34, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 13
  store ptr %6, ptr %41, align 4
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 28
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = call i32 %44(ptr noundef nonnull %29) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  call void @dma_release_channel(ptr noundef nonnull %29) #10
  %50 = inttoptr i32 %47 to ptr
  br label %51

51:                                               ; preds = %49, %46, %39, %35, %20
  %52 = phi ptr [ %29, %35 ], [ inttoptr (i32 -517 to ptr), %20 ], [ %50, %49 ], [ %29, %46 ], [ %29, %39 ]
  %53 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %51, %2
  %55 = phi ptr [ %52, %51 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_dma_request_slave_channel(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_dma_request_slave_channel) #8
  br label %65

10:                                               ; preds = %2
  %11 = tail call ptr @of_find_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.of_dma_request_slave_channel, ptr noundef nonnull %0) #8
  br label %65

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @of_dma_request_slave_channel.last_index) #10, !srcloc !10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @of_dma_request_slave_channel.last_index, ptr nonnull @of_dma_request_slave_channel.last_index, i32 1, ptr nonnull elementtype(i32) @of_dma_request_slave_channel.last_index) #10, !srcloc !11
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %21 = icmp eq i32 %14, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %58, %18
  %23 = phi i32 [ %59, %58 ], [ -19, %18 ]
  %24 = phi i32 [ %60, %58 ], [ 0, %18 ]
  %25 = add i32 %24, %20
  %26 = srem i32 %25, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  %27 = call i32 @of_property_read_string_helper(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %26) #10
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load ptr, ptr %3, align 4
  %31 = call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef %26, ptr noundef nonnull %4) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %29, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %58

37:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @mutex_lock(ptr noundef nonnull @of_dma_lock) #10
  %38 = load ptr, ptr %4, align 4
  br label %39

39:                                               ; preds = %43, %37
  %40 = phi ptr [ @of_dma_list, %37 ], [ %41, %43 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, @of_dma_list
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.of_dma, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %47, label %39

47:                                               ; preds = %43
  %48 = icmp eq ptr %41, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.of_dma, ptr %41, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call ptr %51(ptr noundef nonnull %4, ptr noundef nonnull %41) #10
  br label %53

53:                                               ; preds = %49, %47, %39
  %54 = phi ptr [ %52, %49 ], [ null, %47 ], [ null, %39 ]
  %55 = phi i32 [ %23, %49 ], [ -517, %47 ], [ -517, %39 ]
  call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #10
  %56 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %56) #10
  %57 = icmp eq ptr %54, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53, %36
  %59 = phi i32 [ %55, %53 ], [ %23, %36 ]
  %60 = add nuw nsw i32 %24, 1
  %61 = icmp eq i32 %60, %14
  br i1 %61, label %62, label %22

62:                                               ; preds = %58, %18
  %63 = phi i32 [ -19, %18 ], [ %59, %58 ]
  %64 = inttoptr i32 %63 to ptr
  br label %65

65:                                               ; preds = %62, %53, %16, %10, %8
  %66 = phi ptr [ inttoptr (i32 -19 to ptr), %16 ], [ %64, %62 ], [ inttoptr (i32 -19 to ptr), %8 ], [ inttoptr (i32 -19 to ptr), %10 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  ret ptr %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_dma_simple_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.of_dma_filter_info, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp eq i32 %8, 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %0, align 4
  %17 = tail call ptr @__dma_request_channel(ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef %15, ptr noundef %16) #10
  br label %18

18:                                               ; preds = %14, %6, %2
  %19 = phi ptr [ %17, %14 ], [ null, %6 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_dma_xlate_by_chan_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ %11, %10 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 -16
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %12, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %13

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %15, i32 -32
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %23) #10
  br label %27

27:                                               ; preds = %25, %22, %13, %6, %2
  %28 = phi ptr [ %26, %25 ], [ null, %6 ], [ null, %2 ], [ null, %22 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!9 = !{i64 2148244089}
!10 = !{i64 581415, i64 2148082981, i64 2148083007, i64 2148083054, i64 2148083076, i64 2148083104, i64 2148083124}
!11 = !{i64 2148146927, i64 2148146959, i64 2148146988, i64 2148147022, i64 2148147053, i64 2148147076}
!12 = !{i64 2148244292}
