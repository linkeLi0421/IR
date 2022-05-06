; ModuleID = '/llk/IR/drivers/usb/musb/musb_cppi41.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_cppi41.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cppi41_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22cppi41_dma_controller_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_cppi41_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cppi41_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22cppi41_dma_controller_create\22\09\09\09\09\09"
module asm "__kstrtabns_cppi41_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cppi41_dma_controller = type { %struct.dma_controller, ptr, ptr, %struct.hrtimer, %struct.list_head, i32, i32, i32, i32, i32, ptr, i8 }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cppi41_dma_channel = type { %struct.dma_channel, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.list_head, i32 }
%struct.dma_channel = type { ptr, i32, i32, i32, i8, i8 }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.musb_qh = type { ptr, ptr, ptr, %struct.list_head, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, %struct.sg_mapping_iter, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__kstrtab_cppi41_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_cppi41_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_cppi41_dma_controller_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cppi41_dma_controller_destroy to i32), ptr @__kstrtab_cppi41_dma_controller_destroy, ptr @__kstrtabns_cppi41_dma_controller_destroy }, section "___ksymtab_gpl+cppi41_dma_controller_destroy", align 4
@.str = private unnamed_addr constant [29 x i8] c"Need DT for the DMA engine.\0A\00", align 1
@__kstrtab_cppi41_dma_controller_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_cppi41_dma_controller_create = external dso_local constant [0 x i8], align 1
@__ksymtab_cppi41_dma_controller_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cppi41_dma_controller_create to i32), ptr @__kstrtab_cppi41_dma_controller_create, ptr @__kstrtabns_cppi41_dma_controller_create }, section "___ksymtab_gpl+cppi41_dma_controller_create", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"drivers/usb/musb/musb_cppi41.c\00", align 1
@__tracepoint_musb_cppi41_done = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_musb_cppi41_gb = external dso_local global %struct.tracepoint, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Restoring DATA1 toggle.\00", align 1
@__tracepoint_musb_cppi41_cont = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_cppi41_alloc = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_cppi41_free = external dso_local global %struct.tracepoint, align 4
@__tracepoint_musb_cppi41_config = external dso_local global %struct.tracepoint, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__tracepoint_musb_cppi41_abort = external dso_local global %struct.tracepoint, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Wrong dmatype %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to request %s: %d.\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_cppi41_dma_controller_create, ptr @__ksymtab_cppi41_dma_controller_destroy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cppi41_dma_controller_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 3
  %3 = tail call i32 @hrtimer_cancel(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %23, %7
  %11 = phi i32 [ 0, %7 ], [ %24, %23 ]
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr %struct.cppi41_dma_channel, ptr %12, i32 %11, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @dma_release_channel(ptr noundef nonnull %14) #10
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr %struct.cppi41_dma_channel, ptr %18, i32 %11, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @dma_release_channel(ptr noundef nonnull %20) #10
  br label %23

23:                                               ; preds = %22, %17
  %24 = add nuw nsw i32 %11, 1
  %25 = load i8, ptr %4, align 8
  %26 = zext i8 %25 to i32
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %10, label %28

28:                                               ; preds = %23, %1
  %29 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #10
  %31 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  tail call void @kfree(ptr noundef %32) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cppi41_dma_controller_create(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #11
  br label %147

13:                                               ; preds = %2
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 128) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %147, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %18, i32 noundef 1, i32 noundef 1) #10
  %19 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 3, i32 2
  store ptr @cppi41_recheck_tx_req, ptr %19, align 8
  %20 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 4
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 4, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_controller, ptr %15, i32 0, i32 1
  store ptr @cppi41_dma_channel_allocate, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dma_controller, ptr %15, i32 0, i32 2
  store ptr @cppi41_dma_channel_release, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dma_controller, ptr %15, i32 0, i32 3
  store ptr @cppi41_dma_channel_program, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_controller, ptr %15, i32 0, i32 4
  store ptr @cppi41_dma_channel_abort, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dma_controller, ptr %15, i32 0, i32 5
  store ptr @cppi41_is_compatible, ptr %26, align 4
  store ptr %0, ptr %15, align 8
  %27 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %17
  %34 = phi i32 [ 216, %32 ], [ 28, %17 ]
  %35 = phi i32 [ 208, %32 ], [ 20, %17 ]
  %36 = phi ptr [ @cppi41_set_dma_mode, %32 ], [ @da8xx_set_dma_mode, %17 ]
  %37 = phi i8 [ 15, %32 ], [ 4, %17 ]
  %38 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 8
  store i32 %34, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 9
  store i32 %35, ptr %39, align 8
  %40 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 10
  store ptr %36, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 11
  store i8 %37, ptr %41, align 8
  %42 = zext i8 %37 to i32
  %43 = mul nuw nsw i32 %42, 72
  %44 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #13
  %45 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %141, label %47

47:                                               ; preds = %33
  %48 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #13
  %49 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %15, i32 0, i32 2
  store ptr %48, ptr %49, align 8
  %50 = icmp eq ptr %48, null
  br i1 %50, label %142, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %15, align 8
  %53 = getelementptr inbounds %struct.musb, ptr %52, i32 0, i32 25
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 25
  %58 = load ptr, ptr %57, align 8
  %59 = tail call i32 @of_property_read_string_helper(ptr noundef %58, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %138, label %61

61:                                               ; preds = %51
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %147, label %63

63:                                               ; preds = %107, %61
  %64 = phi i32 [ %109, %107 ], [ 0, %61 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %65 = call i32 @of_property_read_string_helper(ptr noundef %58, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %64) #10
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %111

67:                                               ; preds = %63
  %68 = load ptr, ptr %3, align 4
  %69 = call i32 @strncmp(ptr noundef %68, ptr noundef nonnull dereferenceable(3) @.str.5, i32 noundef 2) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = call i32 @strncmp(ptr noundef %68, ptr noundef nonnull dereferenceable(3) @.str.6, i32 noundef 2) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.7, ptr noundef %68) #11
  br label %111

75:                                               ; preds = %71, %67
  %76 = phi i8 [ 1, %67 ], [ 0, %71 ]
  %77 = getelementptr i8, ptr %68, i32 2
  %78 = call i32 @kstrtouint(ptr noundef %77, i32 noundef 0, ptr noundef nonnull %4) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load i32, ptr %4, align 4
  %82 = load i8, ptr %41, align 8
  %83 = zext i8 %82 to i32
  %84 = add i32 %81, -1
  %85 = icmp ult i32 %84, %83
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = select i1 %70, ptr %49, ptr %45
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84
  %90 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84, i32 1
  store ptr %15, ptr %90, align 4
  %91 = trunc i32 %81 to i8
  %92 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84, i32 5
  store i8 %91, ptr %92, align 4
  %93 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84, i32 6
  store i8 %76, ptr %93, align 1
  %94 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84, i32 14
  store volatile ptr %94, ptr %94, align 4
  %95 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84, i32 14, i32 1
  store ptr %94, ptr %95, align 4
  store ptr %89, ptr %89, align 4
  %96 = getelementptr inbounds %struct.dma_channel, ptr %89, i32 0, i32 3
  store i32 1, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_channel, ptr %89, i32 0, i32 1
  store i32 4194304, ptr %97, align 4
  %98 = load ptr, ptr %55, align 4
  %99 = load ptr, ptr %3, align 4
  %100 = call ptr @dma_request_chan(ptr noundef %98, ptr noundef %99) #10
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %107

102:                                              ; preds = %86
  %103 = icmp eq ptr %100, inttoptr (i32 -517 to ptr)
  br i1 %103, label %111, label %104

104:                                              ; preds = %102
  %105 = ptrtoint ptr %100 to i32
  %106 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef %106, i32 noundef %105) #11
  br label %111

107:                                              ; preds = %86
  %108 = getelementptr %struct.cppi41_dma_channel, ptr %88, i32 %84, i32 3
  store ptr %100, ptr %108, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %109 = add nuw nsw i32 %64, 1
  %110 = icmp eq i32 %109, %59
  br i1 %110, label %147, label %63

111:                                              ; preds = %104, %102, %75, %74, %63
  %112 = phi i32 [ 0, %74 ], [ %105, %104 ], [ -517, %102 ], [ %78, %75 ], [ %65, %63 ]
  %113 = load i8, ptr %41, align 8
  br label %114

114:                                              ; preds = %111, %80
  %115 = phi i8 [ %113, %111 ], [ %82, %80 ]
  %116 = phi i32 [ %112, %111 ], [ -22, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %117 = icmp eq i8 %115, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %131, %114
  %119 = phi i32 [ %132, %131 ], [ 0, %114 ]
  %120 = load ptr, ptr %49, align 8
  %121 = getelementptr %struct.cppi41_dma_channel, ptr %120, i32 %119, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  call void @dma_release_channel(ptr noundef nonnull %122) #10
  br label %125

125:                                              ; preds = %124, %118
  %126 = load ptr, ptr %45, align 4
  %127 = getelementptr %struct.cppi41_dma_channel, ptr %126, i32 %119, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  call void @dma_release_channel(ptr noundef nonnull %128) #10
  br label %131

131:                                              ; preds = %130, %125
  %132 = add nuw nsw i32 %119, 1
  %133 = load i8, ptr %41, align 8
  %134 = zext i8 %133 to i32
  %135 = icmp ult i32 %132, %134
  br i1 %135, label %118, label %136

136:                                              ; preds = %131, %114
  %137 = icmp eq i32 %116, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %136, %51
  %139 = phi i32 [ %116, %136 ], [ %59, %51 ]
  %140 = load ptr, ptr %49, align 8
  call void @kfree(ptr noundef %140) #10
  br label %142

141:                                              ; preds = %33
  tail call void @kfree(ptr noundef nonnull %15) #10
  br label %147

142:                                              ; preds = %138, %47
  %143 = phi i32 [ %139, %138 ], [ 0, %47 ]
  %144 = load ptr, ptr %45, align 4
  call void @kfree(ptr noundef %144) #10
  call void @kfree(ptr noundef nonnull %15) #10
  %145 = icmp eq i32 %143, -517
  %146 = select i1 %145, ptr inttoptr (i32 -517 to ptr), ptr null
  br label %147

147:                                              ; preds = %142, %141, %136, %107, %61, %13, %12
  %148 = phi ptr [ null, %12 ], [ %15, %136 ], [ null, %141 ], [ null, %13 ], [ %15, %61 ], [ %146, %142 ], [ %15, %107 ]
  ret ptr %148
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_recheck_tx_req(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr i8, ptr %0, i32 48
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %35, label %8

8:                                                ; preds = %33, %1
  %9 = phi ptr [ %10, %33 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %9, i32 -36
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.musb_hw_ep, ptr %12, i32 0, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = zext i8 %14 to i32
  %17 = getelementptr %struct.musb, ptr %15, i32 0, i32 35, i32 %16, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.musb, ptr %15, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.musb, ptr %15, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  tail call void %20(ptr noundef %22, i8 noundef zeroext %14) #10
  %23 = load ptr, ptr @musb_readw, align 4
  %24 = tail call zeroext i16 %23(ptr noundef %18, i32 noundef 2) #10
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %8
  %28 = getelementptr i8, ptr %9, i32 -60
  %29 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %29, align 4
  tail call fastcc void @cppi41_trans_done(ptr noundef %28)
  br label %33

33:                                               ; preds = %27, %8
  %34 = icmp eq ptr %10, %5
  br i1 %34, label %35, label %8

35:                                               ; preds = %33, %1
  %36 = load volatile ptr, ptr %5, align 4
  %37 = icmp eq ptr %36, %5
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 4
  %40 = load volatile i8, ptr %39, align 8
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i64 %47() #10
  %49 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %48, i64 noundef 20000) #10
  br label %50

50:                                               ; preds = %43, %38, %35
  %51 = phi i32 [ 0, %35 ], [ 0, %38 ], [ 1, %43 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cppi41_dma_channel_allocate(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = add i8 %5, -1
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 11
  %9 = load i8, ptr %8, align 8
  %10 = icmp ult i8 %6, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = icmp eq i8 %2, 0
  %13 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %0, i32 0, i32 1
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.cppi41_dma_channel, ptr %16, i32 %7
  %18 = getelementptr %struct.cppi41_dma_channel, ptr %16, i32 %7, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %11
  %22 = getelementptr %struct.cppi41_dma_channel, ptr %16, i32 %7, i32 7
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = getelementptr %struct.cppi41_dma_channel, ptr %16, i32 %7, i32 2
  store ptr %1, ptr %26, align 4
  store i8 1, ptr %22, align 2
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_alloc, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #10
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %41 = tail call i32 @__traceiter_musb_cppi41_alloc(ptr noundef null, ptr noundef %17) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %42

42:                                               ; preds = %40, %29, %25, %21, %11, %3
  %43 = phi ptr [ null, %3 ], [ null, %11 ], [ null, %21 ], [ %17, %25 ], [ %17, %29 ], [ %17, %40 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cppi41_dma_channel_release(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_free, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #10
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %17 = tail call i32 @__traceiter_musb_cppi41_free(ptr noundef null, ptr noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %18

18:                                               ; preds = %16, %5, %1
  %19 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 7
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  store i8 0, ptr %19, align 2
  %23 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_dma_channel_program(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.scatterlist, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %11 [
    i32 2, label %10
    i32 0, label %10
  ]

10:                                               ; preds = %5, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/musb/musb_cppi41.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 532, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.musb, ptr %14, i32 0, i32 44
  %16 = load i8, ptr %15, align 8, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  store i32 2, ptr %8, align 4
  %19 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %19, align 4
  br label %37

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.musb_hw_ep, ptr %25, i32 0, i32 12
  %27 = getelementptr inbounds %struct.musb_hw_ep, ptr %25, i32 0, i32 11
  %28 = select i1 %23, ptr %27, ptr %26
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.musb_qh, ptr %29, i32 0, i32 15
  %31 = load i8, ptr %30, align 4
  store i32 2, ptr %8, align 4
  %32 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %32, align 4
  %33 = icmp eq i8 %31, 0
  %34 = zext i8 %31 to i16
  %35 = and i16 %1, 2047
  %36 = mul i16 %35, %34
  br i1 %33, label %37, label %38

37:                                               ; preds = %20, %18
  br label %38

38:                                               ; preds = %37, %20
  %39 = phi i16 [ %1, %37 ], [ %36, %20 ]
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %40, align 8
  %44 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 9
  store i32 %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 10
  store i32 %4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 12
  store i32 0, ptr %46, align 4
  %47 = zext i16 %39 to i32
  %48 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 13
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = icmp ne i8 %50, 0
  %52 = icmp ne i8 %2, 0
  %53 = and i1 %52, %51
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 15
  store i32 %54, ptr %55, align 4
  %56 = icmp eq i8 %50, 0
  br i1 %56, label %108, label %57

57:                                               ; preds = %38
  %58 = icmp ult i32 %47, %4
  %59 = getelementptr inbounds %struct.musb, ptr %43, i32 0, i32 26
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 5
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 2
  %65 = add nuw nsw i32 %64, 124
  br i1 %58, label %66, label %88

66:                                               ; preds = %57
  tail call void @musb_writel(ptr noundef %60, i32 noundef %65, i32 noundef %4) #10
  %67 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %40, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef %7, i32 noundef 3) #10
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %69, i32 0, i32 7
  %71 = load i32, ptr %70, align 8
  %72 = load i8, ptr %61, align 4
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 1
  %75 = add nsw i32 %74, -2
  %76 = shl i32 3, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %71, %77
  %79 = shl nuw i32 1, %75
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %80, %71
  br i1 %81, label %131, label %82

82:                                               ; preds = %66
  store i32 %80, ptr %70, align 8
  %83 = load ptr, ptr %69, align 8
  %84 = getelementptr inbounds %struct.musb, ptr %83, i32 0, i32 26
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %69, i32 0, i32 9
  %87 = load i32, ptr %86, align 8
  tail call void @musb_writel(ptr noundef %85, i32 noundef %87, i32 noundef %80) #10
  br label %131

88:                                               ; preds = %57
  tail call void @musb_writel(ptr noundef %60, i32 noundef %65, i32 noundef 0) #10
  %89 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %40, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %7, i32 noundef 0) #10
  %91 = load ptr, ptr %12, align 4
  %92 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %91, i32 0, i32 7
  %93 = load i32, ptr %92, align 8
  %94 = load i8, ptr %61, align 4
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 1
  %97 = add nsw i32 %96, -2
  %98 = shl i32 3, %97
  %99 = xor i32 %98, -1
  %100 = and i32 %93, %99
  %101 = icmp eq i32 %100, %93
  br i1 %101, label %131, label %102

102:                                              ; preds = %88
  store i32 %100, ptr %92, align 8
  %103 = load ptr, ptr %91, align 8
  %104 = getelementptr inbounds %struct.musb, ptr %103, i32 0, i32 26
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %91, i32 0, i32 9
  %107 = load i32, ptr %106, align 8
  tail call void @musb_writel(ptr noundef %105, i32 noundef %107, i32 noundef %100) #10
  br label %131

108:                                              ; preds = %38
  %109 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %40, i32 0, i32 10
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef %7, i32 noundef 0) #10
  %111 = load ptr, ptr %12, align 4
  %112 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %111, i32 0, i32 7
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 5
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 1
  %118 = add nsw i32 %117, -2
  %119 = shl i32 3, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %113, %120
  %122 = icmp eq i32 %121, %113
  br i1 %122, label %129, label %123

123:                                              ; preds = %108
  store i32 %121, ptr %112, align 8
  %124 = load ptr, ptr %111, align 8
  %125 = getelementptr inbounds %struct.musb, ptr %124, i32 0, i32 26
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %111, i32 0, i32 9
  %128 = load i32, ptr %127, align 8
  tail call void @musb_writel(ptr noundef %126, i32 noundef %128, i32 noundef %121) #10
  br label %129

129:                                              ; preds = %123, %108
  %130 = tail call i32 @llvm.umin.i32(i32 %47, i32 %4) #10
  br label %131

131:                                              ; preds = %129, %102, %88, %82, %66
  %132 = phi i32 [ %130, %129 ], [ %4, %66 ], [ %4, %82 ], [ %4, %88 ], [ %4, %102 ]
  %133 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 11
  store i32 %132, ptr %133, align 4
  %134 = load i8, ptr %49, align 1
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %135, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 1) #10
  %137 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  store i32 %3, ptr %137, align 4
  %138 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 4
  store i32 %132, ptr %138, align 4
  %139 = icmp eq ptr %42, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %131
  %141 = load ptr, ptr %42, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.dma_device, ptr %141, i32 0, i32 39
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %140, %131
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %198

148:                                              ; preds = %143
  %149 = call ptr %145(ptr noundef nonnull %42, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %136, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  %150 = icmp eq ptr %149, null
  br i1 %150, label %198, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %149, i32 0, i32 7
  store ptr @cppi41_dma_callback, ptr %152, align 4
  %153 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %149, i32 0, i32 8
  store ptr %0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %149, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  %156 = call i32 %155(ptr noundef nonnull %149) #10
  %157 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 4
  store i32 %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.dma_channel, ptr %7, i32 0, i32 5
  store i8 0, ptr %158, align 1
  %159 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_config, i32 0, i32 1), align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %151
  %162 = tail call ptr @llvm.thread.pointer() #10
  %163 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %164 = load i32, ptr %163, align 8
  %165 = lshr i32 %164, 5
  %166 = getelementptr i32, ptr @__cpu_online_mask, i32 %165
  %167 = load volatile i32, ptr %166, align 4
  %168 = and i32 %164, 31
  %169 = shl nuw i32 1, %168
  %170 = and i32 %169, %167
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %161
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %173 = call i32 @__traceiter_musb_cppi41_config(ptr noundef null, ptr noundef %7) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %174

174:                                              ; preds = %172, %161, %151
  %175 = load i8, ptr %49, align 1
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %174
  %178 = load ptr, ptr %12, align 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.musb, ptr %179, i32 0, i32 44
  %181 = load i8, ptr %180, align 8, !range !14
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr @musb_readw, align 4
  %185 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 2
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.musb_hw_ep, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 4
  %189 = call zeroext i16 %184(ptr noundef %188, i32 noundef 6) #10
  %190 = lshr i16 %189, 9
  %191 = trunc i16 %190 to i8
  %192 = and i8 %191, 1
  %193 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %7, i32 0, i32 8
  store i8 %192, ptr %193, align 1
  br label %194

194:                                              ; preds = %183, %177, %174
  %195 = load ptr, ptr %42, align 4
  %196 = getelementptr inbounds %struct.dma_device, ptr %195, i32 0, i32 50
  %197 = load ptr, ptr %196, align 4
  call void %197(ptr noundef nonnull %42) #10
  br label %199

198:                                              ; preds = %148, %147
  store i32 1, ptr %8, align 4
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi i32 [ 0, %198 ], [ 1, %194 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_dma_channel_abort(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb_hw_ep, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_abort, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %26 = tail call i32 @__traceiter_musb_cppi41_abort(ptr noundef null, ptr noundef %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %27

27:                                               ; preds = %25, %14, %1
  %28 = getelementptr inbounds %struct.dma_channel, ptr %2, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %123, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 14
  %33 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 14, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %33, align 4
  %37 = icmp eq i8 %11, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr @musb_readw, align 4
  %40 = tail call zeroext i16 %39(ptr noundef %9, i32 noundef 2) #10
  %41 = and i16 %40, -4097
  %42 = load ptr, ptr @musb_writew, align 4
  tail call void %42(ptr noundef %9, i32 noundef 2, i16 noundef zeroext %41) #10
  br label %77

43:                                               ; preds = %31
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %44, i32 0, i32 7
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 1
  %51 = add nsw i32 %50, -2
  %52 = shl i32 3, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %46, %53
  %55 = icmp eq i32 %54, %46
  br i1 %55, label %62, label %56

56:                                               ; preds = %43
  store i32 %54, ptr %45, align 8
  %57 = load ptr, ptr %44, align 8
  %58 = getelementptr inbounds %struct.musb, ptr %57, i32 0, i32 26
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %44, i32 0, i32 9
  %61 = load i32, ptr %60, align 8
  tail call void @musb_writel(ptr noundef %59, i32 noundef %61, i32 noundef %54) #10
  br label %62

62:                                               ; preds = %56, %43
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 53687000) #10
  %64 = load ptr, ptr @musb_readw, align 4
  %65 = tail call zeroext i16 %64(ptr noundef %9, i32 noundef 6) #10
  %66 = and i16 %65, -8225
  %67 = load ptr, ptr @musb_writew, align 4
  tail call void %67(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %66) #10
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 10737400) #10
  %69 = load ptr, ptr @musb_readw, align 4
  %70 = tail call zeroext i16 %69(ptr noundef %9, i32 noundef 6) #10
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = or i16 %70, 16
  %75 = load ptr, ptr @musb_writew, align 4
  tail call void %75(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %74) #10
  %76 = load ptr, ptr @musb_writew, align 4
  tail call void %76(ptr noundef %9, i32 noundef 6, i16 noundef zeroext %74) #10
  br label %77

77:                                               ; preds = %73, %62, %38
  %78 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %83, %77
  %84 = phi i32 [ %85, %83 ], [ 250, %77 ]
  %85 = add nsw i32 %84, -1
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748000) #10
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %83

88:                                               ; preds = %83, %77
  %89 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 5
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  %92 = shl nuw i32 1, %91
  %93 = shl i32 %92, 16
  %94 = select i1 %37, i32 %92, i32 %93
  %95 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 26
  %96 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %4, i32 0, i32 8
  %97 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %2, i32 0, i32 3
  br label %98

98:                                               ; preds = %108, %88
  br i1 %37, label %102, label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %95, align 4
  %101 = load i32, ptr %96, align 4
  tail call void @musb_writel(ptr noundef %100, i32 noundef %101, i32 noundef %94) #10
  br label %102

102:                                              ; preds = %99, %98
  %103 = load ptr, ptr %97, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.dma_device, ptr %104, i32 0, i32 47
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = tail call i32 %106(ptr noundef %103) #10
  %110 = icmp eq i32 %109, -11
  br i1 %110, label %98, label %111

111:                                              ; preds = %108, %102
  br i1 %37, label %122, label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %95, align 4
  %114 = load i32, ptr %96, align 4
  tail call void @musb_writel(ptr noundef %113, i32 noundef %114, i32 noundef %94) #10
  %115 = load ptr, ptr @musb_readw, align 4
  %116 = tail call zeroext i16 %115(ptr noundef %9, i32 noundef 2) #10
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %112
  %120 = or i16 %116, 8
  %121 = load ptr, ptr @musb_writew, align 4
  tail call void %121(ptr noundef %9, i32 noundef 2, i16 noundef zeroext %120) #10
  br label %122

122:                                              ; preds = %119, %112, %111
  store i32 1, ptr %28, align 4
  br label %123

123:                                              ; preds = %122, %27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cppi41_is_compatible(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 44
  %10 = load i8, ptr %9, align 8, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 562, i32 noundef 9, ptr noundef null) #10
  br label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.musb_hw_ep, ptr %15, i32 0, i32 15, i32 5
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %5, i32 0, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %19, %13, %12
  %25 = phi i32 [ 1, %12 ], [ 0, %13 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @da8xx_set_dma_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 12, i32 -4
  %15 = add nsw i32 %14, %10
  %16 = shl i32 3, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %6, %17
  %19 = shl i32 %1, %15
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %20, %6
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  store i32 %20, ptr %5, align 4
  %24 = getelementptr inbounds %struct.musb, ptr %23, i32 0, i32 26
  %25 = load ptr, ptr %24, align 4
  tail call void @musb_writel(ptr noundef %25, i32 noundef 16, i32 noundef %20) #10
  br label %26

26:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cppi41_set_dma_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %4, i32 0, i32 6
  %10 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %4, i32 0, i32 5
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 1
  %17 = add nsw i32 %16, -2
  %18 = shl i32 3, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %12, %19
  %21 = shl i32 %1, %17
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %22, %12
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  br i1 %8, label %26, label %25

25:                                               ; preds = %24
  store i32 %22, ptr %9, align 4
  br label %27

26:                                               ; preds = %24
  store i32 %22, ptr %10, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i32 [ 112, %25 ], [ 116, %26 ]
  %29 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  tail call void @musb_writel(ptr noundef %30, i32 noundef %28, i32 noundef %22) #10
  br label %31

31:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cppi41_trans_done(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.scatterlist, align 4
  %3 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %58

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 5
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = urem i32 %17, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 3
  %35 = load i8, ptr %34, align 4
  tail call void %31(ptr noundef %33, i8 noundef zeroext %35) #10
  %36 = load ptr, ptr @musb_writew, align 4
  tail call void %36(ptr noundef %7, i32 noundef 2, i16 noundef zeroext 8193) #10
  br label %37

37:                                               ; preds = %29, %24, %15
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_done, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = tail call ptr @llvm.thread.pointer() #10
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %52 = tail call i32 @__traceiter_musb_cppi41_done(ptr noundef null, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %53

53:                                               ; preds = %51, %40, %37
  %54 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 3
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  tail call void @musb_dma_completion(ptr noundef %5, i8 noundef zeroext %55, i8 noundef zeroext %57) #10
  br label %130

58:                                               ; preds = %11
  %59 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 13
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %62
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 %67, %69
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 %62)
  store i32 %71, ptr %8, align 4
  %72 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 6
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @sg_init_table(ptr noundef nonnull %2, i32 noundef 1) #10
  %76 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 3
  store i32 %65, ptr %76, align 4
  %77 = getelementptr inbounds %struct.scatterlist, ptr %2, i32 0, i32 4
  store i32 %71, ptr %77, align 4
  %78 = icmp eq ptr %60, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %58
  %80 = load ptr, ptr %60, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 39
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %79, %58
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %90

87:                                               ; preds = %82
  %88 = call ptr %84(ptr noundef nonnull %60, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %75, i32 noundef 3, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91, !prof !21

90:                                               ; preds = %87, %86
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 167, i32 noundef 9, ptr noundef null) #10
  br label %130

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %88, i32 0, i32 7
  store ptr @cppi41_dma_callback, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %88, i32 0, i32 8
  store ptr %0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %88, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  %96 = call i32 %95(ptr noundef nonnull %88) #10
  %97 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %0, i32 0, i32 4
  store i32 %96, ptr %97, align 4
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_cont, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = tail call ptr @llvm.thread.pointer() #10
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 5
  %105 = getelementptr i32, ptr @__cpu_online_mask, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %103, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %106
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %112 = call i32 @__traceiter_musb_cppi41_cont(ptr noundef null, ptr noundef %0) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %113

113:                                              ; preds = %111, %100, %91
  %114 = load ptr, ptr %60, align 4
  %115 = getelementptr inbounds %struct.dma_device, ptr %114, i32 0, i32 50
  %116 = load ptr, ptr %115, align 4
  call void %116(ptr noundef nonnull %60) #10
  %117 = load i8, ptr %72, align 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 2, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.musb, ptr %5, i32 0, i32 27
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 3
  %125 = load i8, ptr %124, align 4
  call void %121(ptr noundef %123, i8 noundef zeroext %125) #10
  %126 = load ptr, ptr @musb_readw, align 4
  %127 = call zeroext i16 %126(ptr noundef %7, i32 noundef 6) #10
  %128 = or i16 %127, 32
  %129 = load ptr, ptr @musb_writew, align 4
  call void %129(ptr noundef %7, i32 noundef 6, i16 noundef zeroext %128) #10
  br label %130

130:                                              ; preds = %119, %113, %90, %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dma_completion(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cppi41_dma_callback(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.dma_tx_state, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_controller, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(ptr noundef %9) #10
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %197, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  %19 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 49
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %3) #10
  %27 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dma_tx_state, ptr %3, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 4
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_gb, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %17
  %38 = tail call ptr @llvm.thread.pointer() #10
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %49 = call i32 @__traceiter_musb_cppi41_gb(ptr noundef null, ptr noundef %4) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %50

50:                                               ; preds = %48, %37, %17
  %51 = load ptr, ptr %5, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.musb, ptr %52, i32 0, i32 44
  %58 = load i8, ptr %57, align 8, !range !14
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.musb, ptr %52, i32 0, i32 2, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.musb, ptr %52, i32 0, i32 27
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.musb_hw_ep, ptr %51, i32 0, i32 3
  %66 = load i8, ptr %65, align 4
  call void %62(ptr noundef %64, i8 noundef zeroext %66) #10
  %67 = load ptr, ptr @musb_readw, align 4
  %68 = getelementptr inbounds %struct.musb_hw_ep, ptr %51, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call zeroext i16 %67(ptr noundef %69, i32 noundef 6) #10
  %71 = lshr i16 %70, 9
  %72 = trunc i16 %71 to i8
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 8
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = or i16 %70, 1536
  %81 = load ptr, ptr @musb_writew, align 4
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr inbounds %struct.musb_hw_ep, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  call void %81(ptr noundef %84, i32 noundef 6, i16 noundef zeroext %80) #10
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %52, ptr noundef nonnull @.str.3) #10
  br label %85

85:                                               ; preds = %79, %75, %60
  %86 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 8
  store i8 %73, ptr %86, align 1
  br label %87

87:                                               ; preds = %85, %56, %50
  %88 = load i32, ptr %32, align 4
  %89 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 10
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = icmp ult i32 %31, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %87
  store i32 0, ptr %27, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i8, ptr %53, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %132, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 44
  %102 = load i8, ptr %101, align 8, !range !14
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.musb_hw_ep, ptr %6, i32 0, i32 12
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.musb_qh, ptr %106, i32 0, i32 13
  br label %110

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.musb_hw_ep, ptr %6, i32 0, i32 15, i32 5
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi ptr [ %107, %104 ], [ %109, %108 ]
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %132, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.musb_hw_ep, ptr %6, i32 0, i32 3
  %116 = load i8, ptr %115, align 4
  %117 = load ptr, ptr %6, align 4
  %118 = zext i8 %116 to i32
  %119 = getelementptr %struct.musb, ptr %117, i32 0, i32 35, i32 %118, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.musb, ptr %117, i32 0, i32 2, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.musb, ptr %117, i32 0, i32 27
  %124 = load ptr, ptr %123, align 8
  call void %122(ptr noundef %124, i8 noundef zeroext %116) #10
  %125 = load ptr, ptr @musb_readw, align 4
  %126 = call zeroext i16 %125(ptr noundef %120, i32 noundef 2) #10
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  %129 = load i8, ptr %53, align 1
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i1 true, i1 %128
  br i1 %131, label %132, label %133

132:                                              ; preds = %114, %110, %97
  call fastcc void @cppi41_trans_done(ptr noundef %4)
  br label %196

133:                                              ; preds = %114
  %134 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 44
  %135 = load i8, ptr %134, align 8, !range !14
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 13
  %139 = load i32, ptr %138, align 8
  %140 = and i32 %139, 1024
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %180, label %146

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 52, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %146, label %180

146:                                              ; preds = %142, %137
  %147 = getelementptr inbounds %struct.musb_hw_ep, ptr %6, i32 0, i32 3
  %148 = load i8, ptr %147, align 4
  %149 = load ptr, ptr %6, align 4
  %150 = zext i8 %148 to i32
  %151 = getelementptr %struct.musb, ptr %149, i32 0, i32 35, i32 %150, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.musb, ptr %149, i32 0, i32 2, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.musb, ptr %149, i32 0, i32 27
  %156 = load ptr, ptr %155, align 8
  call void %154(ptr noundef %156, i8 noundef zeroext %148) #10
  %157 = load ptr, ptr @musb_readw, align 4
  %158 = call zeroext i16 %157(ptr noundef %152, i32 noundef 2) #10
  %159 = and i16 %158, 1
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %179, label %161

161:                                              ; preds = %165, %146
  %162 = phi i32 [ %163, %165 ], [ 25, %146 ]
  %163 = add nsw i32 %162, -1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %161
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !27
  %166 = load i8, ptr %147, align 4
  %167 = load ptr, ptr %6, align 4
  %168 = zext i8 %166 to i32
  %169 = getelementptr %struct.musb, ptr %167, i32 0, i32 35, i32 %168, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.musb, ptr %167, i32 0, i32 2, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.musb, ptr %167, i32 0, i32 27
  %174 = load ptr, ptr %173, align 8
  call void %172(ptr noundef %174, i8 noundef zeroext %166) #10
  %175 = load ptr, ptr @musb_readw, align 4
  %176 = call zeroext i16 %175(ptr noundef %170, i32 noundef 2) #10
  %177 = and i16 %176, 1
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %161

179:                                              ; preds = %165, %146
  call fastcc void @cppi41_trans_done(ptr noundef %4)
  br label %196

180:                                              ; preds = %161, %142, %137
  %181 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 14
  %182 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %9, i32 0, i32 4
  %183 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %9, i32 0, i32 4, i32 1
  %184 = load ptr, ptr %183, align 4
  store ptr %181, ptr %183, align 4
  store ptr %182, ptr %181, align 4
  %185 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %4, i32 0, i32 14, i32 1
  store ptr %184, ptr %185, align 4
  store volatile ptr %181, ptr %184, align 4
  %186 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %9, i32 0, i32 3, i32 4
  %187 = load volatile i8, ptr %186, align 8
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.cppi41_dma_controller, ptr %9, i32 0, i32 3
  %192 = load i32, ptr %89, align 4
  %193 = udiv i32 %192, 10
  %194 = mul i32 %193, 1000
  %195 = zext i32 %194 to i64
  call void @hrtimer_start_range_ns(ptr noundef %191, i64 noundef %195, i64 noundef 20000, i32 noundef 1) #10
  br label %196

196:                                              ; preds = %190, %180, %179, %132
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %18) #10
  br label %197

197:                                              ; preds = %196, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_gb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_cont(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_musb_cppi41_abort(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i64 2154475408}
!10 = !{i64 2154475558}
!11 = !{i64 2154505193}
!12 = !{i64 2154505341}
!13 = !{i64 2154529758, i64 2154530253, i64 2154529795, i64 2154529851, i64 2154529885, i64 2154529909, i64 2154529950, i64 2154529971, i64 2154529999, i64 2154530033}
!14 = !{i8 0, i8 2}
!15 = !{i64 2154449684}
!16 = !{i64 2154449836}
!17 = !{i64 2154488289}
!18 = !{i64 2154488439}
!19 = !{i64 2154420121}
!20 = !{i64 2154420269}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2154462573}
!23 = !{i64 2154462721}
!24 = !{i64 2154432842}
!25 = !{i64 2154432986}
!26 = !{i64 2154526202}
!27 = !{i64 2154526044}
