; ModuleID = '/llk/IR/drivers/usb/chipidea/ci_hdrc_tegra.c_pt.bc'
source_filename = "../drivers/usb/chipidea/ci_hdrc_tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_usb_soc_info = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_usb = type { %struct.ci_hdrc_platform_data, ptr, ptr, ptr, ptr, i8 }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.71, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.71 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.73, %union.anon.75, [2 x i32], i32 }
%union.anon.73 = type { [15 x i32] }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, [15 x i32] }

@__initcall__kmod_ci_hdrc_tegra__252_415_tegra_usb_driver_init6 = internal global ptr @tegra_usb_driver_init, section ".initcall6.init", align 4
@tegra_usb_driver = internal global %struct.platform_driver { ptr @tegra_usb_probe, ptr @tegra_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_usb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_usb_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_usb_driver_exit = internal global ptr @tegra_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [50 x i8] c"ci_hdrc_tegra.description=NVIDIA Tegra USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [57 x i8] c"ci_hdrc_tegra.author=Thierry Reding <treding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [54 x i8] c"ci_hdrc_tegra.file=drivers/usb/chipidea/ci_hdrc_tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [29 x i8] c"ci_hdrc_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra-usb\00", align 1
@tegra_usb_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_ehci_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ehci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_ehci_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_udc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_udc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_udc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-udc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_udc_soc_info }, %struct.of_device_id zeroinitializer], align 4
@tegra_usb_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_usb_runtime_suspend, ptr @tegra_usb_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to match OF data\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"nvidia,phy\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to get PHY\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"nvidia,needs-double-reset\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to reset controller: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to add HDRC device: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"can't get ehci reset: %pe\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"utmi-pads\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"can't get utmi-pads reset from the PHY\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"continuing, but please update your DT\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra20_ehci_soc_info = internal constant %struct.tegra_usb_soc_info { i32 12292, i32 10, i32 1 }, align 4
@tegra30_ehci_soc_info = internal constant %struct.tegra_usb_soc_info { i32 12292, i32 16, i32 1 }, align 4
@tegra20_udc_soc_info = internal constant %struct.tegra_usb_soc_info { i32 12292, i32 10, i32 0 }, align 4
@tegra30_udc_soc_info = internal constant %struct.tegra_usb_soc_info { i32 12292, i32 16, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_tegra_usb_driver_exit, ptr @__initcall__kmod_ci_hdrc_tegra__252_415_tegra_usb_driver_init6, ptr @tegra_usb_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_usb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_usb_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_usb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.tegra_core_opp_params, align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 160, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %128, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  br label %128

12:                                               ; preds = %7
  %13 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.2, i8 noundef zeroext 0) #6
  %14 = getelementptr inbounds %struct.tegra_usb, ptr %5, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  %18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %17, ptr noundef nonnull @.str.3) #6
  br label %128

19:                                               ; preds = %12
  %20 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #6
  %21 = getelementptr inbounds %struct.tegra_usb, ptr %5, i32 0, i32 4
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %24) #7
  br label %128

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 1, ptr %3, align 1
  %26 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %4, ptr noundef nonnull %3) #6
  %27 = icmp eq i32 %26, -19
  %28 = select i1 %27, i32 0, i32 %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %128

30:                                               ; preds = %25
  call void @pm_runtime_enable(ptr noundef %4) #6
  %31 = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #6, !srcloc !9
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 0, i32 -1, ptr elementtype(i32) %34) #6, !srcloc !10
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %128, label %38

38:                                               ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  br label %128

39:                                               ; preds = %30
  %40 = call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.5) #6
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tegra_usb, ptr %5, i32 0, i32 5
  store i8 1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %44) #7
  %47 = ptrtoint ptr %44 to i32
  br label %70

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %50 = load ptr, ptr %49, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !12
  %51 = call i32 @__of_parse_phandle_with_args(ptr noundef %50, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %52 = icmp ne i32 %51, 0
  %53 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %54 = icmp eq ptr %53, null
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %73, label %56

56:                                               ; preds = %48
  %57 = call ptr @__of_reset_control_get(ptr noundef nonnull %53, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  br label %61

60:                                               ; preds = %56
  call void @reset_control_put(ptr noundef %57) #6
  br label %61

61:                                               ; preds = %60, %59
  call void @of_node_put(ptr noundef nonnull %53) #6
  %62 = call i32 @reset_control_deassert(ptr noundef %44) #6
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = call i32 @reset_control_assert(ptr noundef %44) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %68(i32 noundef 214748) #6
  %69 = call i32 @reset_control_deassert(ptr noundef %44) #6
  br label %70

70:                                               ; preds = %67, %46
  %71 = phi i32 [ %47, %46 ], [ %69, %67 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70, %64, %61, %48
  %74 = phi i32 [ %71, %70 ], [ %65, %64 ], [ %62, %61 ], [ -2, %48 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %74) #7
  br label %124

75:                                               ; preds = %70
  %76 = load ptr, ptr %14, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.usb_phy, ptr %76, i32 0, i32 22
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = call i32 %80(ptr noundef nonnull %76) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %82
  %86 = load ptr, ptr %14, align 4
  br label %87

87:                                               ; preds = %85, %78, %75
  %88 = phi ptr [ %86, %85 ], [ null, %75 ], [ %76, %78 ]
  %89 = getelementptr inbounds %struct.tegra_usb, ptr %5, i32 0, i32 2
  store ptr %9, ptr %89, align 4
  store ptr @.str, ptr %5, align 4
  %90 = load i32, ptr %9, align 4
  %91 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 6
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 4
  store ptr %88, ptr %92, align 4
  %93 = getelementptr inbounds %struct.tegra_usb_soc_info, ptr %9, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 7
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 1
  store i32 256, ptr %96, align 4
  %97 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 24
  store ptr @tegra_usb_enter_lpm, ptr %97, align 4
  %98 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 23
  store ptr @tegra_ehci_hub_control, ptr %98, align 4
  %99 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %5, i32 0, i32 8
  store ptr @tegra_usb_notify_event, ptr %99, align 4
  %100 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %101 = load ptr, ptr %100, align 8
  %102 = call i32 @of_usb_get_phy_mode(ptr noundef %101) #6
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %107

104:                                              ; preds = %87
  %105 = load i32, ptr %91, align 4
  %106 = and i32 %105, -5
  store i32 %106, ptr %91, align 4
  br label %107

107:                                              ; preds = %104, %87
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = call ptr @ci_hdrc_add_device(ptr noundef %4, ptr noundef %109, i32 noundef %111, ptr noundef nonnull %5) #6
  %113 = getelementptr inbounds %struct.tegra_usb, ptr %5, i32 0, i32 1
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = ptrtoint ptr %112 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %116) #7
  %117 = load ptr, ptr %14, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.usb_phy, ptr %117, i32 0, i32 23
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void %121(ptr noundef nonnull %117) #6
  br label %124

124:                                              ; preds = %123, %119, %115, %82, %73
  %125 = phi i32 [ %74, %73 ], [ %83, %82 ], [ %116, %115 ], [ %116, %119 ], [ %116, %123 ]
  %126 = call i32 @__pm_runtime_suspend(ptr noundef %4, i32 noundef 4) #6
  %127 = call i32 @pm_runtime_force_suspend(ptr noundef %4) #6
  br label %128

128:                                              ; preds = %124, %107, %38, %33, %25, %23, %16, %11, %1
  %129 = phi i32 [ %18, %16 ], [ %24, %23 ], [ %125, %124 ], [ -22, %11 ], [ -12, %1 ], [ %28, %25 ], [ 0, %107 ], [ %31, %33 ], [ %31, %38 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_usb, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @ci_hdrc_remove_device(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.tegra_usb, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef nonnull %7) #6
  br label %14

14:                                               ; preds = %13, %9, %1
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 4) #6
  %17 = tail call i32 @pm_runtime_force_suspend(ptr noundef %15) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_usb_enter_lpm(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = zext i1 %1 to i32
  %6 = icmp eq ptr %4, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_phy, ptr %4, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef nonnull %4, i32 noundef %5) #6
  br label %13

13:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_ehci_hub_control(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef readnone %4, i16 noundef zeroext %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) #2 {
  %9 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 38
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 8, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ehci_regs, ptr %12, i32 0, i32 11
  %14 = and i16 %3, 255
  %15 = zext i16 %14 to i32
  %16 = add nsw i32 %15, -1
  %17 = getelementptr [15 x i32], ptr %13, i32 0, i32 %16
  %18 = icmp ne i16 %1, 8963
  %19 = icmp ne i16 %2, 4
  %20 = or i1 %18, %19
  br i1 %20, label %120, label %21

21:                                               ; preds = %8
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.tegra_usb, ptr %26, i32 0, i32 5
  %28 = load i8, ptr %27, align 4, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ehci_regs, ptr %12, i32 0, i32 2
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 2, i32 4, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds %struct.ehci_regs, ptr %38, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #6, !srcloc !17
  br label %40

40:                                               ; preds = %37, %30
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 9
  %42 = load i32, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #6
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %44 = load i32, ptr %33, align 4
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = or i32 %43, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %48) #6, !srcloc !17
  br label %49

49:                                               ; preds = %47, %40
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %50 = load i32, ptr %33, align 4
  %51 = and i32 %50, 16384
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = and i32 %43, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %54) #6, !srcloc !17
  br label %55

55:                                               ; preds = %53, %49
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %56

56:                                               ; preds = %56, %55
  %57 = phi i32 [ 100, %55 ], [ %62, %56 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  %61 = xor i1 %60, true
  %62 = add nsw i32 %57, -1
  %63 = icmp eq i32 %57, 0
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %56

65:                                               ; preds = %56
  br i1 %60, label %66, label %91

66:                                               ; preds = %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %68 = load i32, ptr %33, align 4
  %69 = and i32 %68, 16384
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = or i32 %67, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %72) #6, !srcloc !17
  br label %73

73:                                               ; preds = %71, %66
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %74 = load i32, ptr %33, align 4
  %75 = and i32 %74, 16384
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = and i32 %67, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %78) #6, !srcloc !17
  br label %79

79:                                               ; preds = %77, %73
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %80

80:                                               ; preds = %80, %79
  %81 = phi i32 [ 100, %79 ], [ %86, %80 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %83 = and i32 %82, 4
  %84 = icmp eq i32 %83, 0
  %85 = xor i1 %84, true
  %86 = add nsw i32 %81, -1
  %87 = icmp eq i32 %81, 0
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %80

89:                                               ; preds = %80
  %90 = select i1 %84, i32 -110, i32 0
  br label %91

91:                                               ; preds = %89, %65
  %92 = phi i32 [ %58, %65 ], [ %82, %89 ]
  %93 = phi i32 [ 0, %65 ], [ %90, %89 ]
  %94 = and i32 %92, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %33, align 4
  %98 = and i32 %97, 16384
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2) #6, !srcloc !17
  br label %101

101:                                              ; preds = %100, %96, %91
  %102 = load ptr, ptr %11, align 8
  %103 = getelementptr inbounds %struct.ehci_regs, ptr %102, i32 0, i32 1
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %105 = load i32, ptr %33, align 4
  %106 = and i32 %105, 16384
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load ptr, ptr %11, align 8
  %110 = getelementptr inbounds %struct.ehci_regs, ptr %109, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %104) #6, !srcloc !17
  br label %111

111:                                              ; preds = %108, %101
  %112 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #6
  store i32 %112, ptr %7, align 4
  %113 = load i32, ptr %33, align 4
  %114 = and i32 %113, 16384
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load ptr, ptr %11, align 8
  %118 = getelementptr inbounds %struct.ehci_regs, ptr %117, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %32) #6, !srcloc !17
  br label %119

119:                                              ; preds = %116, %111
  store i8 1, ptr %6, align 1
  br label %120

120:                                              ; preds = %119, %21, %8
  %121 = phi i32 [ 0, %8 ], [ %93, %119 ], [ 0, %21 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_notify_event(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ci_hdrc, ptr %0, i32 0, i32 38
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 2, i32 4, i32 16
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, -3
  store i8 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 2, i32 4, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 1, i32 8, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ehci_regs, ptr %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.tegra_usb, ptr %7, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_usb_soc_info, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %29) #6, !srcloc !17
  br label %30

30:                                               ; preds = %21, %13, %9, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_usb_get_phy_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ci_hdrc_add_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_hdrc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_usb, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_usb_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_usb, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %13) #7
  br label %16

16:                                               ; preds = %15, %12, %8
  %17 = phi i32 [ %13, %15 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2147950838}
!9 = !{i64 449148, i64 2147939119, i64 2147939145, i64 2147939192, i64 2147939214, i64 2147939242, i64 2147939262}
!10 = !{i64 435717, i64 435742, i64 435764, i64 435780, i64 435792, i64 435812, i64 435836, i64 435852, i64 435864}
!11 = !{i64 2147950964}
!12 = !{!"auto-init"}
!13 = !{i8 0, i8 2}
!14 = !{i64 1727943}
!15 = !{i64 2153930426}
!16 = !{i64 2153930936}
!17 = !{i64 1727525}
