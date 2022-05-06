; ModuleID = '/llk/IR/drivers/pci/controller/dwc/pcie-designware-host.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-designware-host.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_host_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_host_init\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_host_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_host_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_host_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_host_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_own_conf_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_own_conf_map_bus\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_own_conf_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_pcie_setup_rc:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_pcie_setup_rc\22\09\09\09\09\09"
module asm "__kstrtabns_dw_pcie_setup_rc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }

@dw_pcie_msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pcie_irq_domain_alloc, ptr @dw_pcie_irq_domain_free, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@dw_pcie_msi_domain_info = internal global %struct.msi_domain_info { i32 15, ptr null, ptr @dw_pcie_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create MSI domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Missing *config* reg space\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dbi\00", align 1
@dw_pcie_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_own_conf_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, align 4
@dw_child_pcie_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_other_conf_map_bus, ptr @dw_pcie_rd_other_conf, ptr @dw_pcie_wr_other_conf }, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Invalid number of vectors\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@dw_pci_msi_bottom_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr @dw_pci_bottom_ack, ptr @dw_pci_bottom_mask, ptr null, ptr @dw_pci_bottom_unmask, ptr null, ptr @dw_pci_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pci_setup_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [94 x i8] c"Failed to set DMA mask to 32-bit. Devices with only 32-bit MSI support may not work properly\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Failed to map MSI data\0A\00", align 1
@__kstrtab_dw_pcie_host_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_host_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_host_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_host_init to i32), ptr @__kstrtab_dw_pcie_host_init, ptr @__kstrtabns_dw_pcie_host_init }, section "___ksymtab_gpl+dw_pcie_host_init", align 4
@__kstrtab_dw_pcie_host_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_host_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_host_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_host_deinit to i32), ptr @__kstrtab_dw_pcie_host_deinit, ptr @__kstrtabns_dw_pcie_host_deinit }, section "___ksymtab_gpl+dw_pcie_host_deinit", align 4
@__kstrtab_dw_pcie_own_conf_map_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_own_conf_map_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_own_conf_map_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_own_conf_map_bus to i32), ptr @__kstrtab_dw_pcie_own_conf_map_bus, ptr @__kstrtabns_dw_pcie_own_conf_map_bus }, section "___ksymtab_gpl+dw_pcie_own_conf_map_bus", align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Resources exceed number of ATU entries (%d)\00", align 1
@__kstrtab_dw_pcie_setup_rc = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_pcie_setup_rc = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_pcie_setup_rc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_pcie_setup_rc to i32), ptr @__kstrtab_dw_pcie_setup_rc, ptr @__kstrtabns_dw_pcie_setup_rc }, section "___ksymtab_gpl+dw_pcie_setup_rc", align 4
@dw_pcie_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr @dw_msi_ack_irq, ptr @dw_msi_mask_irq, ptr null, ptr @dw_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"PCI-MSI\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DWPCI-MSI\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_dw_pcie_host_deinit, ptr @__ksymtab_dw_pcie_host_init, ptr @__ksymtab_dw_pcie_own_conf_map_bus, ptr @__ksymtab_dw_pcie_setup_rc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_handle_msi_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = lshr i32 %5, 5
  %9 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 10
  br label %10

10:                                               ; preds = %30, %7
  %11 = phi i32 [ 0, %7 ], [ %32, %30 ]
  %12 = phi i32 [ 0, %7 ], [ %31, %30 ]
  %13 = mul nuw nsw i32 %11, 12
  %14 = add nuw nsw i32 %13, 2096
  %15 = call i32 @dw_pcie_read_dbi(ptr noundef %3, i32 noundef %14, i32 noundef 4) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  store i32 %15, ptr %2, align 4
  %18 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #9
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = shl i32 %11, 5
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %18, %20 ], [ %28, %22 ]
  %24 = load ptr, ptr %9, align 8
  %25 = add i32 %23, %21
  %26 = call i32 @generic_handle_domain_irq(ptr noundef %24, i32 noundef %25) #9
  %27 = add i32 %23, 1
  %28 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %27) #9
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %17, %10
  %31 = phi i32 [ %12, %10 ], [ 1, %17 ], [ 1, %22 ]
  %32 = add nuw nsw i32 %11, 1
  %33 = icmp eq i32 %32, %8
  br i1 %33, label %34, label %10

34:                                               ; preds = %30, %1
  %35 = phi i32 [ 0, %1 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_allocate_domains(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @__irq_domain_add(ptr noundef %8, i32 noundef %10, i32 noundef %10, i32 noundef 0, ptr noundef nonnull @dw_pcie_msi_domain_ops, ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 10
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #10
  br label %24

16:                                               ; preds = %1
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %11, i32 noundef 5) #9
  %17 = load ptr, ptr %12, align 8
  %18 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %8, ptr noundef nonnull @dw_pcie_msi_domain_info, ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 11
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1) #10
  %23 = load ptr, ptr %12, align 8
  tail call void @irq_domain_remove(ptr noundef %23) #9
  br label %24

24:                                               ; preds = %21, %16, %14
  %25 = phi i32 [ -12, %21 ], [ -12, %14 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dw_pcie_host_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %3, i32 -16
  %7 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 18
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @platform_get_resource_byname(ptr noundef %6, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %8, align 4
  %14 = add i32 %12, 1
  %15 = sub i32 %14, %13
  %16 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 1
  store i64 %18, ptr %19, align 8
  %20 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %3, ptr noundef nonnull %8) #9
  %21 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 2
  store ptr %20, ptr %21, align 8
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = ptrtoint ptr %20 to i32
  br label %196

25:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  br label %196

26:                                               ; preds = %10
  %27 = getelementptr i8, ptr %0, i32 -28
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = tail call ptr @platform_get_resource_byname(ptr noundef %6, i32 noundef 512, ptr noundef nonnull @.str.4) #9
  %32 = tail call ptr @devm_pci_remap_cfg_resource(ptr noundef %3, ptr noundef %31) #9
  store ptr %32, ptr %27, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = ptrtoint ptr %32 to i32
  br label %196

36:                                               ; preds = %30, %26
  %37 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %3, i32 noundef 0) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %196, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 17
  store ptr %37, ptr %40, align 8
  %41 = getelementptr inbounds %struct.pci_host_bridge, ptr %37, i32 0, i32 7
  br label %42

42:                                               ; preds = %46, %39
  %43 = phi ptr [ %41, %39 ], [ %44, %46 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %41
  br i1 %45, label %73, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.resource_entry, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.resource, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 7936
  %52 = icmp eq i32 %51, 256
  br i1 %52, label %53, label %42

53:                                               ; preds = %46
  %54 = icmp eq ptr %44, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.resource_entry, ptr %44, i32 0, i32 1
  %57 = getelementptr inbounds %struct.resource, ptr %48, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %48, align 4
  %60 = add i32 %58, 1
  %61 = sub i32 %60, %59
  %62 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 6
  store i32 %61, ptr %62, align 8
  %63 = load ptr, ptr %56, align 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.resource_entry, ptr %44, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = sub i32 %64, %66
  %68 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  %69 = load ptr, ptr %56, align 4
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @pci_pio_to_address(i32 noundef %70) #9
  %72 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 4
  store i32 %71, ptr %72, align 8
  br label %73

73:                                               ; preds = %55, %53, %42
  %74 = getelementptr i8, ptr %0, i32 236
  %75 = load i32, ptr %74, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 @of_pci_get_max_link_speed(ptr noundef %5) #9
  store i32 %78, ptr %74, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.pci_host_bridge, ptr %37, i32 0, i32 2
  store ptr @dw_pcie_ops, ptr %80, align 4
  %81 = getelementptr inbounds %struct.pci_host_bridge, ptr %37, i32 0, i32 3
  store ptr @dw_child_pcie_ops, ptr %81, align 32
  %82 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 8
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = tail call i32 %84(ptr noundef %0) #9
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %196

89:                                               ; preds = %86, %79
  %90 = tail call i32 @pci_msi_enabled() #9
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %157, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %82, align 8
  %94 = getelementptr inbounds %struct.dw_pcie_host_ops, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef null) #9
  %102 = icmp eq ptr %101, null
  br label %103

103:                                              ; preds = %100, %97, %92
  %104 = phi i1 [ false, %97 ], [ false, %92 ], [ %102, %100 ]
  %105 = zext i1 %104 to i8
  %106 = load i8, ptr %0, align 8
  %107 = and i8 %106, -2
  %108 = or i8 %107, %105
  store i8 %108, ptr %0, align 8
  %109 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 15
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 32, ptr %109, align 4
  br label %116

113:                                              ; preds = %103
  %114 = icmp ugt i32 %110, 256
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #10
  br label %196

116:                                              ; preds = %113, %112
  %117 = load ptr, ptr %82, align 8
  %118 = getelementptr inbounds %struct.dw_pcie_host_ops, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = tail call i32 %119(ptr noundef %0) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %196, label %157

124:                                              ; preds = %116
  br i1 %104, label %125, label %157

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  store i32 %130, ptr %126, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = tail call i32 @platform_get_irq(ptr noundef %6, i32 noundef 0) #9
  store i32 %133, ptr %126, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %196, label %135

135:                                              ; preds = %132, %129, %125
  %136 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 14
  store ptr @dw_pci_msi_bottom_irq_chip, ptr %136, align 8
  %137 = tail call i32 @dw_pcie_allocate_domains(ptr noundef %0)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %196

139:                                              ; preds = %135
  %140 = load i32, ptr %126, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  tail call void @irq_set_chained_handler_and_data(i32 noundef %140, ptr noundef nonnull @dw_chained_msi_isr, ptr noundef %0) #9
  br label %143

143:                                              ; preds = %142, %139
  %144 = load ptr, ptr %2, align 8
  %145 = tail call i32 @dma_set_mask(ptr noundef %144, i64 noundef 4294967295) #9
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.9) #10
  br label %149

149:                                              ; preds = %147, %143
  %150 = load ptr, ptr %2, align 8
  %151 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 12
  %152 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %150, ptr noundef %151)
  %153 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 13
  store i32 %152, ptr %153, align 4
  %154 = icmp eq i32 %152, -1
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.10) #10
  store i32 0, ptr %153, align 4
  br label %176

157:                                              ; preds = %149, %124, %121, %89
  tail call void @dw_pcie_iatu_detect(ptr noundef %2) #9
  tail call void @dw_pcie_setup_rc(ptr noundef %0)
  %158 = tail call i32 @dw_pcie_link_up(ptr noundef %2) #9
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %157
  %161 = getelementptr i8, ptr %0, i32 224
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.dw_pcie_ops, ptr %162, i32 0, i32 5
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = tail call i32 %166(ptr noundef %2) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168, %164, %160, %157
  %172 = tail call i32 @dw_pcie_wait_for_link(ptr noundef %2) #9
  %173 = getelementptr inbounds %struct.pci_host_bridge, ptr %37, i32 0, i32 4
  store ptr %0, ptr %173, align 4
  %174 = tail call i32 @pci_host_probe(ptr noundef nonnull %37) #9
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %171, %168, %155
  %177 = phi i32 [ %174, %171 ], [ %169, %168 ], [ %145, %155 ]
  %178 = load i8, ptr %0, align 8
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 9
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @irq_set_chained_handler_and_data(i32 noundef %183, ptr noundef null, ptr noundef null) #9
  br label %186

186:                                              ; preds = %185, %181
  %187 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 11
  %188 = load ptr, ptr %187, align 4
  tail call void @irq_domain_remove(ptr noundef %188) #9
  %189 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 10
  %190 = load ptr, ptr %189, align 8
  tail call void @irq_domain_remove(ptr noundef %190) #9
  %191 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 13
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %186
  %195 = load ptr, ptr %2, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %195, i32 noundef %192, i32 noundef 2, i32 noundef 2, i32 noundef 32) #9
  br label %196

196:                                              ; preds = %194, %186, %176, %171, %135, %132, %121, %115, %86, %36, %34, %25, %23
  %197 = phi i32 [ %24, %23 ], [ -22, %115 ], [ -19, %25 ], [ -12, %36 ], [ %87, %86 ], [ %122, %121 ], [ %133, %132 ], [ %137, %135 ], [ 0, %171 ], [ %177, %176 ], [ %35, %34 ], [ %177, %186 ], [ %177, %194 ]
  ret i32 %197
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_pio_to_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_max_link_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_chained_msi_isr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %9(ptr noundef %12) #9
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %15(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void %18(ptr noundef %16) #9
  br label %21

21:                                               ; preds = %20, %13, %11, %1
  %22 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @dw_handle_msi_irq(ptr noundef %23)
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi ptr [ %29, %27 ], [ %25, %21 ]
  %32 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %31(ptr noundef %32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #9
  %4 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %16, !prof !9

7:                                                ; preds = %2
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %8 = tail call ptr @dev_driver_string(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %8, ptr noundef %15) #9
  br label %16

16:                                               ; preds = %14, %2
  br i1 %3, label %25, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %1 to i32
  %20 = add i32 %19, 1073741824
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %19, 4095
  %24 = tail call i32 @dma_map_page_attrs(ptr noundef %0, ptr noundef %22, i32 noundef %23, i32 noundef 2, i32 noundef 2, i32 noundef 32) #9
  br label %25

25:                                               ; preds = %17, %16
  %26 = phi i32 [ %24, %17 ], [ -1, %16 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_iatu_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_setup_rc(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4) #9
  %4 = or i32 %3, 1
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4, i32 noundef %4) #9
  tail call void @dw_pcie_setup(ptr noundef %2) #9
  %5 = load i8, ptr %0, align 8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 32
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = lshr i32 %10, 5
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %20, %14 ], [ 0, %12 ]
  %16 = getelementptr %struct.pcie_port, ptr %0, i32 0, i32 16, i32 %15
  store i32 -1, ptr %16, align 4
  %17 = mul nuw nsw i32 %15, 12
  %18 = add nuw nsw i32 %17, 2092
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %18, i32 noundef 4, i32 noundef -1) #9
  %19 = add nuw nsw i32 %17, 2088
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef %19, i32 noundef 4, i32 noundef -1) #9
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %22, label %14

22:                                               ; preds = %14, %8, %1
  %23 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @pci_msi_enabled() #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8, ptr %0, align 8
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2080, i32 noundef 4, i32 noundef %24) #9
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2084, i32 noundef 4, i32 noundef 0) #9
  br label %32

32:                                               ; preds = %31, %27, %22
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 16, i32 noundef 4, i32 noundef 4) #9
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 20, i32 noundef 4, i32 noundef 0) #9
  %33 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 60, i32 noundef 4) #9
  %34 = and i32 %33, -65281
  %35 = or i32 %34, 256
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 60, i32 noundef 4, i32 noundef %35) #9
  %36 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 24, i32 noundef 4) #9
  %37 = and i32 %36, -16777216
  %38 = or i32 %37, 16711936
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 24, i32 noundef 4, i32 noundef %38) #9
  %39 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 4, i32 noundef 4) #9
  %40 = and i32 %39, -65536
  %41 = or i32 %40, 263
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef %41) #9
  %42 = getelementptr i8, ptr %0, i32 -8
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %45, %32
  %46 = phi i32 [ %47, %45 ], [ 0, %32 ]
  tail call void @dw_pcie_disable_atu(ptr noundef %2, i32 noundef %46, i32 noundef 2) #9
  %47 = add nuw i32 %46, 1
  %48 = load i32, ptr %42, align 8
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %45, label %50

50:                                               ; preds = %45, %32
  %51 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 17
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.pci_host_bridge, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 32
  %55 = icmp eq ptr %54, @dw_child_pcie_ops
  br i1 %55, label %56, label %120

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.pci_host_bridge, ptr %52, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %93, label %60

60:                                               ; preds = %87, %56
  %61 = phi ptr [ %88, %87 ], [ %52, %56 ]
  %62 = phi ptr [ %90, %87 ], [ %58, %56 ]
  %63 = phi i32 [ %89, %87 ], [ 0, %56 ]
  %64 = getelementptr inbounds %struct.resource_entry, ptr %62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 7936
  %69 = icmp eq i32 %68, 512
  br i1 %69, label %70, label %87

70:                                               ; preds = %60
  %71 = load i32, ptr %42, align 8
  %72 = add i32 %63, 1
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i32, ptr %65, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.resource_entry, ptr %62, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %75, %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 1, %75
  %84 = add i32 %83, %82
  %85 = zext i32 %84 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %2, i32 noundef %72, i32 noundef 0, i64 noundef %76, i64 noundef %80, i64 noundef %85) #9
  %86 = load ptr, ptr %51, align 8
  br label %87

87:                                               ; preds = %74, %60
  %88 = phi ptr [ %61, %60 ], [ %86, %74 ]
  %89 = phi i32 [ %63, %60 ], [ %72, %74 ]
  %90 = load ptr, ptr %62, align 4
  %91 = getelementptr inbounds %struct.pci_host_bridge, ptr %88, i32 0, i32 7
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %60

93:                                               ; preds = %87, %70, %56
  %94 = phi i32 [ 0, %56 ], [ %72, %70 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 6
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %93
  %99 = load i32, ptr %42, align 8
  %100 = add i32 %94, 1
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 4
  %104 = load i32, ptr %103, align 8
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = zext i32 %107 to i64
  %109 = zext i32 %96 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %2, i32 noundef %100, i32 noundef 2, i64 noundef %105, i64 noundef %108, i64 noundef %109) #9
  br label %114

110:                                              ; preds = %98
  %111 = getelementptr i8, ptr %0, i32 242
  %112 = load i8, ptr %111, align 2
  %113 = or i8 %112, 2
  store i8 %113, ptr %111, align 2
  br label %114

114:                                              ; preds = %110, %102, %93
  %115 = phi i32 [ %100, %102 ], [ %100, %110 ], [ %94, %93 ]
  %116 = load i32, ptr %42, align 8
  %117 = icmp ugt i32 %116, %115
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.11, i32 noundef %116) #10
  br label %120

120:                                              ; preds = %118, %114, %50
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 16, i32 noundef 4, i32 noundef 0) #9
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 10, i32 noundef 2, i32 noundef 1540) #9
  %121 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2060, i32 noundef 4) #9
  %122 = or i32 %121, 131072
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2060, i32 noundef 4, i32 noundef %122) #9
  %123 = tail call i32 @dw_pcie_read_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4) #9
  %124 = and i32 %123, -2
  tail call void @dw_pcie_write_dbi(ptr noundef %2, i32 noundef 2236, i32 noundef 4, i32 noundef %124) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_link_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_wait_for_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dw_pcie_host_deinit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  tail call void @pci_stop_root_bus(ptr noundef %5) #9
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  tail call void @pci_remove_root_bus(ptr noundef %8) #9
  %9 = load i8, ptr %0, align 8
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @irq_set_chained_handler_and_data(i32 noundef %14, ptr noundef null, ptr noundef null) #9
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  tail call void @irq_domain_remove(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 8
  tail call void @irq_domain_remove(ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.pcie_port, ptr %0, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %0, i32 -32
  %27 = load ptr, ptr %26, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %23, i32 noundef 2, i32 noundef 2, i32 noundef 32) #9
  br label %28

28:                                               ; preds = %25, %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dw_pcie_own_conf_map_bus(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = and i32 %1, 248
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -28
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %2
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi ptr [ %11, %6 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_disable_atu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_prog_outbound_atu(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pcie_port, ptr %6, i32 0, i32 18
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.pcie_port, ptr %6, i32 0, i32 19
  %10 = getelementptr inbounds %struct.pcie_port, ptr %6, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %2, 1
  %13 = add i32 %2, -1
  %14 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #9, !range !10
  %15 = sub nuw nsw i32 32, %14
  %16 = select i1 %12, i32 %15, i32 0
  %17 = tail call i32 @bitmap_find_free_region(ptr noundef %9, i32 noundef %11, i32 noundef %16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %4
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.pcie_port, ptr %6, i32 0, i32 14
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %28, %23 ]
  %25 = add i32 %24, %1
  %26 = add i32 %24, %17
  %27 = load ptr, ptr %22, align 8
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %25, i32 noundef %26, ptr noundef %27, ptr noundef %6, ptr noundef nonnull @handle_edge_irq, ptr noundef null, ptr noundef null) #9
  %28 = add nuw i32 %24, 1
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %19, %4
  %31 = phi i32 [ -28, %4 ], [ 0, %19 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pcie_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #9
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pcie_port, ptr %6, i32 0, i32 18
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %2, 1
  %12 = add i32 %2, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #9, !range !10
  %14 = sub nuw nsw i32 32, %13
  %15 = select i1 %11, i32 %14, i32 0
  %16 = getelementptr inbounds %struct.pcie_port, ptr %6, i32 0, i32 19
  tail call void @bitmap_release_region(ptr noundef %16, i32 noundef %10, i32 noundef %15) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_msi_ack_irq(ptr noundef %0) #0 {
  tail call void @irq_chip_ack_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_msi_mask_irq(ptr noundef %0) #0 {
  tail call void @pci_msi_mask_irq(ptr noundef %0) #9
  tail call void @irq_chip_mask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_msi_unmask_irq(ptr noundef %0) #0 {
  tail call void @pci_msi_unmask_irq(ptr noundef %0) #9
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pci_bottom_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -32
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = mul nuw nsw i32 %7, 12
  %9 = and i32 %6, 31
  %10 = add nuw nsw i32 %8, 2096
  %11 = shl nuw i32 1, %9
  tail call void @dw_pcie_write_dbi(ptr noundef %4, i32 noundef %10, i32 noundef 4, i32 noundef %11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pci_bottom_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -32
  %5 = getelementptr inbounds %struct.pcie_port, ptr %3, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 5
  %10 = mul nuw nsw i32 %9, 12
  %11 = and i32 %8, 31
  %12 = shl nuw i32 1, %11
  %13 = getelementptr %struct.pcie_port, ptr %3, i32 0, i32 16, i32 %9
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %12, %14
  store i32 %15, ptr %13, align 4
  %16 = add nuw nsw i32 %10, 2092
  tail call void @dw_pcie_write_dbi(ptr noundef %4, i32 noundef %16, i32 noundef 4, i32 noundef %15) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_pci_bottom_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -32
  %5 = getelementptr inbounds %struct.pcie_port, ptr %3, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 5
  %10 = mul nuw nsw i32 %9, 12
  %11 = and i32 %8, 31
  %12 = shl nuw i32 1, %11
  %13 = xor i32 %12, -1
  %14 = getelementptr %struct.pcie_port, ptr %3, i32 0, i32 16, i32 %9
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = add nuw nsw i32 %10, 2092
  tail call void @dw_pcie_write_dbi(ptr noundef %4, i32 noundef %17, i32 noundef 4, i32 noundef %16) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dw_pci_msi_set_affinity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #7 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dw_pci_setup_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pcie_port, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dw_pcie_other_conf_map_bus(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -32
  %7 = tail call i32 @dw_pcie_link_up(ptr noundef %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = shl i32 %1, 16
  %15 = and i32 %14, 16252928
  %16 = or i32 %13, %15
  %17 = and i32 %14, 458752
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 4, i32 5
  %25 = getelementptr inbounds %struct.pcie_port, ptr %5, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = zext i32 %18 to i64
  %28 = getelementptr inbounds %struct.pcie_port, ptr %5, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %6, i32 noundef 0, i32 noundef %24, i64 noundef %26, i64 noundef %27, i64 noundef %30) #9
  %31 = getelementptr inbounds %struct.pcie_port, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 %2
  br label %34

34:                                               ; preds = %9, %3
  %35 = phi ptr [ %33, %9 ], [ null, %3 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_rd_other_conf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -32
  %9 = tail call i32 @pci_generic_config_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %7, i32 242
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pcie_port, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pcie_port, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pcie_port, ptr %7, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %8, i32 noundef 0, i32 noundef 2, i64 noundef %19, i64 noundef %22, i64 noundef %25) #9
  br label %26

26:                                               ; preds = %16, %11, %5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_pcie_wr_other_conf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -32
  %9 = tail call i32 @pci_generic_config_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %7, i32 242
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pcie_port, ptr %7, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pcie_port, ptr %7, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pcie_port, ptr %7, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = zext i32 %24 to i64
  tail call void @dw_pcie_prog_outbound_atu(ptr noundef %8, i32 noundef 0, i32 noundef 2, i64 noundef %19, i64 noundef %22, i64 noundef %25) #9
  br label %26

26:                                               ; preds = %16, %11, %5
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i32 0, i32 33}
