; ModuleID = '/llk/IR/drivers/mmc/host/omap.c_pt.bc'
source_filename = "../drivers/mmc/host/omap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.mmc_omap_host = type { i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, %struct.work_struct, i8, %struct.timer_list, %struct.work_struct, ptr, %struct.work_struct, ptr, i32, i32, ptr, i32, i32, i32, i8, %struct.spinlock, [2 x ptr], ptr, %struct.spinlock, %struct.wait_queue_head, i32, %struct.timer_list, %struct.spinlock, i8, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_omap_slot = type { i32, i32, i16, i16, i16, i32, %struct.tasklet_struct, %struct.timer_list, i32, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.omap_mmc_slot_data = type { i8, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_mmc_platform_data = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i8, i16, [2 x %struct.omap_mmc_slot_data] }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = private unnamed_addr constant [13 x i8] c"cover_switch\00", align 1
@__initcall__kmod_omap__267_1511_mmc_omap_driver_init6 = internal global ptr @mmc_omap_driver_init, section ".initcall6.init", align 4
@mmc_omap_driver = internal global %struct.platform_driver { ptr @mmc_omap_probe, ptr @mmc_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @mmc_omap_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mmc_omap_driver_exit = internal global ptr @mmc_omap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description268 = internal constant [45 x i8] c"omap.description=OMAP Multimedia Card driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file269 = internal constant [32 x i8] c"omap.file=drivers/mmc/host/omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [17 x i8] c"omap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias271 = internal constant [30 x i8] c"omap.alias=platform:mmci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [26 x i8] c"omap.author=Juha Yrj\C3\B6l\C3\A4\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mmci-omap\00", align 1
@mmc_omap_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"platform data missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"no slots\0A\00", align 1
@mmc_omap_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"&host->slot_wq\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"TX DMA channel request failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"RX DMA channel request failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"mmc_omap\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [29 x i8] c"Invalid response type: %04x\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Spurious IRQ 0x%04x\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"command timeout (CMD%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"command CRC error (CMD%d, arg 0x%08x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"command CRC error without cmd?\0A\00", align 1
@mmc_omap_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @mmc_omap_request, ptr null, ptr @mmc_omap_set_ios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@dev_attr_slot_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @mmc_omap_show_slot_name, ptr null }, align 4
@dev_attr_cover_switch = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @mmc_omap_show_cover_switch, ptr null }, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"slot_name\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias271, ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__exitcall_mmc_omap_driver_exit, ptr @__initcall__kmod_omap__267_1511_mmc_omap_driver_init6, ptr @mmc_omap_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_mmc_notify_cover_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.mmc_omap_host, ptr %5, i32 0, i32 33, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 37
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 860, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

12:                                               ; preds = %3
  %13 = icmp eq i32 %9, 0
  %14 = icmp eq ptr %7, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mmc_omap_slot, ptr %7, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %18, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mmc_omap_slot, ptr %7, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 64
  %26 = load i32, ptr %7, align 4
  %27 = tail call i32 %20(ptr noundef %25, i32 noundef %26) #9
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i32 [ %27, %22 ], [ 0, %16 ]
  %30 = getelementptr inbounds %struct.mmc_omap_slot, ptr %7, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  store i32 %29, ptr %30, align 4
  %34 = getelementptr inbounds %struct.mmc_omap_slot, ptr %7, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str) #9
  br label %37

37:                                               ; preds = %33, %28
  %38 = getelementptr inbounds %struct.mmc_omap_slot, ptr %7, i32 0, i32 6, i32 1
  %39 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %38) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mmc_omap_slot, ptr %7, i32 0, i32 6
  tail call void @__tasklet_hi_schedule(ptr noundef %42) #9
  br label %43

43:                                               ; preds = %41, %37, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmc_omap_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmc_omap_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmc_omap_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmc_omap_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_omap_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  br label %255

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %4, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 3
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #10
  br label %255

13:                                               ; preds = %7
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 252, i32 noundef 3520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %255, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %255, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %21 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 13
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = ptrtoint ptr %21 to i32
  br label %255

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 21
  store i32 -32, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 21, i32 1
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 21, i32 1, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 21, i32 2
  store ptr @mmc_omap_slot_release_work, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 23
  store i32 -32, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 23, i32 1
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 23, i32 1, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 23, i32 2
  store ptr @mmc_omap_send_stop_work, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 18
  store i32 -32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 18, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 18, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 18, i32 2
  store ptr @mmc_omap_abort_command, ptr %38, align 4
  %39 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %39, ptr noundef nonnull @mmc_omap_cmd_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %40 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 39
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 38
  tail call void @init_timer_key(ptr noundef %41, ptr noundef nonnull @mmc_omap_clk_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %42 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 32
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 35
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 36
  tail call void @__init_waitqueue_head(ptr noundef %44, ptr noundef nonnull @.str.4, ptr noundef nonnull @mmc_omap_probe.__key) #9
  %45 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 42
  store ptr %4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %4, i32 0, i32 10, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 30
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 5
  store ptr %2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %50, align 8
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 6
  store i8 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 15
  store i32 %17, ptr %55, align 4
  %56 = load i32, ptr %20, align 4
  %57 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 14
  store i32 %56, ptr %57, align 4
  %58 = tail call ptr @clk_get(ptr noundef %2, ptr noundef nonnull @.str.5) #9
  %59 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 7
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %26
  %62 = ptrtoint ptr %58 to i32
  br label %255

63:                                               ; preds = %26
  %64 = tail call i32 @clk_enable(ptr noundef %58) #9
  %65 = tail call ptr @clk_get(ptr noundef %2, ptr noundef nonnull @.str.6) #9
  %66 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 8
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = ptrtoint ptr %65 to i32
  br label %251

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 12
  store i32 -1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 10
  store i32 -1, ptr %72, align 4
  %73 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.7) #9
  %74 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 11
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = icmp eq ptr %73, inttoptr (i32 -517 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = load ptr, ptr %66, align 4
  tail call void @clk_put(ptr noundef %79) #9
  br label %251

80:                                               ; preds = %76
  store ptr null, ptr %74, align 4
  %81 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.8) #10
  br label %82

82:                                               ; preds = %80, %70
  %83 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.9) #9
  %84 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 9
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = icmp eq ptr %83, inttoptr (i32 -517 to ptr)
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = load ptr, ptr %74, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void @dma_release_channel(ptr noundef nonnull %89) #9
  br label %92

92:                                               ; preds = %91, %88
  %93 = load ptr, ptr %66, align 4
  tail call void @clk_put(ptr noundef %93) #9
  br label %251

94:                                               ; preds = %86
  store ptr null, ptr %84, align 4
  %95 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.10) #10
  br label %96

96:                                               ; preds = %94, %82
  %97 = load i32, ptr %55, align 4
  %98 = tail call i32 @request_threaded_irq(i32 noundef %97, ptr noundef nonnull @mmc_omap_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %14) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %240

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %4, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call i32 %102(ptr noundef %2) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %236, label %107

107:                                              ; preds = %104, %100
  %108 = load i8, ptr %8, align 4
  %109 = and i8 %108, 3
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 37
  store i32 %110, ptr %111, align 4
  %112 = load i32, ptr %48, align 4
  %113 = and i32 %112, 8
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 2, i32 1
  %116 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 17
  store i32 %115, ptr %116, align 4
  %117 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #9
  %118 = getelementptr inbounds %struct.mmc_omap_host, ptr %14, i32 0, i32 41
  store ptr %117, ptr %118, align 4
  %119 = icmp eq ptr %117, null
  br i1 %119, label %230, label %120

120:                                              ; preds = %107
  %121 = load i8, ptr %8, align 4
  %122 = and i8 %121, 3
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %255, label %124

124:                                              ; preds = %222, %120
  %125 = phi i32 [ %223, %222 ], [ 0, %120 ]
  %126 = load ptr, ptr %49, align 4
  %127 = tail call ptr @mmc_alloc_host(i32 noundef 84, ptr noundef %126) #9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %210, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 68
  %131 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 8
  store ptr %14, ptr %131, align 4
  %132 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 9
  store ptr %127, ptr %132, align 4
  store i32 %125, ptr %130, align 4
  %133 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 0, i32 1
  store i16 3, ptr %133, align 4
  %134 = load ptr, ptr %45, align 4
  %135 = getelementptr %struct.omap_mmc_platform_data, ptr %134, i32 0, i32 10, i32 %125
  %136 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 9, i32 1
  store ptr %135, ptr %136, align 4
  %137 = getelementptr %struct.mmc_omap_host, ptr %14, i32 0, i32 33, i32 %125
  store ptr %130, ptr %137, align 4
  %138 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 16
  store i32 0, ptr %138, align 8
  %139 = load ptr, ptr %45, align 4
  %140 = getelementptr %struct.omap_mmc_platform_data, ptr %139, i32 0, i32 10, i32 %125
  %141 = load i8, ptr %140, align 4
  %142 = icmp ugt i8 %141, 3
  %143 = zext i1 %142 to i32
  store i32 %143, ptr %138, align 8
  %144 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 3
  store ptr @mmc_omap_ops, ptr %144, align 4
  %145 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 5
  store i32 400000, ptr %145, align 4
  %146 = load i32, ptr %48, align 4
  %147 = and i32 %146, 56
  %148 = icmp eq i32 %147, 0
  %149 = select i1 %148, i32 48000000, i32 24000000
  %150 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 6
  store i32 %149, ptr %150, align 16
  %151 = load ptr, ptr %45, align 4
  %152 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %129
  %156 = tail call i32 @llvm.umin.i32(i32 %153, i32 %149) #9
  store i32 %156, ptr %150, align 16
  br label %157

157:                                              ; preds = %155, %129
  %158 = load ptr, ptr %136, align 4
  %159 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %158, i32 0, i32 16
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 8
  store i32 %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 21
  store i16 32, ptr %162, align 4
  %163 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 24
  store i32 2048, ptr %163, align 4
  %164 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 25
  store i32 2048, ptr %164, align 8
  %165 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 23
  store i32 4194304, ptr %165, align 16
  %166 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 20
  store i32 4194304, ptr %166, align 8
  %167 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %158, i32 0, i32 14
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %171, ptr noundef nonnull @mmc_omap_cover_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %172 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %172, ptr noundef nonnull @mmc_omap_cover_handler) #9
  br label %173

173:                                              ; preds = %170, %157
  %174 = tail call i32 @mmc_add_host(ptr noundef nonnull %127) #9
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %208, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr %136, align 4
  %178 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %177, i32 0, i32 15
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 1
  %183 = tail call i32 @device_create_file(ptr noundef %182, ptr noundef nonnull @dev_attr_slot_name) #9
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %208, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %136, align 4
  br label %187

187:                                              ; preds = %185, %176
  %188 = phi ptr [ %186, %185 ], [ %177, %176 ]
  %189 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %188, i32 0, i32 14
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %222, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 1
  %194 = tail call i32 @device_create_file(ptr noundef %193, ptr noundef nonnull @dev_attr_cover_switch) #9
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 0, i32 3
  %198 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %197) #9
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 1, i32 1, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %201) #9
  br label %222

202:                                              ; preds = %192
  %203 = load ptr, ptr %136, align 4
  %204 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %203, i32 0, i32 15
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  tail call void @device_remove_file(ptr noundef %193, ptr noundef nonnull @dev_attr_slot_name) #9
  br label %208

208:                                              ; preds = %207, %202, %181, %173
  %209 = phi i32 [ %194, %207 ], [ %194, %202 ], [ %183, %181 ], [ %174, %173 ]
  tail call void @mmc_remove_host(ptr noundef nonnull %127) #9
  tail call void @mmc_free_host(ptr noundef nonnull %127) #9
  br label %210

210:                                              ; preds = %208, %124
  %211 = phi i32 [ %209, %208 ], [ -12, %124 ]
  %212 = icmp eq i32 %125, 0
  br i1 %212, label %228, label %213

213:                                              ; preds = %210
  %214 = add nsw i32 %125, -1
  %215 = getelementptr %struct.mmc_omap_host, ptr %14, i32 0, i32 33, i32 %214
  %216 = load ptr, ptr %215, align 4
  tail call fastcc void @mmc_omap_remove_slot(ptr noundef %216)
  %217 = icmp ugt i32 %125, 1
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = add nsw i32 %125, -2
  %220 = getelementptr %struct.mmc_omap_host, ptr %14, i32 0, i32 33, i32 %219
  %221 = load ptr, ptr %220, align 4
  tail call fastcc void @mmc_omap_remove_slot(ptr noundef %221)
  br label %228

222:                                              ; preds = %200, %196, %187
  %223 = add nuw nsw i32 %125, 1
  %224 = load i8, ptr %8, align 4
  %225 = and i8 %224, 3
  %226 = zext i8 %225 to i32
  %227 = icmp ult i32 %223, %226
  br i1 %227, label %124, label %255

228:                                              ; preds = %218, %213, %210
  %229 = load ptr, ptr %118, align 4
  tail call void @destroy_workqueue(ptr noundef %229) #9
  br label %230

230:                                              ; preds = %228, %107
  %231 = phi i32 [ %211, %228 ], [ -12, %107 ]
  %232 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %4, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  tail call void %233(ptr noundef %2) #9
  br label %236

236:                                              ; preds = %235, %230, %104
  %237 = phi i32 [ %105, %104 ], [ %231, %235 ], [ %231, %230 ]
  %238 = load i32, ptr %55, align 4
  %239 = tail call ptr @free_irq(i32 noundef %238, ptr noundef nonnull %14) #9
  br label %240

240:                                              ; preds = %236, %96
  %241 = phi i32 [ %98, %96 ], [ %237, %236 ]
  %242 = load ptr, ptr %74, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  tail call void @dma_release_channel(ptr noundef nonnull %242) #9
  br label %245

245:                                              ; preds = %244, %240
  %246 = load ptr, ptr %84, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  tail call void @dma_release_channel(ptr noundef nonnull %246) #9
  br label %249

249:                                              ; preds = %248, %245
  %250 = load ptr, ptr %66, align 4
  tail call void @clk_put(ptr noundef %250) #9
  br label %251

251:                                              ; preds = %249, %92, %78, %68
  %252 = phi i32 [ %69, %68 ], [ -517, %78 ], [ -517, %92 ], [ %241, %249 ]
  %253 = load ptr, ptr %59, align 4
  tail call void @clk_disable(ptr noundef %253) #9
  %254 = load ptr, ptr %59, align 4
  tail call void @clk_put(ptr noundef %254) #9
  br label %255

255:                                              ; preds = %251, %222, %120, %61, %24, %16, %13, %12, %6
  %256 = phi i32 [ -6, %6 ], [ -517, %12 ], [ %25, %24 ], [ %62, %61 ], [ %252, %251 ], [ -12, %13 ], [ -6, %16 ], [ 0, %120 ], [ 0, %222 ]
  ret i32 %256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_omap_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 37
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %10, label %17

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1469, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %14, %10 ], [ 0, %5 ]
  %12 = getelementptr %struct.mmc_omap_host, ptr %3, i32 0, i32 33, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call fastcc void @mmc_omap_remove_slot(ptr noundef %13)
  %14 = add nuw nsw i32 %11, 1
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %10, label %17

17:                                               ; preds = %10, %5
  %18 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 42
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void %21(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %23, %17
  %26 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 39
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 40
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = and i8 %29, -2
  store i8 %33, ptr %28, align 4
  %34 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %35) #9
  br label %36

36:                                               ; preds = %32, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #9
  %37 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr @free_irq(i32 noundef %38, ptr noundef nonnull %3) #9
  %40 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  tail call void @clk_put(ptr noundef %41) #9
  %42 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %43) #9
  %44 = load ptr, ptr %42, align 4
  tail call void @clk_put(ptr noundef %44) #9
  %45 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  tail call void @dma_release_channel(ptr noundef nonnull %46) #9
  br label %49

49:                                               ; preds = %48, %36
  %50 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @dma_release_channel(ptr noundef nonnull %51) #9
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 41
  %56 = load ptr, ptr %55, align 4
  tail call void @destroy_workqueue(ptr noundef %56) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_slot_release_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -112
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load ptr, ptr %3, align 4
  store ptr null, ptr %3, align 4
  tail call fastcc void @mmc_omap_select_slot(ptr noundef %4, i32 noundef 1)
  %5 = getelementptr inbounds %struct.mmc_omap_slot, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 4
  tail call fastcc void @mmc_omap_start_request(ptr noundef %2, ptr noundef %6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_send_stop_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 60
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_omap_slot, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 999999999
  %9 = udiv i32 %8, %7
  %10 = shl i32 %9, 3
  %11 = add i32 %10, 999
  %12 = udiv i32 %11, 1000
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #9
  %14 = getelementptr i8, ptr %0, i32 -132
  %15 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call fastcc void @mmc_omap_start_command(ptr noundef %14, ptr noundef %16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_abort_command(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 -110, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr i8, ptr %0, i32 -60
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr %3, align 4
  br i1 %15, label %17, label %65

17:                                               ; preds = %12
  store ptr null, ptr %3, align 4
  %18 = getelementptr i8, ptr %0, i32 120
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_omap_slot, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 119999999
  %23 = udiv i32 %22, %21
  %24 = getelementptr i8, ptr %0, i32 -20
  %25 = getelementptr i8, ptr %0, i32 -4
  %26 = icmp ugt i32 %21, -120000000
  %27 = tail call i32 @llvm.umax.i32(i32 %23, i32 1) #9
  br label %28

28:                                               ; preds = %49, %17
  %29 = phi i16 [ 0, %17 ], [ %50, %49 ]
  %30 = phi i32 [ 0, %17 ], [ %51, %49 ]
  %31 = load ptr, ptr %24, align 4
  %32 = load i32, ptr %25, align 4
  %33 = shl i32 4, %32
  %34 = getelementptr i8, ptr %31, i32 %33
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 -1) #9, !srcloc !13
  %35 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 12416) #9, !srcloc !13
  br i1 %26, label %49, label %36

36:                                               ; preds = %45, %28
  %37 = phi i32 [ %47, %45 ], [ 0, %28 ]
  %38 = load ptr, ptr %24, align 4
  %39 = load i32, ptr %25, align 4
  %40 = shl i32 4, %39
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #9, !srcloc !14
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #9
  %47 = add nuw i32 %37, 1
  %48 = icmp eq i32 %47, %27
  br i1 %48, label %49, label %36

49:                                               ; preds = %45, %28
  %50 = phi i16 [ %29, %28 ], [ %42, %45 ]
  %51 = add nuw nsw i32 %30, 1
  %52 = icmp eq i32 %51, 10000
  br i1 %52, label %53, label %28

53:                                               ; preds = %49, %36
  %54 = phi i16 [ %42, %36 ], [ %50, %49 ]
  %55 = load ptr, ptr %24, align 4
  %56 = load i32, ptr %25, align 4
  %57 = shl i32 4, %56
  %58 = getelementptr i8, ptr %55, i32 %57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %54) #9, !srcloc !13
  %59 = getelementptr i8, ptr %0, i32 -68
  store ptr null, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 -56
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %18, align 4
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %62, i32 noundef 1)
  %63 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  tail call void @mmc_request_done(ptr noundef %61, ptr noundef %64) #9
  br label %66

65:                                               ; preds = %12
  tail call fastcc void @mmc_omap_cmd_done(ptr noundef %2, ptr noundef %16)
  br label %66

66:                                               ; preds = %65, %53
  %67 = getelementptr i8, ptr %0, i32 16
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, -2
  store i8 %69, ptr %67, align 4
  %70 = getelementptr i8, ptr %0, i32 -12
  %71 = load i32, ptr %70, align 4
  tail call void @enable_irq(i32 noundef %71) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_cmd_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 104
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 -40
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 -24
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 5, %16
  %18 = getelementptr i8, ptr %14, i32 %17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 0) #9, !srcloc !13
  %19 = getelementptr i8, ptr %0, i32 -32
  %20 = load i32, ptr %19, align 4
  tail call void @disable_irq(i32 noundef %20) #9
  %21 = load i8, ptr %8, align 4
  %22 = or i8 %21, 1
  store i8 %22, ptr %8, align 4
  %23 = getelementptr i8, ptr %0, i32 152
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 -20
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %25) #9
  br label %27

27:                                               ; preds = %12, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_clk_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr i8, ptr %0, i32 24
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = and i8 %5, -2
  store i8 %9, ptr %4, align 4
  %10 = getelementptr i8, ptr %0, i32 -184
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_omap_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 4, %14
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #9, !srcloc !14
  %18 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 33
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_omap_slot, ptr %19, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 64
  %23 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.13, i32 noundef %23) #10
  %24 = icmp eq i16 %17, 0
  br i1 %24, label %207, label %25

25:                                               ; preds = %10
  %26 = load ptr, ptr %11, align 4
  %27 = load i32, ptr %13, align 4
  %28 = shl i32 4, %27
  %29 = getelementptr i8, ptr %26, i32 %28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %17) #9, !srcloc !13
  %30 = load ptr, ptr %11, align 4
  %31 = load i32, ptr %13, align 4
  %32 = shl i32 5, %31
  %33 = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 0) #9, !srcloc !13
  br label %207

34:                                               ; preds = %6, %2
  %35 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 13
  %36 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 17
  %37 = load ptr, ptr %35, align 4
  %38 = load i32, ptr %36, align 4
  %39 = shl i32 4, %38
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #9, !srcloc !14
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %207, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 29
  %45 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 3
  %46 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 34
  %47 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 4
  br label %48

48:                                               ; preds = %140, %43
  %49 = phi i16 [ %41, %43 ], [ %153, %140 ]
  %50 = phi i32 [ 0, %43 ], [ %142, %140 ]
  %51 = phi i32 [ 0, %43 ], [ %96, %140 ]
  %52 = phi i32 [ 0, %43 ], [ %78, %140 ]
  %53 = phi i32 [ 0, %43 ], [ %148, %140 ]
  %54 = zext i16 %49 to i32
  %55 = load ptr, ptr %35, align 4
  %56 = load i32, ptr %36, align 4
  %57 = shl i32 4, %56
  %58 = getelementptr i8, ptr %55, i32 %57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 %49) #9, !srcloc !13
  %59 = load ptr, ptr %3, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %48
  %62 = load i32, ptr %59, align 4
  br label %63

63:                                               ; preds = %61, %48
  %64 = phi i32 [ %62, %61 ], [ -1, %48 ]
  %65 = load i32, ptr %44, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = and i32 %54, 1032
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call fastcc void @mmc_omap_xfer_data(ptr noundef %1, i32 noundef 0)
  br label %71

71:                                               ; preds = %70, %67
  %72 = and i32 %54, 2048
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  tail call fastcc void @mmc_omap_xfer_data(ptr noundef %1, i32 noundef 1)
  br label %75

75:                                               ; preds = %74, %71, %63
  %76 = and i32 %54, 8
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 %52, i32 1
  %79 = and i32 %54, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %45, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.mmc_data, ptr %82, i32 0, i32 5
  store i32 -110, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %81, %75
  %87 = phi i32 [ 1, %84 ], [ %51, %81 ], [ %51, %75 ]
  %88 = and i32 %54, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %45, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.mmc_data, ptr %91, i32 0, i32 5
  store i32 -84, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %90, %86
  %96 = phi i32 [ 1, %93 ], [ %87, %90 ], [ %87, %86 ]
  %97 = and i32 %54, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %124, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %3, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %124, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %46, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.mmc_omap_slot, ptr %103, i32 0, i32 12
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %107, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.mmc_omap_slot, ptr %103, i32 0, i32 11
  %113 = load ptr, ptr %112, align 4
  %114 = load ptr, ptr %113, align 64
  %115 = load i32, ptr %103, align 4
  %116 = tail call i32 %109(ptr noundef %114, i32 noundef %115) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111, %105, %102
  %119 = load ptr, ptr %47, align 4
  %120 = load ptr, ptr %119, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.14, i32 noundef %64) #10
  br label %121

121:                                              ; preds = %118, %111
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr inbounds %struct.mmc_command, ptr %122, i32 0, i32 5
  store i32 -110, ptr %123, align 4
  br label %124

124:                                              ; preds = %121, %99, %95
  %125 = phi i32 [ 1, %121 ], [ %53, %99 ], [ %53, %95 ]
  %126 = phi i32 [ 1, %121 ], [ %50, %99 ], [ %50, %95 ]
  %127 = and i32 %54, 256
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr %3, align 4
  %131 = icmp eq ptr %130, null
  %132 = load ptr, ptr %47, align 4
  %133 = load ptr, ptr %132, align 64
  br i1 %131, label %139, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.mmc_command, ptr %130, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.15, i32 noundef %64, i32 noundef %136) #10
  %137 = load ptr, ptr %3, align 4
  %138 = getelementptr inbounds %struct.mmc_command, ptr %137, i32 0, i32 5
  store i32 -84, ptr %138, align 4
  br label %140

139:                                              ; preds = %129
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.16) #10
  br label %140

140:                                              ; preds = %139, %134, %124
  %141 = phi i32 [ 1, %134 ], [ %125, %139 ], [ %125, %124 ]
  %142 = phi i32 [ 1, %134 ], [ %126, %139 ], [ %126, %124 ]
  %143 = and i32 %54, 16384
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 %141, i32 1
  %146 = and i32 %54, 2049
  %147 = icmp eq i32 %146, 1
  %148 = select i1 %147, i32 1, i32 %145
  %149 = load ptr, ptr %35, align 4
  %150 = load i32, ptr %36, align 4
  %151 = shl i32 4, %150
  %152 = getelementptr i8, ptr %149, i32 %151
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %152) #9, !srcloc !14
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %48

155:                                              ; preds = %140
  %156 = icmp eq i32 %142, 0
  br i1 %156, label %177, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %177, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 20
  %163 = tail call i32 @del_timer(ptr noundef %162) #9
  %164 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 19
  %165 = load i8, ptr %164, align 4
  %166 = or i8 %165, 1
  store i8 %166, ptr %164, align 4
  %167 = load ptr, ptr %35, align 4
  %168 = load i32, ptr %36, align 4
  %169 = shl i32 5, %168
  %170 = getelementptr i8, ptr %167, i32 %169
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %170, i16 0) #9, !srcloc !13
  %171 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 15
  %172 = load i32, ptr %171, align 4
  tail call void @disable_irq_nosync(i32 noundef %172) #9
  %173 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 41
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 18
  %176 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %174, ptr noundef %175) #9
  br label %207

177:                                              ; preds = %157, %155
  %178 = icmp eq i32 %148, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %177
  %180 = load ptr, ptr %3, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  tail call fastcc void @mmc_omap_cmd_done(ptr noundef %1, ptr noundef nonnull %180)
  br label %183

183:                                              ; preds = %182, %179, %177
  %184 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 3
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %207, label %187

187:                                              ; preds = %183
  %188 = icmp eq i32 %96, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %187
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %1, ptr noundef nonnull %185)
  br label %207

190:                                              ; preds = %187
  %191 = icmp eq i32 %78, 0
  br i1 %191, label %207, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 31
  %194 = load i8, ptr %193, align 4
  %195 = and i8 %194, 4
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %1, ptr noundef nonnull %185) #9
  br label %207

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 32
  %200 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %199) #9
  %201 = load i8, ptr %193, align 4
  %202 = and i8 %201, 2
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = or i8 %201, 1
  store i8 %205, ptr %193, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %199, i32 noundef %200) #9
  br label %207

206:                                              ; preds = %198
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %199, i32 noundef %200) #9
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %1, ptr noundef nonnull %185) #9
  br label %207

207:                                              ; preds = %206, %204, %197, %190, %189, %183, %161, %34, %25, %10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_remove_slot(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  tail call void @device_remove_file(ptr noundef %10, ptr noundef nonnull @dev_attr_slot_name) #9
  %11 = load ptr, ptr %4, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ %5, %1 ]
  %14 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  tail call void @device_remove_file(ptr noundef %18, ptr noundef nonnull @dev_attr_cover_switch) #9
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 6
  tail call void @tasklet_kill(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 7
  %22 = tail call i32 @del_timer_sync(ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_omap_host, ptr %24, i32 0, i32 41
  %26 = load ptr, ptr %25, align 4
  tail call void @flush_workqueue(ptr noundef %26) #9
  tail call void @mmc_remove_host(ptr noundef %3) #9
  tail call void @mmc_free_host(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_select_slot(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne i32 %1, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 35
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 36
  br label %15

15:                                               ; preds = %28, %13
  %16 = phi i32 [ %9, %13 ], [ %29, %28 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %16) #9
  %17 = load ptr, ptr %10, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  %20 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 2) #9
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %19
  call void @schedule() #9
  %24 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 2) #9
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %19
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  br label %28

28:                                               ; preds = %27, %15
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %30 = load ptr, ptr %10, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15

32:                                               ; preds = %28, %7
  %33 = phi i32 [ %9, %7 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr %10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %33) #9
  br label %36

36:                                               ; preds = %32, %2
  %37 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 38
  %38 = call i32 @del_timer(ptr noundef %37) #9
  %39 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 34
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %0
  %42 = and i1 %6, %41
  %43 = icmp eq ptr %40, null
  %44 = or i1 %43, %42
  br i1 %44, label %63, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.mmc_omap_slot, ptr %40, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_omap_host, ptr %47, i32 0, i32 40
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.mmc_omap_slot, ptr %40, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = add i32 %54, 999999999
  %58 = udiv i32 %57, %54
  %59 = shl i32 %58, 3
  %60 = add i32 %59, 999
  %61 = udiv i32 %60, 1000
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %62(i32 noundef %61) #9
  br label %63

63:                                               ; preds = %56, %52, %45, %36
  %64 = load ptr, ptr %39, align 4
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %88, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 2
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, -1024
  %70 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 3, %73
  %75 = getelementptr i8, ptr %71, i32 %74
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %69) #9, !srcloc !13
  %76 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 42
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 64
  %85 = load i32, ptr %0, align 4
  %86 = call i32 %79(ptr noundef %84, i32 noundef %85) #9
  br label %87

87:                                               ; preds = %81, %66
  store ptr %0, ptr %39, align 4
  br label %88

88:                                               ; preds = %87, %63
  %89 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 39
  %90 = call i32 @_raw_spin_lock_irqsave(ptr noundef %89) #9
  %91 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 40
  %92 = load i8, ptr %91, align 4
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %6, label %95, label %115

95:                                               ; preds = %88
  br i1 %94, label %96, label %101

96:                                               ; preds = %95
  %97 = or i8 %92, 1
  store i8 %97, ptr %91, align 4
  %98 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 @clk_enable(ptr noundef %99) #9
  br label %101

101:                                              ; preds = %96, %95
  call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %90) #9
  %102 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 13
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 17
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 3, %105
  %107 = getelementptr i8, ptr %103, i32 %106
  %108 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %107) #9, !srcloc !14
  %109 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 2
  %110 = load i16, ptr %109, align 4
  %111 = load ptr, ptr %102, align 4
  %112 = load i32, ptr %104, align 4
  %113 = shl i32 3, %112
  %114 = getelementptr i8, ptr %111, i32 %113
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %114, i16 %110) #9, !srcloc !13
  br label %121

115:                                              ; preds = %88
  br i1 %94, label %120, label %116

116:                                              ; preds = %115
  %117 = and i8 %92, -2
  store i8 %117, ptr %91, align 4
  %118 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 8
  %119 = load ptr, ptr %118, align 4
  call void @clk_disable(ptr noundef %119) #9
  br label %120

120:                                              ; preds = %116, %115
  call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %90) #9
  br label %121

121:                                              ; preds = %120, %101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_start_request(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1068, 0\0A.popsection", ""() #9, !srcloc !16
  unreachable

8:                                                ; preds = %2
  store ptr %1, ptr %4, align 4
  %9 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 9, %17
  %19 = getelementptr i8, ptr %15, i32 %18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 0) #9, !srcloc !13
  %20 = load ptr, ptr %14, align 4
  %21 = load i32, ptr %16, align 4
  %22 = shl i32 10, %21
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 0) #9, !srcloc !13
  %24 = load ptr, ptr %14, align 4
  %25 = load i32, ptr %16, align 4
  %26 = shl i32 11, %25
  %27 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 0) #9, !srcloc !13
  %28 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, -5
  store i8 %30, ptr %28, align 4
  %31 = load ptr, ptr %14, align 4
  %32 = load i32, ptr %16, align 4
  %33 = shl i32 13, %32
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #9, !srcloc !14
  %36 = and i16 %35, -33
  %37 = load ptr, ptr %14, align 4
  %38 = load i32, ptr %16, align 4
  %39 = shl i32 13, %38
  %40 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 %36) #9, !srcloc !13
  %41 = load ptr, ptr %14, align 4
  %42 = load i32, ptr %16, align 4
  %43 = shl i32 6, %42
  %44 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 253) #9, !srcloc !13
  br label %254

45:                                               ; preds = %8
  %46 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i16
  %51 = add i16 %50, -1
  %52 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 17
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 10, %55
  %57 = getelementptr i8, ptr %53, i32 %56
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 %51) #9, !srcloc !13
  %58 = trunc i32 %47 to i16
  %59 = add i16 %58, -1
  %60 = load ptr, ptr %52, align 4
  %61 = load i32, ptr %54, align 4
  %62 = shl i32 9, %61
  %63 = getelementptr i8, ptr %60, i32 %62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %59) #9, !srcloc !13
  %64 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 34
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.mmc_omap_slot, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = udiv i32 1000000000, %67
  %69 = load ptr, ptr %9, align 4
  %70 = load i32, ptr %69, align 4
  %71 = udiv i32 %70, %68
  %72 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  %75 = load ptr, ptr %52, align 4
  %76 = load i32, ptr %54, align 4
  %77 = shl i32 13, %76
  %78 = getelementptr i8, ptr %75, i32 %77
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %78) #9, !srcloc !14
  %80 = icmp ugt i32 %74, 65535
  %81 = lshr i32 %74, 10
  %82 = and i16 %79, -33
  %83 = select i1 %80, i32 %81, i32 %74
  %84 = select i1 %80, i16 32, i16 0
  %85 = or i16 %82, %84
  %86 = load ptr, ptr %52, align 4
  %87 = load i32, ptr %54, align 4
  %88 = shl i32 13, %87
  %89 = getelementptr i8, ptr %86, i32 %88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 %85) #9, !srcloc !13
  %90 = trunc i32 %83 to i16
  %91 = load ptr, ptr %52, align 4
  %92 = load i32, ptr %54, align 4
  %93 = shl i32 7, %92
  %94 = getelementptr i8, ptr %91, i32 %93
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %94, i16 %90) #9, !srcloc !13
  %95 = load i32, ptr %48, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %45
  %98 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 12
  br label %104

99:                                               ; preds = %45
  %100 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 10
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 12
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %99, %97
  %105 = phi ptr [ %98, %97 ], [ %102, %99 ]
  %106 = phi i32 [ 1, %97 ], [ %101, %99 ]
  %107 = load ptr, ptr %105, align 4
  br label %108

108:                                              ; preds = %115, %104
  %109 = phi ptr [ %117, %115 ], [ %107, %104 ]
  %110 = phi i32 [ %116, %115 ], [ 0, %104 ]
  %111 = getelementptr inbounds %struct.scatterlist, ptr %109, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = urem i32 %112, %47
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %217

115:                                              ; preds = %108
  %116 = add nuw i32 %110, 1
  %117 = tail call ptr @sg_next(ptr noundef %109) #9
  %118 = icmp eq i32 %116, %106
  br i1 %118, label %119, label %108

119:                                              ; preds = %115, %99
  %120 = phi ptr [ %102, %99 ], [ %105, %115 ]
  %121 = phi i32 [ 0, %99 ], [ %106, %115 ]
  %122 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 26
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 30
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 16
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 64, i32 32
  %128 = load i32, ptr %46, align 4
  %129 = tail call i32 @llvm.umin.i32(i32 %127, i32 %128) #9
  %130 = lshr i32 %129, 1
  %131 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 256
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 11
  %137 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 12
  br label %142

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 9
  %140 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 10
  %141 = shl nuw nsw i32 %130, 8
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i32 [ %141, %138 ], [ %130, %135 ]
  %144 = phi i16 [ 32512, %138 ], [ -1, %135 ]
  %145 = phi i16 [ -32753, %138 ], [ 3968, %135 ]
  %146 = phi i32 [ 2, %138 ], [ 1, %135 ]
  %147 = phi ptr [ %139, %138 ], [ %136, %135 ]
  %148 = phi ptr [ %140, %138 ], [ %137, %135 ]
  %149 = trunc i32 %143 to i16
  %150 = add i16 %144, %149
  %151 = or i16 %150, %145
  %152 = load ptr, ptr %147, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %219, label %154

154:                                              ; preds = %142
  %155 = load i32, ptr %148, align 4
  %156 = icmp eq i32 %155, %130
  br i1 %156, label %180, label %157

157:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #9
  %158 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  %159 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i64 40, i1 false) #9
  %160 = load i32, ptr %159, align 4
  %161 = load i32, ptr %54, align 4
  %162 = shl i32 8, %161
  %163 = add i32 %162, %160
  store i32 %163, ptr %158, align 4
  %164 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 2, ptr %165, align 4
  %166 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 2, ptr %166, align 4
  %167 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 %130, ptr %167, align 4
  %168 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 %130, ptr %168, align 4
  %169 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 10
  store ptr null, ptr %169, align 4
  %170 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 11
  store i32 0, ptr %170, align 4
  %171 = load ptr, ptr %152, align 4
  %172 = getelementptr inbounds %struct.dma_device, ptr %171, i32 0, i32 44
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %157
  %176 = call i32 %173(ptr noundef nonnull %152, ptr noundef nonnull %3) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %175, %157
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  br label %219

179:                                              ; preds = %175
  store i32 %130, ptr %148, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #9
  br label %180

180:                                              ; preds = %179, %154
  %181 = load ptr, ptr %152, align 4
  %182 = getelementptr inbounds %struct.dma_device, ptr %181, i32 0, i32 15
  %183 = load ptr, ptr %182, align 4
  %184 = load ptr, ptr %120, align 4
  %185 = call i32 @dma_map_sg_attrs(ptr noundef %183, ptr noundef %184, i32 noundef %121, i32 noundef %146, i32 noundef 0) #9
  %186 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  store i32 %185, ptr %186, align 4
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %219, label %188

188:                                              ; preds = %180
  %189 = load ptr, ptr %120, align 4
  %190 = load i32, ptr %131, align 4
  %191 = and i32 %190, 256
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i32 2, i32 1
  %194 = load ptr, ptr %152, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %219, label %196

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.dma_device, ptr %194, i32 0, i32 39
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %219, label %200

200:                                              ; preds = %196
  %201 = call ptr %198(ptr noundef nonnull %152, ptr noundef %189, i32 noundef %185, i32 noundef %193, i32 noundef 3, ptr noundef null) #9
  %202 = icmp eq ptr %201, null
  br i1 %202, label %219, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %52, align 4
  %205 = load i32, ptr %54, align 4
  %206 = shl i32 11, %205
  %207 = getelementptr i8, ptr %204, i32 %206
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %207, i16 %151) #9, !srcloc !13
  %208 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %201, i32 0, i32 6
  store ptr @mmc_omap_dma_callback, ptr %208, align 4
  %209 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %201, i32 0, i32 8
  store ptr %0, ptr %209, align 4
  %210 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %201, i32 0, i32 4
  %211 = load ptr, ptr %210, align 4
  %212 = call i32 %211(ptr noundef nonnull %201) #9
  %213 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %214 = load i8, ptr %213, align 4
  %215 = and i8 %214, -8
  %216 = or i8 %215, 4
  store i8 %216, ptr %213, align 4
  br label %254

217:                                              ; preds = %108
  %218 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 26
  store i32 0, ptr %218, align 4
  br label %219

219:                                              ; preds = %217, %200, %196, %188, %180, %178, %142
  %220 = phi i32 [ %121, %188 ], [ %121, %196 ], [ %121, %178 ], [ %121, %200 ], [ %121, %180 ], [ %121, %142 ], [ %106, %217 ]
  %221 = load ptr, ptr %52, align 4
  %222 = load i32, ptr %54, align 4
  %223 = shl i32 11, %222
  %224 = getelementptr i8, ptr %221, i32 %223
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %224, i16 7967) #9, !srcloc !13
  %225 = load i32, ptr %48, align 4
  %226 = mul i32 %225, %47
  %227 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 29
  store i32 %226, ptr %227, align 4
  %228 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  store i32 %220, ptr %228, align 4
  %229 = load ptr, ptr %11, align 4
  %230 = getelementptr inbounds %struct.mmc_data, ptr %229, i32 0, i32 12
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 26
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr %struct.scatterlist, ptr %231, i32 %233
  %235 = getelementptr %struct.scatterlist, ptr %231, i32 %233, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 28
  store i32 %236, ptr %237, align 4
  %238 = load i32, ptr %234, align 4
  %239 = and i32 %238, -4
  %240 = inttoptr i32 %239 to ptr
  %241 = call ptr @page_address(ptr noundef %240) #9
  %242 = getelementptr %struct.scatterlist, ptr %231, i32 %233, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr i8, ptr %241, i32 %243
  %245 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 27
  store ptr %244, ptr %245, align 4
  %246 = load i32, ptr %237, align 4
  %247 = load i32, ptr %227, align 4
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %219
  store i32 %247, ptr %237, align 4
  br label %250

250:                                              ; preds = %249, %219
  %251 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %252 = load i8, ptr %251, align 4
  %253 = and i8 %252, -5
  store i8 %253, ptr %251, align 4
  br label %254

254:                                              ; preds = %250, %203, %13
  %255 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  call fastcc void @mmc_omap_start_command(ptr noundef %0, ptr noundef %256)
  %257 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %258 = load i8, ptr %257, align 4
  %259 = and i8 %258, 4
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %274, label %261

261:                                              ; preds = %254
  %262 = load ptr, ptr %11, align 4
  %263 = getelementptr inbounds %struct.mmc_data, ptr %262, i32 0, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 256
  %266 = icmp eq i32 %265, 0
  %267 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 11
  %268 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 9
  %269 = select i1 %266, ptr %268, ptr %267
  %270 = load ptr, ptr %269, align 4
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.dma_device, ptr %271, i32 0, i32 50
  %273 = load ptr, ptr %272, align 4
  call void %273(ptr noundef %270) #9
  br label %274

274:                                              ; preds = %261, %254
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_start_command(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 2
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 31
  switch i32 %6, label %10 [
    i32 0, label %15
    i32 21, label %7
    i32 29, label %7
    i32 7, label %8
    i32 1, label %9
  ]

7:                                                ; preds = %2, %2
  br label %15

8:                                                ; preds = %2
  br label %15

9:                                                ; preds = %2
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %6) #10
  %14 = load i32, ptr %4, align 4
  br label %15

15:                                               ; preds = %10, %9, %8, %7, %2
  %16 = phi i32 [ %14, %10 ], [ %5, %9 ], [ %5, %8 ], [ %5, %7 ], [ %5, %2 ]
  %17 = phi i32 [ 0, %10 ], [ 768, %9 ], [ 512, %8 ], [ 256, %7 ], [ %6, %2 ]
  %18 = and i32 %16, 96
  switch i32 %18, label %21 [
    i32 32, label %22
    i32 64, label %19
    i32 96, label %20
  ]

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %20, %19, %15
  %23 = phi i32 [ 0, %19 ], [ 4096, %20 ], [ 8192, %21 ], [ 12288, %15 ]
  %24 = load i32, ptr %1, align 4
  %25 = or i32 %23, %17
  %26 = or i32 %25, %24
  %27 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 34
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_omap_slot, ptr %28, i32 0, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 1
  %32 = or i32 %26, 64
  %33 = select i1 %31, i32 %32, i32 %26
  %34 = shl i32 %16, 8
  %35 = and i32 %34, 2048
  %36 = or i32 %33, %35
  %37 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 %42, 7
  %44 = and i32 %43, 32768
  %45 = xor i32 %44, 32768
  %46 = or i32 %45, %36
  br label %47

47:                                               ; preds = %40, %22
  %48 = phi i32 [ %36, %22 ], [ %46, %40 ]
  %49 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 20
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = add i32 %50, 50
  %52 = tail call i32 @mod_timer(ptr noundef %49, i32 noundef %51) #9
  %53 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 6, %56
  %58 = getelementptr i8, ptr %54, i32 %57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %58, i16 200) #9, !srcloc !13
  %59 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = trunc i32 %60 to i16
  %62 = load ptr, ptr %53, align 4
  %63 = load i32, ptr %55, align 4
  %64 = shl nuw i32 1, %63
  %65 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %61) #9, !srcloc !13
  %66 = load i32, ptr %59, align 4
  %67 = lshr i32 %66, 16
  %68 = trunc i32 %67 to i16
  %69 = load ptr, ptr %53, align 4
  %70 = load i32, ptr %55, align 4
  %71 = shl i32 2, %70
  %72 = getelementptr i8, ptr %69, i32 %71
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %72, i16 %68) #9, !srcloc !13
  %73 = load i32, ptr %1, align 4
  %74 = icmp eq i32 %73, 38
  %75 = select i1 %74, i16 19913, i16 19945
  %76 = load ptr, ptr %53, align 4
  %77 = load i32, ptr %55, align 4
  %78 = shl i32 5, %77
  %79 = getelementptr i8, ptr %76, i32 %78
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %75) #9, !srcloc !13
  %80 = trunc i32 %48 to i16
  %81 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %81, i16 %80) #9, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_dma_callback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, %5
  %9 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 32
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #9
  %14 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = or i8 %15, 2
  store i8 %19, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #9
  br label %21

20:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #9
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %0, ptr noundef %3) #9
  br label %21

21:                                               ; preds = %20, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_xfer_done(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 11
  %15 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 9
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 47
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef nonnull %17) #9
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 15
  br label %35

35:                                               ; preds = %32, %7
  %36 = phi ptr [ %34, %32 ], [ %9, %7 ]
  %37 = load ptr, ptr %36, align 4
  %38 = select i1 %13, i32 2, i32 1
  %39 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  %42 = load i32, ptr %41, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %37, ptr noundef %40, i32 noundef %42, i32 noundef %38, i32 noundef 0) #9
  br label %43

43:                                               ; preds = %35, %2
  %44 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 1
  store ptr null, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 34
  %54 = load ptr, ptr %53, align 4
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %54, i32 noundef 1)
  %55 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  tail call void @mmc_request_done(ptr noundef %52, ptr noundef %56) #9
  br label %63

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 24
  store ptr %1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 41
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 23
  %62 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %60, ptr noundef %61) #9
  br label %63

63:                                               ; preds = %57, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_release_slot(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %6, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #9, !srcloc !17
  unreachable

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 38
  br i1 %12, label %18, label %14

14:                                               ; preds = %11
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = add i32 %15, 10
  %17 = tail call i32 @mod_timer(ptr noundef %13, i32 noundef %16) #9
  br label %48

18:                                               ; preds = %11
  %19 = tail call i32 @del_timer(ptr noundef %13) #9
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.mmc_omap_host, ptr %20, i32 0, i32 40
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.mmc_omap_slot, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = add i32 %27, 999999999
  %31 = udiv i32 %30, %27
  %32 = shl i32 %31, 3
  %33 = add i32 %32, 999
  %34 = udiv i32 %33, 1000
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %34) #9
  br label %36

36:                                               ; preds = %29, %25, %18
  %37 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 39
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #9
  %39 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 40
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = and i8 %40, -2
  store i8 %44, ptr %39, align 4
  %45 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  tail call void @clk_disable(ptr noundef %46) #9
  br label %47

47:                                               ; preds = %43, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #9
  br label %48

48:                                               ; preds = %47, %14
  %49 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 35
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #9
  %51 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 37
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %80, %48
  %55 = phi i32 [ %81, %80 ], [ 0, %48 ]
  %56 = getelementptr %struct.mmc_omap_host, ptr %4, i32 0, i32 33, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %80, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_omap_slot, ptr %57, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 22
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !8

67:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 34
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %57, %70
  br i1 %71, label %72, label %73, !prof !10

72:                                               ; preds = %68
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

73:                                               ; preds = %68
  store ptr %57, ptr %64, align 4
  %74 = getelementptr inbounds %struct.mmc_omap_slot, ptr %57, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #9
  %76 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 41
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 21
  %79 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %77, ptr noundef %78) #9
  br label %85

80:                                               ; preds = %59, %54
  %81 = add nuw nsw i32 %55, 1
  %82 = icmp eq i32 %81, %52
  br i1 %82, label %83, label %54

83:                                               ; preds = %80, %48
  store ptr null, ptr %7, align 4
  %84 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 36
  tail call void @__wake_up(ptr noundef %84, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #9
  br label %85

85:                                               ; preds = %83, %73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_cmd_done(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 2
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 20
  %5 = tail call i32 @del_timer(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %90, label %10

10:                                               ; preds = %2
  %11 = and i32 %7, 2
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  br i1 %12, label %76, label %17

17:                                               ; preds = %10
  %18 = shl i32 16, %16
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #9, !srcloc !14
  %21 = zext i16 %20 to i32
  %22 = load ptr, ptr %13, align 4
  %23 = load i32, ptr %15, align 4
  %24 = shl i32 17, %23
  %25 = getelementptr i8, ptr %22, i32 %24
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #9, !srcloc !14
  %27 = zext i16 %26 to i32
  %28 = shl nuw i32 %27, 16
  %29 = or i32 %28, %21
  %30 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %31 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  store i32 %29, ptr %31, align 4
  %32 = load ptr, ptr %13, align 4
  %33 = load i32, ptr %15, align 4
  %34 = shl i32 18, %33
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #9, !srcloc !14
  %37 = zext i16 %36 to i32
  %38 = load ptr, ptr %13, align 4
  %39 = load i32, ptr %15, align 4
  %40 = shl i32 19, %39
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #9, !srcloc !14
  %43 = zext i16 %42 to i32
  %44 = shl nuw i32 %43, 16
  %45 = or i32 %44, %37
  %46 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %13, align 4
  %48 = load i32, ptr %15, align 4
  %49 = shl i32 20, %48
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #9, !srcloc !14
  %52 = zext i16 %51 to i32
  %53 = load ptr, ptr %13, align 4
  %54 = load i32, ptr %15, align 4
  %55 = shl i32 21, %54
  %56 = getelementptr i8, ptr %53, i32 %55
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %56) #9, !srcloc !14
  %58 = zext i16 %57 to i32
  %59 = shl nuw i32 %58, 16
  %60 = or i32 %59, %52
  %61 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %13, align 4
  %63 = load i32, ptr %15, align 4
  %64 = shl i32 22, %63
  %65 = getelementptr i8, ptr %62, i32 %64
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #9, !srcloc !14
  %67 = zext i16 %66 to i32
  %68 = load ptr, ptr %13, align 4
  %69 = load i32, ptr %15, align 4
  %70 = shl i32 23, %69
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %71) #9, !srcloc !14
  %73 = zext i16 %72 to i32
  %74 = shl nuw i32 %73, 16
  %75 = or i32 %74, %67
  store i32 %75, ptr %30, align 4
  br label %90

76:                                               ; preds = %10
  %77 = shl i32 22, %16
  %78 = getelementptr i8, ptr %14, i32 %77
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %78) #9, !srcloc !14
  %80 = zext i16 %79 to i32
  %81 = load ptr, ptr %13, align 4
  %82 = load i32, ptr %15, align 4
  %83 = shl i32 23, %82
  %84 = getelementptr i8, ptr %81, i32 %83
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %84) #9, !srcloc !14
  %86 = zext i16 %85 to i32
  %87 = shl nuw i32 %86, 16
  %88 = or i32 %87, %80
  %89 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  store i32 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %76, %17, %2
  %91 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %182, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %190, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 31
  %100 = load i8, ptr %99, align 4
  %101 = and i8 %100, 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %139, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 256
  %109 = icmp eq i32 %108, 0
  %110 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 11
  %111 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 9
  %112 = select i1 %109, ptr %111, ptr %110
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %131, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %113, align 4
  %121 = getelementptr inbounds %struct.dma_device, ptr %120, i32 0, i32 47
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = tail call i32 %122(ptr noundef nonnull %113) #9
  br label %126

126:                                              ; preds = %124, %119
  %127 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 7
  store i32 0, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %115
  %129 = load ptr, ptr %113, align 4
  %130 = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 15
  br label %131

131:                                              ; preds = %128, %103
  %132 = phi ptr [ %130, %128 ], [ %105, %103 ]
  %133 = load ptr, ptr %132, align 4
  %134 = select i1 %109, i32 2, i32 1
  %135 = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 12
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  %138 = load i32, ptr %137, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %133, ptr noundef %136, i32 noundef %138, i32 noundef %134, i32 noundef 0) #9
  br label %139

139:                                              ; preds = %131, %98
  store ptr null, ptr %91, align 4
  %140 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  store i32 0, ptr %140, align 4
  %141 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 34
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.mmc_omap_slot, ptr %142, i32 0, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %144, 119999999
  %146 = udiv i32 %145, %144
  %147 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 13
  %148 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 17
  %149 = icmp ugt i32 %144, -120000000
  %150 = tail call i32 @llvm.umax.i32(i32 %146, i32 1) #9
  br label %151

151:                                              ; preds = %172, %139
  %152 = phi i16 [ 0, %139 ], [ %173, %172 ]
  %153 = phi i32 [ 0, %139 ], [ %174, %172 ]
  %154 = load ptr, ptr %147, align 4
  %155 = load i32, ptr %148, align 4
  %156 = shl i32 4, %155
  %157 = getelementptr i8, ptr %154, i32 %156
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %157, i16 -1) #9, !srcloc !13
  %158 = load ptr, ptr %147, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %158, i16 12416) #9, !srcloc !13
  br i1 %149, label %172, label %159

159:                                              ; preds = %168, %151
  %160 = phi i32 [ %170, %168 ], [ 0, %151 ]
  %161 = load ptr, ptr %147, align 4
  %162 = load i32, ptr %148, align 4
  %163 = shl i32 4, %162
  %164 = getelementptr i8, ptr %161, i32 %163
  %165 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %164) #9, !srcloc !14
  %166 = and i16 %165, 1
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %159
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 214748) #9
  %170 = add nuw i32 %160, 1
  %171 = icmp eq i32 %170, %150
  br i1 %171, label %172, label %159

172:                                              ; preds = %168, %151
  %173 = phi i16 [ %152, %151 ], [ %165, %168 ]
  %174 = add nuw nsw i32 %153, 1
  %175 = icmp eq i32 %174, 10000
  br i1 %175, label %176, label %151

176:                                              ; preds = %172, %159
  %177 = phi i16 [ %165, %159 ], [ %173, %172 ]
  %178 = load ptr, ptr %147, align 4
  %179 = load i32, ptr %148, align 4
  %180 = shl i32 4, %179
  %181 = getelementptr i8, ptr %178, i32 %180
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %181, i16 %177) #9, !srcloc !13
  br label %182

182:                                              ; preds = %176, %90
  %183 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 1
  store ptr null, ptr %183, align 4
  %184 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 4
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 34
  %187 = load ptr, ptr %186, align 4
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %187, i32 noundef 1)
  %188 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %189 = load ptr, ptr %188, align 4
  tail call void @mmc_request_done(ptr noundef %185, ptr noundef %189) #9
  br label %190

190:                                              ; preds = %182, %94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_xfer_data(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 29
  %8 = load i32, ptr %7, align 4
  br label %37

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 26
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 670, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mmc_data, ptr %19, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.scatterlist, ptr %21, i32 %12
  %23 = getelementptr %struct.scatterlist, ptr %21, i32 %12, i32 2
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %3, align 4
  %25 = load i32, ptr %22, align 4
  %26 = and i32 %25, -4
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call ptr @page_address(ptr noundef %27) #9
  %29 = getelementptr %struct.scatterlist, ptr %21, i32 %12, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 27
  store ptr %31, ptr %32, align 4
  %33 = load i32, ptr %3, align 4
  %34 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 29
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @llvm.umin.i32(i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %17, %6
  %38 = phi i32 [ %8, %6 ], [ %35, %17 ]
  %39 = phi i32 [ %4, %6 ], [ %36, %17 ]
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 64)
  %41 = add nuw nsw i32 %40, 1
  %42 = lshr i32 %41, 1
  %43 = sub i32 %39, %40
  store i32 %43, ptr %3, align 4
  %44 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 29
  %45 = sub i32 %38, %40
  store i32 %45, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.mmc_data, ptr %47, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %40
  store i32 %50, ptr %48, align 4
  %51 = icmp eq i32 %1, 0
  %52 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 17
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 8, %55
  %57 = getelementptr i8, ptr %53, i32 %56
  %58 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  br i1 %51, label %61, label %60

60:                                               ; preds = %37
  tail call void @__raw_writesw(ptr noundef %57, ptr noundef %59, i32 noundef %42) #9
  br label %62

61:                                               ; preds = %37
  tail call void @__raw_readsw(ptr noundef %57, ptr noundef %59, i32 noundef %42) #9
  br label %62

62:                                               ; preds = %61, %60
  %63 = getelementptr inbounds %struct.mmc_omap_host, ptr %0, i32 0, i32 27
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i16, ptr %64, i32 %42
  store ptr %65, ptr %63, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_cover_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -24
  tail call void @__tasklet_schedule(ptr noundef %6) #9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_cover_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 60
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 56
  %9 = load ptr, ptr %8, align 4
  tail call void @mmc_detect_change(ptr noundef %9, i32 noundef 0) #9
  br label %29

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -20
  %12 = getelementptr i8, ptr %0, i32 56
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 64
  %15 = load i32, ptr %11, align 4
  %16 = tail call i32 %5(ptr noundef %14, i32 noundef %15) #9
  %17 = load ptr, ptr %12, align 4
  tail call void @mmc_detect_change(ptr noundef %17, i32 noundef 0) #9
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 37
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %0, i32 24
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = add i32 %26, 50
  %28 = tail call i32 @mod_timer(ptr noundef %25, i32 noundef %27) #9
  br label %29

29:                                               ; preds = %24, %19, %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 35
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.mmc_omap_host, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

15:                                               ; preds = %10
  store ptr %1, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  br label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  store ptr %0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  tail call fastcc void @mmc_omap_select_slot(ptr noundef %17, i32 noundef 1)
  tail call fastcc void @mmc_omap_start_request(ptr noundef %4, ptr noundef %1)
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_omap_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @mmc_omap_select_slot(ptr noundef %3, i32 noundef 0)
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.mmc_omap_host, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #9
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = udiv i32 %9, %10
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 1) #9
  %15 = sdiv i32 %9, %14
  %16 = icmp ugt i32 %15, %10
  %17 = zext i1 %16 to i32
  %18 = add nuw i32 %14, %17
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 250) #9
  %20 = sdiv i32 %9, %19
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 2
  %25 = or i32 %19, 32768
  %26 = select i1 %24, i32 %25, i32 %19
  br label %27

27:                                               ; preds = %12, %2
  %28 = phi i32 [ %26, %12 ], [ 0, %2 ]
  %29 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 %31, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %38 = load i8, ptr %37, align 2
  switch i8 %38, label %126 [
    i8 0, label %39
    i8 1, label %72
    i8 2, label %109
  ]

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load i16, ptr %29, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 64
  %52 = load i32, ptr %3, align 4
  %53 = tail call i32 %44(ptr noundef %51, i32 noundef %52, i32 noundef 0, i32 noundef %48) #9
  br label %54

54:                                               ; preds = %46, %39
  %55 = getelementptr inbounds %struct.mmc_omap_host, ptr %40, i32 0, i32 30
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %126

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_omap_host, ptr %40, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mmc_omap_host, ptr %40, i32 0, i32 17
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 3, %63
  %65 = getelementptr i8, ptr %61, i32 %64
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %65) #9
  %67 = and i16 %66, -2049
  %68 = load ptr, ptr %60, align 4
  %69 = load i32, ptr %62, align 4
  %70 = shl i32 3, %69
  %71 = getelementptr i8, ptr %68, i32 %70
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %67) #9, !srcloc !13
  br label %126

72:                                               ; preds = %36
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load i16, ptr %29, align 4
  %81 = zext i16 %80 to i32
  %82 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 64
  %85 = load i32, ptr %3, align 4
  %86 = tail call i32 %77(ptr noundef %84, i32 noundef %85, i32 noundef 1, i32 noundef %81) #9
  br label %87

87:                                               ; preds = %79, %72
  %88 = getelementptr inbounds %struct.mmc_omap_host, ptr %73, i32 0, i32 30
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 56
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.mmc_omap_host, ptr %73, i32 0, i32 13
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.mmc_omap_host, ptr %73, i32 0, i32 17
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 3, %96
  %98 = getelementptr i8, ptr %94, i32 %97
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %98) #9
  %100 = or i16 %99, 2048
  %101 = load ptr, ptr %93, align 4
  %102 = load i32, ptr %95, align 4
  %103 = shl i32 3, %102
  %104 = getelementptr i8, ptr %101, i32 %103
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %104, i16 %100) #9, !srcloc !13
  br label %105

105:                                              ; preds = %92, %87
  %106 = load i8, ptr %37, align 2
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  store i16 %107, ptr %108, align 4
  br label %195

109:                                              ; preds = %36
  %110 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 39
  %111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %110) #9
  %112 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 40
  %113 = load i8, ptr %112, align 4
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = or i8 %113, 1
  store i8 %117, ptr %112, align 4
  %118 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 8
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @clk_enable(ptr noundef %119) #9
  br label %121

121:                                              ; preds = %116, %109
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %110, i32 noundef %111) #9
  %122 = or i32 %28, 2048
  %123 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %124 = load i16, ptr %123, align 4
  %125 = icmp eq i16 %124, 2
  br label %126

126:                                              ; preds = %121, %59, %54, %36
  %127 = phi i32 [ %28, %36 ], [ %122, %121 ], [ %28, %54 ], [ %28, %59 ]
  %128 = phi i32 [ 0, %36 ], [ 1, %121 ], [ 0, %54 ], [ 0, %59 ]
  %129 = phi i1 [ true, %36 ], [ %125, %121 ], [ true, %54 ], [ true, %59 ]
  %130 = load i8, ptr %37, align 2
  %131 = zext i8 %130 to i16
  %132 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  store i16 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 3
  %134 = load i16, ptr %133, align 2
  %135 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 3
  %136 = load i8, ptr %135, align 4
  %137 = zext i8 %136 to i32
  %138 = zext i8 %136 to i16
  %139 = icmp eq i16 %134, %138
  br i1 %139, label %154, label %140

140:                                              ; preds = %126
  %141 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %142, i32 0, i32 7
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %0, align 64
  %148 = load i32, ptr %3, align 4
  %149 = tail call i32 %144(ptr noundef %147, i32 noundef %148, i32 noundef %137) #9
  %150 = load i8, ptr %135, align 4
  %151 = zext i8 %150 to i16
  br label %152

152:                                              ; preds = %146, %140
  %153 = phi i16 [ %151, %146 ], [ %138, %140 ]
  store i16 %153, ptr %133, align 2
  br label %154

154:                                              ; preds = %152, %126
  %155 = trunc i32 %127 to i16
  %156 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 13
  %157 = getelementptr inbounds %struct.mmc_omap_host, ptr %5, i32 0, i32 17
  %158 = load ptr, ptr %156, align 4
  %159 = load i32, ptr %157, align 4
  %160 = shl i32 3, %159
  %161 = getelementptr i8, ptr %158, i32 %160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %161, i16 %155) #9, !srcloc !13
  %162 = load ptr, ptr %156, align 4
  %163 = load i32, ptr %157, align 4
  %164 = shl i32 3, %163
  %165 = getelementptr i8, ptr %162, i32 %164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %165, i16 %155) #9, !srcloc !13
  %166 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  store i16 %155, ptr %166, align 4
  br i1 %129, label %195, label %167

167:                                              ; preds = %154
  %168 = load ptr, ptr %156, align 4
  %169 = load i32, ptr %157, align 4
  %170 = shl i32 5, %169
  %171 = getelementptr i8, ptr %168, i32 %170
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %171, i16 0) #9, !srcloc !13
  %172 = load ptr, ptr %156, align 4
  %173 = load i32, ptr %157, align 4
  %174 = shl i32 4, %173
  %175 = getelementptr i8, ptr %172, i32 %174
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %175, i16 -1) #9, !srcloc !13
  %176 = load ptr, ptr %156, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %176, i16 128) #9, !srcloc !13
  br label %177

177:                                              ; preds = %186, %167
  %178 = phi i32 [ 250, %167 ], [ %188, %186 ]
  %179 = load ptr, ptr %156, align 4
  %180 = load i32, ptr %157, align 4
  %181 = shl i32 4, %180
  %182 = getelementptr i8, ptr %179, i32 %181
  %183 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %182) #9, !srcloc !14
  %184 = and i16 %183, 1
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %177
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 214748) #9
  %188 = add nsw i32 %178, -1
  %189 = icmp ugt i32 %178, 1
  br i1 %189, label %177, label %190

190:                                              ; preds = %186, %177
  %191 = load ptr, ptr %156, align 4
  %192 = load i32, ptr %157, align 4
  %193 = shl i32 4, %192
  %194 = getelementptr i8, ptr %191, i32 %193
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %194, i16 1) #9, !srcloc !13
  br label %195

195:                                              ; preds = %190, %154, %105
  %196 = phi i32 [ %128, %190 ], [ %128, %154 ], [ 0, %105 ]
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %3, i32 noundef %196)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_omap_show_slot_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 968
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_omap_show_cover_switch(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 968
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 888
  %11 = getelementptr i8, ptr %0, i32 964
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 64
  %14 = load i32, ptr %10, align 4
  %15 = tail call i32 %7(ptr noundef %13, i32 noundef %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9, %3
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi ptr [ @.str.20, %17 ], [ @.str.19, %9 ]
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef nonnull %19)
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153517956, i64 2153518444, i64 2153517993, i64 2153518049, i64 2153518083, i64 2153518107, i64 2153518148, i64 2153518169, i64 2153518197, i64 2153518231}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153537767, i64 2153538256, i64 2153537804, i64 2153537860, i64 2153537894, i64 2153537918, i64 2153537959, i64 2153537980, i64 2153538008, i64 2153538042}
!12 = !{i64 2153500726, i64 2153501214, i64 2153500763, i64 2153500819, i64 2153500853, i64 2153500877, i64 2153500918, i64 2153500939, i64 2153500967, i64 2153501001}
!13 = !{i64 3742454}
!14 = !{i64 3742654}
!15 = !{!"auto-init"}
!16 = !{i64 2153524649, i64 2153525138, i64 2153524686, i64 2153524742, i64 2153524776, i64 2153524800, i64 2153524841, i64 2153524862, i64 2153524890, i64 2153524924}
!17 = !{i64 2153481674, i64 2153482162, i64 2153481711, i64 2153481767, i64 2153481801, i64 2153481825, i64 2153481866, i64 2153481887, i64 2153481915, i64 2153481949}
!18 = !{i64 2153483152, i64 2153483640, i64 2153483189, i64 2153483245, i64 2153483279, i64 2153483303, i64 2153483344, i64 2153483365, i64 2153483393, i64 2153483427}
!19 = !{i64 2153484216, i64 2153484704, i64 2153484253, i64 2153484309, i64 2153484343, i64 2153484367, i64 2153484408, i64 2153484429, i64 2153484457, i64 2153484491}
!20 = !{i64 2153509626, i64 2153510114, i64 2153509663, i64 2153509719, i64 2153509753, i64 2153509777, i64 2153509818, i64 2153509839, i64 2153509867, i64 2153509901}
!21 = !{i64 2153526174, i64 2153526663, i64 2153526211, i64 2153526267, i64 2153526301, i64 2153526325, i64 2153526366, i64 2153526387, i64 2153526415, i64 2153526449}
