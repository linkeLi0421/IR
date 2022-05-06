; ModuleID = '/llk/IR/drivers/usb/musb/musb_dsps.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_dsps.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_platform_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dsps_glue = type { ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dsps_context, %struct.debugfs_regset32, ptr }
%struct.dsps_context = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.dsps_musb_wrapper = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i32, i32, i8, i32, i32, i16, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@musb_dsps_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,musb-am33xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,musb-dm816\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am33xx_driver_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description254 = internal constant [36 x i8] c"description=TI DSPS MUSB Glue Layer\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [32 x i8] c"author=Ravi B <ravibabu@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [44 x i8] c"author=Ajay Kumar Gupta <ajay.gupta@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@am33xx_driver_data = internal constant { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i8, i8, i32, i32, i8, i32, i32, i8, i8, i32 } { i16 0, i16 20, i16 24, i16 56, i16 64, i16 48, i16 60, i16 68, i16 52, i16 224, i16 232, i16 112, i16 116, i8 0, i8 0, i32 511, i32 511, i8 8, i8 0, i32 65535, i32 65535, i8 16, i32 65534, i32 -131072, i8 21, i8 29, i32 2000 }, align 4
@dsps_usbss_driver = internal global %struct.platform_driver { ptr @dsps_probe, ptr @dsps_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @musb_dsps_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsps_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"musb-dsps\00", align 1
@dsps_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dsps_suspend, ptr @dsps_resume, ptr @dsps_suspend, ptr @dsps_resume, ptr @dsps_suspend, ptr @dsps_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"fail to get matching of_match struct\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ti,musb-dm816\00", align 1
@dsps_ops = internal global %struct.musb_platform_ops { i32 33, ptr @dsps_musb_init, ptr @dsps_musb_exit, ptr @dsps_musb_enable, ptr @dsps_musb_disable, ptr null, ptr null, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsps_dma_controller_create, ptr @cppi41_dma_controller_destroy, ptr @dsps_musb_set_mode, ptr null, ptr @dsps_musb_recover, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsps_musb_clear_ep_rxintr }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@musb_readb = external dso_local local_unnamed_addr global ptr, align 4
@musb_writeb = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Poll could not pm_runtime_get: %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s resume work: %i\0A\00", align 1
@__func__.otg_timer = private unnamed_addr constant [10 x i8] c"otg_timer\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\014%s %d: VBUS error workaround (delay coming)\0A\00", align 1
@__func__.dsps_interrupt = private unnamed_addr constant [15 x i8] c"dsps_interrupt\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.11 = private unnamed_addr constant [8 x i8] c"%s.dsps\00", align 1
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@dsps_musb_regs = internal constant [15 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.13, i32 0 }, %struct.debugfs_reg32 { ptr @.str.5, i32 20 }, %struct.debugfs_reg32 { ptr @.str.14, i32 24 }, %struct.debugfs_reg32 { ptr @.str.15, i32 36 }, %struct.debugfs_reg32 { ptr @.str.16, i32 48 }, %struct.debugfs_reg32 { ptr @.str.17, i32 52 }, %struct.debugfs_reg32 { ptr @.str.18, i32 56 }, %struct.debugfs_reg32 { ptr @.str.19, i32 60 }, %struct.debugfs_reg32 { ptr @.str.20, i32 112 }, %struct.debugfs_reg32 { ptr @.str.21, i32 116 }, %struct.debugfs_reg32 { ptr @.str.22, i32 208 }, %struct.debugfs_reg32 { ptr @.str.23, i32 212 }, %struct.debugfs_reg32 { ptr @.str.24, i32 216 }, %struct.debugfs_reg32 { ptr @.str.25, i32 224 }, %struct.debugfs_reg32 { ptr @.str.26, i32 232 }], align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"eoi\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"intr0_stat\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"intr1_stat\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"intr0_set\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"intr1_set\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"txmode\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"rxmode\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"autoreq\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"srpfixtime\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"tdown\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"phy_utmi\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"unsupported mode %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"failed to get memory.\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@musb_dmamask = internal global i64 4294967295, align 8
@.str.31 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"mentor,num-eps\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"mentor,ram-bits\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"mentor,power\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"mentor,multipoint\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"ignore incorrect maximum_speed (super-speed) setting in dts\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license257], section "llvm.metadata"

@__mod_of__musb_dsps_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @musb_dsps_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dsps_usbss_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsps_usbss_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.musb_hdrc_platform_data, align 4
  %6 = alloca [2 x %struct.resource], align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 8
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(10) @.str.2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %155, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call ptr @of_match_node(ptr noundef nonnull @musb_dsps_of_match, ptr noundef %14) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3) #10
  br label %155

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %13, align 8
  %22 = tail call i32 @of_device_is_compatible(ptr noundef %21, ptr noundef nonnull @.str.4) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store ptr @dsps_read_fifo32, ptr getelementptr inbounds (%struct.musb_platform_ops, ptr @dsps_ops, i32 0, i32 16), align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 76, i32 noundef 3520) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %155, label %28

28:                                               ; preds = %25
  store ptr %12, ptr %26, align 4
  %29 = getelementptr inbounds %struct.dsps_glue, ptr %26, i32 0, i32 2
  store ptr %20, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = tail call ptr @of_iomap(ptr noundef %33, i32 noundef 0) #9
  %35 = getelementptr inbounds %struct.dsps_glue, ptr %26, i32 0, i32 6
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %155, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %26, ptr %38, align 8
  tail call void @pm_runtime_enable(ptr noundef %12) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %39 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %40 = getelementptr inbounds i8, ptr %6, i32 48
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %40, i8 0, i32 16, i1 false) #9
  %41 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.28) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29) #10
  br label %132

44:                                               ; preds = %37
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %41, i32 32, i1 false) #9
  %45 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.28) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %132, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds [2 x %struct.resource], ptr %6, i32 0, i32 1
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds [2 x %struct.resource], ptr %6, i32 0, i32 1, i32 1
  store i32 %45, ptr %49, align 4
  %50 = tail call ptr @irq_get_irq_data(i32 noundef %45) #9
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.irq_data, ptr %50, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 15
  %57 = or i32 %56, 1024
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi i32 [ %57, %52 ], [ 1024, %47 ]
  %60 = getelementptr inbounds [2 x %struct.resource], ptr %6, i32 0, i32 1, i32 3
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds [2 x %struct.resource], ptr %6, i32 0, i32 1, i32 2
  store ptr @.str.28, ptr %61, align 4
  %62 = load i32, ptr %6, align 4
  %63 = and i32 %62, 4095
  %64 = icmp ne i32 %63, 1024
  %65 = zext i1 %64 to i32
  %66 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef %65) #9
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30) #10
  br label %132

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %71 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3, i32 1
  store ptr %12, ptr %71, align 4
  %72 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3, i32 16
  store ptr @musb_dmamask, ptr %72, align 4
  %73 = load i64, ptr @musb_dmamask, align 8
  %74 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3, i32 17
  store i64 %73, ptr %74, align 8
  tail call void @device_set_of_node_from_dev(ptr noundef %70, ptr noundef %12) #9
  %75 = getelementptr inbounds %struct.dsps_glue, ptr %26, i32 0, i32 1
  store ptr %66, ptr %75, align 4
  %76 = call i32 @platform_device_add_resources(ptr noundef nonnull %66, ptr noundef nonnull %6, i32 noundef 2) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %69
  %79 = call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 16, i32 noundef 3520) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %130, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 8
  store ptr %79, ptr %82, align 4
  %83 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 10
  store ptr @dsps_ops, ptr %83, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %84 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.32, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %85 = load i32, ptr %4, align 4
  %86 = icmp slt i32 %84, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %87 = trunc i32 %85 to i8
  %88 = select i1 %86, i8 0, i8 %87
  %89 = getelementptr inbounds %struct.musb_hdrc_config, ptr %79, i32 0, i32 3
  store i8 %88, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %90 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.33, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %91 = load i32, ptr %3, align 4
  %92 = icmp slt i32 %90, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %93 = trunc i32 %91 to i8
  %94 = select i1 %92, i8 0, i8 %93
  %95 = getelementptr inbounds %struct.musb_hdrc_config, ptr %79, i32 0, i32 4
  store i8 %94, ptr %95, align 2
  %96 = getelementptr inbounds %struct.musb_hdrc_config, ptr %79, i32 0, i32 2
  %97 = load i8, ptr %96, align 4
  %98 = or i8 %97, 4
  store i8 %98, ptr %96, align 4
  %99 = call i32 @musb_get_mode(ptr noundef %12) #9
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %101 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.34, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %102 = load i32, ptr %2, align 4
  %103 = icmp slt i32 %101, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %104 = sdiv i32 %102, 2
  %105 = trunc i32 %104 to i8
  %106 = select i1 %103, i8 0, i8 %105
  %107 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %5, i32 0, i32 3
  store i8 %106, ptr %107, align 4
  %108 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.35, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #9
  %109 = icmp sgt i32 %108, -1
  %110 = load i32, ptr %7, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %116

113:                                              ; preds = %81
  %114 = load i8, ptr %96, align 4
  %115 = or i8 %114, 1
  store i8 %115, ptr %96, align 4
  br label %116

116:                                              ; preds = %113, %81
  %117 = call i32 @usb_get_maximum_speed(ptr noundef %12) #9
  %118 = getelementptr inbounds %struct.musb_hdrc_config, ptr %79, i32 0, i32 5
  store i32 %117, ptr %118, align 4
  switch i32 %117, label %120 [
    i32 1, label %121
    i32 2, label %121
    i32 5, label %119
  ]

119:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.36) #10
  br label %120

120:                                              ; preds = %119, %116
  store i32 3, ptr %118, align 4
  br label %121

121:                                              ; preds = %120, %116, %116
  %122 = call i32 @platform_device_add_data(ptr noundef nonnull %66, ptr noundef nonnull %5, i32 noundef 32) #9
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 @platform_device_add(ptr noundef nonnull %66) #9
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %124, %121, %69
  %128 = phi ptr [ @.str.31, %69 ], [ @.str.37, %121 ], [ @.str.38, %124 ]
  %129 = phi i32 [ %76, %69 ], [ %122, %121 ], [ %125, %124 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %128) #10
  br label %130

130:                                              ; preds = %127, %78
  %131 = phi i32 [ -12, %78 ], [ %129, %127 ]
  call void @platform_device_put(ptr noundef nonnull %66) #9
  br label %132

132:                                              ; preds = %130, %68, %44, %43
  %133 = phi i32 [ %45, %44 ], [ -22, %43 ], [ -12, %68 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  br label %152

134:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  %135 = call i32 @usb_get_dr_mode(ptr noundef %12) #9
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.39) #9
  %139 = getelementptr inbounds %struct.dsps_glue, ptr %26, i32 0, i32 3
  store i32 %138, ptr %139, align 4
  %140 = icmp eq i32 %138, -517
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = icmp slt i32 %138, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  store i32 0, ptr %139, align 4
  br label %155

144:                                              ; preds = %141
  %145 = load ptr, ptr %26, align 4
  %146 = call i32 @devm_request_threaded_irq(ptr noundef %145, i32 noundef %138, ptr noundef null, ptr noundef nonnull @dsps_vbus_threaded_irq, i32 noundef 8192, ptr noundef nonnull @.str.39, ptr noundef nonnull %26) #9
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  store i32 0, ptr %139, align 4
  br label %149

149:                                              ; preds = %148, %137
  %150 = phi i32 [ %146, %148 ], [ -517, %137 ]
  %151 = load ptr, ptr %75, align 4
  call void @platform_device_unregister(ptr noundef %151) #9
  br label %152

152:                                              ; preds = %149, %132
  %153 = phi i32 [ %150, %149 ], [ %133, %132 ]
  call void @__pm_runtime_disable(ptr noundef %12, i1 noundef zeroext true) #9
  %154 = load ptr, ptr %35, align 4
  call void @iounmap(ptr noundef %154) #9
  br label %155

155:                                              ; preds = %152, %144, %143, %134, %28, %25, %17, %1
  %156 = phi i32 [ %153, %152 ], [ -22, %17 ], [ -19, %1 ], [ -12, %25 ], [ -6, %28 ], [ 0, %134 ], [ 0, %143 ], [ 0, %144 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #9
  %7 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @iounmap(ptr noundef %8) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsps_read_fifo32(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.musb_hw_ep, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt i16 %1, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = zext i16 %1 to i32
  %10 = lshr i32 %9, 2
  tail call void @__raw_readsl(ptr noundef %6, ptr noundef %2, i32 noundef %10) #9
  %11 = and i32 %9, 65532
  %12 = getelementptr i8, ptr %2, i32 %11
  %13 = and i16 %1, 3
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i16 [ %13, %8 ], [ %1, %3 ]
  %16 = phi ptr [ %12, %8 ], [ %2, %3 ]
  %17 = icmp eq i16 %15, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = zext i16 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %20 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 0) #9
  store i32 %20, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr nonnull align 4 %4, i32 %19, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %21

21:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_musb_init(ptr noundef %0) #2 {
  %2 = alloca [128 x i8], align 1
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %6, i32 -16
  %10 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @platform_get_resource_byname(ptr noundef %9, i32 noundef 512, ptr noundef nonnull @.str.5) #9
  %13 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %12) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = ptrtoint ptr %13 to i32
  br label %112

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  store ptr %13, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %19, ptr noundef nonnull @.str.6, i8 noundef zeroext 0) #9
  %21 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %20 to i32
  br label %112

25:                                               ; preds = %17
  %26 = load ptr, ptr %5, align 4
  %27 = tail call ptr @devm_phy_get(ptr noundef %26, ptr noundef nonnull @.str.7) #9
  %28 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 32
  store ptr %27, ptr %28, align 8
  %29 = load i16, ptr %11, align 4
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @musb_readl(ptr noundef %13, i32 noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %112, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %28, align 8
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store ptr null, ptr %28, align 8
  br label %47

37:                                               ; preds = %33
  %38 = tail call i32 @phy_init(ptr noundef %34) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %112, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %28, align 8
  %42 = tail call i32 @phy_power_on(ptr noundef %41) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %28, align 8
  %46 = tail call i32 @phy_exit(ptr noundef %45) #9
  br label %112

47:                                               ; preds = %40, %36
  %48 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %48, ptr noundef nonnull @otg_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %49 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 13
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, 31
  %55 = zext i16 %54 to i32
  %56 = shl nuw i32 1, %55
  tail call void @musb_writel(ptr noundef %13, i32 noundef %51, i32 noundef %56) #9
  %57 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 5
  store ptr @dsps_interrupt, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 9
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = tail call i32 @musb_readl(ptr noundef %13, i32 noundef %60) #9
  %62 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 22
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 31
  %65 = zext i16 %64 to i32
  %66 = shl nuw i32 1, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %61, %67
  %69 = load ptr, ptr %18, align 4
  %70 = load i16, ptr %58, align 2
  %71 = zext i16 %70 to i32
  tail call void @musb_writel(ptr noundef %69, i32 noundef %71, i32 noundef %68) #9
  %72 = load ptr, ptr @musb_readb, align 4
  %73 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %74 = load ptr, ptr %73, align 8
  %75 = tail call zeroext i8 %72(ptr noundef %74, i32 noundef 97) #9
  %76 = and i8 %75, 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %47
  %79 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 5
  store i8 1, ptr %79, align 4
  %80 = or i8 %75, 64
  %81 = load ptr, ptr @musb_writeb, align 4
  %82 = load ptr, ptr %73, align 8
  tail call void %81(ptr noundef %82, i32 noundef 97, i8 noundef zeroext %80) #9
  br label %83

83:                                               ; preds = %78, %47
  %84 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.platform_device, ptr %85, i32 0, i32 3, i32 8
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %10, align 4
  %89 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %88, i32 0, i32 23
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 @__msecs_to_jiffies(i32 noundef %90) #9
  %92 = getelementptr inbounds %struct.musb, ptr %87, i32 0, i32 22
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = add i32 %93, %91
  %95 = tail call i32 @mod_timer(ptr noundef %92, i32 noundef %94) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #9, !annotation !8
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %83
  %101 = load ptr, ptr %96, align 4
  br label %102

102:                                              ; preds = %100, %83
  %103 = phi ptr [ %101, %100 ], [ %98, %83 ]
  %104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.11, ptr noundef %103) #9
  %105 = load ptr, ptr @usb_debug_root, align 4
  %106 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef %105) #9
  %107 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 9
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 8
  store ptr @dsps_musb_regs, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 8, i32 1
  store i32 15, ptr %109, align 4
  %110 = load ptr, ptr %18, align 4
  %111 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 8, i32 2
  store ptr %110, ptr %111, align 4
  call void @debugfs_create_regset32(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %106, ptr noundef %108) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #9
  br label %112

112:                                              ; preds = %102, %44, %37, %25, %23, %15
  %113 = phi i32 [ %16, %15 ], [ %24, %23 ], [ 0, %102 ], [ %42, %44 ], [ -19, %25 ], [ %38, %37 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_musb_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 32
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #9
  %13 = load ptr, ptr %10, align 8
  %14 = tail call i32 @phy_exit(ptr noundef %13) #9
  %15 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  tail call void @debugfs_remove(ptr noundef %16) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsps_musb_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 37
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  %18 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 16
  %19 = load i16, ptr %18, align 4
  %20 = lshr i16 %19, 5
  %21 = and i16 %20, 31
  %22 = zext i16 %21 to i32
  %23 = shl i32 %17, %22
  %24 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %14
  %27 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 19
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 31
  %30 = zext i8 %29 to i32
  %31 = shl i32 %26, %30
  %32 = or i32 %31, %23
  %33 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 15
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -9
  %36 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  tail call void @musb_writel(ptr noundef %11, i32 noundef %38, i32 noundef %32) #9
  %39 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 6
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  tail call void @musb_writel(ptr noundef %11, i32 noundef %41, i32 noundef %35) #9
  %42 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.usb_phy, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_otg, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %62

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %54, i32 0, i32 23
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @__msecs_to_jiffies(i32 noundef %56) #9
  %58 = getelementptr inbounds %struct.musb, ptr %53, i32 0, i32 22
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = add i32 %59, %57
  %61 = tail call i32 @mod_timer(ptr noundef %58, i32 noundef %60) #9
  br label %62

62:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsps_musb_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 7
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  tail call void @musb_writel(ptr noundef %11, i32 noundef %14, i32 noundef %16) #9
  %17 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %9, i32 0, i32 21
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %21
  tail call void @musb_writel(ptr noundef %11, i32 noundef %19, i32 noundef %24) #9
  %25 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  %26 = tail call i32 @del_timer_sync(ptr noundef %25) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dsps_dma_controller_create(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @cppi41_dma_controller_create(ptr noundef %0, ptr noundef %1) #9
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  tail call void @musb_writel(ptr noundef %10, i32 noundef 44, i32 noundef 4) #9
  %16 = getelementptr inbounds %struct.dma_controller, ptr %11, i32 0, i32 6
  store ptr @dsps_dma_controller_callback, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %2
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cppi41_dma_controller_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_musb_set_mode(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @musb_readl(ptr noundef %12, i32 noundef %15) #9
  switch i8 %1, label %55 [
    i8 1, label %17
    i8 2, label %36
    i8 3, label %51
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 22
  %19 = load i16, ptr %18, align 4
  %20 = lshr i16 %19, 5
  %21 = and i16 %20, 31
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %16, %24
  %26 = lshr i16 %19, 10
  %27 = and i16 %26, 31
  %28 = zext i16 %27 to i32
  %29 = shl nuw i32 1, %28
  %30 = or i32 %25, %29
  %31 = load i16, ptr %13, align 4
  %32 = zext i16 %31 to i32
  tail call void @musb_writel(ptr noundef %12, i32 noundef %32, i32 noundef %30) #9
  %33 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 9
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  tail call void @musb_writel(ptr noundef %12, i32 noundef %35, i32 noundef 2) #9
  br label %58

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 22
  %38 = load i16, ptr %37, align 4
  %39 = lshr i16 %38, 5
  %40 = and i16 %39, 31
  %41 = zext i16 %40 to i32
  %42 = shl nuw i32 1, %41
  %43 = or i32 %42, %16
  %44 = lshr i16 %38, 10
  %45 = and i16 %44, 31
  %46 = zext i16 %45 to i32
  %47 = shl nuw i32 1, %46
  %48 = or i32 %43, %47
  %49 = load i16, ptr %13, align 4
  %50 = zext i16 %49 to i32
  tail call void @musb_writel(ptr noundef %12, i32 noundef %50, i32 noundef %48) #9
  br label %58

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 9
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  tail call void @musb_writel(ptr noundef %12, i32 noundef %54, i32 noundef 2) #9
  br label %58

55:                                               ; preds = %2
  %56 = zext i8 %1 to i32
  %57 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.27, i32 noundef %56) #10
  br label %58

58:                                               ; preds = %55, %51, %36, %17
  %59 = phi i32 [ -22, %55 ], [ 0, %51 ], [ 0, %36 ], [ 0, %17 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_musb_recover(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dsps_glue, ptr %7, i32 0, i32 5
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @musb_readb, align 4
  %13 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %14 = load ptr, ptr %13, align 8
  %15 = tail call zeroext i8 %12(ptr noundef %14, i32 noundef 97) #9
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @musb_readb, align 4
  %20 = load ptr, ptr %13, align 8
  %21 = tail call zeroext i8 %19(ptr noundef %20, i32 noundef 97) #9
  %22 = or i8 %21, -128
  %23 = load ptr, ptr @musb_writeb, align 4
  %24 = load ptr, ptr %13, align 8
  tail call void %23(ptr noundef %24, i32 noundef 97, i8 noundef zeroext %22) #9
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i32 [ 10, %18 ], [ %33, %25 ]
  %27 = load ptr, ptr @musb_readb, align 4
  %28 = load ptr, ptr %13, align 8
  %29 = tail call zeroext i8 %27(ptr noundef %28, i32 noundef 97) #9
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #9
  %31 = and i8 %29, 32
  %32 = icmp eq i8 %31, 0
  %33 = add nsw i32 %26, -1
  %34 = icmp eq i32 %26, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %25

36:                                               ; preds = %25
  br i1 %32, label %38, label %37

37:                                               ; preds = %36, %11
  br label %38

38:                                               ; preds = %37, %36, %1
  %39 = phi i32 [ 0, %1 ], [ 0, %37 ], [ -32, %36 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsps_musb_clear_ep_rxintr(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = shl nuw i32 1, %1
  %12 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 19
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 31
  %15 = zext i8 %14 to i32
  %16 = shl i32 %11, %15
  %17 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %10, i32 0, i32 5
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  tail call void @musb_writel(ptr noundef %18, i32 noundef %21, i32 noundef %16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @otg_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -700
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 5) #9
  %6 = icmp ne i32 %5, -115
  %7 = icmp slt i32 %5, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %5) #10
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #9, !srcloc !12
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  br label %24

15:                                               ; preds = %1
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %17 = tail call i32 @musb_queue_resume_work(ptr noundef %2, ptr noundef nonnull @dsps_check_status, ptr noundef null) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.otg_timer, i32 noundef %17) #10
  br label %20

20:                                               ; preds = %19, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %16) #9
  %21 = tail call i64 @ktime_get_mono_fast_ns() #9
  %22 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 22
  store volatile i64 %21, ptr %22, align 8
  %23 = tail call i32 @__pm_runtime_suspend(ptr noundef %4, i32 noundef 13) #9
  br label %24

24:                                               ; preds = %20, %14, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %14 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 5
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef %16) #9
  %18 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %17
  %21 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 19
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 31
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %20, %24
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  store i16 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 18
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %17
  %31 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 16
  %32 = load i16, ptr %31, align 4
  %33 = lshr i16 %32, 5
  %34 = and i16 %33, 31
  %35 = zext i16 %34 to i32
  %36 = lshr i32 %30, %35
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  store i16 %37, ptr %38, align 8
  %39 = icmp ne i32 %17, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load i16, ptr %14, align 2
  %42 = zext i16 %41 to i32
  tail call void @musb_writel(ptr noundef %4, i32 noundef %42, i32 noundef %17) #9
  br label %43

43:                                               ; preds = %40, %2
  %44 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 8
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef %46) #9
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %48, i1 true, i1 %39
  br i1 %49, label %50, label %186

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 15
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %47
  %54 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 13
  %55 = load i16, ptr %54, align 2
  %56 = lshr i16 %55, 5
  %57 = and i16 %56, 31
  %58 = zext i16 %57 to i32
  %59 = lshr i32 %53, %58
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  store i8 %60, ptr %61, align 4
  br i1 %48, label %62, label %65

62:                                               ; preds = %50
  %63 = load i16, ptr %44, align 4
  %64 = zext i16 %63 to i32
  tail call void @musb_writel(ptr noundef %4, i32 noundef %64, i32 noundef %47) #9
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i16, ptr %31, align 4
  %67 = and i16 %66, 31
  %68 = zext i16 %67 to i32
  %69 = shl nuw i32 1, %68
  %70 = load i16, ptr %54, align 2
  %71 = lshr i16 %70, 5
  %72 = and i16 %71, 31
  %73 = zext i16 %72 to i32
  %74 = shl i32 %69, %73
  %75 = and i32 %74, %47
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %148, label %77

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 2
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %79 to i32
  %81 = tail call i32 @musb_readl(ptr noundef %4, i32 noundef %80) #9
  %82 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 27
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr @musb_readb, align 4
  %85 = tail call zeroext i8 %84(ptr noundef %83, i32 noundef 96) #9
  %86 = load i8, ptr %61, align 4
  %87 = icmp sgt i8 %86, -1
  br i1 %87, label %113, label %88

88:                                               ; preds = %77
  %89 = and i8 %86, 127
  store i8 %89, ptr %61, align 4
  %90 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.usb_phy, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.usb_otg, ptr %93, i32 0, i32 5
  store i32 12, ptr %94, align 4
  %95 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.platform_device, ptr %100, i32 0, i32 3, i32 8
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %11, align 4
  %104 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %103, i32 0, i32 23
  %105 = load i32, ptr %104, align 4
  %106 = tail call i32 @__msecs_to_jiffies(i32 noundef %105) #9
  %107 = getelementptr inbounds %struct.musb, ptr %102, i32 0, i32 22
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = add i32 %108, %106
  %110 = tail call i32 @mod_timer(ptr noundef %107, i32 noundef %109) #9
  br label %111

111:                                              ; preds = %98, %88
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dsps_interrupt, i32 noundef 370) #10
  br label %148

113:                                              ; preds = %77
  %114 = icmp eq i32 %81, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 44
  store i8 1, ptr %116, align 8
  %117 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.usb_phy, ptr %118, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.usb_otg, ptr %120, i32 0, i32 5
  store i32 7, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.platform_device, ptr %127, i32 0, i32 3, i32 8
  %129 = load ptr, ptr %128, align 8
  %130 = load ptr, ptr %11, align 4
  %131 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %130, i32 0, i32 23
  %132 = load i32, ptr %131, align 4
  %133 = tail call i32 @__msecs_to_jiffies(i32 noundef %132) #9
  %134 = getelementptr inbounds %struct.musb, ptr %129, i32 0, i32 22
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = add i32 %135, %133
  %137 = tail call i32 @mod_timer(ptr noundef %134, i32 noundef %136) #9
  br label %148

138:                                              ; preds = %113
  %139 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 47
  %140 = load i24, ptr %139, align 4
  %141 = and i24 %140, -5
  store i24 %141, ptr %139, align 4
  %142 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 44
  store i8 0, ptr %142, align 8
  %143 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.usb_phy, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.usb_otg, ptr %146, i32 0, i32 5
  store i32 1, ptr %147, align 4
  br label %148

148:                                              ; preds = %138, %125, %115, %111, %65
  %149 = phi i32 [ 0, %65 ], [ 1, %138 ], [ 1, %111 ], [ 1, %115 ], [ 1, %125 ]
  %150 = load i16, ptr %38, align 8
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i16, ptr %27, align 2
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8, ptr %61, align 4
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155, %152, %148
  %159 = tail call i32 @musb_interrupt(ptr noundef %1) #9
  %160 = or i32 %159, %149
  br label %161

161:                                              ; preds = %158, %155
  %162 = phi i32 [ %160, %158 ], [ %149, %155 ]
  %163 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 31
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.usb_phy, ptr %164, i32 0, i32 5
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.usb_otg, ptr %166, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  switch i32 %168, label %186 [
    i32 1, label %169
    i32 8, label %169
  ]

169:                                              ; preds = %161, %161
  %170 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.platform_device, ptr %175, i32 0, i32 3, i32 8
  %177 = load ptr, ptr %176, align 8
  %178 = load ptr, ptr %11, align 4
  %179 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %178, i32 0, i32 23
  %180 = load i32, ptr %179, align 4
  %181 = tail call i32 @__msecs_to_jiffies(i32 noundef %180) #9
  %182 = getelementptr inbounds %struct.musb, ptr %177, i32 0, i32 22
  %183 = load volatile i32, ptr @jiffies, align 64
  %184 = add i32 %183, %181
  %185 = tail call i32 @mod_timer(ptr noundef %182, i32 noundef %184) #9
  br label %186

186:                                              ; preds = %173, %169, %161, %43
  %187 = phi i32 [ %162, %161 ], [ 0, %43 ], [ %162, %169 ], [ %162, %173 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %13) #9
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_queue_resume_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_check_status(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 22
  %18 = tail call i32 @del_timer(ptr noundef %17) #9
  br label %19

19:                                               ; preds = %16, %2
  %20 = load ptr, ptr @musb_readb, align 4
  %21 = tail call zeroext i8 %20(ptr noundef %4, i32 noundef 96) #9
  %22 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 31
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_phy, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_otg, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %124 [
    i32 7, label %28
    i32 8, label %48
    i32 6, label %71
    i32 1, label %71
    i32 12, label %112
  ]

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  store i32 8, ptr %26, align 4
  %33 = load i32, ptr %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %124

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %11, align 4
  %41 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %40, i32 0, i32 23
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @__msecs_to_jiffies(i32 noundef %42) #9
  %44 = getelementptr inbounds %struct.musb, ptr %39, i32 0, i32 22
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %45, %43
  %47 = tail call i32 @mod_timer(ptr noundef %44, i32 noundef %46) #9
  br label %124

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i32, ptr %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %124

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3, i32 8
  %59 = load ptr, ptr %58, align 8
  %60 = load ptr, ptr %11, align 4
  %61 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %60, i32 0, i32 23
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @__msecs_to_jiffies(i32 noundef %62) #9
  %64 = getelementptr inbounds %struct.musb, ptr %59, i32 0, i32 22
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, %63
  %67 = tail call i32 @mod_timer(ptr noundef %64, i32 noundef %66) #9
  br label %124

68:                                               ; preds = %48, %28
  %69 = load ptr, ptr @musb_writeb, align 4
  %70 = load ptr, ptr %3, align 8
  tail call void %69(ptr noundef %70, i32 noundef 96, i8 noundef zeroext 0) #9
  br label %71

71:                                               ; preds = %68, %19, %19
  %72 = phi i32 [ 0, %19 ], [ 0, %19 ], [ 1, %68 ]
  %73 = load i32, ptr %13, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = zext i8 %21 to i32
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  %79 = load ptr, ptr %22, align 4
  %80 = getelementptr inbounds %struct.usb_phy, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.usb_otg, ptr %81, i32 0, i32 5
  %83 = select i1 %78, i32 6, i32 1
  %84 = xor i8 %21, -1
  %85 = lshr i8 %84, 7
  store i32 %83, ptr %82, align 4
  %86 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 44
  store i8 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 41
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 2
  %90 = select i1 %89, i32 1, i32 %72
  %91 = and i32 %76, 1
  %92 = or i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %75
  %95 = load ptr, ptr @musb_writeb, align 4
  tail call void %95(ptr noundef %4, i32 noundef 96, i8 noundef zeroext 1) #9
  br label %96

96:                                               ; preds = %94, %75
  %97 = load i32, ptr %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.dsps_glue, ptr %10, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3, i32 8
  %103 = load ptr, ptr %102, align 8
  %104 = load ptr, ptr %11, align 4
  %105 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %104, i32 0, i32 23
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @__msecs_to_jiffies(i32 noundef %106) #9
  %108 = getelementptr inbounds %struct.musb, ptr %103, i32 0, i32 22
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = add i32 %109, %107
  %111 = tail call i32 @mod_timer(ptr noundef %108, i32 noundef %110) #9
  br label %124

112:                                              ; preds = %19
  store i32 7, ptr %26, align 4
  %113 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 26
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 6
  %116 = load i16, ptr %115, align 4
  %117 = zext i16 %116 to i32
  %118 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %12, i32 0, i32 13
  %119 = load i16, ptr %118, align 2
  %120 = lshr i16 %119, 5
  %121 = and i16 %120, 31
  %122 = zext i16 %121 to i32
  %123 = shl i32 128, %122
  tail call void @musb_writel(ptr noundef %114, i32 noundef %117, i32 noundef %123) #9
  br label %124

124:                                              ; preds = %112, %99, %96, %71, %55, %52, %35, %32, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cppi41_dma_controller_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dsps_dma_controller_callback(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.musb, ptr %2, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dsps_glue, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @musb_readl(ptr noundef %10, i32 noundef 40) #9
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @musb_writel(ptr noundef %10, i32 noundef 40, i32 noundef 4) #9
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_maximum_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_vbus_threaded_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dsps_glue, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.musb, ptr %6, i32 0, i32 22
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = tail call i32 @mod_timer(ptr noundef %9, i32 noundef %10) #9
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #9, !srcloc !12
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  br label %62

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 22
  %22 = tail call i32 @del_timer_sync(ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.musb, ptr %9, i32 0, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %27) #9
  %29 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %32) #9
  %34 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 1
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 6
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %37) #9
  %39 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 9
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %42) #9
  %44 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 10
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %47) #9
  %49 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 11
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %52) #9
  %54 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 5
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %5, i32 0, i32 12
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = tail call i32 @musb_readl(ptr noundef %24, i32 noundef %57) #9
  %59 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 6
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  tail call void @musb_writel(ptr noundef %61, i32 noundef 48, i32 noundef 4) #9
  br label %62

62:                                               ; preds = %20, %19, %14, %1
  %63 = phi i32 [ 0, %20 ], [ 0, %1 ], [ %12, %14 ], [ %12, %19 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dsps_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @musb_writel(ptr noundef %13, i32 noundef 44, i32 noundef 4) #9
  %14 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %18, i32 noundef %20) #9
  %21 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %23, i32 noundef %25) #9
  %26 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 6
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 2
  %30 = load i32, ptr %29, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %28, i32 noundef %30) #9
  %31 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 9
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 3
  %35 = load i32, ptr %34, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %33, i32 noundef %35) #9
  %36 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 10
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 4
  %40 = load i32, ptr %39, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %38, i32 noundef %40) #9
  %41 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 11
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 5
  %45 = load i32, ptr %44, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %43, i32 noundef %45) #9
  %46 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %11, i32 0, i32 12
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.dsps_glue, ptr %3, i32 0, i32 7, i32 6
  %50 = load i32, ptr %49, align 4
  tail call void @musb_writel(ptr noundef %15, i32 noundef %48, i32 noundef %50) #9
  %51 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 31
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.usb_phy, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_otg, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %74

58:                                               ; preds = %10
  %59 = getelementptr inbounds %struct.musb, ptr %8, i32 0, i32 41
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 8
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr inbounds %struct.dsps_musb_wrapper, ptr %66, i32 0, i32 23
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @__msecs_to_jiffies(i32 noundef %68) #9
  %70 = getelementptr inbounds %struct.musb, ptr %65, i32 0, i32 22
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = add i32 %71, %69
  %73 = tail call i32 @mod_timer(ptr noundef %70, i32 noundef %72) #9
  br label %74

74:                                               ; preds = %62, %58, %10
  %75 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #9
  br label %76

76:                                               ; preds = %74, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!10 = !{i64 2148121439}
!11 = !{i64 620546, i64 2148110517, i64 2148110543, i64 2148110590, i64 2148110612, i64 2148110640, i64 2148110660}
!12 = !{i64 607115, i64 607140, i64 607162, i64 607178, i64 607190, i64 607210, i64 607234, i64 607250, i64 607262}
!13 = !{i64 2148121565}
