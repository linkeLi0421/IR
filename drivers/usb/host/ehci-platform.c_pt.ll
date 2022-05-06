; ModuleID = '/llk/IR/drivers/usb/host/ehci-platform.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.usb_ehci_pdata = type { i32, i8, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.72, %union.anon.74, [2 x i32], i32 }
%union.anon.72 = type { [15 x i32] }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, [15 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ehci_platform_priv = type { [4 x ptr], ptr, i8, i8, %struct.timer_list, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_ehci_platform__254_535_ehci_platform_init6 = internal global ptr @ehci_platform_init, section ".initcall6.init", align 4
@ehci_platform_driver = internal global %struct.platform_driver { ptr @ehci_platform_probe, ptr @ehci_platform_remove, ptr @usb_hcd_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vt8500_ehci_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ehci_platform_pm_ops, ptr null, ptr null }, ptr @ehci_platform_table, i8 0 }, align 4
@__exitcall_ehci_platform_cleanup = internal global ptr @ehci_platform_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description255 = internal constant [55 x i8] c"ehci_platform.description=EHCI generic platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [36 x i8] c"ehci_platform.author=Hauke Mehrtens\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [32 x i8] c"ehci_platform.author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [50 x i8] c"ehci_platform.file=drivers/usb/host/ehci-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [26 x i8] c"ehci_platform.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [36 x i8] c"\016%s: EHCI generic platform driver\0A\00", align 1
@ehci_platform_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@platform_overrides = internal constant %struct.ehci_driver_overrides { i32 88, ptr @ehci_platform_reset, ptr null }, section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"brcm,xgs-iproc-ehci\00", align 1
@.str.2 = private constant [14 x i8] c"ehci-platform\00", align 1
@vt8500_ehci_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wm,prizm-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cavium,octeon-6335-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ehci_platform_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ehci_platform_suspend, ptr @ehci_platform_resume, ptr @ehci_platform_suspend, ptr @ehci_platform_resume, ptr @ehci_platform_suspend, ptr @ehci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ehci_platform_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ehci-platform\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@ehci_platform_defaults = internal global %struct.usb_ehci_pdata { i32 0, i8 0, ptr @ehci_platform_power_on, ptr @ehci_platform_power_off, ptr @ehci_platform_power_off, ptr null }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Error: DMA mask configuration failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"big-endian-regs\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"big-endian-desc\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"spurious-oc\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"needs-reset-on-resume\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"has-transaction-translator\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"aspeed,ast2500-ehci\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"aspeed,ast2600-ehci\00", align 1
@quirk_poll_match = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"Error: CONFIG_USB_EHCI_BIG_ENDIAN_MMIO not set\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Error: CONFIG_USB_EHCI_BIG_ENDIAN_DESC not set\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"R-Car Gen3\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"%s: failed\0A\00", align 1
@__func__.quirk_poll_rebind_companion = private unnamed_addr constant [28 x i8] c"quirk_poll_rebind_companion\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_ehci_platform_cleanup, ptr @__initcall__kmod_ehci_platform__254_535_ehci_platform_init6, ptr @ehci_platform_cleanup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_platform_init() #0 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #5
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef nonnull @platform_overrides) #4
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ehci_platform_driver, ptr noundef null) #4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -19, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_platform_cleanup() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ehci_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_platform_reset(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = lshr i8 %6, 1
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i8 %7, 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 11
  %13 = and i32 %9, -2049
  %14 = or i32 %12, %13
  store i32 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %4, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = tail call i32 %16(ptr noundef %0) #4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  store ptr %25, ptr %26, align 4
  %27 = tail call i32 @ehci_setup(ptr noundef %0) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = load i8, ptr %5, align 4
  %31 = and i8 %30, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %8, align 4
  %35 = and i32 %34, -257
  store i32 %35, ptr %8, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @of_device_is_compatible(ptr noundef %38, ptr noundef nonnull @.str.1) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %8, align 4
  %43 = and i32 %42, 16384
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.ehci_regs, ptr %47, i32 0, i32 12, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 8388672) #4, !srcloc !9
  br label %49

49:                                               ; preds = %45, %41, %36, %21, %18
  %50 = phi i32 [ %19, %18 ], [ %27, %21 ], [ 0, %36 ], [ 0, %41 ], [ 0, %45 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_platform_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_disabled() #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %265

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  %9 = select i1 %8, ptr @ehci_platform_defaults, ptr %4
  %10 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 64
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i64 4294967295, i64 -1
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %15, ptr %16, align 4
  %17 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef %14) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %265

20:                                               ; preds = %7
  %21 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef %14) #4
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %265, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %32 = tail call ptr @usb_create_hcd(ptr noundef nonnull @ehci_platform_hc_driver, ptr noundef %2, ptr noundef %31) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %265, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %32, ptr %35, align 8
  store ptr %9, ptr %3, align 4
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 20, i32 3, i32 4
  %37 = icmp eq ptr %9, @ehci_platform_defaults
  br i1 %37, label %38, label %129

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %129, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @of_find_property(ptr noundef nonnull %40, ptr noundef nonnull @.str.4, ptr noundef null) #4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 16
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load ptr, ptr %39, align 8
  %51 = tail call ptr @of_find_property(ptr noundef %50, ptr noundef nonnull @.str.5, ptr noundef null) #4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 32
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load ptr, ptr %39, align 8
  %59 = tail call ptr @of_find_property(ptr noundef %58, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 48
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load ptr, ptr %39, align 8
  %67 = tail call ptr @of_find_property(ptr noundef %66, ptr noundef nonnull @.str.7, ptr noundef null) #4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, 32768
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load ptr, ptr %39, align 8
  %75 = tail call ptr @of_find_property(ptr noundef %74, ptr noundef nonnull @.str.8, ptr noundef null) #4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 21, i32 2
  store i8 1, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load ptr, ptr %39, align 8
  %81 = tail call ptr @of_find_property(ptr noundef %80, ptr noundef nonnull @.str.9, ptr noundef null) #4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 14
  %85 = load i16, ptr %84, align 8
  %86 = or i16 %85, 128
  store i16 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load ptr, ptr %39, align 8
  %89 = tail call i32 @of_device_is_compatible(ptr noundef %88, ptr noundef nonnull @.str.10) #4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load ptr, ptr %39, align 8
  %93 = tail call i32 @of_device_is_compatible(ptr noundef %92, ptr noundef nonnull @.str.11) #4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91, %87
  %96 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 65536
  store i32 %98, ptr %96, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = tail call ptr @soc_device_match(ptr noundef nonnull @quirk_poll_match) #4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.ehci_platform_priv, ptr %36, i32 0, i32 3
  store i8 1, ptr %103, align 1
  br label %104

104:                                              ; preds = %102, %99
  %105 = load ptr, ptr %39, align 8
  %106 = tail call ptr @of_clk_get(ptr noundef %105, i32 noundef 0) #4
  store ptr %106, ptr %36, align 4
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %114

108:                                              ; preds = %124, %119, %114, %104
  %109 = phi i32 [ 0, %104 ], [ 1, %114 ], [ 2, %119 ], [ 3, %124 ]
  %110 = phi ptr [ %106, %104 ], [ %116, %114 ], [ %121, %119 ], [ %126, %124 ]
  %111 = icmp eq ptr %110, inttoptr (i32 -517 to ptr)
  br i1 %111, label %239, label %112

112:                                              ; preds = %108
  %113 = getelementptr [4 x ptr], ptr %36, i32 0, i32 %109
  store ptr null, ptr %113, align 4
  br label %129

114:                                              ; preds = %104
  %115 = load ptr, ptr %39, align 8
  %116 = tail call ptr @of_clk_get(ptr noundef %115, i32 noundef 1) #4
  %117 = getelementptr %struct.usb_hcd, ptr %32, i32 2, i32 20, i32 3, i32 5
  store ptr %116, ptr %117, align 4
  %118 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %108, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr %39, align 8
  %121 = tail call ptr @of_clk_get(ptr noundef %120, i32 noundef 2) #4
  %122 = getelementptr %struct.usb_hcd, ptr %32, i32 2, i32 20, i32 4
  store ptr %121, ptr %122, align 4
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %108, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %39, align 8
  %126 = tail call ptr @of_clk_get(ptr noundef %125, i32 noundef 3) #4
  %127 = getelementptr %struct.usb_hcd, ptr %32, i32 2, i32 21
  store ptr %126, ptr %127, align 4
  %128 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %108, label %129

129:                                              ; preds = %124, %112, %38, %34
  %130 = phi i32 [ %109, %112 ], [ 0, %38 ], [ 0, %34 ], [ 4, %124 ]
  %131 = tail call ptr @devm_reset_control_array_get(ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %132 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 21, i32 1
  store ptr %131, ptr %132, align 4
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = ptrtoint ptr %131 to i32
  br label %239

136:                                              ; preds = %129
  %137 = tail call i32 @reset_control_deassert(ptr noundef %131) #4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %239

139:                                              ; preds = %136
  %140 = load i8, ptr %10, align 4
  %141 = and i8 %140, 4
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %145 = load i32, ptr %144, align 4
  %146 = or i32 %145, 32
  store i32 %146, ptr %144, align 4
  %147 = load i8, ptr %10, align 4
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i8 [ %147, %143 ], [ %140, %139 ]
  %150 = and i8 %149, 8
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %154 = load i32, ptr %153, align 4
  %155 = or i32 %154, 16
  store i32 %155, ptr %153, align 4
  %156 = load i8, ptr %10, align 4
  br label %157

157:                                              ; preds = %152, %148
  %158 = phi i8 [ %156, %152 ], [ %149, %148 ]
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 14
  %163 = load i16, ptr %162, align 8
  %164 = or i16 %163, 128
  store i16 %164, ptr %162, align 8
  %165 = load i8, ptr %10, align 4
  br label %166

166:                                              ; preds = %161, %157
  %167 = phi i8 [ %165, %161 ], [ %158, %157 ]
  %168 = and i8 %167, 32
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 21, i32 2
  store i8 1, ptr %171, align 4
  %172 = load i8, ptr %10, align 4
  br label %173

173:                                              ; preds = %170, %166
  %174 = phi i8 [ %172, %170 ], [ %167, %166 ]
  %175 = icmp sgt i8 %174, -1
  %176 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 2, i32 4, i32 8
  %177 = load i32, ptr %176, align 4
  br i1 %175, label %180, label %178

178:                                              ; preds = %173
  %179 = or i32 %177, 32768
  store i32 %179, ptr %176, align 4
  br label %180

180:                                              ; preds = %178, %173
  %181 = phi i32 [ %179, %178 ], [ %177, %173 ]
  %182 = and i32 %181, 16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #5
  br label %235

185:                                              ; preds = %180
  %186 = and i32 %181, 32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #5
  br label %235

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %9, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = tail call i32 %191(ptr noundef %0) #4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %235, label %196

196:                                              ; preds = %193, %189
  %197 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %198 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %197) #4
  %199 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 16
  store ptr %198, ptr %199, align 8
  %200 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = ptrtoint ptr %198 to i32
  br label %229

203:                                              ; preds = %196
  %204 = load i32, ptr %197, align 4
  %205 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 17
  store i32 %204, ptr %205, align 4
  %206 = getelementptr inbounds %struct.resource, ptr %197, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = load i32, ptr %197, align 4
  %209 = add i32 %207, 1
  %210 = sub i32 %209, %208
  %211 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 18
  store i32 %210, ptr %211, align 8
  %212 = tail call i32 @usb_add_hcd(ptr noundef nonnull %32, i32 noundef %22, i32 noundef 128) #4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %203
  %215 = load ptr, ptr %32, align 8
  %216 = tail call i32 @device_wakeup_enable(ptr noundef %215) #4
  %217 = load ptr, ptr %32, align 8
  %218 = getelementptr inbounds %struct.device, ptr %217, i32 0, i32 11, i32 1
  %219 = load i16, ptr %218, align 4
  %220 = and i16 %219, 8
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %214
  %223 = or i16 %219, 2
  store i16 %223, ptr %218, align 4
  br label %224

224:                                              ; preds = %222, %214
  store ptr %32, ptr %35, align 8
  %225 = getelementptr inbounds %struct.ehci_platform_priv, ptr %36, i32 0, i32 3
  %226 = load i8, ptr %225, align 1, !range !10
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %265, label %228

228:                                              ; preds = %224
  tail call fastcc void @quirk_poll_init(ptr noundef %36)
  br label %265

229:                                              ; preds = %203, %201
  %230 = phi i32 [ %202, %201 ], [ %212, %203 ]
  %231 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %9, i32 0, i32 3
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %229
  tail call void %232(ptr noundef %0) #4
  br label %235

235:                                              ; preds = %234, %229, %193, %188, %184
  %236 = phi i32 [ -22, %184 ], [ -22, %188 ], [ %194, %193 ], [ %230, %234 ], [ %230, %229 ]
  %237 = load ptr, ptr %132, align 4
  %238 = tail call i32 @reset_control_assert(ptr noundef %237) #4
  br label %239

239:                                              ; preds = %235, %136, %134, %108
  %240 = phi i32 [ -517, %108 ], [ %135, %134 ], [ %137, %136 ], [ %236, %235 ]
  %241 = phi i32 [ %109, %108 ], [ %130, %134 ], [ %130, %136 ], [ %130, %235 ]
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %262, label %243

243:                                              ; preds = %239
  %244 = add nsw i32 %241, -1
  %245 = getelementptr [4 x ptr], ptr %36, i32 0, i32 %244
  %246 = load ptr, ptr %245, align 4
  tail call void @clk_put(ptr noundef %246) #4
  %247 = icmp ugt i32 %241, 1
  br i1 %247, label %248, label %262

248:                                              ; preds = %243
  %249 = add nsw i32 %241, -2
  %250 = getelementptr [4 x ptr], ptr %36, i32 0, i32 %249
  %251 = load ptr, ptr %250, align 4
  tail call void @clk_put(ptr noundef %251) #4
  %252 = icmp ugt i32 %244, 1
  br i1 %252, label %253, label %262

253:                                              ; preds = %248
  %254 = add nsw i32 %241, -3
  %255 = getelementptr [4 x ptr], ptr %36, i32 0, i32 %254
  %256 = load ptr, ptr %255, align 4
  tail call void @clk_put(ptr noundef %256) #4
  %257 = icmp ugt i32 %249, 1
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = add nsw i32 %241, -4
  %260 = getelementptr [4 x ptr], ptr %36, i32 0, i32 %259
  %261 = load ptr, ptr %260, align 4
  tail call void @clk_put(ptr noundef %261) #4
  br label %262

262:                                              ; preds = %258, %253, %248, %243, %239
  br i1 %37, label %263, label %264

263:                                              ; preds = %262
  store ptr null, ptr %3, align 4
  br label %264

264:                                              ; preds = %263, %262
  tail call void @usb_put_hcd(ptr noundef nonnull %32) #4
  br label %265

265:                                              ; preds = %264, %228, %224, %30, %20, %19, %1
  %266 = phi i32 [ %17, %19 ], [ %240, %264 ], [ -19, %1 ], [ %22, %20 ], [ -12, %30 ], [ 0, %228 ], [ 0, %224 ]
  ret i32 %266
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_platform_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %7 = getelementptr inbounds %struct.ehci_platform_priv, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2, i32 1
  %12 = tail call i32 @del_timer_sync(ptr noundef %11) #4
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 3, i32 4
  %14 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %13) #4
  br label %15

15:                                               ; preds = %10, %1
  tail call void @usb_remove_hcd(ptr noundef %3) #4
  %16 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %5, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0) #4
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #4
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  tail call void @clk_put(ptr noundef nonnull %24) #4
  %27 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  tail call void @clk_put(ptr noundef nonnull %28) #4
  %31 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  tail call void @clk_put(ptr noundef nonnull %32) #4
  %35 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @clk_put(ptr noundef nonnull %36) #4
  br label %39

39:                                               ; preds = %38, %34, %30, %26, %20
  tail call void @usb_put_hcd(ptr noundef %3) #4
  %40 = icmp eq ptr %5, @ehci_platform_defaults
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store ptr null, ptr %4, align 4
  br label %42

42:                                               ; preds = %41, %39
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_platform_shutdown(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @quirk_poll_init(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ehci_platform_priv, ptr %0, i32 0, i32 5
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ehci_platform_priv, ptr %0, i32 0, i32 5, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ehci_platform_priv, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ehci_platform_priv, ptr %0, i32 0, i32 5, i32 0, i32 2
  store ptr @quirk_poll_work, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ehci_platform_priv, ptr %0, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %6, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  %7 = getelementptr inbounds %struct.ehci_platform_priv, ptr %0, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %7, ptr noundef nonnull @quirk_poll_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = add i32 %8, 100
  %10 = tail call i32 @mod_timer(ptr noundef %7, i32 noundef %9) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_platform_power_on(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef nonnull %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %17

13:                                               ; preds = %45, %35, %25
  %14 = phi i32 [ 3, %45 ], [ 2, %35 ], [ 1, %25 ]
  %15 = phi ptr [ %40, %45 ], [ %30, %35 ], [ %20, %25 ]
  %16 = phi i32 [ %46, %45 ], [ %36, %35 ], [ %26, %25 ]
  tail call void @clk_unprepare(ptr noundef nonnull %15) #4
  br label %48

17:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef nonnull %5) #4
  br label %64

18:                                               ; preds = %10
  %19 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @clk_prepare(ptr noundef nonnull %20) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef nonnull %20) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %13

28:                                               ; preds = %25
  %29 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @clk_prepare(ptr noundef nonnull %30) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = tail call i32 @clk_enable(ptr noundef nonnull %30) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %13

38:                                               ; preds = %35
  %39 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @clk_prepare(ptr noundef nonnull %40) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = tail call i32 @clk_enable(ptr noundef nonnull %40) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %13

48:                                               ; preds = %42, %32, %22, %13
  %49 = phi i32 [ %16, %13 ], [ %43, %42 ], [ %33, %32 ], [ %23, %22 ]
  %50 = phi i32 [ %14, %13 ], [ 3, %42 ], [ 2, %32 ], [ 1, %22 ]
  %51 = add nsw i32 %50, -1
  %52 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  tail call void @clk_disable(ptr noundef %53) #4
  tail call void @clk_unprepare(ptr noundef %53) #4
  %54 = icmp ugt i32 %50, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = add nsw i32 %50, -2
  %57 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %56
  %58 = load ptr, ptr %57, align 4
  tail call void @clk_disable(ptr noundef %58) #4
  tail call void @clk_unprepare(ptr noundef %58) #4
  %59 = icmp ugt i32 %51, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = add nsw i32 %50, -3
  %62 = getelementptr [4 x ptr], ptr %4, i32 0, i32 %61
  %63 = load ptr, ptr %62, align 4
  tail call void @clk_disable(ptr noundef %63) #4
  tail call void @clk_unprepare(ptr noundef %63) #4
  br label %64

64:                                               ; preds = %60, %55, %48, %45, %38, %28, %18, %17, %7, %1
  %65 = phi i32 [ %11, %17 ], [ 0, %45 ], [ 0, %38 ], [ 0, %28 ], [ 0, %18 ], [ 0, %1 ], [ %8, %7 ], [ %49, %60 ], [ %49, %55 ], [ %49, %48 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_platform_power_off(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %5 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %6) #4
  tail call void @clk_unprepare(ptr noundef nonnull %6) #4
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @clk_disable(ptr noundef nonnull %11) #4
  tail call void @clk_unprepare(ptr noundef nonnull %11) #4
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @clk_disable(ptr noundef nonnull %16) #4
  tail call void @clk_unprepare(ptr noundef nonnull %16) #4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %4, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_disable(ptr noundef nonnull %20) #4
  tail call void @clk_unprepare(ptr noundef nonnull %20) #4
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_poll_work(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -484
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %6 = and i32 %5, 12289
  %7 = icmp eq i32 %6, 4096
  %8 = and i32 %5, 3072
  %9 = icmp ne i32 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #4
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.ehci_regs, ptr %13, i32 0, i32 11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %16 = and i32 %15, 12289
  %17 = icmp eq i32 %16, 4096
  %18 = and i32 %15, 3072
  %19 = icmp ne i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %0, i32 -1004
  %23 = load ptr, ptr %22, align 8
  %24 = tail call ptr @usb_of_get_companion_dev(ptr noundef %23) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  tail call void @device_release_driver(ptr noundef nonnull %24) #4
  %27 = tail call i32 @device_attach(ptr noundef nonnull %24) #4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.quirk_poll_rebind_companion) #5
  br label %31

31:                                               ; preds = %29, %26
  tail call void @put_device(ptr noundef nonnull %24) #4
  br label %32

32:                                               ; preds = %31, %21, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @quirk_poll_timer(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -464
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %6 = and i32 %5, 12289
  %7 = icmp eq i32 %6, 4096
  %8 = and i32 %5, 3072
  %9 = icmp ne i32 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 20
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12, i32 noundef 1) #4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = add i32 %16, 100
  %18 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %17) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_of_get_companion_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_platform_suspend(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ false, %1 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.ehci_platform_priv, ptr %7, i32 0, i32 3
  %19 = load i8, ptr %18, align 1, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2, i32 1
  %23 = tail call i32 @del_timer_sync(ptr noundef %22) #4
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 3, i32 4
  %25 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %24) #4
  br label %26

26:                                               ; preds = %21, %16
  %27 = tail call i32 @ehci_suspend(ptr noundef %3, i1 noundef zeroext %17) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %5, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %6) #4
  br label %34

34:                                               ; preds = %33, %29, %26
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_platform_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 20, i32 3, i32 4
  %7 = getelementptr inbounds %struct.usb_ehci_pdata, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = tail call i32 %8(ptr noundef %11) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %10, %1
  %15 = load ptr, ptr %3, align 8
  %16 = tail call ptr @usb_of_get_companion_dev(ptr noundef %15) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8
  %20 = tail call i32 @device_pm_wait_for_dev(ptr noundef %19, ptr noundef nonnull %16) #4
  tail call void @put_device(ptr noundef nonnull %16) #4
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2
  %23 = load i8, ptr %22, align 4, !range !10
  %24 = icmp ne i8 %23, 0
  %25 = tail call i32 @ehci_resume(ptr noundef %3, i1 noundef zeroext %24) #4
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #4
  %26 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #4
  tail call void @pm_runtime_enable(ptr noundef %0) #4
  %27 = getelementptr inbounds %struct.ehci_platform_priv, ptr %6, i32 0, i32 3
  %28 = load i8, ptr %27, align 1, !range !10
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 3, i32 4
  store i32 -32, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 3, i32 5
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 4
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 22
  store ptr @quirk_poll_work, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 23
  tail call void @init_timer_key(ptr noundef %35, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #4
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 2, i32 21, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %36, ptr noundef nonnull @quirk_poll_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, 100
  %39 = tail call i32 @mod_timer(ptr noundef %36, i32 noundef %38) #4
  br label %40

40:                                               ; preds = %30, %21, %10
  %41 = phi i32 [ %12, %10 ], [ 0, %30 ], [ 0, %21 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_pm_wait_for_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2154454365}
!9 = !{i64 5654828}
!10 = !{i8 0, i8 2}
!11 = !{i64 5655246}
!12 = !{i64 2154453855}
