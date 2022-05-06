; ModuleID = '/llk/IR/drivers/pci/probe.c_pt.bc'
source_filename = "../drivers/pci/probe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_root_buses:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_root_buses\22\09\09\09\09\09"
module asm "__kstrtabns_pci_root_buses:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_no_pci_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22no_pci_devices\22\09\09\09\09\09"
module asm "__kstrtabns_no_pci_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_alloc_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pci_alloc_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pci_alloc_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_host_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_host_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_link_speed\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_speed_string:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_speed_string\22\09\09\09\09\09"
module asm "__kstrtabns_pci_speed_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_update_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_update_link_speed\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_update_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_add_new_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_add_new_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_add_new_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_relaxed_ordering_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_relaxed_ordering_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_relaxed_ordering_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_alloc_dev\22\09\09\09\09\09"
module asm "__kstrtabns_pci_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_read_dev_vendor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_read_dev_vendor_id\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_read_dev_vendor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_single_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_single_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_single_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_bus_configure_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_bus_configure_settings\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_bus_configure_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_child_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_child_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_child_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_create_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_create_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_create_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_host_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_host_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pci_host_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_root_bus_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_root_bus_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_root_bus_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_scan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_scan_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_scan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_rescan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_rescan_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_rescan_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_lock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_lock_rescan_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pci_lock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unlock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unlock_rescan_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unlock_rescan_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_add_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_add_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_add_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_domain_busn_res = type { %struct.list_head, %struct.resource, i32 }

@pci_root_buses = dso_local global %struct.list_head { ptr @pci_root_buses, ptr @pci_root_buses }, align 4
@__kstrtab_pci_root_buses = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_root_buses = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_root_buses = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_root_buses to i32), ptr @__kstrtab_pci_root_buses, ptr @__kstrtabns_pci_root_buses }, section "___ksymtab+pci_root_buses", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_no_pci_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_no_pci_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_no_pci_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @no_pci_devices to i32), ptr @__kstrtab_no_pci_devices, ptr @__kstrtabns_no_pci_devices }, section "___ksymtab+no_pci_devices", align 4
@__initcall__kmod_probe__229_109_pcibus_class_init2 = internal global ptr @pcibus_class_init, section ".initcall2.init", align 4
@.str = private unnamed_addr constant [52 x i8] c"[Firmware Bug]: reg 0x%x: invalid BAR (can't size)\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"reg 0x%x: can't handle BAR larger than 4GB (size %#010llx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"reg 0x%x: can't handle BAR above 4GB (bus address %#010llx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"reg 0x%x: initial BAR value %#010llx invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"reg 0x%x: %pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"PCI bridge to %pR%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" (subtractive decode)\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"  bridge window %pR (subtractive decode)\0A\00", align 1
@__kstrtab_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_alloc_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_alloc_host_bridge to i32), ptr @__kstrtab_pci_alloc_host_bridge, ptr @__kstrtabns_pci_alloc_host_bridge }, section "___ksymtab+pci_alloc_host_bridge", align 4
@__kstrtab_devm_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pci_alloc_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pci_alloc_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pci_alloc_host_bridge to i32), ptr @__kstrtab_devm_pci_alloc_host_bridge, ptr @__kstrtabns_devm_pci_alloc_host_bridge }, section "___ksymtab+devm_pci_alloc_host_bridge", align 4
@__kstrtab_pci_free_host_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_host_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_host_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_host_bridge to i32), ptr @__kstrtab_pci_free_host_bridge, ptr @__kstrtabns_pci_free_host_bridge }, section "___ksymtab+pci_free_host_bridge", align 4
@pcie_link_speed = dso_local constant [16 x i8] c"\FF\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1
@__kstrtab_pcie_link_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_link_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_link_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_link_speed to i32), ptr @__kstrtab_pcie_link_speed, ptr @__kstrtabns_pcie_link_speed }, section "___ksymtab_gpl+pcie_link_speed", align 4
@pci_speed_string.speed_strings = internal unnamed_addr constant [26 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"33 MHz PCI\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"66 MHz PCI\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"66 MHz PCI-X\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"100 MHz PCI-X\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"133 MHz PCI-X\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"66 MHz PCI-X 266\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"100 MHz PCI-X 266\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"133 MHz PCI-X 266\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Unknown AGP\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"1x AGP\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"2x AGP\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"4x AGP\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"8x AGP\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"66 MHz PCI-X 533\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"100 MHz PCI-X 533\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"133 MHz PCI-X 533\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"2.5 GT/s PCIe\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"5.0 GT/s PCIe\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"8.0 GT/s PCIe\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"16.0 GT/s PCIe\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"32.0 GT/s PCIe\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"64.0 GT/s PCIe\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@__kstrtab_pci_speed_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_speed_string = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_speed_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_speed_string to i32), ptr @__kstrtab_pci_speed_string, ptr @__kstrtabns_pci_speed_string }, section "___ksymtab_gpl+pci_speed_string", align 4
@__kstrtab_pcie_update_link_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_update_link_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_update_link_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_update_link_speed to i32), ptr @__kstrtab_pcie_update_link_speed, ptr @__kstrtabns_pcie_update_link_speed }, section "___ksymtab_gpl+pcie_update_link_speed", align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_pci_add_new_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_add_new_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_add_new_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_add_new_bus to i32), ptr @__kstrtab_pci_add_new_bus, ptr @__kstrtabns_pci_add_new_bus }, section "___ksymtab+pci_add_new_bus", align 4
@__kstrtab_pci_scan_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_bridge to i32), ptr @__kstrtab_pci_scan_bridge, ptr @__kstrtabns_pci_scan_bridge }, section "___ksymtab+pci_scan_bridge", align 4
@.str.32 = private unnamed_addr constant [78 x i8] c"claims to be downstream port but is acting as upstream port, correcting type\0A\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"claims to be upstream port but is acting as downstream port, correcting type\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%d\00", align 1
@pci_early_dump = external dso_local local_unnamed_addr global i8, align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"[%04x:%04x] type %02x class %#08x\0A\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"device has non-compliant BARs; disabling IO/MEM decoding\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x10: %pR\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x14: %pR\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x18: %pR\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"legacy IDE quirk: reg 0x1c: %pR\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"unknown header type %02x, ignoring device\0A\00", align 1
@.str.42 = private unnamed_addr constant [55 x i8] c"ignoring class %#08x (doesn't match header type %02x)\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"disabling Extended Tags\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"enabling Extended Tags\0A\00", align 1
@__kstrtab_pcie_relaxed_ordering_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_relaxed_ordering_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_relaxed_ordering_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_relaxed_ordering_enabled to i32), ptr @__kstrtab_pcie_relaxed_ordering_enabled, ptr @__kstrtabns_pcie_relaxed_ordering_enabled }, section "___ksymtab+pcie_relaxed_ordering_enabled", align 4
@pci_dev_type = external dso_local constant %struct.device_type, align 4
@__kstrtab_pci_alloc_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_alloc_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_alloc_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_alloc_dev to i32), ptr @__kstrtab_pci_alloc_dev, ptr @__kstrtabns_pci_alloc_dev }, section "___ksymtab+pci_alloc_dev", align 4
@__kstrtab_pci_bus_read_dev_vendor_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_read_dev_vendor_id = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_read_dev_vendor_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_read_dev_vendor_id to i32), ptr @__kstrtab_pci_bus_read_dev_vendor_id, ptr @__kstrtabns_pci_bus_read_dev_vendor_id }, section "___ksymtab+pci_bus_read_dev_vendor_id", align 4
@.str.45 = private unnamed_addr constant [20 x i8] c"drivers/pci/probe.c\00", align 1
@__kstrtab_pci_scan_single_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_single_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_single_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_single_device to i32), ptr @__kstrtab_pci_scan_single_device, ptr @__kstrtabns_pci_scan_single_device }, section "___ksymtab+pci_scan_single_device", align 4
@__kstrtab_pci_scan_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_slot to i32), ptr @__kstrtab_pci_scan_slot, ptr @__kstrtabns_pci_scan_slot }, section "___ksymtab+pci_scan_slot", align 4
@pcie_bus_config = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_pcie_bus_configure_settings = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_bus_configure_settings = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_bus_configure_settings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_bus_configure_settings to i32), ptr @__kstrtab_pcie_bus_configure_settings, ptr @__kstrtabns_pcie_bus_configure_settings }, section "___ksymtab_gpl+pcie_bus_configure_settings", align 4
@__kstrtab_pci_scan_child_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_child_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_child_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_child_bus to i32), ptr @__kstrtab_pci_scan_child_bus, ptr @__kstrtabns_pci_scan_child_bus }, section "___ksymtab_gpl+pci_scan_child_bus", align 4
@__kstrtab_pci_create_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_create_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_create_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_create_root_bus to i32), ptr @__kstrtab_pci_create_root_bus, ptr @__kstrtabns_pci_create_root_bus }, section "___ksymtab_gpl+pci_create_root_bus", align 4
@.str.46 = private unnamed_addr constant [28 x i8] c"Scanning root bridge failed\00", align 1
@__kstrtab_pci_host_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_host_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_host_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_host_probe to i32), ptr @__kstrtab_pci_host_probe, ptr @__kstrtabns_pci_host_probe }, section "___ksymtab_gpl+pci_host_probe", align 4
@.str.47 = private unnamed_addr constant [66 x i8] c"busn_res: can not insert %pR under %s%pR (conflicts with %s %pR)\0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"domain \00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"busn_res: %pR end %s updated to %02x\0A\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"can not be\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"busn_res: %pR %s released\0A\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"No busn resource found for root bus, will use [bus %02x-ff]\0A\00", align 1
@__kstrtab_pci_scan_root_bus_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_root_bus_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_root_bus_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_root_bus_bridge to i32), ptr @__kstrtab_pci_scan_root_bus_bridge, ptr @__kstrtabns_pci_scan_root_bus_bridge }, section "___ksymtab+pci_scan_root_bus_bridge", align 4
@__kstrtab_pci_scan_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_root_bus to i32), ptr @__kstrtab_pci_scan_root_bus, ptr @__kstrtabns_pci_scan_root_bus }, section "___ksymtab+pci_scan_root_bus", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@busn_resource = internal global %struct.resource { i32 0, i32 255, ptr @.str.88, i32 4096, i32 0, ptr null, ptr null, ptr null }, align 4
@__kstrtab_pci_scan_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_scan_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_scan_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_scan_bus to i32), ptr @__kstrtab_pci_scan_bus, ptr @__kstrtabns_pci_scan_bus }, section "___ksymtab+pci_scan_bus", align 4
@__kstrtab_pci_rescan_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_rescan_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_rescan_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_rescan_bus to i32), ptr @__kstrtab_pci_rescan_bus, ptr @__kstrtabns_pci_rescan_bus }, section "___ksymtab_gpl+pci_rescan_bus", align 4
@pci_rescan_remove_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_rescan_remove_lock, i64 12), ptr getelementptr (i8, ptr @pci_rescan_remove_lock, i64 12) } }, align 4
@__kstrtab_pci_lock_rescan_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_lock_rescan_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_lock_rescan_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_lock_rescan_remove to i32), ptr @__kstrtab_pci_lock_rescan_remove, ptr @__kstrtabns_pci_lock_rescan_remove }, section "___ksymtab_gpl+pci_lock_rescan_remove", align 4
@__kstrtab_pci_unlock_rescan_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unlock_rescan_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unlock_rescan_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unlock_rescan_remove to i32), ptr @__kstrtab_pci_unlock_rescan_remove, ptr @__kstrtabns_pci_unlock_rescan_remove }, section "___ksymtab_gpl+pci_unlock_rescan_remove", align 4
@.str.54 = private unnamed_addr constant [46 x i8] c"No bus number available for hot-added bridge\0A\00", align 1
@__kstrtab_pci_hp_add_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_add_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_add_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_add_bridge to i32), ptr @__kstrtab_pci_hp_add_bridge, ptr @__kstrtabns_pci_hp_add_bridge }, section "___ksymtab_gpl+pci_hp_add_bridge", align 4
@pcibus_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@pcibus_class = internal global %struct.class { ptr @.str.55, ptr null, ptr null, ptr @pcibus_groups, ptr null, ptr null, ptr null, ptr null, ptr @release_pcibus_dev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [8 x i8] c"pci_bus\00", align 1
@pcibus_groups = external dso_local global [0 x ptr], align 4
@.str.56 = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"can't handle bridge window above 4GB (bus address %#010llx)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.58 = private unnamed_addr constant [10 x i8] c"%04x:%02x\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"extended config space not accessible\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"failed to add bus: %d\0A\00", align 1
@pcix_bus_speed = internal unnamed_addr constant [16 x i8] c"\FF\02\03\04\FF\05\06\07\FF\09\0A\0B\FF\11\12\13", align 1
@agp_speeds = internal unnamed_addr constant [5 x i8] c"\0C\0D\0E\0F\10", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c"Primary bus is hard wired to 0\0A\00", align 1
@.str.62 = private unnamed_addr constant [63 x i8] c"bridge configuration invalid ([bus %02x-%02x]), reconfiguring\0A\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"bridge has subordinate %02x but max busn %02x\0A\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"PCI CardBus %04x:%02x\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"PCI Bus %04x:%02x\00", align 1
@.str.66 = private unnamed_addr constant [76 x i8] c"devices behind bridge are unusable because %pR cannot be assigned for them\0A\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"config space:\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.69 = private unnamed_addr constant [58 x i8] c"\014pci %04x:%02x:%02x.%d: not ready after %dms; giving up\0A\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"\016pci %04x:%02x:%02x.%d: not ready after %dms; waiting\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"\016pci %04x:%02x:%02x.%d: ready after %dms\0A\00", align 1
@.str.72 = private unnamed_addr constant [90 x i8] c"can't set Max Payload Size to %d; if necessary, use \22pci=pcie_bus_safe\22 and report a bug\0A\00", align 1
@.str.73 = private unnamed_addr constant [104 x i8] c"Max Payload Size %d, but upstream %s set to %d; if necessary, use \22pci=pcie_bus_safe\22 and report a bug\0A\00", align 1
@.str.74 = private unnamed_addr constant [63 x i8] c"Upstream bridge's Max Payload Size set to %d (was %d, max %d)\0A\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"Max Payload Size set to %d (was %d, max %d)\0A\00", align 1
@.str.76 = private unnamed_addr constant [67 x i8] c"Relaxed Ordering disabled because the Root Port didn't support it\0A\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"Max Payload Size set to %4d/%4d (was %4d), Max Read Rq %4d\0A\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"Failed attempting to set the MPS\0A\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"Failed attempting to set the MRRS\0A\00", align 1
@.str.80 = private unnamed_addr constant [118 x i8] c"MRRS was unable to be configured with a safe value.  If problems are experienced, try running with pci=pcie_bus_safe\0A\00", align 1
@pci_hotplug_bus_size = external dso_local local_unnamed_addr global i32, align 4
@.str.81 = private unnamed_addr constant [15 x i8] c"jailhouse,cell\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"pci%04x:%02x\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"PCI host bridge to bus %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"\016PCI host bridge to bus %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c" (bus address [%#06llx-%#06llx])\00", align 1
@.str.86 = private unnamed_addr constant [35 x i8] c" (bus address [%#010llx-%#010llx])\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"root bus resource %pR%s\0A\00", align 1
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@pci_domain_busn_res_list = internal global %struct.list_head { ptr @pci_domain_busn_res_list, ptr @pci_domain_busn_res_list }, align 4
@.str.88 = private unnamed_addr constant [9 x i8] c"PCI busn\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_probe__229_109_pcibus_class_init2, ptr @__ksymtab_devm_pci_alloc_host_bridge, ptr @__ksymtab_no_pci_devices, ptr @__ksymtab_pci_add_new_bus, ptr @__ksymtab_pci_alloc_dev, ptr @__ksymtab_pci_alloc_host_bridge, ptr @__ksymtab_pci_bus_read_dev_vendor_id, ptr @__ksymtab_pci_create_root_bus, ptr @__ksymtab_pci_free_host_bridge, ptr @__ksymtab_pci_host_probe, ptr @__ksymtab_pci_hp_add_bridge, ptr @__ksymtab_pci_lock_rescan_remove, ptr @__ksymtab_pci_rescan_bus, ptr @__ksymtab_pci_root_buses, ptr @__ksymtab_pci_scan_bridge, ptr @__ksymtab_pci_scan_bus, ptr @__ksymtab_pci_scan_child_bus, ptr @__ksymtab_pci_scan_root_bus, ptr @__ksymtab_pci_scan_root_bus_bridge, ptr @__ksymtab_pci_scan_single_device, ptr @__ksymtab_pci_scan_slot, ptr @__ksymtab_pci_speed_string, ptr @__ksymtab_pci_unlock_rescan_remove, ptr @__ksymtab_pcie_bus_configure_settings, ptr @__ksymtab_pcie_link_speed, ptr @__ksymtab_pcie_relaxed_ordering_enabled, ptr @__ksymtab_pcie_update_link_speed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @no_pci_devices() #0 {
  %1 = tail call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @device_match_any) #15
  %2 = icmp eq ptr %1, null
  %3 = zext i1 %2 to i32
  tail call void @put_device(ptr noundef %1) #15
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pcibus_class_init() #3 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @pcibus_class, ptr noundef nonnull @pcibus_class_init.__key) #15
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pci_read_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.pci_bus_region, align 8
  %9 = alloca %struct.pci_bus_region, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store i64 0, ptr %8, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  store i64 0, ptr %9, align 8, !annotation !8
  %10 = icmp eq i32 %1, 0
  %11 = select i1 %10, i32 -1, i32 -2048
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %13 = load i32, ptr %12, align 2
  %14 = and i32 %13, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %7) #15
  %18 = load i16, ptr %7, align 2
  %19 = and i16 %18, 3
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = and i16 %18, -4
  %23 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %22) #15
  br label %24

24:                                               ; preds = %21, %16, %4
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %33 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %5) #15
  %35 = load i32, ptr %5, align 4
  %36 = or i32 %35, %11
  %37 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %3, i32 noundef %36) #15
  %38 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %6) #15
  %39 = load i32, ptr %5, align 4
  %40 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %3, i32 noundef %39) #15
  %41 = load i32, ptr %6, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, ptr %6, align 4
  br label %44

44:                                               ; preds = %43, %31
  %45 = phi i32 [ 0, %43 ], [ %41, %31 ]
  %46 = load i32, ptr %5, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, ptr %5, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ 0, %48 ], [ %46, %44 ]
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %10, label %53, label %75

53:                                               ; preds = %49
  br i1 %52, label %57, label %54

54:                                               ; preds = %53
  %55 = and i32 %50, 3
  %56 = or i32 %55, 256
  br label %67

57:                                               ; preds = %53
  %58 = and i32 %50, 15
  %59 = and i32 %50, 8
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 512, i32 8704
  %62 = or i32 %61, %58
  %63 = and i32 %50, 6
  %64 = icmp eq i32 %63, 4
  %65 = or i32 %62, 1048576
  %66 = select i1 %64, i32 %65, i32 %62
  br label %67

67:                                               ; preds = %57, %54
  %68 = phi i32 [ %56, %54 ], [ %66, %57 ]
  %69 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %70 = or i32 %68, 262144
  store i32 %70, ptr %69, align 4
  %71 = and i32 %68, 256
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 -16, i32 -4
  %74 = select i1 %72, i64 4294967280, i64 1048572
  br label %80

75:                                               ; preds = %49
  %76 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  br i1 %52, label %80, label %78

78:                                               ; preds = %75
  %79 = or i32 %77, 1
  store i32 %79, ptr %76, align 4
  br label %80

80:                                               ; preds = %78, %75, %67
  %81 = phi i32 [ %73, %67 ], [ -2048, %75 ], [ -2048, %78 ]
  %82 = phi i32 [ %70, %67 ], [ %77, %75 ], [ %79, %78 ]
  %83 = phi i64 [ %74, %67 ], [ 4294965248, %75 ], [ 4294965248, %78 ]
  %84 = and i32 %50, %81
  %85 = and i32 %45, %81
  %86 = zext i32 %85 to i64
  %87 = zext i32 %84 to i64
  %88 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %89 = and i32 %82, 1048576
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %80
  %92 = add i32 %3, 4
  %93 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %92, ptr noundef nonnull %5) #15
  %94 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %92, i32 noundef -1) #15
  %95 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %92, ptr noundef nonnull %6) #15
  %96 = load i32, ptr %5, align 4
  %97 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %92, i32 noundef %96) #15
  %98 = load i32, ptr %5, align 4
  %99 = zext i32 %98 to i64
  %100 = shl nuw i64 %99, 32
  %101 = or i64 %100, %87
  %102 = load i32, ptr %6, align 4
  %103 = zext i32 %102 to i64
  %104 = shl nuw i64 %103, 32
  %105 = or i64 %104, %86
  %106 = or i64 %83, -4294967296
  br label %107

107:                                              ; preds = %91, %80
  %108 = phi i64 [ %101, %91 ], [ %87, %80 ]
  %109 = phi i64 [ %105, %91 ], [ %86, %80 ]
  %110 = phi i64 [ %106, %91 ], [ %83, %80 ]
  %111 = load i32, ptr %12, align 2
  %112 = and i32 %111, 4096
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load i16, ptr %7, align 2
  %116 = and i16 %115, 3
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %115) #15
  br label %120

120:                                              ; preds = %118, %114, %107
  %121 = icmp eq i64 %109, 0
  br i1 %121, label %179, label %122

122:                                              ; preds = %120
  %123 = and i64 %110, %109
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %122
  %126 = sub i64 0, %123
  %127 = and i64 %123, %126
  %128 = icmp eq i64 %108, %109
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = add i64 %127, -1
  %131 = or i64 %130, %108
  %132 = and i64 %131, %110
  %133 = icmp ne i64 %132, %110
  %134 = icmp eq i64 %127, 0
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %138, label %140

136:                                              ; preds = %125
  %137 = icmp eq i64 %127, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %136, %129, %122
  %139 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %139, ptr noundef nonnull @.str, i32 noundef %3) #16
  br label %179

140:                                              ; preds = %136, %129
  %141 = load i32, ptr %88, align 4
  %142 = and i32 %141, 1048576
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %140
  %145 = icmp ugt i64 %127, 4294967296
  br i1 %145, label %146, label %150

146:                                              ; preds = %144
  %147 = or i32 %141, 805306368
  store i32 %147, ptr %88, align 4
  store i32 0, ptr %2, align 4
  %148 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 0, ptr %148, align 4
  %149 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.1, i32 noundef %3, i64 noundef %127) #16
  br label %180

150:                                              ; preds = %144
  %151 = load i32, ptr %5, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = or i32 %141, 536870912
  store i32 %154, ptr %88, align 4
  store i32 0, ptr %2, align 4
  %155 = trunc i64 %127 to i32
  %156 = add i32 %155, -1
  %157 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %158, ptr noundef nonnull @.str.2, i32 noundef %3, i64 noundef %108) #16
  br label %180

159:                                              ; preds = %150, %140
  %160 = trunc i64 %108 to i32
  store i32 %160, ptr %8, align 8
  %161 = add i64 %127, %108
  %162 = trunc i64 %161 to i32
  %163 = add i32 %162, -1
  %164 = getelementptr inbounds %struct.pci_bus_region, ptr %8, i32 0, i32 1
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %166 = load ptr, ptr %165, align 8
  call void @pcibios_bus_to_resource(ptr noundef %166, ptr noundef %2, ptr noundef nonnull %8) #15
  %167 = load ptr, ptr %165, align 8
  call void @pcibios_resource_to_bus(ptr noundef %167, ptr noundef nonnull %9, ptr noundef %2) #15
  %168 = load i32, ptr %9, align 8
  %169 = load i32, ptr %8, align 8
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %180, label %171

171:                                              ; preds = %159
  %172 = load i32, ptr %88, align 4
  %173 = or i32 %172, 536870912
  store i32 %173, ptr %88, align 4
  store i32 0, ptr %2, align 4
  %174 = load i32, ptr %164, align 4
  %175 = sub i32 %174, %169
  %176 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %178 = zext i32 %169 to i64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %177, ptr noundef nonnull @.str.3, i32 noundef %3, i64 noundef %178) #16
  br label %180

179:                                              ; preds = %138, %120
  store i32 0, ptr %88, align 4
  br label %188

180:                                              ; preds = %171, %159, %153, %146
  %181 = load i32, ptr %88, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %184, ptr noundef nonnull @.str.4, i32 noundef %3, ptr noundef %2) #16
  %185 = load i32, ptr %88, align 4
  %186 = lshr i32 %185, 20
  %187 = and i32 %186, 1
  br label %188

188:                                              ; preds = %183, %180, %179
  %189 = phi i32 [ 0, %179 ], [ %187, %183 ], [ 0, %180 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %189
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_read_bridge_bases(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca %struct.pci_bus_region, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.pci_bus_region, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.pci_bus_region, align 8
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %173, label %19

19:                                               ; preds = %1
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %22 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  %23 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 49
  %24 = load i40, ptr %23, align 1
  %25 = and i40 %24, 1
  %26 = icmp eq i40 %25, 0
  %27 = select i1 %26, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.5, ptr noundef %22, ptr noundef nonnull %27) #16
  tail call void @pci_bus_remove_resources(ptr noundef %0) #15
  %28 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 7
  %29 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 0
  store ptr %28, ptr %29, align 4
  %30 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 8
  %31 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 9
  %33 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 10
  %35 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 3
  store ptr %34, ptr %35, align 4
  %36 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #15
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  %37 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 49
  %38 = load i40, ptr %37, align 1
  %39 = and i40 %38, 1073741824
  %40 = icmp eq i40 %39, 0
  %41 = select i1 %40, i32 -16, i32 -4
  %42 = call i32 @pci_read_config_byte(ptr noundef %36, i32 noundef 28, ptr noundef nonnull %10) #15
  %43 = call i32 @pci_read_config_byte(ptr noundef %36, i32 noundef 29, ptr noundef nonnull %11) #15
  %44 = load i8, ptr %10, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %41, %45
  %47 = shl nuw nsw i32 %46, 8
  %48 = load i8, ptr %11, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %41, %49
  %51 = shl nuw nsw i32 %50, 8
  %52 = and i32 %45, 15
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %65

54:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #15
  store i16 0, ptr %13, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #15
  store i16 0, ptr %14, align 2, !annotation !8
  %55 = call i32 @pci_read_config_word(ptr noundef %36, i32 noundef 48, ptr noundef nonnull %13) #15
  %56 = call i32 @pci_read_config_word(ptr noundef %36, i32 noundef 50, ptr noundef nonnull %14) #15
  %57 = load i16, ptr %13, align 2
  %58 = zext i16 %57 to i32
  %59 = shl nuw i32 %58, 16
  %60 = or i32 %59, %47
  %61 = load i16, ptr %14, align 2
  %62 = zext i16 %61 to i32
  %63 = shl nuw i32 %62, 16
  %64 = or i32 %63, %51
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #15
  br label %65

65:                                               ; preds = %54, %19
  %66 = phi i32 [ %60, %54 ], [ %47, %19 ]
  %67 = phi i32 [ %64, %54 ], [ %51, %19 ]
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load i8, ptr %10, align 1
  %71 = and i8 %70, 15
  %72 = zext i8 %71 to i32
  %73 = or i32 %72, 256
  %74 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 7, i32 3
  store i32 %73, ptr %74, align 4
  store i32 %66, ptr %12, align 8
  %75 = select i1 %40, i32 4095, i32 1023
  %76 = add i32 %67, %75
  %77 = getelementptr inbounds %struct.pci_bus_region, ptr %12, i32 0, i32 1
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8
  call void @pcibios_bus_to_resource(ptr noundef %79, ptr noundef %28, ptr noundef nonnull %12) #15
  %80 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.56, ptr noundef %28) #16
  br label %81

81:                                               ; preds = %69, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  %82 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  store i16 0, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %83 = load ptr, ptr %31, align 4
  %84 = call i32 @pci_read_config_word(ptr noundef %82, i32 noundef 32, ptr noundef nonnull %7) #15
  %85 = call i32 @pci_read_config_word(ptr noundef %82, i32 noundef 34, ptr noundef nonnull %8) #15
  %86 = load i16, ptr %7, align 2
  %87 = zext i16 %86 to i32
  %88 = shl nuw i32 %87, 16
  %89 = and i32 %88, -1048576
  %90 = load i16, ptr %8, align 2
  %91 = and i16 %90, -16
  %92 = zext i16 %91 to i32
  %93 = shl nuw i32 %92, 16
  %94 = icmp ugt i32 %89, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %81
  %96 = and i32 %87, 15
  %97 = or i32 %96, 512
  %98 = getelementptr inbounds %struct.resource, ptr %83, i32 0, i32 3
  store i32 %97, ptr %98, align 4
  store i32 %89, ptr %9, align 8
  %99 = or i32 %93, 1048575
  %100 = getelementptr inbounds %struct.pci_bus_region, ptr %9, i32 0, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  call void @pcibios_bus_to_resource(ptr noundef %102, ptr noundef %83, ptr noundef nonnull %9) #15
  %103 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %103, ptr noundef nonnull @.str.56, ptr noundef %83) #16
  br label %104

104:                                              ; preds = %95, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  %105 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %106 = load ptr, ptr %33, align 8
  %107 = call i32 @pci_read_config_word(ptr noundef %105, i32 noundef 36, ptr noundef nonnull %2) #15
  %108 = call i32 @pci_read_config_word(ptr noundef %105, i32 noundef 38, ptr noundef nonnull %3) #15
  %109 = load i16, ptr %2, align 2
  %110 = zext i16 %109 to i32
  %111 = shl nuw i32 %110, 16
  %112 = and i32 %111, -1048576
  %113 = load i16, ptr %3, align 2
  %114 = and i16 %113, -16
  %115 = zext i16 %114 to i32
  %116 = shl nuw i32 %115, 16
  %117 = and i32 %110, 15
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %133

119:                                              ; preds = %104
  %120 = zext i32 %112 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  %121 = call i32 @pci_read_config_dword(ptr noundef %105, i32 noundef 40, ptr noundef nonnull %5) #15
  %122 = call i32 @pci_read_config_dword(ptr noundef %105, i32 noundef 44, ptr noundef nonnull %6) #15
  %123 = load i32, ptr %5, align 4
  %124 = load i32, ptr %6, align 4
  %125 = icmp ugt i32 %123, %124
  %126 = zext i32 %123 to i64
  %127 = shl nuw i64 %126, 32
  %128 = or i64 %127, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %129 = icmp ult i64 %128, 4294967296
  %130 = select i1 %125, i1 true, i1 %129
  br i1 %130, label %133, label %131

131:                                              ; preds = %119
  %132 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.57, i64 noundef %128) #16
  br label %149

133:                                              ; preds = %119, %104
  %134 = icmp ult i32 %116, %112
  br i1 %134, label %149, label %135

135:                                              ; preds = %133
  %136 = load i16, ptr %2, align 2
  %137 = and i16 %136, 15
  %138 = or i16 %137, 8704
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds %struct.resource, ptr %106, i32 0, i32 3
  %141 = shl i32 %139, 20
  %142 = and i32 %141, 1048576
  %143 = or i32 %142, %139
  store i32 %143, ptr %140, align 4
  store i32 %112, ptr %4, align 8
  %144 = or i32 %116, 1048575
  %145 = getelementptr inbounds %struct.pci_bus_region, ptr %4, i32 0, i32 1
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 1
  %147 = load ptr, ptr %146, align 8
  call void @pcibios_bus_to_resource(ptr noundef %147, ptr noundef %106, ptr noundef nonnull %4) #15
  %148 = getelementptr inbounds %struct.pci_dev, ptr %105, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %148, ptr noundef nonnull @.str.56, ptr noundef %106) #16
  br label %149

149:                                              ; preds = %135, %133, %131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  %150 = load i40, ptr %23, align 1
  %151 = and i40 %150, 1
  %152 = icmp eq i40 %151, 0
  br i1 %152, label %173, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %16, align 8
  %155 = call ptr @pci_bus_resource_n(ptr noundef %154, i32 noundef 0) #15
  %156 = icmp ne ptr %155, null
  br label %157

157:                                              ; preds = %166, %153
  %158 = phi i1 [ %156, %153 ], [ %170, %166 ]
  %159 = phi ptr [ %155, %153 ], [ %169, %166 ]
  %160 = phi i32 [ 0, %153 ], [ %167, %166 ]
  br i1 %158, label %161, label %166

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.resource, ptr %159, i32 0, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  call void @pci_bus_add_resource(ptr noundef %0, ptr noundef nonnull %159, i32 noundef 1) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.8, ptr noundef nonnull %159) #16
  br label %166

166:                                              ; preds = %165, %161, %157
  %167 = add i32 %160, 1
  %168 = load ptr, ptr %16, align 8
  %169 = call ptr @pci_bus_resource_n(ptr noundef %168, i32 noundef %167) #15
  %170 = icmp ne ptr %169, null
  %171 = icmp slt i32 %167, 4
  %172 = or i1 %171, %170
  br i1 %172, label %157, label %173

173:                                              ; preds = %166, %149, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_remove_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_resource(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_alloc_host_bridge(i32 noundef %0) #0 {
  %2 = add i32 %0, 576
  %3 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 7
  store volatile ptr %6, ptr %6, align 16
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 7, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 8
  store volatile ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 8, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 13
  %11 = load i16, ptr %10, align 16
  %12 = or i16 %11, 252
  store i16 %12, ptr %10, align 16
  %13 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 6
  store i32 -1, ptr %13, align 4
  tail call void @device_initialize(ptr noundef nonnull %3) #15
  %14 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 33
  store ptr @pci_release_host_bridge_dev, ptr %14, align 4
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %3, %5 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_release_host_bridge_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(ptr noundef %0) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 7
  tail call void @pci_free_resource_list(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 8
  tail call void @pci_free_resource_list(ptr noundef %8) #15
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, 576
  %4 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 7
  store volatile ptr %7, ptr %7, align 16
  %8 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 7, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 8
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 8, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 13
  %12 = load i16, ptr %11, align 16
  %13 = or i16 %12, 252
  store i16 %13, ptr %11, align 16
  %14 = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 6
  store i32 -1, ptr %14, align 4
  tail call void @device_initialize(ptr noundef nonnull %4) #15
  %15 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  store ptr @pci_release_host_bridge_dev, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pci_alloc_host_bridge_release, ptr noundef nonnull %4) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  tail call void @put_device(ptr noundef nonnull %4) #15
  br label %24

20:                                               ; preds = %6
  %21 = tail call i32 @devm_of_pci_bridge_init(ptr noundef %0, ptr noundef nonnull %4) #15
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr %4, ptr null
  br label %24

24:                                               ; preds = %20, %19, %2
  %25 = phi ptr [ null, %19 ], [ %23, %20 ], [ null, %2 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pci_alloc_host_bridge_release(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_pci_bridge_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_free_host_bridge(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @pci_speed_string(i32 noundef %0) #6 {
  %2 = icmp ult i32 %0, 26
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr [26 x ptr], ptr @pci_speed_string.speed_strings, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.31, %1 ]
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pcie_update_link_speed(ptr nocapture noundef writeonly %0, i16 noundef zeroext %1) #7 {
  %3 = and i16 %1, 15
  %4 = zext i16 %3 to i32
  %5 = getelementptr [16 x i8], ptr @pcie_link_speed, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 15
  store i8 %6, ptr %7, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_add_new_bus(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 664) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %270, label %13

13:                                               ; preds = %3
  store volatile ptr %11, ptr %11, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 2
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 3
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 5
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 5, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 7
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 7, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 14
  store i8 -1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 15
  store i8 -1, ptr %24, align 1
  %25 = icmp eq ptr %0, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 16
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %26, %13
  %31 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 1
  store ptr %0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 10
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 19
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 19
  store i16 %36, ptr %37, align 2
  %38 = tail call ptr @pci_find_host_bridge(ptr noundef %0) #15
  %39 = getelementptr inbounds %struct.pci_host_bridge, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 32
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %44 = load ptr, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = phi ptr [ %44, %42 ], [ %40, %30 ]
  %47 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 9
  store ptr %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 21
  %49 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 21, i32 31
  store ptr @pcibus_class, ptr %49, align 4
  %50 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 16
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %48, ptr noundef nonnull @.str.58, i32 noundef %51, i32 noundef %2) #15
  %53 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 8
  store i32 %2, ptr %53, align 8
  %54 = trunc i32 %2 to i8
  %55 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 12
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  %57 = load i32, ptr %56, align 8
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 13
  store i8 %58, ptr %59, align 1
  %60 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 8, i32 1
  store i32 255, ptr %60, align 4
  %61 = icmp eq ptr %1, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 20
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 21, i32 1
  store ptr %64, ptr %65, align 4
  br label %228

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4
  store ptr %1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %69 = tail call ptr @get_device(ptr noundef %68) #15
  %70 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 20
  store ptr %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 21, i32 1
  store ptr %69, ptr %71, align 4
  tail call void @pci_set_bus_of_node(ptr noundef nonnull %11) #15
  %72 = load ptr, ptr %67, align 4
  %73 = tail call zeroext i8 @pci_find_capability(ptr noundef %72, i32 noundef 2) #15
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = tail call zeroext i8 @pci_find_capability(ptr noundef %72, i32 noundef 14) #15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %128, label %78

78:                                               ; preds = %75, %66
  %79 = phi i8 [ %76, %75 ], [ %73, %66 ]
  %80 = zext i8 %79 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  %81 = add nuw nsw i32 %80, 4
  %82 = call i32 @pci_read_config_dword(ptr noundef %72, i32 noundef %81, ptr noundef nonnull %5) #15
  %83 = load i32, ptr %5, align 4
  %84 = and i32 %83, 8
  %85 = and i32 %83, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = and i32 %83, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = and i32 %83, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90, %87, %78
  %94 = phi i32 [ 3, %78 ], [ 2, %87 ], [ 1, %90 ]
  %95 = icmp eq i32 %84, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = add nuw nsw i32 %94, 2
  %98 = icmp eq i32 %97, 5
  %99 = select i1 %98, i32 0, i32 %97
  br label %100

100:                                              ; preds = %96, %93, %90
  %101 = phi i32 [ %99, %96 ], [ %94, %93 ], [ 0, %90 ]
  %102 = getelementptr [5 x i8], ptr @agp_speeds, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  store i8 %103, ptr %23, align 2
  %104 = add nuw nsw i32 %80, 8
  %105 = call i32 @pci_read_config_dword(ptr noundef %72, i32 noundef %104, ptr noundef nonnull %6) #15
  %106 = load i32, ptr %5, align 4
  %107 = and i32 %106, 8
  %108 = load i32, ptr %6, align 4
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = and i32 %108, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = and i32 %108, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114, %111, %100
  %118 = phi i32 [ 3, %100 ], [ 2, %111 ], [ 1, %114 ]
  %119 = icmp eq i32 %107, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = add nuw nsw i32 %118, 2
  %122 = icmp eq i32 %121, 5
  %123 = select i1 %122, i32 0, i32 %121
  br label %124

124:                                              ; preds = %120, %117, %114
  %125 = phi i32 [ %123, %120 ], [ %118, %117 ], [ 0, %114 ]
  %126 = getelementptr [5 x i8], ptr @agp_speeds, i32 0, i32 %125
  %127 = load i8, ptr %126, align 1
  store i8 %127, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %128

128:                                              ; preds = %124, %75
  %129 = call zeroext i8 @pci_find_capability(ptr noundef %72, i32 noundef 7) #15
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %156, label %131

131:                                              ; preds = %128
  %132 = zext i8 %129 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  store i16 0, ptr %7, align 2, !annotation !8
  %133 = add nuw nsw i32 %132, 2
  %134 = call i32 @pci_read_config_word(ptr noundef %72, i32 noundef %133, ptr noundef nonnull %7) #15
  %135 = load i16, ptr %7, align 2
  %136 = zext i16 %135 to i32
  %137 = and i32 %136, 32768
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %131
  %140 = and i32 %136, 16384
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = and i32 %136, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = and i32 %136, 12288
  %147 = icmp eq i32 %146, 8192
  %148 = select i1 %147, i8 7, i8 4
  br label %149

149:                                              ; preds = %145, %142, %139, %131
  %150 = phi i8 [ 19, %131 ], [ 11, %139 ], [ %148, %145 ], [ 2, %142 ]
  store i8 %150, ptr %23, align 2
  %151 = lshr i16 %135, 6
  %152 = and i16 %151, 15
  %153 = zext i16 %152 to i32
  %154 = getelementptr [16 x i8], ptr @pcix_bus_speed, i32 0, i32 %153
  %155 = load i8, ptr %154, align 1
  store i8 %155, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  br label %180

156:                                              ; preds = %128
  %157 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 18
  %158 = load i8, ptr %157, align 4
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #15
  store i16 0, ptr %9, align 2, !annotation !8
  %161 = call i32 @pcie_capability_read_dword(ptr noundef %72, i32 noundef 12, ptr noundef nonnull %8) #15
  %162 = load i32, ptr %8, align 4
  %163 = and i32 %162, 15
  %164 = getelementptr [16 x i8], ptr @pcie_link_speed, i32 0, i32 %163
  %165 = load i8, ptr %164, align 1
  store i8 %165, ptr %23, align 2
  %166 = lshr i32 %162, 20
  %167 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 49
  %168 = load i40, ptr %167, align 1
  %169 = and i32 %166, 1
  %170 = zext i32 %169 to i40
  %171 = shl nuw nsw i40 %170, 34
  %172 = and i40 %168, -17179869185
  %173 = or i40 %172, %171
  store i40 %173, ptr %167, align 1
  %174 = call i32 @pcie_capability_read_word(ptr noundef %72, i32 noundef 18, ptr noundef nonnull %9) #15
  %175 = load i16, ptr %9, align 2
  %176 = and i16 %175, 15
  %177 = zext i16 %176 to i32
  %178 = getelementptr [16 x i8], ptr @pcie_link_speed, i32 0, i32 %177
  %179 = load i8, ptr %178, align 1
  store i8 %179, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %180

180:                                              ; preds = %160, %156, %149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !8
  %181 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.pci_bus, ptr %182, i32 0, i32 19
  %184 = load i16, ptr %183, align 2
  %185 = and i16 %184, 8
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 18
  %189 = load i8, ptr %188, align 4
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 24
  %193 = load i16, ptr %192, align 2
  %194 = lshr i16 %193, 4
  %195 = and i16 %194, 15
  %196 = zext i16 %195 to i32
  %197 = add nsw i32 %196, -4
  %198 = icmp ult i32 %197, 3
  br i1 %198, label %199, label %200

199:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %213

200:                                              ; preds = %191, %187
  %201 = call zeroext i8 @pci_find_capability(ptr noundef nonnull %1, i32 noundef 7) #15
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200, %180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %210

204:                                              ; preds = %200
  %205 = zext i8 %201 to i32
  %206 = add nuw nsw i32 %205, 4
  %207 = call i32 @pci_read_config_dword(ptr noundef nonnull %1, i32 noundef %206, ptr noundef nonnull %4) #15
  %208 = load i32, ptr %4, align 4
  %209 = icmp ugt i32 %208, 1073741823
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br i1 %209, label %213, label %210

210:                                              ; preds = %204, %203
  %211 = load i16, ptr %37, align 2
  %212 = or i16 %211, 8
  store i16 %212, ptr %37, align 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.59) #16
  br label %213

213:                                              ; preds = %210, %204, %199
  %214 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 17
  %215 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 7
  %216 = getelementptr %struct.pci_bus, ptr %11, i32 0, i32 6, i32 0
  store ptr %215, ptr %216, align 8
  %217 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 7, i32 2
  store ptr %214, ptr %217, align 4
  %218 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 8
  %219 = getelementptr %struct.pci_bus, ptr %11, i32 0, i32 6, i32 1
  store ptr %218, ptr %219, align 4
  %220 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 8, i32 2
  store ptr %214, ptr %220, align 4
  %221 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 9
  %222 = getelementptr %struct.pci_bus, ptr %11, i32 0, i32 6, i32 2
  store ptr %221, ptr %222, align 8
  %223 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 9, i32 2
  store ptr %214, ptr %223, align 4
  %224 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 10
  %225 = getelementptr %struct.pci_bus, ptr %11, i32 0, i32 6, i32 3
  store ptr %224, ptr %225, align 4
  %226 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 10, i32 2
  store ptr %214, ptr %226, align 4
  %227 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 2
  store ptr %11, ptr %227, align 4
  br label %228

228:                                              ; preds = %213, %62
  br label %229

229:                                              ; preds = %241, %228
  %230 = phi ptr [ %232, %241 ], [ %11, %228 ]
  %231 = getelementptr inbounds %struct.pci_bus, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %244, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.pci_bus, ptr %230, i32 0, i32 4
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.pci_dev, ptr %236, i32 0, i32 44, i32 14
  %240 = load ptr, ptr %239, align 8
  br label %241

241:                                              ; preds = %238, %234
  %242 = phi ptr [ %240, %238 ], [ null, %234 ]
  %243 = icmp eq ptr %242, null
  br i1 %243, label %229, label %252

244:                                              ; preds = %229
  %245 = getelementptr inbounds %struct.pci_bus, ptr %230, i32 0, i32 20
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.device, ptr %246, i32 0, i32 14
  %248 = load ptr, ptr %247, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = call ptr @pci_host_bridge_of_msi_domain(ptr noundef nonnull %230) #15
  br label %252

252:                                              ; preds = %250, %244, %241
  %253 = phi ptr [ %248, %244 ], [ %251, %250 ], [ %242, %241 ]
  %254 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 21, i32 14
  store ptr %253, ptr %254, align 8
  %255 = call i32 @device_register(ptr noundef %48) #15
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258, !prof !9

257:                                              ; preds = %252
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 1142, i32 noundef 9, ptr noundef null) #15
  br label %258

258:                                              ; preds = %257, %252
  call void @pcibios_add_bus(ptr noundef %11) #15
  %259 = load ptr, ptr %47, align 8
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %266, label %262

262:                                              ; preds = %258
  %263 = call i32 %260(ptr noundef %11) #15
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %266, !prof !9

265:                                              ; preds = %262
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 1148, i32 noundef 9, ptr noundef null) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.60, i32 noundef %263) #16
  br label %266

266:                                              ; preds = %265, %262, %258
  call void @down_write(ptr noundef nonnull @pci_bus_sem) #15
  %267 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 2
  %268 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 2, i32 1
  %269 = load ptr, ptr %268, align 4
  store ptr %11, ptr %268, align 4
  store ptr %267, ptr %11, align 8
  store ptr %269, ptr %14, align 4
  store volatile ptr %11, ptr %269, align 4
  call void @up_write(ptr noundef nonnull @pci_bus_sem) #15
  br label %270

270:                                              ; preds = %266, %3
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_scan_bridge(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_scan_bridge_extend(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.resource, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 13
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #15
  store i16 0, ptr %10, align 2, !annotation !8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #15
  %16 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %9) #15
  %17 = load i32, ptr %9, align 4
  %18 = trunc i32 %17 to i8
  %19 = lshr i32 %17, 8
  %20 = lshr i32 %17, 16
  %21 = icmp eq i8 %18, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %24 = load i8, ptr %23, align 4
  %25 = icmp ne i8 %24, 0
  %26 = and i32 %17, 65280
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  %29 = and i32 %17, 16711680
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.61) #16
  %33 = load i8, ptr %23, align 4
  br label %34

34:                                               ; preds = %32, %22, %5
  %35 = phi i8 [ %18, %5 ], [ %33, %32 ], [ 0, %22 ]
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %35, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = and i32 %19, 255
  %43 = and i32 %20, 255
  br label %51

44:                                               ; preds = %37
  %45 = zext i8 %35 to i32
  %46 = and i32 %19, 255
  %47 = icmp ule i32 %46, %45
  %48 = and i32 %20, 255
  %49 = icmp ugt i32 %46, %48
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %41
  %52 = phi i32 [ %43, %41 ], [ %48, %44 ]
  %53 = phi i32 [ %42, %41 ], [ %46, %44 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.62, i32 noundef %53, i32 noundef %52) #16
  br label %54

54:                                               ; preds = %51, %44, %34
  %55 = phi i1 [ true, %51 ], [ false, %34 ], [ false, %44 ]
  %56 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef 62, ptr noundef nonnull %10) #15
  %57 = load i16, ptr %10, align 2
  %58 = and i16 %57, -33
  %59 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 62, i16 noundef zeroext %58) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  store i16 0, ptr %8, align 2
  %60 = call i32 @pcie_capability_read_word(ptr noundef %1, i32 noundef 30, ptr noundef nonnull %8) #15
  %61 = load i16, ptr %8, align 2
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %54
  %65 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %1, i32 noundef 28, i16 noundef zeroext 0, i16 noundef zeroext 16) #15
  br label %66

66:                                               ; preds = %64, %54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  %67 = and i32 %19, 255
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %20, 255
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load i32, ptr @pci_flags, align 4
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %75, i1 true, i1 %13
  %77 = or i1 %55, %76
  br i1 %77, label %99, label %78

78:                                               ; preds = %72
  br i1 %36, label %79, label %312

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %81 = load i32, ptr %80, align 8
  %82 = call ptr @pci_find_bus(i32 noundef %81, i32 noundef %67) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = call ptr @pci_add_new_bus(ptr noundef %0, ptr noundef %1, i32 noundef %67)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %312, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.pci_bus, ptr %85, i32 0, i32 13
  store i8 %35, ptr %88, align 1
  %89 = call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %85, i32 noundef %67, i32 noundef %69)
  %90 = load i16, ptr %10, align 2
  %91 = getelementptr inbounds %struct.pci_bus, ptr %85, i32 0, i32 18
  store i16 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %87, %79
  %93 = phi ptr [ %82, %79 ], [ %85, %87 ]
  %94 = call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %93, i32 noundef 0) #15
  %95 = icmp ugt i32 %94, %69
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.63, i32 noundef %69, i32 noundef %94) #16
  br label %97

97:                                               ; preds = %96, %92
  %98 = call i32 @llvm.smax.i32(i32 %69, i32 %2)
  br label %277

99:                                               ; preds = %72, %66
  br i1 %36, label %100, label %110

100:                                              ; preds = %99
  %101 = load i32, ptr @pci_flags, align 4
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  %104 = or i1 %55, %103
  %105 = select i1 %104, i1 true, i1 %13
  br i1 %105, label %106, label %312

106:                                              ; preds = %100
  %107 = load i32, ptr %9, align 4
  %108 = and i32 %107, -16777216
  %109 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 24, i32 noundef %108) #15
  br label %312

110:                                              ; preds = %99
  %111 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 6, i16 noundef zeroext -1) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  %112 = load i8, ptr %11, align 1
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = call zeroext i8 @pci_find_capability(ptr noundef %1, i32 noundef 20) #15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = zext i8 %115 to i32
  %119 = add nuw nsw i32 %118, 4
  %120 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %119, ptr noundef nonnull %7) #15
  %121 = load i32, ptr %7, align 4
  %122 = lshr i32 %121, 8
  %123 = and i32 %121, 255
  %124 = icmp eq i32 %123, 0
  %125 = and i32 %122, 255
  %126 = icmp ult i32 %125, %123
  %127 = select i1 %124, i1 true, i1 %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %117, %114, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %129 = add i32 %2, 1
  br label %132

130:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %131 = add i32 %2, 1
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %131, %130 ], [ %129, %128 ]
  %134 = phi i1 [ true, %130 ], [ false, %128 ]
  %135 = phi i32 [ %125, %130 ], [ 0, %128 ]
  %136 = phi i32 [ %123, %130 ], [ %129, %128 ]
  %137 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %138 = load i32, ptr %137, align 8
  %139 = call ptr @pci_find_bus(i32 noundef %138, i32 noundef %136) #15
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = call ptr @pci_add_new_bus(ptr noundef %0, ptr noundef %1, i32 noundef %136)
  %143 = icmp eq ptr %142, null
  br i1 %143, label %312, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %142, i32 noundef %136, i32 noundef %146)
  br label %148

148:                                              ; preds = %144, %132
  %149 = phi ptr [ %139, %132 ], [ %142, %144 ]
  %150 = load i32, ptr %9, align 4
  %151 = and i32 %150, -16777216
  %152 = getelementptr inbounds %struct.pci_bus, ptr %149, i32 0, i32 13
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = or i32 %151, %154
  %156 = getelementptr inbounds %struct.pci_bus, ptr %149, i32 0, i32 8
  %157 = load i32, ptr %156, align 8
  %158 = shl i32 %157, 8
  %159 = or i32 %155, %158
  %160 = getelementptr inbounds %struct.pci_bus, ptr %149, i32 0, i32 8, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = shl i32 %161, 16
  %163 = or i32 %159, %162
  %164 = and i32 %163, 16777215
  %165 = or i32 %164, -1342177280
  %166 = select i1 %13, i32 %165, i32 %163
  store i32 %166, ptr %9, align 4
  %167 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 24, i32 noundef %166) #15
  br i1 %13, label %168, label %174

168:                                              ; preds = %148
  %169 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %170 = load i32, ptr %137, align 8
  %171 = add i32 %133, 1
  %172 = call ptr @pci_find_bus(i32 noundef %170, i32 noundef %171) #15
  %173 = icmp eq ptr %172, null
  br i1 %173, label %181, label %249

174:                                              ; preds = %148
  %175 = icmp eq i32 %3, 0
  %176 = add i32 %3, -1
  %177 = select i1 %175, i32 0, i32 %176
  %178 = load i16, ptr %10, align 2
  %179 = getelementptr inbounds %struct.pci_bus, ptr %149, i32 0, i32 18
  store i16 %178, ptr %179, align 4
  %180 = call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %149, i32 noundef %177)
  br label %254

181:                                              ; preds = %168
  %182 = load ptr, ptr %169, align 8
  %183 = icmp eq ptr %182, null
  br i1 %183, label %189, label %184

184:                                              ; preds = %184, %181
  %185 = phi ptr [ %187, %184 ], [ %182, %181 ]
  %186 = getelementptr inbounds %struct.pci_bus, ptr %185, i32 0, i32 1
  %187 = load ptr, ptr %186, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %184

189:                                              ; preds = %184, %181
  %190 = load i32, ptr %137, align 8
  %191 = add i32 %133, 2
  %192 = call ptr @pci_find_bus(i32 noundef %190, i32 noundef %191) #15
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %249

194:                                              ; preds = %189
  %195 = load ptr, ptr %169, align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %219, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr @pci_flags, align 4
  %199 = and i32 %198, 2
  %200 = icmp eq i32 %199, 0
  br label %201

201:                                              ; preds = %212, %197
  %202 = phi ptr [ %195, %197 ], [ %215, %212 ]
  %203 = phi ptr [ %0, %197 ], [ %202, %212 ]
  %204 = phi i32 [ 0, %197 ], [ %213, %212 ]
  br i1 %200, label %205, label %212

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.pci_bus, ptr %203, i32 0, i32 8, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp ule i32 %207, %133
  %209 = icmp ugt i32 %207, %171
  %210 = or i1 %208, %209
  %211 = select i1 %210, i32 %204, i32 1
  br label %212

212:                                              ; preds = %205, %201
  %213 = phi i32 [ %204, %201 ], [ %211, %205 ]
  %214 = getelementptr inbounds %struct.pci_bus, ptr %202, i32 0, i32 1
  %215 = load ptr, ptr %214, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %201

217:                                              ; preds = %212
  %218 = icmp eq i32 %213, 0
  br i1 %218, label %219, label %251

219:                                              ; preds = %217, %194
  %220 = load i32, ptr %137, align 8
  %221 = add i32 %133, 3
  %222 = call ptr @pci_find_bus(i32 noundef %220, i32 noundef %221) #15
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %249

224:                                              ; preds = %219
  %225 = load ptr, ptr %169, align 8
  %226 = icmp eq ptr %225, null
  br i1 %226, label %249, label %227

227:                                              ; preds = %224
  %228 = load i32, ptr @pci_flags, align 4
  %229 = and i32 %228, 2
  %230 = icmp eq i32 %229, 0
  br label %231

231:                                              ; preds = %242, %227
  %232 = phi ptr [ %225, %227 ], [ %245, %242 ]
  %233 = phi ptr [ %0, %227 ], [ %232, %242 ]
  %234 = phi i32 [ 0, %227 ], [ %243, %242 ]
  br i1 %230, label %235, label %242

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.pci_bus, ptr %233, i32 0, i32 8, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = icmp ule i32 %237, %133
  %239 = icmp ugt i32 %237, %191
  %240 = or i1 %238, %239
  %241 = select i1 %240, i32 %234, i32 1
  br label %242

242:                                              ; preds = %235, %231
  %243 = phi i32 [ %234, %231 ], [ %241, %235 ]
  %244 = getelementptr inbounds %struct.pci_bus, ptr %232, i32 0, i32 1
  %245 = load ptr, ptr %244, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %231

247:                                              ; preds = %242
  %248 = icmp eq i32 %243, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %247, %224, %219, %189, %168
  %250 = phi i32 [ 0, %168 ], [ 1, %189 ], [ 2, %219 ], [ 3, %247 ], [ 3, %224 ]
  br label %251

251:                                              ; preds = %249, %247, %217
  %252 = phi i32 [ %250, %249 ], [ 0, %217 ], [ 1, %247 ]
  %253 = add i32 %252, %133
  br label %254

254:                                              ; preds = %251, %174
  %255 = phi i32 [ %253, %251 ], [ %180, %174 ]
  %256 = select i1 %134, i32 %135, i32 %255
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef align 4 dereferenceable(32) %156, i32 32, i1 false) #15
  %257 = load i32, ptr %156, align 4
  %258 = icmp ugt i32 %257, %256
  br i1 %258, label %274, label %259

259:                                              ; preds = %254
  %260 = add i32 %256, 1
  %261 = sub i32 %260, %257
  %262 = call i32 @adjust_resource(ptr noundef %156, i32 noundef %257, i32 noundef %261) #15
  %263 = getelementptr inbounds %struct.pci_bus, ptr %149, i32 0, i32 21
  %264 = icmp eq i32 %262, 0
  %265 = select i1 %264, ptr @.str.51, ptr @.str.50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %263, ptr noundef nonnull @.str.49, ptr noundef nonnull %6, ptr noundef nonnull %265, i32 noundef %256) #16
  br i1 %264, label %266, label %274

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.pci_bus, ptr %149, i32 0, i32 8, i32 5
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load i32, ptr %156, align 4
  %272 = load i32, ptr %160, align 4
  %273 = call i32 @pci_bus_insert_busn_res(ptr noundef %149, i32 noundef %271, i32 noundef %272) #15
  br label %274

274:                                              ; preds = %270, %266, %259, %254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  %275 = trunc i32 %256 to i8
  %276 = call i32 @pci_write_config_byte(ptr noundef %1, i32 noundef 26, i8 noundef zeroext %275) #15
  br label %277

277:                                              ; preds = %274, %97
  %278 = phi i32 [ %256, %274 ], [ %98, %97 ]
  %279 = phi ptr [ %149, %274 ], [ %93, %97 ]
  %280 = getelementptr inbounds %struct.pci_bus, ptr %279, i32 0, i32 17
  %281 = select i1 %13, ptr @.str.64, ptr @.str.65
  %282 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %283 = load i32, ptr %282, align 8
  %284 = getelementptr inbounds %struct.pci_bus, ptr %279, i32 0, i32 12
  %285 = load i8, ptr %284, align 4
  %286 = zext i8 %285 to i32
  %287 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %280, ptr noundef nonnull %281, i32 noundef %283, i32 noundef %286)
  %288 = getelementptr inbounds %struct.pci_bus, ptr %279, i32 0, i32 8, i32 1
  br label %289

289:                                              ; preds = %303, %277
  %290 = phi ptr [ %0, %277 ], [ %292, %303 ]
  %291 = getelementptr inbounds %struct.pci_bus, ptr %290, i32 0, i32 1
  %292 = load ptr, ptr %291, align 8
  %293 = icmp eq ptr %292, null
  br i1 %293, label %312, label %294

294:                                              ; preds = %289
  %295 = load i32, ptr %288, align 4
  %296 = getelementptr inbounds %struct.pci_bus, ptr %290, i32 0, i32 8, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = icmp ugt i32 %295, %297
  br i1 %298, label %310, label %299

299:                                              ; preds = %294
  %300 = load i8, ptr %284, align 4
  %301 = zext i8 %300 to i32
  %302 = icmp ult i32 %297, %301
  br i1 %302, label %310, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.pci_bus, ptr %290, i32 0, i32 12
  %305 = load i8, ptr %304, align 4
  %306 = icmp ult i8 %300, %305
  %307 = zext i8 %305 to i32
  %308 = icmp ult i32 %295, %307
  %309 = select i1 %306, i1 true, i1 %308
  br i1 %309, label %310, label %289

310:                                              ; preds = %303, %299, %294
  %311 = getelementptr inbounds %struct.pci_bus, ptr %279, i32 0, i32 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.66, ptr noundef %311) #16
  br label %312

312:                                              ; preds = %310, %289, %141, %106, %100, %84, %78
  %313 = phi i32 [ %278, %310 ], [ %2, %141 ], [ %2, %106 ], [ %2, %100 ], [ %2, %78 ], [ %2, %84 ], [ %278, %289 ]
  %314 = load i16, ptr %10, align 2
  %315 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef 62, i16 noundef zeroext %314) #15
  %316 = call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pcie_port_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 16) #15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  store i8 %3, ptr %7, align 4
  %8 = add nuw nsw i32 %6, 2
  %9 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %2) #15
  %10 = load i16, ptr %2, align 2
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  store i16 %10, ptr %11, align 2
  %12 = add nuw nsw i32 %6, 4
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17
  %14 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %12, ptr noundef %13) #15
  %15 = load i32, ptr %13, align 8
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 7
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, -8
  %21 = or i8 %20, %17
  store i8 %21, ptr %18, align 1
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %57, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %11, align 2
  %33 = lshr i16 %32, 4
  %34 = and i16 %33, 15
  %35 = zext i16 %34 to i32
  switch i32 %35, label %57 [
    i32 6, label %36
    i32 5, label %44
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 24
  %38 = load i16, ptr %37, align 2
  %39 = and i16 %38, 208
  %40 = icmp eq i16 %39, 64
  %41 = and i16 %38, 240
  %42 = icmp eq i16 %41, 128
  %43 = or i1 %40, %42
  br i1 %43, label %49, label %57

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 24
  %46 = load i16, ptr %45, align 2
  %47 = and i16 %46, 240
  %48 = icmp eq i16 %47, 80
  br i1 %48, label %49, label %57

49:                                               ; preds = %44, %36
  %50 = phi ptr [ @.str.32, %36 ], [ @.str.33, %44 ]
  %51 = phi i16 [ -246, %36 ], [ -247, %44 ]
  %52 = phi i16 [ 5, %36 ], [ 6, %44 ]
  %53 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull %50) #16
  %54 = load i16, ptr %11, align 2
  %55 = and i16 %54, %51
  %56 = or i16 %55, %52
  store i16 %56, ptr %11, align 2
  br label %57

57:                                               ; preds = %49, %44, %36, %31, %27, %5, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pcie_hotplug_bridge(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %2) #15
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %9 = load i40, ptr %8, align 1
  %10 = or i40 %9, 16777216
  store i40 %10, ptr %8, align 1
  br label %11

11:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_cfg_space_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 19
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %105

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 16776960
  %22 = icmp eq i32 %21, 393216
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !8
  %24 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %10) #15
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %10, align 4
  %27 = icmp eq i32 %26, -1
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !8
  %30 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %8) #15
  br label %34

31:                                               ; preds = %38
  %32 = add nuw nsw i32 %35, 256
  %33 = icmp ult i32 %35, 3840
  br i1 %33, label %34, label %43

34:                                               ; preds = %31, %29
  %35 = phi i32 [ 256, %29 ], [ %32, %31 ]
  %36 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %9) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, ptr %8, align 4
  %40 = load i32, ptr %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %31, label %42

42:                                               ; preds = %38, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %44

43:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %44

44:                                               ; preds = %43, %42, %23
  %45 = phi i32 [ 256, %23 ], [ 256, %43 ], [ 4096, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br label %105

46:                                               ; preds = %18
  %47 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  %51 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %7) #15
  %52 = icmp ne i32 %51, 0
  %53 = load i32, ptr %7, align 4
  %54 = icmp eq i32 %53, -1
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %71, label %56

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  %57 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #15
  br label %61

58:                                               ; preds = %65
  %59 = add nuw nsw i32 %62, 256
  %60 = icmp ult i32 %62, 3840
  br i1 %60, label %61, label %70

61:                                               ; preds = %58, %56
  %62 = phi i32 [ 256, %56 ], [ %59, %58 ]
  %63 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %62, ptr noundef nonnull %6) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, ptr %5, align 4
  %67 = load i32, ptr %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %58, label %69

69:                                               ; preds = %65, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %71

70:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %71

71:                                               ; preds = %70, %69, %50
  %72 = phi i32 [ 256, %50 ], [ 256, %70 ], [ 4096, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %105

73:                                               ; preds = %46
  %74 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %73
  %77 = zext i8 %74 to i32
  %78 = add nuw nsw i32 %77, 4
  %79 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %78, ptr noundef nonnull %11) #15
  %80 = load i32, ptr %11, align 4
  %81 = icmp ult i32 %80, 1073741824
  br i1 %81, label %105, label %82

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !8
  %83 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %4) #15
  %84 = icmp ne i32 %83, 0
  %85 = load i32, ptr %4, align 4
  %86 = icmp eq i32 %85, -1
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %89 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #15
  br label %93

90:                                               ; preds = %97
  %91 = add nuw nsw i32 %94, 256
  %92 = icmp ult i32 %94, 3840
  br i1 %92, label %93, label %102

93:                                               ; preds = %90, %88
  %94 = phi i32 [ 256, %88 ], [ %91, %90 ]
  %95 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %94, ptr noundef nonnull %3) #15
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, ptr %2, align 4
  %99 = load i32, ptr %3, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %90, label %101

101:                                              ; preds = %97, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %103

102:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %103

103:                                              ; preds = %102, %101, %82
  %104 = phi i32 [ 256, %82 ], [ 256, %102 ], [ 4096, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %105

105:                                              ; preds = %103, %76, %73, %71, %44, %1
  %106 = phi i32 [ %45, %44 ], [ %72, %71 ], [ %104, %103 ], [ 256, %1 ], [ 256, %73 ], [ 256, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_setup_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca [64 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i16, align 2
  %15 = alloca %struct.pci_bus_region, align 8
  %16 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #15
  store i16 0, ptr %14, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  store i64 0, ptr %15, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #15
  store i8 0, ptr %13, align 1, !annotation !8
  %17 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 14, ptr noundef nonnull %13) #15
  %18 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #15
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 3
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 20
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 1
  store ptr %25, ptr %27, align 4
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 5
  store ptr @pci_bus_type, ptr %28, align 4
  %29 = and i8 %18, 127
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %32 = load i40, ptr %31, align 1
  %33 = lshr i8 %18, 3
  %34 = and i8 %33, 16
  %35 = zext i8 %34 to i40
  %36 = and i40 %32, -17
  %37 = or i40 %36, %35
  store i40 %37, ptr %31, align 1
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  store i32 1, ptr %38, align 4
  call void @set_pcie_port_type(ptr noundef %0)
  call void @pci_set_of_node(ptr noundef %0) #15
  call void @pci_dev_assign_slot(ptr noundef %0) #15
  %39 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 28
  store i64 4294967295, ptr %39, align 8
  %40 = load ptr, ptr %19, align 8
  %41 = getelementptr inbounds %struct.pci_bus, ptr %40, i32 0, i32 16
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.pci_bus, ptr %40, i32 0, i32 12
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 3
  %49 = and i32 %48, 31
  %50 = and i32 %47, 7
  %51 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %26, ptr noundef nonnull @.str.34, i32 noundef %42, i32 noundef %45, i32 noundef %49, i32 noundef %50) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 0, ptr %12, align 4, !annotation !8
  %52 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %12) #15
  %53 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 12
  store i8 %54, ptr %55, align 4
  %56 = lshr i32 %53, 8
  %57 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  store i32 %56, ptr %57, align 8
  %58 = load i8, ptr @pci_early_dump, align 1, !range !10
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %11) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %11, i8 0, i32 256, i1 false) #15, !annotation !8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.67) #16
  br label %61

61:                                               ; preds = %61, %60
  %62 = phi i32 [ 0, %60 ], [ %66, %61 ]
  %63 = lshr exact i32 %62, 2
  %64 = getelementptr [64 x i32], ptr %11, i32 0, i32 %63
  %65 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %62, ptr noundef %64) #15
  %66 = add nuw nsw i32 %62, 4
  %67 = icmp ult i32 %62, 252
  br i1 %67, label %61, label %68

68:                                               ; preds = %61
  call void @print_hex_dump(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %11, i32 noundef 256, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %11) #15
  br label %69

69:                                               ; preds = %68, %1
  %70 = call i32 @pci_cfg_space_size(ptr noundef %0)
  %71 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  store i32 %70, ptr %71, align 8
  %72 = call zeroext i16 @pci_find_vsec_capability(ptr noundef %0, i16 noundef zeroext -32634, i32 noundef 4660) #15
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i40, ptr %31, align 1
  %76 = or i40 %75, 67108864
  store i40 %76, ptr %31, align 1
  br label %77

77:                                               ; preds = %74, %69
  %78 = load ptr, ptr %19, align 8
  %79 = getelementptr inbounds %struct.pci_bus, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.pci_bus, ptr %78, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 49
  %88 = load i40, ptr %87, align 1
  %89 = and i40 %88, 402653184
  %90 = icmp eq i40 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i40, ptr %31, align 1
  %93 = or i40 %92, 134217728
  store i40 %93, ptr %31, align 1
  br label %94

94:                                               ; preds = %91, %86, %82, %77
  %95 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 5, ptr %95, align 4
  call void @pci_fixup_device(i32 noundef 0, ptr noundef %0) #15
  %96 = load ptr, ptr %19, align 8
  %97 = getelementptr inbounds %struct.pci_bus, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.pci_bus, ptr %96, i32 0, i32 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 49
  %106 = load i40, ptr %105, align 1
  %107 = and i40 %106, 268435456
  %108 = icmp eq i40 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44, i32 36
  %111 = load i32, ptr %110, align 8
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %104
  %114 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 36
  store i32 3, ptr %114, align 8
  br label %115

115:                                              ; preds = %113, %109, %100, %94
  %116 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %117 = load i16, ptr %116, align 8
  %118 = zext i16 %117 to i32
  %119 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %120 = load i16, ptr %119, align 2
  %121 = zext i16 %120 to i32
  %122 = load i8, ptr %30, align 1
  %123 = zext i8 %122 to i32
  %124 = load i32, ptr %57, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.35, i32 noundef %118, i32 noundef %121, i32 noundef %123, i32 noundef %124) #16
  %125 = load i32, ptr %57, align 8
  %126 = lshr i32 %125, 8
  %127 = load i40, ptr %31, align 1
  %128 = and i40 %127, 4294967296
  %129 = icmp eq i40 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %115
  %131 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %132 = load i32, ptr %131, align 2
  %133 = and i32 %132, 4096
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %14) #15
  %137 = load i16, ptr %14, align 2
  %138 = and i16 %137, 3
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %135
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.36) #16
  %141 = load i16, ptr %14, align 2
  %142 = and i16 %141, -4
  store i16 %142, ptr %14, align 2
  %143 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %142) #15
  br label %144

144:                                              ; preds = %140, %135, %130, %115
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #15
  store i16 0, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #15
  store i16 0, ptr %10, align 2, !annotation !8
  %145 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %9) #15
  %146 = load i16, ptr %9, align 2
  %147 = xor i16 %146, 1024
  %148 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %147) #15
  %149 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %10) #15
  %150 = load i16, ptr %9, align 2
  %151 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %150) #15
  %152 = load i16, ptr %10, align 2
  %153 = icmp eq i16 %152, %147
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #15
  %154 = load i40, ptr %31, align 1
  %155 = select i1 %153, i40 0, i40 536870912
  %156 = and i40 %154, -536870913
  %157 = or i40 %156, %155
  store i40 %157, ptr %31, align 1
  %158 = load i8, ptr %30, align 1
  switch i8 %158, label %365 [
    i8 0, label %159
    i8 1, label %228
    i8 2, label %333
  ]

159:                                              ; preds = %144
  %160 = icmp eq i32 %126, 1540
  br i1 %160, label %367, label %161

161:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #15
  store i8 0, ptr %8, align 1, !annotation !8
  %162 = and i40 %154, 8388608
  %163 = icmp eq i40 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  store i8 0, ptr %165, align 1
  br label %175

166:                                              ; preds = %161
  %167 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %8) #15
  %168 = load i8, ptr %8, align 1
  %169 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  store i8 %168, ptr %169, align 1
  %170 = icmp eq i8 %168, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %8) #15
  %173 = load i8, ptr %8, align 1
  %174 = zext i8 %173 to i32
  br label %175

175:                                              ; preds = %171, %166, %164
  %176 = phi i32 [ 0, %164 ], [ %174, %171 ], [ 0, %166 ]
  %177 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  store i32 %176, ptr %177, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #15
  %178 = load i40, ptr %31, align 1
  %179 = and i40 %178, 4303355904
  %180 = icmp eq i40 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %181, %175
  %182 = phi i32 [ %188, %181 ], [ 0, %175 ]
  %183 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %182
  %184 = shl nuw nsw i32 %182, 2
  %185 = add nuw nsw i32 %184, 16
  %186 = call i32 @__pci_read_base(ptr noundef %0, i32 noundef 0, ptr noundef %183, i32 noundef %185) #15
  %187 = add nuw nsw i32 %182, 1
  %188 = add i32 %187, %186
  %189 = icmp ult i32 %188, 6
  br i1 %189, label %181, label %190

190:                                              ; preds = %181
  %191 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  %192 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  store i8 48, ptr %192, align 8
  %193 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  store i32 287232, ptr %193, align 4
  %194 = call i32 @__pci_read_base(ptr noundef %0, i32 noundef 2, ptr noundef %191, i32 noundef 48) #15
  br label %195

195:                                              ; preds = %190, %175
  %196 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %197 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %198 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 44, ptr noundef %196) #15
  %199 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 46, ptr noundef %197) #15
  %200 = icmp eq i32 %126, 257
  br i1 %200, label %201, label %370

201:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #15
  store i8 0, ptr %16, align 1, !annotation !8
  %202 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %16) #15
  %203 = load i8, ptr %16, align 1
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  store i32 496, ptr %15, align 8
  %207 = getelementptr inbounds %struct.pci_bus_region, ptr %15, i32 0, i32 1
  store i32 503, ptr %207, align 4
  %208 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %209 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  store i32 272, ptr %209, align 4
  %210 = load ptr, ptr %19, align 8
  call void @pcibios_bus_to_resource(ptr noundef %210, ptr noundef %208, ptr noundef nonnull %15) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef %208) #16
  store i32 1014, ptr %15, align 8
  store i32 1014, ptr %207, align 4
  %211 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %212 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  store i32 272, ptr %212, align 4
  %213 = load ptr, ptr %19, align 8
  call void @pcibios_bus_to_resource(ptr noundef %213, ptr noundef %211, ptr noundef nonnull %15) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.38, ptr noundef %211) #16
  %214 = load i8, ptr %16, align 1
  br label %215

215:                                              ; preds = %206, %201
  %216 = phi i8 [ %214, %206 ], [ %203, %201 ]
  %217 = and i8 %216, 4
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  store i32 368, ptr %15, align 8
  %220 = getelementptr inbounds %struct.pci_bus_region, ptr %15, i32 0, i32 1
  store i32 375, ptr %220, align 4
  %221 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %222 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  store i32 272, ptr %222, align 4
  %223 = load ptr, ptr %19, align 8
  call void @pcibios_bus_to_resource(ptr noundef %223, ptr noundef %221, ptr noundef nonnull %15) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.39, ptr noundef %221) #16
  store i32 886, ptr %15, align 8
  store i32 886, ptr %220, align 4
  %224 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %225 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  store i32 272, ptr %225, align 4
  %226 = load ptr, ptr %19, align 8
  call void @pcibios_bus_to_resource(ptr noundef %226, ptr noundef %224, ptr noundef nonnull %15) #15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.40, ptr noundef %224) #16
  br label %227

227:                                              ; preds = %219, %215
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #15
  br label %370

228:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1, !annotation !8
  %229 = and i40 %154, 8388608
  %230 = icmp eq i40 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  store i8 0, ptr %232, align 1
  br label %242

233:                                              ; preds = %228
  %234 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %7) #15
  %235 = load i8, ptr %7, align 1
  %236 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  store i8 %235, ptr %236, align 1
  %237 = icmp eq i8 %235, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %233
  %239 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %7) #15
  %240 = load i8, ptr %7, align 1
  %241 = zext i8 %240 to i32
  br label %242

242:                                              ; preds = %238, %233, %231
  %243 = phi i32 [ 0, %231 ], [ %241, %238 ], [ 0, %233 ]
  %244 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  store i32 %243, ptr %244, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  %245 = load i32, ptr %57, align 8
  %246 = and i32 %245, 255
  %247 = icmp eq i32 %246, 1
  %248 = zext i1 %247 to i40
  %249 = load i40, ptr %31, align 1
  %250 = and i40 %249, -2
  %251 = or i40 %250, %248
  store i40 %251, ptr %31, align 1
  %252 = and i40 %249, 4303355904
  %253 = icmp eq i40 %252, 0
  br i1 %253, label %254, label %268

254:                                              ; preds = %254, %242
  %255 = phi i32 [ %261, %254 ], [ 0, %242 ]
  %256 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %255
  %257 = shl nuw nsw i32 %255, 2
  %258 = add nuw nsw i32 %257, 16
  %259 = call i32 @__pci_read_base(ptr noundef %0, i32 noundef 0, ptr noundef %256, i32 noundef %258) #15
  %260 = add nuw nsw i32 %255, 1
  %261 = add i32 %260, %259
  %262 = icmp ult i32 %261, 2
  br i1 %262, label %254, label %263

263:                                              ; preds = %254
  %264 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  %265 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  store i8 56, ptr %265, align 8
  %266 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  store i32 287232, ptr %266, align 4
  %267 = call i32 @__pci_read_base(ptr noundef %0, i32 noundef 2, ptr noundef %264, i32 noundef 56) #15
  br label %268

268:                                              ; preds = %263, %242
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  %269 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %4) #15
  %270 = load i16, ptr %4, align 2
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 28, i16 noundef zeroext -7952) #15
  %274 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %4) #15
  %275 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 28, i16 noundef zeroext 0) #15
  %276 = load i16, ptr %4, align 2
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %272, %268
  %279 = load i40, ptr %31, align 1
  %280 = or i40 %279, 2
  store i40 %280, ptr %31, align 1
  br label %281

281:                                              ; preds = %278, %272
  %282 = load i16, ptr %116, align 8
  %283 = icmp eq i16 %282, 4113
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i16, ptr %119, align 2
  %286 = icmp eq i16 %285, 1
  br i1 %286, label %314, label %287

287:                                              ; preds = %284, %281
  %288 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %5) #15
  %289 = load i32, ptr %5, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 36, i32 noundef -2031632) #15
  %293 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %5) #15
  %294 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 36, i32 noundef 0) #15
  %295 = load i32, ptr %5, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %314, label %297

297:                                              ; preds = %291, %287
  %298 = phi i32 [ %295, %291 ], [ %289, %287 ]
  %299 = load i40, ptr %31, align 1
  %300 = or i40 %299, 4
  store i40 %300, ptr %31, align 1
  %301 = and i32 %298, 15
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %303, label %314

303:                                              ; preds = %297
  %304 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %5) #15
  %305 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 40, i32 noundef -1) #15
  %306 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %6) #15
  %307 = load i32, ptr %5, align 4
  %308 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 40, i32 noundef %307) #15
  %309 = load i32, ptr %6, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %303
  %312 = load i40, ptr %31, align 1
  %313 = or i40 %312, 8
  store i40 %313, ptr %31, align 1
  br label %314

314:                                              ; preds = %311, %303, %297, %291, %284
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %315 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %3) #15
  %316 = load i32, ptr %3, align 4
  %317 = and i32 %316, 64
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %314
  %320 = load i40, ptr %31, align 1
  %321 = or i40 %320, 16777216
  store i40 %321, ptr %31, align 1
  br label %322

322:                                              ; preds = %319, %314
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %323 = call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 13) #15
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %370, label %325

325:                                              ; preds = %322
  %326 = zext i8 %323 to i32
  %327 = add nuw nsw i32 %326, 4
  %328 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %329 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %327, ptr noundef %328) #15
  %330 = add nuw nsw i32 %326, 6
  %331 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %332 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %330, ptr noundef %331) #15
  br label %370

333:                                              ; preds = %144
  %334 = icmp eq i32 %126, 1543
  br i1 %334, label %335, label %367

335:                                              ; preds = %333
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !annotation !8
  %336 = and i40 %154, 8388608
  %337 = icmp eq i40 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  store i8 0, ptr %339, align 1
  br label %349

340:                                              ; preds = %335
  %341 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %2) #15
  %342 = load i8, ptr %2, align 1
  %343 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  store i8 %342, ptr %343, align 1
  %344 = icmp eq i8 %342, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %340
  %346 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %2) #15
  %347 = load i8, ptr %2, align 1
  %348 = zext i8 %347 to i32
  br label %349

349:                                              ; preds = %345, %340, %338
  %350 = phi i32 [ 0, %338 ], [ %348, %345 ], [ 0, %340 ]
  %351 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  store i32 %350, ptr %351, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  %352 = load i40, ptr %31, align 1
  %353 = and i40 %352, 4303355904
  %354 = icmp eq i40 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %349
  %356 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  br label %357

357:                                              ; preds = %357, %355
  %358 = call i32 @__pci_read_base(ptr noundef %0, i32 noundef 0, ptr noundef %356, i32 noundef 16) #15
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %357, label %360

360:                                              ; preds = %357, %349
  %361 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %362 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 64, ptr noundef %361) #15
  %363 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %364 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 66, ptr noundef %363) #15
  br label %370

365:                                              ; preds = %144
  %366 = zext i8 %158 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef %366) #16
  call void @pci_release_of_node(ptr noundef %0) #15
  br label %370

367:                                              ; preds = %333, %159
  %368 = load i32, ptr %57, align 8
  %369 = zext i8 %158 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.42, i32 noundef %368, i32 noundef %369) #16
  store i32 0, ptr %57, align 8
  br label %370

370:                                              ; preds = %367, %365, %360, %325, %322, %227, %195
  %371 = phi i32 [ -5, %365 ], [ 0, %322 ], [ 0, %325 ], [ 0, %195 ], [ 0, %227 ], [ 0, %367 ], [ 0, %360 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #15
  ret i32 %371
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_assign_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_device(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_configure_extended_tags(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load i32, ptr %3, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %4) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @pci_find_host_bridge(ptr noundef %20) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pci_host_bridge, ptr %21, i32 0, i32 13
  %25 = load i16, ptr %24, align 16
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  %28 = load i16, ptr %4, align 2
  %29 = and i16 %28, 256
  %30 = icmp eq i16 %29, 0
  br i1 %27, label %35, label %31

31:                                               ; preds = %23
  br i1 %30, label %39, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.43) #16
  %34 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 256, i16 noundef zeroext 0) #15
  br label %39

35:                                               ; preds = %23
  br i1 %30, label %36, label %39

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.44) #16
  %38 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext 256) #15
  br label %39

39:                                               ; preds = %36, %35, %32, %31, %18, %15, %11, %8, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pcie_relaxed_ordering_enabled(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %2) #15
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, 16
  %6 = icmp ne i16 %5, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_alloc_dev(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1208) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store volatile ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 4
  store ptr @pci_dev_type, ptr %7, align 8
  %8 = tail call ptr @pci_bus_get(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 58
  store i32 0, ptr %10, align 8
  br label %11

11:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @pci_bus_read_config_dword(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef %2) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 4
  switch i32 %8, label %9 [
    i32 -1, label %50
    i32 0, label %50
    i32 65535, label %50
    i32 -65536, label %50
  ]

9:                                                ; preds = %7
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %16 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %17 = lshr i32 %1, 3
  %18 = and i32 %17, 31
  %19 = and i32 %1, 7
  br label %20

20:                                               ; preds = %34, %14
  %21 = phi i32 [ %35, %34 ], [ 1, %14 ]
  %22 = icmp sgt i32 %21, %3
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = icmp sgt i32 %21, 999
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = load i32, ptr %15, align 8
  %27 = load i8, ptr %16, align 4
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %21, -1
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %26, i32 noundef %28, i32 noundef %18, i32 noundef %19, i32 noundef %29) #16
  br label %31

31:                                               ; preds = %25, %23
  tail call void @msleep(i32 noundef %21) #15
  %32 = tail call i32 @pci_bus_read_config_dword(ptr noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef %2) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = shl i32 %21, 1
  %36 = load i32, ptr %2, align 4
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %20, label %39

39:                                               ; preds = %34
  %40 = icmp sgt i32 %35, 999
  br i1 %40, label %41, label %50

41:                                               ; preds = %39, %20
  %42 = phi i32 [ %35, %39 ], [ %21, %20 ]
  %43 = phi ptr [ @.str.71, %39 ], [ @.str.69, %20 ]
  %44 = xor i1 %22, true
  %45 = load i32, ptr %15, align 8
  %46 = load i8, ptr %16, align 4
  %47 = zext i8 %46 to i32
  %48 = add i32 %42, -1
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %43, i32 noundef %45, i32 noundef %47, i32 noundef %18, i32 noundef %19, i32 noundef %48) #16
  br label %50

50:                                               ; preds = %41, %39, %31, %12, %9, %7, %7, %7, %7, %4
  %51 = phi i1 [ false, %4 ], [ false, %7 ], [ false, %7 ], [ false, %7 ], [ false, %7 ], [ true, %9 ], [ false, %12 ], [ true, %39 ], [ %44, %41 ], [ false, %31 ]
  ret i1 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_dword(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 7
  %10 = load i16, ptr %9, align 8
  %11 = icmp eq i16 %10, 4381
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, -32587
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call i32 @pci_idt_bus_quirk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #15
  %18 = icmp ne i32 %17, 0
  br label %21

19:                                               ; preds = %12, %8, %4
  %20 = tail call zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i1 [ %18, %16 ], [ %20, %19 ]
  ret i1 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_idt_bus_quirk(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_report_downtraining(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 15
  %10 = zext i16 %9 to i32
  switch i32 %10, label %22 [
    i32 0, label %11
    i32 1, label %11
    i32 5, label %11
  ]

11:                                               ; preds = %5, %5, %5
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %18 = load i40, ptr %17, align 1
  %19 = and i40 %18, 8388608
  %20 = icmp eq i40 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @__pcie_print_link_status(ptr noundef %0, i1 noundef zeroext false) #15
  br label %22

22:                                               ; preds = %21, %16, %11, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pcie_print_link_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_device_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %95, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %22 = load i40, ptr %21, align 1
  %23 = and i40 %22, 8388608
  %24 = icmp eq i40 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %27 = load i16, ptr %26, align 2
  %28 = and i16 %27, 240
  %29 = icmp eq i16 %28, 144
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, ptr @pcie_bus_config, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 7
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 128, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i32 [ %38, %33 ], [ 128, %30 ]
  %41 = tail call i32 @pcie_set_mps(ptr noundef %0, i32 noundef %40) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %95, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.72, i32 noundef %40) #16
  br label %95

45:                                               ; preds = %25
  %46 = icmp eq ptr %16, null
  br i1 %46, label %95, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 18
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %95, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @pcie_get_mps(ptr noundef %0) #15
  %53 = tail call i32 @pcie_get_mps(ptr noundef nonnull %16) #15
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %95, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr @pcie_bus_config, align 4
  switch i32 %56, label %95 [
    i32 0, label %57
    i32 1, label %67
  ]

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %59 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi ptr [ %64, %62 ], [ %60, %57 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.73, i32 noundef %52, ptr noundef %66, i32 noundef %53) #16
  br label %95

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 7
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 128, %71
  %73 = icmp slt i32 %72, %53
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 24
  %76 = load i16, ptr %75, align 2
  %77 = and i16 %76, 240
  %78 = icmp eq i16 %77, 64
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = tail call i32 @pcie_set_mps(ptr noundef nonnull %16, i32 noundef %72) #15
  %81 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %82 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 21
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 7
  %85 = zext i8 %84 to i32
  %86 = shl nuw nsw i32 128, %85
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.74, i32 noundef %72, i32 noundef %53, i32 noundef %86) #16
  %87 = tail call i32 @pcie_get_mps(ptr noundef nonnull %16) #15
  br label %88

88:                                               ; preds = %79, %74, %67
  %89 = phi i32 [ %87, %79 ], [ %53, %74 ], [ %53, %67 ]
  %90 = tail call i32 @pcie_set_mps(ptr noundef %0, i32 noundef %89) #15
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br i1 %91, label %94, label %93

93:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.72, i32 noundef %89) #16
  br label %95

94:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.75, i32 noundef %89, i32 noundef %52, i32 noundef %72) #16
  br label %95

95:                                               ; preds = %94, %93, %65, %55, %51, %47, %45, %43, %39, %20, %15
  %96 = tail call i32 @pci_configure_extended_tags(ptr noundef %0, ptr undef) #15
  %97 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %98 = load i40, ptr %97, align 1
  %99 = and i40 %98, 8388608
  %100 = icmp eq i40 %99, 0
  br i1 %100, label %101, label %136

101:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 0, ptr %6, align 2, !annotation !8
  %102 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %6) #15
  %103 = load i16, ptr %6, align 2
  %104 = and i16 %103, 16
  %105 = icmp eq i16 %104, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  %106 = icmp eq ptr %0, null
  %107 = or i1 %106, %105
  br i1 %107, label %136, label %108

108:                                              ; preds = %124, %101
  %109 = phi ptr [ %126, %124 ], [ %0, %101 ]
  %110 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 18
  %111 = load i8, ptr %110, align 4
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 24
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, 240
  %117 = icmp eq i16 %116, 64
  br i1 %117, label %128, label %118

118:                                              ; preds = %113, %108
  %119 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.pci_bus, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %136, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.pci_bus, ptr %120, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %136, label %108

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 50
  %130 = load i16, ptr %129, align 2
  %131 = and i16 %130, 2048
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 16, i16 noundef zeroext 0) #15
  %135 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.76) #16
  br label %136

136:                                              ; preds = %133, %128, %124, %118, %101, %95
  %137 = load ptr, ptr %7, align 8
  %138 = call ptr @pci_find_host_bridge(ptr noundef %137) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  %139 = load i8, ptr %17, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %203, label %141

141:                                              ; preds = %136
  %142 = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 30) #15
  %143 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40
  store i16 %142, ptr %143, align 2
  %144 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %4) #15
  %145 = load i32, ptr %4, align 4
  %146 = and i32 %145, 2048
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %203, label %148

148:                                              ; preds = %141
  %149 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %5) #15
  %150 = load i32, ptr %5, align 4
  %151 = and i32 %150, 1024
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %172, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %155 = load i16, ptr %154, align 2
  %156 = and i16 %155, 240
  %157 = icmp eq i16 %156, 64
  br i1 %157, label %199, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %7, align 8
  %160 = getelementptr inbounds %struct.pci_bus, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %203, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.pci_bus, ptr %159, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %203, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.pci_dev, ptr %165, i32 0, i32 38
  %169 = load i8, ptr %168, align 4
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %203, label %199

172:                                              ; preds = %148
  %173 = getelementptr inbounds %struct.pci_host_bridge, ptr %138, i32 0, i32 13
  %174 = load i16, ptr %173, align 16
  %175 = and i16 %174, 64
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %203, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %179 = load i16, ptr %178, align 2
  %180 = and i16 %179, 240
  %181 = icmp eq i16 %180, 64
  br i1 %181, label %197, label %182

182:                                              ; preds = %177
  %183 = load ptr, ptr %7, align 8
  %184 = getelementptr inbounds %struct.pci_bus, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %203, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.pci_bus, ptr %183, i32 0, i32 4
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %203, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 38
  %193 = load i8, ptr %192, align 4
  %194 = and i8 %193, 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %191
  call void @pci_bridge_reconfigure_ltr(ptr noundef %0) #15
  br label %197

197:                                              ; preds = %196, %177
  %198 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 40, i16 noundef zeroext 0, i16 noundef zeroext 1024) #15
  br label %199

199:                                              ; preds = %197, %167, %153
  %200 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 38
  %201 = load i8, ptr %200, align 4
  %202 = or i8 %201, 1
  store i8 %202, ptr %200, align 4
  br label %203

203:                                              ; preds = %199, %191, %187, %182, %172, %167, %163, %158, %141, %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !8
  %204 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %205 = load i8, ptr %204, align 1
  %206 = icmp eq i8 %205, 1
  br i1 %206, label %207, label %215

207:                                              ; preds = %203
  %208 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %3) #15
  %209 = load i16, ptr %3, align 2
  %210 = and i16 %209, 2
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = or i16 %209, 2
  store i16 %213, ptr %3, align 2
  %214 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 62, i16 noundef zeroext %213) #15
  br label %215

215:                                              ; preds = %212, %207, %203
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %216 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void @device_initialize(ptr noundef %216) #15
  %217 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 33
  store ptr @pci_release_dev, ptr %217, align 4
  %218 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 28
  %219 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 16
  store ptr %218, ptr %219, align 4
  %220 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 29
  %221 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 20
  store ptr %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 17
  store i64 4294967295, ptr %222, align 8
  %223 = icmp eq ptr %220, null
  br i1 %223, label %226, label %224

224:                                              ; preds = %215
  store i32 65536, ptr %220, align 4
  %225 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 29, i32 2
  store i32 -1, ptr %225, align 4
  br label %226

226:                                              ; preds = %224, %215
  call void @pci_fixup_device(i32 noundef 1, ptr noundef %0) #15
  call void @pci_reassigndev_resource_alignment(ptr noundef %0) #15
  %227 = load i40, ptr %97, align 1
  %228 = and i40 %227, -2097153
  store i40 %228, ptr %97, align 1
  call void @pci_ea_init(ptr noundef %0) #15
  call void @pci_msi_init(ptr noundef %0) #15
  call void @pci_msix_init(ptr noundef %0) #15
  call void @pci_allocate_cap_save_buffers(ptr noundef %0) #15
  call void @pci_pm_init(ptr noundef %0) #15
  call void @pci_vpd_init(ptr noundef %0) #15
  call void @pci_configure_ari(ptr noundef %0) #15
  call void @pci_acs_init(ptr noundef %0) #15
  call void @pci_rcec_init(ptr noundef %0) #15
  %229 = load i8, ptr %17, align 4
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %247, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %233 = load i16, ptr %232, align 2
  %234 = lshr i16 %233, 4
  %235 = and i16 %234, 15
  %236 = zext i16 %235 to i32
  switch i32 %236, label %247 [
    i32 0, label %237
    i32 1, label %237
    i32 5, label %237
  ]

237:                                              ; preds = %231, %231, %231
  %238 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = and i32 %239, 7
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load i40, ptr %97, align 1
  %244 = and i40 %243, 8388608
  %245 = icmp eq i40 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  call void @__pcie_print_link_status(ptr noundef %0, i1 noundef zeroext false) #15
  br label %247

247:                                              ; preds = %246, %242, %237, %231, %226
  call void @pci_init_reset_methods(ptr noundef %0) #15
  call void @down_write(ptr noundef nonnull @pci_bus_sem) #15
  %248 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3
  %249 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 3, i32 1
  %250 = load ptr, ptr %249, align 4
  store ptr %0, ptr %249, align 4
  store ptr %248, ptr %0, align 4
  %251 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %250, ptr %251, align 4
  store volatile ptr %0, ptr %250, align 4
  call void @up_write(ptr noundef nonnull @pci_bus_sem) #15
  %252 = call i32 @pcibios_device_add(ptr noundef %0) #15
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255, !prof !9

254:                                              ; preds = %247
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 2551, i32 noundef 9, ptr noundef null) #15
  br label %255

255:                                              ; preds = %254, %247
  %256 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 14
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %266

259:                                              ; preds = %255
  %260 = call ptr @pci_msi_get_device_domain(ptr noundef %0) #15
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load ptr, ptr %7, align 8
  %264 = getelementptr inbounds %struct.pci_bus, ptr %263, i32 0, i32 21, i32 14
  %265 = load ptr, ptr %264, align 8
  br label %266

266:                                              ; preds = %262, %259, %255
  %267 = phi ptr [ %260, %259 ], [ %265, %262 ], [ %257, %255 ]
  store ptr %267, ptr %256, align 8
  %268 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 48
  store i8 0, ptr %268, align 8
  %269 = call i32 @device_add(ptr noundef %216) #15
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272, !prof !9

271:                                              ; preds = %266
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 2559, i32 noundef 9, ptr noundef null) #15
  br label %272

272:                                              ; preds = %271, %266
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_release_dev(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  tail call void @pci_rcec_exit(ptr noundef %2) #15
  tail call void @pci_free_cap_save_buffers(ptr noundef %2) #15
  tail call void @pci_release_of_node(ptr noundef %2) #15
  tail call void @pcibios_release_device(ptr noundef %2) #15
  %3 = getelementptr i8, ptr %0, i32 -128
  %4 = load ptr, ptr %3, align 8
  tail call void @pci_bus_put(ptr noundef %4) #15
  %5 = getelementptr i8, ptr %0, i32 1052
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #15
  %7 = getelementptr i8, ptr %0, i32 -68
  %8 = load ptr, ptr %7, align 4
  tail call void @bitmap_free(ptr noundef %8) #15
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_reassigndev_resource_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcibios_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @pci_get_slot(ptr noundef %0, i32 noundef %1) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @pci_dev_put(ptr noundef nonnull %4) #15
  br label %47

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 7
  %13 = load i16, ptr %12, align 8
  %14 = icmp eq i16 %13, 4381
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, -32587
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @pci_idt_bus_quirk(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 60000) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %24

22:                                               ; preds = %15, %11, %7
  %23 = call zeroext i1 @pci_bus_generic_read_dev_vendor_id(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 60000) #15
  br i1 %23, label %24, label %45

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %26 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 1208) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  store volatile ptr %26, ptr %26, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %26, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44, i32 4
  store ptr @pci_dev_type, ptr %30, align 8
  %31 = call ptr @pci_bus_get(ptr noundef %0) #15
  %32 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 1
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 58
  store i32 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 6
  store i32 %1, ptr %34, align 4
  %35 = load i32, ptr %3, align 4
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 7
  store i16 %36, ptr %37, align 8
  %38 = lshr i32 %35, 16
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 8
  store i16 %39, ptr %40, align 2
  %41 = call i32 @pci_setup_device(ptr noundef nonnull %26) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load ptr, ptr %32, align 8
  call void @pci_bus_put(ptr noundef %44) #15
  call void @kfree(ptr noundef nonnull %26) #15
  br label %45

45:                                               ; preds = %43, %24, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %47

46:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  call void @pci_device_add(ptr noundef nonnull %26, ptr noundef %0)
  br label %47

47:                                               ; preds = %46, %45, %6
  %48 = phi ptr [ %4, %6 ], [ %26, %46 ], [ null, %45 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_scan_slot(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @pci_flags, align 4
  %8 = and i32 %7, 64
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 18
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 24
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 208
  %20 = icmp eq i16 %19, 64
  %21 = and i16 %18, 240
  %22 = icmp eq i16 %21, 128
  %23 = or i1 %20, %22
  %24 = icmp sgt i32 %1, 0
  %25 = and i1 %24, %23
  br i1 %25, label %117, label %26

26:                                               ; preds = %16, %12, %2
  %27 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %1)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %117, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 65
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = xor i32 %32, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2
  %34 = load ptr, ptr %5, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 49
  %38 = load i40, ptr %37, align 1
  %39 = and i40 %38, 16384
  %40 = icmp eq i40 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %27, i32 noundef 14) #15
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %110

45:                                               ; preds = %41
  %46 = zext i16 %42 to i32
  %47 = add nuw nsw i32 %46, 4
  %48 = call i32 @pci_read_config_word(ptr noundef nonnull %27, i32 noundef %47, ptr noundef nonnull %4) #15
  %49 = load i16, ptr %4, align 2
  %50 = lshr i16 %49, 8
  %51 = zext i16 %50 to i32
  br label %58

52:                                               ; preds = %36, %29
  %53 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 49
  %54 = load i40, ptr %53, align 1
  %55 = trunc i40 %54 to i32
  %56 = lshr i32 %55, 4
  %57 = and i32 %56, 1
  br label %58

58:                                               ; preds = %52, %45
  %59 = phi i32 [ %51, %45 ], [ %57, %52 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %110, label %61

61:                                               ; preds = %107, %58
  %62 = phi i32 [ %77, %107 ], [ %33, %58 ]
  %63 = phi i32 [ %108, %107 ], [ %59, %58 ]
  %64 = add i32 %63, %1
  %65 = call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %64)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 65
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1
  %71 = xor i32 %70, 1
  %72 = add i32 %71, %62
  %73 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 49
  %74 = load i40, ptr %73, align 1
  %75 = or i40 %74, 16
  store i40 %75, ptr %73, align 1
  br label %76

76:                                               ; preds = %67, %61
  %77 = phi i32 [ %72, %67 ], [ %62, %61 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2
  %78 = load ptr, ptr %5, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %97, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 49
  %82 = load i40, ptr %81, align 1
  %83 = and i40 %82, 16384
  %84 = icmp eq i40 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %80
  br i1 %66, label %106, label %86

86:                                               ; preds = %85
  %87 = call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %65, i32 noundef 14) #15
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = zext i16 %87 to i32
  %91 = add nuw nsw i32 %90, 4
  %92 = call i32 @pci_read_config_word(ptr noundef nonnull %65, i32 noundef %91, ptr noundef nonnull %3) #15
  %93 = load i16, ptr %3, align 2
  %94 = lshr i16 %93, 8
  %95 = zext i16 %94 to i32
  %96 = icmp ult i32 %63, %95
  br i1 %96, label %107, label %106

97:                                               ; preds = %80, %76
  br i1 %66, label %103, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 49
  %100 = load i40, ptr %99, align 1
  %101 = and i40 %100, 16
  %102 = icmp eq i40 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98, %97
  %104 = add nsw i32 %63, 1
  %105 = and i32 %104, 7
  br label %107

106:                                              ; preds = %98, %89, %86, %85
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  br label %110

107:                                              ; preds = %103, %89
  %108 = phi i32 [ %105, %103 ], [ %95, %89 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %61

110:                                              ; preds = %107, %106, %58, %44
  %111 = phi i32 [ %33, %58 ], [ %33, %44 ], [ %77, %106 ], [ %77, %107 ]
  %112 = load ptr, ptr %5, align 4
  %113 = icmp ne ptr %112, null
  %114 = icmp ne i32 %111, 0
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  call void @pcie_aspm_init_link_state(ptr noundef nonnull %112) #15
  br label %117

117:                                              ; preds = %116, %110, %26, %16
  %118 = phi i32 [ 0, %26 ], [ %111, %116 ], [ %111, %110 ], [ 0, %16 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_aspm_init_link_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_bus_configure_settings(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @pcie_bus_config, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 21
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 7
  store i8 %16, ptr %2, align 1
  %17 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 49
  %18 = load i40, ptr %17, align 1
  %19 = and i40 %18, 16777216
  %20 = icmp eq i40 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 24
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 240
  %25 = icmp eq i16 %24, 64
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8 0, ptr %2, align 1
  br label %27

27:                                               ; preds = %26, %21, %13
  call void @pci_walk_bus(ptr noundef %0, ptr noundef nonnull @pcie_find_smpss, ptr noundef nonnull %2) #15
  %28 = load ptr, ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %4, %10 ]
  %31 = call i32 @pcie_bus_configure_set(ptr noundef %30, ptr noundef nonnull %2)
  call void @pci_walk_bus(ptr noundef %0, ptr noundef nonnull @pcie_bus_configure_set, ptr noundef nonnull %2) #15
  br label %32

32:                                               ; preds = %29, %6, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pcie_find_smpss(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = and i40 %8, 16777216
  %10 = icmp eq i40 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 240
  %15 = icmp eq i16 %14, 64
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i8 0, ptr %1, align 1
  br label %17

17:                                               ; preds = %16, %11, %6
  %18 = load i8, ptr %1, align 1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 7
  %22 = icmp ugt i8 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8 %21, ptr %1, align 1
  br label %24

24:                                               ; preds = %23, %17, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_bus_configure_set(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  %6 = load i32, ptr @pcie_bus_config, align 4
  %7 = icmp ult i32 %6, 2
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %76, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %1, align 1
  %11 = zext i8 %10 to i32
  %12 = shl i32 128, %11
  %13 = tail call i32 @pcie_get_mps(ptr noundef %0) #15
  %14 = load i32, ptr @pcie_bus_config, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 7
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 128, %20
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 240
  %25 = icmp eq i16 %24, 64
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call i32 @pcie_get_mps(ptr noundef nonnull %30) #15
  %34 = tail call i32 @llvm.smin.i32(i32 %21, i32 %33) #15
  br label %35

35:                                               ; preds = %32, %26, %16, %9
  %36 = phi i32 [ %34, %32 ], [ %21, %26 ], [ %21, %16 ], [ %12, %9 ]
  %37 = tail call i32 @pcie_set_mps(ptr noundef %0, i32 noundef %36) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.78) #16
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, ptr @pcie_bus_config, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %67

44:                                               ; preds = %41
  %45 = tail call i32 @pcie_get_mps(ptr noundef %0) #15
  %46 = tail call i32 @pcie_get_readrq(ptr noundef %0) #15
  %47 = icmp ne i32 %45, %46
  %48 = icmp sgt i32 %45, 127
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %52

52:                                               ; preds = %56, %50
  %53 = phi i32 [ %45, %50 ], [ %57, %56 ]
  %54 = tail call i32 @pcie_set_readrq(ptr noundef %0, i32 noundef %53) #15
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.79) #16
  %57 = lshr i32 %53, 1
  %58 = tail call i32 @pcie_get_readrq(ptr noundef %0) #15
  %59 = icmp ne i32 %57, %58
  %60 = icmp ugt i32 %53, 255
  %61 = and i1 %60, %59
  br i1 %61, label %52, label %62

62:                                               ; preds = %56, %44
  %63 = phi i32 [ %45, %44 ], [ %57, %56 ]
  %64 = icmp slt i32 %63, 128
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.80) #16
  br label %67

67:                                               ; preds = %65, %62, %52, %41
  %68 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %69 = tail call i32 @pcie_get_mps(ptr noundef %0) #15
  %70 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 7
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 128, %73
  %75 = tail call i32 @pcie_get_readrq(ptr noundef %0) #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.77, i32 noundef %69, i32 noundef %74, i32 noundef %13, i32 noundef %75) #16
  br label %76

76:                                               ; preds = %67, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_fixup_bus(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_scan_child_bus(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_scan_child_bus_extend(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  br label %5

5:                                                ; preds = %68, %2
  %6 = phi i32 [ 0, %2 ], [ %69, %68 ]
  %7 = tail call i32 @pci_scan_slot(ptr noundef %0, i32 noundef %6)
  %8 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81) #15
  %9 = icmp ne ptr %8, null
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %68

12:                                               ; preds = %5
  %13 = or i32 %6, 1
  %14 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 49
  %18 = load i40, ptr %17, align 1
  %19 = or i40 %18, 16
  store i40 %19, ptr %17, align 1
  br label %20

20:                                               ; preds = %16, %12
  %21 = or i32 %6, 2
  %22 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 49
  %26 = load i40, ptr %25, align 1
  %27 = or i40 %26, 16
  store i40 %27, ptr %25, align 1
  br label %28

28:                                               ; preds = %24, %20
  %29 = or i32 %6, 3
  %30 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %29)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 49
  %34 = load i40, ptr %33, align 1
  %35 = or i40 %34, 16
  store i40 %35, ptr %33, align 1
  br label %36

36:                                               ; preds = %32, %28
  %37 = or i32 %6, 4
  %38 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %37)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 49
  %42 = load i40, ptr %41, align 1
  %43 = or i40 %42, 16
  store i40 %43, ptr %41, align 1
  br label %44

44:                                               ; preds = %40, %36
  %45 = or i32 %6, 5
  %46 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %45)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 49
  %50 = load i40, ptr %49, align 1
  %51 = or i40 %50, 16
  store i40 %51, ptr %49, align 1
  br label %52

52:                                               ; preds = %48, %44
  %53 = or i32 %6, 6
  %54 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %53)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 49
  %58 = load i40, ptr %57, align 1
  %59 = or i40 %58, 16
  store i40 %59, ptr %57, align 1
  br label %60

60:                                               ; preds = %56, %52
  %61 = or i32 %6, 7
  %62 = tail call ptr @pci_scan_single_device(ptr noundef %0, i32 noundef %61)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 49
  %66 = load i40, ptr %65, align 1
  %67 = or i40 %66, 16
  store i40 %67, ptr %65, align 1
  br label %68

68:                                               ; preds = %64, %60, %5
  %69 = add nuw nsw i32 %6, 8
  %70 = icmp ult i32 %6, 248
  br i1 %70, label %5, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 24
  %73 = load i8, ptr %72, align 8
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  tail call void @pcibios_fixup_bus(ptr noundef %0)
  %77 = load i8, ptr %72, align 8
  %78 = or i8 %77, 1
  store i8 %78, ptr %72, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %160, label %83

83:                                               ; preds = %100, %79
  %84 = phi ptr [ %103, %100 ], [ %81, %79 ]
  %85 = phi i32 [ %102, %100 ], [ 0, %79 ]
  %86 = phi i32 [ %101, %100 ], [ 0, %79 ]
  %87 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 13
  %88 = load i8, ptr %87, align 1
  %89 = add i8 %88, -1
  %90 = icmp ult i8 %89, 2
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 49
  %93 = load i40, ptr %92, align 1
  %94 = and i40 %93, 16777216
  %95 = icmp eq i40 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = add i32 %86, 1
  br label %100

98:                                               ; preds = %91
  %99 = add i32 %85, 1
  br label %100

100:                                              ; preds = %98, %96, %83
  %101 = phi i32 [ %97, %96 ], [ %86, %98 ], [ %86, %83 ]
  %102 = phi i32 [ %85, %96 ], [ %99, %98 ], [ %85, %83 ]
  %103 = load ptr, ptr %84, align 4
  %104 = icmp eq ptr %103, %80
  br i1 %104, label %113, label %83

105:                                              ; preds = %126
  %106 = load ptr, ptr %80, align 4
  %107 = icmp eq ptr %106, %80
  br i1 %107, label %160, label %108

108:                                              ; preds = %105
  %109 = icmp eq i32 %101, 0
  %110 = icmp eq i32 %102, 1
  %111 = select i1 %109, i1 %110, i1 false
  %112 = add i32 %1, 1
  br label %131

113:                                              ; preds = %126, %100
  %114 = phi ptr [ %129, %126 ], [ %81, %100 ]
  %115 = phi i32 [ %128, %126 ], [ 0, %100 ]
  %116 = phi i32 [ %127, %126 ], [ %4, %100 ]
  %117 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 13
  %118 = load i8, ptr %117, align 1
  %119 = add i8 %118, -1
  %120 = icmp ult i8 %119, 2
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %0, ptr noundef %114, i32 noundef %116, i32 noundef 0, i32 noundef 0)
  %123 = sub i32 %116, %122
  %124 = tail call i32 @llvm.umax.i32(i32 %123, i32 1)
  %125 = add i32 %124, %115
  br label %126

126:                                              ; preds = %121, %113
  %127 = phi i32 [ %116, %113 ], [ %122, %121 ]
  %128 = phi i32 [ %115, %113 ], [ %125, %121 ]
  %129 = load ptr, ptr %114, align 4
  %130 = icmp eq ptr %129, %80
  br i1 %130, label %105, label %113

131:                                              ; preds = %155, %108
  %132 = phi ptr [ %106, %108 ], [ %158, %155 ]
  %133 = phi i32 [ %128, %108 ], [ %157, %155 ]
  %134 = phi i32 [ %127, %108 ], [ %156, %155 ]
  %135 = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 13
  %136 = load i8, ptr %135, align 1
  %137 = add i8 %136, -1
  %138 = icmp ult i8 %137, 2
  br i1 %138, label %139, label %155

139:                                              ; preds = %131
  br i1 %111, label %149, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 49
  %142 = load i40, ptr %141, align 1
  %143 = and i40 %142, 16777216
  %144 = icmp eq i40 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = udiv i32 %1, %101
  %147 = sub i32 %112, %133
  %148 = tail call i32 @llvm.umin.i32(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %140, %139
  %150 = phi i32 [ %148, %145 ], [ 0, %140 ], [ %1, %139 ]
  %151 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %0, ptr noundef %132, i32 noundef %134, i32 noundef %150, i32 noundef 1)
  %152 = sub i32 %151, %134
  %153 = tail call i32 @llvm.usub.sat.i32(i32 %152, i32 1)
  %154 = add i32 %153, %133
  br label %155

155:                                              ; preds = %149, %131
  %156 = phi i32 [ %151, %149 ], [ %134, %131 ]
  %157 = phi i32 [ %154, %149 ], [ %133, %131 ]
  %158 = load ptr, ptr %132, align 4
  %159 = icmp eq ptr %158, %80
  br i1 %159, label %160, label %131

160:                                              ; preds = %155, %105, %79
  %161 = phi i32 [ %127, %105 ], [ %4, %79 ], [ %156, %155 ]
  %162 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %181, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 49
  %167 = load i40, ptr %166, align 1
  %168 = and i40 %167, 16777216
  %169 = icmp eq i40 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %165
  %171 = load i32, ptr @pci_hotplug_bus_size, align 4
  %172 = add i32 %171, -1
  %173 = tail call i32 @llvm.umax.i32(i32 %172, i32 %1)
  %174 = sub i32 %161, %4
  %175 = icmp ult i32 %174, %173
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = add i32 %173, %4
  %178 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = tail call i32 @llvm.umin.i32(i32 %177, i32 %179)
  br label %181

181:                                              ; preds = %176, %170, %165, %160
  %182 = phi i32 [ %161, %170 ], [ %161, %165 ], [ %161, %160 ], [ %180, %176 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_root_bridge_prepare(ptr noundef %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_add_bus(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_remove_bus(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_create_root_bus(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 576) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 7
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 7, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 8
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 8, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 13
  %15 = load i16, ptr %14, align 16
  %16 = or i16 %15, 252
  store i16 %16, ptr %14, align 16
  %17 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 6
  store i32 -1, ptr %17, align 4
  tail call void @device_initialize(ptr noundef nonnull %7) #15
  %18 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 33
  store ptr @pci_release_host_bridge_dev, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  store ptr %0, ptr %19, align 4
  %20 = load volatile ptr, ptr %4, align 4
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %28, label %22

22:                                               ; preds = %9
  %23 = load ptr, ptr %10, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %10, ptr %26, align 4
  store ptr %20, ptr %10, align 8
  store ptr %23, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %24, align 4
  br label %28

28:                                               ; preds = %22, %9
  %29 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 4
  store ptr %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 5
  store i32 %1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 2
  store ptr %2, ptr %31, align 4
  %32 = tail call fastcc i32 @pci_register_host_bridge(ptr noundef nonnull %7)
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  br label %38

37:                                               ; preds = %28
  tail call void @put_device(ptr noundef nonnull %7) #15
  br label %38

38:                                               ; preds = %37, %34, %5
  %39 = phi ptr [ null, %37 ], [ %36, %34 ], [ null, %5 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_register_host_bridge(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr %2, ptr %2, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 664) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %237, label %10

10:                                               ; preds = %1
  store volatile ptr %8, ptr %8, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 2
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 2, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 3
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 3, i32 1
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 5
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 5, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 7
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 7, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 14
  store i8 -1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 15
  store i8 -1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 1
  store ptr %8, ptr %22, align 8
  %23 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 10
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 9
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 8
  store i32 %30, ptr %31, align 8
  %32 = trunc i32 %30 to i8
  %33 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 12
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %10
  %38 = call i32 @pci_bus_find_domain_nr(ptr noundef nonnull %8, ptr noundef %5) #15
  %39 = load i32, ptr %29, align 8
  br label %40

40:                                               ; preds = %37, %10
  %41 = phi i32 [ %39, %37 ], [ %30, %10 ]
  %42 = phi i32 [ %38, %37 ], [ %35, %10 ]
  %43 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 16
  store i32 %42, ptr %43, align 8
  %44 = call ptr @pci_find_bus(i32 noundef %42, i32 noundef %41) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %235

46:                                               ; preds = %40
  %47 = load i32, ptr %43, align 8
  %48 = load i32, ptr %29, align 8
  %49 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %47, i32 noundef %48) #15
  %50 = call i32 @pcibios_root_bridge_prepare(ptr noundef %0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %235

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 7
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 7, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %2, ptr %60, align 4
  store ptr %54, ptr %2, align 8
  store ptr %57, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %53, ptr %53, align 4
  store ptr %53, ptr %58, align 4
  br label %62

62:                                               ; preds = %56, %52
  %63 = call i32 @device_add(ptr noundef %0) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @put_device(ptr noundef %0) #15
  br label %235

66:                                               ; preds = %62
  %67 = call ptr @get_device(ptr noundef %0) #15
  %68 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 20
  store ptr %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 11, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = and i16 %70, 8
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = or i16 %70, 2
  store i16 %74, ptr %69, align 4
  br label %75

75:                                               ; preds = %73, %66
  call void @pci_set_bus_of_node(ptr noundef nonnull %8) #15
  br label %76

76:                                               ; preds = %88, %75
  %77 = phi ptr [ %8, %75 ], [ %79, %88 ]
  %78 = getelementptr inbounds %struct.pci_bus, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.pci_bus, ptr %77, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44, i32 14
  %87 = load ptr, ptr %86, align 8
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi ptr [ %87, %85 ], [ null, %81 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %76, label %99

91:                                               ; preds = %76
  %92 = getelementptr inbounds %struct.pci_bus, ptr %77, i32 0, i32 20
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 14
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call ptr @pci_host_bridge_of_msi_domain(ptr noundef nonnull %77) #15
  br label %99

99:                                               ; preds = %97, %91, %88
  %100 = phi ptr [ %95, %91 ], [ %98, %97 ], [ %89, %88 ]
  %101 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 21, i32 14
  store ptr %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 13
  %103 = load i16, ptr %102, align 16
  %104 = and i16 %103, 1024
  %105 = icmp ne i16 %104, 0
  %106 = icmp eq ptr %100, null
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = call zeroext i1 @pci_host_of_has_msi_map(ptr noundef %5) #15
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 19
  %112 = load i16, ptr %111, align 2
  %113 = or i16 %112, 1
  store i16 %113, ptr %111, align 2
  br label %114

114:                                              ; preds = %110, %108, %99
  %115 = icmp eq ptr %5, null
  %116 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 21
  %117 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 21, i32 31
  store ptr @pcibus_class, ptr %117, align 4
  %118 = load ptr, ptr %68, align 8
  %119 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 21, i32 1
  store ptr %118, ptr %119, align 4
  %120 = load i32, ptr %43, align 8
  %121 = load i8, ptr %33, align 4
  %122 = zext i8 %121 to i32
  %123 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %116, ptr noundef nonnull @.str.58, i32 noundef %120, i32 noundef %122) #15
  %124 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 21, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %114
  %128 = load ptr, ptr %116, align 8
  br label %129

129:                                              ; preds = %127, %114
  %130 = phi ptr [ %128, %127 ], [ %125, %114 ]
  %131 = call i32 @device_register(ptr noundef %116) #15
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %234

133:                                              ; preds = %129
  call void @pcibios_add_bus(ptr noundef %8)
  %134 = load ptr, ptr %28, align 8
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = call i32 %135(ptr noundef %8) #15
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141, !prof !9

140:                                              ; preds = %137
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 958, i32 noundef 9, ptr noundef null) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.60, i32 noundef %138) #16
  br label %141

141:                                              ; preds = %140, %137, %133
  br i1 %115, label %143, label %142

142:                                              ; preds = %141
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %5, ptr noundef nonnull @.str.83, ptr noundef %130) #16
  br label %145

143:                                              ; preds = %141
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %130) #16
  br label %145

145:                                              ; preds = %143, %142
  %146 = load ptr, ptr %2, align 8
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %146, %2
  %149 = icmp eq ptr %147, %2
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %184, label %151

151:                                              ; preds = %177, %145
  %152 = phi ptr [ %178, %177 ], [ %147, %145 ]
  %153 = phi ptr [ %152, %177 ], [ %146, %145 ]
  %154 = getelementptr inbounds %struct.resource_entry, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.resource_entry, ptr %152, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.resource, ptr %155, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.resource, ptr %157, i32 0, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %151
  %164 = getelementptr inbounds %struct.resource_entry, ptr %152, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.resource_entry, ptr %153, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, %165
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.resource, ptr %155, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %171, 1
  %173 = load i32, ptr %157, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, ptr %155, align 4
  store i32 %176, ptr %157, align 4
  store i32 0, ptr %170, align 4
  store i32 0, ptr %155, align 4
  store i32 0, ptr %158, align 4
  br label %177

177:                                              ; preds = %175, %169, %163, %151
  %178 = load ptr, ptr %152, align 4
  %179 = icmp eq ptr %152, %2
  %180 = icmp eq ptr %178, %2
  %181 = select i1 %179, i1 true, i1 %180
  br i1 %181, label %182, label %151

182:                                              ; preds = %177
  %183 = load ptr, ptr %2, align 8
  br label %184

184:                                              ; preds = %182, %145
  %185 = phi ptr [ %183, %182 ], [ %146, %145 ]
  %186 = icmp eq ptr %185, %2
  br i1 %186, label %232, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 7, i32 1
  br label %189

189:                                              ; preds = %230, %187
  %190 = phi ptr [ %185, %187 ], [ %191, %230 ]
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.resource_entry, ptr %190, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.resource_entry, ptr %190, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.resource, ptr %195, i32 0, i32 1
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %230, label %199

199:                                              ; preds = %189
  %200 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  store ptr %201, ptr %202, align 4
  store volatile ptr %191, ptr %201, align 4
  %203 = load ptr, ptr %188, align 4
  store ptr %190, ptr %188, align 4
  store ptr %53, ptr %190, align 4
  store ptr %203, ptr %200, align 4
  store volatile ptr %190, ptr %203, align 4
  %204 = getelementptr inbounds %struct.resource, ptr %195, i32 0, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 4096
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %199
  %209 = load i8, ptr %33, align 4
  %210 = zext i8 %209 to i32
  %211 = load i32, ptr %196, align 4
  %212 = call i32 @pci_bus_insert_busn_res(ptr noundef %8, i32 noundef %210, i32 noundef %211)
  br label %214

213:                                              ; preds = %199
  call void @pci_bus_add_resource(ptr noundef %8, ptr noundef %195, i32 noundef 0) #15
  br label %214

214:                                              ; preds = %213, %208
  %215 = icmp eq i32 %193, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %214
  %217 = load i32, ptr %204, align 4
  %218 = and i32 %217, 7936
  %219 = icmp eq i32 %218, 256
  %220 = select i1 %219, ptr @.str.85, ptr @.str.86
  %221 = load i32, ptr %195, align 4
  %222 = sub i32 %221, %193
  %223 = zext i32 %222 to i64
  %224 = load i32, ptr %196, align 4
  %225 = sub i32 %224, %193
  %226 = zext i32 %225 to i64
  %227 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull %220, i64 noundef %223, i64 noundef %226)
  br label %229

228:                                              ; preds = %214
  store i8 0, ptr %3, align 1
  br label %229

229:                                              ; preds = %228, %216
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.87, ptr noundef %195, ptr noundef nonnull %3) #16
  br label %230

230:                                              ; preds = %229, %189
  %231 = icmp eq ptr %191, %2
  br i1 %231, label %232, label %189

232:                                              ; preds = %230, %184
  call void @down_write(ptr noundef nonnull @pci_bus_sem) #15
  %233 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pci_root_buses, i32 0, i32 1), align 4
  store ptr %8, ptr getelementptr inbounds (%struct.list_head, ptr @pci_root_buses, i32 0, i32 1), align 4
  store ptr @pci_root_buses, ptr %8, align 8
  store ptr %233, ptr %11, align 4
  store volatile ptr %8, ptr %233, align 4
  call void @up_write(ptr noundef nonnull @pci_bus_sem) #15
  br label %237

234:                                              ; preds = %129
  call void @put_device(ptr noundef %0) #15
  call void @device_del(ptr noundef %0) #15
  br label %235

235:                                              ; preds = %234, %65, %46, %40
  %236 = phi i32 [ %50, %46 ], [ %63, %65 ], [ %131, %234 ], [ -17, %40 ]
  call void @kfree(ptr noundef %8) #15
  br label %237

237:                                              ; preds = %235, %232, %1
  %238 = phi i32 [ %236, %235 ], [ 0, %232 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_host_probe(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = tail call i32 @pci_scan_root_bus_bridge(ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.46) #16
  br label %54

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr @pci_flags, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @pci_bus_claim_resources(ptr noundef %10) #15
  br label %53

15:                                               ; preds = %8
  tail call void @pci_bus_size_bridges(ptr noundef %10) #15
  tail call void @pci_bus_assign_resources(ptr noundef %10) #15
  %16 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %53, label %19

19:                                               ; preds = %50, %15
  %20 = phi ptr [ %51, %50 ], [ %17, %15 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1
  %21 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 18
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr @pcie_bus_config, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 21
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 7
  store i8 %34, ptr %2, align 1
  %35 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 49
  %36 = load i40, ptr %35, align 1
  %37 = and i40 %36, 16777216
  %38 = icmp eq i40 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 24
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 240
  %43 = icmp eq i16 %42, 64
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8 0, ptr %2, align 1
  br label %45

45:                                               ; preds = %44, %39, %31
  call void @pci_walk_bus(ptr noundef %20, ptr noundef nonnull @pcie_find_smpss, ptr noundef nonnull %2) #15
  %46 = load ptr, ptr %21, align 4
  br label %47

47:                                               ; preds = %45, %28
  %48 = phi ptr [ %46, %45 ], [ %22, %28 ]
  %49 = call i32 @pcie_bus_configure_set(ptr noundef %48, ptr noundef nonnull %2) #15
  call void @pci_walk_bus(ptr noundef %20, ptr noundef nonnull @pcie_bus_configure_set, ptr noundef nonnull %2) #15
  br label %50

50:                                               ; preds = %47, %24, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  %51 = load ptr, ptr %20, align 4
  %52 = icmp eq ptr %51, %16
  br i1 %52, label %53, label %19

53:                                               ; preds = %50, %15, %14
  call void @pci_bus_add_devices(ptr noundef %10) #15
  br label %54

54:                                               ; preds = %53, %5
  %55 = phi i32 [ %3, %5 ], [ 0, %53 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_scan_root_bus_bridge(ptr noundef %0) #0 {
  %2 = alloca %struct.resource, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.resource_entry, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %6, label %20

17:                                               ; preds = %6
  %18 = tail call fastcc i32 @pci_register_host_bridge(ptr noundef nonnull %0)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %56, label %29

20:                                               ; preds = %10
  %21 = load i32, ptr %12, align 4
  %22 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 5
  store i32 %21, ptr %22, align 8
  %23 = tail call fastcc i32 @pci_register_host_bridge(ptr noundef nonnull %0)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %27, i32 noundef 0) #15
  br label %56

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.pci_host_bridge, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.53, i32 noundef %33) #16
  %35 = tail call i32 @pci_bus_insert_busn_res(ptr noundef %31, i32 noundef %33, i32 noundef 255)
  %36 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %31, i32 noundef 0) #15
  %37 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef align 4 dereferenceable(32) %37, i32 32, i1 false) #15
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, %36
  br i1 %39, label %55, label %40

40:                                               ; preds = %29
  %41 = add i32 %36, 1
  %42 = sub i32 %41, %38
  %43 = tail call i32 @adjust_resource(ptr noundef %37, i32 noundef %38, i32 noundef %42) #15
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str.51, ptr @.str.50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.49, ptr noundef nonnull %2, ptr noundef nonnull %45, i32 noundef %36) #16
  br i1 %44, label %46, label %55

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 8, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, ptr %37, align 4
  %52 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 8, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = call i32 @pci_bus_insert_busn_res(ptr noundef %31, i32 noundef %51, i32 noundef %53) #15
  br label %55

55:                                               ; preds = %50, %46, %40, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  br label %56

56:                                               ; preds = %55, %25, %20, %17, %1
  %57 = phi i32 [ -22, %1 ], [ %18, %17 ], [ 0, %55 ], [ %23, %20 ], [ 0, %25 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_claim_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_size_bridges(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_assign_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_insert_busn_res(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 1
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 3
  store i32 4096, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 8
  br label %40

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 16
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %19, %12
  %16 = phi ptr [ @pci_domain_busn_res_list, %12 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @pci_domain_busn_res_list
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pci_domain_busn_res, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %23, label %15

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_domain_busn_res, ptr %17, i32 0, i32 1
  br label %36

25:                                               ; preds = %15
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 44) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pci_domain_busn_res, ptr %27, i32 0, i32 2
  store i32 %14, ptr %30, align 8
  %31 = getelementptr inbounds %struct.pci_domain_busn_res, ptr %27, i32 0, i32 1
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.pci_domain_busn_res, ptr %27, i32 0, i32 1, i32 1
  store i32 255, ptr %32, align 4
  %33 = getelementptr inbounds %struct.pci_domain_busn_res, ptr %27, i32 0, i32 1, i32 3
  store i32 4112, ptr %33, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pci_domain_busn_res_list, i32 0, i32 1), align 4
  store ptr %27, ptr getelementptr inbounds (%struct.list_head, ptr @pci_domain_busn_res_list, i32 0, i32 1), align 4
  store ptr @pci_domain_busn_res_list, ptr %27, align 8
  %35 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %27, ptr %34, align 4
  br label %36

36:                                               ; preds = %29, %25, %23
  %37 = phi ptr [ %24, %23 ], [ %31, %29 ], [ null, %25 ]
  %38 = load i32, ptr %6, align 4
  %39 = or i32 %38, 16
  store i32 %39, ptr %6, align 4
  br label %40

40:                                               ; preds = %36, %10
  %41 = phi ptr [ %37, %36 ], [ %11, %10 ]
  %42 = tail call ptr @request_resource_conflict(ptr noundef %41, ptr noundef %4) #15
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %46 = load ptr, ptr %7, align 8
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str.48, ptr @.str.7
  %49 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.47, ptr noundef %4, ptr noundef nonnull %48, ptr noundef %41, ptr noundef %50, ptr noundef nonnull %42) #16
  br label %51

51:                                               ; preds = %44, %40
  %52 = zext i1 %43 to i32
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_update_busn_res_end(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.resource, align 4
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef align 4 dereferenceable(32) %4, i32 32, i1 false)
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = add i32 %1, 1
  %9 = sub i32 %8, %5
  %10 = tail call i32 @adjust_resource(ptr noundef %4, i32 noundef %5, i32 noundef %9) #15
  %11 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %12 = icmp eq i32 %10, 0
  %13 = select i1 %12, ptr @.str.51, ptr @.str.50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.49, ptr noundef nonnull %3, ptr noundef nonnull %13, i32 noundef %1) #16
  br i1 %12, label %14, label %23

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, ptr %4, align 4
  %20 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @pci_bus_insert_busn_res(ptr noundef %0, i32 noundef %19, i32 noundef %21)
  br label %23

23:                                               ; preds = %18, %14, %7, %2
  %24 = phi i32 [ -22, %2 ], [ 0, %18 ], [ 0, %14 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adjust_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_release_busn_res(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @release_resource(ptr noundef %2) #15
  %12 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %13 = icmp eq i32 %11, 0
  %14 = select i1 %13, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.52, ptr noundef %2, ptr noundef nonnull %14) #16
  br label %15

15:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_scan_root_bus(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.resource, align 4
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %4, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.resource_entry, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %7, label %21

18:                                               ; preds = %7
  %19 = tail call ptr @pci_create_root_bus(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %26

21:                                               ; preds = %11
  %22 = tail call ptr @pci_create_root_bus(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %22, i32 noundef 0) #15
  br label %49

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.53, i32 noundef %1) #16
  %28 = tail call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %19, i32 noundef %1, i32 noundef 255)
  %29 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %19, i32 noundef 0) #15
  %30 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef align 4 dereferenceable(32) %30, i32 32, i1 false) #15
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %48, label %33

33:                                               ; preds = %26
  %34 = add i32 %29, 1
  %35 = sub i32 %34, %31
  %36 = tail call i32 @adjust_resource(ptr noundef %30, i32 noundef %31, i32 noundef %35) #15
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @.str.51, ptr @.str.50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.49, ptr noundef nonnull %6, ptr noundef nonnull %38, i32 noundef %29) #16
  br i1 %37, label %39, label %48

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 8, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, ptr %30, align 4
  %45 = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 8, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @pci_bus_insert_busn_res(ptr noundef nonnull %19, i32 noundef %44, i32 noundef %46) #15
  br label %48

48:                                               ; preds = %43, %39, %33, %26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %49

49:                                               ; preds = %48, %24, %21, %18
  %50 = phi ptr [ null, %18 ], [ %19, %48 ], [ null, %21 ], [ %22, %24 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_scan_bus(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call void @pci_add_resource(ptr noundef nonnull %4, ptr noundef nonnull @ioport_resource) #15
  call void @pci_add_resource(ptr noundef nonnull %4, ptr noundef nonnull @iomem_resource) #15
  call void @pci_add_resource(ptr noundef nonnull %4, ptr noundef nonnull @busn_resource) #15
  %6 = call ptr @pci_create_root_bus(ptr noundef null, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = call fastcc i32 @pci_scan_child_bus_extend(ptr noundef nonnull %6, i32 noundef 0) #15
  br label %11

10:                                               ; preds = %3
  call void @pci_free_resource_list(ptr noundef nonnull %4) #15
  br label %11

11:                                               ; preds = %10, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_resource_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_rescan_bus_bridge_resize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %3, i32 noundef 0) #15
  tail call void @pci_assign_unassigned_bridge_resources(ptr noundef %0) #15
  tail call void @pci_bus_add_devices(ptr noundef %3) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_bridge_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_rescan_bus(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @pci_scan_child_bus_extend(ptr noundef %0, i32 noundef 0) #15
  tail call void @pci_assign_unassigned_bus_resources(ptr noundef %0) #15
  tail call void @pci_bus_add_devices(ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_assign_unassigned_bus_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_lock_rescan_remove() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pci_rescan_remove_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_unlock_rescan_remove() #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @pci_rescan_remove_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pci_sort_breadthfirst() local_unnamed_addr #3 section ".init.text" {
  tail call void @bus_sort_breadthfirst(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @pci_sort_bf_cmp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_sort_breadthfirst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define internal i32 @pci_sort_bf_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 section ".init.text" {
  %3 = getelementptr i8, ptr %0, i32 -128
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr i8, ptr %1, i32 -128
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = icmp sgt i32 %6, %10
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 12
  %18 = load i8, ptr %17, align 4
  %19 = icmp ult i8 %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = icmp ugt i8 %16, %18
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %0, i32 -108
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %1, i32 -108
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = icmp ugt i32 %24, %26
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %28, %22, %20, %14, %12, %2
  %32 = phi i32 [ -1, %2 ], [ 1, %12 ], [ -1, %14 ], [ 1, %20 ], [ -1, %22 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_hp_add_bridge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 8, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 16
  br label %11

11:                                               ; preds = %16, %9
  %12 = phi i32 [ %5, %9 ], [ %17, %16 ]
  %13 = load i32, ptr %10, align 8
  %14 = tail call ptr @pci_find_bus(i32 noundef %13, i32 noundef %12) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = add i32 %12, 1
  %18 = icmp sgt i32 %17, %7
  br i1 %18, label %19, label %11

19:                                               ; preds = %16, %1
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.54) #16
  br label %30

21:                                               ; preds = %11
  %22 = add i32 %12, -1
  %23 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %3, ptr noundef %0, i32 noundef %22, i32 noundef 0, i32 noundef 0) #15
  %24 = sub i32 %7, %23
  %25 = tail call fastcc i32 @pci_scan_bridge_extend(ptr noundef %3, ptr noundef %0, i32 noundef %23, i32 noundef %24, i32 noundef 1)
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = sext i1 %28 to i32
  br label %30

30:                                               ; preds = %21, %19
  %31 = phi i32 [ -1, %19 ], [ %29, %21 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_any(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_pcibus_dev(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -176
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  tail call void @put_device(ptr noundef %4) #15
  tail call void @pci_bus_remove_resources(ptr noundef %2) #15
  tail call void @pci_release_bus_of_node(ptr noundef %2) #15
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_bus_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_bus_of_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_host_bridge_of_msi_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_vsec_capability(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_mps(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_mps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_reconfigure_ltr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_release_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_rcec_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_cap_save_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ea_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msix_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_allocate_cap_save_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_vpd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_configure_ari(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_acs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_rcec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_init_reset_methods(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_get_device_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_readrq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_find_domain_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_host_of_has_msi_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

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
!10 = !{i8 0, i8 2}
