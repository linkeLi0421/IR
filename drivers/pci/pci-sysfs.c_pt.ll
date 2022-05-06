; ModuleID = '/llk/IR/drivers/pci/pci-sysfs.c_pt.bc'
source_filename = "../drivers/pci/pci-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.7, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@pci_bus_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_bus_attrs, ptr null }, align 4
@pci_bus_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @pci_bus_group, ptr null], align 4
@pcibus_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcibus_attrs, ptr null }, align 4
@pcibus_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @pcibus_group, ptr null], align 4
@sysfs_initialized = internal unnamed_addr global i1 false, align 4
@__initcall__kmod_pci_sysfs__229_1443_pci_sysfs_init7 = internal global ptr @pci_sysfs_init, section ".initcall7.init", align 4
@pci_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_dev_attrs, ptr null }, align 4
@pci_dev_config_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr @pci_dev_config_attr_is_visible, ptr null, ptr @pci_dev_config_attrs }, align 4
@pci_dev_rom_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr @pci_dev_rom_attr_is_visible, ptr null, ptr @pci_dev_rom_attrs }, align 4
@pci_dev_reset_attr_group = internal constant %struct.attribute_group { ptr null, ptr @pci_dev_reset_attr_is_visible, ptr null, ptr @pci_dev_reset_attrs, ptr null }, align 4
@pci_dev_reset_method_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_vpd_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_smbios_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_groups = dso_local local_unnamed_addr global [8 x ptr] [ptr @pci_dev_group, ptr @pci_dev_config_attr_group, ptr @pci_dev_rom_attr_group, ptr @pci_dev_reset_attr_group, ptr @pci_dev_reset_method_attr_group, ptr @pci_dev_vpd_attr_group, ptr @pci_dev_smbios_attr_group, ptr null], align 4
@pci_dev_attr_groups = internal global [6 x ptr] [ptr @pci_dev_attr_group, ptr @pci_dev_hp_attr_group, ptr @pci_bridge_attr_group, ptr @pcie_dev_attr_group, ptr @aspm_ctrl_attr_group, ptr null], align 4
@pci_dev_type = dso_local local_unnamed_addr constant %struct.device_type { ptr null, ptr @pci_dev_attr_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@pci_bus_attrs = internal global [2 x ptr] [ptr @bus_attr_rescan, ptr null], align 4
@bus_attr_rescan = internal global %struct.bus_attribute { %struct.attribute { ptr @.str, i16 128 }, ptr null, ptr @rescan_store }, align 4
@.str = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@pcibus_attrs = internal global [4 x ptr] [ptr @dev_attr_bus_rescan, ptr @dev_attr_cpuaffinity, ptr @dev_attr_cpulistaffinity, ptr null], align 4
@dev_attr_bus_rescan = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 128 }, ptr null, ptr @bus_rescan_store }, align 4
@dev_attr_cpuaffinity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @cpuaffinity_show, ptr null }, align 4
@dev_attr_cpulistaffinity = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @cpulistaffinity_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cpuaffinity\00", align 1
@cpu_all_bits = external dso_local constant [1 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"cpulistaffinity\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"resource%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pci_dev_attrs = internal global [21 x ptr] [ptr @dev_attr_power_state, ptr @dev_attr_resource, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_subsystem_vendor, ptr @dev_attr_subsystem_device, ptr @dev_attr_revision, ptr @dev_attr_class, ptr @dev_attr_irq, ptr @dev_attr_local_cpus, ptr @dev_attr_local_cpulist, ptr @dev_attr_modalias, ptr @dev_attr_dma_mask_bits, ptr @dev_attr_consistent_dma_mask_bits, ptr @dev_attr_enable, ptr @dev_attr_broken_parity_status, ptr @dev_attr_msi_bus, ptr @dev_attr_devspec, ptr @dev_attr_driver_override, ptr @dev_attr_ari_enabled, ptr null], align 4
@dev_attr_power_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @power_state_show, ptr null }, align 4
@dev_attr_resource = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @resource_show, ptr null }, align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @vendor_show, ptr null }, align 4
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @device_show, ptr null }, align 4
@dev_attr_subsystem_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @subsystem_vendor_show, ptr null }, align 4
@dev_attr_subsystem_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @subsystem_device_show, ptr null }, align 4
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @revision_show, ptr null }, align 4
@dev_attr_class = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @class_show, ptr null }, align 4
@dev_attr_irq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @irq_show, ptr null }, align 4
@dev_attr_local_cpus = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @local_cpus_show, ptr null }, align 4
@dev_attr_local_cpulist = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @local_cpulist_show, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_dma_mask_bits = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @dma_mask_bits_show, ptr null }, align 4
@dev_attr_consistent_dma_mask_bits = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @consistent_dma_mask_bits_show, ptr null }, align 4
@dev_attr_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420 }, ptr @enable_show, ptr @enable_store }, align 4
@dev_attr_broken_parity_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420 }, ptr @broken_parity_status_show, ptr @broken_parity_status_store }, align 4
@dev_attr_msi_bus = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420 }, ptr @msi_bus_show, ptr @msi_bus_store }, align 4
@dev_attr_devspec = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @devspec_show, ptr null }, align 4
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420 }, ptr @driver_override_show, ptr @driver_override_store }, align 4
@dev_attr_ari_enabled = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @ari_enabled_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"power_state\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@pci_power_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"0x%016llx 0x%016llx 0x%016llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"subsystem_vendor\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"subsystem_device\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"0x%06x\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"local_cpus\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"local_cpulist\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"pci:v%08Xd%08Xsv%08Xsd%08Xbc%02Xsc%02Xi%02X\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"dma_mask_bits\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"consistent_dma_mask_bits\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"broken_parity_status\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"msi_bus\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"MSI/MSI-X %s for future drivers\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"disallowed\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"MSI/MSI-X %s for future drivers of devices on this bus\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"devspec\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%pOF\0A\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"ari_enabled\00", align 1
@pci_dev_config_attrs = internal global [2 x ptr] [ptr @bin_attr_config, ptr null], align 4
@bin_attr_config = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.38, i16 420 }, i32 0, ptr null, ptr null, ptr @pci_read_config, ptr @pci_write_config, ptr null }, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@pci_dev_rom_attrs = internal global [2 x ptr] [ptr @bin_attr_rom, ptr null], align 4
@bin_attr_rom = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.40, i16 384 }, i32 0, ptr null, ptr null, ptr @pci_read_rom, ptr @pci_write_rom, ptr null }, align 4
@.str.40 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@pci_dev_reset_attrs = internal global [2 x ptr] [ptr @dev_attr_reset, ptr null], align 4
@dev_attr_reset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 128 }, ptr null, ptr @reset_store }, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@pci_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr @pci_dev_attrs_are_visible, ptr null, ptr @pci_dev_dev_attrs, ptr null }, align 4
@pci_dev_hp_attr_group = internal constant %struct.attribute_group { ptr null, ptr @pci_dev_hp_attrs_are_visible, ptr null, ptr @pci_dev_hp_attrs, ptr null }, align 4
@pci_bridge_attr_group = internal constant %struct.attribute_group { ptr null, ptr @pci_bridge_attrs_are_visible, ptr null, ptr @pci_bridge_attrs, ptr null }, align 4
@pcie_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr @pcie_dev_attrs_are_visible, ptr null, ptr @pcie_dev_attrs, ptr null }, align 4
@aspm_ctrl_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_boot_vga, ptr null], align 4
@dev_attr_boot_vga = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @boot_vga_show, ptr null }, align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"boot_vga\00", align 1
@pci_dev_hp_attrs = internal global [3 x ptr] [ptr @dev_attr_remove, ptr @dev_attr_dev_rescan, ptr null], align 4
@dev_attr_remove = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 144 }, ptr null, ptr @remove_store }, align 4
@dev_attr_dev_rescan = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 128 }, ptr null, ptr @dev_rescan_store }, align 4
@.str.43 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@pci_bridge_attrs = internal global [3 x ptr] [ptr @dev_attr_subordinate_bus_number, ptr @dev_attr_secondary_bus_number, ptr null], align 4
@dev_attr_subordinate_bus_number = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @subordinate_bus_number_show, ptr null }, align 4
@dev_attr_secondary_bus_number = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @secondary_bus_number_show, ptr null }, align 4
@.str.44 = private unnamed_addr constant [23 x i8] c"subordinate_bus_number\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"secondary_bus_number\00", align 1
@pcie_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_current_link_speed, ptr @dev_attr_current_link_width, ptr @dev_attr_max_link_width, ptr @dev_attr_max_link_speed, ptr null], align 4
@dev_attr_current_link_speed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @current_link_speed_show, ptr null }, align 4
@dev_attr_current_link_width = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @current_link_width_show, ptr null }, align 4
@dev_attr_max_link_width = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @max_link_width_show, ptr null }, align 4
@dev_attr_max_link_speed = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @max_link_speed_show, ptr null }, align 4
@.str.46 = private unnamed_addr constant [19 x i8] c"current_link_speed\00", align 1
@pcie_link_speed = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"current_link_width\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"max_link_width\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"max_link_speed\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pci_sysfs__229_1443_pci_sysfs_init7], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_mmap_fits(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %7, align 8
  %13 = sub i32 %9, %12
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %2, align 4
  %19 = sub i32 %17, %18
  %20 = lshr i32 %19, 12
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %13, 12
  %24 = add nuw nsw i32 %23, 1
  %25 = icmp eq i32 %3, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  call void @pci_resource_to_user(ptr noundef %0, i32 noundef %1, ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %27 = load i32, ptr %5, align 4
  %28 = lshr i32 %27, 12
  %29 = icmp ult i32 %22, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %26, %15
  %31 = phi i32 [ %28, %26 ], [ 0, %15 ]
  %32 = add nuw nsw i32 %24, %31
  %33 = icmp uge i32 %22, %32
  %34 = add i32 %20, %22
  %35 = icmp ugt i32 %34, %32
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %26
  br label %38

38:                                               ; preds = %37, %30, %11, %4
  %39 = phi i32 [ 0, %37 ], [ 0, %11 ], [ 1, %30 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_create_sysfs_dev_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @sysfs_initialized, align 4
  br i1 %2, label %3, label %58

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %5

5:                                                ; preds = %55, %3
  %6 = phi i32 [ 0, %3 ], [ %56, %55 ]
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %6
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %8, %12
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2848, i32 noundef 42) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.bin_attribute, ptr %17, i32 1
  %21 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 %6
  store ptr %17, ptr %21, align 4
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %20, ptr noundef nonnull @.str.4, i32 noundef %6) #11
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %6, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 6
  store ptr @pci_mmap_resource_uc, ptr %28, align 4
  br label %35

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 4
  store ptr @pci_read_resource_io, ptr %30, align 4
  %31 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 5
  store ptr @pci_write_resource_io, ptr %31, align 8
  %32 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29, %27
  %36 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 3
  store ptr @iomem_get_mapping, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %29
  store ptr %20, ptr %17, align 8
  %38 = getelementptr inbounds %struct.attribute, ptr %17, i32 0, i32 1
  store i16 384, ptr %38, align 4
  %39 = load i32, ptr %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %11, align 8
  %43 = add i32 %39, 1
  %44 = sub i32 %43, %42
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %44, %41 ], [ 0, %37 ]
  %47 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 1
  store i32 %46, ptr %47, align 8
  %48 = inttoptr i32 %6 to ptr
  %49 = getelementptr inbounds %struct.bin_attribute, ptr %17, i32 0, i32 2
  store ptr %48, ptr %49, align 4
  %50 = tail call i32 @sysfs_create_bin_file(ptr noundef %4, ptr noundef nonnull %17) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %53

53:                                               ; preds = %52, %15
  %54 = phi i32 [ %50, %52 ], [ -12, %15 ]
  tail call fastcc void @pci_remove_resource_files(ptr noundef %0) #11
  br label %58

55:                                               ; preds = %45, %10, %5
  %56 = add nuw nsw i32 %6, 1
  %57 = icmp eq i32 %56, 6
  br i1 %57, label %58, label %5

58:                                               ; preds = %55, %53, %1
  %59 = phi i32 [ -13, %1 ], [ %54, %53 ], [ 0, %55 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_remove_sysfs_dev_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i1, ptr @sysfs_initialized, align 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call fastcc void @pci_remove_resource_files(ptr noundef %0)
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_remove_resource_files(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %4) #11
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 56, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %9) #11
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %14) #11
  tail call void @kfree(ptr noundef nonnull %14) #11
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 56, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %19) #11
  tail call void @kfree(ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %24) #11
  tail call void @kfree(ptr noundef nonnull %24) #11
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 56, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %29) #11
  tail call void @kfree(ptr noundef nonnull %29) #11
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %34) #11
  tail call void @kfree(ptr noundef nonnull %34) #11
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 56, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %39) #11
  tail call void @kfree(ptr noundef nonnull %39) #11
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %44) #11
  tail call void @kfree(ptr noundef nonnull %44) #11
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 56, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %49) #11
  tail call void @kfree(ptr noundef nonnull %49) #11
  br label %52

52:                                               ; preds = %51, %47
  %53 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 55, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %54) #11
  tail call void @kfree(ptr noundef nonnull %54) #11
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 56, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void @sysfs_remove_bin_file(ptr noundef %2, ptr noundef nonnull %59) #11
  tail call void @kfree(ptr noundef nonnull %59) #11
  br label %62

62:                                               ; preds = %61, %57
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_sysfs_init() #3 section ".init.text" {
  store i1 true, ptr @sysfs_initialized, align 4
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi ptr [ null, %0 ], [ %3, %5 ]
  %3 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %2) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @pci_create_sysfs_dev_files(ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %1, label %8

8:                                                ; preds = %5
  tail call void @pci_dev_put(ptr noundef nonnull %3) #11
  br label %13

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %11, %9 ], [ null, %1 ]
  %11 = tail call ptr @pci_find_next_bus(ptr noundef %10) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %8
  %14 = phi i32 [ %6, %8 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rescan_store(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  call void @pci_lock_rescan_remove() #11
  %11 = call ptr @pci_find_next_bus(ptr noundef null) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %16, %13 ], [ %11, %10 ]
  %15 = call i32 @pci_rescan_bus(ptr noundef nonnull %14) #11
  %16 = call ptr @pci_find_next_bus(ptr noundef nonnull %14) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %10
  call void @pci_unlock_rescan_remove() #11
  br label %19

19:                                               ; preds = %18, %7, %3
  %20 = phi i32 [ -22, %3 ], [ %2, %18 ], [ %2, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_next_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rescan_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bus_rescan_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr i8, ptr %0, i32 -176
  %7 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  call void @pci_lock_rescan_remove() #11
  %13 = getelementptr i8, ptr %0, i32 -168
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -156
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 -148
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @pci_rescan_bus_bridge_resize(ptr noundef %22) #11
  br label %26

24:                                               ; preds = %16, %12
  %25 = call i32 @pci_rescan_bus(ptr noundef %6) #11
  br label %26

26:                                               ; preds = %24, %20
  call void @pci_unlock_rescan_remove() #11
  br label %27

27:                                               ; preds = %26, %9, %4
  %28 = phi i32 [ -22, %4 ], [ %3, %26 ], [ %3, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rescan_bus_bridge_resize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuaffinity_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext false, ptr noundef %2, ptr noundef nonnull @cpu_all_bits, i32 noundef %4) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpulistaffinity_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %2, ptr noundef nonnull @cpu_all_bits, i32 noundef %4) #11
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_read_resource_io(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.bin_attribute, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = trunc i64 %4 to i32
  %11 = getelementptr i8, ptr %1, i32 480
  %12 = getelementptr [11 x %struct.resource], ptr %11, i32 0, i32 %9
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, %10
  %15 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %6
  %19 = add i32 %5, -1
  %20 = add i32 %19, %14
  %21 = icmp ugt i32 %20, %16
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  switch i32 %5, label %38 [
    i32 1, label %23
    i32 2, label %28
    i32 4, label %33
  ]

23:                                               ; preds = %22
  %24 = and i32 %14, 1048575
  %25 = or i32 %24, -18874368
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  store i8 %27, ptr %3, align 1
  br label %38

28:                                               ; preds = %22
  %29 = and i32 %14, 1048575
  %30 = or i32 %29, -18874368
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %31) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  store i16 %32, ptr %3, align 2
  br label %38

33:                                               ; preds = %22
  %34 = and i32 %14, 1048575
  %35 = or i32 %34, -18874368
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %33, %28, %23, %22, %18, %6
  %39 = phi i32 [ 0, %6 ], [ -22, %18 ], [ 1, %23 ], [ 2, %28 ], [ 4, %33 ], [ -22, %22 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_write_resource_io(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = tail call fastcc i32 @pci_resource_io(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i1 noundef zeroext true)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_mmap_resource_uc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 -136
  %6 = getelementptr inbounds %struct.bin_attribute, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr i8, ptr %1, i32 480
  %10 = getelementptr [11 x %struct.resource], ptr %9, i32 0, i32 %8
  %11 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, ptr %10, align 4
  %17 = zext i32 %16 to i64
  %18 = tail call zeroext i1 @iomem_is_exclusive(i64 noundef %17) #11
  br i1 %18, label %47, label %19

19:                                               ; preds = %15, %4
  %20 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %8, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %19
  %24 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %8
  %25 = load i32, ptr %24, align 8
  %26 = sub i32 %21, %25
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %47, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %3, align 4
  %32 = sub i32 %30, %31
  %33 = lshr i32 %32, 12
  %34 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %26, 12
  %37 = add nuw nsw i32 %36, 1
  %38 = icmp ugt i32 %35, %36
  %39 = add i32 %33, %35
  %40 = icmp ugt i32 %39, %37
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %28
  %43 = load i32, ptr %11, align 4
  %44 = lshr i32 %43, 9
  %45 = and i32 %44, 1
  %46 = tail call i32 @pci_mmap_resource_range(ptr noundef %5, i32 noundef %8, ptr noundef %3, i32 noundef %45, i32 noundef 0) #11
  br label %47

47:                                               ; preds = %42, %28, %23, %19, %15
  %48 = phi i32 [ %46, %42 ], [ -22, %15 ], [ -22, %23 ], [ -22, %19 ], [ -22, %28 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iomem_get_mapping() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iomem_is_exclusive(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_mmap_resource_range(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_resource_io(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i64 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = trunc i64 %3 to i32
  %11 = getelementptr i8, ptr %0, i32 480
  %12 = getelementptr [11 x %struct.resource], ptr %11, i32 0, i32 %9
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, %10
  %15 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %56, label %18

18:                                               ; preds = %6
  %19 = add i32 %4, -1
  %20 = add i32 %19, %14
  %21 = icmp ugt i32 %20, %16
  br i1 %21, label %56, label %22

22:                                               ; preds = %18
  switch i32 %4, label %56 [
    i32 1, label %23
    i32 2, label %34
    i32 4, label %45
  ]

23:                                               ; preds = %22
  br i1 %5, label %24, label %29

24:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %25 = load i8, ptr %2, align 1
  %26 = and i32 %14, 1048575
  %27 = or i32 %26, -18874368
  %28 = inttoptr i32 %27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %25) #11, !srcloc !16
  br label %56

29:                                               ; preds = %23
  %30 = and i32 %14, 1048575
  %31 = or i32 %30, -18874368
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #11, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !10
  store i8 %33, ptr %2, align 1
  br label %56

34:                                               ; preds = %22
  br i1 %5, label %35, label %40

35:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %36 = load i16, ptr %2, align 2
  %37 = and i32 %14, 1048575
  %38 = or i32 %37, -18874368
  %39 = inttoptr i32 %38 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %36) #11, !srcloc !18
  br label %56

40:                                               ; preds = %34
  %41 = and i32 %14, 1048575
  %42 = or i32 %41, -18874368
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %43) #11, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  store i16 %44, ptr %2, align 2
  br label %56

45:                                               ; preds = %22
  br i1 %5, label %46, label %51

46:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %47 = load i32, ptr %2, align 4
  %48 = and i32 %14, 1048575
  %49 = or i32 %48, -18874368
  %50 = inttoptr i32 %49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %47) #11, !srcloc !20
  br label %56

51:                                               ; preds = %45
  %52 = and i32 %14, 1048575
  %53 = or i32 %52, -18874368
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %54) #11, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  store i32 %55, ptr %2, align 4
  br label %56

56:                                               ; preds = %51, %46, %40, %35, %29, %24, %22, %18, %6
  %57 = phi i32 [ 0, %6 ], [ -22, %18 ], [ 1, %29 ], [ 1, %24 ], [ 2, %40 ], [ 2, %35 ], [ 4, %51 ], [ 4, %46 ], [ -22, %22 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -36
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  %7 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %8) #11
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @resource_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = getelementptr i8, ptr %0, i32 -124
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 7, i32 11
  %11 = getelementptr i8, ptr %0, i32 480
  br label %12

12:                                               ; preds = %12, %3
  %13 = phi i32 [ 0, %3 ], [ %24, %12 ]
  %14 = phi i32 [ 0, %3 ], [ %25, %12 ]
  %15 = getelementptr [11 x %struct.resource], ptr %11, i32 0, i32 %14
  call void @pci_resource_to_user(ptr noundef %6, i32 noundef %14, ptr noundef %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %16 = load i32, ptr %4, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, ptr %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %13, ptr noundef nonnull @.str.8, i64 noundef %17, i64 noundef %19, i64 noundef %22) #11
  %24 = add i32 %23, %13
  %25 = add nuw nsw i32 %14, 1
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %27, label %12

27:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -102
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_vendor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -100
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_device_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -98
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @revision_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -92
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -96
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %5) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 833
  %5 = load i40, ptr %4, align 1
  %6 = and i40 %5, 4096
  %7 = icmp eq i40 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -136
  %10 = tail call i32 @pci_irq_vector(ptr noundef %9, i32 noundef 0) #11
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 476
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %13, %11 ], [ %10, %8 ]
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %15) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @local_cpus_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext false, ptr noundef %2, ptr noundef nonnull @cpu_all_bits, i32 noundef %4) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @local_cpulist_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %2, ptr noundef nonnull @cpu_all_bits, i32 noundef %4) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = load i16, ptr %4, align 8
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 -102
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 -100
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 -98
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %0, i32 -96
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = lshr i32 %17, 8
  %21 = and i32 %20, 255
  %22 = and i32 %17, 255
  %23 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %19, i32 noundef %21, i32 noundef %22) #11
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_mask_bits_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -56
  %5 = load i64, ptr %4, align 8
  %6 = lshr i64 %5, 32
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #11, !range !21
  %11 = sub nuw nsw i32 64, %10
  br label %18

12:                                               ; preds = %3
  %13 = trunc i64 %5 to i32
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #11, !range !21
  %16 = sub nuw nsw i32 32, %15
  %17 = select i1 %14, i32 0, i32 %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %11, %9 ], [ %17, %12 ]
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %19) #11
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @consistent_dma_mask_bits_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  %5 = load i64, ptr %4, align 8
  %6 = lshr i64 %5, 32
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 true) #11, !range !21
  %11 = sub nuw nsw i32 64, %10
  br label %18

12:                                               ; preds = %3
  %13 = trunc i64 %5 to i32
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #11, !range !21
  %16 = sub nuw nsw i32 32, %15
  %17 = select i1 %14, i32 0, i32 %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %11, %9 ], [ %17, %12 ]
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %19) #11
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 840
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %5) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %0, i32 840
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @pci_disable_device(ptr noundef %6) #11
  call void @mutex_unlock(ptr noundef %12) #11
  br label %31

24:                                               ; preds = %19, %11
  %25 = phi i32 [ -5, %19 ], [ -16, %11 ]
  call void @mutex_unlock(ptr noundef %12) #11
  br label %29

26:                                               ; preds = %16
  %27 = call i32 @pci_enable_device(ptr noundef %6) #11
  call void @mutex_unlock(ptr noundef %12) #11
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %25, %24 ], [ %27, %26 ]
  br label %31

31:                                               ; preds = %29, %26, %23, %8, %4
  %32 = phi i32 [ -1, %4 ], [ -22, %8 ], [ %30, %29 ], [ %3, %26 ], [ %3, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @broken_parity_status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 833
  %5 = load i40, ptr %4, align 1
  %6 = trunc i40 %5 to i32
  %7 = lshr i32 %6, 9
  %8 = and i32 %7, 1
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %8) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @broken_parity_status_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr i8, ptr %0, i32 833
  %12 = load i40, ptr %11, align 1
  %13 = select i1 %10, i40 0, i40 512
  %14 = and i40 %12, -513
  %15 = or i40 %14, %13
  store i40 %15, ptr %11, align 1
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi_bus_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -124
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 19
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 1
  %11 = xor i16 %10, 1
  %12 = zext i16 %11 to i32
  br label %20

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 833
  %15 = load i40, ptr %14, align 1
  %16 = trunc i40 %15 to i32
  %17 = lshr i32 %16, 6
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i32 [ %12, %7 ], [ %19, %13 ]
  %22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %21) #11
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msi_bus_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -124
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %8, label %9, label %31

9:                                                ; preds = %4
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %7, null
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %13, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 833
  %18 = load i40, ptr %17, align 1
  %19 = select i1 %15, i40 64, i40 0
  %20 = and i40 %18, -65
  %21 = or i40 %20, %19
  store i40 %21, ptr %17, align 1
  %22 = select i1 %15, ptr @.str.32, ptr @.str.31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %22) #13
  br label %31

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 19
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, -2
  %27 = zext i1 %15 to i16
  %28 = or i16 %26, %27
  %29 = select i1 %15, ptr @.str.32, ptr @.str.31
  store i16 %28, ptr %24, align 2
  %30 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.33, ptr noundef nonnull %29) #13
  br label %31

31:                                               ; preds = %23, %16, %9, %4
  %32 = phi i32 [ %3, %23 ], [ %3, %16 ], [ -1, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devspec_show(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 416
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef nonnull %8) #11
  br label %12

12:                                               ; preds = %10, %6, %3
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr i8, ptr %0, i32 1052
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %6) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %3, 4094
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr i8, ptr %0, i32 1052
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %7, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %7) #11
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi ptr [ null, %19 ], [ %7, %13 ]
  store ptr %21, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %14) #11
  tail call void @kfree(ptr noundef %16) #11
  br label %22

22:                                               ; preds = %20, %6, %4
  %23 = phi i32 [ %3, %20 ], [ -22, %4 ], [ -12, %6 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ari_enabled_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 49
  %11 = load i40, ptr %10, align 1
  %12 = trunc i40 %11 to i32
  %13 = lshr i32 %12, 14
  %14 = and i32 %13, 1
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %9 ]
  %17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %16) #11
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_config_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 1
  store i32 256, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 472
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 256
  %8 = select i1 %7, i32 4096, i32 256
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  ret i16 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_read_config(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = getelementptr i8, ptr %1, i32 -136
  %13 = tail call zeroext i1 @file_ns_capable(ptr noundef %0, ptr noundef nonnull @init_user_ns, i32 noundef 21) #11
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %1, i32 472
  %16 = load i32, ptr %15, align 8
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr i8, ptr %1, i32 -91
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 2
  %21 = select i1 %20, i32 128, i32 64
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = zext i32 %23 to i64
  %25 = icmp slt i64 %24, %4
  br i1 %25, label %123, label %26

26:                                               ; preds = %22
  %27 = zext i32 %5 to i64
  %28 = add i64 %27, %4
  %29 = icmp sgt i64 %28, %24
  %30 = trunc i64 %4 to i32
  %31 = sub i32 %23, %30
  %32 = select i1 %29, i32 %31, i32 %5
  tail call void @pci_config_pm_runtime_get(ptr noundef %12) #11
  %33 = and i64 %4, 1
  %34 = icmp ne i64 %33, 0
  %35 = icmp ne i32 %32, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  %38 = call i32 @pci_user_read_config_byte(ptr noundef %12, i32 noundef %30, ptr noundef nonnull %7) #11
  %39 = load i8, ptr %7, align 1
  store i8 %39, ptr %3, align 1
  %40 = add i64 %4, 1
  %41 = add i32 %32, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  br label %42

42:                                               ; preds = %37, %26
  %43 = phi i64 [ %40, %37 ], [ %4, %26 ]
  %44 = phi i32 [ %41, %37 ], [ %32, %26 ]
  %45 = and i64 %43, 3
  %46 = icmp ne i64 %45, 0
  %47 = icmp ugt i32 %44, 2
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i16 0, ptr %8, align 2, !annotation !8
  %50 = trunc i64 %43 to i32
  %51 = call i32 @pci_user_read_config_word(ptr noundef %12, i32 noundef %50, ptr noundef nonnull %8) #11
  %52 = load i16, ptr %8, align 2
  %53 = trunc i16 %52 to i8
  %54 = sub i64 %43, %4
  %55 = trunc i64 %54 to i32
  %56 = getelementptr i8, ptr %3, i32 %55
  store i8 %53, ptr %56, align 1
  %57 = lshr i16 %52, 8
  %58 = trunc i16 %57 to i8
  %59 = add i32 %55, 1
  %60 = getelementptr i8, ptr %3, i32 %59
  store i8 %58, ptr %60, align 1
  %61 = add i64 %43, 2
  %62 = add i32 %44, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  br label %63

63:                                               ; preds = %49, %42
  %64 = phi i64 [ %61, %49 ], [ %43, %42 ]
  %65 = phi i32 [ %62, %49 ], [ %44, %42 ]
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %93

67:                                               ; preds = %67, %63
  %68 = phi i32 [ %90, %67 ], [ %65, %63 ]
  %69 = phi i64 [ %89, %67 ], [ %64, %63 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @pci_user_read_config_dword(ptr noundef %12, i32 noundef %70, ptr noundef nonnull %9) #11
  %72 = load i32, ptr %9, align 4
  %73 = trunc i32 %72 to i8
  %74 = sub i64 %69, %4
  %75 = trunc i64 %74 to i32
  %76 = getelementptr i8, ptr %3, i32 %75
  store i8 %73, ptr %76, align 1
  %77 = lshr i32 %72, 8
  %78 = trunc i32 %77 to i8
  %79 = add i32 %75, 1
  %80 = getelementptr i8, ptr %3, i32 %79
  store i8 %78, ptr %80, align 1
  %81 = lshr i32 %72, 16
  %82 = trunc i32 %81 to i8
  %83 = add i32 %75, 2
  %84 = getelementptr i8, ptr %3, i32 %83
  store i8 %82, ptr %84, align 1
  %85 = lshr i32 %72, 24
  %86 = trunc i32 %85 to i8
  %87 = add i32 %75, 3
  %88 = getelementptr i8, ptr %3, i32 %87
  store i8 %86, ptr %88, align 1
  %89 = add i64 %69, 4
  %90 = add i32 %68, -4
  %91 = call i32 @__cond_resched() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  %92 = icmp ugt i32 %90, 3
  br i1 %92, label %67, label %93

93:                                               ; preds = %67, %63
  %94 = phi i64 [ %64, %63 ], [ %89, %67 ]
  %95 = phi i32 [ %65, %63 ], [ %90, %67 ]
  %96 = icmp ugt i32 %95, 1
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #11
  store i16 0, ptr %10, align 2, !annotation !8
  %98 = trunc i64 %94 to i32
  %99 = call i32 @pci_user_read_config_word(ptr noundef %12, i32 noundef %98, ptr noundef nonnull %10) #11
  %100 = load i16, ptr %10, align 2
  %101 = trunc i16 %100 to i8
  %102 = sub i64 %94, %4
  %103 = trunc i64 %102 to i32
  %104 = getelementptr i8, ptr %3, i32 %103
  store i8 %101, ptr %104, align 1
  %105 = lshr i16 %100, 8
  %106 = trunc i16 %105 to i8
  %107 = add i32 %103, 1
  %108 = getelementptr i8, ptr %3, i32 %107
  store i8 %106, ptr %108, align 1
  %109 = add i64 %94, 2
  %110 = add nsw i32 %95, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #11
  br label %111

111:                                              ; preds = %97, %93
  %112 = phi i64 [ %109, %97 ], [ %94, %93 ]
  %113 = phi i32 [ %110, %97 ], [ %95, %93 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !annotation !8
  %116 = trunc i64 %112 to i32
  %117 = call i32 @pci_user_read_config_byte(ptr noundef %12, i32 noundef %116, ptr noundef nonnull %11) #11
  %118 = load i8, ptr %11, align 1
  %119 = sub i64 %112, %4
  %120 = trunc i64 %119 to i32
  %121 = getelementptr i8, ptr %3, i32 %120
  store i8 %118, ptr %121, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  br label %122

122:                                              ; preds = %115, %111
  call void @pci_config_pm_runtime_put(ptr noundef %12) #11
  br label %123

123:                                              ; preds = %122, %22
  %124 = phi i32 [ %32, %122 ], [ 0, %22 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_write_config(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr i8, ptr %1, i32 -136
  %8 = getelementptr i8, ptr %1, i32 472
  %9 = load i32, ptr %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %10, %4
  br i1 %11, label %118, label %12

12:                                               ; preds = %6
  %13 = zext i32 %5 to i64
  %14 = add i64 %13, %4
  %15 = icmp sgt i64 %14, %10
  %16 = trunc i64 %4 to i32
  %17 = sub i32 %9, %16
  %18 = select i1 %15, i32 %17, i32 %5
  tail call void @pci_config_pm_runtime_get(ptr noundef %7) #11
  %19 = and i64 %4, 1
  %20 = icmp ne i64 %19, 0
  %21 = icmp ne i32 %18, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load i8, ptr %3, align 1
  %25 = tail call i32 @pci_user_write_config_byte(ptr noundef %7, i32 noundef %16, i8 noundef zeroext %24) #11
  %26 = add i64 %4, 1
  %27 = add i32 %18, -1
  br label %28

28:                                               ; preds = %23, %12
  %29 = phi i32 [ %27, %23 ], [ %18, %12 ]
  %30 = phi i64 [ %26, %23 ], [ %4, %12 ]
  %31 = and i64 %30, 3
  %32 = icmp ne i64 %31, 0
  %33 = icmp ugt i32 %29, 2
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = sub i64 %30, %4
  %37 = trunc i64 %36 to i32
  %38 = getelementptr i8, ptr %3, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = add i32 %37, 1
  %41 = getelementptr i8, ptr %3, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 8
  %45 = zext i8 %39 to i16
  %46 = or i16 %44, %45
  %47 = trunc i64 %30 to i32
  %48 = tail call i32 @pci_user_write_config_word(ptr noundef %7, i32 noundef %47, i16 noundef zeroext %46) #11
  %49 = add i64 %30, 2
  %50 = add i32 %29, -2
  br label %51

51:                                               ; preds = %35, %28
  %52 = phi i32 [ %50, %35 ], [ %29, %28 ]
  %53 = phi i64 [ %49, %35 ], [ %30, %28 ]
  %54 = icmp ugt i32 %52, 3
  br i1 %54, label %55, label %86

55:                                               ; preds = %55, %51
  %56 = phi i64 [ %83, %55 ], [ %53, %51 ]
  %57 = phi i32 [ %84, %55 ], [ %52, %51 ]
  %58 = sub i64 %56, %4
  %59 = trunc i64 %58 to i32
  %60 = getelementptr i8, ptr %3, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add i32 %59, 1
  %64 = getelementptr i8, ptr %3, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = or i32 %67, %62
  %69 = add i32 %59, 2
  %70 = getelementptr i8, ptr %3, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 %72, 16
  %74 = or i32 %68, %73
  %75 = add i32 %59, 3
  %76 = getelementptr i8, ptr %3, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw i32 %78, 24
  %80 = or i32 %74, %79
  %81 = trunc i64 %56 to i32
  %82 = tail call i32 @pci_user_write_config_dword(ptr noundef %7, i32 noundef %81, i32 noundef %80) #11
  %83 = add i64 %56, 4
  %84 = add i32 %57, -4
  %85 = icmp ugt i32 %84, 3
  br i1 %85, label %55, label %86

86:                                               ; preds = %55, %51
  %87 = phi i32 [ %52, %51 ], [ %84, %55 ]
  %88 = phi i64 [ %53, %51 ], [ %83, %55 ]
  %89 = icmp ugt i32 %87, 1
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = sub i64 %88, %4
  %92 = trunc i64 %91 to i32
  %93 = getelementptr i8, ptr %3, i32 %92
  %94 = load i8, ptr %93, align 1
  %95 = add i32 %92, 1
  %96 = getelementptr i8, ptr %3, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i16
  %99 = shl nuw i16 %98, 8
  %100 = zext i8 %94 to i16
  %101 = or i16 %99, %100
  %102 = trunc i64 %88 to i32
  %103 = tail call i32 @pci_user_write_config_word(ptr noundef %7, i32 noundef %102, i16 noundef zeroext %101) #11
  %104 = add i64 %88, 2
  %105 = add nsw i32 %87, -2
  br label %106

106:                                              ; preds = %90, %86
  %107 = phi i32 [ %105, %90 ], [ %87, %86 ]
  %108 = phi i64 [ %104, %90 ], [ %88, %86 ]
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %106
  %111 = trunc i64 %108 to i32
  %112 = sub i64 %108, %4
  %113 = trunc i64 %112 to i32
  %114 = getelementptr i8, ptr %3, i32 %113
  %115 = load i8, ptr %114, align 1
  %116 = tail call i32 @pci_user_write_config_byte(ptr noundef %7, i32 noundef %111, i8 noundef zeroext %115) #11
  br label %117

117:                                              ; preds = %110, %106
  tail call void @pci_config_pm_runtime_put(ptr noundef %7) #11
  br label %118

118:                                              ; preds = %117, %6
  %119 = phi i32 [ %18, %117 ], [ 0, %6 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_rom_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr i8, ptr %0, i32 676
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 672
  %9 = load i32, ptr %8, align 8
  %10 = sub i32 %5, %9
  %11 = add i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 1
  store i32 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  br label %17

17:                                               ; preds = %13, %7, %3
  %18 = phi i16 [ %16, %13 ], [ 0, %7 ], [ 0, %3 ]
  ret i16 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_read_rom(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !8
  %9 = getelementptr i8, ptr %1, i32 912
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %6
  %13 = call ptr @pci_map_rom(ptr noundef %8, ptr noundef nonnull %7) #11
  %14 = icmp ne ptr %13, null
  %15 = load i32, ptr %7, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = zext i32 %15 to i64
  %20 = icmp sgt i64 %19, %4
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = zext i32 %5 to i64
  %23 = add i64 %22, %4
  %24 = icmp sgt i64 %23, %19
  %25 = trunc i64 %4 to i32
  %26 = sub i32 %15, %25
  %27 = select i1 %24, i32 %26, i32 %5
  %28 = getelementptr i8, ptr %13, i32 %25
  call void @mmiocpy(ptr noundef %3, ptr noundef %28, i32 noundef %27) #11
  br label %29

29:                                               ; preds = %21, %18
  %30 = phi i32 [ %27, %21 ], [ 0, %18 ]
  call void @pci_unmap_rom(ptr noundef %8, ptr noundef nonnull %13) #11
  br label %31

31:                                               ; preds = %29, %12, %6
  %32 = phi i32 [ %30, %29 ], [ -22, %6 ], [ -5, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pci_write_rom(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, i64 noundef %4, i32 noundef returned %5) #9 {
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = load i8, ptr %3, align 1
  %10 = icmp eq i8 %9, 48
  %11 = icmp eq i32 %5, 2
  %12 = and i1 %11, %10
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %6
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ 1, %13 ], [ 0, %8 ]
  %16 = getelementptr i8, ptr %1, i32 912
  store i32 %15, ptr %16, align 8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @pci_dev_reset_attr_is_visible(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = tail call zeroext i1 @pci_reset_supported(ptr noundef %4) #11
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i16 [ %8, %6 ], [ 0, %3 ]
  ret i16 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_reset_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %7 = icmp sgt i32 %6, -1
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %0, i32 -136
  %13 = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #11
  %14 = call i32 @pci_reset_function(ptr noundef %12) #11
  %15 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #11
  %16 = icmp slt i32 %14, 0
  %17 = select i1 %16, i32 %14, i32 %3
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i32 [ -22, %4 ], [ %17, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reset_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_attrs_are_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #10 {
  %4 = icmp eq ptr %1, @dev_attr_boot_vga
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -96
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, -256
  %9 = icmp eq i32 %8, 196608
  br i1 %9, label %10, label %13

10:                                               ; preds = %5, %3
  %11 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i16 [ %12, %10 ], [ 0, %5 ]
  ret i16 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @boot_vga_show(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @vga_default_device() #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -136
  %8 = icmp eq ptr %7, %4
  %9 = zext i1 %8 to i32
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 684
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 1
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ %14, %10 ], [ %9, %6 ]
  %17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %16) #11
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vga_default_device() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_hp_attrs_are_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 833
  %5 = load i40, ptr %4, align 1
  %6 = and i40 %5, 8388608
  %7 = icmp eq i40 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i16 [ %10, %8 ], [ 0, %3 ]
  ret i16 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = call zeroext i1 @device_remove_file_self(ptr noundef %0, ptr noundef %1) #11
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %0, i32 -136
  call void @pci_stop_and_remove_bus_device_locked(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %13, %11, %8, %4
  %16 = phi i32 [ -22, %4 ], [ %3, %13 ], [ %3, %11 ], [ %3, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_rescan_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  call void @pci_lock_rescan_remove() #11
  %12 = getelementptr i8, ptr %0, i32 -128
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @pci_rescan_bus(ptr noundef %13) #11
  call void @pci_unlock_rescan_remove() #11
  br label %15

15:                                               ; preds = %11, %8, %4
  %16 = phi i32 [ -22, %4 ], [ %3, %11 ], [ %3, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_bridge_attrs_are_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 -91
  %5 = load i8, ptr %4, align 1
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i16 [ %10, %8 ], [ 0, %3 ]
  ret i16 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subordinate_bus_number_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %6 = call i32 @pci_read_config_byte(ptr noundef %5, i32 noundef 26, ptr noundef nonnull %4) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %10) #11
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @secondary_bus_number_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %6 = call i32 @pci_read_config_byte(ptr noundef %5, i32 noundef 25, ptr noundef nonnull %4) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %10) #11
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pcie_dev_attrs_are_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_link_speed_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = call i32 @pcie_capability_read_word(ptr noundef %5, i32 noundef 18, ptr noundef nonnull %4) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = load i16, ptr %4, align 2
  %10 = and i16 %9, 15
  %11 = zext i16 %10 to i32
  %12 = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = call ptr @pci_speed_string(i32 noundef %14) #11
  %16 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %15) #11
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_link_width_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = call i32 @pcie_capability_read_word(ptr noundef %5, i32 noundef 18, ptr noundef nonnull %4) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load i16, ptr %4, align 2
  %10 = lshr i16 %9, 4
  %11 = and i16 %10, 63
  %12 = zext i16 %11 to i32
  %13 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %12) #11
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_link_width_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = tail call i32 @pcie_get_width_cap(ptr noundef %4) #11
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %5) #11
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_width_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_link_speed_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -136
  %5 = tail call i32 @pcie_get_speed_cap(ptr noundef %4) #11
  %6 = tail call ptr @pci_speed_string(i32 noundef %5) #11
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %6) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_speed_cap(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 3852702}
!10 = !{i64 2153543605}
!11 = !{i64 3852084}
!12 = !{i64 2153544417}
!13 = !{i64 3852922}
!14 = !{i64 2153545229}
!15 = !{i64 2153543250}
!16 = !{i64 3852307}
!17 = !{i64 2153543825}
!18 = !{i64 3851884}
!19 = !{i64 2153544637}
!20 = !{i64 3852504}
!21 = !{i32 0, i32 33}
