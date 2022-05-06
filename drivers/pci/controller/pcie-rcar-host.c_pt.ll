; ModuleID = '/llk/IR/drivers/pci/controller/pcie-rcar-host.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rcar-host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.rcar_pcie_host = type { %struct.rcar_pcie, ptr, ptr, %struct.rcar_msi, ptr }
%struct.rcar_pcie = type { ptr, ptr }
%struct.rcar_msi = type { [1 x i32], ptr, %struct.mutex, %struct.spinlock, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.65, %union.anon.66, %union.anon.67 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_rcar_host__256_1111_rcar_pcie_init6 = internal global ptr @rcar_pcie_init, section ".initcall6.init", align 4
@rcar_pcie_abort_handler_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-rcar-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [25 x i8] c"imprecise external abort\00", align 1
@rcar_pcie_driver = internal global %struct.platform_driver { ptr @rcar_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rcar_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@pmsr_lock = internal global %struct.spinlock zeroinitializer, align 4
@pcie_base = internal unnamed_addr global ptr null, align 4
@pcie_dev = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"drivers/pci/controller/pcie-rcar-host.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Timeout waiting for L1 link state, ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rcar-pcie\00", align 1
@rcar_pcie_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_h1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-rcar-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pcie-rcar-gen3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_pcie_phy_init_gen3 }, %struct.of_device_id zeroinitializer], align 4
@rcar_pcie_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @rcar_pcie_resume, ptr null, ptr @rcar_pcie_resume, ptr null, ptr @rcar_pcie_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_pcie_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"pm_runtime_get_sync failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to request resources: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to enable bus clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to init PCIe PHY\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"PCIe link down\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"PCIe x%d: link up\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to enable MSI support: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"pcie_bus\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot get pcie bus clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"cannot get platform resources for msi interrupt\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to map inbound regions!\0A\00", align 1
@rcar_pcie_enable_msi.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"&msi->map_lock\00", align 1
@rcar_msi_bottom_chip = internal global %struct.irq_chip { ptr null, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr @rcar_msi_irq_ack, ptr @rcar_msi_irq_mask, ptr null, ptr @rcar_msi_irq_unmask, ptr null, ptr @rcar_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@rcar_msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_msi_domain_alloc, ptr @rcar_msi_domain_free, ptr null, ptr null, ptr null }, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"failed to create IRQ domain\0A\00", align 1
@rcar_msi_info = internal global %struct.msi_domain_info { i32 7, ptr null, ptr @rcar_msi_top_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"failed to create MSI domain\0A\00", align 1
@rcar_msi_top_chip = internal global %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr @rcar_msi_top_irq_ack, ptr @rcar_msi_top_irq_mask, ptr null, ptr @rcar_msi_top_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"PCIe MSI\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Rcar MSI\00", align 1
@rcar_pcie_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr null, ptr @rcar_pcie_read_conf, ptr @rcar_pcie_write_conf }, align 4
@.str.22 = private unnamed_addr constant [34 x i8] c"Speed change already in progress\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"Speed change failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"Speed change timed out\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Current link speed is %s GT/s\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"2.5\00", align 1
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [30 x i8] c"Access to PCIe phy timed out\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pcie_rcar_host__256_1111_rcar_pcie_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_pcie_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_pcie_abort_handler_of_match, ptr noundef null) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @hook_fault_code(i32 noundef 22, ptr noundef nonnull @rcar_pcie_aarch32_abort_handler, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @.str) #8
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_pcie_driver, ptr noundef null) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_aarch32_abort_handler(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pmsr_lock) #8
  %5 = load ptr, ptr @pcie_base, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @pcie_dev, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 7
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %12, %7
  %18 = getelementptr i8, ptr %5, i32 69724
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %19, 458752
  %23 = icmp eq i32 %22, 196608
  %24 = or i1 %21, %23
  br i1 %24, label %53, label %25

25:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr @pcie_base, align 4
  %27 = getelementptr i8, ptr %26, i32 69728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -2147483648) #8, !srcloc !11
  %28 = tail call i64 @ktime_get() #8
  %29 = add i64 %28, 1000000
  %30 = load ptr, ptr @pcie_base, align 4
  %31 = getelementptr i8, ptr %30, i32 69724
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %49

34:                                               ; preds = %37, %25
  %35 = tail call i64 @ktime_get() #8
  %36 = icmp sgt i64 %35, %29
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #8
  %39 = load ptr, ptr @pcie_base, align 4
  %40 = getelementptr i8, ptr %39, i32 69724
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %34, label %49

43:                                               ; preds = %34
  %44 = load ptr, ptr @pcie_base, align 4
  %45 = getelementptr i8, ptr %44, i32 69724
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %49, label %48, !prof !14

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1080, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef -110) #8
  br label %49

49:                                               ; preds = %48, %43, %37, %25
  %50 = phi i32 [ -110, %48 ], [ 0, %43 ], [ 0, %25 ], [ 0, %37 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %51 = load ptr, ptr @pcie_base, align 4
  %52 = getelementptr i8, ptr %51, i32 69724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 -2139095040) #8, !srcloc !11
  br label %53

53:                                               ; preds = %49, %17, %12, %3
  %54 = phi i32 [ %50, %49 ], [ 0, %17 ], [ 1, %12 ], [ 1, %3 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pmsr_lock, i32 noundef %4) #8
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %3, i32 noundef 60) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %116, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 16
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %7, align 4
  tail call void @pm_runtime_enable(ptr noundef %9) #8
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #8
  %12 = icmp slt i32 %11, 0
  %13 = load ptr, ptr %7, align 4
  br i1 %12, label %14, label %15

14:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4) #9
  br label %113

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #8, !annotation !16
  %16 = tail call ptr @devm_phy_optional_get(ptr noundef %13, ptr noundef nonnull @.str.11) #8
  %17 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %56

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @of_address_to_resource(ptr noundef %23, i32 noundef 0, ptr noundef nonnull %2) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = call ptr @devm_ioremap_resource(ptr noundef %13, ptr noundef nonnull %2) #8
  %28 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %27 to i32
  br label %56

32:                                               ; preds = %26
  %33 = call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.12) #8
  %34 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 0, i32 2
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13) #9
  %37 = load ptr, ptr %34, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %56

39:                                               ; preds = %32
  %40 = load ptr, ptr %22, align 8
  %41 = call i32 @irq_of_parse_and_map(ptr noundef %40, i32 noundef 0) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14) #9
  br label %55

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 4
  store i32 %41, ptr %45, align 4
  %46 = load ptr, ptr %22, align 8
  %47 = call i32 @irq_of_parse_and_map(ptr noundef %46, i32 noundef 1) #8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14) #9
  %50 = load i32, ptr %45, align 4
  call void @irq_dispose_mapping(i32 noundef %50) #8
  br label %55

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 5
  store i32 %47, ptr %52, align 4
  %53 = load ptr, ptr %28, align 4
  store ptr %53, ptr @pcie_base, align 4
  %54 = load ptr, ptr %7, align 4
  store ptr %54, ptr @pcie_dev, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  br label %61

55:                                               ; preds = %49, %43
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  br label %59

56:                                               ; preds = %36, %30, %21, %19
  %57 = phi i32 [ %20, %19 ], [ %31, %30 ], [ %38, %36 ], [ %24, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %55
  %60 = phi i32 [ -2, %55 ], [ %57, %56 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %60) #9
  br label %113

61:                                               ; preds = %56, %51
  %62 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 @clk_prepare(ptr noundef %63) #8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = call i32 @clk_enable(ptr noundef %63) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  call void @clk_unprepare(ptr noundef %63) #8
  br label %70

70:                                               ; preds = %69, %61
  %71 = phi i32 [ %67, %69 ], [ %64, %61 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %71) #9
  br label %107

72:                                               ; preds = %66
  %73 = call fastcc i32 @rcar_pcie_parse_map_dma_ranges(ptr noundef %7)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = call ptr @of_device_get_match_data(ptr noundef %3) #8
  %77 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 6
  store ptr %76, ptr %77, align 4
  %78 = call i32 %76(ptr noundef %7) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  br label %104

81:                                               ; preds = %75
  %82 = call fastcc i32 @rcar_pcie_hw_init(ptr noundef %7)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8) #9
  br label %96

85:                                               ; preds = %81
  %86 = call i32 @rcar_pci_read_reg(ptr noundef %7, i32 noundef 69716) #8
  %87 = lshr i32 %86, 20
  %88 = and i32 %87, 63
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %88) #9
  %89 = call fastcc i32 @rcar_pcie_enable_msi(ptr noundef %7)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %89) #9
  br label %96

92:                                               ; preds = %85
  %93 = call fastcc i32 @rcar_pcie_enable(ptr noundef %7)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %92
  call fastcc void @rcar_pcie_teardown_msi(ptr noundef %7)
  br label %96

96:                                               ; preds = %95, %91, %84
  %97 = phi i32 [ -19, %84 ], [ %89, %91 ], [ %93, %95 ]
  %98 = load ptr, ptr %17, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = call i32 @phy_power_off(ptr noundef nonnull %98) #8
  %102 = load ptr, ptr %17, align 4
  %103 = call i32 @phy_exit(ptr noundef %102) #8
  br label %104

104:                                              ; preds = %100, %96, %80, %72
  %105 = phi i32 [ %73, %72 ], [ %78, %80 ], [ %97, %100 ], [ %97, %96 ]
  %106 = load ptr, ptr %62, align 4
  call void @clk_disable(ptr noundef %106) #8
  call void @clk_unprepare(ptr noundef %106) #8
  br label %107

107:                                              ; preds = %104, %70
  %108 = phi i32 [ %71, %70 ], [ %105, %104 ]
  %109 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  call void @irq_dispose_mapping(i32 noundef %110) #8
  %111 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 1, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  call void @irq_dispose_mapping(i32 noundef %112) #8
  br label %113

113:                                              ; preds = %107, %59, %14
  %114 = phi i32 [ %11, %14 ], [ %60, %59 ], [ %108, %107 ]
  %115 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #8
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #8
  br label %116

116:                                              ; preds = %113, %92, %1
  %117 = phi i32 [ %114, %113 ], [ -12, %1 ], [ 0, %92 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_parse_map_dma_ranges(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %67, label %5

5:                                                ; preds = %63, %1
  %6 = phi ptr [ %65, %63 ], [ %3, %1 ]
  %7 = phi i32 [ %64, %63 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.resource_entry, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %9, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = and i32 %11, 8192
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 6, i32 14
  %19 = icmp ult i32 %12, %14
  br i1 %19, label %20, label %63

20:                                               ; preds = %5
  %21 = sub i32 1, %12
  %22 = add i32 %21, %14
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.resource_entry, ptr %6, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %12, %25
  %27 = zext i32 %26 to i64
  %28 = zext i32 %12 to i64
  br label %29

29:                                               ; preds = %45, %20
  %30 = phi i64 [ %60, %45 ], [ %28, %20 ]
  %31 = phi i64 [ %59, %45 ], [ %27, %20 ]
  %32 = phi i64 [ %47, %45 ], [ %23, %20 ]
  %33 = phi i32 [ %61, %45 ], [ %7, %20 ]
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15) #9
  br label %67

37:                                               ; preds = %29
  %38 = icmp eq i64 %30, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = trunc i64 %30 to i32
  %41 = tail call i32 @llvm.cttz.i32(i32 %40, i1 false) #8, !range !17
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 1, %42
  %44 = tail call i64 @llvm.umin.i64(i64 %32, i64 %43) #8
  br label %45

45:                                               ; preds = %39, %37
  %46 = phi i64 [ %44, %39 ], [ %32, %37 ]
  %47 = tail call i64 @llvm.umin.i64(i64 %46, i64 4294967296) #8
  %48 = trunc i64 %47 to i32
  %49 = add i32 %48, -1
  %50 = icmp eq i32 %49, 0
  %51 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 false) #8, !range !17
  %52 = sub nuw nsw i32 32, %51
  %53 = shl nsw i32 -1, %52
  %54 = and i32 %53, -16
  %55 = xor i32 %54, -16
  %56 = select i1 %50, i32 0, i32 %55
  %57 = or i32 %56, %18
  %58 = zext i32 %57 to i64
  tail call void @rcar_pcie_set_inbound(ptr noundef %0, i64 noundef %30, i64 noundef %31, i64 noundef %58, i32 noundef %33, i1 noundef zeroext true) #8
  %59 = add i64 %47, %31
  %60 = add i64 %47, %30
  %61 = add nsw i32 %33, 2
  %62 = icmp ult i64 %60, %15
  br i1 %62, label %29, label %63

63:                                               ; preds = %45, %5
  %64 = phi i32 [ %7, %5 ], [ %61, %45 ]
  %65 = load ptr, ptr %6, align 4
  %66 = icmp eq ptr %65, %2
  br i1 %66, label %67, label %5

67:                                               ; preds = %63, %35, %1
  %68 = phi i32 [ -22, %35 ], [ 0, %1 ], [ 0, %63 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_hw_init(ptr noundef %0) unnamed_addr #2 {
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 8192) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 40) #8
  %2 = tail call i32 @rcar_pcie_wait_for_phyrdy(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 100925440, i32 noundef 69636) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65561, i32 noundef 255, i32 noundef 1) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65562, i32 noundef 255, i32 noundef 1) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65648, i32 noundef 255, i32 noundef 16) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65650, i32 noundef 240, i32 noundef 64) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65550, i32 noundef 127, i32 noundef 1) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65660, i32 noundef 1048576, i32 noundef 1048576) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65668, i32 noundef -524288, i32 noundef 0) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 69705, i32 noundef 63, i32 noundef 50) #8
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 65792, i32 noundef -1048576, i32 noundef 0) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef -2145452032, i32 noundef 2112) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef -2130771968, i32 noundef 69720) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 8192) #8
  %5 = tail call i32 @rcar_pcie_wait_for_dl(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @rcar_rmw32(ptr noundef %0, i32 noundef 1024, i32 noundef 0, i32 noundef 3840) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ 0, %7 ], [ %2, %1 ], [ %5, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pci_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_enable_msi(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.resource, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !16
  %5 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3, i32 2
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull @rcar_pcie_enable_msi.__key) #8
  %6 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @of_address_to_resource(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 4
  %13 = call ptr @dev_fwnode(ptr noundef %12) #8
  %14 = call ptr @__irq_domain_add(ptr noundef %13, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @rcar_msi_domain_ops, ptr noundef %4) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.18) #9
  br label %41

18:                                               ; preds = %11
  call void @irq_domain_update_bus_token(ptr noundef nonnull %14, i32 noundef 5) #8
  %19 = call ptr @pci_msi_create_irq_domain(ptr noundef %13, ptr noundef nonnull @rcar_msi_info, ptr noundef nonnull %14) #8
  %20 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.19) #9
  call void @irq_domain_remove(ptr noundef nonnull %14) #8
  br label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @rcar_msi_bottom_chip, i32 0, i32 1), align 4
  %28 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %26, ptr noundef nonnull @rcar_pcie_msi_irq, ptr noundef null, i32 noundef 65664, ptr noundef %27, ptr noundef %0) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @rcar_msi_bottom_chip, i32 0, i32 1), align 4
  %34 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %32, ptr noundef nonnull @rcar_pcie_msi_irq, ptr noundef null, i32 noundef 65664, ptr noundef %33, ptr noundef %0) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 8272) #8
  %37 = load i32, ptr %2, align 4
  %38 = or i32 %37, 1
  call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %38, i32 noundef 8264) #8
  call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 8268) #8
  br label %41

39:                                               ; preds = %30, %24
  %40 = phi i32 [ %28, %24 ], [ %34, %30 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %40) #9
  call fastcc void @rcar_free_domains(ptr noundef %4)
  br label %41

41:                                               ; preds = %39, %36, %22, %16, %1
  %42 = phi i32 [ %40, %39 ], [ 0, %36 ], [ %9, %1 ], [ -12, %22 ], [ -12, %16 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 -576
  tail call fastcc void @rcar_pcie_hw_enable(ptr noundef %0)
  %3 = load i32, ptr @pci_flags, align 4
  %4 = or i32 %3, 2
  store i32 %4, ptr @pci_flags, align 4
  %5 = getelementptr i8, ptr %0, i32 -92
  store ptr %0, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 -100
  store ptr @rcar_pcie_ops, ptr %6, align 4
  %7 = tail call i32 @pci_host_probe(ptr noundef %2) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_pcie_teardown_msi(ptr noundef %0) unnamed_addr #2 {
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 8272) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 8264) #8
  %2 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #8
  tail call void @irq_domain_remove(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pcie_set_inbound(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pci_write_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pcie_wait_for_phyrdy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_rmw32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_pcie_wait_for_dl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_msi_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = tail call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 8260) #8
  store i32 %4, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcar_pcie_host, ptr %1, i32 0, i32 3, i32 1
  br label %8

8:                                                ; preds = %17, %6
  %9 = call i32 @_find_first_bit_le(ptr noundef nonnull %3, i32 noundef 32) #8
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @generic_handle_domain_irq(ptr noundef %12, i32 noundef %9) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = shl nuw i32 1, %9
  call void @rcar_pci_write_reg(ptr noundef %1, i32 noundef %16, i32 noundef 8260) #8
  br label %17

17:                                               ; preds = %15, %8
  %18 = call i32 @rcar_pci_read_reg(ptr noundef %1, i32 noundef 8260) #8
  store i32 %18, ptr %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %2
  %21 = phi i32 [ 0, %2 ], [ 1, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_free_domains(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_msi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #8
  tail call void @irq_domain_remove(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_msi_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rcar_msi, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = icmp ugt i32 %2, 1
  %9 = add i32 %2, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #8, !range !17
  %11 = sub nuw nsw i32 32, %10
  %12 = select i1 %8, i32 %11, i32 0
  %13 = tail call i32 @bitmap_find_free_region(ptr noundef %6, i32 noundef 32, i32 noundef %12) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %22, %17 ], [ 0, %15 ]
  %19 = add i32 %18, %1
  %20 = add i32 %18, %13
  %21 = load ptr, ptr %5, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %19, i32 noundef %20, ptr noundef nonnull @rcar_msi_bottom_chip, ptr noundef %21, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #8
  %22 = add nuw i32 %18, 1
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %17

24:                                               ; preds = %17, %15, %4
  %25 = phi i32 [ -28, %4 ], [ 0, %15 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #8
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rcar_msi, ptr %6, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %2, 1
  %11 = add i32 %2, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #8, !range !17
  %13 = sub nuw nsw i32 32, %12
  %14 = select i1 %10, i32 %13, i32 0
  tail call void @bitmap_release_region(ptr noundef %6, i32 noundef %9, i32 noundef %14) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_top_irq_ack(ptr noundef %0) #2 {
  tail call void @irq_chip_ack_parent(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_top_irq_mask(ptr noundef %0) #2 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #8
  tail call void @irq_chip_mask_parent(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_top_irq_unmask(ptr noundef %0) #2 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  tail call void @rcar_pci_write_reg(ptr noundef %4, i32 noundef %7, i32 noundef 8260) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.rcar_msi, ptr %3, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = tail call i32 @rcar_pci_read_reg(ptr noundef %4, i32 noundef 8272) #8
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  tail call void @rcar_pci_write_reg(ptr noundef %4, i32 noundef %12, i32 noundef 8272) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_msi_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.rcar_msi, ptr %3, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = tail call i32 @rcar_pci_read_reg(ptr noundef %4, i32 noundef 8272) #8
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = or i32 %10, %7
  tail call void @rcar_pci_write_reg(ptr noundef %4, i32 noundef %11, i32 noundef 8272) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rcar_msi_set_affinity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #7 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = tail call i32 @rcar_pci_read_reg(ptr noundef %5, i32 noundef 8264) #8
  %7 = and i32 %6, -2
  store i32 %7, ptr %1, align 4
  %8 = tail call i32 @rcar_pci_read_reg(ptr noundef %5, i32 noundef 8268) #8
  %9 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_pcie_hw_enable(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 69752) #8
  %6 = and i32 %5, 983040
  %7 = icmp eq i32 %6, 131072
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 69720) #8
  %10 = and i32 %9, 16777216
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22) #9
  br label %40

13:                                               ; preds = %8
  %14 = call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 69716) #8
  %15 = and i32 %14, 983040
  %16 = icmp eq i32 %15, 131072
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  call void @rcar_rmw32(ptr noundef %0, i32 noundef 65696, i32 noundef 15, i32 noundef 2) #8
  call void @rcar_rmw32(ptr noundef %0, i32 noundef 69764, i32 noundef -2147483648, i32 noundef 0) #8
  %18 = and i32 %14, 208
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %14, i32 noundef 69716) #8
  br label %21

21:                                               ; preds = %20, %17
  call void @rcar_rmw32(ptr noundef %0, i32 noundef 69720, i32 noundef 16777216, i32 noundef 16777216) #8
  br label %22

22:                                               ; preds = %30, %21
  %23 = phi i32 [ 999, %21 ], [ %31, %30 ]
  %24 = call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 69716) #8
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %24, i32 noundef 69716) #8
  %28 = and i32 %24, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %33

30:                                               ; preds = %22
  call void @msleep(i32 noundef 1) #8
  %31 = add nsw i32 %23, -1
  %32 = icmp eq i32 %23, 0
  br i1 %32, label %33, label %22

33:                                               ; preds = %30, %27
  %34 = phi ptr [ @.str.23, %27 ], [ @.str.24, %30 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %34) #9
  br label %35

35:                                               ; preds = %33, %27, %13
  %36 = phi i32 [ %14, %13 ], [ %24, %27 ], [ %24, %33 ]
  %37 = and i32 %36, 983040
  %38 = icmp eq i32 %37, 131072
  %39 = select i1 %38, ptr @.str.26, ptr @.str.27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull %39) #9
  br label %40

40:                                               ; preds = %35, %12, %1
  %41 = getelementptr i8, ptr %0, i32 -80
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %60, label %44

44:                                               ; preds = %56, %40
  %45 = phi ptr [ %58, %56 ], [ %42, %40 ]
  %46 = phi i32 [ %57, %56 ], [ 0, %40 ]
  %47 = getelementptr inbounds %struct.resource_entry, ptr %45, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.resource, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = and i32 %50, 7936
  switch i32 %53, label %56 [
    i32 256, label %54
    i32 512, label %54
  ]

54:                                               ; preds = %52, %52
  call void @rcar_pcie_set_outbound(ptr noundef %0, i32 noundef %46, ptr noundef %45) #8
  %55 = add i32 %46, 1
  br label %56

56:                                               ; preds = %54, %52, %44
  %57 = phi i32 [ %46, %44 ], [ %46, %52 ], [ %55, %54 ]
  %58 = load ptr, ptr %45, align 4
  %59 = icmp eq ptr %58, %41
  br i1 %59, label %60, label %44

60:                                               ; preds = %56, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_pcie_set_outbound(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_read_conf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #2 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @rcar_pcie_config_access(ptr noundef %7, i8 noundef zeroext 0, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  switch i32 %3, label %20 [
    i32 1, label %12
    i32 2, label %11
  ]

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i32 [ 16, %11 ], [ 24, %10 ]
  %14 = phi i32 [ 65535, %11 ], [ 255, %10 ]
  %15 = load i32, ptr %4, align 4
  %16 = shl i32 %2, 3
  %17 = and i32 %16, %13
  %18 = lshr i32 %15, %17
  %19 = and i32 %18, %14
  store i32 %19, ptr %4, align 4
  br label %20

20:                                               ; preds = %12, %10, %5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_write_conf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !16
  %9 = call fastcc i32 @rcar_pcie_config_access(ptr noundef %8, i8 noundef zeroext 0, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  switch i32 %3, label %32 [
    i32 1, label %12
    i32 2, label %22
  ]

12:                                               ; preds = %11
  %13 = shl i32 %2, 3
  %14 = and i32 %13, 24
  %15 = shl nuw i32 255, %14
  %16 = xor i32 %15, -1
  %17 = load i32, ptr %6, align 4
  %18 = and i32 %17, %16
  %19 = and i32 %4, 255
  %20 = shl nuw i32 %19, %14
  %21 = or i32 %18, %20
  store i32 %21, ptr %6, align 4
  br label %33

22:                                               ; preds = %11
  %23 = shl i32 %2, 3
  %24 = and i32 %23, 16
  %25 = shl nuw i32 65535, %24
  %26 = xor i32 %25, -1
  %27 = load i32, ptr %6, align 4
  %28 = and i32 %27, %26
  %29 = and i32 %4, 65535
  %30 = shl nuw i32 %29, %24
  %31 = or i32 %28, %30
  store i32 %31, ptr %6, align 4
  br label %33

32:                                               ; preds = %11
  store i32 %4, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %22, %12
  %34 = call fastcc i32 @rcar_pcie_config_access(ptr noundef %8, i8 noundef zeroext 1, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6)
  br label %35

35:                                               ; preds = %33, %5
  %36 = phi i32 [ %34, %33 ], [ %9, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_pcie_config_access(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #2 {
  %7 = lshr i32 %3, 3
  %8 = and i32 %7, 31
  %9 = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %12
  %15 = icmp eq i8 %1, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = add i32 %4, 65536
  %18 = and i32 %17, -4
  %19 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef %18) #8
  store i32 %19, ptr %5, align 4
  br label %56

20:                                               ; preds = %14
  %21 = load i32, ptr %5, align 4
  %22 = add i32 %4, 65536
  %23 = and i32 %22, -4
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %21, i32 noundef %23) #8
  br label %56

24:                                               ; preds = %6
  %25 = and i32 %4, -4
  %26 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 8224) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %26, i32 noundef 8224) #8
  %27 = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 12
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = shl nuw nsw i32 %8, 19
  %32 = or i32 %30, %31
  %33 = shl i32 %3, 16
  %34 = and i32 %33, 458752
  %35 = or i32 %32, %34
  %36 = or i32 %35, %25
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %36, i32 noundef 16) #8
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, i32 -2147483648, i32 -2147483392
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %41, i32 noundef 24) #8
  %42 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 8224) #8
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %24
  %46 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 65540) #8
  %47 = and i32 %46, 805306368
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = icmp eq i8 %1, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 32) #8
  store i32 %52, ptr %5, align 4
  br label %55

53:                                               ; preds = %49
  %54 = load i32, ptr %5, align 4
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %54, i32 noundef 32) #8
  br label %55

55:                                               ; preds = %53, %51
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 24) #8
  br label %56

56:                                               ; preds = %55, %45, %24, %20, %16, %12
  %57 = phi i32 [ 0, %55 ], [ 134, %12 ], [ 0, %20 ], [ 0, %16 ], [ 134, %24 ], [ 134, %45 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_phy_init_h1(ptr noundef %0) #2 {
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 66, i32 noundef 247677329)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 66, i32 noundef 247677312)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 67, i32 noundef 2163080)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 67, i32 noundef 2163080)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 68, i32 noundef 22806548)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 68, i32 noundef 22806548)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 76, i32 noundef 2019652768)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 77, i32 noundef 75497659)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 81, i32 noundef 127844450)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 82, i32 noundef 536870912)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 82, i32 noundef 536870912)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 86, i32 noundef 14342)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 96, i32 noundef 4916133)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 100, i32 noundef 1057955599)
  tail call fastcc void @phy_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 102, i32 noundef 32768)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_phy_init_gen2(ptr noundef %0) #2 {
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 983088, i32 noundef 1920) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 3674627, i32 noundef 1924) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 1932) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 6, i32 noundef 1932) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 983124, i32 noundef 1920) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 327163911, i32 noundef 1924) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 1, i32 noundef 1932) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 6, i32 noundef 1932) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_phy_init_gen3(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rcar_pcie_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @phy_init(ptr noundef %3) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = tail call i32 @phy_power_on(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 4
  %12 = tail call i32 @phy_exit(ptr noundef %11) #8
  br label %13

13:                                               ; preds = %10, %6, %1
  %14 = phi i32 [ %4, %1 ], [ %8, %10 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @phy_write_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = shl i32 %1, 12
  %6 = and i32 %5, 4096
  %7 = and i32 %2, 255
  %8 = or i32 %7, %6
  %9 = or i32 %8, 65792
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %3, i32 noundef 262164) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef %9, i32 noundef 262156) #8
  %10 = load ptr, ptr %0, align 4
  br label %11

11:                                               ; preds = %16, %4
  %12 = phi i32 [ 99, %4 ], [ %18, %16 ]
  %13 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 262156) #8
  %14 = and i32 %13, 16777216
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #8
  %18 = add nsw i32 %12, -1
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %20, label %11

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.28) #9
  br label %21

21:                                               ; preds = %20, %11
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 262164) #8
  tail call void @rcar_pci_write_reg(ptr noundef %0, i32 noundef 0, i32 noundef 262156) #8
  %22 = load ptr, ptr %0, align 4
  br label %23

23:                                               ; preds = %28, %21
  %24 = phi i32 [ 99, %21 ], [ %30, %28 ]
  %25 = tail call i32 @rcar_pci_read_reg(ptr noundef %0, i32 noundef 262156) #8
  %26 = and i32 %25, 16777216
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #8
  %30 = add nsw i32 %24, -1
  %31 = icmp eq i32 %24, 0
  br i1 %31, label %32, label %23

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.28) #9
  br label %33

33:                                               ; preds = %32, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_resume(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @rcar_pcie_parse_map_dma_ranges(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rcar_pcie_host, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.8) #9
  br label %24

13:                                               ; preds = %7
  %14 = tail call i32 @rcar_pci_read_reg(ptr noundef %4, i32 noundef 69716) #8
  %15 = lshr i32 %14, 20
  %16 = and i32 %15, 63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %16) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !16
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @of_address_to_resource(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %2) #8
  call void @rcar_pci_write_reg(ptr noundef %4, i32 noundef 0, i32 noundef 8268) #8
  %20 = load i32, ptr %2, align 4
  %21 = or i32 %20, 1
  call void @rcar_pci_write_reg(ptr noundef %4, i32 noundef %21, i32 noundef 8264) #8
  %22 = getelementptr inbounds %struct.rcar_pcie_host, ptr %4, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  call void @rcar_pci_write_reg(ptr noundef %4, i32 noundef %23, i32 noundef 8272) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  call fastcc void @rcar_pcie_hw_enable(ptr noundef %4)
  br label %24

24:                                               ; preds = %13, %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pcie_resume_noirq(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @rcar_pci_read_reg(ptr noundef %3, i32 noundef 69724) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @rcar_pci_read_reg(ptr noundef %3, i32 noundef 8192) #8
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %1
  tail call void @rcar_pci_write_reg(ptr noundef %3, i32 noundef -2130771968, i32 noundef 69720) #8
  tail call void @rcar_pci_write_reg(ptr noundef %3, i32 noundef 1, i32 noundef 8192) #8
  %11 = tail call i32 @rcar_pcie_wait_for_dl(ptr noundef %3) #8
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3534830}
!9 = !{i64 2154182377}
!10 = !{i64 2154183469}
!11 = !{i64 3534412}
!12 = !{i64 2154185586}
!13 = !{i64 2154185929}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154187518}
!16 = !{!"auto-init"}
!17 = !{i32 0, i32 33}
!18 = !{i64 2154149648}
