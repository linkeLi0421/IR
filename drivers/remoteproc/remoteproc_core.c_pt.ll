; ModuleID = '/llk/IR/drivers/remoteproc/remoteproc_core.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_va_to_pa:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_va_to_pa\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_va_to_pa:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_da_to_va:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_da_to_va\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_da_to_va:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_add_carveout:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_add_carveout\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_add_carveout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_mem_entry_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_mem_entry_init\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_mem_entry_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_of_resm_mem_entry_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_of_resm_mem_entry_init\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_of_resm_mem_entry_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_of_parse_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_of_parse_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_of_parse_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_resource_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_resource_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_resource_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_boot:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_boot\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_boot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_detach\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_get_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_get_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_get_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_set_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_set_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_set_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_add\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rproc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rproc_add\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rproc_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_free\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_put\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_del:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_del\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rproc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rproc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_add_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_add_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_add_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_remove_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_remove_subdev\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_remove_subdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_get_by_child:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_get_by_child\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_get_by_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_report_crash:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_report_crash\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_report_crash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.rproc_vdev = type { %struct.kref, %struct.rproc_subdev, %struct.device, i32, %struct.list_head, ptr, [2 x %struct.rproc_vring], i32, i32 }
%struct.rproc_subdev = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rproc_vring = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.fw_rsc_vdev = type { i32, i32, i32, i32, i32, i8, i8, [2 x i8], [0 x %struct.fw_rsc_vdev_vring] }
%struct.fw_rsc_vdev_vring = type { i32, i32, i32, i32, i32 }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }
%struct.fw_rsc_carveout = type { i32, i32, i32, i32, i32, [32 x i8] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource_table = type { i32, i32, [2 x i32], [0 x i32] }
%struct.fw_rsc_devmem = type { i32, i32, i32, i32, i32, [32 x i8] }
%struct.fw_rsc_trace = type { i32, i32, i32, [32 x i8] }
%struct.rproc_debug_trace = type { ptr, ptr, %struct.list_head, %struct.rproc_mem_entry }
%struct.bus_dma_region = type { i32, i32, i64, i64 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [37 x i8] c"drivers/remoteproc/remoteproc_core.c\00", align 1
@__kstrtab_rproc_va_to_pa = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_va_to_pa = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_va_to_pa = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_va_to_pa to i32), ptr @__kstrtab_rproc_va_to_pa, ptr @__kstrtabns_rproc_va_to_pa }, section "___ksymtab+rproc_va_to_pa", align 4
@__kstrtab_rproc_da_to_va = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_da_to_va = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_da_to_va = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_da_to_va to i32), ptr @__kstrtab_rproc_da_to_va, ptr @__kstrtabns_rproc_da_to_va }, section "___ksymtab+rproc_da_to_va", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"vdev%dvring%d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't allocate memory entry structure\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"idr_alloc failed: %d\0A\00", align 1
@__kstrtab_rproc_add_carveout = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_add_carveout = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_add_carveout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_add_carveout to i32), ptr @__kstrtab_rproc_add_carveout, ptr @__kstrtabns_rproc_add_carveout }, section "___ksymtab+rproc_add_carveout", align 4
@__kstrtab_rproc_mem_entry_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_mem_entry_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_mem_entry_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_mem_entry_init to i32), ptr @__kstrtab_rproc_mem_entry_init, ptr @__kstrtabns_rproc_mem_entry_init }, section "___ksymtab+rproc_mem_entry_init", align 4
@__kstrtab_rproc_of_resm_mem_entry_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_of_resm_mem_entry_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_of_resm_mem_entry_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_of_resm_mem_entry_init to i32), ptr @__kstrtab_rproc_of_resm_mem_entry_init, ptr @__kstrtabns_rproc_of_resm_mem_entry_init }, section "___ksymtab+rproc_of_resm_mem_entry_init", align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@__kstrtab_rproc_of_parse_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_of_parse_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_of_parse_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_of_parse_firmware to i32), ptr @__kstrtab_rproc_of_parse_firmware, ptr @__kstrtabns_rproc_of_parse_firmware }, section "___ksymtab+rproc_of_parse_firmware", align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to unmap %zx/%zu\0A\00", align 1
@__kstrtab_rproc_resource_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_resource_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_resource_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_resource_cleanup to i32), ptr @__kstrtab_rproc_resource_cleanup, ptr @__kstrtabns_rproc_resource_cleanup }, section "___ksymtab+rproc_resource_cleanup", align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"recovering %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"request_firmware failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\013%s: invalid rproc handle\0A\00", align 1
@__func__.rproc_boot = private unnamed_addr constant [11 x i8] c"rproc_boot\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"can't lock rproc %s: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"can't boot deleted rproc %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"attaching to %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"powering up %s\0A\00", align 1
@__kstrtab_rproc_boot = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_boot = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_boot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_boot to i32), ptr @__kstrtab_rproc_boot, ptr @__kstrtabns_rproc_boot }, section "___ksymtab+rproc_boot", align 4
@__kstrtab_rproc_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_shutdown to i32), ptr @__kstrtab_rproc_shutdown, ptr @__kstrtabns_rproc_shutdown }, section "___ksymtab+rproc_shutdown", align 4
@__kstrtab_rproc_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_detach to i32), ptr @__kstrtab_rproc_detach, ptr @__kstrtabns_rproc_detach }, section "___ksymtab+rproc_detach", align 4
@rproc_list = internal global %struct.list_head { ptr @rproc_list, ptr @rproc_list }, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"can't get owner\0A\00", align 1
@__kstrtab_rproc_get_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_get_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_get_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_get_by_phandle to i32), ptr @__kstrtab_rproc_get_by_phandle, ptr @__kstrtabns_rproc_get_by_phandle }, section "___ksymtab+rproc_get_by_phandle", align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"can't change firmware while running\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"can't provide empty string for firmware name\0A\00", align 1
@__kstrtab_rproc_set_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_set_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_set_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_set_firmware to i32), ptr @__kstrtab_rproc_set_firmware, ptr @__kstrtabns_rproc_set_firmware }, section "___ksymtab+rproc_set_firmware", align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"%s is available\0A\00", align 1
@rproc_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rproc_list_mutex, i64 12), ptr getelementptr (i8, ptr @rproc_list_mutex, i64 12) } }, align 4
@__kstrtab_rproc_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_add = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_add to i32), ptr @__kstrtab_rproc_add, ptr @__kstrtabns_rproc_add }, section "___ksymtab+rproc_add", align 4
@__kstrtab_devm_rproc_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rproc_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rproc_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rproc_add to i32), ptr @__kstrtab_devm_rproc_add, ptr @__kstrtabns_devm_rproc_add }, section "___ksymtab+devm_rproc_add", align 4
@rproc_type = internal constant %struct.device_type { ptr @.str.74, ptr null, ptr null, ptr null, ptr @rproc_type_release, ptr null }, align 4
@rproc_class = external dso_local global %struct.class, align 4
@rproc_dev_index = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"ida_simple_get failed: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"remoteproc%d\00", align 1
@rproc_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"&rproc->lock\00", align 1
@__kstrtab_rproc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_alloc to i32), ptr @__kstrtab_rproc_alloc, ptr @__kstrtabns_rproc_alloc }, section "___ksymtab+rproc_alloc", align 4
@__kstrtab_rproc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_free to i32), ptr @__kstrtab_rproc_free, ptr @__kstrtabns_rproc_free }, section "___ksymtab+rproc_free", align 4
@__kstrtab_rproc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_put to i32), ptr @__kstrtab_rproc_put, ptr @__kstrtabns_rproc_put }, section "___ksymtab+rproc_put", align 4
@__kstrtab_rproc_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_del = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_del to i32), ptr @__kstrtab_rproc_del, ptr @__kstrtabns_rproc_del }, section "___ksymtab+rproc_del", align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"devm_rproc_free\00", align 1
@__kstrtab_devm_rproc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rproc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rproc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rproc_alloc to i32), ptr @__kstrtab_devm_rproc_alloc, ptr @__kstrtabns_devm_rproc_alloc }, section "___ksymtab+devm_rproc_alloc", align 4
@__kstrtab_rproc_add_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_add_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_add_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_add_subdev to i32), ptr @__kstrtab_rproc_add_subdev, ptr @__kstrtabns_rproc_add_subdev }, section "___ksymtab+rproc_add_subdev", align 4
@__kstrtab_rproc_remove_subdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_remove_subdev = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_remove_subdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_remove_subdev to i32), ptr @__kstrtab_rproc_remove_subdev, ptr @__kstrtabns_rproc_remove_subdev }, section "___ksymtab+rproc_remove_subdev", align 4
@__kstrtab_rproc_get_by_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_get_by_child = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_get_by_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_get_by_child to i32), ptr @__kstrtab_rproc_get_by_child, ptr @__kstrtabns_rproc_get_by_child }, section "___ksymtab+rproc_get_by_child", align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"\013%s: NULL rproc pointer\0A\00", align 1
@__func__.rproc_report_crash = private unnamed_addr constant [19 x i8] c"rproc_report_crash\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"crash detected in %s: type %s\0A\00", align 1
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_rproc_report_crash = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_report_crash = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_report_crash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_report_crash to i32), ptr @__kstrtab_rproc_report_crash, ptr @__kstrtabns_rproc_report_crash }, section "___ksymtab+rproc_report_crash", align 4
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@rproc_panic_nb = internal global %struct.notifier_block zeroinitializer, align 4
@__initcall__kmod_remoteproc__232_2812_remoteproc_init4 = internal global ptr @remoteproc_init, section ".initcall4.init", align 4
@__exitcall_remoteproc_exit = internal global ptr @remoteproc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [46 x i8] c"remoteproc.file=drivers/remoteproc/remoteproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"remoteproc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [58 x i8] c"remoteproc.description=Generic Remote Processor Framework\00", section ".modinfo", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Registered carveout doesn't fit len request\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Registered carveout doesn't fit da request\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"failed to allocate dma memory: len 0x%zx\0A\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"Allocated carveout doesn't fit device address request\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"iommu_map failed: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.30 = private unnamed_addr constant [32 x i8] c"can't reset resource table: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"can't stop rproc: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"stopped remote processor %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"Failed to load program segments: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"failed to prepare subdevices for %s: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"can't start rproc %s: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"failed to probe subdevices for %s: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"remote processor %s is now up\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"can't enable iommu: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"can't prepare rproc %s: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"can't load resource table: %d\0A\00", align 1
@rproc_loading_handlers = internal unnamed_addr constant [4 x ptr] [ptr @rproc_handle_carveout, ptr @rproc_handle_devmem, ptr @rproc_handle_trace, ptr @rproc_handle_vdev], align 4
@.str.41 = private unnamed_addr constant [33 x i8] c"Failed to process resources: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Failed to allocate associated carveouts: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"can't alloc iommu domain\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"can't attach iommu device: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"iommu fault: da 0x%lx flags 0x%x\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"rsc table is truncated\0A\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"unsupported vendor resource %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"unsupported resource %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"carveout rsc is truncated\0A\00", align 1
@.str.50 = private unnamed_addr constant [42 x i8] c"carveout rsc has non zero reserved bytes\0A\00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"Carveout already associated to resource table\0A\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"devmem rsc is truncated\0A\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"devmem rsc has non zero reserved bytes\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"failed to map devmem: %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"trace rsc is truncated\0A\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"trace rsc has non zero reserved bytes\0A\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"trace%d\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"vdev rsc is truncated\0A\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"vdev rsc has non zero reserved bytes\0A\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"too many vrings: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"vdev%dbuffer\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@.str.63 = private unnamed_addr constant [58 x i8] c"Failed to set DMA mask %llx. Trying to continue... (%pe)\0A\00", align 1
@arm_dma_ops = external dso_local constant %struct.dma_map_ops, align 4
@.str.64 = private unnamed_addr constant [36 x i8] c"invalid qsz (%d) or alignment (%d)\0A\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"can't remove vdev child device: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"Unable to allocate carveout %s: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"can't attach to rproc %s: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"remote processor %s is now attached\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Booting fw image %s, size %zd\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c"can't detach from rproc: %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"detached remote processor %s\0A\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"request_firmware_nowait err: %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"remoteproc\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"releasing %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"rproc-%s-fw\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"handling crash #%u in %s\0A\00", align 1
@rproc_crash_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81], align 4
@.str.78 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"mmufault\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"fatal error\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_remoteproc_exit, ptr @__initcall__kmod_remoteproc__232_2812_remoteproc_init4, ptr @__ksymtab_devm_rproc_add, ptr @__ksymtab_devm_rproc_alloc, ptr @__ksymtab_rproc_add, ptr @__ksymtab_rproc_add_carveout, ptr @__ksymtab_rproc_add_subdev, ptr @__ksymtab_rproc_alloc, ptr @__ksymtab_rproc_boot, ptr @__ksymtab_rproc_da_to_va, ptr @__ksymtab_rproc_del, ptr @__ksymtab_rproc_detach, ptr @__ksymtab_rproc_free, ptr @__ksymtab_rproc_get_by_child, ptr @__ksymtab_rproc_get_by_phandle, ptr @__ksymtab_rproc_mem_entry_init, ptr @__ksymtab_rproc_of_parse_firmware, ptr @__ksymtab_rproc_of_resm_mem_entry_init, ptr @__ksymtab_rproc_put, ptr @__ksymtab_rproc_remove_subdev, ptr @__ksymtab_rproc_report_crash, ptr @__ksymtab_rproc_resource_cleanup, ptr @__ksymtab_rproc_set_firmware, ptr @__ksymtab_rproc_shutdown, ptr @__ksymtab_rproc_va_to_pa, ptr @remoteproc_exit, ptr @rproc_exit_panic], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_va_to_pa(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #16
  br i1 %2, label %3, label %16

3:                                                ; preds = %1
  %4 = tail call ptr @vmalloc_to_page(ptr noundef %0) #16
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %4 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = lshr exact i32 %8, 5
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %11 = add i32 %9, %10
  %12 = shl i32 %11, 12
  %13 = ptrtoint ptr %0 to i32
  %14 = and i32 %13, 4095
  %15 = or i32 %12, %14
  br label %32

16:                                               ; preds = %1
  %17 = ptrtoint ptr %0 to i32
  %18 = icmp ugt ptr %0, inttoptr (i32 -1073741825 to ptr)
  %19 = load ptr, ptr @high_memory, align 4
  %20 = icmp ugt ptr %19, %0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = add i32 %17, 1073741824
  %24 = lshr i32 %23, 12
  %25 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %26 = add i32 %25, %24
  %27 = tail call i32 @pfn_valid(i32 noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %22, %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #16
  br label %30

30:                                               ; preds = %29, %22
  %31 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %17, i32 -2130706432, i32 8454144) #17, !srcloc !9
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i32 [ %15, %3 ], [ %31, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rproc_da_to_va(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rproc_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call ptr %8(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %10, %4
  %14 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = trunc i64 %1 to i32
  br label %19

19:                                               ; preds = %40, %17
  %20 = phi ptr [ %15, %17 ], [ %41, %40 ]
  %21 = getelementptr i8, ptr %20, i32 -56
  %22 = getelementptr i8, ptr %20, i32 -40
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %18, %23
  %25 = load ptr, ptr %21, align 4
  %26 = icmp eq ptr %25, null
  %27 = icmp slt i32 %24, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %19
  %30 = add i32 %24, %2
  %31 = getelementptr i8, ptr %20, i32 -44
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %25, i32 %24
  %36 = icmp eq ptr %3, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %20, i32 -52
  %39 = load i8, ptr %38, align 4, !range !10
  store i8 %39, ptr %3, align 1
  br label %43

40:                                               ; preds = %29, %19
  %41 = load ptr, ptr %20, align 4
  %42 = icmp eq ptr %41, %14
  br i1 %42, label %43, label %19

43:                                               ; preds = %40, %37, %34, %13, %10
  %44 = phi ptr [ %11, %10 ], [ %35, %37 ], [ %35, %34 ], [ null, %13 ], [ null, %40 ]
  ret ptr %44
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rproc_find_carveout_by_name(ptr noundef readonly %0, ptr noundef readonly %1, ...) local_unnamed_addr #3 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !11
  %5 = icmp eq ptr %1, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  call void @llvm.va_start(ptr nonnull %3)
  %7 = load i32, ptr %3, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @vsnprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull %1, [1 x i32] %8)
  call void @llvm.va_end(ptr nonnull %3)
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -32
  %17 = call i32 @strcmp(ptr noundef %16, ptr noundef nonnull %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %13, i32 -56
  br label %21

21:                                               ; preds = %19, %11, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_alloc_vring(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 6
  %6 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 %1
  %7 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 %1, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %8, 18
  %12 = add i32 %10, 5
  %13 = add i32 %12, %11
  %14 = sub i32 0, %10
  %15 = and i32 %13, %14
  %16 = shl i32 %8, 3
  %17 = add i32 %16, 4101
  %18 = add i32 %17, %15
  %19 = and i32 %18, -4096
  %20 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = tail call ptr (ptr, ptr, ...) @rproc_find_carveout_by_name(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %26, i32 noundef %1)
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %24, i32 0, i32 8
  %30 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %29, i32 0, i32 %1
  %31 = load i32, ptr %30, align 1
  br i1 %28, label %50, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.rproc_mem_entry, ptr %27, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, %19
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %31, -1
  br i1 %37, label %61, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.rproc_mem_entry, ptr %27, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %75, label %42

42:                                               ; preds = %38
  %43 = sub i32 %31, %40
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = add i32 %43, %19
  %47 = icmp ugt i32 %46, %34
  br i1 %47, label %48, label %61

48:                                               ; preds = %45, %42, %32
  %49 = phi ptr [ @.str.24, %32 ], [ @.str.25, %42 ], [ @.str.24, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %49) #18
  br label %75

50:                                               ; preds = %2
  %51 = load i32, ptr %25, align 4
  %52 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr undef, ptr noundef null, i32 noundef 0, i32 noundef %19, i32 noundef %31, ptr noundef nonnull @rproc_alloc_carveout, ptr noundef nonnull @rproc_release_carveout, ptr noundef nonnull @.str.1, i32 noundef %51, i32 noundef %1)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #18
  br label %75

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.rproc_mem_entry, ptr %52, i32 0, i32 7
  %57 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 14
  %58 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 14, i32 1
  %59 = load ptr, ptr %58, align 4
  store ptr %56, ptr %58, align 4
  store ptr %57, ptr %56, align 4
  %60 = getelementptr inbounds %struct.rproc_mem_entry, ptr %52, i32 0, i32 7, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %56, ptr %59, align 4
  br label %61

61:                                               ; preds = %55, %45, %36
  %62 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 19
  %63 = tail call i32 @idr_alloc(ptr noundef %62, ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #16
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %63) #18
  br label %75

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 24
  %68 = load i32, ptr %67, align 8
  %69 = icmp sgt i32 %63, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 %63, ptr %67, align 8
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 %1, i32 4
  store i32 %63, ptr %72, align 4
  %73 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %24, i32 0, i32 8
  %74 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %73, i32 0, i32 %1, i32 3
  store i32 %63, ptr %74, align 1
  br label %75

75:                                               ; preds = %71, %65, %54, %48, %38
  %76 = phi i32 [ %63, %65 ], [ 0, %71 ], [ -12, %54 ], [ -12, %38 ], [ -12, %48 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @rproc_mem_entry_init(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef readonly %7, ...) #0 {
  %9 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !11
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 84) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  store ptr %1, ptr %11, align 8
  %14 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 2
  store i32 %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 4
  store i32 %4, ptr %15, align 8
  %16 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 3
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 11
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 12
  store ptr %6, ptr %18, align 8
  %19 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 8
  store i32 -1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 10
  store i32 -1, ptr %20, align 8
  call void @llvm.va_start(ptr nonnull %9)
  %21 = getelementptr inbounds %struct.rproc_mem_entry, ptr %11, i32 0, i32 6
  %22 = load i32, ptr %9, align 4
  %23 = insertvalue [1 x i32] poison, i32 %22, 0
  %24 = call i32 @vsnprintf(ptr noundef %21, i32 noundef 32, ptr noundef %7, [1 x i32] %23)
  call void @llvm.va_end(ptr nonnull %9)
  br label %25

25:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_alloc_carveout(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !11
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = load i32, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26, i32 noundef %13) #18
  br label %72

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %62, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %16, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.27) #18
  %27 = load i32, ptr %15, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %19, align 8
  br label %31

31:                                               ; preds = %29, %18
  %32 = phi ptr [ %30, %29 ], [ %20, %18 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 84) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %67, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %19, align 8
  %40 = load i32, ptr %15, align 4
  %41 = load i32, ptr %3, align 4
  %42 = load i32, ptr %7, align 4
  %43 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @iommu_map(ptr noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %44) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %45) #18
  call void @kfree(ptr noundef nonnull %36) #16
  br label %67

48:                                               ; preds = %38
  %49 = load i32, ptr %15, align 4
  %50 = getelementptr inbounds %struct.rproc_mem_entry, ptr %36, i32 0, i32 4
  store i32 %49, ptr %50, align 8
  %51 = load i32, ptr %7, align 4
  %52 = getelementptr inbounds %struct.rproc_mem_entry, ptr %36, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rproc_mem_entry, ptr %36, i32 0, i32 7
  %54 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 15
  %55 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 15, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %53, ptr %55, align 4
  store ptr %54, ptr %53, align 8
  %57 = getelementptr inbounds %struct.rproc_mem_entry, ptr %36, i32 0, i32 7, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %53, ptr %56, align 4
  %58 = load i32, ptr %15, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %62, label %60

60:                                               ; preds = %48, %31
  %61 = load i32, ptr %3, align 4
  br label %64

62:                                               ; preds = %48, %25, %14
  %63 = load i32, ptr %3, align 4
  store i32 %63, ptr %15, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  store ptr %9, ptr %1, align 4
  br label %72

67:                                               ; preds = %47, %34
  %68 = phi i32 [ %45, %47 ], [ -12, %34 ]
  %69 = load ptr, ptr %5, align 4
  %70 = load i32, ptr %7, align 4
  %71 = load i32, ptr %3, align 4
  call void @dma_free_attrs(ptr noundef %69, i32 noundef %70, ptr noundef nonnull %9, i32 noundef %71, i32 noundef 0) #16
  br label %72

72:                                               ; preds = %67, %64, %11
  %73 = phi i32 [ %68, %67 ], [ 0, %64 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_release_carveout(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef %6, ptr noundef %7, i32 noundef %9, i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_add_carveout(ptr noundef %0, ptr noundef %1) #9 {
  %3 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 7
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %3, ptr %5, align 4
  store ptr %4, ptr %3, align 4
  %7 = getelementptr inbounds %struct.rproc_mem_entry, ptr %1, i32 0, i32 7, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %3, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_free_vring(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rproc_vring, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rproc_vdev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 19
  %7 = getelementptr inbounds %struct.rproc_vring, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @idr_remove(ptr noundef %6, i32 noundef %8) #16
  %10 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = ptrtoint ptr %0 to i32
  %15 = getelementptr inbounds %struct.rproc_vdev, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  %17 = sub i32 %14, %16
  %18 = sdiv exact i32 %17, 28
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.rproc_vdev, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr i8, ptr %11, i32 %21
  %23 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %22, i32 0, i32 8
  %24 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %23, i32 0, i32 %18
  store i32 0, ptr %24, align 1
  %25 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %23, i32 0, i32 %18, i32 3
  store i32 -1, ptr %25, align 1
  br label %26

26:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_vdev_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rproc_vdev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 19
  %7 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @idr_remove(ptr noundef %6, i32 noundef %8) #16
  %10 = getelementptr inbounds %struct.rproc, ptr %5, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 0
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr inbounds %struct.rproc_vdev, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  %18 = sub i32 %15, %17
  %19 = sdiv exact i32 %18, 28
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.rproc_vdev, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr i8, ptr %11, i32 %22
  %24 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %23, i32 0, i32 8
  %25 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %24, i32 0, i32 %19
  store i32 0, ptr %25, align 1
  %26 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %24, i32 0, i32 %19, i32 3
  store i32 -1, ptr %26, align 1
  br label %27

27:                                               ; preds = %13, %1
  %28 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 1, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rproc_vdev, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rproc, ptr %31, i32 0, i32 19
  %33 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 1, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @idr_remove(ptr noundef %32, i32 noundef %34) #16
  %36 = getelementptr inbounds %struct.rproc, ptr %31, i32 0, i32 25
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %27
  %40 = getelementptr %struct.rproc_vdev, ptr %0, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr inbounds %struct.rproc_vdev, ptr %29, i32 0, i32 6
  %43 = ptrtoint ptr %42 to i32
  %44 = sub i32 %41, %43
  %45 = sdiv exact i32 %44, 28
  %46 = load ptr, ptr %28, align 4
  %47 = getelementptr inbounds %struct.rproc_vdev, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr i8, ptr %37, i32 %48
  %50 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %49, i32 0, i32 8
  %51 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %50, i32 0, i32 %45
  store i32 0, ptr %51, align 1
  %52 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %50, i32 0, i32 %45, i32 3
  store i32 -1, ptr %52, align 1
  br label %53

53:                                               ; preds = %39, %27
  %54 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 1
  %55 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %54, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %57, ptr %56, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %54, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  %59 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 4
  %60 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 4, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  %64 = getelementptr inbounds %struct.rproc_vdev, ptr %0, i32 0, i32 2
  tail call void @device_unregister(ptr noundef %64) #16
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_remove_subdev(ptr nocapture readnone %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @rproc_of_resm_mem_entry_init(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ...) #0 {
  %6 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !11
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 84) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rproc_mem_entry, ptr %8, i32 0, i32 4
  store i32 %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.rproc_mem_entry, ptr %8, i32 0, i32 3
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rproc_mem_entry, ptr %8, i32 0, i32 8
  store i32 -1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.rproc_mem_entry, ptr %8, i32 0, i32 10
  store i32 %1, ptr %14, align 8
  call void @llvm.va_start(ptr nonnull %6)
  %15 = getelementptr inbounds %struct.rproc_mem_entry, ptr %8, i32 0, i32 6
  %16 = load i32, ptr %6, align 4
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  %18 = call i32 @vsnprintf(ptr noundef %15, i32 noundef 32, ptr noundef %4, [1 x i32] %17)
  call void @llvm.va_end(ptr nonnull %6)
  br label %19

19:                                               ; preds = %10, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_of_parse_firmware(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_property_read_string_helper(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %2, i32 noundef 1, i32 noundef %1) #16
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_resource_cleanup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 13
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %4, %6 ], [ %11, %8 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %9, i32 -4
  %13 = load ptr, ptr %12, align 4
  tail call void @rproc_remove_trace_file(ptr noundef %13) #16
  %14 = load i32, ptr %7, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %7, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %10) #16
  %20 = icmp eq ptr %11, %3
  br i1 %20, label %21, label %8

21:                                               ; preds = %8, %1
  %22 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  br label %27

27:                                               ; preds = %40, %25
  %28 = phi ptr [ %23, %25 ], [ %30, %40 ]
  %29 = getelementptr i8, ptr %28, i32 -56
  %30 = load ptr, ptr %28, align 4
  %31 = load ptr, ptr %26, align 8
  %32 = getelementptr i8, ptr %28, i32 -40
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %28, i32 -44
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @iommu_unmap(ptr noundef %31, i32 noundef %33, i32 noundef %35) #16
  %37 = load i32, ptr %34, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %37, i32 noundef %36) #18
  br label %40

40:                                               ; preds = %39, %27
  %41 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %28, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  tail call void @kfree(ptr noundef %29) #16
  %45 = icmp eq ptr %30, %22
  br i1 %45, label %46, label %27

46:                                               ; preds = %40, %21
  %47 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %66, label %50

50:                                               ; preds = %60, %46
  %51 = phi ptr [ %53, %60 ], [ %48, %46 ]
  %52 = getelementptr i8, ptr %51, i32 -56
  %53 = load ptr, ptr %51, align 4
  %54 = getelementptr i8, ptr %51, i32 24
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = tail call i32 %55(ptr noundef %0, ptr noundef %52) #16
  %59 = load ptr, ptr %51, align 4
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %53, %50 ]
  %62 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %63, ptr %64, align 4
  store volatile ptr %61, ptr %63, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  tail call void @kfree(ptr noundef %52) #16
  %65 = icmp eq ptr %53, %47
  br i1 %65, label %66, label %50

66:                                               ; preds = %60, %46
  %67 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 17
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %83, label %70

70:                                               ; preds = %81, %66
  %71 = phi ptr [ %73, %81 ], [ %68, %66 ]
  %72 = getelementptr i8, ptr %71, i32 -508
  %73 = load ptr, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #16, !srcloc !13
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #16, !srcloc !14
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = icmp sgt i32 %75, 0
  br i1 %78, label %81, label %79, !prof !15

79:                                               ; preds = %77
  tail call void @refcount_warn_saturate(ptr noundef %72, i32 noundef 3) #16
  br label %81

80:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void @rproc_vdev_release(ptr noundef %72) #16
  br label %81

81:                                               ; preds = %80, %79, %77
  %82 = icmp eq ptr %73, %67
  br i1 %82, label %83, label %70

83:                                               ; preds = %81, %66
  tail call void @rproc_coredump_cleanup(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_remove_trace_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_coredump_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_trigger_recovery(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4, !annotation !11
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %13) #18
  %14 = tail call fastcc i32 @rproc_stop(ptr noundef %0, i1 noundef zeroext true)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rproc_ops, ptr %18, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #16
  %21 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef %22, ptr noundef %3) #16
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %23) #18
  br label %30

26:                                               ; preds = %16
  %27 = load ptr, ptr %2, align 4
  %28 = call fastcc i32 @rproc_start(ptr noundef %0, ptr noundef %27)
  %29 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %29) #16
  br label %30

30:                                               ; preds = %26, %25, %11, %7
  %31 = phi i32 [ 0, %7 ], [ %14, %11 ], [ %23, %25 ], [ %28, %26 ]
  call void @mutex_unlock(ptr noundef %4) #16
  br label %32

32:                                               ; preds = %30, %1
  %33 = phi i32 [ %31, %30 ], [ %5, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rproc_stop(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rproc_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %10
  br i1 %13, label %24, label %14

14:                                               ; preds = %20, %9
  %15 = phi ptr [ %22, %20 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.rproc_subdev, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void %17(ptr noundef %15, i1 noundef zeroext %1) #16
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %24, label %14

24:                                               ; preds = %20, %9
  %25 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 28
  %34 = load i32, ptr %33, align 8
  %35 = tail call ptr @kmemdup(ptr noundef nonnull %26, i32 noundef %34, i32 noundef 3264) #16
  store ptr %35, ptr %29, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 26
  %39 = load ptr, ptr %38, align 8
  tail call void @kfree(ptr noundef %39) #16
  %40 = load ptr, ptr %29, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi ptr [ %30, %28 ], [ %40, %37 ]
  store ptr %42, ptr %25, align 4
  br label %44

43:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.30, i32 noundef -12) #18
  br label %68

44:                                               ; preds = %41, %24
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.rproc_ops, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %48) #18
  br label %68

51:                                               ; preds = %44
  %52 = load ptr, ptr %11, align 4
  %53 = icmp eq ptr %52, %10
  br i1 %53, label %64, label %54

54:                                               ; preds = %60, %51
  %55 = phi ptr [ %62, %60 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.rproc_subdev, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void %57(ptr noundef %55) #16
  br label %60

60:                                               ; preds = %59, %54
  %61 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %10
  br i1 %63, label %64, label %54

64:                                               ; preds = %60, %51
  %65 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef %67) #18
  br label %68

68:                                               ; preds = %64, %50, %43, %2
  %69 = phi i32 [ -12, %43 ], [ %48, %50 ], [ 0, %64 ], [ -22, %2 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rproc_start(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rproc_ops, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %10, %9 ], [ -22, %2 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.33, i32 noundef %13) #18
  br label %128

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.rproc_ops, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = tail call ptr %17(ptr noundef %0, ptr noundef %1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 28
  %26 = load i32, ptr %25, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %20, ptr align 1 %24, i32 %26, i1 false)
  %27 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  store ptr %20, ptr %27, align 4
  br label %28

28:                                               ; preds = %22, %19, %14
  %29 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %60, label %32

32:                                               ; preds = %44, %28
  %33 = phi ptr [ %45, %44 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.rproc_subdev, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = tail call i32 %35(ptr noundef %33) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %29
  br i1 %43, label %57, label %47

44:                                               ; preds = %37, %32
  %45 = load ptr, ptr %33, align 4
  %46 = icmp eq ptr %45, %29
  br i1 %46, label %60, label %32

47:                                               ; preds = %53, %40
  %48 = phi ptr [ %55, %53 ], [ %42, %40 ]
  %49 = getelementptr inbounds %struct.rproc_subdev, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void %50(ptr noundef %48) #16
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %29
  br i1 %56, label %57, label %47

57:                                               ; preds = %53, %40
  %58 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef %59, i32 noundef %38) #18
  br label %123

60:                                               ; preds = %44, %28
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.rproc_ops, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %0) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35, ptr noundef %68, i32 noundef %64) #18
  br label %108

69:                                               ; preds = %60
  %70 = load ptr, ptr %29, align 4
  %71 = icmp eq ptr %70, %29
  br i1 %71, label %104, label %72

72:                                               ; preds = %84, %69
  %73 = phi ptr [ %85, %84 ], [ %70, %69 ]
  %74 = getelementptr inbounds %struct.rproc_subdev, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = tail call i32 %75(ptr noundef %73) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %29
  br i1 %83, label %97, label %87

84:                                               ; preds = %77, %72
  %85 = load ptr, ptr %73, align 4
  %86 = icmp eq ptr %85, %29
  br i1 %86, label %104, label %72

87:                                               ; preds = %93, %80
  %88 = phi ptr [ %95, %93 ], [ %82, %80 ]
  %89 = getelementptr inbounds %struct.rproc_subdev, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call void %90(ptr noundef %88, i1 noundef zeroext true) #16
  br label %93

93:                                               ; preds = %92, %87
  %94 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %29
  br i1 %96, label %97, label %87

97:                                               ; preds = %93, %80
  %98 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef %99, i32 noundef %78) #18
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds %struct.rproc_ops, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 %102(ptr noundef %0) #16
  br label %108

104:                                              ; preds = %84, %69
  %105 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  store i32 2, ptr %105, align 4
  %106 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %107) #18
  br label %128

108:                                              ; preds = %97, %66
  %109 = phi i32 [ %64, %66 ], [ %78, %97 ]
  %110 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %29
  br i1 %112, label %123, label %113

113:                                              ; preds = %119, %108
  %114 = phi ptr [ %121, %119 ], [ %111, %108 ]
  %115 = getelementptr inbounds %struct.rproc_subdev, ptr %114, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  tail call void %116(ptr noundef %114) #16
  br label %119

119:                                              ; preds = %118, %113
  %120 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, %29
  br i1 %122, label %123, label %113

123:                                              ; preds = %119, %108, %57
  %124 = phi i32 [ %38, %57 ], [ %109, %108 ], [ %109, %119 ]
  %125 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  store ptr %126, ptr %127, align 4
  br label %128

128:                                              ; preds = %123, %104, %12
  %129 = phi i32 [ %13, %12 ], [ %124, %123 ], [ 0, %104 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_boot(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rproc_boot) #18
  br label %334

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 10
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %14, i32 noundef %10) #18
  br label %334

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef %21) #18
  br label %332

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #16, !srcloc !13
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #16, !srcloc !18
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %332, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %16, align 4
  %29 = icmp eq i32 %28, 6
  %30 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %32, label %238

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef %31) #18
  %33 = tail call fastcc i32 @rproc_enable_iommu(ptr noundef nonnull %0) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef %33) #18
  br label %329

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = tail call i32 %39(ptr noundef nonnull %0) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %37, align 8
  br label %48

46:                                               ; preds = %41
  %47 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef %47, i32 noundef %42) #18
  br label %230

48:                                               ; preds = %44, %36
  %49 = phi ptr [ %45, %44 ], [ %38, %36 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !11
  %50 = getelementptr inbounds %struct.rproc_ops, ptr %49, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %48
  %54 = call ptr %51(ptr noundef nonnull %0, ptr noundef nonnull %2) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %81, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %37, align 8
  %60 = getelementptr inbounds %struct.rproc_ops, ptr %59, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %2, align 4
  %65 = call ptr @kmemdup(ptr noundef nonnull %54, i32 noundef %64, i32 noundef 3264) #16
  %66 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 26
  store ptr %65, ptr %66, align 8
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %83

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 26
  store ptr null, ptr %70, align 8
  br label %71

71:                                               ; preds = %69, %63
  %72 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  store ptr null, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  store ptr %54, ptr %73, align 4
  %74 = load i32, ptr %2, align 4
  %75 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 28
  store i32 %74, ptr %75, align 8
  br label %76

76:                                               ; preds = %71, %53, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %77 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 24
  store i32 -1, ptr %77, align 8
  %78 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 32
  store i32 0, ptr %78, align 8
  %79 = call fastcc i32 @rproc_handle_resources(ptr noundef nonnull %0) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %85

81:                                               ; preds = %56
  %82 = ptrtoint ptr %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40, i32 noundef %82) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %83

83:                                               ; preds = %81, %68
  %84 = phi i32 [ -12, %68 ], [ %82, %81 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40, i32 noundef %84) #18
  br label %222

85:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef %79) #18
  br label %222

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %128, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  br label %92

92:                                               ; preds = %124, %90
  %93 = phi ptr [ %88, %90 ], [ %95, %124 ]
  %94 = getelementptr i8, ptr %93, i32 -56
  %95 = load ptr, ptr %93, align 4
  %96 = getelementptr i8, ptr %93, i32 20
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = call i32 %97(ptr noundef %0, ptr noundef %94) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %99, %92
  %103 = getelementptr i8, ptr %93, i32 8
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %124, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %91, align 4
  %108 = getelementptr i8, ptr %107, i32 %104
  %109 = load ptr, ptr %94, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = call i32 @rproc_va_to_pa(ptr noundef nonnull %109) #16
  br label %116

113:                                              ; preds = %106
  %114 = getelementptr i8, ptr %93, i32 -48
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %111
  %117 = phi i32 [ %112, %111 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %108, i32 0, i32 1
  store i32 %117, ptr %118, align 1
  %119 = getelementptr i8, ptr %93, i32 -40
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %108, align 1
  %121 = getelementptr i8, ptr %93, i32 -44
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %108, i32 0, i32 2
  store i32 %122, ptr %123, align 1
  br label %124

124:                                              ; preds = %116, %102
  %125 = icmp eq ptr %95, %87
  br i1 %125, label %128, label %92

126:                                              ; preds = %99
  %127 = getelementptr i8, ptr %93, i32 -32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.66, ptr noundef %127, i32 noundef %100) #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef -12) #18
  br label %220

128:                                              ; preds = %124, %86
  %129 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, %129
  br i1 %131, label %159, label %132

132:                                              ; preds = %144, %128
  %133 = phi ptr [ %145, %144 ], [ %130, %128 ]
  %134 = getelementptr inbounds %struct.rproc_subdev, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %132
  %138 = call i32 %135(ptr noundef %133) #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %129
  br i1 %143, label %157, label %147

144:                                              ; preds = %137, %132
  %145 = load ptr, ptr %133, align 4
  %146 = icmp eq ptr %145, %129
  br i1 %146, label %159, label %132

147:                                              ; preds = %153, %140
  %148 = phi ptr [ %155, %153 ], [ %142, %140 ]
  %149 = getelementptr inbounds %struct.rproc_subdev, ptr %148, i32 0, i32 4
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  call void %150(ptr noundef %148) #16
  br label %153

153:                                              ; preds = %152, %147
  %154 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, %129
  br i1 %156, label %157, label %147

157:                                              ; preds = %153, %140
  %158 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34, ptr noundef %158, i32 noundef %138) #18
  br label %220

159:                                              ; preds = %144, %128
  %160 = load ptr, ptr %37, align 8
  %161 = getelementptr inbounds %struct.rproc_ops, ptr %160, i32 0, i32 4
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = call i32 %162(ptr noundef %0) #16
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.68, ptr noundef %168, i32 noundef %165) #18
  br label %205

169:                                              ; preds = %164, %159
  %170 = load ptr, ptr %129, align 4
  %171 = icmp eq ptr %170, %129
  br i1 %171, label %203, label %172

172:                                              ; preds = %184, %169
  %173 = phi ptr [ %185, %184 ], [ %170, %169 ]
  %174 = getelementptr inbounds %struct.rproc_subdev, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %172
  %178 = call i32 %175(ptr noundef %173) #16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %129
  br i1 %183, label %197, label %187

184:                                              ; preds = %177, %172
  %185 = load ptr, ptr %173, align 4
  %186 = icmp eq ptr %185, %129
  br i1 %186, label %203, label %172

187:                                              ; preds = %193, %180
  %188 = phi ptr [ %195, %193 ], [ %182, %180 ]
  %189 = getelementptr inbounds %struct.rproc_subdev, ptr %188, i32 0, i32 3
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  call void %190(ptr noundef %188, i1 noundef zeroext true) #16
  br label %193

193:                                              ; preds = %192, %187
  %194 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, %129
  br i1 %196, label %197, label %187

197:                                              ; preds = %193, %180
  %198 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef %198, i32 noundef %178) #18
  %199 = load ptr, ptr %37, align 8
  %200 = getelementptr inbounds %struct.rproc_ops, ptr %199, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 %201(ptr noundef %0) #16
  br label %205

203:                                              ; preds = %184, %169
  store i32 5, ptr %16, align 4
  %204 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.69, ptr noundef %204) #18
  br label %332

205:                                              ; preds = %197, %167
  %206 = phi i32 [ %165, %167 ], [ %178, %197 ]
  %207 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, %129
  br i1 %209, label %220, label %210

210:                                              ; preds = %216, %205
  %211 = phi ptr [ %218, %216 ], [ %208, %205 ]
  %212 = getelementptr inbounds %struct.rproc_subdev, ptr %211, i32 0, i32 4
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  call void %213(ptr noundef %211) #16
  br label %216

216:                                              ; preds = %215, %210
  %217 = getelementptr inbounds %struct.list_head, ptr %211, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, %129
  br i1 %219, label %220, label %210

220:                                              ; preds = %216, %205, %157, %126
  %221 = phi i32 [ -12, %126 ], [ %138, %157 ], [ %206, %205 ], [ %206, %216 ]
  call void @rproc_resource_cleanup(ptr noundef %0) #16
  br label %222

222:                                              ; preds = %220, %85, %83
  %223 = phi i32 [ %84, %83 ], [ %79, %85 ], [ %221, %220 ]
  %224 = load ptr, ptr %37, align 8
  %225 = getelementptr inbounds %struct.rproc_ops, ptr %224, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %222
  %229 = call i32 %226(ptr noundef %0) #16
  br label %230

230:                                              ; preds = %228, %222, %46
  %231 = phi i32 [ %42, %46 ], [ %223, %222 ], [ %223, %228 ]
  %232 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  %233 = load ptr, ptr %232, align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %326, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %237 = load ptr, ptr %236, align 4
  call void @iommu_detach_device(ptr noundef nonnull %233, ptr noundef %237) #16
  call void @iommu_domain_free(ptr noundef nonnull %233) #16
  br label %326

238:                                              ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef %31) #18
  %239 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 3
  %240 = load ptr, ptr %239, align 8
  %241 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef %240, ptr noundef %8) #16
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %241) #18
  br label %329

244:                                              ; preds = %238
  %245 = load ptr, ptr %3, align 4
  %246 = load ptr, ptr %239, align 8
  %247 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %struct.rproc_ops, ptr %248, i32 0, i32 13
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %244
  %253 = call i32 %250(ptr noundef nonnull %0, ptr noundef %245) #16
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %323

255:                                              ; preds = %252, %244
  %256 = load i32, ptr %245, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.70, ptr noundef %246, i32 noundef %256) #18
  %257 = call fastcc i32 @rproc_enable_iommu(ptr noundef nonnull %0) #16
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef %257) #18
  br label %323

260:                                              ; preds = %255
  %261 = load ptr, ptr %247, align 8
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %271, label %264

264:                                              ; preds = %260
  %265 = call i32 %262(ptr noundef nonnull %0) #16
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = load ptr, ptr %247, align 8
  br label %271

269:                                              ; preds = %264
  %270 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef %270, i32 noundef %265) #18
  br label %315

271:                                              ; preds = %267, %260
  %272 = phi ptr [ %268, %267 ], [ %261, %260 ]
  %273 = getelementptr inbounds %struct.rproc_ops, ptr %272, i32 0, i32 14
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %271
  %277 = call i64 %274(ptr noundef nonnull %0, ptr noundef %245) #16
  %278 = load ptr, ptr %247, align 8
  br label %279

279:                                              ; preds = %276, %271
  %280 = phi ptr [ %278, %276 ], [ %272, %271 ]
  %281 = phi i64 [ %277, %276 ], [ 0, %271 ]
  %282 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 16
  store i64 %281, ptr %282, align 8
  %283 = getelementptr inbounds %struct.rproc_ops, ptr %280, i32 0, i32 8
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %279
  %287 = call i32 %284(ptr noundef nonnull %0, ptr noundef %245) #16
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %286, %279
  %290 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 24
  store i32 -1, ptr %290, align 8
  %291 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 32
  store i32 0, ptr %291, align 8
  %292 = call fastcc i32 @rproc_handle_resources(ptr noundef nonnull %0) #16
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %289
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.41, i32 noundef %292) #18
  br label %302

295:                                              ; preds = %289
  %296 = call fastcc i32 @rproc_alloc_registered_carveouts(ptr noundef nonnull %0) #16
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef %296) #18
  br label %302

299:                                              ; preds = %295
  %300 = call fastcc i32 @rproc_start(ptr noundef nonnull %0, ptr noundef %245) #16
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %323, label %302

302:                                              ; preds = %299, %298, %294
  %303 = phi i32 [ %292, %294 ], [ %296, %298 ], [ %300, %299 ]
  call void @rproc_resource_cleanup(ptr noundef nonnull %0) #16
  %304 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %305 = load ptr, ptr %304, align 4
  call void @kfree(ptr noundef %305) #16
  store ptr null, ptr %304, align 4
  %306 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  store ptr null, ptr %306, align 4
  br label %307

307:                                              ; preds = %302, %286
  %308 = phi i32 [ %287, %286 ], [ %303, %302 ]
  %309 = load ptr, ptr %247, align 8
  %310 = getelementptr inbounds %struct.rproc_ops, ptr %309, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %307
  %314 = call i32 %311(ptr noundef nonnull %0) #16
  br label %315

315:                                              ; preds = %313, %307, %269
  %316 = phi i32 [ %265, %269 ], [ %308, %307 ], [ %308, %313 ]
  %317 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  %318 = load ptr, ptr %317, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %323, label %320

320:                                              ; preds = %315
  %321 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %322 = load ptr, ptr %321, align 4
  call void @iommu_detach_device(ptr noundef nonnull %318, ptr noundef %322) #16
  call void @iommu_domain_free(ptr noundef nonnull %318) #16
  br label %323

323:                                              ; preds = %320, %315, %299, %259, %252
  %324 = phi i32 [ %257, %259 ], [ %253, %252 ], [ 0, %299 ], [ %316, %315 ], [ %316, %320 ]
  %325 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %325) #16
  br label %326

326:                                              ; preds = %323, %235, %230
  %327 = phi i32 [ %324, %323 ], [ %231, %230 ], [ %231, %235 ]
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %326, %243, %35
  %330 = phi i32 [ %327, %326 ], [ %33, %35 ], [ %241, %243 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #16, !srcloc !13
  %331 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #16, !srcloc !20
  br label %332

332:                                              ; preds = %329, %326, %203, %22, %19
  %333 = phi i32 [ -19, %19 ], [ %330, %329 ], [ 0, %326 ], [ 0, %22 ], [ 0, %203 ]
  call void @mutex_unlock(ptr noundef %9) #16
  br label %334

334:                                              ; preds = %332, %12, %5
  %335 = phi i32 [ %10, %12 ], [ %333, %332 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %335
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 10
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef %8, i32 noundef %3) #18
  br label %39

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !22
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @rproc_stop(ptr noundef %0, i1 noundef zeroext false)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !24
  br label %38

19:                                               ; preds = %14
  tail call void @rproc_resource_cleanup(ptr noundef %0)
  %20 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rproc_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef %0) #16
  br label %27

27:                                               ; preds = %25, %19
  %28 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @iommu_detach_device(ptr noundef nonnull %29, ptr noundef %33) #16
  tail call void @iommu_domain_free(ptr noundef nonnull %29) #16
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #16
  store ptr null, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  store ptr null, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %17, %9
  tail call void @mutex_unlock(ptr noundef %2) #16
  br label %39

39:                                               ; preds = %38, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_detach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 10
  %3 = tail call i32 @mutex_lock_interruptible(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef %8, i32 noundef %3) #18
  br label %102

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !22
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %100

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rproc_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %77, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18
  %23 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %36, label %26

26:                                               ; preds = %32, %21
  %27 = phi ptr [ %34, %32 ], [ %24, %21 ]
  %28 = getelementptr inbounds %struct.rproc_subdev, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void %29(ptr noundef %27, i1 noundef zeroext false) #16
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %22
  br i1 %35, label %36, label %26

36:                                               ; preds = %32, %21
  %37 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 26
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1619, i32 noundef 9, ptr noundef null) #16
  br label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 28
  %47 = load i32, ptr %46, align 8
  %48 = tail call ptr @kmemdup(ptr noundef nonnull %38, i32 noundef %47, i32 noundef 3264) #16
  %49 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  store ptr %48, ptr %37, align 4
  %52 = load ptr, ptr %41, align 8
  %53 = load i32, ptr %46, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %38, ptr align 1 %52, i32 %53, i1 false) #16
  %54 = load ptr, ptr %41, align 8
  tail call void @kfree(ptr noundef %54) #16
  br label %57

55:                                               ; preds = %45, %44
  %56 = phi i32 [ -22, %44 ], [ -12, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef %56) #18
  br label %77

57:                                               ; preds = %51, %36
  %58 = load ptr, ptr %16, align 8
  %59 = getelementptr inbounds %struct.rproc_ops, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %0) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.71, i32 noundef %61) #18
  br label %77

64:                                               ; preds = %57
  %65 = load ptr, ptr %23, align 4
  %66 = icmp eq ptr %65, %22
  br i1 %66, label %80, label %67

67:                                               ; preds = %73, %64
  %68 = phi ptr [ %75, %73 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct.rproc_subdev, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void %70(ptr noundef %68) #16
  br label %73

73:                                               ; preds = %72, %67
  %74 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %22
  br i1 %76, label %80, label %67

77:                                               ; preds = %63, %55, %14
  %78 = phi i32 [ -22, %14 ], [ %61, %63 ], [ %56, %55 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !13
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !24
  br label %100

80:                                               ; preds = %73, %64
  %81 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  store i32 6, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.72, ptr noundef %83) #18
  tail call void @rproc_resource_cleanup(ptr noundef %0)
  %84 = load ptr, ptr %16, align 8
  %85 = getelementptr inbounds %struct.rproc_ops, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  %89 = tail call i32 %86(ptr noundef %0) #16
  br label %90

90:                                               ; preds = %88, %80
  %91 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %96 = load ptr, ptr %95, align 4
  tail call void @iommu_detach_device(ptr noundef nonnull %92, ptr noundef %96) #16
  tail call void @iommu_domain_free(ptr noundef nonnull %92) #16
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %99 = load ptr, ptr %98, align 4
  tail call void @kfree(ptr noundef %99) #16
  store ptr null, ptr %98, align 4
  store ptr null, ptr %37, align 4
  br label %100

100:                                              ; preds = %97, %77, %9
  %101 = phi i32 [ %78, %77 ], [ 0, %97 ], [ 0, %9 ]
  tail call void @mutex_unlock(ptr noundef %2) #16
  br label %102

102:                                              ; preds = %100, %5
  %103 = phi i32 [ %3, %5 ], [ %101, %100 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rproc_get_by_phandle(i32 noundef %0) #0 {
  %2 = tail call ptr @of_find_node_by_phandle(i32 noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %5 = load volatile ptr, ptr @rproc_list, align 4
  %6 = icmp eq ptr %5, @rproc_list
  br i1 %6, label %29, label %7

7:                                                ; preds = %26, %4
  %8 = phi ptr [ %27, %26 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.rproc, ptr %8, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rproc, ptr %8, i32 0, i32 6
  %18 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.device_driver, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i1 @try_module_get(ptr noundef %21) #16
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.13) #18
  br label %29

24:                                               ; preds = %16
  %25 = tail call ptr @get_device(ptr noundef %17) #16
  br label %29

26:                                               ; preds = %12, %7
  %27 = load volatile ptr, ptr %8, align 4
  %28 = icmp eq ptr %27, @rproc_list
  br i1 %28, label %29, label %7

29:                                               ; preds = %26, %24, %23, %4
  %30 = phi ptr [ %8, %24 ], [ null, %23 ], [ null, %4 ], [ null, %26 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  tail call void @of_node_put(ptr noundef nonnull %2) #16
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi ptr [ %30, %29 ], [ null, %1 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_set_firmware(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 10
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %14, i32 noundef %10) #18
  br label %32

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14) #18
  br label %30

20:                                               ; preds = %15
  %21 = tail call i32 @strcspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.15)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16) #18
  br label %30

24:                                               ; preds = %20
  %25 = tail call ptr @kstrndup(ptr noundef nonnull %1, i32 noundef %21, i32 noundef 3264) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  tail call void @kfree_const(ptr noundef %29) #16
  store ptr %25, ptr %28, align 8
  br label %30

30:                                               ; preds = %27, %24, %23, %19
  %31 = phi i32 [ -16, %19 ], [ 0, %27 ], [ -22, %23 ], [ -12, %24 ]
  tail call void @mutex_unlock(ptr noundef %9) #16
  br label %32

32:                                               ; preds = %30, %12, %2
  %33 = phi i32 [ -22, %12 ], [ %31, %30 ], [ -22, %2 ]
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %49 [
    i32 0, label %5
    i32 6, label %11
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rproc_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rproc_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %49

21:                                               ; preds = %17, %5
  %22 = tail call i32 @device_add(ptr noundef %2) #16
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @put_device(ptr noundef %2) #16
  br label %49

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef %27) #18
  tail call void @rproc_create_debug_dir(ptr noundef %0) #16
  %28 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 30
  %29 = load i8, ptr %28, align 1, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %3, align 4
  %33 = icmp eq i32 %32, 6
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %36, ptr noundef %2, i32 noundef 3264, ptr noundef %0, ptr noundef nonnull @rproc_auto_boot_callback) #16
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef %37) #18
  br label %47

40:                                               ; preds = %31
  %41 = tail call i32 @rproc_boot(ptr noundef %0) #16
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40, %34, %25
  tail call void @mutex_lock(ptr noundef nonnull @rproc_list_mutex) #16
  %44 = load ptr, ptr @rproc_list, align 4
  store ptr %44, ptr %0, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @rproc_list, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  store volatile ptr %0, ptr @rproc_list, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %0, ptr %46, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rproc_list_mutex) #16
  br label %49

47:                                               ; preds = %40, %39
  %48 = phi i32 [ %37, %39 ], [ %41, %40 ]
  tail call void @rproc_delete_debug_dir(ptr noundef %0) #16
  tail call void @device_del(ptr noundef %2) #16
  br label %49

49:                                               ; preds = %47, %43, %24, %17, %11, %5, %1
  %50 = phi i32 [ 0, %43 ], [ %22, %24 ], [ %48, %47 ], [ -22, %5 ], [ -22, %11 ], [ -22, %17 ], [ -22, %1 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_create_debug_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_delete_debug_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_rproc_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @rproc_add(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_rproc_remove, ptr noundef %1) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @rproc_del(ptr noundef %1) #16
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi i32 [ %3, %2 ], [ 0, %5 ], [ %6, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_rproc_remove(ptr noundef %0) #0 {
  %2 = tail call i32 @rproc_del(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rproc_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %95

11:                                               ; preds = %5
  %12 = add i32 %4, 744
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %95, label %15

15:                                               ; preds = %11
  %16 = getelementptr %struct.rproc, ptr %13, i32 1
  %17 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 4
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 30
  store i8 1, ptr %18, align 1
  %19 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 33
  store i8 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 34
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 6
  tail call void @device_initialize(ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 6, i32 1
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 6, i32 4
  store ptr @rproc_type, ptr %23, align 16
  %24 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 6, i32 31
  store ptr @rproc_class, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 6, i32 8
  store ptr %13, ptr %25, align 32
  %26 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 19
  store i32 0, ptr %26, align 16
  %27 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 19, i32 0, i32 1
  store i32 33554436, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 19, i32 0, i32 2
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 19, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 19, i32 2
  store i32 0, ptr %30, align 32
  %31 = tail call ptr @kstrdup_const(ptr noundef nonnull %1, i32 noundef 3264) #16
  %32 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %94, label %34

34:                                               ; preds = %15
  %35 = icmp eq ptr %3, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call ptr @kstrdup_const(ptr noundef nonnull %3, i32 noundef 3264) #16
  br label %40

38:                                               ; preds = %34
  %39 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.76, ptr noundef nonnull %1) #16
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi ptr [ %37, %36 ], [ %39, %38 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %94, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 3
  store ptr %41, ptr %44, align 16
  %45 = tail call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef 68, i32 noundef 3264) #16
  %46 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 5
  store ptr %45, ptr %46, align 8
  %47 = icmp eq ptr %45, null
  br i1 %47, label %94, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rproc_ops, ptr %45, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  store ptr @rproc_coredump, ptr %49, align 4
  %53 = load ptr, ptr %46, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %45, %48 ]
  %56 = getelementptr inbounds %struct.rproc_ops, ptr %55, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  store ptr @rproc_elf_load_segments, ptr %56, align 4
  %60 = load ptr, ptr %46, align 8
  %61 = getelementptr inbounds %struct.rproc_ops, ptr %60, i32 0, i32 8
  store ptr @rproc_elf_load_rsc_table, ptr %61, align 4
  %62 = load ptr, ptr %46, align 8
  %63 = getelementptr inbounds %struct.rproc_ops, ptr %62, i32 0, i32 10
  store ptr @rproc_elf_find_loaded_rsc_table, ptr %63, align 4
  %64 = load ptr, ptr %46, align 8
  %65 = getelementptr inbounds %struct.rproc_ops, ptr %64, i32 0, i32 13
  store ptr @rproc_elf_sanity_check, ptr %65, align 4
  %66 = load ptr, ptr %46, align 8
  %67 = getelementptr inbounds %struct.rproc_ops, ptr %66, i32 0, i32 14
  store ptr @rproc_elf_get_boot_addr, ptr %67, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rproc_dev_index, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #16
  %70 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 20
  store i32 %69, ptr %70, align 4
  %71 = icmp slt i32 %69, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %69) #18
  br label %94

73:                                               ; preds = %68
  %74 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %21, ptr noundef nonnull @.str.19, i32 noundef %69) #16
  %75 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 7
  store volatile i32 0, ptr %75, align 8
  %76 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %76, ptr noundef nonnull @.str.20, ptr noundef nonnull @rproc_alloc.__key) #16
  %77 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 14
  store volatile ptr %77, ptr %77, align 8
  %78 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 14, i32 1
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 15
  store volatile ptr %79, ptr %79, align 16
  %80 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 15, i32 1
  store ptr %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 12
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 12, i32 1
  store ptr %81, ptr %82, align 32
  %83 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 17
  store volatile ptr %83, ptr %83, align 64
  %84 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 17, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 18
  store volatile ptr %85, ptr %85, align 8
  %86 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 18, i32 1
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 31
  store volatile ptr %87, ptr %87, align 8
  %88 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 31, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 21
  store i32 -32, ptr %89, align 8
  %90 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 21, i32 1
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 21, i32 1, i32 1
  store ptr %90, ptr %91, align 16
  %92 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 21, i32 2
  store ptr @rproc_crash_handler_work, ptr %92, align 4
  %93 = getelementptr inbounds %struct.rproc, ptr %13, i32 0, i32 8
  store i32 0, ptr %93, align 4
  br label %95

94:                                               ; preds = %72, %43, %40, %15
  tail call void @put_device(ptr noundef %21) #16
  br label %95

95:                                               ; preds = %94, %73, %11, %5
  %96 = phi ptr [ null, %94 ], [ %13, %73 ], [ null, %5 ], [ null, %11 ]
  ret ptr %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_crash_handler_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -616
  %3 = getelementptr i8, ptr %0, i32 -100
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = getelementptr i8, ptr %0, i32 -108
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %7 [
    i32 3, label %6
    i32 0, label %6
  ]

6:                                                ; preds = %1, %1
  tail call void @mutex_unlock(ptr noundef %3) #16
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -584
  store i32 3, ptr %4, align 4
  %9 = getelementptr i8, ptr %0, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = getelementptr i8, ptr %0, i32 -604
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.77, i32 noundef %11, ptr noundef %13) #18
  tail call void @mutex_unlock(ptr noundef %3) #16
  %14 = getelementptr i8, ptr %0, i32 20
  %15 = load i8, ptr %14, align 4, !range !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = tail call i32 @rproc_trigger_recovery(ptr noundef %2)
  br label %19

19:                                               ; preds = %17, %7
  %20 = getelementptr i8, ptr %0, i32 -548
  %21 = load ptr, ptr %20, align 4
  tail call void @pm_relax(ptr noundef %21) #16
  br label %22

22:                                               ; preds = %19, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void @put_device(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @module_put(ptr noundef %8) #16
  tail call void @put_device(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rproc_del(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void @rproc_shutdown(ptr noundef nonnull %0)
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 8
  store i32 4, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #16
  tail call void @rproc_delete_debug_dir(ptr noundef nonnull %0) #16
  tail call void @mutex_lock(ptr noundef nonnull @rproc_list_mutex) #16
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rproc_list_mutex) #16
  tail call void @synchronize_rcu() #16
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  tail call void @device_del(ptr noundef %10) #16
  br label %11

11:                                               ; preds = %3, %1
  %12 = phi i32 [ 0, %3 ], [ -22, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_rproc_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_rproc_free, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.21) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @rproc_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store ptr %9, ptr %6, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %6) #16
  br label %13

12:                                               ; preds = %8
  tail call void @devres_free(ptr noundef nonnull %6) #16
  br label %13

13:                                               ; preds = %12, %11, %5
  %14 = phi ptr [ null, %5 ], [ null, %12 ], [ %9, %11 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_rproc_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 6
  tail call void @put_device(ptr noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_add_subdev(ptr noundef %0, ptr noundef %1) #9 {
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %1, ptr %4, align 4
  store ptr %3, ptr %1, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  store volatile ptr %1, ptr %5, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rproc_get_by_child(ptr nocapture noundef readonly %0) #11 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, @rproc_type
  br i1 %10, label %11, label %2

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi ptr [ %13, %11 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rproc_report_crash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rproc_report_crash) #18
  br label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @pm_stay_awake(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult i32 %1, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = getelementptr [3 x ptr], ptr @rproc_crash_names, i32 0, i32 %1
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ @.str.78, %6 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef %11, ptr noundef %17) #18
  %18 = load ptr, ptr @system_freezable_wq, align 4
  %19 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 21
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %19) #16
  br label %21

21:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rproc_exit_panic() #12 section ".exit.text" {
  %1 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @rproc_panic_nb) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @remoteproc_init() #12 section ".init.text" {
  %1 = tail call i32 @rproc_init_sysfs() #16
  tail call void @rproc_init_debugfs() #16
  store ptr @rproc_panic_handler, ptr @rproc_panic_nb, align 4
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @rproc_panic_nb) #16
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @remoteproc_exit() #12 section ".exit.text" {
  tail call void @ida_destroy(ptr noundef nonnull @rproc_dev_index) #16
  %1 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @rproc_panic_nb) #16
  tail call void @rproc_exit_debugfs() #16
  tail call void @rproc_exit_sysfs() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_exit_debugfs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_exit_sysfs() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rproc_enable_iommu(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 29
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @iommu_domain_alloc(ptr noundef %9) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43) #18
  br label %19

13:                                               ; preds = %7
  tail call void @iommu_set_fault_handler(ptr noundef nonnull %10, ptr noundef nonnull @rproc_iommu_fault, ptr noundef %0) #16
  %14 = tail call i32 @iommu_attach_device(ptr noundef nonnull %10, ptr noundef %3) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %14) #18
  tail call void @iommu_domain_free(ptr noundef nonnull %10) #16
  br label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  store ptr %10, ptr %18, align 8
  br label %19

19:                                               ; preds = %17, %16, %12, %1
  %20 = phi i32 [ %14, %16 ], [ 0, %17 ], [ -12, %12 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rproc_handle_resources(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.resource_table, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 28
  %12 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 5
  br label %13

13:                                               ; preds = %57, %10
  %14 = phi ptr [ %4, %10 ], [ %60, %57 ]
  %15 = phi i32 [ 0, %10 ], [ %59, %57 ]
  %16 = phi i32 [ 0, %10 ], [ %58, %57 ]
  %17 = getelementptr %struct.resource_table, ptr %14, i32 0, i32 3, i32 %15
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr i8, ptr %14, i32 %18
  %20 = load i32, ptr %11, align 8
  %21 = sub i32 %20, %18
  %22 = add i32 %21, -4
  %23 = getelementptr i8, ptr %19, i32 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %13
  %26 = load i32, ptr %19, align 1
  %27 = add i32 %26, -128
  %28 = icmp ult i32 %27, 385
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr inbounds %struct.rproc_ops, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = add i32 %18, 4
  %36 = tail call i32 %32(ptr noundef %0, i32 noundef %26, ptr noundef %23, i32 noundef %35, i32 noundef %22) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  %39 = icmp slt i32 %36, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %19, align 1
  br label %42

42:                                               ; preds = %40, %29
  %43 = phi i32 [ %41, %40 ], [ %26, %29 ]
  %44 = phi i32 [ %36, %40 ], [ 1, %29 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef %43) #18
  br label %57

45:                                               ; preds = %25
  %46 = icmp ugt i32 %26, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %26) #18
  br label %57

48:                                               ; preds = %45
  %49 = getelementptr ptr, ptr @rproc_loading_handlers, i32 %26
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = add i32 %18, 4
  %54 = tail call i32 %50(ptr noundef %0, ptr noundef %23, i32 noundef %53, i32 noundef %22) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %64

56:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.46) #18
  br label %64

57:                                               ; preds = %52, %48, %47, %42, %34
  %58 = phi i32 [ %16, %48 ], [ 0, %34 ], [ %16, %47 ], [ %44, %42 ], [ 0, %52 ]
  %59 = add nuw i32 %15, 1
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.resource_table, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 1
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %13, label %64

64:                                               ; preds = %57, %56, %52, %38, %6, %1
  %65 = phi i32 [ -22, %56 ], [ 0, %1 ], [ 0, %6 ], [ %58, %57 ], [ %36, %38 ], [ %54, %52 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rproc_alloc_registered_carveouts(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 25
  br label %8

8:                                                ; preds = %42, %6
  %9 = phi ptr [ %4, %6 ], [ %11, %42 ]
  %10 = getelementptr i8, ptr %9, i32 -56
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %9, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %10) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr i8, ptr %9, i32 -32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef %19, i32 noundef %16) #18
  br label %44

20:                                               ; preds = %15, %8
  %21 = getelementptr i8, ptr %9, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 %22
  %27 = load ptr, ptr %10, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @rproc_va_to_pa(ptr noundef nonnull %27)
  br label %34

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %9, i32 -48
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  %36 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %26, i32 0, i32 1
  store i32 %35, ptr %36, align 1
  %37 = getelementptr i8, ptr %9, i32 -40
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %26, align 1
  %39 = getelementptr i8, ptr %9, i32 -44
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %26, i32 0, i32 2
  store i32 %40, ptr %41, align 1
  br label %42

42:                                               ; preds = %34, %20
  %43 = icmp eq ptr %11, %3
  br i1 %43, label %44, label %8

44:                                               ; preds = %42, %18, %1
  %45 = phi i32 [ -12, %18 ], [ 0, %1 ], [ 0, %42 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_set_fault_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_iommu_fault(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %2, i32 noundef %3) #18
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rproc_report_crash) #18
  br label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 6
  %11 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 6, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @pm_stay_awake(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef %14, ptr noundef nonnull @.str.79) #18
  %15 = load ptr, ptr @system_freezable_wq, align 4
  %16 = getelementptr inbounds %struct.rproc, ptr %4, i32 0, i32 21
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %16) #16
  br label %18

18:                                               ; preds = %9, %7
  ret i32 -38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_handle_carveout(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %6 = icmp ult i32 %3, 52
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49) #18
  br label %64

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.50) #18
  br label %64

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %1, i32 0, i32 5
  %15 = tail call ptr (ptr, ptr, ...) @rproc_find_carveout_by_name(ptr noundef %0, ptr noundef %14)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rproc_mem_entry, ptr %15, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.51) #18
  br label %64

22:                                               ; preds = %17
  %23 = load i32, ptr %1, align 1
  %24 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds %struct.rproc_mem_entry, ptr %15, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %25
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = icmp eq i32 %23, -1
  br i1 %30, label %43, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rproc_mem_entry, ptr %15, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %64, label %35

35:                                               ; preds = %31
  %36 = sub i32 %23, %33
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = add i32 %36, %25
  %40 = icmp ugt i32 %39, %27
  br i1 %40, label %41, label %43

41:                                               ; preds = %38, %35, %22
  %42 = phi ptr [ @.str.24, %22 ], [ @.str.25, %35 ], [ @.str.24, %38 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %42) #18
  br label %64

43:                                               ; preds = %38, %29
  store i32 %2, ptr %18, align 4
  %44 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 1
  %46 = getelementptr inbounds %struct.rproc_mem_entry, ptr %15, i32 0, i32 9
  store i32 %45, ptr %46, align 4
  br label %64

47:                                               ; preds = %13
  %48 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 1
  %50 = load i32, ptr %1, align 1
  %51 = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr undef, ptr noundef null, i32 noundef 0, i32 noundef %49, i32 noundef %50, ptr noundef nonnull @rproc_alloc_carveout, ptr noundef nonnull @rproc_release_carveout, ptr noundef %14)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #18
  br label %64

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.fw_rsc_carveout, ptr %1, i32 0, i32 3
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds %struct.rproc_mem_entry, ptr %51, i32 0, i32 9
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.rproc_mem_entry, ptr %51, i32 0, i32 8
  store i32 %2, ptr %58, align 4
  %59 = getelementptr inbounds %struct.rproc_mem_entry, ptr %51, i32 0, i32 7
  %60 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14
  %61 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 14, i32 1
  %62 = load ptr, ptr %61, align 4
  store ptr %59, ptr %61, align 4
  store ptr %60, ptr %59, align 4
  %63 = getelementptr inbounds %struct.rproc_mem_entry, ptr %51, i32 0, i32 7, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %59, ptr %62, align 4
  br label %64

64:                                               ; preds = %54, %53, %43, %41, %31, %21, %12, %7
  %65 = phi i32 [ -22, %7 ], [ -22, %12 ], [ -12, %21 ], [ 0, %43 ], [ 0, %54 ], [ -12, %53 ], [ -12, %31 ], [ -12, %41 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_handle_devmem(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = icmp ult i32 %3, 52
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52) #18
  br label %43

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.53) #18
  br label %43

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 84) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8
  %23 = load i32, ptr %1, align 1
  %24 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr inbounds %struct.fw_rsc_devmem, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 1
  %30 = tail call i32 @iommu_map(ptr noundef %22, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.54, i32 noundef %30) #18
  tail call void @kfree(ptr noundef nonnull %19) #16
  br label %43

33:                                               ; preds = %21
  %34 = load i32, ptr %1, align 1
  %35 = getelementptr inbounds %struct.rproc_mem_entry, ptr %19, i32 0, i32 4
  store i32 %34, ptr %35, align 8
  %36 = load i32, ptr %26, align 1
  %37 = getelementptr inbounds %struct.rproc_mem_entry, ptr %19, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rproc_mem_entry, ptr %19, i32 0, i32 7
  %39 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 15
  %40 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 15, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %38, ptr %40, align 4
  store ptr %39, ptr %38, align 8
  %42 = getelementptr inbounds %struct.rproc_mem_entry, ptr %19, i32 0, i32 7, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %38, ptr %41, align 4
  br label %43

43:                                               ; preds = %33, %32, %17, %16, %11, %4
  %44 = phi i32 [ -22, %11 ], [ -22, %16 ], [ %30, %32 ], [ 0, %33 ], [ -22, %4 ], [ -12, %17 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_handle_trace(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [15 x i8], align 1
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %5, i8 0, i32 15, i1 false), !annotation !11
  %7 = icmp ult i32 %3, 44
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.55) #18
  br label %39

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fw_rsc_trace, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.56) #18
  br label %39

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 100) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fw_rsc_trace, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr inbounds %struct.rproc_debug_trace, ptr %16, i32 0, i32 3, i32 3
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %1, align 1
  %23 = getelementptr inbounds %struct.rproc_debug_trace, ptr %16, i32 0, i32 3, i32 4
  store i32 %22, ptr %23, align 8
  store ptr %0, ptr %16, align 8
  %24 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull @.str.57, i32 noundef %25)
  %27 = call ptr @rproc_create_trace_file(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %16) #16
  %28 = getelementptr inbounds %struct.rproc_debug_trace, ptr %16, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  call void @kfree(ptr noundef nonnull %16) #16
  br label %39

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.rproc_debug_trace, ptr %16, i32 0, i32 2
  %33 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 12
  %34 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 12, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %32, ptr %34, align 4
  store ptr %33, ptr %32, align 8
  %36 = getelementptr inbounds %struct.rproc_debug_trace, ptr %16, i32 0, i32 2, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %32, ptr %35, align 4
  %37 = load i32, ptr %24, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %24, align 4
  br label %39

39:                                               ; preds = %31, %30, %14, %13, %8
  %40 = phi i32 [ -22, %8 ], [ -22, %13 ], [ 0, %31 ], [ -22, %30 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %5) #16
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_handle_vdev(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !11
  %7 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %1, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 20
  %11 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 1
  %13 = add i32 %12, 24
  %14 = add i32 %13, %10
  %15 = icmp ugt i32 %14, %3
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.58) #18
  br label %203

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %1, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr %struct.fw_rsc_vdev, ptr %1, i32 0, i32 7, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.59) #18
  br label %203

26:                                               ; preds = %21
  %27 = icmp ugt i8 %8, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.60, i32 noundef %9) #18
  br label %203

29:                                               ; preds = %26
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 584) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %203, label %33

33:                                               ; preds = %29
  store volatile i32 1, ptr %31, align 8
  %34 = load i32, ptr %1, align 1
  %35 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 3
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 5
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 32
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 8
  store i32 %38, ptr %40, align 4
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @.str.61, i32 noundef %38)
  %42 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2
  %43 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 1
  store ptr %6, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 33
  store ptr @rproc_rvdev_release, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load ptr, ptr %6, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi ptr [ %49, %48 ], [ %46, %33 ]
  %52 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %42, ptr noundef nonnull @.str.62, ptr noundef %51, ptr noundef nonnull %5) #16
  %53 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 8
  store ptr %31, ptr %53, align 8
  %54 = call i32 @device_register(ptr noundef %42) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  call void @put_device(ptr noundef %42) #16
  br label %203

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 6, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 19
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %86, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.bus_dma_region, ptr %61, i32 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %67, %63
  %68 = phi i32 [ %71, %67 ], [ 1, %63 ]
  %69 = phi ptr [ %70, %67 ], [ %61, %63 ]
  %70 = getelementptr %struct.bus_dma_region, ptr %69, i32 1
  %71 = add i32 %68, 1
  %72 = getelementptr %struct.bus_dma_region, ptr %69, i32 1, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %67

75:                                               ; preds = %67, %63
  %76 = phi i32 [ 1, %63 ], [ %71, %67 ]
  %77 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %76, i32 24) #16
  %78 = extractvalue { i32, i1 } %77, 1
  %79 = extractvalue { i32, i1 } %77, 0
  %80 = select i1 %78, i32 -1, i32 %79
  %81 = call ptr @kmemdup(ptr noundef nonnull %61, i32 noundef %80, i32 noundef 3264) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %201, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 19
  store ptr %81, ptr %84, align 8
  %85 = load ptr, ptr %58, align 4
  br label %86

86:                                               ; preds = %83, %57
  %87 = phi ptr [ %85, %83 ], [ %59, %57 ]
  %88 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 15
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  %91 = select i1 %90, ptr @arm_dma_ops, ptr %89
  %92 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 15
  store ptr %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 16
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i64, ptr %94, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %86
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i64 [ 4294967295, %99 ], [ %97, %96 ]
  %102 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 17
  %103 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 2, i32 16
  store ptr %102, ptr %103, align 4
  %104 = call i32 @dma_set_mask(ptr noundef %42, i64 noundef %101) #16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @dma_set_coherent_mask(ptr noundef %42, i64 noundef %101) #16
  br label %120

108:                                              ; preds = %100
  %109 = load ptr, ptr %58, align 4
  %110 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 16
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i64, ptr %111, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi i64 [ 4294967295, %116 ], [ %114, %113 ]
  %119 = inttoptr i32 %104 to ptr
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.63, i64 noundef %118, ptr noundef nonnull %119) #18
  br label %120

120:                                              ; preds = %117, %106
  %121 = load i8, ptr %7, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i8 %121, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 7
  store i32 %2, ptr %125, align 8
  br label %158

126:                                              ; preds = %139, %120
  %127 = phi i32 [ %143, %139 ], [ 0, %120 ]
  %128 = load ptr, ptr %36, align 4
  %129 = getelementptr %struct.fw_rsc_vdev, ptr %1, i32 0, i32 8, i32 %127, i32 2
  %130 = load i32, ptr %129, align 1
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr %struct.fw_rsc_vdev, ptr %1, i32 0, i32 8, i32 %127, i32 1
  %133 = load i32, ptr %132, align 1
  br i1 %131, label %136, label %134

134:                                              ; preds = %126
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %134, %126
  %137 = phi i32 [ %133, %126 ], [ 0, %134 ]
  %138 = getelementptr inbounds %struct.rproc, ptr %128, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.64, i32 noundef %130, i32 noundef %137) #18
  br label %201

139:                                              ; preds = %134
  %140 = getelementptr %struct.rproc_vdev, ptr %31, i32 0, i32 6, i32 %127, i32 1
  store i32 %130, ptr %140, align 4
  %141 = getelementptr %struct.rproc_vdev, ptr %31, i32 0, i32 6, i32 %127, i32 3
  store i32 %133, ptr %141, align 4
  %142 = getelementptr %struct.rproc_vdev, ptr %31, i32 0, i32 6, i32 %127, i32 5
  store ptr %31, ptr %142, align 4
  %143 = add nuw nsw i32 %127, 1
  %144 = icmp eq i32 %143, %122
  br i1 %144, label %145, label %126

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 7
  store i32 %2, ptr %146, align 8
  br i1 %123, label %158, label %147

147:                                              ; preds = %153, %145
  %148 = phi i32 [ %154, %153 ], [ 0, %145 ]
  %149 = call i32 @rproc_alloc_vring(ptr noundef nonnull %31, i32 noundef %148)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = icmp eq i32 %148, 0
  br i1 %152, label %201, label %171

153:                                              ; preds = %147
  %154 = add nuw nsw i32 %148, 1
  %155 = load i8, ptr %7, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ult i32 %154, %156
  br i1 %157, label %147, label %158

158:                                              ; preds = %153, %145, %124
  %159 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 4
  %160 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 17
  %161 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 17, i32 1
  %162 = load ptr, ptr %161, align 4
  store ptr %159, ptr %161, align 4
  store ptr %160, ptr %159, align 4
  %163 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 4, i32 1
  store ptr %162, ptr %163, align 8
  store volatile ptr %159, ptr %162, align 4
  %164 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 1
  %165 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 1, i32 2
  store ptr @rproc_vdev_do_start, ptr %165, align 8
  %166 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 1, i32 3
  store ptr @rproc_vdev_do_stop, ptr %166, align 4
  %167 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18
  %168 = getelementptr inbounds %struct.rproc, ptr %0, i32 0, i32 18, i32 1
  %169 = load ptr, ptr %168, align 4
  store ptr %164, ptr %168, align 4
  store ptr %167, ptr %164, align 4
  %170 = getelementptr inbounds %struct.rproc_vdev, ptr %31, i32 0, i32 1, i32 0, i32 1
  store ptr %169, ptr %170, align 8
  store volatile ptr %164, ptr %169, align 4
  br label %203

171:                                              ; preds = %199, %151
  %172 = phi i32 [ %173, %199 ], [ %148, %151 ]
  %173 = add nsw i32 %172, -1
  %174 = getelementptr %struct.rproc_vdev, ptr %31, i32 0, i32 6, i32 %173, i32 5
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.rproc_vdev, ptr %175, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.rproc, ptr %177, i32 0, i32 19
  %179 = getelementptr %struct.rproc_vdev, ptr %31, i32 0, i32 6, i32 %173, i32 4
  %180 = load i32, ptr %179, align 4
  %181 = call ptr @idr_remove(ptr noundef %178, i32 noundef %180) #16
  %182 = getelementptr inbounds %struct.rproc, ptr %177, i32 0, i32 25
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %199, label %185

185:                                              ; preds = %171
  %186 = getelementptr %struct.rproc_vdev, ptr %31, i32 0, i32 6, i32 %173
  %187 = ptrtoint ptr %186 to i32
  %188 = getelementptr inbounds %struct.rproc_vdev, ptr %175, i32 0, i32 6
  %189 = ptrtoint ptr %188 to i32
  %190 = sub i32 %187, %189
  %191 = sdiv exact i32 %190, 28
  %192 = load ptr, ptr %174, align 4
  %193 = getelementptr inbounds %struct.rproc_vdev, ptr %192, i32 0, i32 7
  %194 = load i32, ptr %193, align 8
  %195 = getelementptr i8, ptr %183, i32 %194
  %196 = getelementptr inbounds %struct.fw_rsc_vdev, ptr %195, i32 0, i32 8
  %197 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %196, i32 0, i32 %191
  store i32 0, ptr %197, align 1
  %198 = getelementptr [0 x %struct.fw_rsc_vdev_vring], ptr %196, i32 0, i32 %191, i32 3
  store i32 -1, ptr %198, align 1
  br label %199

199:                                              ; preds = %185, %171
  %200 = icmp sgt i32 %172, 1
  br i1 %200, label %171, label %201

201:                                              ; preds = %199, %151, %136, %75
  %202 = phi i32 [ -22, %136 ], [ -12, %75 ], [ %149, %151 ], [ %149, %199 ]
  call void @device_unregister(ptr noundef %42) #16
  br label %203

203:                                              ; preds = %201, %158, %56, %29, %28, %25, %16
  %204 = phi i32 [ -22, %16 ], [ -22, %25 ], [ -22, %28 ], [ %54, %56 ], [ %202, %201 ], [ 0, %158 ], [ -12, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %204
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_create_trace_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_rvdev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  tail call void @of_reserved_mem_device_release(ptr noundef %0) #16
  tail call void @kfree(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_vdev_do_start(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 500
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @rproc_add_virtio_dev(ptr noundef %2, i32 noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_vdev_do_stop(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 28
  %4 = tail call i32 @device_for_each_child(ptr noundef %3, ptr noundef null, ptr noundef nonnull @rproc_remove_virtio_dev) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.65, i32 noundef %4) #18
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add_virtio_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_remove_virtio_dev(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_auto_boot_callback(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @rproc_boot(ptr noundef %1)
  tail call void @release_firmware(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rproc_type_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %3) #18
  %4 = getelementptr i8, ptr %0, i32 560
  tail call void @idr_destroy(ptr noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 580
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @ida_free(ptr noundef nonnull @rproc_dev_index, i32 noundef %6) #16
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr i8, ptr %0, i32 -32
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = load ptr, ptr %11, align 8
  tail call void @kfree_const(ptr noundef %12) #16
  %13 = load ptr, ptr %2, align 4
  tail call void @kfree_const(ptr noundef %13) #16
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load ptr, ptr %14, align 8
  tail call void @kfree(ptr noundef %15) #16
  tail call void @kfree(ptr noundef %10) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_coredump(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_init_sysfs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_init_debugfs() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rproc_panic_handler(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %4 = load volatile ptr, ptr @rproc_list, align 4
  %5 = icmp eq ptr %4, @rproc_list
  br i1 %5, label %24, label %6

6:                                                ; preds = %20, %3
  %7 = phi ptr [ %22, %20 ], [ %4, %3 ]
  %8 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rproc_ops, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.rproc, ptr %7, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %20 [
    i32 2, label %17
    i32 5, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = tail call i32 %12(ptr noundef %7) #16
  %19 = tail call i32 @llvm.umax.i32(i32 %8, i32 %18)
  br label %20

20:                                               ; preds = %17, %14, %6
  %21 = phi i32 [ %19, %17 ], [ %8, %6 ], [ %8, %14 ]
  %22 = load volatile ptr, ptr %7, align 4
  %23 = icmp eq ptr %22, @rproc_list
  br i1 %23, label %24, label %6

24:                                               ; preds = %20, %3
  %25 = phi i32 [ 0, %3 ], [ %21, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %27, %24
  %28 = phi i32 [ %29, %27 ], [ %25, %24 ]
  %29 = add i32 %28, -1
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #16
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %27

32:                                               ; preds = %27, %24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

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
!9 = !{i64 2148798735, i64 2148798758, i64 2148798790, i64 2148798822, i64 2148798860, i64 2148798890}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
!12 = !{i64 2148066210}
!13 = !{i64 462371, i64 2147952342, i64 2147952368, i64 2147952415, i64 2147952437, i64 2147952465, i64 2147952485}
!14 = !{i64 2147968369, i64 2147968401, i64 2147968430, i64 2147968464, i64 2147968495, i64 2147968518}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2149314112}
!17 = !{i64 2148062376}
!18 = !{i64 2147965238, i64 2147965270, i64 2147965299, i64 2147965333, i64 2147965364, i64 2147965387}
!19 = !{i64 2148062579}
!20 = !{i64 2147966911, i64 2147966937, i64 2147966966, i64 2147967000, i64 2147967031, i64 2147967054}
!21 = !{i64 2148065209}
!22 = !{i64 2147967595, i64 2147967627, i64 2147967656, i64 2147967690, i64 2147967721, i64 2147967744}
!23 = !{i64 2148065412}
!24 = !{i64 2147964554, i64 2147964580, i64 2147964609, i64 2147964643, i64 2147964674, i64 2147964697}
!25 = !{i64 2149013998}
!26 = !{i64 2149014215}
!27 = !{i64 2149039239}
