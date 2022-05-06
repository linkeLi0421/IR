; ModuleID = '/llk/IR/drivers/mmc/host/bcm2835.c_pt.bc'
source_filename = "../drivers/mmc/host/bcm2835.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.bcm2835_host = type { %struct.spinlock, %struct.mutex, ptr, i32, ptr, i32, i32, %struct.work_struct, %struct.delayed_work, %struct.sg_mapping_iter, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, %struct.dma_slave_config, %struct.dma_slave_config, ptr, i32, i32, ptr, i32, i8 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.page = type { i32, %union.anon.1, %union.anon.62, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_bcm2835__274_1479_bcm2835_driver_init6 = internal global ptr @bcm2835_driver_init, section ".initcall6.init", align 4
@bcm2835_driver = internal global %struct.platform_driver { ptr @bcm2835_probe, ptr @bcm2835_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @bcm2835_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_driver_exit = internal global ptr @bcm2835_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias275 = internal constant [38 x i8] c"bcm2835.alias=platform:sdhost-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [42 x i8] c"bcm2835.description=BCM2835 SDHost driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [38 x i8] c"bcm2835.file=drivers/mmc/host/bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [23 x i8] c"bcm2835.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [27 x i8] c"bcm2835.author=Phil Elwell\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"sdhost-bcm2835\00", align 1
@bcm2835_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-sdhost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bcm2835_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @bcm2835_request, ptr null, ptr @bcm2835_set_ios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_reset, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't get phys address\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"could not get clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"unsupported block size (%d bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"drivers/mmc/host/bcm2835.c\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"previous command (%d) not complete (EDM %08x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to terminate DMA (%d)\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"previous command never completed.\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"unsupported response type!\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%s: timeout (%d ms)\0A\00", align 1
@__func__.bcm2835_read_wait_sdcmd = private unnamed_addr constant [24 x i8] c"bcm2835_read_wait_sdcmd\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"command never completed.\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"unexpected command %d error\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"wait_transfer_complete - still waiting after %d retries\0A\00", align 1
@bcm2835_add_host.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"&host->mutex\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"unable to initialise DMA channel. Falling back to PIO\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"failed to request IRQ %d: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c" (>%d)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"loaded - DMA %s%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = private unnamed_addr constant [41 x i8] c"timeout waiting for hardware interrupt.\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"sdhost_busy_irq: intmask %08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"%s transfer error - HSTS %08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"%s timeout error - HSTS %08x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.30 = private unnamed_addr constant [19 x i8] c"fsm %x, hsts %08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"PIO %s timeout - EDM %08x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias275, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_bcm2835_driver_exit, ptr @__initcall__kmod_bcm2835__274_1479_bcm2835_driver_init6, ptr @bcm2835_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_probe(ptr noundef %0) #2 {
  %2 = alloca [20 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @mmc_alloc_host(i32 noundef 312, ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %163, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 3
  store ptr @bcm2835_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 68
  %9 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 5
  store ptr %0, ptr %9, align 4
  store i32 0, ptr %8, align 4
  %10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %11 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = ptrtoint ptr %10 to i32
  br label %156

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @__of_get_address(ptr noundef %17, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  br label %156

21:                                               ; preds = %15
  %22 = load i32, ptr %18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 4
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 23
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 19
  store ptr null, ptr %26, align 4
  %27 = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %28 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 8, i32 0, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  store ptr null, ptr %28, align 4
  %31 = icmp eq ptr %27, inttoptr (i32 -517 to ptr)
  br i1 %31, label %156, label %32

32:                                               ; preds = %30, %21
  %33 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = ptrtoint ptr %33 to i32
  %37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %36, ptr noundef nonnull @.str.3) #9
  br label %156

38:                                               ; preds = %32
  %39 = tail call i32 @clk_get_rate(ptr noundef %33) #9
  %40 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 0, i32 7
  store i32 %39, ptr %40, align 4
  %41 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %42 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 5
  store i32 %41, ptr %42, align 4
  %43 = icmp slt i32 %41, 1
  br i1 %43, label %156, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @mmc_of_parse(ptr noundef nonnull %4) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %156

47:                                               ; preds = %44
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %2, i8 0, i32 20, i1 false) #9, !annotation !8
  %50 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 6
  %51 = load i32, ptr %50, align 16
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %40, align 4
  %54 = icmp ugt i32 %51, %53
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 %53, ptr %50, align 16
  br label %57

57:                                               ; preds = %56, %47
  %58 = phi i32 [ %53, %56 ], [ %51, %47 ]
  %59 = udiv i32 %53, 2047
  %60 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  %61 = udiv i32 %58, 1000
  %62 = udiv i32 -1, %61
  %63 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 26
  store i32 %62, ptr %63, align 4
  %64 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 16
  %65 = load i32, ptr %64, align 8
  %66 = or i32 %65, -1073741786
  store i32 %66, ptr %64, align 8
  store i32 0, ptr %8, align 4
  %67 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %67, ptr noundef nonnull @.str.17, ptr noundef nonnull @bcm2835_add_host.__key) #9
  %68 = load ptr, ptr %28, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.18) #10
  %71 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 31
  br label %102

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 31
  store i8 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 10, i32 1, i32 1
  %75 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 11, i32 1
  store i32 4, ptr %75, align 4
  %76 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 11, i32 1, i32 1
  store i32 4, ptr %76, align 4
  store i32 1, ptr %74, align 4
  %77 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 10, i32 2
  store i32 0, ptr %77, align 4
  %78 = load i32, ptr %24, align 4
  %79 = add i32 %78, 64
  %80 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 11
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 8, i32 0, i32 1
  %82 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 24, i32 3
  store i32 4, ptr %82, align 4
  %83 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 8, i32 2
  store i32 4, ptr %83, align 4
  store i32 2, ptr %81, align 4
  %84 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 24, i32 1
  store i32 %79, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 8, i32 1
  store i32 0, ptr %85, align 4
  %86 = load ptr, ptr %68, align 4
  %87 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 44
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %72
  %91 = tail call i32 %88(ptr noundef nonnull %68, ptr noundef %74) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load ptr, ptr %28, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dma_device, ptr %95, i32 0, i32 44
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = tail call i32 %97(ptr noundef %94, ptr noundef %81) #9
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99, %93, %90, %72, %70
  %103 = phi ptr [ %71, %70 ], [ %73, %93 ], [ %73, %72 ], [ %73, %99 ], [ %73, %90 ]
  store i8 0, ptr %103, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 21
  store i16 128, ptr %105, align 4
  %106 = tail call i32 @dma_max_mapping_size(ptr noundef %49) #9
  %107 = tail call i32 @llvm.umin.i32(i32 %106, i32 524288) #9
  %108 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 23
  store i32 %107, ptr %108, align 16
  %109 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 20
  store i32 %107, ptr %109, align 8
  %110 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 24
  store i32 1024, ptr %110, align 4
  %111 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 25
  store i32 65535, ptr %111, align 8
  %112 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 8
  store i32 3145728, ptr %112, align 8
  %113 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 1
  store i32 -32, ptr %113, align 4
  %114 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 2
  store volatile ptr %114, ptr %114, align 4
  %115 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 3
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 4
  store ptr @bcm2835_dma_complete_work, ptr %116, align 4
  %117 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 5
  store i32 -32, ptr %117, align 4
  %118 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 6
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 7
  store ptr %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 8
  store ptr @bcm2835_timeout, ptr %120, align 4
  %121 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 9
  tail call void @init_timer_key(ptr noundef %121, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  %122 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 5, i32 1, i32 1
  store i32 1024, ptr %122, align 4
  tail call fastcc void @bcm2835_reset_internal(ptr noundef %8) #9
  %123 = load i32, ptr %42, align 4
  %124 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 1, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %104
  %128 = getelementptr %struct.mmc_host, ptr %4, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %127, %104
  %131 = phi ptr [ %129, %127 ], [ %125, %104 ]
  %132 = tail call i32 @request_threaded_irq(i32 noundef %123, ptr noundef nonnull @bcm2835_irq, ptr noundef nonnull @bcm2835_threaded_irq, i32 noundef 0, ptr noundef %131, ptr noundef %8) #9
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.19, i32 noundef %135, i32 noundef %132) #10
  br label %151

136:                                              ; preds = %130
  %137 = tail call i32 @mmc_add_host(ptr noundef nonnull %4) #9
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, ptr %42, align 4
  %141 = tail call ptr @free_irq(i32 noundef %140, ptr noundef %8) #9
  br label %151

142:                                              ; preds = %136
  store i8 0, ptr %2, align 1
  %143 = getelementptr inbounds %struct.bcm2835_host, ptr %8, i32 0, i32 31
  %144 = load i8, ptr %143, align 4, !range !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %142
  %147 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, i32 noundef 1) #9
  %148 = load i8, ptr %143, align 4, !range !9
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, ptr @.str.23, ptr @.str.22
  br label %153

151:                                              ; preds = %139, %134
  %152 = phi i32 [ %137, %139 ], [ %132, %134 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  br label %156

153:                                              ; preds = %146, %142
  %154 = phi ptr [ @.str.23, %142 ], [ %150, %146 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.21, ptr noundef nonnull %154, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  %155 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %155, align 8
  br label %163

156:                                              ; preds = %151, %44, %38, %35, %30, %20, %13
  %157 = phi i32 [ %14, %13 ], [ -517, %30 ], [ %37, %35 ], [ %45, %44 ], [ -22, %20 ], [ -22, %38 ], [ %152, %151 ]
  %158 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 1, i32 1, i32 11, i32 8, i32 0, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  tail call void @dma_release_channel(ptr noundef nonnull %159) #9
  br label %162

162:                                              ; preds = %161, %156
  tail call void @mmc_free_host(ptr noundef nonnull %4) #9
  br label %163

163:                                              ; preds = %162, %153, %1
  %164 = phi i32 [ %157, %162 ], [ 0, %153 ], [ -12, %1 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -896
  tail call void @mmc_remove_host(ptr noundef %4) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !11
  %8 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %3) #9
  %11 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 7
  %12 = tail call zeroext i1 @cancel_work_sync(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 8
  %14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %13) #9
  %15 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  tail call void @dma_release_channel(ptr noundef nonnull %16) #9
  br label %19

19:                                               ; preds = %18, %1
  tail call void @mmc_free_host(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mmc_command, ptr %13, i32 0, i32 5
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 5
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 5
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr %18, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34) #9, !range !12
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %34) #10
  %38 = load ptr, ptr %12, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mmc_command, ptr %38, i32 0, i32 5
  store i32 -22, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #9
  br label %260

43:                                               ; preds = %32, %29
  %44 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %44) #9
  %45 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !13

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1189, i32 noundef 9, ptr noundef null) #9
  br label %49

49:                                               ; preds = %48, %43
  store ptr %1, ptr %45, align 4
  %50 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %54 = and i32 %53, 14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %50, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !16
  %59 = and i32 %58, 63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %59, i32 noundef %53) #10
  %60 = load ptr, ptr %12, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.mmc_command, ptr %60, i32 0, i32 5
  store i32 -84, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 5
  %66 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %65) #9
  %67 = load ptr, ptr %45, align 4
  store ptr null, ptr %45, align 4
  %68 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 7
  store ptr null, ptr %68, align 4
  %69 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 8
  store ptr null, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 19
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 23
  %72 = load ptr, ptr %71, align 4
  store ptr null, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %75, i32 0, i32 47
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = tail call i32 %77(ptr noundef nonnull %72) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79, %74
  %83 = phi i32 [ %80, %79 ], [ -38, %74 ]
  %84 = load ptr, ptr %4, align 4
  %85 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.10, i32 noundef %83) #10
  br label %86

86:                                               ; preds = %82, %79, %64
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %67) #9
  tail call void @mutex_unlock(ptr noundef %44) #9
  br label %260

87:                                               ; preds = %49
  %88 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 31
  %89 = load i8, ptr %88, align 4, !range !9
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %201, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %18, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %201, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %201

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 8, i32 0, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 512
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 1, i32 2
  %106 = xor i1 %104, true
  %107 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 21
  store i32 0, ptr %107, align 4
  %108 = load i32, ptr %95, align 4
  %109 = icmp ugt i32 %108, 1
  %110 = select i1 %109, i1 %106, i1 false
  br i1 %110, label %111, label %154

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, %108
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 12) #9
  %116 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 10
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %152, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 12
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 29
  %123 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 22
  br label %124

124:                                              ; preds = %147, %119
  %125 = phi i32 [ 0, %119 ], [ %148, %147 ]
  %126 = phi ptr [ %121, %119 ], [ %149, %147 ]
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %147, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.scatterlist, ptr %126, i32 0, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = icmp ult i32 %132, %115
  br i1 %133, label %134, label %137, !prof !17

134:                                              ; preds = %130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 486, i32 noundef 9, ptr noundef null) #9
  %135 = load i32, ptr %131, align 4
  %136 = load i32, ptr %126, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = phi i32 [ %136, %134 ], [ %127, %130 ]
  %139 = phi i32 [ %135, %134 ], [ %132, %130 ]
  %140 = sub i32 %139, %115
  store i32 %140, ptr %131, align 4
  %141 = and i32 %138, -4
  %142 = inttoptr i32 %141 to ptr
  store ptr %142, ptr %122, align 4
  %143 = getelementptr inbounds %struct.scatterlist, ptr %126, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %131, align 4
  %146 = add i32 %145, %144
  store i32 %146, ptr %123, align 4
  br label %147

147:                                              ; preds = %137, %124
  %148 = add nuw i32 %125, 1
  %149 = tail call ptr @sg_next(ptr noundef %126) #9
  %150 = load i32, ptr %116, align 4
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %124, label %152

152:                                              ; preds = %147, %111
  %153 = lshr i32 %115, 2
  store i32 %153, ptr %107, align 4
  br label %154

154:                                              ; preds = %152, %98
  %155 = load ptr, ptr %100, align 4
  %156 = getelementptr inbounds %struct.dma_device, ptr %155, i32 0, i32 44
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 10, i32 1, i32 1
  %161 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 8, i32 0, i32 1
  %162 = select i1 %104, ptr %160, ptr %161
  %163 = tail call i32 %157(ptr noundef %100, ptr noundef %162) #9
  %164 = load ptr, ptr %100, align 4
  br label %165

165:                                              ; preds = %159, %154
  %166 = phi ptr [ %155, %154 ], [ %164, %159 ]
  %167 = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 15
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 12
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 10
  %172 = load i32, ptr %171, align 4
  %173 = tail call i32 @dma_map_sg_attrs(ptr noundef %168, ptr noundef %170, i32 noundef %172, i32 noundef %105, i32 noundef 0) #9
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %201, label %175

175:                                              ; preds = %165
  %176 = load ptr, ptr %169, align 4
  %177 = icmp eq ptr %100, null
  br i1 %177, label %190, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %100, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %190, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.dma_device, ptr %179, i32 0, i32 39
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %190, label %185

185:                                              ; preds = %181
  %186 = tail call ptr %183(ptr noundef nonnull %100, ptr noundef %176, i32 noundef %173, i32 noundef %105, i32 noundef 3, ptr noundef null) #9
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load ptr, ptr %169, align 4
  br label %190

190:                                              ; preds = %188, %181, %178, %175
  %191 = phi ptr [ %189, %188 ], [ %176, %175 ], [ %176, %178 ], [ %176, %181 ]
  %192 = load ptr, ptr %100, align 4
  %193 = getelementptr inbounds %struct.dma_device, ptr %192, i32 0, i32 15
  %194 = load ptr, ptr %193, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %194, ptr noundef %191, i32 noundef %173, i32 noundef %105, i32 noundef 0) #9
  br label %201

195:                                              ; preds = %185
  %196 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %186, i32 0, i32 6
  store ptr @bcm2835_dma_complete, ptr %196, align 4
  %197 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %186, i32 0, i32 8
  store ptr %3, ptr %197, align 4
  %198 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 19
  store ptr %186, ptr %198, align 4
  %199 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 23
  store ptr %100, ptr %199, align 4
  %200 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 20
  store i32 %105, ptr %200, align 4
  br label %201

201:                                              ; preds = %195, %190, %165, %94, %91, %87
  %202 = load ptr, ptr %1, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %45, align 4
  %206 = getelementptr inbounds %struct.mmc_request, ptr %205, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %204, %201
  %210 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 8, i32 0, i32 0, i32 1
  %211 = load i8, ptr %210, align 4
  %212 = and i8 %211, -5
  store i8 %212, ptr %210, align 4
  br label %231

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.mmc_data, ptr %207, i32 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 7
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 4
  %219 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 8, i32 0, i32 0, i32 1
  %220 = load i8, ptr %219, align 4
  %221 = and i8 %220, -5
  %222 = or i8 %218, %221
  store i8 %222, ptr %219, align 4
  %223 = icmp eq i8 %218, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %213
  %225 = load ptr, ptr %1, align 4
  %226 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %3, ptr noundef %225)
  br i1 %226, label %227, label %259

227:                                              ; preds = %224
  %228 = load i8, ptr %219, align 4
  %229 = and i8 %228, 2
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %258, label %259

231:                                              ; preds = %213, %209
  %232 = phi ptr [ %210, %209 ], [ %219, %213 ]
  %233 = load ptr, ptr %12, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %259, label %235

235:                                              ; preds = %231
  %236 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %3, ptr noundef nonnull %233)
  br i1 %236, label %237, label %259

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 8
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %254, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 19
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %254, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %243, i32 0, i32 4
  %247 = load ptr, ptr %246, align 4
  %248 = tail call i32 %247(ptr noundef nonnull %243) #9
  %249 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 23
  %250 = load ptr, ptr %249, align 4
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.dma_device, ptr %251, i32 0, i32 50
  %253 = load ptr, ptr %252, align 4
  tail call void %253(ptr noundef %250) #9
  br label %254

254:                                              ; preds = %245, %241, %237
  %255 = load i8, ptr %232, align 4
  %256 = and i8 %255, 2
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %227
  tail call fastcc void @bcm2835_finish_command(ptr noundef %3)
  br label %259

259:                                              ; preds = %258, %254, %235, %231, %227, %224
  tail call void @mutex_unlock(ptr noundef %44) #9
  br label %260

260:                                              ; preds = %259, %86, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.bcm2835_host, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = icmp ult i32 %5, 100000
  br i1 %12, label %13, label %19

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1, i32 1, i32 1
  store i32 2047, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #9, !srcloc !11
  br label %49

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %21, %5
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 2) #9
  %24 = udiv i32 %21, %23
  %25 = icmp ugt i32 %24, %5
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %23, %26
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 2049) #9
  %29 = add nsw i32 %28, -2
  %30 = udiv i32 %21, %28
  %31 = getelementptr %struct.mmc_host, ptr %0, i32 0, i32 57
  store i32 %30, ptr %31, align 4
  %32 = udiv i32 1000000000, %30
  %33 = getelementptr %struct.mmc_host, ptr %0, i32 0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 32, i32 8
  %38 = mul i32 %37, %32
  %39 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1, i32 1, i32 1
  store i32 %29, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %45 = load i32, ptr %31, align 4
  %46 = lshr i32 %45, 1
  %47 = load ptr, ptr %42, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !11
  br label %49

49:                                               ; preds = %19, %13
  %50 = load i32, ptr %1, align 4
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %7
  %53 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 11, i32 5, i32 1, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -5
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 2
  %59 = select i1 %58, i32 4, i32 0
  %60 = or i32 %55, %59
  %61 = or i32 %60, 10
  store i32 %61, ptr %53, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %62 = load i32, ptr %53, align 4
  %63 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #9, !srcloc !11
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_reset(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.bcm2835_host, ptr %2, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef nonnull %4) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 48
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void %17(ptr noundef nonnull %4) #9
  br label %20

20:                                               ; preds = %19, %14, %11, %6, %1
  store ptr null, ptr %3, align 4
  tail call fastcc void @bcm2835_reset_internal(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bcm2835_send_command(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !13

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 630, i32 noundef 9, ptr noundef null) #9
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call fastcc i32 @bcm2835_read_wait_sdcmd(ptr noundef %0)
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #10
  %15 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -84, ptr %15, align 4
  %16 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %17 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  store ptr null, ptr %18, align 4
  store ptr null, ptr %6, align 4
  %20 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 17
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 26
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  store ptr null, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 47
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call i32 %28(ptr noundef nonnull %23) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %31, %30 ], [ -38, %25 ]
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %34) #10
  br label %37

37:                                               ; preds = %33, %30, %14
  %38 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %38, ptr noundef %19) #9
  br label %186

39:                                               ; preds = %10
  %40 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, 9000
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = add i32 %45, 999
  %49 = udiv i32 %48, 1000
  %50 = mul nuw nsw i32 %49, 100
  %51 = add nuw nsw i32 %50, 100
  br label %52

52:                                               ; preds = %47, %43, %39
  %53 = phi i32 [ %51, %47 ], [ 1000, %43 ], [ 1000, %39 ]
  %54 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr @system_wq, align 4
  %56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %55, ptr noundef %54, i32 noundef %53) #9
  store ptr %1, ptr %6, align 4
  %57 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 32
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %61 = and i32 %60, 248
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %57, align 4
  %65 = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %60) #9, !srcloc !11
  br label %66

66:                                               ; preds = %63, %52
  %67 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 10
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #10
  %72 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -22, ptr %72, align 4
  %73 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %54) #9
  %74 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  store ptr null, ptr %74, align 4
  store ptr null, ptr %6, align 4
  %76 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 17
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 26
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 23
  %79 = load ptr, ptr %78, align 4
  store ptr null, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %71
  %82 = load ptr, ptr %79, align 4
  %83 = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 47
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = tail call i32 %84(ptr noundef nonnull %79) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86, %81
  %90 = phi i32 [ %87, %86 ], [ -38, %81 ]
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.10, i32 noundef %90) #10
  br label %93

93:                                               ; preds = %89, %86, %71
  %94 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %94, ptr noundef %75) #9
  br label %186

95:                                               ; preds = %66
  %96 = load ptr, ptr %40, align 4
  %97 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 17
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !13

100:                                              ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 549, i32 noundef 9, ptr noundef null) #9
  br label %101

101:                                              ; preds = %100, %95
  store ptr %96, ptr %97, align 4
  %102 = icmp eq ptr %96, null
  br i1 %102, label %145, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 18
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, -2
  store i8 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 7
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 26
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %126

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 512
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 5, i32 3
  %117 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 9
  %118 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 12
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 10
  %121 = load i32, ptr %120, align 4
  tail call void @sg_miter_start(ptr noundef %117, ptr noundef %119, i32 noundef %121, i32 noundef %116) #9
  %122 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 10
  store i32 %123, ptr %124, align 4
  %125 = load ptr, ptr %108, align 4
  br label %126

126:                                              ; preds = %111, %103
  %127 = phi ptr [ %125, %111 ], [ %109, %103 ]
  %128 = icmp eq ptr %127, null
  %129 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 13
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, -1297
  %132 = select i1 %128, i32 1040, i32 1024
  %133 = or i32 %131, %132
  store i32 %133, ptr %129, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %134 = load i32, ptr %129, align 4
  %135 = load ptr, ptr %57, align 4
  %136 = getelementptr i8, ptr %135, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %137 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 2
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr %57, align 4
  %140 = getelementptr i8, ptr %139, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  %141 = getelementptr inbounds %struct.mmc_data, ptr %96, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = load ptr, ptr %57, align 4
  %144 = getelementptr i8, ptr %143, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %142) #9, !srcloc !11
  br label %145

145:                                              ; preds = %126, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %146 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = load ptr, ptr %57, align 4
  %149 = getelementptr i8, ptr %148, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #9, !srcloc !11
  %150 = load i32, ptr %1, align 4
  %151 = and i32 %150, 63
  %152 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 18
  %153 = load i8, ptr %152, align 4
  %154 = and i8 %153, -3
  store i8 %154, ptr %152, align 4
  %155 = load i32, ptr %67, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = or i32 %151, 1024
  br label %169

160:                                              ; preds = %145
  %161 = shl i32 %155, 8
  %162 = and i32 %161, 512
  %163 = or i32 %162, %151
  %164 = and i32 %155, 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = or i32 %163, 2048
  %168 = or i8 %153, 2
  store i8 %168, ptr %152, align 4
  br label %169

169:                                              ; preds = %166, %160, %158
  %170 = phi i32 [ %167, %166 ], [ %163, %160 ], [ %159, %158 ]
  %171 = load ptr, ptr %40, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %182, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.mmc_data, ptr %171, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 1
  %177 = and i32 %176, 128
  %178 = or i32 %177, %170
  %179 = lshr i32 %175, 3
  %180 = and i32 %179, 64
  %181 = or i32 %178, %180
  br label %182

182:                                              ; preds = %173, %169
  %183 = phi i32 [ %170, %169 ], [ %181, %173 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !28
  tail call void @arm_heavy_mb() #9
  %184 = or i32 %183, 32768
  %185 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %184) #9, !srcloc !11
  br label %186

186:                                              ; preds = %182, %93, %37
  %187 = phi i1 [ false, %37 ], [ false, %93 ], [ true, %182 ]
  ret i1 %187
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_finish_command(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 16
  %4 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 15
  %6 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 17
  %7 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 26
  %8 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 23
  %9 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 18
  br label %10

10:                                               ; preds = %142, %1
  %11 = load ptr, ptr %2, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = tail call fastcc i32 @bcm2835_read_wait_sdcmd(ptr noundef %0)
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #10
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  store i32 -5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %21 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %20) #9
  %22 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %3, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %7, align 4
  %23 = load ptr, ptr %8, align 4
  store ptr null, ptr %8, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 47
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call i32 %28(ptr noundef nonnull %23) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %31, %30 ], [ -38, %25 ]
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.10, i32 noundef %34) #10
  br label %37

37:                                               ; preds = %33, %30, %16
  %38 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %38, ptr noundef %22) #9
  br label %198

39:                                               ; preds = %10
  %40 = and i32 %13, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %93, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !30
  tail call void @arm_heavy_mb() #9
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 248) #9, !srcloc !11
  %48 = and i32 %45, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load ptr, ptr %3, align 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %93, label %54

54:                                               ; preds = %50, %42
  %55 = and i32 %45, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %59 = load ptr, ptr %3, align 4
  %60 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.15, i32 noundef %60) #10
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i32 [ -84, %57 ], [ -110, %54 ]
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.mmc_command, ptr %63, i32 0, i32 5
  store i32 %62, ptr %64, align 4
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr i8, ptr %65, i32 52
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %68 = and i32 %67, 15
  switch i32 %68, label %73 [
    i32 10, label %69
    i32 4, label %69
  ]

69:                                               ; preds = %61, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !32
  tail call void @arm_heavy_mb() #9
  %70 = or i32 %67, 524288
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr i8, ptr %71, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #9, !srcloc !11
  br label %73

73:                                               ; preds = %69, %61
  %74 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %75 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %74) #9
  %76 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %3, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %7, align 4
  %77 = load ptr, ptr %8, align 4
  store ptr null, ptr %8, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 47
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = tail call i32 %82(ptr noundef nonnull %77) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84, %79
  %88 = phi i32 [ %85, %84 ], [ -38, %79 ]
  %89 = load ptr, ptr %2, align 4
  %90 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.10, i32 noundef %88) #10
  br label %91

91:                                               ; preds = %87, %84, %73
  %92 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %92, ptr noundef %76) #9
  br label %198

93:                                               ; preds = %50, %39
  %94 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %93
  %99 = and i32 %95, 2
  %100 = icmp eq i32 %99, 0
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr i8, ptr %101, i32 16
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %100, label %118, label %104

104:                                              ; preds = %98
  %105 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 3
  store i32 %103, ptr %105, align 4
  %106 = load ptr, ptr %4, align 4
  %107 = getelementptr i8, ptr %106, i32 20
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %109 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 2
  store i32 %108, ptr %109, align 4
  %110 = load ptr, ptr %4, align 4
  %111 = getelementptr i8, ptr %110, i32 24
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %113 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 1
  store i32 %112, ptr %113, align 4
  %114 = load ptr, ptr %4, align 4
  %115 = getelementptr i8, ptr %114, i32 28
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %117 = getelementptr %struct.mmc_command, ptr %12, i32 0, i32 2, i32 0
  store i32 %116, ptr %117, align 4
  br label %120

118:                                              ; preds = %98
  %119 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 2
  store i32 %103, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %104, %93
  %121 = load ptr, ptr %5, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %12, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  store ptr null, ptr %3, align 4
  %125 = getelementptr inbounds %struct.mmc_request, ptr %121, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %0, ptr noundef %126)
  br i1 %127, label %128, label %198

128:                                              ; preds = %124
  %129 = load ptr, ptr %6, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %142, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %7, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %132, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  %137 = tail call i32 %136(ptr noundef nonnull %132) #9
  %138 = load ptr, ptr %8, align 4
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 50
  %141 = load ptr, ptr %140, align 4
  tail call void %141(ptr noundef %138) #9
  br label %142

142:                                              ; preds = %134, %131, %128
  %143 = load i8, ptr %9, align 4
  %144 = and i8 %143, 2
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %10, label %198

146:                                              ; preds = %120
  %147 = getelementptr inbounds %struct.mmc_request, ptr %121, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %12, %148
  br i1 %149, label %150, label %170

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %152 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %151) #9
  %153 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %3, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %7, align 4
  %154 = load ptr, ptr %8, align 4
  store ptr null, ptr %8, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %150
  %157 = load ptr, ptr %154, align 4
  %158 = getelementptr inbounds %struct.dma_device, ptr %157, i32 0, i32 47
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = tail call i32 %159(ptr noundef nonnull %154) #9
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161, %156
  %165 = phi i32 [ %162, %161 ], [ -38, %156 ]
  %166 = load ptr, ptr %2, align 4
  %167 = getelementptr inbounds %struct.platform_device, ptr %166, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.10, i32 noundef %165) #10
  br label %168

168:                                              ; preds = %164, %161, %150
  %169 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %169, ptr noundef %153) #9
  br label %198

170:                                              ; preds = %146
  store ptr null, ptr %3, align 4
  %171 = load ptr, ptr %6, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %193

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %175 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %174) #9
  %176 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  store ptr null, ptr %3, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %7, align 4
  %177 = load ptr, ptr %8, align 4
  store ptr null, ptr %8, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %191, label %179

179:                                              ; preds = %173
  %180 = load ptr, ptr %177, align 4
  %181 = getelementptr inbounds %struct.dma_device, ptr %180, i32 0, i32 47
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = tail call i32 %182(ptr noundef nonnull %177) #9
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %184, %179
  %188 = phi i32 [ %185, %184 ], [ -38, %179 ]
  %189 = load ptr, ptr %2, align 4
  %190 = getelementptr inbounds %struct.platform_device, ptr %189, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.10, i32 noundef %188) #10
  br label %191

191:                                              ; preds = %187, %184, %173
  %192 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %192, ptr noundef %176) #9
  br label %198

193:                                              ; preds = %170
  %194 = load i8, ptr %9, align 4
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %0)
  br label %198

198:                                              ; preds = %197, %193, %191, %168, %142, %124, %91, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_dma_complete(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_read_wait_sdcmd(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i64 @ktime_get() #9
  %6 = add i64 %5, 10000
  %7 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %18, %1
  %13 = tail call i64 @ktime_get() #9
  %14 = icmp sgt i64 %13, %6
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  br label %23

18:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %19 = load ptr, ptr %7, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %12

23:                                               ; preds = %18, %15, %1
  %24 = phi i32 [ %17, %15 ], [ %9, %1 ], [ %20, %18 ]
  %25 = and i32 %24, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @ktime_get() #9
  %29 = add i64 %28, 100000000
  %30 = load ptr, ptr %7, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %37, %27
  %35 = tail call i64 @ktime_get() #9
  %36 = icmp sgt i64 %35, %29
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %38 = load ptr, ptr %7, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %34

42:                                               ; preds = %34
  %43 = load ptr, ptr %7, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !37
  %45 = and i32 %44, 32768
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.bcm2835_read_wait_sdcmd, i32 noundef 100) #10
  br label %48

48:                                               ; preds = %47, %42, %37, %27, %23
  %49 = phi i32 [ %44, %47 ], [ %44, %42 ], [ %24, %23 ], [ %31, %27 ], [ %39, %37 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_transfer_complete(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !17

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 695, i32 noundef 9, ptr noundef null) #9
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  store ptr null, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i8, ptr %2, align 4
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %15
  %24 = tail call fastcc zeroext i1 @bcm2835_send_command(ptr noundef %0, ptr noundef nonnull %13)
  br i1 %24, label %25, label %95

25:                                               ; preds = %23
  %26 = load i8, ptr %2, align 4
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %95

29:                                               ; preds = %25
  tail call fastcc void @bcm2835_finish_command(ptr noundef %0)
  br label %95

30:                                               ; preds = %19, %7
  %31 = getelementptr inbounds %struct.mmc_request, ptr %11, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 10, i32 4
  %38 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 52
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !38
  %42 = and i32 %41, 15
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %71, label %44

44:                                               ; preds = %30
  %45 = icmp eq i32 %42, %37
  br i1 %45, label %48, label %53

46:                                               ; preds = %65
  %47 = icmp eq i32 %69, %37
  br i1 %47, label %48, label %53

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %41, %44 ], [ %68, %46 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !39
  tail call void @arm_heavy_mb() #9
  %50 = or i32 %49, 524288
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr i8, ptr %51, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !11
  br label %71

53:                                               ; preds = %46, %44
  %54 = phi i32 [ %55, %46 ], [ 0, %44 ]
  %55 = add nuw nsw i32 %54, 1
  %56 = icmp eq i32 %55, 100000
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.16, i32 noundef 100000) #10
  %61 = load ptr, ptr %10, align 4
  %62 = getelementptr inbounds %struct.mmc_request, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.mmc_data, ptr %63, i32 0, i32 5
  store i32 -110, ptr %64, align 4
  br label %71

65:                                               ; preds = %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !41
  %66 = load ptr, ptr %38, align 4
  %67 = getelementptr i8, ptr %66, i32 52
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !38
  %69 = and i32 %68, 15
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %46

71:                                               ; preds = %65, %57, %48, %30
  %72 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 8
  %73 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %72) #9
  %74 = load ptr, ptr %10, align 4
  store ptr null, ptr %10, align 4
  %75 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 16
  store ptr null, ptr %75, align 4
  store ptr null, ptr %8, align 4
  %76 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 26
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 23
  %78 = load ptr, ptr %77, align 4
  store ptr null, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 47
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = tail call i32 %83(ptr noundef nonnull %78) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85, %80
  %89 = phi i32 [ %86, %85 ], [ -38, %80 ]
  %90 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.10, i32 noundef %89) #10
  br label %93

93:                                               ; preds = %88, %85, %71
  %94 = getelementptr i8, ptr %0, i32 -896
  tail call void @mmc_request_done(ptr noundef %94, ptr noundef %74) #9
  br label %95

95:                                               ; preds = %93, %29, %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_reset_internal(ptr nocapture noundef %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !43
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !45
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 15728640) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 2040) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !48
  tail call void @arm_heavy_mb() #9
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !49
  tail call void @arm_heavy_mb() #9
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #9, !srcloc !11
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !51
  %23 = and i32 %22, -523777
  %24 = or i32 %23, 67584
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !11
  tail call void @msleep(i32 noundef 20) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #9, !srcloc !11
  tail call void @msleep(i32 noundef 20) #9
  %29 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 5
  store i32 0, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !54
  tail call void @arm_heavy_mb() #9
  %30 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !55
  tail call void @arm_heavy_mb() #9
  %34 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_dma_complete_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -40
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr i8, ptr %0, i32 144
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 132
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_data, ptr %8, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 248
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 0) #9
  store ptr null, ptr %3, align 4
  br label %18

18:                                               ; preds = %6, %1
  %19 = getelementptr i8, ptr %0, i32 252
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %0, i32 260
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 4096
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = lshr i32 %24, 12
  %28 = getelementptr i8, ptr %0, i32 256
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.page, ptr %29, i32 %27
  store ptr %30, ptr %28, align 4
  %31 = and i32 %24, 4095
  store i32 %31, ptr %23, align 4
  br label %32

32:                                               ; preds = %26, %22
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !56
  %34 = getelementptr i8, ptr %0, i32 256
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr @pgprot_kernel, align 4
  %37 = or i32 %36, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %38 = tail call ptr @llvm.thread.pointer() #9
  %39 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 149
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %42 = tail call ptr @__kmap_local_page_prot(ptr noundef %35, i32 noundef %37) #9
  %43 = load i32, ptr %19, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %32
  %46 = load i32, ptr %23, align 4
  %47 = getelementptr i8, ptr %42, i32 %46
  %48 = getelementptr i8, ptr %0, i32 -20
  br label %49

49:                                               ; preds = %61, %45
  %50 = phi ptr [ %47, %45 ], [ %62, %61 ]
  %51 = load ptr, ptr %48, align 4
  %52 = getelementptr i8, ptr %51, i32 52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !59
  %54 = and i32 %53, 496
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %48, align 4
  %58 = getelementptr i8, ptr %57, i32 64
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !60
  %60 = getelementptr i32, ptr %50, i32 1
  store i32 %59, ptr %50, align 4
  br label %61

61:                                               ; preds = %56, %49
  %62 = phi ptr [ %60, %56 ], [ %50, %49 ]
  %63 = load i32, ptr %19, align 4
  %64 = add i32 %63, -1
  store i32 %64, ptr %19, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %49

66:                                               ; preds = %61, %32
  tail call void @kunmap_local_indexed(ptr noundef %42) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %67 = load i32, ptr %39, align 8
  %68 = add i32 %67, -1
  store i32 %68, ptr %39, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #9, !srcloc !63
  br label %69

69:                                               ; preds = %66, %18
  %70 = getelementptr i8, ptr %0, i32 -44
  %71 = getelementptr i8, ptr %0, i32 132
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %0, i32 116
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, -273
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %76 = load i32, ptr %73, align 4
  %77 = getelementptr i8, ptr %0, i32 -20
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #9, !srcloc !11
  %80 = getelementptr inbounds %struct.mmc_data, ptr %72, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = getelementptr inbounds %struct.mmc_data, ptr %72, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.mmc_data, ptr %72, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = mul i32 %87, %85
  br label %89

89:                                               ; preds = %83, %69
  %90 = phi i32 [ %88, %83 ], [ 0, %69 ]
  %91 = getelementptr inbounds %struct.mmc_data, ptr %72, i32 0, i32 7
  store i32 %90, ptr %91, align 4
  %92 = getelementptr i8, ptr %0, i32 136
  %93 = load i8, ptr %92, align 4
  %94 = or i8 %93, 1
  store i8 %94, ptr %92, align 4
  %95 = getelementptr i8, ptr %0, i32 128
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %70) #9
  br label %99

99:                                               ; preds = %98, %89
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -56
  tail call void @mutex_lock(ptr noundef %5) #9
  %6 = getelementptr i8, ptr %0, i32 108
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %91, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.24) #10
  %11 = getelementptr i8, ptr %0, i32 -956
  %12 = getelementptr i8, ptr %0, i32 128
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %18(ptr noundef nonnull %13) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 48
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef nonnull %13) #9
  br label %29

29:                                               ; preds = %28, %23, %20, %15, %9
  store ptr null, ptr %12, align 4
  tail call fastcc void @bcm2835_reset_internal(ptr noundef %2) #9
  %30 = getelementptr i8, ptr %0, i32 116
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 5
  store i32 -110, ptr %34, align 4
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr i8, ptr %0, i32 100
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -273
  store i32 %38, ptr %36, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %39 = load i32, ptr %36, align 4
  %40 = getelementptr i8, ptr %0, i32 -36
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %39) #9, !srcloc !11
  %43 = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, %48
  br label %52

52:                                               ; preds = %46, %33
  %53 = phi i32 [ %51, %46 ], [ 0, %33 ]
  %54 = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 7
  store i32 %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 120
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 4
  %58 = getelementptr i8, ptr %0, i32 112
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %91

61:                                               ; preds = %52
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %2) #9
  br label %91

62:                                               ; preds = %29
  %63 = getelementptr i8, ptr %0, i32 112
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.mmc_request, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi ptr [ %69, %66 ], [ %64, %62 ]
  %72 = getelementptr inbounds %struct.mmc_command, ptr %71, i32 0, i32 5
  store i32 -110, ptr %72, align 4
  %73 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %0) #9
  %74 = load ptr, ptr %6, align 4
  store ptr null, ptr %6, align 4
  store ptr null, ptr %63, align 4
  store ptr null, ptr %30, align 4
  %75 = getelementptr i8, ptr %0, i32 228
  store ptr null, ptr %75, align 4
  %76 = load ptr, ptr %12, align 4
  store ptr null, ptr %12, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %70
  %79 = load ptr, ptr %76, align 4
  %80 = getelementptr inbounds %struct.dma_device, ptr %79, i32 0, i32 47
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = tail call i32 %81(ptr noundef nonnull %76) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ %84, %83 ], [ -38, %78 ]
  %88 = load ptr, ptr %3, align 4
  %89 = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.10, i32 noundef %87) #10
  br label %90

90:                                               ; preds = %86, %83, %70
  tail call void @mmc_request_done(ptr noundef %11, ptr noundef %74) #9
  br label %91

91:                                               ; preds = %90, %61, %52, %1
  tail call void @mutex_unlock(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_irq(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !65
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !66
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1793) #9, !srcloc !11
  %9 = and i32 %6, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = and i32 %6, 40
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 5
  store i32 -84, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = and i32 %6, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 5
  store i32 -110, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %20, %11
  %27 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 19
  store i8 1, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ 2, %26 ], [ 0, %2 ]
  %30 = and i32 %6, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %84, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = and i32 %6, 248
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %84, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.25, i32 noundef %6) #10
  %43 = and i32 %6, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr inbounds %struct.mmc_command, ptr %46, i32 0, i32 5
  store i32 -84, ptr %47, align 4
  br label %84

48:                                               ; preds = %42
  %49 = and i32 %6, 40
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 15
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_request, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 5
  store i32 -84, ptr %58, align 4
  br label %84

59:                                               ; preds = %51
  %60 = load ptr, ptr %39, align 4
  %61 = getelementptr inbounds %struct.mmc_command, ptr %60, i32 0, i32 5
  store i32 -84, ptr %61, align 4
  br label %84

62:                                               ; preds = %48
  %63 = and i32 %6, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.mmc_request, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 5
  store i32 -110, ptr %72, align 4
  br label %84

73:                                               ; preds = %65
  %74 = load ptr, ptr %39, align 4
  %75 = getelementptr inbounds %struct.mmc_command, ptr %74, i32 0, i32 5
  store i32 -110, ptr %75, align 4
  br label %84

76:                                               ; preds = %62
  %77 = and i32 %6, 64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %39, align 4
  %81 = getelementptr inbounds %struct.mmc_command, ptr %80, i32 0, i32 5
  store i32 -110, ptr %81, align 4
  br label %84

82:                                               ; preds = %32
  %83 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 20
  store i8 1, ptr %83, align 2
  br label %84

84:                                               ; preds = %82, %79, %76, %73, %71, %59, %57, %45, %38, %28
  %85 = phi i32 [ 2, %82 ], [ %29, %28 ], [ 1, %38 ], [ 1, %45 ], [ 1, %57 ], [ 1, %59 ], [ 1, %71 ], [ 1, %73 ], [ 1, %76 ], [ 1, %79 ]
  %86 = and i32 %6, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %143, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 13
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %143, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 17
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %141, label %97

97:                                               ; preds = %93
  %98 = and i32 %6, 40
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.mmc_data, ptr %95, i32 0, i32 5
  store i32 -84, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = and i32 %6, 128
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %94, align 4
  %107 = getelementptr inbounds %struct.mmc_data, ptr %106, i32 0, i32 5
  store i32 -110, ptr %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load ptr, ptr %94, align 4
  %110 = getelementptr inbounds %struct.mmc_data, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.mmc_data, ptr %109, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 256
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %89, align 4
  %120 = and i32 %119, -273
  %121 = or i32 %120, 256
  store i32 %121, ptr %89, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !67
  tail call void @arm_heavy_mb() #9
  %122 = load i32, ptr %89, align 4
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr i8, ptr %123, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #9, !srcloc !11
  tail call fastcc void @bcm2835_transfer_pio(ptr noundef %1) #9
  br label %141

125:                                              ; preds = %113
  tail call fastcc void @bcm2835_transfer_pio(ptr noundef %1) #9
  %126 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %126, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %94, align 4
  %132 = getelementptr inbounds %struct.mmc_data, ptr %131, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %130, %125, %108
  %136 = load i32, ptr %89, align 4
  %137 = and i32 %136, -273
  store i32 %137, ptr %89, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !68
  tail call void @arm_heavy_mb() #9
  %138 = load i32, ptr %89, align 4
  %139 = load ptr, ptr %3, align 4
  %140 = getelementptr i8, ptr %139, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #9, !srcloc !11
  br label %141

141:                                              ; preds = %135, %130, %118, %93
  %142 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 21
  store i8 1, ptr %142, align 1
  br label %143

143:                                              ; preds = %141, %88, %84
  %144 = phi i32 [ 2, %141 ], [ %85, %88 ], [ %85, %84 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !69
  %145 = load i16, ptr %1, align 4
  %146 = add i16 %145, 1
  store i16 %146, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !70
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !71
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_threaded_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 19
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 20
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 21
  %11 = load i8, ptr %10, align 1, !range !9
  %12 = icmp eq i8 %11, 0
  store i8 0, ptr %4, align 1
  store i8 0, ptr %7, align 2
  store i8 0, ptr %10, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #9
  %13 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #9
  br i1 %6, label %97, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !17

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 958, i32 noundef 9, ptr noundef null) #9
  br label %97

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !17

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 964, i32 noundef 9, ptr noundef null) #9
  %28 = load ptr, ptr %15, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %16, %23 ]
  %31 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, ptr %24, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %24, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34, %29
  %39 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 13
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -273
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %42 = load i32, ptr %39, align 4
  %43 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %42) #9, !srcloc !11
  %46 = load i32, ptr %31, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, %50
  br label %54

54:                                               ; preds = %48, %38
  %55 = phi i32 [ %53, %48 ], [ 0, %38 ]
  %56 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 7
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 18
  %58 = load i8, ptr %57, align 4
  %59 = or i8 %58, 1
  store i8 %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %97

63:                                               ; preds = %54
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %1) #9
  br label %97

64:                                               ; preds = %34
  tail call fastcc void @bcm2835_transfer_pio(ptr noundef %1) #9
  br label %97

65:                                               ; preds = %19
  %66 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %97, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, -273
  store i32 %73, ptr %71, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %74 = load i32, ptr %71, align 4
  %75 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #9, !srcloc !11
  %78 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = mul i32 %85, %83
  br label %87

87:                                               ; preds = %81, %70
  %88 = phi i32 [ %86, %81 ], [ 0, %70 ]
  %89 = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 7
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 18
  %91 = load i8, ptr %90, align 4
  %92 = or i8 %91, 1
  store i8 %92, ptr %90, align 4
  %93 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 16
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %1) #9
  br label %97

97:                                               ; preds = %96, %87, %65, %64, %63, %54, %18, %2
  br i1 %9, label %111, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 16
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %103, !prof !17

102:                                              ; preds = %98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 900, i32 noundef 9, ptr noundef null) #9
  br label %111

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 18
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, 2
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %109, !prof !17

108:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 905, i32 noundef 9, ptr noundef null) #9
  br label %111

109:                                              ; preds = %103
  %110 = and i8 %105, -3
  store i8 %110, ptr %104, align 4
  tail call fastcc void @bcm2835_finish_command(ptr noundef %1) #9
  br label %111

111:                                              ; preds = %109, %108, %102, %97
  br i1 %12, label %151, label %112

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 17
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %151, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 10
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %151, label %124

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 13
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, -273
  store i32 %127, ptr %125, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !64
  tail call void @arm_heavy_mb() #9
  %128 = load i32, ptr %125, align 4
  %129 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr i8, ptr %130, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %128) #9, !srcloc !11
  %132 = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = mul i32 %139, %137
  br label %141

141:                                              ; preds = %135, %124
  %142 = phi i32 [ %140, %135 ], [ 0, %124 ]
  %143 = getelementptr inbounds %struct.mmc_data, ptr %114, i32 0, i32 7
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 18
  %145 = load i8, ptr %144, align 4
  %146 = or i8 %145, 1
  store i8 %146, ptr %144, align 4
  %147 = getelementptr inbounds %struct.bcm2835_host, ptr %1, i32 0, i32 16
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  tail call fastcc void @bcm2835_transfer_complete(ptr noundef %1) #9
  br label %151

151:                                              ; preds = %150, %141, %120, %112, %111
  tail call void @mutex_unlock(ptr noundef %13) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_transfer_pio(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, 50
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !56
  %16 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 9
  %17 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 9, i32 2
  %18 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 9, i32 3
  %19 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 9, i32 1
  %20 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.bcm2835_host, ptr %0, i32 0, i32 12
  br label %22

22:                                               ; preds = %107, %1
  %23 = phi i32 [ %12, %1 ], [ %39, %107 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %111, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i1 @sg_miter_next(ptr noundef %16) #9
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 5
  store i32 -22, ptr %29, align 4
  br label %111

30:                                               ; preds = %25
  %31 = load i32, ptr %17, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %23) #9
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 5
  store i32 -22, ptr %37, align 4
  br label %111

38:                                               ; preds = %30
  %39 = sub i32 %23, %32
  store i32 %32, ptr %18, align 4
  %40 = icmp ult i32 %32, 4
  br i1 %40, label %107, label %41

41:                                               ; preds = %38
  %42 = lshr i32 %32, 2
  %43 = load ptr, ptr %19, align 4
  br label %44

44:                                               ; preds = %102, %41
  %45 = phi i32 [ %105, %102 ], [ %42, %41 ]
  %46 = phi i32 [ %104, %102 ], [ 0, %41 ]
  %47 = phi ptr [ %103, %102 ], [ %43, %41 ]
  %48 = tail call i32 @llvm.smin.i32(i32 %45, i32 8) #9
  %49 = load ptr, ptr %20, align 4
  %50 = getelementptr i8, ptr %49, i32 52
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !73
  %52 = lshr i32 %51, 4
  %53 = and i32 %52, 31
  %54 = sub nsw i32 16, %53
  %55 = select i1 %10, i32 %54, i32 %53
  %56 = icmp sgt i32 %48, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %44
  %58 = and i32 %51, 15
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr inbounds %struct.platform_device, ptr %59, i32 0, i32 3
  br i1 %10, label %62, label %61

61:                                               ; preds = %57
  switch i32 %58, label %63 [
    i32 5, label %69
    i32 4, label %69
    i32 2, label %69
  ]

62:                                               ; preds = %57
  switch i32 %58, label %63 [
    i32 11, label %69
    i32 10, label %69
    i32 3, label %69
  ]

63:                                               ; preds = %62, %61
  %64 = load ptr, ptr %20, align 4
  %65 = getelementptr i8, ptr %64, i32 32
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.30, i32 noundef %58, i32 noundef %66) #10
  %67 = and i32 %66, 248
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %63, %62, %62, %62, %61, %61, %61
  %70 = phi i32 [ %66, %63 ], [ %46, %62 ], [ %46, %62 ], [ %46, %62 ], [ %46, %61 ], [ %46, %61 ], [ %46, %61 ]
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = sub i32 %14, %71
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = select i1 %10, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.31, ptr noundef nonnull %75, i32 noundef %51) #10
  br label %111

76:                                               ; preds = %69
  %77 = load i32, ptr %21, align 4
  %78 = sub i32 %48, %55
  %79 = mul i32 %77, %78
  %80 = add i32 %79, 999
  %81 = udiv i32 %80, 1000
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %81) #9
  br label %102

83:                                               ; preds = %44
  %84 = tail call i32 @llvm.smin.i32(i32 %55, i32 %45) #9
  %85 = sub i32 %45, %84
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %98, %83
  %88 = phi ptr [ %99, %98 ], [ %47, %83 ]
  %89 = phi i32 [ %100, %98 ], [ %84, %83 ]
  br i1 %10, label %94, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %20, align 4
  %92 = getelementptr i8, ptr %91, i32 64
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !75
  store i32 %93, ptr %88, align 4
  br label %98

94:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !76
  tail call void @arm_heavy_mb() #9
  %95 = load i32, ptr %88, align 4
  %96 = load ptr, ptr %20, align 4
  %97 = getelementptr i8, ptr %96, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #9, !srcloc !11
  br label %98

98:                                               ; preds = %94, %90
  %99 = getelementptr i32, ptr %88, i32 1
  %100 = add i32 %89, -1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %87

102:                                              ; preds = %98, %83, %76
  %103 = phi ptr [ %47, %76 ], [ %47, %83 ], [ %99, %98 ]
  %104 = phi i32 [ %70, %76 ], [ %46, %83 ], [ %46, %98 ]
  %105 = phi i32 [ %45, %76 ], [ %85, %83 ], [ %85, %98 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %44

107:                                              ; preds = %102, %63, %38
  %108 = phi i32 [ 0, %38 ], [ %104, %102 ], [ %66, %63 ]
  %109 = and i32 %108, 248
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %22, label %111

111:                                              ; preds = %107, %74, %35, %27, %22
  tail call void @sg_miter_stop(ptr noundef %16) #9
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #9, !srcloc !63
  %112 = load ptr, ptr %20, align 4
  %113 = getelementptr i8, ptr %112, i32 32
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !77
  %115 = and i32 %114, 56
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = and i32 %114, 192
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117, %111
  %121 = phi ptr [ @.str.26, %111 ], [ @.str.29, %117 ]
  %122 = phi i32 [ -84, %111 ], [ -110, %117 ]
  %123 = select i1 %10, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %121, ptr noundef nonnull %123, i32 noundef %114) #10
  %124 = load ptr, ptr %5, align 4
  %125 = getelementptr inbounds %struct.mmc_data, ptr %124, i32 0, i32 5
  store i32 %122, ptr %125, align 4
  br label %126

126:                                              ; preds = %120, %117
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2153595434}
!11 = !{i64 5078042}
!12 = !{i32 0, i32 33}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 5078460}
!15 = !{i64 2153583807}
!16 = !{i64 2153584942}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153581438}
!19 = !{i64 2153581803}
!20 = !{i64 2153582158}
!21 = !{i64 2153585563}
!22 = !{i64 2153561902}
!23 = !{i64 2153562288}
!24 = !{i64 2153554153}
!25 = !{i64 2153555107}
!26 = !{i64 2153555455}
!27 = !{i64 2153563201}
!28 = !{i64 2153563776}
!29 = !{i64 2153566860}
!30 = !{i64 2153567280}
!31 = !{i64 2153568449}
!32 = !{i64 2153568768}
!33 = !{i64 2153569348}
!34 = !{i64 2153556989}
!35 = !{i64 2153557329}
!36 = !{i64 2153558758}
!37 = !{i64 2153559098}
!38 = !{i64 2153540627}
!39 = !{i64 2153540946}
!40 = !{i64 2153542165}
!41 = !{i64 2153542007}
!42 = !{i64 2153535782}
!43 = !{i64 2153536099}
!44 = !{i64 2153536416}
!45 = !{i64 2153536740}
!46 = !{i64 2153537071}
!47 = !{i64 2153537392}
!48 = !{i64 2153537717}
!49 = !{i64 2153538034}
!50 = !{i64 2153538351}
!51 = !{i64 2153538823}
!52 = !{i64 2153539040}
!53 = !{i64 2153539365}
!54 = !{i64 2153539691}
!55 = !{i64 2153540035}
!56 = !{i64 371434, i64 371495}
!57 = !{i64 2152913741}
!58 = !{i64 2152117851}
!59 = !{i64 2153578842}
!60 = !{i64 2153579187}
!61 = !{i64 2152118058}
!62 = !{i64 2152916366}
!63 = !{i64 374451}
!64 = !{i64 2153564814}
!65 = !{i64 2153575956}
!66 = !{i64 2153576196}
!67 = !{i64 2153573872}
!68 = !{i64 2153574380}
!69 = !{i64 2148914747}
!70 = !{i64 2148910571}
!71 = !{i64 2148910646, i64 2148910673, i64 2148910720, i64 2148910742, i64 2148910770, i64 2148910790}
!72 = !{i64 2148937750}
!73 = !{i64 2153545667}
!74 = !{i64 2153546043}
!75 = !{i64 2153548165}
!76 = !{i64 2153548362}
!77 = !{i64 2153549467}
