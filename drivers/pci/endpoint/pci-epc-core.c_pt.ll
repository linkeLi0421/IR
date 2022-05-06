; ModuleID = '/llk/IR/drivers/pci/endpoint/pci-epc-core.c_pt.bc'
source_filename = "../drivers/pci/endpoint/pci-epc-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_put\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_get\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_get_first_free_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_get_first_free_bar\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_get_first_free_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_get_next_free_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_get_next_free_bar\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_get_next_free_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_get_features:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_get_features\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_get_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_stop\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_start\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_raise_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_raise_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_raise_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_map_msi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_map_msi_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_map_msi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_get_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_get_msi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_get_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_set_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_set_msi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_set_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_get_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_get_msix\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_get_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_set_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_set_msix\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_set_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_unmap_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_unmap_addr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_unmap_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_map_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_map_addr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_map_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_clear_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_clear_bar\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_clear_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_set_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_set_bar\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_set_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_write_header:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_write_header\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_write_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_add_epf:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_add_epf\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_add_epf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_remove_epf:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_remove_epf\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_remove_epf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_linkup:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_linkup\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_linkup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_init_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_init_notify\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_init_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epc_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pci_epc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pci_epc_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pci_epc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_epc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_epc_create\22\09\09\09\09\09"
module asm "__kstrtabns___pci_epc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_pci_epc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_pci_epc_create\22\09\09\09\09\09"
module asm "__kstrtabns___devm_pci_epc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.pci_epc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__kstrtab_pci_epc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_put to i32), ptr @__kstrtab_pci_epc_put, ptr @__kstrtabns_pci_epc_put }, section "___ksymtab_gpl+pci_epc_put", align 4
@pci_epc_class = internal unnamed_addr global ptr null, align 4
@__kstrtab_pci_epc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_get to i32), ptr @__kstrtab_pci_epc_get, ptr @__kstrtabns_pci_epc_get }, section "___ksymtab_gpl+pci_epc_get", align 4
@__kstrtab_pci_epc_get_first_free_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_get_first_free_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_get_first_free_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_get_first_free_bar to i32), ptr @__kstrtab_pci_epc_get_first_free_bar, ptr @__kstrtabns_pci_epc_get_first_free_bar }, section "___ksymtab_gpl+pci_epc_get_first_free_bar", align 4
@__kstrtab_pci_epc_get_next_free_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_get_next_free_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_get_next_free_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_get_next_free_bar to i32), ptr @__kstrtab_pci_epc_get_next_free_bar, ptr @__kstrtabns_pci_epc_get_next_free_bar }, section "___ksymtab_gpl+pci_epc_get_next_free_bar", align 4
@__kstrtab_pci_epc_get_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_get_features = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_get_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_get_features to i32), ptr @__kstrtab_pci_epc_get_features, ptr @__kstrtabns_pci_epc_get_features }, section "___ksymtab_gpl+pci_epc_get_features", align 4
@__kstrtab_pci_epc_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_stop to i32), ptr @__kstrtab_pci_epc_stop, ptr @__kstrtabns_pci_epc_stop }, section "___ksymtab_gpl+pci_epc_stop", align 4
@__kstrtab_pci_epc_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_start = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_start to i32), ptr @__kstrtab_pci_epc_start, ptr @__kstrtabns_pci_epc_start }, section "___ksymtab_gpl+pci_epc_start", align 4
@__kstrtab_pci_epc_raise_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_raise_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_raise_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_raise_irq to i32), ptr @__kstrtab_pci_epc_raise_irq, ptr @__kstrtabns_pci_epc_raise_irq }, section "___ksymtab_gpl+pci_epc_raise_irq", align 4
@__kstrtab_pci_epc_map_msi_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_map_msi_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_map_msi_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_map_msi_irq to i32), ptr @__kstrtab_pci_epc_map_msi_irq, ptr @__kstrtabns_pci_epc_map_msi_irq }, section "___ksymtab_gpl+pci_epc_map_msi_irq", align 4
@__kstrtab_pci_epc_get_msi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_get_msi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_get_msi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_get_msi to i32), ptr @__kstrtab_pci_epc_get_msi, ptr @__kstrtabns_pci_epc_get_msi }, section "___ksymtab_gpl+pci_epc_get_msi", align 4
@__kstrtab_pci_epc_set_msi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_set_msi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_set_msi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_set_msi to i32), ptr @__kstrtab_pci_epc_set_msi, ptr @__kstrtabns_pci_epc_set_msi }, section "___ksymtab_gpl+pci_epc_set_msi", align 4
@__kstrtab_pci_epc_get_msix = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_get_msix = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_get_msix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_get_msix to i32), ptr @__kstrtab_pci_epc_get_msix, ptr @__kstrtabns_pci_epc_get_msix }, section "___ksymtab_gpl+pci_epc_get_msix", align 4
@__kstrtab_pci_epc_set_msix = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_set_msix = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_set_msix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_set_msix to i32), ptr @__kstrtab_pci_epc_set_msix, ptr @__kstrtabns_pci_epc_set_msix }, section "___ksymtab_gpl+pci_epc_set_msix", align 4
@__kstrtab_pci_epc_unmap_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_unmap_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_unmap_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_unmap_addr to i32), ptr @__kstrtab_pci_epc_unmap_addr, ptr @__kstrtabns_pci_epc_unmap_addr }, section "___ksymtab_gpl+pci_epc_unmap_addr", align 4
@__kstrtab_pci_epc_map_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_map_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_map_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_map_addr to i32), ptr @__kstrtab_pci_epc_map_addr, ptr @__kstrtabns_pci_epc_map_addr }, section "___ksymtab_gpl+pci_epc_map_addr", align 4
@__kstrtab_pci_epc_clear_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_clear_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_clear_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_clear_bar to i32), ptr @__kstrtab_pci_epc_clear_bar, ptr @__kstrtabns_pci_epc_clear_bar }, section "___ksymtab_gpl+pci_epc_clear_bar", align 4
@__kstrtab_pci_epc_set_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_set_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_set_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_set_bar to i32), ptr @__kstrtab_pci_epc_set_bar, ptr @__kstrtabns_pci_epc_set_bar }, section "___ksymtab_gpl+pci_epc_set_bar", align 4
@__kstrtab_pci_epc_write_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_write_header = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_write_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_write_header to i32), ptr @__kstrtab_pci_epc_write_header, ptr @__kstrtabns_pci_epc_write_header }, section "___ksymtab_gpl+pci_epc_write_header", align 4
@.str = private unnamed_addr constant [41 x i8] c"Exceeding max supported Function Number\0A\00", align 1
@__kstrtab_pci_epc_add_epf = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_add_epf = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_add_epf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_add_epf to i32), ptr @__kstrtab_pci_epc_add_epf, ptr @__kstrtabns_pci_epc_add_epf }, section "___ksymtab_gpl+pci_epc_add_epf", align 4
@__kstrtab_pci_epc_remove_epf = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_remove_epf = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_remove_epf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_remove_epf to i32), ptr @__kstrtab_pci_epc_remove_epf, ptr @__kstrtabns_pci_epc_remove_epf }, section "___ksymtab_gpl+pci_epc_remove_epf", align 4
@__kstrtab_pci_epc_linkup = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_linkup = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_linkup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_linkup to i32), ptr @__kstrtab_pci_epc_linkup, ptr @__kstrtabns_pci_epc_linkup }, section "___ksymtab_gpl+pci_epc_linkup", align 4
@__kstrtab_pci_epc_init_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_init_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_init_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_init_notify to i32), ptr @__kstrtab_pci_epc_init_notify, ptr @__kstrtabns_pci_epc_init_notify }, section "___ksymtab_gpl+pci_epc_init_notify", align 4
@__kstrtab_pci_epc_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epc_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epc_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epc_destroy to i32), ptr @__kstrtab_pci_epc_destroy, ptr @__kstrtabns_pci_epc_destroy }, section "___ksymtab_gpl+pci_epc_destroy", align 4
@devm_pci_epc_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/pci/endpoint/pci-epc-core.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s %s: couldn't find PCI EPC resource\0A\00", align 1
@__kstrtab_devm_pci_epc_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pci_epc_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pci_epc_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pci_epc_destroy to i32), ptr @__kstrtab_devm_pci_epc_destroy, ptr @__kstrtabns_devm_pci_epc_destroy }, section "___ksymtab_gpl+devm_pci_epc_destroy", align 4
@__pci_epc_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"&epc->lock\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab___pci_epc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_epc_create = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_epc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_epc_create to i32), ptr @__kstrtab___pci_epc_create, ptr @__kstrtabns___pci_epc_create }, section "___ksymtab_gpl+__pci_epc_create", align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"devm_pci_epc_release\00", align 1
@__kstrtab___devm_pci_epc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_pci_epc_create = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_pci_epc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_pci_epc_create to i32), ptr @__kstrtab___devm_pci_epc_create, ptr @__kstrtabns___devm_pci_epc_create }, section "___ksymtab_gpl+__devm_pci_epc_create", align 4
@__initcall__kmod_pci_epc_core__228_849_pci_epc_init6 = internal global ptr @pci_epc_init, section ".initcall6.init", align 4
@__exitcall_pci_epc_exit = internal global ptr @pci_epc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [41 x i8] c"pci_epc_core.description=PCI EPC Library\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [59 x i8] c"pci_epc_core.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [52 x i8] c"pci_epc_core.file=drivers/pci/endpoint/pci-epc-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [28 x i8] c"pci_epc_core.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pci_epc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pci_epc\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\013failed to create pci epc class --> %ld\0A\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pci_epc_exit, ptr @__initcall__kmod_pci_epc_core__228_849_pci_epc_init6, ptr @__ksymtab___devm_pci_epc_create, ptr @__ksymtab___pci_epc_create, ptr @__ksymtab_devm_pci_epc_destroy, ptr @__ksymtab_pci_epc_add_epf, ptr @__ksymtab_pci_epc_clear_bar, ptr @__ksymtab_pci_epc_destroy, ptr @__ksymtab_pci_epc_get, ptr @__ksymtab_pci_epc_get_features, ptr @__ksymtab_pci_epc_get_first_free_bar, ptr @__ksymtab_pci_epc_get_msi, ptr @__ksymtab_pci_epc_get_msix, ptr @__ksymtab_pci_epc_get_next_free_bar, ptr @__ksymtab_pci_epc_init_notify, ptr @__ksymtab_pci_epc_linkup, ptr @__ksymtab_pci_epc_map_addr, ptr @__ksymtab_pci_epc_map_msi_irq, ptr @__ksymtab_pci_epc_put, ptr @__ksymtab_pci_epc_raise_irq, ptr @__ksymtab_pci_epc_remove_epf, ptr @__ksymtab_pci_epc_set_bar, ptr @__ksymtab_pci_epc_set_msi, ptr @__ksymtab_pci_epc_set_msix, ptr @__ksymtab_pci_epc_start, ptr @__ksymtab_pci_epc_stop, ptr @__ksymtab_pci_epc_unmap_addr, ptr @__ksymtab_pci_epc_write_header, ptr @pci_epc_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_epc_ops, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %9) #10
  tail call void @put_device(ptr noundef nonnull %0) #10
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_epc_get(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %3 = load ptr, ptr @pci_epc_class, align 4
  call void @class_dev_iter_init(ptr noundef nonnull %2, ptr noundef %3, ptr noundef null, ptr noundef null) #10
  br label %4

4:                                                ; preds = %13, %1
  %5 = call ptr @class_dev_iter_next(ptr noundef nonnull %2) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = call i32 @strcmp(ptr noundef %0, ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %4

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_epc, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.pci_epc_ops, ptr %19, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = call zeroext i1 @try_module_get(ptr noundef %21) #10
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  call void @class_dev_iter_exit(ptr noundef nonnull %2) #10
  %24 = call ptr @get_device(ptr noundef nonnull %5) #10
  br label %26

25:                                               ; preds = %17, %4
  call void @class_dev_iter_exit(ptr noundef nonnull %2) #10
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi ptr [ %5, %23 ], [ inttoptr (i32 -22 to ptr), %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_dev_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_get_first_free_bar(ptr noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pci_epc_features, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = getelementptr inbounds %struct.pci_epc_features, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, %6
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 1
  %12 = zext i8 %8 to i32
  %13 = or i32 %11, %12
  store i32 %13, ptr %2, align 4
  %14 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %2, i32 noundef 6, i32 noundef 0) #10
  %15 = icmp ugt i32 %14, 5
  %16 = select i1 %15, i32 -1, i32 %14
  br label %17

17:                                               ; preds = %4, %1
  %18 = phi i32 [ 0, %1 ], [ %16, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_get_next_free_bar(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pci_epc_features, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = lshr i32 %9, %1
  %11 = and i32 %10, 1
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.pci_epc_features, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, %7
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = zext i8 %14 to i32
  %19 = or i32 %17, %18
  store i32 %19, ptr %3, align 4
  %20 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %3, i32 noundef 6, i32 noundef %12) #10
  %21 = icmp ugt i32 %20, 5
  %22 = select i1 %21, i32 -1, i32 %20
  br label %23

23:                                               ; preds = %5, %2
  %24 = phi i32 [ 0, %2 ], [ %22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_epc_get_features(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = zext i8 %1 to i32
  %9 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 8
  %11 = icmp ugt i8 %10, %1
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 %8
  %20 = load i8, ptr %19, align 1
  %21 = icmp ult i8 %20, %2
  br i1 %21, label %34, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.pci_epc_ops, ptr %24, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = load ptr, ptr %23, align 8
  %31 = getelementptr inbounds %struct.pci_epc_ops, ptr %30, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr %32(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10
  tail call void @mutex_unlock(ptr noundef %29) #10
  br label %34

34:                                               ; preds = %28, %22, %18, %14, %7, %3
  %35 = phi ptr [ %33, %28 ], [ null, %7 ], [ null, %3 ], [ null, %18 ], [ null, %14 ], [ null, %22 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_stop(ptr noundef %0) #0 {
  %2 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_epc_ops, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.pci_epc_ops, ptr %11, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %10) #10
  br label %14

14:                                               ; preds = %9, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_start(ptr noundef %0) #0 {
  %2 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_epc_ops, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.pci_epc_ops, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %10) #10
  br label %15

15:                                               ; preds = %9, %3, %1
  %16 = phi i32 [ %14, %9 ], [ -22, %1 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_raise_irq(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = zext i8 %1 to i32
  %11 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %12 = load i8, ptr %11, align 8
  %13 = icmp ugt i8 %12, %1
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 %10
  %22 = load i8, ptr %21, align 1
  %23 = icmp ult i8 %22, %2
  br i1 %23, label %36, label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.pci_epc_ops, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %31) #10
  %32 = load ptr, ptr %25, align 8
  %33 = getelementptr inbounds %struct.pci_epc_ops, ptr %32, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i16 noundef zeroext %4) #10
  tail call void @mutex_unlock(ptr noundef %31) #10
  br label %36

36:                                               ; preds = %30, %24, %20, %16, %9, %5
  %37 = phi i32 [ %35, %30 ], [ -22, %9 ], [ -22, %5 ], [ -22, %20 ], [ -22, %16 ], [ 0, %24 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_map_msi_irq(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = icmp eq ptr %0, null
  %10 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = zext i8 %1 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp ult i8 %21, %2
  br i1 %22, label %35, label %23

23:                                               ; preds = %18, %12
  %24 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.pci_epc_ops, ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %30) #10
  %31 = load ptr, ptr %24, align 8
  %32 = getelementptr inbounds %struct.pci_epc_ops, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #10
  tail call void @mutex_unlock(ptr noundef %30) #10
  br label %35

35:                                               ; preds = %29, %23, %18, %14, %8
  %36 = phi i32 [ %34, %29 ], [ -22, %8 ], [ -22, %18 ], [ -22, %14 ], [ -22, %23 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_get_msi(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = zext i8 %1 to i32
  %9 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 8
  %11 = icmp ugt i8 %10, %1
  br i1 %11, label %12, label %37

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 %8
  %20 = load i8, ptr %19, align 1
  %21 = icmp ult i8 %20, %2
  br i1 %21, label %37, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.pci_epc_ops, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = load ptr, ptr %23, align 8
  %31 = getelementptr inbounds %struct.pci_epc_ops, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10
  tail call void @mutex_unlock(ptr noundef %29) #10
  %34 = icmp slt i32 %33, 0
  %35 = shl nuw i32 1, %33
  %36 = select i1 %34, i32 0, i32 %35
  br label %37

37:                                               ; preds = %28, %22, %18, %14, %7, %3
  %38 = phi i32 [ 0, %7 ], [ 0, %3 ], [ 0, %18 ], [ 0, %14 ], [ 0, %22 ], [ %36, %28 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_set_msi(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 8
  %12 = icmp ule i8 %11, %1
  %13 = zext i8 %3 to i32
  %14 = add i8 %3, -33
  %15 = icmp ult i8 %14, -32
  %16 = or i1 %15, %12
  br i1 %16, label %45, label %17

17:                                               ; preds = %8
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 %9
  %25 = load i8, ptr %24, align 1
  %26 = icmp ult i8 %25, %2
  br i1 %26, label %45, label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.pci_epc_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = icmp ugt i8 %3, 1
  %35 = add nsw i32 %13, -1
  %36 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 false) #10, !range !9
  %37 = trunc i32 %36 to i8
  %38 = sub nsw i8 32, %37
  %39 = select i1 %34, i8 %38, i8 0
  %40 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %40) #10
  %41 = load ptr, ptr %28, align 8
  %42 = getelementptr inbounds %struct.pci_epc_ops, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %39) #10
  tail call void @mutex_unlock(ptr noundef %40) #10
  br label %45

45:                                               ; preds = %33, %27, %23, %19, %8, %4
  %46 = phi i32 [ %44, %33 ], [ -22, %8 ], [ -22, %4 ], [ -22, %23 ], [ -22, %19 ], [ 0, %27 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_get_msix(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = zext i8 %1 to i32
  %9 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 8
  %11 = icmp ugt i8 %10, %1
  br i1 %11, label %12, label %37

12:                                               ; preds = %7
  %13 = icmp eq i8 %2, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %16, i32 %8
  %20 = load i8, ptr %19, align 1
  %21 = icmp ult i8 %20, %2
  br i1 %21, label %37, label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.pci_epc_ops, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = load ptr, ptr %23, align 8
  %31 = getelementptr inbounds %struct.pci_epc_ops, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10
  tail call void @mutex_unlock(ptr noundef %29) #10
  %34 = icmp slt i32 %33, 0
  %35 = add i32 %33, 1
  %36 = select i1 %34, i32 0, i32 %35
  br label %37

37:                                               ; preds = %28, %22, %18, %14, %7, %3
  %38 = phi i32 [ 0, %7 ], [ 0, %3 ], [ 0, %18 ], [ 0, %14 ], [ 0, %22 ], [ %36, %28 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_set_msix(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %0, null
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = zext i8 %1 to i32
  %12 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 8
  %14 = icmp ule i8 %13, %1
  %15 = add i16 %3, -2049
  %16 = icmp ult i16 %15, -2048
  %17 = or i1 %16, %14
  br i1 %17, label %41, label %18

18:                                               ; preds = %10
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 %11
  %26 = load i8, ptr %25, align 1
  %27 = icmp ult i8 %26, %2
  br i1 %27, label %41, label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.pci_epc_ops, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %35) #10
  %36 = load ptr, ptr %29, align 8
  %37 = getelementptr inbounds %struct.pci_epc_ops, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = add nsw i16 %3, -1
  %40 = tail call i32 %38(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %39, i32 noundef %4, i32 noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %35) #10
  br label %41

41:                                               ; preds = %34, %28, %24, %20, %10, %6
  %42 = phi i32 [ %40, %34 ], [ -22, %10 ], [ -22, %6 ], [ -22, %24 ], [ -22, %20 ], [ 0, %28 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_unmap_addr(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 8
  %12 = icmp ugt i8 %11, %1
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 %9
  %21 = load i8, ptr %20, align 1
  %22 = icmp ult i8 %21, %2
  br i1 %22, label %34, label %23

23:                                               ; preds = %19, %13
  %24 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.pci_epc_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %30) #10
  %31 = load ptr, ptr %24, align 8
  %32 = getelementptr inbounds %struct.pci_epc_ops, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %30) #10
  br label %34

34:                                               ; preds = %29, %23, %19, %15, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_map_addr(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %0, null
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = zext i8 %1 to i32
  %12 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 8
  %14 = icmp ugt i8 %13, %1
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 %11
  %23 = load i8, ptr %22, align 1
  %24 = icmp ult i8 %23, %2
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.pci_epc_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %32) #10
  %33 = load ptr, ptr %26, align 8
  %34 = getelementptr inbounds %struct.pci_epc_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %32) #10
  br label %37

37:                                               ; preds = %31, %25, %21, %17, %10, %6
  %38 = phi i32 [ %36, %31 ], [ -22, %10 ], [ -22, %6 ], [ -22, %21 ], [ -22, %17 ], [ 0, %25 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_clear_bar(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 8
  %12 = icmp ugt i8 %11, %1
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17, %13
  %23 = icmp eq i8 %2, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 %9
  %30 = load i8, ptr %29, align 1
  %31 = icmp ult i8 %30, %2
  br i1 %31, label %43, label %32

32:                                               ; preds = %28, %22
  %33 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.pci_epc_ops, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %39) #10
  %40 = load ptr, ptr %33, align 8
  %41 = getelementptr inbounds %struct.pci_epc_ops, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %39) #10
  br label %43

43:                                               ; preds = %38, %32, %28, %24, %17, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_set_bar(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq ptr %0, null
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %49, label %10

10:                                               ; preds = %4
  %11 = zext i8 %1 to i32
  %12 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 8
  %14 = icmp ugt i8 %13, %1
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pci_epf_bar, ptr %3, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 5
  %19 = and i32 %6, 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  %23 = and i32 %6, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ult i32 %6, 4
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = icmp eq i8 %2, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 %11
  %35 = load i8, ptr %34, align 1
  %36 = icmp ult i8 %35, %2
  br i1 %36, label %49, label %37

37:                                               ; preds = %33, %27
  %38 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.pci_epc_ops, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %44) #10
  %45 = load ptr, ptr %38, align 8
  %46 = getelementptr inbounds %struct.pci_epc_ops, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %44) #10
  br label %49

49:                                               ; preds = %43, %37, %33, %29, %22, %15, %10, %4
  %50 = phi i32 [ %48, %43 ], [ -22, %22 ], [ -22, %15 ], [ -22, %10 ], [ -22, %4 ], [ -22, %33 ], [ -22, %29 ], [ 0, %37 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_write_header(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 8
  %12 = icmp ugt i8 %11, %1
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 %9
  %21 = load i8, ptr %20, align 1
  %22 = icmp ult i8 %21, %2
  %23 = icmp ugt i8 %2, 1
  %24 = or i1 %23, %22
  br i1 %24, label %35, label %25

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %31) #10
  %32 = load ptr, ptr %26, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %31) #10
  br label %35

35:                                               ; preds = %30, %25, %19, %15, %8, %4
  %36 = phi i32 [ %34, %30 ], [ -22, %8 ], [ -22, %4 ], [ -22, %19 ], [ -22, %15 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epc_add_epf(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %53

17:                                               ; preds = %11
  %18 = icmp eq i32 %2, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %19, %17, %13
  %24 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %24) #10
  %25 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 10
  %26 = tail call i32 @_find_first_zero_bit_le(ptr noundef %25, i32 noundef 32) #10
  %27 = icmp ugt i32 %26, 31
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 8
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, -1
  %33 = icmp ugt i32 %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str) #11
  br label %51

35:                                               ; preds = %28
  tail call void @_set_bit(i32 noundef %26, ptr noundef %25) #10
  %36 = trunc i32 %26 to i8
  br i1 %12, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  store i8 %36, ptr %38, align 4
  %39 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 8
  store ptr %0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 11
  br label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 17
  store i8 %36, ptr %42, align 8
  %43 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 14
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 15
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi ptr [ %40, %37 ], [ %44, %41 ]
  %47 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %46, ptr %48, align 4
  store ptr %47, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %46, ptr %49, align 4
  br label %51

51:                                               ; preds = %45, %34, %23
  %52 = phi i32 [ -22, %34 ], [ 0, %45 ], [ -22, %23 ]
  tail call void @mutex_unlock(ptr noundef %24) #10
  br label %53

53:                                               ; preds = %51, %19, %13, %7, %3
  %54 = phi i32 [ %52, %51 ], [ -22, %7 ], [ -22, %3 ], [ -16, %13 ], [ -16, %19 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_remove_epf(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %12 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 11
  %13 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 17
  %14 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 15
  %15 = select i1 %10, ptr %12, ptr %14
  %16 = select i1 %10, ptr %11, ptr %13
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %18, ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %25 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 8
  store ptr null, ptr %25, align 8
  tail call void @mutex_unlock(ptr noundef %19) #10
  br label %26

26:                                               ; preds = %9, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_linkup(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 11
  %7 = tail call i32 @atomic_notifier_call_chain(ptr noundef %6, i32 noundef 1, ptr noundef null) #10
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_init_notify(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 11
  %7 = tail call i32 @atomic_notifier_call_chain(ptr noundef %6, i32 noundef 0, ptr noundef null) #10
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epc_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_epc, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @pci_ep_cfs_remove_epc_group(ptr noundef %3) #10
  tail call void @device_unregister(ptr noundef %0) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ep_cfs_remove_epc_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_pci_epc_destroy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_pci_epc_release, ptr noundef nonnull @devm_pci_epc_match, ptr noundef %1) #10
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @devm_pci_epc_destroy.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %17, !prof !10

8:                                                ; preds = %2
  store i1 true, ptr @devm_pci_epc_destroy.__already_done, align 1
  %9 = tail call ptr @dev_driver_string(ptr noundef %0) #10
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 745, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %9, ptr noundef %16) #10
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pci_epc_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.pci_epc, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @pci_ep_cfs_remove_epc_group(ptr noundef %5) #10
  tail call void @device_unregister(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_pci_epc_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #6 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__pci_epc_create(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 764, i32 noundef 9, ptr noundef null) #10
  br label %43

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 544) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @__pci_epc_create.__key) #10
  %12 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 11
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 11, i32 1
  store ptr null, ptr %15, align 8
  tail call void @device_initialize(ptr noundef nonnull %8) #10
  %16 = load ptr, ptr @pci_epc_class, align 4
  %17 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 31
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 2
  store ptr %1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load ptr, ptr %0, align 4
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi ptr [ %24, %23 ], [ %21, %10 ]
  %27 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %8, ptr noundef nonnull @.str.4, ptr noundef %26) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = tail call i32 @device_add(ptr noundef nonnull %8) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load ptr, ptr %20, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %39 = tail call ptr @pci_ep_cfs_add_epc_group(ptr noundef %38) #10
  %40 = getelementptr inbounds %struct.pci_epc, ptr %8, i32 0, i32 8
  store ptr %39, ptr %40, align 8
  br label %46

41:                                               ; preds = %29, %25
  %42 = phi i32 [ %27, %25 ], [ %30, %29 ]
  tail call void @put_device(ptr noundef nonnull %8) #10
  tail call void @kfree(ptr noundef nonnull %8) #10
  br label %43

43:                                               ; preds = %41, %6, %5
  %44 = phi i32 [ -22, %5 ], [ %42, %41 ], [ -12, %6 ]
  %45 = inttoptr i32 %44 to ptr
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi ptr [ %45, %43 ], [ %8, %37 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ep_cfs_add_epc_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_pci_epc_create(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_pci_epc_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.5) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @__pci_epc_create(ptr noundef %0, ptr noundef %1, ptr undef)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %11

10:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ %7, %10 ], [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_epc_init() #7 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @pci_epc_init.__key) #10
  store ptr %1, ptr @pci_epc_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %4) #11
  %6 = load ptr, ptr @pci_epc_class, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %8

8:                                                ; preds = %3, %0
  %9 = phi i32 [ %7, %3 ], [ 0, %0 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pci_epc_exit() #7 section ".exit.text" {
  %1 = load ptr, ptr @pci_epc_class, align 4
  tail call void @class_destroy(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
