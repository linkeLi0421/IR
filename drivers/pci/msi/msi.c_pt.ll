; ModuleID = '/llk/IR/drivers/pci/msi/msi.c_pt.bc'
source_filename = "../drivers/pci/msi/msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_mask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_mask_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_mask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_unmask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_unmask_irq\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_unmask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_write_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_write_msi_msg\22\09\09\09\09\09"
module asm "__kstrtabns_pci_write_msi_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_restore_msi_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_restore_msi_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_restore_msi_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_vec_count\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_msi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msix_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msix_vec_count\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msix_vec_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_msix\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_msix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_msi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_msi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_msix_range:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_msix_range\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_msix_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_alloc_irq_vectors_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_alloc_irq_vectors_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_pci_alloc_irq_vectors_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_irq_vectors:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_irq_vectors\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_irq_vectors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_irq_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_irq_vector\22\09\09\09\09\09"
module asm "__kstrtabns_pci_irq_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_irq_get_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_irq_get_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_pci_irq_get_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msi_desc_to_pci_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22msi_desc_to_pci_dev\22\09\09\09\09\09"
module asm "__kstrtabns_msi_desc_to_pci_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.64, %struct.anon.65, %union.anon.66 }
%union.anon.64 = type { i32 }
%struct.anon.65 = type { i16, i32 }
%union.anon.66 = type { ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.msix_entry = type { i32, i16 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }

@__kstrtab_pci_msi_mask_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_mask_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_mask_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_mask_irq to i32), ptr @__kstrtab_pci_msi_mask_irq, ptr @__kstrtabns_pci_msi_mask_irq }, section "___ksymtab_gpl+pci_msi_mask_irq", align 4
@__kstrtab_pci_msi_unmask_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_unmask_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_unmask_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_unmask_irq to i32), ptr @__kstrtab_pci_msi_unmask_irq, ptr @__kstrtabns_pci_msi_unmask_irq }, section "___ksymtab_gpl+pci_msi_unmask_irq", align 4
@__pci_read_msi_msg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"drivers/pci/msi/msi.c\00", align 1
@__kstrtab_pci_write_msi_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_write_msi_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_write_msi_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_write_msi_msg to i32), ptr @__kstrtab_pci_write_msi_msg, ptr @__kstrtabns_pci_write_msi_msg }, section "___ksymtab_gpl+pci_write_msi_msg", align 4
@__kstrtab_pci_restore_msi_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_restore_msi_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_restore_msi_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_restore_msi_state to i32), ptr @__kstrtab_pci_restore_msi_state, ptr @__kstrtabns_pci_restore_msi_state }, section "___ksymtab_gpl+pci_restore_msi_state", align 4
@__kstrtab_pci_msi_vec_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_vec_count = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_vec_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_vec_count to i32), ptr @__kstrtab_pci_msi_vec_count, ptr @__kstrtabns_pci_msi_vec_count }, section "___ksymtab+pci_msi_vec_count", align 4
@pci_msi_enable = internal unnamed_addr global i1 false, align 4
@__kstrtab_pci_disable_msi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_msi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_msi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_msi to i32), ptr @__kstrtab_pci_disable_msi, ptr @__kstrtabns_pci_disable_msi }, section "___ksymtab+pci_disable_msi", align 4
@__kstrtab_pci_msix_vec_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msix_vec_count = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msix_vec_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msix_vec_count to i32), ptr @__kstrtab_pci_msix_vec_count, ptr @__kstrtabns_pci_msix_vec_count }, section "___ksymtab+pci_msix_vec_count", align 4
@__kstrtab_pci_disable_msix = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_msix = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_msix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_msix to i32), ptr @__kstrtab_pci_disable_msix, ptr @__kstrtabns_pci_disable_msix }, section "___ksymtab+pci_disable_msix", align 4
@__kstrtab_pci_enable_msi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_msi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_msi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_msi to i32), ptr @__kstrtab_pci_enable_msi, ptr @__kstrtabns_pci_enable_msi }, section "___ksymtab+pci_enable_msi", align 4
@__kstrtab_pci_enable_msix_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_msix_range = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_msix_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_msix_range to i32), ptr @__kstrtab_pci_enable_msix_range, ptr @__kstrtabns_pci_enable_msix_range }, section "___ksymtab+pci_enable_msix_range", align 4
@__kstrtab_pci_alloc_irq_vectors_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_alloc_irq_vectors_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_alloc_irq_vectors_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_alloc_irq_vectors_affinity to i32), ptr @__kstrtab_pci_alloc_irq_vectors_affinity, ptr @__kstrtabns_pci_alloc_irq_vectors_affinity }, section "___ksymtab+pci_alloc_irq_vectors_affinity", align 4
@__kstrtab_pci_free_irq_vectors = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_irq_vectors = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_irq_vectors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_irq_vectors to i32), ptr @__kstrtab_pci_free_irq_vectors, ptr @__kstrtabns_pci_free_irq_vectors }, section "___ksymtab+pci_free_irq_vectors", align 4
@__kstrtab_pci_irq_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_irq_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_irq_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_irq_vector to i32), ptr @__kstrtab_pci_irq_vector, ptr @__kstrtabns_pci_irq_vector }, section "___ksymtab+pci_irq_vector", align 4
@pci_irq_get_affinity.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_pci_irq_get_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_irq_get_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_irq_get_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_irq_get_affinity to i32), ptr @__kstrtab_pci_irq_get_affinity, ptr @__kstrtabns_pci_irq_get_affinity }, section "___ksymtab+pci_irq_get_affinity", align 4
@__kstrtab_msi_desc_to_pci_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_msi_desc_to_pci_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_msi_desc_to_pci_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msi_desc_to_pci_dev to i32), ptr @__kstrtab_msi_desc_to_pci_dev, ptr @__kstrtabns_msi_desc_to_pci_dev }, section "___ksymtab+msi_desc_to_pci_dev", align 4
@__kstrtab_pci_msi_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_enabled to i32), ptr @__kstrtab_pci_msi_enabled, ptr @__kstrtabns_pci_msi_enabled }, section "___ksymtab+pci_msi_enabled", align 4
@pci_msi_ignore_mask = dso_local local_unnamed_addr global i32 0, align 4
@pci_msi_shutdown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"can't enable MSI (MSI-X already enabled)\0A\00", align 1
@__pci_enable_msi_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"arch assigned 64-bit MSI address %#x%08x but device only supports 32 bits\0A\00", align 1
@__pci_enable_msix_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"can't enable MSI-X (MSI IRQ already assigned)\0A\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_msi_desc_to_pci_dev, ptr @__ksymtab_pci_alloc_irq_vectors_affinity, ptr @__ksymtab_pci_disable_msi, ptr @__ksymtab_pci_disable_msix, ptr @__ksymtab_pci_enable_msi, ptr @__ksymtab_pci_enable_msix_range, ptr @__ksymtab_pci_free_irq_vectors, ptr @__ksymtab_pci_irq_get_affinity, ptr @__ksymtab_pci_irq_vector, ptr @__ksymtab_pci_msi_enabled, ptr @__ksymtab_pci_msi_mask_irq, ptr @__ksymtab_pci_msi_unmask_irq, ptr @__ksymtab_pci_msi_vec_count, ptr @__ksymtab_pci_msix_vec_count, ptr @__ksymtab_pci_restore_msi_state, ptr @__ksymtab_pci_write_msi_msg], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_msi_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = and i16 %7, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 8
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = shl nuw nsw i32 %21, 4
  %23 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %13) #11, !srcloc !9
  br label %25

25:                                               ; preds = %16, %10
  %26 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %35

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %5, align 4
  %33 = sub i32 %31, %32
  %34 = shl nuw i32 1, %33
  tail call fastcc void @pci_msi_update_mask(ptr noundef %5, i32 noundef 0, i32 noundef %34) #11
  br label %35

35:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_msi_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -2
  store i32 %13, ptr %11, align 4
  %14 = and i16 %7, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 9, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msi_desc, ptr %5, i32 0, i32 8
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = shl nuw nsw i32 %21, 4
  %23 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %24 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %13) #11, !srcloc !9
  br label %31

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %5, align 4
  %29 = sub i32 %27, %28
  %30 = shl nuw i32 1, %29
  tail call fastcc void @pci_msi_update_mask(ptr noundef %5, i32 noundef %30, i32 noundef 0) #11
  br label %31

31:                                               ; preds = %25, %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pci_read_msi_msg(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -136
  %7 = getelementptr i8, ptr %5, i32 -36
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !12

10:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/msi/msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 8
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = shl nuw nsw i32 %21, 4
  %23 = getelementptr i8, ptr %18, i32 %22
  %24 = and i16 %13, 512
  %25 = icmp ne i16 %24, 0
  %26 = load i1, ptr @__pci_read_msi_msg.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !14

29:                                               ; preds = %16
  store i1 true, ptr @__pci_read_msi_msg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #11
  br label %30

30:                                               ; preds = %29, %16
  br i1 %25, label %61, label %31

31:                                               ; preds = %30
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  store i32 %32, ptr %1, align 4
  %33 = getelementptr i8, ptr %23, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %35 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %23, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %38 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  br label %61

39:                                               ; preds = %11
  %40 = getelementptr i8, ptr %5, i32 -75
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !annotation !18
  %43 = add nuw nsw i32 %42, 4
  %44 = tail call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %43, ptr noundef %1) #11
  %45 = load i16, ptr %12, align 4
  %46 = and i16 %45, 256
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = add nuw nsw i32 %42, 8
  %50 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  %51 = tail call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %49, ptr noundef %50) #11
  br label %54

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ 8, %52 ], [ 12, %48 ]
  %56 = add nuw nsw i32 %55, %42
  %57 = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef %56, ptr noundef nonnull %3) #11
  %58 = load i16, ptr %3, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %59, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %61

61:                                               ; preds = %54, %31, %30
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @msi_desc_to_pci_dev(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -136
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pci_write_msi_msg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -136
  %7 = getelementptr i8, ptr %5, i32 -36
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %94

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %5, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %94, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9
  %21 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 8
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 4
  %27 = getelementptr i8, ptr %22, i32 %26
  %28 = load i32, ptr %20, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = and i16 %16, 512
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %19
  %34 = xor i1 %30, true
  %35 = and i16 %16, 128
  %36 = icmp eq i16 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = or i32 %28, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %40 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #11, !srcloc !9
  br label %41

41:                                               ; preds = %38, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %42 = load i32, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %42) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %43 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %44) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !21
  tail call void @arm_heavy_mb() #11
  %46 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #11, !srcloc !9
  br i1 %30, label %49, label %60

49:                                               ; preds = %41
  %50 = load i16, ptr %15, align 4
  %51 = and i16 %50, 128
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %21, align 4
  %55 = load i16, ptr %23, align 4
  %56 = zext i16 %55 to i32
  %57 = shl nuw nsw i32 %56, 4
  %58 = getelementptr i8, ptr %54, i32 %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %59 = getelementptr i8, ptr %58, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %28) #11, !srcloc !9
  br label %60

60:                                               ; preds = %53, %49, %41
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !22
  br label %94

62:                                               ; preds = %14
  %63 = getelementptr i8, ptr %5, i32 -75
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !annotation !18
  %66 = add nuw nsw i32 %65, 2
  %67 = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef %66, ptr noundef nonnull %3) #11
  %68 = load i16, ptr %3, align 2
  %69 = and i16 %68, -113
  %70 = load i16, ptr %15, align 4
  %71 = shl i16 %70, 3
  %72 = and i16 %71, 112
  %73 = or i16 %72, %69
  store i16 %73, ptr %3, align 2
  %74 = call i32 @pci_write_config_word(ptr noundef %6, i32 noundef %66, i16 noundef zeroext %73) #11
  %75 = add nuw nsw i32 %65, 4
  %76 = load i32, ptr %1, align 4
  %77 = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef %75, i32 noundef %76) #11
  %78 = load i16, ptr %15, align 4
  %79 = and i16 %78, 256
  %80 = icmp eq i16 %79, 0
  %81 = add nuw nsw i32 %65, 8
  br i1 %80, label %87, label %82

82:                                               ; preds = %62
  %83 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = call i32 @pci_write_config_dword(ptr noundef %6, i32 noundef %81, i32 noundef %84) #11
  %86 = add nuw nsw i32 %65, 12
  br label %87

87:                                               ; preds = %82, %62
  %88 = phi i32 [ %86, %82 ], [ %81, %62 ]
  %89 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = trunc i32 %90 to i16
  %92 = call i32 @pci_write_config_word(ptr noundef %6, i32 noundef %88, i16 noundef zeroext %91) #11
  %93 = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef %66, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %94

94:                                               ; preds = %87, %60, %19, %10, %2
  %95 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %95, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  %96 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  call void %97(ptr noundef %0, ptr noundef %101) #11
  br label %102

102:                                              ; preds = %99, %94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_write_msi_msg(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  tail call void @__pci_write_msi_msg(ptr noundef %11, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_restore_msi_irqs(ptr noundef %0) local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_restore_msi_state(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2, !annotation !18
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %7 = load i40, ptr %6, align 1
  %8 = and i40 %7, 4096
  %9 = icmp eq i40 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @irq_get_irq_data(i32 noundef %12) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.irq_data, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_common_data, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi ptr [ %19, %15 ], [ null, %10 ]
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @pci_intx(ptr noundef %0, i32 noundef 0) #11
  br label %27

27:                                               ; preds = %26, %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !18
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 19
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %30, 2
  %32 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %31, ptr noundef nonnull %4) #11
  %33 = load i16, ptr %4, align 2
  %34 = and i16 %33, -2
  store i16 %34, ptr %4, align 2
  %35 = load i8, ptr %28, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, 2
  %38 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %37, i16 noundef zeroext %34) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %39 = call zeroext i1 @arch_restore_msi_irqs(ptr noundef %0) #11
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.msi_desc, ptr %21, i32 0, i32 3
  call void @__pci_write_msi_msg(ptr noundef %21, ptr noundef %41) #11
  br label %42

42:                                               ; preds = %40, %27
  %43 = load i8, ptr %28, align 1
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %44, 2
  %46 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %45, ptr noundef nonnull %5) #11
  call fastcc void @pci_msi_update_mask(ptr noundef %21, i32 noundef 0, i32 noundef 0) #11
  %47 = load i16, ptr %5, align 2
  %48 = and i16 %47, -114
  %49 = getelementptr inbounds %struct.msi_desc, ptr %21, i32 0, i32 9, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = shl i16 %50, 3
  %52 = and i16 %51, 112
  %53 = or i16 %48, %52
  %54 = or i16 %53, 1
  store i16 %54, ptr %5, align 2
  %55 = load i8, ptr %28, align 1
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %56, 2
  %58 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %57, i16 noundef zeroext %54) #11
  %59 = load i40, ptr %6, align 1
  br label %60

60:                                               ; preds = %42, %1
  %61 = phi i40 [ %7, %1 ], [ %59, %42 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %62 = and i40 %61, 8192
  %63 = icmp eq i40 %62, 0
  br i1 %63, label %120, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %66 = load i16, ptr %65, align 2
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call void @pci_intx(ptr noundef %0, i32 noundef 0) #11
  br label %70

70:                                               ; preds = %69, %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !annotation !18
  %71 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 20
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %73, 2
  %75 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %74, ptr noundef nonnull %3) #11
  %76 = load i16, ptr %3, align 2
  %77 = or i16 %76, -16384
  store i16 %77, ptr %3, align 2
  %78 = load i8, ptr %71, align 2
  %79 = zext i8 %78 to i32
  %80 = add nuw nsw i32 %79, 2
  %81 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %80, i16 noundef zeroext %77) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  %82 = call zeroext i1 @arch_restore_msi_irqs(ptr noundef %0) #11
  %83 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void @msi_lock_descs(ptr noundef %83) #11
  %84 = call ptr @msi_first_desc(ptr noundef %83, i32 noundef 0) #11
  %85 = icmp eq ptr %84, null
  br i1 %85, label %109, label %86

86:                                               ; preds = %106, %70
  %87 = phi ptr [ %107, %106 ], [ %84, %70 ]
  br i1 %82, label %88, label %90

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.msi_desc, ptr %87, i32 0, i32 3
  call void @__pci_write_msi_msg(ptr noundef nonnull %87, ptr noundef %89) #11
  br label %90

90:                                               ; preds = %88, %86
  %91 = getelementptr inbounds %struct.msi_desc, ptr %87, i32 0, i32 9, i32 1
  %92 = load i16, ptr %91, align 4
  %93 = and i16 %92, 128
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.msi_desc, ptr %87, i32 0, i32 9
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.msi_desc, ptr %87, i32 0, i32 9, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.msi_desc, ptr %87, i32 0, i32 8
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = shl nuw nsw i32 %102, 4
  %104 = getelementptr i8, ptr %99, i32 12
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  call void @arm_heavy_mb() #11
  %105 = getelementptr i8, ptr %104, i32 %103
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %97) #11, !srcloc !9
  br label %106

106:                                              ; preds = %95, %90
  %107 = call ptr @msi_next_desc(ptr noundef %83, i32 noundef 0) #11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %86

109:                                              ; preds = %106, %70
  call void @msi_unlock_descs(ptr noundef %83) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !18
  %110 = load i8, ptr %71, align 2
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %111, 2
  %113 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %112, ptr noundef nonnull %2) #11
  %114 = load i16, ptr %2, align 2
  %115 = and i16 %114, -16385
  store i16 %115, ptr %2, align 2
  %116 = load i8, ptr %71, align 2
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %117, 2
  %119 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %118, i16 noundef zeroext %115) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %120

120:                                              ; preds = %109, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_msi_vec_count(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !18
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 19
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = add nuw nsw i32 %7, 2
  %9 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %2) #11
  %10 = load i16, ptr %2, align 2
  %11 = lshr i16 %10, 1
  %12 = and i16 %11, 7
  %13 = zext i16 %12 to i32
  %14 = shl nuw nsw i32 1, %13
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi i32 [ %14, %6 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_msi(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = load i1, ptr @pci_msi_enable, align 4
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = and i40 %8, 4096
  %10 = icmp eq i40 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @msi_lock_descs(ptr noundef %12) #11
  %13 = load i1, ptr @pci_msi_enable, align 4
  br i1 %13, label %61, label %14

14:                                               ; preds = %11
  %15 = load i40, ptr %7, align 1
  %16 = and i40 %15, 4096
  %17 = icmp eq i40 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !18
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 19
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, 2
  %23 = call i32 @pci_read_config_word(ptr noundef nonnull %0, i32 noundef %22, ptr noundef nonnull %2) #11
  %24 = load i16, ptr %2, align 2
  %25 = and i16 %24, -2
  store i16 %25, ptr %2, align 2
  %26 = load i8, ptr %19, align 1
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %27, 2
  %29 = call i32 @pci_write_config_word(ptr noundef nonnull %0, i32 noundef %28, i16 noundef zeroext %25) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  call void @pci_intx(ptr noundef nonnull %0, i32 noundef 1) #11
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i40, ptr %7, align 1
  %37 = and i40 %36, -4097
  store i40 %37, ptr %7, align 1
  %38 = call ptr @msi_first_desc(ptr noundef %12, i32 noundef 0) #11
  %39 = icmp eq ptr %38, null
  %40 = load i1, ptr @pci_msi_shutdown.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !14

43:                                               ; preds = %35
  store i1 true, ptr @pci_msi_shutdown.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 755, i32 noundef 9, ptr noundef null) #11
  br label %44

44:                                               ; preds = %43, %35
  br i1 %39, label %56, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.msi_desc, ptr %38, i32 0, i32 9, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = lshr i16 %47, 4
  %49 = and i16 %48, 7
  %50 = icmp ugt i16 %49, 4
  %51 = zext i16 %49 to i32
  %52 = shl nuw nsw i32 1, %51
  %53 = shl nsw i32 -1, %52
  %54 = xor i32 %53, -1
  %55 = select i1 %50, i32 -1, i32 %54
  call fastcc void @pci_msi_update_mask(ptr noundef nonnull %38, i32 noundef %55, i32 noundef 0) #11
  br label %56

56:                                               ; preds = %45, %44
  %57 = getelementptr inbounds %struct.msi_desc, ptr %38, i32 0, i32 9, i32 1, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  store i32 %58, ptr %59, align 4
  %60 = call i32 @pcibios_alloc_irq(ptr noundef nonnull %0) #11
  br label %61

61:                                               ; preds = %56, %14, %11
  call void @pci_msi_teardown_msi_irqs(ptr noundef nonnull %0) #11
  %62 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void @iounmap(ptr noundef nonnull %63) #11
  store ptr null, ptr %62, align 4
  br label %66

66:                                               ; preds = %65, %61
  call void @msi_unlock_descs(ptr noundef %12) #11
  br label %67

67:                                               ; preds = %66, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_lock_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_unlock_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_msix_vec_count(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !18
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 20
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = add nuw nsw i32 %7, 2
  %9 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %2) #11
  %10 = load i16, ptr %2, align 2
  %11 = and i16 %10, 2047
  %12 = add nuw nsw i16 %11, 1
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %13, %6 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_msix(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = load i1, ptr @pci_msi_enable, align 4
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %78, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = and i40 %8, 8192
  %10 = icmp eq i40 %9, 0
  br i1 %10, label %78, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @msi_lock_descs(ptr noundef %12) #11
  %13 = load i1, ptr @pci_msi_enable, align 4
  br i1 %13, label %72, label %14

14:                                               ; preds = %11
  %15 = load i40, ptr %7, align 1
  %16 = and i40 %15, 8192
  %17 = icmp eq i40 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = and i40 %15, -8193
  store i40 %23, ptr %7, align 1
  br label %72

24:                                               ; preds = %18
  %25 = tail call ptr @msi_first_desc(ptr noundef %12, i32 noundef 0) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %45, %24
  %28 = phi ptr [ %49, %45 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.msi_desc, ptr %28, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.msi_desc, ptr %28, i32 0, i32 9, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = and i16 %33, 128
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.msi_desc, ptr %28, i32 0, i32 9, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.msi_desc, ptr %28, i32 0, i32 8
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = shl nuw nsw i32 %41, 4
  %43 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %44 = getelementptr i8, ptr %43, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %31) #11, !srcloc !9
  br label %45

45:                                               ; preds = %36, %27
  %46 = getelementptr inbounds %struct.msi_desc, ptr %28, i32 0, i32 9, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %49 = tail call ptr @msi_next_desc(ptr noundef %12, i32 noundef 0) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %27

51:                                               ; preds = %45, %24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 0, ptr %2, align 2, !annotation !18
  %52 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 20
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %54, 2
  %56 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %55, ptr noundef nonnull %2) #11
  %57 = load i16, ptr %2, align 2
  %58 = and i16 %57, 32767
  store i16 %58, ptr %2, align 2
  %59 = load i8, ptr %52, align 2
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %60, 2
  %62 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %61, i16 noundef zeroext %58) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %64 = load i16, ptr %63, align 2
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  call void @pci_intx(ptr noundef %0, i32 noundef 1) #11
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i40, ptr %7, align 1
  %70 = and i40 %69, -8193
  store i40 %70, ptr %7, align 1
  %71 = call i32 @pcibios_alloc_irq(ptr noundef %0) #11
  br label %72

72:                                               ; preds = %68, %22, %14, %11
  call void @pci_msi_teardown_msi_irqs(ptr noundef %0) #11
  %73 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call void @iounmap(ptr noundef nonnull %74) #11
  store ptr null, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %72
  call void @msi_unlock_descs(ptr noundef %12) #11
  br label %78

78:                                               ; preds = %77, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_msi(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @__pci_enable_msi_range(ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef null)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pci_enable_msi_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i16, align 2
  %6 = alloca %struct.msi_desc, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = load i1, ptr @pci_msi_enable, align 4
  %11 = icmp eq ptr %0, null
  %12 = or i1 %11, %10
  br i1 %12, label %226, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %15 = load i40, ptr %14, align 1
  %16 = and i40 %15, 64
  %17 = icmp ne i40 %16, 0
  %18 = icmp slt i32 %1, 1
  %19 = or i1 %18, %17
  br i1 %19, label %226, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %28

24:                                               ; preds = %28
  %25 = getelementptr inbounds %struct.pci_bus, ptr %29, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %30 = getelementptr inbounds %struct.pci_bus, ptr %29, i32 0, i32 19
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %24, label %226

34:                                               ; preds = %24, %20
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %226

38:                                               ; preds = %34
  %39 = and i40 %15, 8192
  %40 = icmp eq i40 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.1) #12
  br label %226

43:                                               ; preds = %38
  %44 = icmp slt i32 %2, %1
  br i1 %44, label %226, label %45

45:                                               ; preds = %43
  %46 = and i40 %15, 4096
  %47 = icmp ne i40 %46, 0
  %48 = load i1, ptr @__pci_enable_msi_range.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !14

51:                                               ; preds = %45
  store i1 true, ptr @__pci_enable_msi_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 882, i32 noundef 9, ptr noundef null) #11
  br label %52

52:                                               ; preds = %51, %45
  br i1 %47, label %226, label %53

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i16 0, ptr %9, align 2, !annotation !18
  %54 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 19
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br label %226

58:                                               ; preds = %53
  %59 = zext i8 %55 to i32
  %60 = add nuw nsw i32 %59, 2
  %61 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %9) #11
  %62 = load i16, ptr %9, align 2
  %63 = lshr i16 %62, 1
  %64 = and i16 %63, 7
  %65 = zext i16 %64 to i32
  %66 = shl nuw nsw i32 1, %65
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  %67 = icmp slt i32 %66, %1
  br i1 %67, label %226, label %68

68:                                               ; preds = %58
  %69 = call fastcc i32 @pci_setup_msi_context(ptr noundef %0)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %226

71:                                               ; preds = %68
  %72 = call i32 @llvm.smin.i32(i32 %66, i32 %2)
  %73 = icmp eq ptr %3, null
  %74 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %75 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %76 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 1
  %77 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 9
  %78 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 9, i32 1
  %79 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %80 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 9, i32 1, i32 1
  %81 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 4
  %82 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 9, i32 2
  %83 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57
  br label %84

84:                                               ; preds = %224, %71
  %85 = phi i32 [ %220, %224 ], [ %72, %71 ]
  br i1 %73, label %89, label %86

86:                                               ; preds = %84
  %87 = call i32 @irq_calc_affinity_vectors(i32 noundef %1, i32 noundef %85, ptr noundef nonnull %3) #11
  %88 = icmp slt i32 %87, %1
  br i1 %88, label %226, label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %87, %86 ], [ %85, %84 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i16 0, ptr %8, align 2, !annotation !18
  %91 = load i8, ptr %54, align 1
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %92, 2
  %94 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %93, ptr noundef nonnull %8) #11
  %95 = load i16, ptr %8, align 2
  %96 = and i16 %95, -2
  store i16 %96, ptr %8, align 2
  %97 = load i8, ptr %54, align 1
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %98, 2
  %100 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %99, i16 noundef zeroext %96) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  %101 = load i40, ptr %14, align 1
  %102 = or i40 %101, 4096
  store i40 %102, ptr %14, align 1
  br i1 %73, label %105, label %103

103:                                              ; preds = %89
  %104 = call ptr @irq_create_affinity_masks(i32 noundef %90, ptr noundef nonnull %3) #11
  br label %105

105:                                              ; preds = %103, %89
  %106 = phi ptr [ %104, %103 ], [ null, %89 ]
  call void @msi_lock_descs(ptr noundef %74) #11
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 0, ptr %7, align 2, !annotation !18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %6, i8 0, i32 60, i1 false) #11
  %107 = load i8, ptr %54, align 1
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %108, 2
  %110 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %109, ptr noundef nonnull %7) #11
  %111 = load i16, ptr %75, align 2
  %112 = and i16 %111, 4096
  %113 = icmp eq i16 %112, 0
  %114 = load i16, ptr %7, align 2
  br i1 %113, label %117, label %115

115:                                              ; preds = %105
  %116 = or i16 %114, 256
  store i16 %116, ptr %7, align 2
  br label %117

117:                                              ; preds = %115, %105
  %118 = phi i16 [ %116, %115 ], [ %114, %105 ]
  %119 = load i32, ptr @pci_msi_ignore_mask, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = and i16 %118, -257
  store i16 %122, ptr %7, align 2
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi i16 [ %122, %121 ], [ %118, %117 ]
  store i32 %90, ptr %76, align 4
  %125 = trunc i16 %124 to i8
  %126 = lshr i8 %125, 7
  %127 = zext i8 %126 to i16
  %128 = shl nuw nsw i16 %127, 8
  %129 = lshr i16 %124, 1
  %130 = and i16 %129, 128
  %131 = or i16 %128, %130
  %132 = load i32, ptr %79, align 4
  store i32 %132, ptr %80, align 4
  %133 = shl i8 %125, 3
  %134 = and i8 %133, 112
  %135 = zext i8 %134 to i16
  %136 = or i16 %131, %135
  %137 = add i32 %90, -1
  %138 = call i32 @llvm.ctlz.i32(i32 %137, i1 false) #11, !range !23
  %139 = sub nuw nsw i32 32, %138
  %140 = shl nuw i32 1, %139
  %141 = call i32 @llvm.ctlz.i32(i32 %140, i1 true), !range !23
  %142 = icmp eq i32 %137, 0
  %143 = trunc i32 %141 to i16
  %144 = shl nuw nsw i16 %143, 1
  %145 = and i16 %144, 14
  %146 = xor i16 %145, 14
  %147 = select i1 %142, i16 0, i16 %146
  %148 = or i16 %147, %136
  store i16 %148, ptr %78, align 4
  store ptr %106, ptr %81, align 4
  %149 = and i16 %124, 128
  %150 = icmp eq i16 %149, 0
  %151 = load i8, ptr %54, align 1
  %152 = select i1 %150, i8 12, i8 16
  %153 = add i8 %151, %152
  store i8 %153, ptr %82, align 4
  %154 = icmp eq i16 %130, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %123
  %156 = zext i8 %153 to i32
  %157 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %156, ptr noundef %77) #11
  br label %158

158:                                              ; preds = %155, %123
  %159 = call i32 @msi_add_msi_desc(ptr noundef %74, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #11
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %215

161:                                              ; preds = %158
  %162 = call ptr @msi_first_desc(ptr noundef %74, i32 noundef 0) #11
  %163 = getelementptr inbounds %struct.msi_desc, ptr %162, i32 0, i32 9, i32 1
  %164 = load i16, ptr %163, align 4
  %165 = lshr i16 %164, 4
  %166 = and i16 %165, 7
  %167 = icmp ugt i16 %166, 4
  %168 = zext i16 %166 to i32
  %169 = shl nuw nsw i32 1, %168
  %170 = shl nsw i32 -1, %169
  %171 = xor i32 %170, -1
  %172 = select i1 %167, i32 -1, i32 %171
  call fastcc void @pci_msi_update_mask(ptr noundef %162, i32 noundef 0, i32 noundef %172) #11
  %173 = call i32 @pci_msi_setup_msi_irqs(ptr noundef %0, i32 noundef %90, i32 noundef 5) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %210

175:                                              ; preds = %161
  %176 = load i40, ptr %14, align 1
  %177 = and i40 %176, 128
  %178 = icmp eq i40 %177, 0
  br i1 %178, label %193, label %179

179:                                              ; preds = %175
  %180 = call ptr @msi_first_desc(ptr noundef %74, i32 noundef 0) #11
  %181 = icmp eq ptr %180, null
  br i1 %181, label %193, label %182

182:                                              ; preds = %187, %179
  %183 = phi ptr [ %188, %187 ], [ %180, %179 ]
  %184 = getelementptr inbounds %struct.msi_desc, ptr %183, i32 0, i32 3, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = call ptr @msi_next_desc(ptr noundef %74, i32 noundef 0) #11
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %182

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.msi_desc, ptr %183, i32 0, i32 3
  %192 = load i32, ptr %191, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.2, i32 noundef %185, i32 noundef %192) #12
  br label %210

193:                                              ; preds = %187, %179, %175
  %194 = load i16, ptr %75, align 2
  %195 = and i16 %194, 1
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  call void @pci_intx(ptr noundef %0, i32 noundef 0) #11
  br label %198

198:                                              ; preds = %197, %193
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i16 0, ptr %5, align 2, !annotation !18
  %199 = load i8, ptr %54, align 1
  %200 = zext i8 %199 to i32
  %201 = add nuw nsw i32 %200, 2
  %202 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %201, ptr noundef nonnull %5) #11
  %203 = load i16, ptr %5, align 2
  %204 = or i16 %203, 1
  store i16 %204, ptr %5, align 2
  %205 = load i8, ptr %54, align 1
  %206 = zext i8 %205 to i32
  %207 = add nuw nsw i32 %206, 2
  %208 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %207, i16 noundef zeroext %204) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  call void @pcibios_free_irq(ptr noundef %0) #11
  %209 = load i32, ptr %162, align 4
  store i32 %209, ptr %79, align 4
  br label %219

210:                                              ; preds = %190, %161
  %211 = phi i32 [ %173, %161 ], [ -5, %190 ]
  call fastcc void @pci_msi_update_mask(ptr noundef %162, i32 noundef %172, i32 noundef 0) #11
  call void @pci_msi_teardown_msi_irqs(ptr noundef %0) #11
  %212 = load ptr, ptr %83, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  call void @iounmap(ptr noundef nonnull %212) #11
  store ptr null, ptr %83, align 4
  br label %215

215:                                              ; preds = %214, %210, %158
  %216 = phi i32 [ %159, %158 ], [ %211, %210 ], [ %211, %214 ]
  %217 = load i40, ptr %14, align 1
  %218 = and i40 %217, -4097
  store i40 %218, ptr %14, align 1
  br label %219

219:                                              ; preds = %215, %198
  %220 = phi i32 [ %216, %215 ], [ 0, %198 ]
  call void @msi_unlock_descs(ptr noundef %74) #11
  call void @kfree(ptr noundef %106) #11
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = icmp slt i32 %220, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %222
  %225 = icmp slt i32 %220, %1
  br i1 %225, label %226, label %84

226:                                              ; preds = %224, %222, %219, %86, %68, %58, %57, %52, %43, %41, %34, %28, %13, %4
  %227 = phi i32 [ -22, %41 ], [ -22, %34 ], [ -34, %43 ], [ -22, %52 ], [ -28, %58 ], [ %69, %68 ], [ -22, %57 ], [ -22, %4 ], [ -22, %13 ], [ -28, %224 ], [ %220, %222 ], [ %90, %219 ], [ -28, %86 ], [ -22, %28 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_msix_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call fastcc i32 @__pci_enable_msix_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pci_enable_msix_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.msi_desc, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = icmp slt i32 %3, %2
  br i1 %15, label %312, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %18 = load i40, ptr %17, align 1
  %19 = and i40 %18, 8192
  %20 = icmp ne i40 %19, 0
  %21 = load i1, ptr @__pci_enable_msix_range.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !14

24:                                               ; preds = %16
  store i1 true, ptr @__pci_enable_msix_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 938, i32 noundef 9, ptr noundef null) #11
  br label %25

25:                                               ; preds = %24, %16
  br i1 %20, label %312, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %28 = tail call i32 @msi_setup_device_data(ptr noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %312

30:                                               ; preds = %26
  %31 = load i40, ptr %17, align 1
  %32 = and i40 %31, 786432
  %33 = icmp eq i40 %32, 262144
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = tail call i32 @devm_add_action(ptr noundef %27, ptr noundef nonnull @pcim_msi_release, ptr noundef %0) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %312

37:                                               ; preds = %34
  %38 = load i40, ptr %17, align 1
  %39 = or i40 %38, 524288
  store i40 %39, ptr %17, align 1
  br label %40

40:                                               ; preds = %37, %30
  %41 = icmp eq ptr %4, null
  %42 = icmp eq ptr %0, null
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 20
  %46 = and i32 %5, 16
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq ptr %1, null
  %49 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57
  %50 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 1
  %51 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 9
  %52 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 9, i32 1
  %53 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %54 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 9, i32 1, i32 1
  %55 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 9, i32 2
  %56 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 8
  %57 = getelementptr inbounds %struct.msi_desc, ptr %10, i32 0, i32 4
  br label %58

58:                                               ; preds = %309, %40
  %59 = phi i32 [ %3, %40 ], [ %310, %309 ]
  br i1 %41, label %63, label %60

60:                                               ; preds = %58
  %61 = call i32 @irq_calc_affinity_vectors(i32 noundef %2, i32 noundef %59, ptr noundef nonnull %4) #11
  %62 = icmp slt i32 %61, %2
  br i1 %62, label %312, label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %61, %60 ], [ %59, %58 ]
  %65 = load i1, ptr @pci_msi_enable, align 4
  %66 = or i1 %42, %65
  br i1 %66, label %312, label %67

67:                                               ; preds = %63
  %68 = load i40, ptr %17, align 1
  %69 = and i40 %68, 64
  %70 = icmp ne i40 %69, 0
  %71 = icmp slt i32 %64, 1
  %72 = or i1 %71, %70
  br i1 %72, label %312, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %43, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %80

76:                                               ; preds = %80
  %77 = getelementptr inbounds %struct.pci_bus, ptr %81, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76, %73
  %81 = phi ptr [ %78, %76 ], [ %74, %73 ]
  %82 = getelementptr inbounds %struct.pci_bus, ptr %81, i32 0, i32 19
  %83 = load i16, ptr %82, align 2
  %84 = and i16 %83, 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %76, label %312

86:                                               ; preds = %76, %73
  %87 = load i32, ptr %44, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %312

89:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #11
  store i16 0, ptr %14, align 2, !annotation !18
  %90 = load i8, ptr %45, align 2
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  br label %312

93:                                               ; preds = %89
  %94 = zext i8 %90 to i32
  %95 = add nuw nsw i32 %94, 2
  %96 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %95, ptr noundef nonnull %14) #11
  %97 = load i16, ptr %14, align 2
  %98 = and i16 %97, 2047
  %99 = add nuw nsw i16 %98, 1
  %100 = zext i16 %99 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  %101 = icmp sgt i32 %64, %100
  %102 = and i1 %47, %101
  br i1 %102, label %309, label %103

103:                                              ; preds = %93
  br i1 %48, label %122, label %106

104:                                              ; preds = %114, %111
  %105 = icmp eq i32 %112, %64
  br i1 %105, label %122, label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ %112, %104 ], [ 0, %103 ]
  %108 = getelementptr %struct.msix_entry, ptr %1, i32 %107, i32 1
  %109 = load i16, ptr %108, align 4
  %110 = icmp ult i16 %98, %109
  br i1 %110, label %312, label %111

111:                                              ; preds = %106
  %112 = add nuw nsw i32 %107, 1
  %113 = icmp slt i32 %112, %64
  br i1 %113, label %117, label %104

114:                                              ; preds = %117
  %115 = add nuw i32 %118, 1
  %116 = icmp eq i32 %115, %64
  br i1 %116, label %104, label %117

117:                                              ; preds = %114, %111
  %118 = phi i32 [ %115, %114 ], [ %112, %111 ]
  %119 = getelementptr %struct.msix_entry, ptr %1, i32 %118, i32 1
  %120 = load i16, ptr %119, align 4
  %121 = icmp eq i16 %109, %120
  br i1 %121, label %312, label %114

122:                                              ; preds = %104, %103
  %123 = load i40, ptr %17, align 1
  %124 = and i40 %123, 4096
  %125 = icmp eq i40 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.3) #12
  br label %312

127:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i16 0, ptr %13, align 2, !annotation !18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #11
  store i16 0, ptr %12, align 2, !annotation !18
  %128 = load i8, ptr %45, align 2
  %129 = zext i8 %128 to i32
  %130 = add nuw nsw i32 %129, 2
  %131 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %130, ptr noundef nonnull %12) #11
  %132 = load i16, ptr %12, align 2
  %133 = or i16 %132, -16384
  store i16 %133, ptr %12, align 2
  %134 = load i8, ptr %45, align 2
  %135 = zext i8 %134 to i32
  %136 = add nuw nsw i32 %135, 2
  %137 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %136, i16 noundef zeroext %133) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  %138 = load i40, ptr %17, align 1
  %139 = or i40 %138, 8192
  store i40 %139, ptr %17, align 1
  %140 = load i8, ptr %45, align 2
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %141, 2
  %143 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %142, ptr noundef nonnull %13) #11
  %144 = load i16, ptr %13, align 2
  %145 = and i16 %144, 2047
  %146 = add nuw nsw i16 %145, 1
  %147 = zext i16 %146 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !annotation !18
  %148 = load i8, ptr %45, align 2
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %149, 4
  %151 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %150, ptr noundef nonnull %11) #11
  %152 = load i32, ptr %11, align 4
  %153 = and i32 %152, 7
  %154 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %153, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %155, 536870912
  %158 = icmp eq i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %161, label %160

160:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  br label %294

161:                                              ; preds = %127
  %162 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %153
  %163 = and i32 %152, -8
  store i32 %163, ptr %11, align 4
  %164 = load i32, ptr %162, align 8
  %165 = add i32 %164, %163
  %166 = shl nuw nsw i32 %147, 4
  %167 = call ptr @ioremap(i32 noundef %165, i32 noundef %166) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %168 = icmp eq ptr %167, null
  br i1 %168, label %294, label %169

169:                                              ; preds = %161
  store ptr %167, ptr %49, align 4
  br i1 %41, label %172, label %170

170:                                              ; preds = %169
  %171 = call ptr @irq_create_affinity_masks(i32 noundef %64, ptr noundef nonnull %4) #11
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi ptr [ %171, %170 ], [ null, %169 ]
  call void @msi_lock_descs(ptr noundef %27) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i16 0, ptr %9, align 2, !annotation !18
  %174 = load i8, ptr %45, align 2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = zext i8 %174 to i32
  %178 = add nuw nsw i32 %177, 2
  %179 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %178, ptr noundef nonnull %9) #11
  %180 = load i16, ptr %9, align 2
  %181 = and i16 %180, 2047
  %182 = add nuw nsw i16 %181, 1
  %183 = zext i16 %182 to i32
  br label %184

184:                                              ; preds = %176, %172
  %185 = phi i32 [ %183, %176 ], [ -22, %172 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %10, i8 0, i64 52, i1 false) #11
  store i32 1, ptr %50, align 4
  store i16 257, ptr %52, align 4
  %186 = load i32, ptr %53, align 4
  store i32 %186, ptr %54, align 4
  store ptr %167, ptr %55, align 4
  %187 = icmp sgt i32 %64, 0
  br i1 %187, label %188, label %227

188:                                              ; preds = %184
  %189 = icmp eq ptr %173, null
  br label %190

190:                                              ; preds = %222, %188
  %191 = phi i32 [ 0, %188 ], [ %223, %222 ]
  %192 = phi ptr [ %173, %188 ], [ %224, %222 ]
  br i1 %48, label %197, label %193

193:                                              ; preds = %190
  %194 = getelementptr %struct.msix_entry, ptr %1, i32 %191, i32 1
  %195 = load i16, ptr %194, align 4
  %196 = zext i16 %195 to i32
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i32 [ %196, %193 ], [ %191, %190 ]
  %199 = trunc i32 %198 to i16
  store i16 %199, ptr %56, align 4
  %200 = select i1 %189, ptr null, ptr %192
  store ptr %200, ptr %57, align 4
  %201 = and i32 %198, 65535
  %202 = icmp slt i32 %201, %185
  %203 = load i16, ptr %52, align 4
  %204 = select i1 %202, i16 0, i16 512
  %205 = and i16 %203, -641
  %206 = or i16 %205, %204
  %207 = load i32, ptr @pci_msi_ignore_mask, align 4
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, i1 %202, i1 false
  %210 = select i1 %209, i16 128, i16 0
  %211 = or i16 %206, %210
  store i16 %211, ptr %52, align 4
  br i1 %209, label %219, label %212

212:                                              ; preds = %197
  %213 = load ptr, ptr %55, align 4
  %214 = shl i32 %198, 4
  %215 = and i32 %214, 1048560
  %216 = getelementptr i8, ptr %213, i32 12
  %217 = getelementptr i8, ptr %216, i32 %215
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  store i32 %218, ptr %51, align 4
  br label %219

219:                                              ; preds = %212, %197
  %220 = call i32 @msi_add_msi_desc(ptr noundef %27, ptr noundef nonnull %10) #11
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = add nuw nsw i32 %191, 1
  %224 = getelementptr %struct.irq_affinity_desc, ptr %192, i32 1
  %225 = icmp eq i32 %223, %64
  br i1 %225, label %227, label %190

226:                                              ; preds = %219
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %10) #11
  br label %259

227:                                              ; preds = %222, %184
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %10) #11
  %228 = call i32 @pci_msi_setup_msi_irqs(ptr noundef %0, i32 noundef %64, i32 noundef 17) #11
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = load i40, ptr %17, align 1
  %232 = and i40 %231, 128
  %233 = icmp eq i40 %232, 0
  br i1 %233, label %248, label %234

234:                                              ; preds = %230
  %235 = call ptr @msi_first_desc(ptr noundef %27, i32 noundef 0) #11
  %236 = icmp eq ptr %235, null
  br i1 %236, label %248, label %237

237:                                              ; preds = %242, %234
  %238 = phi ptr [ %243, %242 ], [ %235, %234 ]
  %239 = getelementptr inbounds %struct.msi_desc, ptr %238, i32 0, i32 3, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = call ptr @msi_next_desc(ptr noundef %27, i32 noundef 0) #11
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %237

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.msi_desc, ptr %238, i32 0, i32 3
  %247 = load i32, ptr %246, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef %240, i32 noundef %247) #12
  br label %259

248:                                              ; preds = %242, %234, %230
  br i1 %48, label %264, label %249

249:                                              ; preds = %248
  %250 = call ptr @msi_first_desc(ptr noundef %27, i32 noundef 0) #11
  %251 = icmp eq ptr %250, null
  br i1 %251, label %264, label %252

252:                                              ; preds = %252, %249
  %253 = phi ptr [ %257, %252 ], [ %250, %249 ]
  %254 = phi ptr [ %256, %252 ], [ %1, %249 ]
  %255 = load i32, ptr %253, align 4
  store i32 %255, ptr %254, align 4
  %256 = getelementptr %struct.msix_entry, ptr %254, i32 1
  %257 = call ptr @msi_next_desc(ptr noundef %27, i32 noundef 0) #11
  %258 = icmp eq ptr %257, null
  br i1 %258, label %264, label %252

259:                                              ; preds = %245, %227, %226
  %260 = phi i32 [ %220, %226 ], [ %228, %227 ], [ -5, %245 ]
  call void @pci_msi_teardown_msi_irqs(ptr noundef %0) #11
  %261 = load ptr, ptr %49, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  call void @iounmap(ptr noundef nonnull %261) #11
  store ptr null, ptr %49, align 4
  br label %264

264:                                              ; preds = %263, %259, %252, %249, %248
  %265 = phi i32 [ 0, %248 ], [ 0, %249 ], [ %260, %259 ], [ %260, %263 ], [ 0, %252 ]
  call void @msi_unlock_descs(ptr noundef %27) #11
  call void @kfree(ptr noundef %173) #11
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %294

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %269 = load i16, ptr %268, align 2
  %270 = and i16 %269, 1
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %267
  call void @pci_intx(ptr noundef %0, i32 noundef 0) #11
  br label %273

273:                                              ; preds = %272, %267
  %274 = load i32, ptr @pci_msi_ignore_mask, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %276, %273
  %277 = phi i32 [ %280, %276 ], [ 0, %273 ]
  %278 = phi ptr [ %281, %276 ], [ %167, %273 ]
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  call void @arm_heavy_mb() #11
  %279 = getelementptr i8, ptr %278, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 1) #11, !srcloc !9
  %280 = add nuw nsw i32 %277, 1
  %281 = getelementptr i8, ptr %278, i32 16
  %282 = icmp eq i32 %280, %147
  br i1 %282, label %283, label %276

283:                                              ; preds = %276, %273
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i16 0, ptr %8, align 2, !annotation !18
  %284 = load i8, ptr %45, align 2
  %285 = zext i8 %284 to i32
  %286 = add nuw nsw i32 %285, 2
  %287 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %286, ptr noundef nonnull %8) #11
  %288 = load i16, ptr %8, align 2
  %289 = and i16 %288, -16385
  store i16 %289, ptr %8, align 2
  %290 = load i8, ptr %45, align 2
  %291 = zext i8 %290 to i32
  %292 = add nuw nsw i32 %291, 2
  %293 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %292, i16 noundef zeroext %289) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  call void @pcibios_free_irq(ptr noundef %0) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br label %312

294:                                              ; preds = %264, %161, %160
  %295 = phi i32 [ %265, %264 ], [ -12, %161 ], [ -12, %160 ]
  %296 = load i40, ptr %17, align 1
  %297 = and i40 %296, -8193
  store i40 %297, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #11
  store i16 0, ptr %7, align 2, !annotation !18
  %298 = load i8, ptr %45, align 2
  %299 = zext i8 %298 to i32
  %300 = add nuw nsw i32 %299, 2
  %301 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %300, ptr noundef nonnull %7) #11
  %302 = load i16, ptr %7, align 2
  %303 = and i16 %302, 16383
  store i16 %303, ptr %7, align 2
  %304 = load i8, ptr %45, align 2
  %305 = zext i8 %304 to i32
  %306 = add nuw nsw i32 %305, 2
  %307 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %306, i16 noundef zeroext %303) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  %308 = icmp slt i32 %295, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %294, %93
  %310 = phi i32 [ %295, %294 ], [ %100, %93 ]
  %311 = icmp slt i32 %310, %2
  br i1 %311, label %312, label %58

312:                                              ; preds = %309, %294, %283, %126, %117, %106, %92, %86, %80, %67, %63, %60, %34, %26, %25, %6
  %313 = phi i32 [ -34, %6 ], [ -22, %25 ], [ %64, %283 ], [ %35, %34 ], [ %28, %26 ], [ -22, %92 ], [ -22, %126 ], [ -22, %117 ], [ -22, %106 ], [ -22, %80 ], [ -22, %86 ], [ -22, %63 ], [ -22, %67 ], [ -28, %309 ], [ %295, %294 ], [ -28, %60 ]
  ret i32 %313
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.irq_affinity, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false)
  %7 = and i32 %3, 8
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq ptr %4, null
  br i1 %8, label %12, label %10

10:                                               ; preds = %5
  %11 = select i1 %9, ptr %6, ptr %4
  br label %14

12:                                               ; preds = %5
  br i1 %9, label %14, label %13, !prof !12

13:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1016, i32 noundef 9, ptr noundef null) #11
  br label %14

14:                                               ; preds = %13, %12, %10
  %15 = phi ptr [ %11, %10 ], [ null, %13 ], [ null, %12 ]
  %16 = and i32 %3, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call fastcc i32 @__pci_enable_msix_range(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef %15, i32 noundef %3)
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ %19, %18 ], [ -28, %14 ]
  %23 = and i32 %3, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call fastcc i32 @__pci_enable_msi_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %15)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %26, %25 ], [ %22, %21 ]
  %30 = and i32 %3, 1
  %31 = icmp ne i32 %30, 0
  %32 = icmp eq i32 %1, 1
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = icmp eq ptr %15, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = call ptr @irq_create_affinity_masks(i32 noundef 1, ptr noundef nonnull %15) #11
  br label %42

42:                                               ; preds = %40, %38
  call void @pci_intx(ptr noundef %0, i32 noundef 1) #11
  br label %43

43:                                               ; preds = %42, %34, %28, %25, %18
  %44 = phi i32 [ 1, %42 ], [ %19, %18 ], [ %26, %25 ], [ %29, %34 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #11
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_create_affinity_masks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_free_irq_vectors(ptr noundef %0) #0 {
  tail call void @pci_disable_msix(ptr noundef %0)
  tail call void @pci_disable_msi(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_irq_vector(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 12288
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %11 = load i32, ptr %10, align 4
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %14 = tail call i32 @msi_get_virq(ptr noundef %13, i32 noundef %1) #11
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 -22, i32 %14
  br label %17

17:                                               ; preds = %12, %9, %7
  %18 = phi i32 [ %16, %12 ], [ %11, %9 ], [ -22, %7 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_irq_get_affinity(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 12288
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 46
  %11 = load i32, ptr %10, align 4
  br label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %14 = tail call i32 @msi_get_virq(ptr noundef %13, i32 noundef %1) #11
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 -22, i32 %14
  br label %17

17:                                               ; preds = %12, %9, %7
  %18 = phi i32 [ %16, %12 ], [ %11, %9 ], [ -22, %7 ]
  %19 = icmp slt i32 %18, 1
  %20 = load i1, ptr @pci_irq_get_affinity.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !14

23:                                               ; preds = %17
  store i1 true, ptr @pci_irq_get_affinity.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1106, i32 noundef 9, ptr noundef null) #11
  br label %24

24:                                               ; preds = %23, %17
  br i1 %19, label %44, label %25

25:                                               ; preds = %24
  %26 = tail call ptr @irq_get_irq_data(i32 noundef %18) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.irq_data, ptr %26, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.irq_common_data, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.msi_desc, ptr %32, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i40, ptr %3, align 1
  %40 = and i40 %39, 4096
  %41 = icmp eq i40 %40, 0
  %42 = select i1 %41, i32 0, i32 %1
  %43 = getelementptr %struct.irq_affinity_desc, ptr %36, i32 %42
  br label %44

44:                                               ; preds = %38, %34, %28, %25, %24
  %45 = phi ptr [ %43, %38 ], [ null, %24 ], [ @__cpu_possible_mask, %28 ], [ null, %34 ], [ @__cpu_possible_mask, %25 ]
  ret ptr %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_no_msi() local_unnamed_addr #6 {
  store i1 true, ptr @pci_msi_enable, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_msi_enabled() #7 {
  %1 = load i1, ptr @pci_msi_enable, align 4
  %2 = xor i1 %1, true
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_msi_update_mask(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1008
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #11
  %14 = xor i32 %1, -1
  %15 = load i32, ptr %9, align 4
  %16 = and i32 %15, %14
  %17 = or i32 %16, %2
  store i32 %17, ptr %9, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr i8, ptr %18, i32 -136
  %20 = getelementptr inbounds %struct.msi_desc, ptr %0, i32 0, i32 9, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = tail call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef %22, i32 noundef %17) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #11
  br label %24

24:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_first_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_next_desc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcibios_alloc_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_teardown_msi_irqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_setup_msi_context(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = tail call i32 @msi_setup_device_data(ptr noundef %2) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %7 = load i40, ptr %6, align 1
  %8 = and i40 %7, 786432
  %9 = icmp eq i40 %8, 262144
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @pcim_msi_release, ptr noundef %0) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i40, ptr %6, align 1
  %15 = or i40 %14, 524288
  store i40 %15, ptr %6, align 1
  br label %16

16:                                               ; preds = %13, %10, %5, %1
  %17 = phi i32 [ %3, %1 ], [ 0, %5 ], [ 0, %13 ], [ %11, %10 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_calc_affinity_vectors(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_setup_device_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcim_msi_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, -524289
  store i40 %4, ptr %2, align 1
  tail call void @pci_disable_msix(ptr noundef %0) #11
  tail call void @pci_disable_msi(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msi_setup_msi_irqs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_free_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_add_msi_desc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2153220799}
!9 = !{i64 2485746}
!10 = !{i64 2486164}
!11 = !{i64 2153221448}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153224763, i64 2153225249, i64 2153224800, i64 2153224856, i64 2153224890, i64 2153224914, i64 2153224955, i64 2153224976, i64 2153225004, i64 2153225038}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153226825}
!16 = !{i64 2153227142}
!17 = !{i64 2153227459}
!18 = !{!"auto-init"}
!19 = !{i64 2153227721}
!20 = !{i64 2153228061}
!21 = !{i64 2153228395}
!22 = !{i64 2153228846}
!23 = !{i32 0, i32 33}
!24 = !{i64 2153233936}
!25 = !{i64 2153234298}
