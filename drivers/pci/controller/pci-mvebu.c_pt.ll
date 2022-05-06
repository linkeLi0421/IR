; ModuleID = '/llk/IR/drivers/pci/controller/pci-mvebu.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-mvebu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_bridge_emul_ops = type { ptr, ptr, ptr, ptr }
%struct.mvebu_pcie_window = type { i32, i32, i32 }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.mvebu_pcie_port = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.pci_bridge_emul, ptr, ptr, %struct.mvebu_pcie_window, %struct.mvebu_pcie_window, i32, %struct.resource }
%struct.pci_bridge_emul = type { %struct.pci_bridge_emul_conf, %struct.pci_bridge_emul_pcie_conf, ptr, ptr, ptr, ptr, i8 }
%struct.pci_bridge_emul_conf = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, [2 x i32], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i16, i16, i8, [3 x i8], i32, i8, i8, i16 }
%struct.pci_bridge_emul_pcie_conf = type { i8, i8, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.mvebu_pcie = type { ptr, ptr, %struct.resource, %struct.resource, %struct.resource, %struct.resource, i32 }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pci_mvebu__234_1413_mvebu_pcie_driver_init6 = internal global ptr @mvebu_pcie_driver_init, section ".initcall6.init", align 4
@mvebu_pcie_driver = internal global %struct.platform_driver { ptr @mvebu_pcie_probe, ptr @mvebu_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_pcie_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mvebu_pcie_driver_exit = internal global ptr @mvebu_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [65 x i8] c"pci_mvebu.author=Thomas Petazzoni <thomas.petazzoni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [47 x i8] c"pci_mvebu.author=Pali Roh\C3\A1r <pali@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [50 x i8] c"pci_mvebu.description=Marvell EBU PCIe controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [48 x i8] c"pci_mvebu.file=drivers/pci/controller/pci-mvebu\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [25 x i8] c"pci_mvebu.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"mvebu-pcie\00", align 1
@mvebu_pcie_of_match_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mvebu_pcie_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mvebu_pcie_suspend, ptr @mvebu_pcie_resume, ptr @mvebu_pcie_suspend, ptr @mvebu_pcie_resume, ptr @mvebu_pcie_suspend, ptr @mvebu_pcie_resume, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: cannot map registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: cannot init emulated bridge\0A\00", align 1
@mvebu_pcie_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr null, ptr @mvebu_pcie_rd_conf, ptr @mvebu_pcie_wr_conf }, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid memory aperture size\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PCI MEM\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"PCI I/O\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"marvell,pcie-port\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"ignoring %pOF, missing pcie-port property\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"marvell,pcie-lane\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"pcie%d.%d\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"%s: invalid function number, must be zero\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%s: cannot get tgt/attr for mem window\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%s-reset\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%pOF: reset gpio is active low\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"%s: cannot get clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"reset-delay-us\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mvebu_pci_bridge_emul_ops = internal global %struct.pci_bridge_emul_ops { ptr @mvebu_pci_bridge_emul_base_conf_read, ptr @mvebu_pci_bridge_emul_pcie_conf_read, ptr @mvebu_pci_bridge_emul_base_conf_write, ptr @mvebu_pci_bridge_emul_pcie_conf_write }, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"drivers/pci/controller/pci-mvebu.c\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"%s %s: Attempt to set IO when IO is disabled\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"Could not create MBus window at [mem %pa-%pa]: %d\0A\00", align 1
@__const.mvebu_pcie_handle_membase_change.desired = private unnamed_addr constant %struct.mvebu_pcie_window { i32 0, i32 -1, i32 0 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_mvebu_pcie_driver_exit, ptr @__initcall__kmod_pci_mvebu__234_1413_mvebu_pcie_driver_init6, ptr @mvebu_pcie_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_pcie_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvebu_pcie_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_pcie_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %4, i32 noundef 140) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %291, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 16
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %11, align 8
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 9, i32 1
  tail call void @mvebu_mbus_get_pcie_mem_aperture(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 9, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %14, align 4
  %18 = add i32 %16, 1
  %19 = icmp eq i32 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.3) #10
  br label %291

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 9, i32 3
  store ptr @.str.4, ptr %22, align 4
  %23 = getelementptr %struct.pci_host_bridge, ptr %7, i32 0, i32 7
  tail call void @pci_add_resource(ptr noundef %23, ptr noundef %14) #9
  %24 = tail call i32 @devm_request_resource(ptr noundef %13, ptr noundef nonnull @iomem_resource, ptr noundef %14) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %291

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 0, i32 1, i32 1
  tail call void @mvebu_mbus_get_pcie_io_aperture(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %27, align 4
  %31 = add i32 %29, 1
  %32 = icmp eq i32 %31, %30
  br i1 %32, label %48, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 2
  %37 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 5
  store i32 %35, ptr %37, align 4
  %38 = load i32, ptr @pcibios_min_io, align 4
  store i32 %38, ptr %36, align 4
  %39 = sub i32 %29, %30
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 983039) #9
  %41 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 4
  store ptr @.str.5, ptr %42, align 4
  %43 = tail call i32 @devm_pci_remap_iospace(ptr noundef %13, ptr noundef %36, i32 noundef %30) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %291

45:                                               ; preds = %33
  tail call void @pci_add_resource(ptr noundef %23, ptr noundef %36) #9
  %46 = tail call i32 @devm_request_resource(ptr noundef %13, ptr noundef nonnull @ioport_resource, ptr noundef %36) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %291

48:                                               ; preds = %45, %26
  %49 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %51, %48
  %52 = phi i32 [ %54, %51 ], [ 0, %48 ]
  %53 = phi ptr [ %55, %51 ], [ %49, %48 ]
  %54 = add i32 %52, 1
  %55 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %53) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %51

57:                                               ; preds = %51, %48
  %58 = phi i32 [ 0, %48 ], [ %54, %51 ]
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 260) #9
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %61, label %63, !prof !8

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 0, i32 1
  store ptr null, ptr %62, align 4
  br label %291

63:                                               ; preds = %57
  %64 = extractvalue { i32, i1 } %59, 0
  %65 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %64, i32 noundef 3520) #9
  %66 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %65, null
  br i1 %67, label %291, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 11, i32 4
  br label %283

73:                                               ; preds = %172, %68
  %74 = phi i32 [ %173, %172 ], [ 0, %68 ]
  %75 = phi ptr [ %174, %172 ], [ %69, %68 ]
  %76 = load ptr, ptr %66, align 4
  %77 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74
  %78 = load ptr, ptr %10, align 4
  %79 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %80 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 14
  store ptr %10, ptr %80, align 4
  %81 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 2
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %75, ptr noundef nonnull @.str.6, ptr noundef %81, i32 noundef 1, i32 noundef 0) #9
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %85, label %84

84:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.7, ptr noundef nonnull %75) #10
  br label %163

85:                                               ; preds = %73
  %86 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 3
  %87 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %75, ptr noundef nonnull @.str.8, ptr noundef %86, i32 noundef 1, i32 noundef 0) #9
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, ptr %86, align 4
  br label %92

91:                                               ; preds = %85
  store i32 0, ptr %86, align 4
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = load i32, ptr %81, align 4
  %95 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %79, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %94, i32 noundef %93) #9
  store ptr %95, ptr %77, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %170, label %97

97:                                               ; preds = %92
  %98 = call i32 @of_pci_get_devfn(ptr noundef nonnull %75) #9
  %99 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 4
  store i32 %98, ptr %99, align 4
  %100 = icmp slt i32 %98, 0
  br i1 %100, label %163, label %101

101:                                              ; preds = %97
  %102 = and i32 %98, 7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.10, ptr noundef %105) #10
  br label %163

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.platform_device, ptr %78, i32 0, i32 3, i32 25
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 5
  %110 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 6
  %111 = call fastcc i32 @mvebu_get_tgt_attr(ptr noundef %108, i32 noundef %98, i32 noundef 512, ptr noundef %109, ptr noundef %110) #9
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.11, ptr noundef %114) #10
  br label %163

115:                                              ; preds = %106
  %116 = load i32, ptr %28, align 4
  %117 = load i32, ptr %27, align 4
  %118 = add i32 %116, 1
  %119 = icmp eq i32 %118, %117
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %107, align 8
  %122 = load i32, ptr %99, align 4
  %123 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 7
  %124 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 8
  %125 = call fastcc i32 @mvebu_get_tgt_attr(ptr noundef %121, i32 noundef %122, i32 noundef 256, ptr noundef %123, ptr noundef %124) #9
  br label %129

126:                                              ; preds = %115
  %127 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 7
  store i32 -1, ptr %127, align 4
  %128 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 8
  store i32 -1, ptr %128, align 4
  br label %129

129:                                              ; preds = %126, %120
  %130 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %75, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %3) #9
  %131 = icmp eq i32 %130, -517
  br i1 %131, label %170, label %132

132:                                              ; preds = %129
  %133 = icmp ult i32 %130, 2048
  br i1 %133, label %134, label %152

134:                                              ; preds = %132
  %135 = load ptr, ptr %77, align 4
  %136 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %79, i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef %135) #9
  %137 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 11
  store ptr %136, ptr %137, align 4
  %138 = icmp eq ptr %136, null
  br i1 %138, label %170, label %139

139:                                              ; preds = %134
  %140 = load i32, ptr %3, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.14, ptr noundef nonnull %75) #10
  %144 = load ptr, ptr %137, align 4
  br label %145

145:                                              ; preds = %143, %139
  %146 = phi ptr [ %144, %143 ], [ %136, %139 ]
  %147 = phi i32 [ 4, %143 ], [ 2, %139 ]
  %148 = call i32 @devm_gpio_request_one(ptr noundef %79, i32 noundef %130, i32 noundef %147, ptr noundef %146) #9
  switch i32 %148, label %163 [
    i32 0, label %149
    i32 -517, label %170
  ]

149:                                              ; preds = %145
  %150 = call ptr @gpio_to_desc(i32 noundef %130) #9
  %151 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 10
  store ptr %150, ptr %151, align 4
  br label %152

152:                                              ; preds = %149, %132
  %153 = call ptr @of_clk_get_by_name(ptr noundef nonnull %75, ptr noundef null) #9
  %154 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 9
  store ptr %153, ptr %154, align 4
  %155 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.15, ptr noundef %157) #10
  br label %163

158:                                              ; preds = %152
  %159 = call i32 @devm_add_action(ptr noundef %79, ptr noundef nonnull @mvebu_pcie_port_clk_put, ptr noundef %77) #9
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load ptr, ptr %154, align 4
  call void @clk_put(ptr noundef %162) #9
  br label %170

163:                                              ; preds = %156, %145, %113, %104, %97, %84
  %164 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 11
  %165 = load ptr, ptr %164, align 4
  call void @devm_kfree(ptr noundef %79, ptr noundef %165) #9
  store ptr null, ptr %164, align 4
  %166 = load ptr, ptr %77, align 4
  call void @devm_kfree(ptr noundef %79, ptr noundef %166) #9
  store ptr null, ptr %77, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %172

167:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %168 = getelementptr %struct.mvebu_pcie_port, ptr %76, i32 %74, i32 13
  store ptr %75, ptr %168, align 4
  %169 = add i32 %74, 1
  br label %172

170:                                              ; preds = %161, %145, %134, %129, %92
  %171 = phi i32 [ %159, %161 ], [ -12, %92 ], [ -517, %129 ], [ %148, %145 ], [ -12, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @of_node_put(ptr noundef nonnull %75) #9
  br label %291

172:                                              ; preds = %167, %163
  %173 = phi i32 [ %74, %163 ], [ %169, %167 ]
  %174 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %75) #9
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %73

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 1, i32 0, i32 11, i32 4
  store i32 %173, ptr %177, align 4
  %178 = icmp sgt i32 %173, 0
  br i1 %178, label %179, label %283

179:                                              ; preds = %279, %176
  %180 = phi i32 [ %280, %279 ], [ 0, %176 ]
  %181 = load ptr, ptr %66, align 4
  %182 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180
  %183 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 13
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %279, label %186

186:                                              ; preds = %179
  %187 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 9
  %188 = load ptr, ptr %187, align 4
  %189 = call i32 @clk_prepare(ptr noundef %188) #9
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = call i32 @clk_enable(ptr noundef %188) #9
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  call void @clk_unprepare(ptr noundef %188) #9
  br label %195

195:                                              ; preds = %194, %186
  %196 = phi i32 [ %189, %186 ], [ %192, %194 ]
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %279, label %198

198:                                              ; preds = %195, %191
  %199 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 10
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 100000, ptr %2, align 4
  %203 = load ptr, ptr %183, align 4
  %204 = call i32 @of_property_read_variable_u32_array(ptr noundef %203, ptr noundef nonnull @.str.17, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %205(i32 noundef 21474800) #9
  %206 = load ptr, ptr %199, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %206, i32 noundef 0) #9
  %207 = load i32, ptr %2, align 4
  %208 = udiv i32 %207, 1000
  call void @msleep(i32 noundef %208) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %209

209:                                              ; preds = %202, %198
  %210 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 18
  %211 = call i32 @of_address_to_resource(ptr noundef nonnull %184, i32 noundef 0, ptr noundef %210) #9
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = inttoptr i32 %211 to ptr
  br label %217

215:                                              ; preds = %209
  %216 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %210) #9
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi ptr [ %214, %213 ], [ %216, %215 ]
  %219 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 1
  store ptr %218, ptr %219, align 4
  %220 = icmp ugt ptr %218, inttoptr (i32 -4096 to ptr)
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load ptr, ptr %182, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %222) #10
  store ptr null, ptr %219, align 4
  %223 = load ptr, ptr %199, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %223, i32 noundef 1) #9
  %224 = load ptr, ptr %187, align 4
  call void @clk_disable(ptr noundef %224) #9
  call void @clk_unprepare(ptr noundef %224) #9
  br label %279

225:                                              ; preds = %217
  %226 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12
  %227 = getelementptr i8, ptr %218, i32 96
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  store i16 4523, ptr %226, align 4
  %229 = load ptr, ptr %219, align 4
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %231 = lshr i32 %230, 16
  %232 = trunc i32 %231 to i16
  %233 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 0, i32 1
  store i16 %232, ptr %233, align 2
  %234 = load ptr, ptr %219, align 4
  %235 = getelementptr i8, ptr %234, i32 8
  %236 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %237 = and i32 %236, 255
  %238 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 0, i32 4
  store i32 %237, ptr %238, align 4
  %239 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 7
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %249, label %242

242:                                              ; preds = %225
  %243 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 8
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, -1
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 0, i32 14
  store i8 1, ptr %247, align 4
  %248 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 0, i32 15
  store i8 1, ptr %248, align 1
  br label %249

249:                                              ; preds = %246, %242, %225
  %250 = lshr i32 %228, 16
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 15
  %253 = zext i8 %252 to i16
  %254 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 1, i32 2
  store i16 %253, ptr %254, align 2
  %255 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 6
  store i8 1, ptr %255, align 4
  %256 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 5
  store ptr %182, ptr %256, align 4
  %257 = getelementptr %struct.mvebu_pcie_port, ptr %181, i32 %180, i32 12, i32 2
  store ptr @mvebu_pci_bridge_emul_ops, ptr %257, align 4
  %258 = call i32 @pci_bridge_emul_init(ptr noundef %226, i32 noundef 1) #9
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %249
  %261 = load ptr, ptr %182, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %261) #10
  %262 = load ptr, ptr %219, align 4
  call void @devm_iounmap(ptr noundef %4, ptr noundef %262) #9
  store ptr null, ptr %219, align 4
  %263 = load ptr, ptr %199, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %263, i32 noundef 1) #9
  %264 = load ptr, ptr %187, align 4
  call void @clk_disable(ptr noundef %264) #9
  call void @clk_unprepare(ptr noundef %264) #9
  br label %279

265:                                              ; preds = %249
  call fastcc void @mvebu_pcie_setup_hw(ptr noundef %182)
  %266 = load ptr, ptr %219, align 4
  %267 = getelementptr i8, ptr %266, i32 6660
  %268 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %269 = and i32 %268, -2031617
  %270 = or i32 %269, 65536
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  %271 = load ptr, ptr %219, align 4
  %272 = getelementptr i8, ptr %271, i32 6660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 %270) #9, !srcloc !13
  %273 = load ptr, ptr %219, align 4
  %274 = getelementptr i8, ptr %273, i32 6660
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #9, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %276 = and i32 %275, -65281
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  call void @arm_heavy_mb() #9
  %277 = load ptr, ptr %219, align 4
  %278 = getelementptr i8, ptr %277, i32 6660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %276) #9, !srcloc !13
  br label %279

279:                                              ; preds = %265, %260, %221, %195, %179
  %280 = add nuw nsw i32 %180, 1
  %281 = load i32, ptr %177, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %179, label %283

283:                                              ; preds = %279, %176, %71
  %284 = phi ptr [ %177, %176 ], [ %72, %71 ], [ %177, %279 ]
  %285 = phi i32 [ 0, %176 ], [ 0, %71 ], [ %280, %279 ]
  store i32 %285, ptr %284, align 4
  %286 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 4
  store ptr %10, ptr %286, align 4
  %287 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 2
  store ptr @mvebu_pcie_ops, ptr %287, align 4
  %288 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 14
  store ptr @mvebu_pcie_align_resource, ptr %288, align 4
  %289 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 10
  store ptr @mvebu_pcie_map_irq, ptr %289, align 4
  %290 = call i32 @pci_host_probe(ptr noundef nonnull %7) #9
  br label %291

291:                                              ; preds = %283, %170, %63, %61, %45, %33, %21, %20, %1
  %292 = phi i32 [ %171, %170 ], [ %290, %283 ], [ -12, %1 ], [ -12, %63 ], [ -12, %61 ], [ %46, %45 ], [ %43, %33 ], [ %24, %21 ], [ -22, %20 ]
  ret i32 %292
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pci_lock_rescan_remove() #9
  %4 = getelementptr i8, ptr %3, i32 -104
  %5 = load ptr, ptr %4, align 8
  tail call void @pci_stop_root_bus(ptr noundef %5) #9
  %6 = load ptr, ptr %4, align 8
  tail call void @pci_remove_root_bus(ptr noundef %6) #9
  tail call void @pci_unlock_rescan_remove() #9
  %7 = getelementptr inbounds %struct.mvebu_pcie, ptr %3, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mvebu_pcie, ptr %3, i32 0, i32 1
  br label %12

12:                                               ; preds = %68, %10
  %13 = phi i32 [ %8, %10 ], [ %69, %68 ]
  %14 = phi i32 [ 0, %10 ], [ %70, %68 ]
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %68, label %19

19:                                               ; preds = %12
  %20 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14
  %21 = getelementptr i8, ptr %17, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %23 = and i32 %22, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr i8, ptr %26, i32 6416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #9, !srcloc !13
  %28 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 12
  tail call void @pci_bridge_emul_cleanup(ptr noundef %28) #9
  tail call fastcc void @mvebu_pcie_disable_wins(ptr noundef %20)
  %29 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 16, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %19
  %33 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 16
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %42, %35 ], [ %34, %32 ]
  %37 = phi i32 [ %43, %35 ], [ %30, %32 ]
  %38 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 true) #9, !range !14
  %39 = xor i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = tail call i32 @mvebu_mbus_del_window(i32 noundef %36, i32 noundef %40) #9
  %42 = add i32 %40, %36
  %43 = sub i32 %37, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %35

45:                                               ; preds = %35, %19
  %46 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 15, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 15
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i32 [ %59, %52 ], [ %51, %49 ]
  %54 = phi i32 [ %60, %52 ], [ %47, %49 ]
  %55 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 true) #9, !range !14
  %56 = xor i32 %55, 31
  %57 = shl nuw i32 1, %56
  %58 = tail call i32 @mvebu_mbus_del_window(i32 noundef %53, i32 noundef %57) #9
  %59 = add i32 %57, %53
  %60 = sub i32 %54, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %52

62:                                               ; preds = %52, %45
  %63 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 10
  %64 = load ptr, ptr %63, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %64, i32 noundef 1) #9
  %65 = getelementptr %struct.mvebu_pcie_port, ptr %15, i32 %14, i32 9
  %66 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %66) #9
  tail call void @clk_unprepare(ptr noundef %66) #9
  %67 = load i32, ptr %7, align 4
  br label %68

68:                                               ; preds = %62, %12
  %69 = phi i32 [ %13, %12 ], [ %67, %62 ]
  %70 = add nuw nsw i32 %14, 1
  %71 = icmp slt i32 %70, %69
  br i1 %71, label %12, label %72

72:                                               ; preds = %68, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvebu_pcie_setup_hw(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 6656
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %6 = or i32 %5, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 6656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #9, !srcloc !13
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %12 = and i32 %11, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !13
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %18 = and i32 %17, 255
  %19 = or i32 %18, 100925440
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !13
  %22 = tail call ptr @mv_mbus_dram_info() #9
  tail call fastcc void @mvebu_pcie_disable_wins(ptr noundef %0) #9
  %23 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %22, i32 0, i32 2
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %63, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %62, %28 ]
  %31 = getelementptr %struct.mbus_dram_window, ptr %27, i32 %29, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, -65536
  %35 = shl i32 %29, 4
  %36 = add i32 %35, 6180
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #9, !srcloc !13
  %39 = add i32 %35, 6188
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr i8, ptr %40, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 0) #9, !srcloc !13
  %42 = getelementptr %struct.mbus_dram_window, ptr %27, i32 %29, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr %struct.mbus_dram_window, ptr %27, i32 %29, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = load i8, ptr %22, align 8
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 4
  %51 = trunc i64 %43 to i32
  %52 = add i32 %51, -1
  %53 = and i32 %52, -65536
  %54 = or i32 %53, %47
  %55 = or i32 %54, %50
  %56 = or i32 %55, 1
  %57 = add i32 %35, 6176
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %58 = load ptr, ptr %2, align 4
  %59 = getelementptr i8, ptr %58, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #9, !srcloc !13
  %60 = load i64, ptr %42, align 8
  %61 = trunc i64 %60 to i32
  %62 = add i32 %30, %61
  %63 = add nuw nsw i32 %29, 1
  %64 = load i32, ptr %23, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %28, label %66

66:                                               ; preds = %28, %1
  %67 = phi i32 [ 0, %1 ], [ %62, %28 ]
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67) #9, !range !14
  %69 = icmp ult i32 %68, 2
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = icmp eq i32 %67, 0
  %72 = tail call i32 @llvm.ctlz.i32(i32 %67, i1 false) #9, !range !14
  %73 = sub nuw nsw i32 32, %72
  %74 = shl nuw i32 1, %73
  %75 = select i1 %71, i32 1, i32 %74
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i32 [ %75, %70 ], [ %67, %66 ]
  %78 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %22, i32 0, i32 2, i32 0, i32 2
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr i8, ptr %83, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #9, !srcloc !13
  %85 = add i32 %77, -1
  %86 = and i32 %85, -65536
  %87 = or i32 %86, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr i8, ptr %88, i32 6148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #9, !srcloc !13
  %90 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 18
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, -1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %93 = load ptr, ptr %2, align 4
  %94 = getelementptr i8, ptr %93, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %95 = load ptr, ptr %2, align 4
  %96 = getelementptr i8, ptr %95, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 0) #9, !srcloc !13
  %97 = load ptr, ptr %2, align 4
  %98 = getelementptr i8, ptr %97, i32 6416
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %100 = or i32 %99, 251658240
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %101 = load ptr, ptr %2, align 4
  %102 = getelementptr i8, ptr %101, i32 6416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #9, !srcloc !13
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @mvebu_pcie_align_resource(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = add i32 %2, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #9, !range !14
  %19 = lshr i32 -2147483648, %18
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 65536)
  %21 = add i32 %20, -1
  %22 = or i32 %21, %17
  %23 = add i32 %22, 1
  br label %35

24:                                               ; preds = %11
  %25 = and i32 %13, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = add i32 %2, -1
  %29 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #9, !range !14
  %30 = lshr i32 -2147483648, %29
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 1048576)
  %32 = add i32 %31, -1
  %33 = or i32 %32, %28
  %34 = add i32 %33, 1
  br label %35

35:                                               ; preds = %27, %24, %16, %5
  %36 = phi i32 [ %23, %16 ], [ %34, %27 ], [ %2, %5 ], [ %2, %24 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_map_irq(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @of_irq_parse_and_map_pci(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #9
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_mbus_get_pcie_mem_aperture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_mbus_get_pcie_io_aperture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pci_remap_iospace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_get_tgt_attr(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  store i32 -1, ptr %3, align 4
  store i32 -1, ptr %4, align 4
  %7 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %5
  %10 = call i32 @of_n_addr_cells(ptr noundef %0) #9
  %11 = add i32 %10, 5
  %12 = load i32, ptr %6, align 4
  %13 = lshr i32 %12, 2
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %63, label %15

15:                                               ; preds = %9
  %16 = udiv i32 %13, %11
  %17 = icmp eq i32 %10, 0
  %18 = lshr i32 %1, 3
  %19 = and i32 %18, 31
  %20 = call i32 @llvm.smax.i32(i32 %16, i32 1)
  br label %21

21:                                               ; preds = %59, %15
  %22 = phi i32 [ 0, %15 ], [ %60, %59 ]
  %23 = phi ptr [ %7, %15 ], [ %61, %59 ]
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i32, ptr %23, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26) #9
  br i1 %17, label %48, label %28

28:                                               ; preds = %21
  %29 = getelementptr i32, ptr %23, i32 3
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ %39, %30 ], [ 0, %28 ]
  %32 = phi i32 [ %34, %30 ], [ %10, %28 ]
  %33 = phi ptr [ %40, %30 ], [ %29, %28 ]
  %34 = add i32 %32, -1
  %35 = shl i64 %31, 32
  %36 = load i32, ptr %33, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = zext i32 %37 to i64
  %39 = or i64 %35, %38
  %40 = getelementptr i32, ptr %33, i32 1
  %41 = icmp eq i32 %34, 0
  br i1 %41, label %42, label %30

42:                                               ; preds = %30
  %43 = lshr i64 %35, 48
  %44 = trunc i64 %43 to i32
  %45 = lshr i64 %35, 56
  %46 = trunc i64 %45 to i32
  %47 = and i32 %44, 255
  br label %48

48:                                               ; preds = %42, %21
  %49 = phi i32 [ 0, %21 ], [ %47, %42 ]
  %50 = phi i32 [ 0, %21 ], [ %46, %42 ]
  %51 = and i32 %24, 3
  switch i32 %51, label %59 [
    i32 1, label %53
    i32 2, label %52
  ]

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ 512, %52 ], [ 256, %48 ]
  %55 = icmp eq i32 %19, %27
  %56 = icmp eq i32 %54, %2
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 %50, ptr %3, align 4
  store i32 %49, ptr %4, align 4
  br label %63

59:                                               ; preds = %53, %48
  %60 = add nuw nsw i32 %22, 1
  %61 = getelementptr i32, ptr %23, i32 %11
  %62 = icmp eq i32 %60, %20
  br i1 %62, label %63, label %21

63:                                               ; preds = %59, %58, %9, %5
  %64 = phi i32 [ 0, %58 ], [ -22, %5 ], [ -2, %9 ], [ -2, %59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pcie_port_clk_put(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_put(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pci_bridge_emul_base_conf_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %34 [
    i32 4, label %6
    i32 24, label %11
    i32 60, label %21
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %32

11:                                               ; preds = %3
  %12 = getelementptr i32, ptr %0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -65281
  %15 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 6660
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %19 = and i32 %18, 65280
  %20 = or i32 %19, %14
  br label %32

21:                                               ; preds = %3
  %22 = getelementptr i32, ptr %0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 6656
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %28 = and i32 %23, -4194305
  %29 = lshr i32 %27, 2
  %30 = and i32 %29, 4194304
  %31 = or i32 %30, %28
  br label %32

32:                                               ; preds = %21, %11, %6
  %33 = phi i32 [ %10, %6 ], [ %20, %11 ], [ %31, %21 ]
  store i32 %33, ptr %2, align 4
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ 1, %3 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pci_bridge_emul_pcie_conf_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, -4
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 30)
  switch i32 %7, label %51 [
    i32 0, label %8
    i32 1, label %13
    i32 2, label %18
    i32 3, label %24
    i32 5, label %49
    i32 7, label %29
    i32 8, label %34
    i32 9, label %39
    i32 11, label %44
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 100
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 104
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 108
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %23 = and i32 %22, -262145
  br label %49

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 112
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 6676
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 132
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 136
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %5, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 144
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  br label %49

49:                                               ; preds = %44, %39, %34, %29, %24, %18, %13, %8, %3
  %50 = phi i32 [ %12, %8 ], [ %17, %13 ], [ %23, %18 ], [ %28, %24 ], [ %33, %29 ], [ %38, %34 ], [ %43, %39 ], [ %48, %44 ], [ 4194304, %3 ]
  store i32 %50, ptr %2, align 4
  br label %51

51:                                               ; preds = %49, %3
  %52 = phi i32 [ 1, %3 ], [ 0, %49 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pci_bridge_emul_base_conf_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.mvebu_pcie_window, align 4
  %7 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %1, -4
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 30)
  switch i32 %10, label %135 [
    i32 0, label %11
    i32 6, label %29
    i32 7, label %53
    i32 11, label %84
    i32 5, label %105
    i32 14, label %121
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, -2
  store i16 %22, ptr %20, align 4
  %23 = and i32 %3, -2
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ %3, %15 ], [ %23, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %26 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #9, !srcloc !13
  br label %135

29:                                               ; preds = %5
  %30 = and i32 %4, 65535
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %135, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @mvebu_pcie_handle_iobase_change(ptr noundef %8)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %135, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 14
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 15
  store i8 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 15
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 15
  store i8 %41, ptr %39, align 1
  %42 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 23
  store i16 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 24
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %135, label %47

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %135, label %51

51:                                               ; preds = %47
  %52 = or i8 %37, -16
  store i8 %52, ptr %36, align 4
  br label %135

53:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.mvebu_pcie_handle_membase_change.desired, i32 12, i1 false) #9
  %54 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 12, i32 0, i32 18
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 12, i32 0, i32 17
  %57 = load i16, ptr %56, align 4
  %58 = icmp ult i16 %55, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = and i16 %57, -16
  %61 = zext i16 %60 to i32
  %62 = shl nuw i32 %61, 16
  store i32 %62, ptr %6, align 4
  %63 = zext i16 %55 to i32
  %64 = shl nuw i32 %63, 16
  %65 = or i32 %64, 1048575
  %66 = add i32 %65, 1
  %67 = sub i32 %66, %62
  %68 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %6, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %59, %53
  %70 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 15
  %75 = call fastcc i32 @mvebu_pcie_set_window(ptr noundef %8, i32 noundef %71, i32 noundef %73, ptr noundef nonnull %6, ptr noundef %74) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %135, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 17
  %79 = load i16, ptr %78, align 4
  %80 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 18
  %81 = load i16, ptr %80, align 2
  %82 = and i16 %81, 15
  store i16 %82, ptr %80, align 2
  %83 = or i16 %79, -16
  store i16 %83, ptr %78, align 4
  br label %135

84:                                               ; preds = %5
  %85 = tail call fastcc i32 @mvebu_pcie_handle_iobase_change(ptr noundef %8)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %135, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 14
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, 15
  store i8 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 15
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 15
  store i8 %93, ptr %91, align 1
  %94 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 23
  store i16 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 24
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %135, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %135, label %103

103:                                              ; preds = %99
  %104 = or i8 %89, -16
  store i8 %104, ptr %88, align 4
  br label %135

105:                                              ; preds = %5
  %106 = and i32 %4, 65280
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %135, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %0, i32 0, i32 11
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr i8, ptr %113, i32 6660
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %116 = and i32 %115, -65281
  %117 = shl nuw nsw i32 %111, 8
  %118 = or i32 %116, %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %119 = load ptr, ptr %112, align 4
  %120 = getelementptr i8, ptr %119, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #9, !srcloc !13
  br label %135

121:                                              ; preds = %5
  %122 = and i32 %4, 4194304
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %8, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 6656
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %129 = and i32 %128, -16777217
  %130 = shl i32 %3, 2
  %131 = and i32 %130, 16777216
  %132 = or i32 %129, %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %133 = load ptr, ptr %125, align 4
  %134 = getelementptr i8, ptr %133, i32 6656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #9, !srcloc !13
  br label %135

135:                                              ; preds = %124, %121, %108, %105, %103, %99, %87, %84, %77, %69, %51, %47, %35, %32, %29, %24, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_pci_bridge_emul_pcie_conf_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.pci_bridge_emul, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %1, -8
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 29)
  switch i32 %9, label %34 [
    i32 0, label %10
    i32 1, label %14
    i32 3, label %19
    i32 4, label %26
    i32 5, label %30
  ]

10:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %3) #9, !srcloc !13
  br label %34

14:                                               ; preds = %5
  %15 = and i32 %3, -257
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #9, !srcloc !13
  br label %34

19:                                               ; preds = %5
  %20 = and i32 %3, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 6400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -268435457) #9, !srcloc !13
  br label %34

26:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %27 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %3) #9, !srcloc !13
  br label %34

30:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %31 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %3) #9, !srcloc !13
  br label %34

34:                                               ; preds = %30, %26, %22, %19, %14, %10, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_pcie_handle_iobase_change(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.mvebu_pcie_window, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %3 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 12, i32 0, i32 15
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 12, i32 0, i32 14
  %6 = load i8, ptr %5, align 4
  %7 = icmp ult i8 %4, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 12, i32 0, i32 24
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 12, i32 0, i32 23
  %12 = load i16, ptr %11, align 4
  %13 = icmp ult i16 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 16
  %20 = call fastcc i32 @mvebu_pcie_set_window(ptr noundef %0, i32 noundef %16, i32 noundef %18, ptr noundef nonnull %2, ptr noundef %19)
  br label %69

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %45

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %34 = tail call ptr @dev_driver_string(ptr noundef %33) #9
  %35 = load ptr, ptr %30, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %29
  %44 = phi ptr [ %42, %40 ], [ %38, %29 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 443, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %34, ptr noundef %44) #9
  br label %69

45:                                               ; preds = %25
  %46 = and i8 %6, -16
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = zext i16 %12 to i32
  %50 = shl nuw i32 %49, 16
  %51 = or i32 %50, %48
  %52 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %2, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 14
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mvebu_pcie, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %51
  store i32 %57, ptr %2, align 4
  %58 = zext i8 %4 to i32
  %59 = shl nuw nsw i32 %58, 8
  %60 = zext i16 %10 to i32
  %61 = shl nuw i32 %60, 16
  %62 = or i32 %59, 4095
  %63 = add nuw nsw i32 %62, 1
  %64 = add i32 %63, %61
  %65 = sub i32 %64, %51
  %66 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %2, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 16
  %68 = call fastcc i32 @mvebu_pcie_set_window(ptr noundef %0, i32 noundef %23, i32 noundef %27, ptr noundef nonnull %2, ptr noundef %67)
  br label %69

69:                                               ; preds = %45, %43, %14
  %70 = phi i32 [ %20, %14 ], [ %68, %45 ], [ -95, %43 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_pcie_set_window(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %4, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %100, label %23

23:                                               ; preds = %17, %11, %5
  %24 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %4, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %27, %23
  %28 = phi i32 [ %34, %27 ], [ %9, %23 ]
  %29 = phi i32 [ %35, %27 ], [ %25, %23 ]
  %30 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 true) #9, !range !14
  %31 = xor i32 %30, 31
  %32 = shl nuw i32 1, %31
  %33 = tail call i32 @mvebu_mbus_del_window(i32 noundef %28, i32 noundef %32) #9
  %34 = add i32 %32, %28
  %35 = sub i32 %29, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %27

37:                                               ; preds = %27
  store i32 0, ptr %24, align 4
  store i32 0, ptr %4, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %3, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %100, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %3, align 4
  %44 = getelementptr inbounds %struct.mvebu_pcie_window, ptr %3, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %43, ptr %6, align 4
  %46 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 14
  br label %47

47:                                               ; preds = %91, %42
  %48 = phi i32 [ undef, %42 ], [ %92, %91 ]
  %49 = phi i32 [ %40, %42 ], [ %93, %91 ]
  %50 = phi i32 [ %45, %42 ], [ %94, %91 ]
  %51 = phi i32 [ 0, %42 ], [ %95, %91 ]
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %99

54:                                               ; preds = %47
  %55 = call i32 @llvm.ctlz.i32(i32 %49, i1 true) #9, !range !14
  %56 = xor i32 %55, 31
  %57 = shl nuw i32 1, %56
  %58 = load i32, ptr %6, align 4
  %59 = call i32 @mvebu_mbus_add_window_remap_by_id(i32 noundef %1, i32 noundef %2, i32 noundef %58, i32 noundef %57, i32 noundef %50) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %62 = load i32, ptr %6, align 4
  %63 = add i32 %57, -1
  %64 = add i32 %63, %62
  store i32 %64, ptr %7, align 4
  %65 = load ptr, ptr %46, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.20, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %59) #10
  %68 = icmp eq i32 %51, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %61
  %70 = load i32, ptr %6, align 4
  %71 = sub i32 %70, %51
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %79, %72 ], [ %71, %69 ]
  %74 = phi i32 [ %80, %72 ], [ %51, %69 ]
  %75 = call i32 @llvm.ctlz.i32(i32 %74, i1 true) #9, !range !14
  %76 = xor i32 %75, 31
  %77 = shl nuw i32 1, %76
  %78 = call i32 @mvebu_mbus_del_window(i32 noundef %73, i32 noundef %77) #9
  %79 = add i32 %77, %73
  %80 = sub i32 %74, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %72

82:                                               ; preds = %72, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %91

83:                                               ; preds = %54
  %84 = sub i32 %49, %57
  %85 = add i32 %57, %51
  %86 = load i32, ptr %6, align 4
  %87 = add i32 %86, %57
  store i32 %87, ptr %6, align 4
  %88 = icmp eq i32 %50, -1
  %89 = add i32 %57, %50
  %90 = select i1 %88, i32 -1, i32 %89
  br label %91

91:                                               ; preds = %83, %82
  %92 = phi i32 [ %59, %82 ], [ %48, %83 ]
  %93 = phi i32 [ %49, %82 ], [ %84, %83 ]
  %94 = phi i32 [ %50, %82 ], [ %90, %83 ]
  %95 = phi i32 [ %51, %82 ], [ %85, %83 ]
  br i1 %60, label %47, label %96

96:                                               ; preds = %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %96
  store i32 0, ptr %24, align 4
  store i32 0, ptr %4, align 4
  br label %100

99:                                               ; preds = %96, %53
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %3, i32 12, i1 false)
  br label %100

100:                                              ; preds = %99, %98, %38, %17
  %101 = phi i32 [ %92, %98 ], [ 0, %99 ], [ 0, %17 ], [ 0, %38 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_del_window(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_mbus_add_window_remap_by_id(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mvebu_pcie_disable_wins(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.mvebu_pcie_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 6148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 6152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 6176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %21 = load ptr, ptr %2, align 4
  %22 = getelementptr i8, ptr %21, i32 6180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr i8, ptr %23, i32 6188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr i8, ptr %25, i32 6192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr i8, ptr %27, i32 6196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr i8, ptr %29, i32 6204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr i8, ptr %31, i32 6208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 6212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 6220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 6224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 6228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr i8, ptr %41, i32 6236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 6240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 6244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i8, ptr %47, i32 6252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr i8, ptr %49, i32 6272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr i8, ptr %51, i32 6276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr i8, ptr %53, i32 6284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_rd_conf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #2 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mvebu_pcie, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %87

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mvebu_pcie, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  br label %15

15:                                               ; preds = %36, %11
  %16 = phi i32 [ 0, %11 ], [ %37, %36 ]
  %17 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load i8, ptr %14, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %39, label %36

27:                                               ; preds = %20
  %28 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 12
  %29 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %28, i32 0, i32 11
  %30 = load i8, ptr %29, align 1
  %31 = icmp ult i8 %21, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %28, i32 0, i32 12
  %34 = load i8, ptr %33, align 2
  %35 = icmp ugt i8 %21, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %27, %23, %15
  %37 = add nuw nsw i32 %16, 1
  %38 = icmp eq i32 %37, %9
  br i1 %38, label %87, label %15

39:                                               ; preds = %23
  %40 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %87, label %45

42:                                               ; preds = %32
  %43 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %87, label %48

45:                                               ; preds = %39
  %46 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 12
  %47 = tail call i32 @pci_bridge_emul_conf_read(ptr noundef %46, i32 noundef %2, i32 noundef %3, ptr noundef %4) #9
  br label %87

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %18, i32 6660
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  %54 = load ptr, ptr %17, align 4
  %55 = getelementptr i8, ptr %54, i32 6396
  %56 = load i8, ptr %14, align 4
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 16
  %59 = shl i32 %1, 8
  %60 = and i32 %59, 63488
  %61 = or i32 %58, %60
  %62 = and i32 %59, 1792
  %63 = or i32 %61, %62
  %64 = shl i32 %2, 16
  %65 = and i32 %64, 251658240
  %66 = and i32 %2, 252
  %67 = or i32 %66, %65
  %68 = or i32 %63, %67
  %69 = or i32 %68, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %70 = load ptr, ptr %17, align 4
  %71 = getelementptr i8, ptr %70, i32 6392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #9, !srcloc !13
  switch i32 %3, label %84 [
    i32 1, label %72
    i32 2, label %77
    i32 4, label %82
  ]

72:                                               ; preds = %53
  %73 = and i32 %2, 3
  %74 = getelementptr i8, ptr %55, i32 %73
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %74) #9, !srcloc !15
  %76 = zext i8 %75 to i32
  br label %84

77:                                               ; preds = %53
  %78 = and i32 %2, 2
  %79 = getelementptr i8, ptr %55, i32 %78
  %80 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #9, !srcloc !16
  %81 = zext i16 %80 to i32
  br label %84

82:                                               ; preds = %53
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !10
  br label %84

84:                                               ; preds = %82, %77, %72, %53
  %85 = phi i32 [ %76, %72 ], [ %81, %77 ], [ %83, %82 ], [ -1, %53 ]
  %86 = phi i32 [ 0, %72 ], [ 0, %77 ], [ 0, %82 ], [ 135, %53 ]
  store i32 %85, ptr %4, align 4
  br label %87

87:                                               ; preds = %84, %48, %45, %42, %39, %36, %5
  %88 = phi i32 [ %47, %45 ], [ %86, %84 ], [ 134, %39 ], [ 134, %48 ], [ 134, %5 ], [ 134, %42 ], [ 134, %36 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_wr_conf(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mvebu_pcie, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %81

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mvebu_pcie, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  br label %15

15:                                               ; preds = %36, %11
  %16 = phi i32 [ 0, %11 ], [ %37, %36 ]
  %17 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load i8, ptr %14, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %39, label %36

27:                                               ; preds = %20
  %28 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 12
  %29 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %28, i32 0, i32 11
  %30 = load i8, ptr %29, align 1
  %31 = icmp ult i8 %21, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.pci_bridge_emul_conf, ptr %28, i32 0, i32 12
  %34 = load i8, ptr %33, align 2
  %35 = icmp ugt i8 %21, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32, %27, %23, %15
  %37 = add nuw nsw i32 %16, 1
  %38 = icmp eq i32 %37, %9
  br i1 %38, label %81, label %15

39:                                               ; preds = %23
  %40 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %81, label %45

42:                                               ; preds = %32
  %43 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %81, label %48

45:                                               ; preds = %39
  %46 = getelementptr %struct.mvebu_pcie_port, ptr %13, i32 %16, i32 12
  %47 = tail call i32 @pci_bridge_emul_conf_write(ptr noundef %46, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %81

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %18, i32 6660
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %48
  %54 = load ptr, ptr %17, align 4
  %55 = getelementptr i8, ptr %54, i32 6396
  %56 = load i8, ptr %14, align 4
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 16
  %59 = shl i32 %1, 8
  %60 = and i32 %59, 63488
  %61 = or i32 %58, %60
  %62 = and i32 %59, 1792
  %63 = or i32 %61, %62
  %64 = shl i32 %2, 16
  %65 = and i32 %64, 251658240
  %66 = and i32 %2, 252
  %67 = or i32 %66, %65
  %68 = or i32 %63, %67
  %69 = or i32 %68, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %70 = load ptr, ptr %17, align 4
  %71 = getelementptr i8, ptr %70, i32 6392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #9, !srcloc !13
  switch i32 %3, label %81 [
    i32 1, label %72
    i32 2, label %76
    i32 4, label %80
  ]

72:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %73 = trunc i32 %4 to i8
  %74 = and i32 %2, 3
  %75 = getelementptr i8, ptr %55, i32 %74
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 %73) #9, !srcloc !18
  br label %81

76:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %77 = trunc i32 %4 to i16
  %78 = and i32 %2, 2
  %79 = getelementptr i8, ptr %55, i32 %78
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %77) #9, !srcloc !20
  br label %81

80:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %4) #9, !srcloc !13
  br label %81

81:                                               ; preds = %80, %76, %72, %53, %48, %45, %42, %39, %36, %5
  %82 = phi i32 [ %47, %45 ], [ 134, %39 ], [ 134, %48 ], [ 135, %53 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 134, %5 ], [ 134, %42 ], [ 134, %36 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_conf_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bridge_emul_conf_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_and_map_pci(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_emul_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mvebu_pcie, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mvebu_pcie, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %21, %7
  %10 = phi i32 [ %5, %7 ], [ %22, %21 ]
  %11 = phi i32 [ 0, %7 ], [ %23, %21 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.mvebu_pcie_port, ptr %12, i32 %11, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %14, i32 6660
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %19 = getelementptr %struct.mvebu_pcie_port, ptr %12, i32 %11, i32 17
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i32 [ %10, %9 ], [ %20, %16 ]
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp slt i32 %23, %22
  br i1 %24, label %9, label %25

25:                                               ; preds = %21, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_pcie_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mvebu_pcie, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mvebu_pcie, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %23, %7
  %10 = phi i32 [ %5, %7 ], [ %24, %23 ]
  %11 = phi i32 [ 0, %7 ], [ %25, %23 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.mvebu_pcie_port, ptr %12, i32 %11, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.mvebu_pcie_port, ptr %12, i32 %11
  %18 = getelementptr %struct.mvebu_pcie_port, ptr %12, i32 %11, i32 17
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 6660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !13
  tail call fastcc void @mvebu_pcie_setup_hw(ptr noundef %17)
  %22 = load i32, ptr %4, align 4
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i32 [ %10, %9 ], [ %22, %16 ]
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp slt i32 %25, %24
  br i1 %26, label %9, label %27

27:                                               ; preds = %23, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 3852907}
!11 = !{i64 2153560433}
!12 = !{i64 2153559805}
!13 = !{i64 3852489}
!14 = !{i32 0, i32 33}
!15 = !{i64 3852687}
!16 = !{i64 3852069}
!17 = !{i64 2153562973}
!18 = !{i64 3852292}
!19 = !{i64 2153563225}
!20 = !{i64 3851869}
!21 = !{i64 2153563537}
