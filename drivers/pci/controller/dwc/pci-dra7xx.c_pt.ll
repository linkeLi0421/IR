; ModuleID = '/llk/IR/drivers/pci/controller/dwc/pci-dra7xx.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-dra7xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.dra7xx_pcie_of_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.dra7xx_pcie = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pci_dra7xx__252_958_dra7xx_pcie_driver_init6 = internal global ptr @dra7xx_pcie_driver_init, section ".initcall6.init", align 4
@dra7xx_pcie_driver = internal global %struct.platform_driver { ptr @dra7xx_pcie_probe, ptr null, ptr @dra7xx_pcie_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_dra7xx_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dra7xx_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dra7xx_pcie_driver_exit = internal global ptr @dra7xx_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [57 x i8] c"pci_dra7xx.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [65 x i8] c"pci_dra7xx.description=PCIe controller driver for TI DRA7xx SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [54 x i8] c"pci_dra7xx.file=drivers/pci/controller/dwc/pci-dra7xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [26 x i8] c"pci_dra7xx.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"dra7-pcie\00", align 1
@of_dra7xx_pcie_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7xx_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7xx_pcie_ep_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra746-pcie-rc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra746_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra726-pcie-rc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra726_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra746-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra746_pcie_ep_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra726-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra726_pcie_ep_of_data }, %struct.of_device_id zeroinitializer], align 4
@dra7xx_pcie_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dra7xx_pcie_suspend, ptr @dra7xx_pcie_resume, ptr @dra7xx_pcie_suspend, ptr @dra7xx_pcie_resume, ptr @dra7xx_pcie_suspend, ptr @dra7xx_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dra7xx_pcie_suspend_noirq, ptr @dra7xx_pcie_resume_noirq, ptr @dra7xx_pcie_suspend_noirq, ptr @dra7xx_pcie_resume_noirq, ptr @dra7xx_pcie_suspend_noirq, ptr @dra7xx_pcie_resume_noirq, ptr null, ptr null, ptr null }, align 4
@dw_pcie_ops = internal constant %struct.dw_pcie_ops { ptr @dra7xx_pcie_cpu_addr_fixup, ptr null, ptr null, ptr null, ptr @dra7xx_pcie_link_up, ptr @dra7xx_pcie_establish_link, ptr @dra7xx_pcie_stop_link }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ti_conf\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"phy-names\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to find the strings\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"clock request failed\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"pcie-phy%d\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to enable phy\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"pm_runtime_get_sync failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"gpio request failed, ret %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"WA for Errata i870 not applied\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"INVALID device type %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"dra7xx-pcie-main\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"link is already up\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"ti,syscon-lane-sel\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"unable to get ti,syscon-lane-sel\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"couldn't get lane selection reg offset\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"ti,syscon-unaligned-access\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"failed to parse ti,syscon-unaligned-access\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"failed to enable unaligned access\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"rc_dbics\00", align 1
@dra7xx_pcie_host_ops = internal constant %struct.dw_pcie_host_ops { ptr @dra7xx_pcie_host_init, ptr null }, align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"No PCIe Intc node found\0A\00", align 1
@intx_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @dra7xx_pcie_intx_map, ptr null, ptr @pci_irqd_intx_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", align 1
@dra7xx_pcie_handle_msi_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dra7xx_pcie_handle_msi_irq = private unnamed_addr constant [27 x i8] c"dra7xx_pcie_handle_msi_irq\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Too many MSI IRQs to handle\0A\00", align 1
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@pcie_ep_ops = internal constant %struct.dw_pcie_ep_ops { ptr @dra7xx_pcie_ep_init, ptr @dra7xx_pcie_raise_irq, ptr @dra7xx_pcie_get_features, ptr null }, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"ep_dbics\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"ep_dbics2\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"failed to initialize endpoint\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"UNKNOWN IRQ type\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dra7xx_pcie_epc_features = internal constant %struct.pci_epc_features { i8 5, i8 0, i8 0, [6 x i64] zeroinitializer, i32 0 }, align 8
@dra7xx_pcie_rc_of_data = internal constant %struct.dra7xx_pcie_of_data { i32 3, i32 0 }, align 4
@dra7xx_pcie_ep_of_data = internal constant %struct.dra7xx_pcie_of_data { i32 1, i32 0 }, align 4
@dra746_pcie_rc_of_data = internal constant %struct.dra7xx_pcie_of_data { i32 3, i32 4 }, align 4
@dra726_pcie_rc_of_data = internal constant %struct.dra7xx_pcie_of_data { i32 3, i32 12 }, align 4
@dra746_pcie_ep_of_data = internal constant %struct.dra7xx_pcie_of_data { i32 1, i32 4 }, align 4
@dra726_pcie_ep_of_data = internal constant %struct.dra7xx_pcie_of_data { i32 1, i32 12 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_dra7xx_pcie_driver_exit, ptr @__initcall__kmod_pci_dra7xx__252_958_dra7xx_pcie_driver_init6, ptr @dra7xx_pcie_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dra7xx_pcie_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dra7xx_pcie_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dra7xx_pcie_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_probe(ptr noundef %0) #2 {
  %2 = alloca [10 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %2, i8 0, i32 10, i1 false), !annotation !8
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %140, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dra7xx_pcie_of_data, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %140, label %14

14:                                               ; preds = %8
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 280, i32 noundef 3520) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %140, label %17

17:                                               ; preds = %14
  store ptr %3, ptr %15, align 8
  %18 = getelementptr inbounds %struct.dw_pcie, ptr %15, i32 0, i32 9
  store ptr @dw_pcie_ops, ptr %18, align 8
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %140, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %140

26:                                               ; preds = %21
  %27 = tail call i32 @of_property_read_string_helper(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #12
  br label %140

30:                                               ; preds = %26
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #11
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %140, label %33, !prof !9

33:                                               ; preds = %30
  %34 = extractvalue { i32, i1 } %31, 0
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %34, i32 noundef 3520) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %140, label %37

37:                                               ; preds = %33
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %34, i32 noundef 3520) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %140, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @devm_clk_get_optional(ptr noundef %3, ptr noundef null) #11
  %42 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 5
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = ptrtoint ptr %41 to i32
  %46 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %45, ptr noundef nonnull @.str.4) #11
  br label %140

47:                                               ; preds = %40
  %48 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %41)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %140

50:                                               ; preds = %47
  %51 = icmp eq i32 %27, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 1
  store ptr %22, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 3
  store ptr %35, ptr %54, align 4
  store ptr %15, ptr %12, align 4
  %55 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 2
  store i32 %27, ptr %55, align 4
  br label %80

56:                                               ; preds = %68, %50
  %57 = phi i32 [ %69, %68 ], [ 0, %50 ]
  %58 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef %57)
  %59 = call ptr @devm_phy_get(ptr noundef %3, ptr noundef nonnull %2) #11
  %60 = getelementptr ptr, ptr %35, i32 %57
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = ptrtoint ptr %59 to i32
  br label %140

64:                                               ; preds = %56
  %65 = call ptr @device_link_add(ptr noundef %3, ptr noundef %59, i32 noundef 1) #11
  %66 = getelementptr ptr, ptr %38, i32 %57
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %65, null
  br i1 %67, label %129, label %68

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %57, 1
  %70 = icmp eq i32 %69, %27
  br i1 %70, label %71, label %56

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 1
  store ptr %22, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 3
  store ptr %35, ptr %73, align 4
  store ptr %15, ptr %12, align 4
  %74 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 2
  store i32 %27, ptr %74, align 4
  %75 = icmp eq i32 %27, 2
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = call fastcc i32 @dra7xx_pcie_configure_two_lane(ptr noundef %3, i32 noundef %11)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, ptr %74, align 4
  br label %80

80:                                               ; preds = %79, %76, %71, %52
  %81 = phi ptr [ %53, %52 ], [ %72, %76 ], [ %72, %79 ], [ %72, %71 ]
  %82 = phi i32 [ 0, %52 ], [ 2, %76 ], [ 2, %79 ], [ %27, %71 ]
  %83 = call fastcc i32 @dra7xx_pcie_enable_phy(ptr noundef nonnull %12)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #12
  br label %140

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %87, align 8
  call void @pm_runtime_enable(ptr noundef %3) #11
  %88 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #12
  br label %126

91:                                               ; preds = %86
  %92 = call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef null, i32 noundef 7) #11
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = ptrtoint ptr %92 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %95) #12
  br label %126

96:                                               ; preds = %91
  %97 = load ptr, ptr %81, align 4
  %98 = getelementptr i8, ptr %97, i32 260
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %100 = and i32 %99, -2
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  %101 = load ptr, ptr %81, align 4
  %102 = getelementptr i8, ptr %101, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #11, !srcloc !13
  switch i32 %9, label %120 [
    i32 3, label %103
    i32 1, label %112
  ]

103:                                              ; preds = %96
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  %104 = load ptr, ptr %81, align 4
  %105 = getelementptr i8, ptr %104, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 4) #11, !srcloc !13
  %106 = call fastcc i32 @dra7xx_pcie_unaligned_memaccess(ptr noundef %3)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #12
  br label %109

109:                                              ; preds = %108, %103
  %110 = call fastcc i32 @dra7xx_add_pcie_port(ptr noundef nonnull %12, ptr noundef %0)
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %126, label %121

112:                                              ; preds = %96
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  %113 = load ptr, ptr %81, align 4
  %114 = getelementptr i8, ptr %113, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 0) #11, !srcloc !13
  %115 = call fastcc i32 @dra7xx_pcie_unaligned_memaccess(ptr noundef %3)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = call fastcc i32 @dra7xx_add_pcie_ep(ptr noundef nonnull %12, ptr noundef %0)
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %126, label %121

120:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %9) #12
  br label %121

121:                                              ; preds = %120, %117, %109
  %122 = getelementptr inbounds %struct.dra7xx_pcie, ptr %12, i32 0, i32 6
  store i32 %9, ptr %122, align 4
  %123 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %19, ptr noundef nonnull @dra7xx_pcie_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.11, ptr noundef nonnull %12) #11
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %121
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.12) #12
  br label %126

126:                                              ; preds = %125, %117, %112, %109, %94, %90
  %127 = phi i32 [ %88, %90 ], [ %95, %94 ], [ %123, %125 ], [ %115, %112 ], [ %118, %117 ], [ %110, %109 ]
  %128 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #11
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #11
  call fastcc void @dra7xx_pcie_disable_phy(ptr noundef nonnull %12)
  br label %129

129:                                              ; preds = %126, %64
  %130 = phi i32 [ %82, %126 ], [ %57, %64 ]
  %131 = phi i32 [ %127, %126 ], [ -22, %64 ]
  %132 = add i32 %130, -1
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %140

134:                                              ; preds = %134, %129
  %135 = phi i32 [ %138, %134 ], [ %132, %129 ]
  %136 = getelementptr ptr, ptr %38, i32 %135
  %137 = load ptr, ptr %136, align 4
  call void @device_link_del(ptr noundef %137) #11
  %138 = add nsw i32 %135, -1
  %139 = icmp eq i32 %135, 0
  br i1 %139, label %140, label %134

140:                                              ; preds = %134, %129, %121, %85, %62, %47, %44, %37, %33, %30, %29, %24, %17, %14, %8, %1
  %141 = phi i32 [ %25, %24 ], [ %27, %29 ], [ %46, %44 ], [ %63, %62 ], [ %83, %85 ], [ -22, %1 ], [ -12, %8 ], [ -12, %14 ], [ %19, %17 ], [ -12, %33 ], [ -12, %37 ], [ %48, %47 ], [ 0, %121 ], [ -12, %30 ], [ %131, %129 ], [ %131, %134 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #11
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dra7xx_pcie_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dra7xx_pcie, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 260
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %13 = and i32 %12, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !13
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #11
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #11
  %17 = getelementptr inbounds %struct.dra7xx_pcie, ptr %4, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.dra7xx_pcie, ptr %4, i32 0, i32 3
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %18, %20 ], [ %24, %22 ]
  %24 = add i32 %23, -1
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @phy_power_off(ptr noundef %27) #11
  %29 = load ptr, ptr %21, align 4
  %30 = getelementptr ptr, ptr %29, i32 %24
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @phy_exit(ptr noundef %31) #11
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %34, label %22

34:                                               ; preds = %22, %1
  %35 = getelementptr inbounds %struct.dra7xx_pcie, ptr %4, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %36) #11
  tail call void @clk_unprepare(ptr noundef %36) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_pcie_configure_two_lane(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.14) #11
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  br label %17

9:                                                ; preds = %2
  %10 = call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef nonnull %3) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16) #12
  br label %17

13:                                               ; preds = %9
  %14 = or i32 %1, 1
  %15 = load i32, ptr %3, align 4
  %16 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %15, i32 noundef %14, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %17

17:                                               ; preds = %13, %12, %8
  %18 = phi i32 [ -22, %8 ], [ -22, %12 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_pcie_enable_phy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dra7xx_pcie, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dra7xx_pcie, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %31, %5
  %8 = phi i32 [ 0, %5 ], [ %32, %31 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_set_mode_ext(ptr noundef %11, i32 noundef 14, i32 noundef 0) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr ptr, ptr %15, i32 %8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_init(ptr noundef %17) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr ptr, ptr %21, i32 %8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @phy_power_on(ptr noundef %23) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr ptr, ptr %27, i32 %8
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @phy_exit(ptr noundef %29) #11
  br label %34

31:                                               ; preds = %20
  %32 = add nuw nsw i32 %8, 1
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %49, label %7

34:                                               ; preds = %26, %14, %7
  %35 = phi i32 [ %24, %26 ], [ %18, %14 ], [ %12, %7 ]
  %36 = icmp eq i32 %8, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %39, %37 ], [ %8, %34 ]
  %39 = add nsw i32 %38, -1
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr ptr, ptr %40, i32 %39
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @phy_power_off(ptr noundef %42) #11
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr ptr, ptr %44, i32 %39
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @phy_exit(ptr noundef %46) #11
  %48 = icmp sgt i32 %38, 1
  br i1 %48, label %37, label %49

49:                                               ; preds = %37, %34, %31, %1
  %50 = phi i32 [ %35, %34 ], [ 0, %1 ], [ %35, %37 ], [ 0, %31 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_pcie_unaligned_memaccess(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !8
  %5 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.17) #11
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %2) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18) #12
  br label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %13, i32 noundef %15, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %19

19:                                               ; preds = %18, %11
  %20 = load ptr, ptr %2, align 4
  call void @of_node_put(ptr noundef %20) #11
  br label %21

21:                                               ; preds = %19, %10, %1
  %22 = phi i32 [ %8, %10 ], [ %16, %19 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_add_pcie_port(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @platform_get_irq(ptr noundef %1, i32 noundef 1) #11
  %7 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7, i32 7
  store i32 %6, ptr %7, align 4
  %8 = icmp slt i32 %6, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7, i32 9
  store i32 -19, ptr %10, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @of_get_next_child(ptr noundef %15, ptr noundef null) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %7, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %19, ptr noundef nonnull @dra7xx_pcie_msi_irq_handler, ptr noundef %4) #11
  %20 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 3
  %21 = tail call ptr @__irq_domain_add(ptr noundef %20, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %4) #11
  %22 = getelementptr inbounds %struct.dra7xx_pcie, ptr %13, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  tail call void @of_node_put(ptr noundef nonnull %16) #11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %9
  %26 = phi ptr [ @.str.22, %9 ], [ @.str.23, %18 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %26) #12
  br label %38

27:                                               ; preds = %18
  %28 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %1, ptr noundef nonnull @.str.20) #11
  %29 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  br label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7, i32 8
  store ptr @dra7xx_pcie_host_ops, ptr %34, align 8
  %35 = tail call i32 @dw_pcie_host_init(ptr noundef %4) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21) #12
  br label %38

38:                                               ; preds = %37, %33, %31, %25, %2
  %39 = phi i32 [ %32, %31 ], [ %35, %37 ], [ %6, %2 ], [ 0, %33 ], [ -19, %25 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dra7xx_add_pcie_ep(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dw_pcie, ptr %4, i32 0, i32 8
  %6 = getelementptr inbounds %struct.dw_pcie, ptr %4, i32 0, i32 8, i32 2
  store ptr @pcie_ep_ops, ptr %6, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %1, ptr noundef nonnull @.str.25) #11
  %8 = getelementptr inbounds %struct.dw_pcie, ptr %4, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %7 to i32
  br label %22

12:                                               ; preds = %2
  %13 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %1, ptr noundef nonnull @.str.26) #11
  %14 = getelementptr inbounds %struct.dw_pcie, ptr %4, i32 0, i32 2
  store ptr %13, ptr %14, align 8
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %22

18:                                               ; preds = %12
  %19 = tail call i32 @dw_pcie_ep_init(ptr noundef %5) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27) #12
  br label %22

22:                                               ; preds = %21, %18, %16, %10
  %23 = phi i32 [ %11, %10 ], [ %17, %16 ], [ %19, %21 ], [ 0, %18 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %9 = and i32 %8, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dra7xx_pcie, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @dw_pcie_ep_linkup(ptr noundef %4) #11
  br label %16

16:                                               ; preds = %15, %11, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %8) #11, !srcloc !13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dra7xx_pcie_disable_phy(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dra7xx_pcie, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dra7xx_pcie, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %3, %5 ], [ %9, %7 ]
  %9 = add i32 %8, -1
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @phy_power_off(ptr noundef %12) #11
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr ptr, ptr %14, i32 %9
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @phy_exit(ptr noundef %16) #11
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i64 @dra7xx_pcie_cpu_addr_fixup(ptr nocapture noundef readnone %0, i64 noundef %1) #8 {
  %3 = and i64 %1, 268435455
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_link_up(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dra7xx_pcie, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 268
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_establish_link(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @dw_pcie_link_up(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #12
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dra7xx_pcie, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 260
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %13 = or i32 %12, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !13
  br label %16

16:                                               ; preds = %8, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dra7xx_pcie_stop_link(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dra7xx_pcie, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %9 = and i32 %8, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dra7xx_pcie_msi_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #11
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #11
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 -32
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.dra7xx_pcie, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  store i32 %33, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr i8, ptr %34, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !13
  switch i32 %33, label %94 [
    i32 16, label %36
    i32 1, label %82
    i32 2, label %82
    i32 4, label %82
    i32 8, label %82
  ]

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.pcie_port, ptr %25, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 5
  %40 = icmp ult i32 %38, 32
  %41 = getelementptr inbounds %struct.pcie_port, ptr %25, i32 0, i32 10
  %42 = tail call i32 @llvm.smax.i32(i32 %39, i32 1) #11
  br label %43

43:                                               ; preds = %70, %36
  %44 = phi i32 [ 0, %36 ], [ %71, %70 ]
  br i1 %40, label %94, label %45

45:                                               ; preds = %65, %43
  %46 = phi i32 [ %68, %65 ], [ 0, %43 ]
  %47 = phi i32 [ %67, %65 ], [ 0, %43 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %48 = mul nuw nsw i32 %46, 12
  %49 = add nuw nsw i32 %48, 2096
  %50 = call i32 @dw_pcie_read_dbi(ptr noundef %26, i32 noundef %49, i32 noundef 4) #11
  store i32 %50, ptr %2, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %45
  %53 = call i32 @_find_first_bit_le(ptr noundef nonnull %2, i32 noundef 32) #11
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = shl i32 %46, 5
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ %53, %55 ], [ %63, %57 ]
  %59 = load ptr, ptr %41, align 8
  %60 = add i32 %58, %56
  %61 = call i32 @generic_handle_domain_irq(ptr noundef %59, i32 noundef %60) #11
  %62 = add i32 %58, 1
  %63 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %62) #11
  %64 = icmp eq i32 %63, 32
  br i1 %64, label %65, label %57

65:                                               ; preds = %57, %52, %45
  %66 = phi i32 [ 0, %45 ], [ 1, %52 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %67 = or i32 %66, %47
  %68 = add nuw nsw i32 %46, 1
  %69 = icmp eq i32 %68, %42
  br i1 %69, label %70, label %45

70:                                               ; preds = %65
  %71 = add nuw nsw i32 %44, 1
  %72 = icmp ne i32 %67, 0
  %73 = icmp ult i32 %44, 1000
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %43, label %75

75:                                               ; preds = %70
  %76 = icmp ugt i32 %44, 999
  br i1 %76, label %77, label %94

77:                                               ; preds = %75
  %78 = call i32 @___ratelimit(ptr noundef nonnull @dra7xx_pcie_handle_msi_irq._rs, ptr noundef nonnull @__func__.dra7xx_pcie_handle_msi_irq) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %26, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.24) #12
  br label %94

82:                                               ; preds = %23, %23, %23, %23
  %83 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0) #11
  %84 = icmp ult i32 %83, 4
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.dra7xx_pcie, ptr %29, i32 0, i32 4
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ %83, %85 ], [ %92, %87 ]
  %89 = load ptr, ptr %86, align 4
  %90 = call i32 @generic_handle_domain_irq(ptr noundef %89, i32 noundef %88) #11
  %91 = add nuw nsw i32 %88, 1
  %92 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 4, i32 noundef %91) #11
  %93 = icmp ult i32 %92, 4
  br i1 %93, label %87, label %94

94:                                               ; preds = %87, %82, %80, %77, %75, %43, %23
  %95 = load ptr, ptr %6, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi ptr [ %99, %97 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %101(ptr noundef %102) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_intx_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #11
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pci_irqd_intx_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readnone %5) #10 {
  %7 = load i32, ptr %2, align 4
  %8 = add i32 %7, -5
  %9 = icmp ult i32 %8, -4
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %7, -1
  store i32 %11, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ 0, %10 ], [ -22, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_host_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.dra7xx_pcie, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 32575) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 32575) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 31) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 31) #11, !srcloc !13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dra7xx_pcie_ep_init(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -176
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %2, i32 noundef 0) #11
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %2, i32 noundef 1) #11
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %2, i32 noundef 2) #11
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %2, i32 noundef 3) #11
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %2, i32 noundef 4) #11
  tail call void @dw_pcie_ep_reset_bar(ptr noundef %2, i32 noundef 5) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.dra7xx_pcie, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 32575) #11, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 32575) #11, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_raise_irq(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -176
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  switch i32 %2, label %24 [
    i32 1, label %9
    i32 2, label %16
  ]

9:                                                ; preds = %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %10 = getelementptr inbounds %struct.dra7xx_pcie, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #11, !srcloc !13
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr i8, ptr %14, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #11, !srcloc !13
  br label %25

16:                                               ; preds = %4
  %17 = shl i16 %3, 7
  %18 = and i16 %17, 32640
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, -127
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %21 = getelementptr inbounds %struct.dra7xx_pcie, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #11, !srcloc !13
  br label %25

24:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #12
  br label %25

25:                                               ; preds = %24, %16, %9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dra7xx_pcie_get_features(ptr nocapture noundef readnone %0) #8 {
  ret ptr @dra7xx_pcie_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_reset_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @dw_pcie_read_dbi(ptr noundef %8, i32 noundef 4, i32 noundef 4) #11
  %10 = and i32 %9, -3
  tail call void @dw_pcie_write_dbi(ptr noundef %8, i32 noundef 4, i32 noundef 4, i32 noundef %10) #11
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = tail call i32 @dw_pcie_read_dbi(ptr noundef %8, i32 noundef 4, i32 noundef 4) #11
  %10 = or i32 %9, 2
  tail call void @dw_pcie_write_dbi(ptr noundef %8, i32 noundef 4, i32 noundef 4, i32 noundef %10) #11
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_suspend_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dra7xx_pcie, ptr %3, i32 0, i32 3
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %5, %7 ], [ %11, %9 ]
  %11 = add i32 %10, -1
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @phy_power_off(ptr noundef %14) #11
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr ptr, ptr %16, i32 %11
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @phy_exit(ptr noundef %18) #11
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %21, label %9

21:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dra7xx_pcie_resume_noirq(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @dra7xx_pcie_enable_phy(ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #12
  br label %7

7:                                                ; preds = %6, %1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!10 = !{i64 3754906}
!11 = !{i64 2154346068}
!12 = !{i64 2154346426}
!13 = !{i64 3754488}
