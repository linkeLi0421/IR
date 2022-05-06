; ModuleID = '/llk/IR/kernel/irq/chip.c_pt.bc'
source_filename = "../kernel/irq/chip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_irq_type:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_irq_type\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_irq_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_handler_data:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_handler_data\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_handler_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_chip_data:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_chip_data\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_chip_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_irq_data:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_irq_data\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_irq_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_nested_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_nested_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_nested_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_simple_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_simple_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_simple_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_untracked_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_untracked_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_untracked_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_level_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_level_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_level_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_fasteoi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_fasteoi_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_fasteoi_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_fasteoi_nmi:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_fasteoi_nmi\22\09\09\09\09\09"
module asm "__kstrtabns_handle_fasteoi_nmi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_edge_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_edge_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_edge_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_set_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_set_handler\22\09\09\09\09\09"
module asm "__kstrtabns___irq_set_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_chained_handler_and_data:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_chained_handler_and_data\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_chained_handler_and_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_chip_and_handler_name:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_chip_and_handler_name\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_chip_and_handler_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_modify_status:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_modify_status\22\09\09\09\09\09"
module asm "__kstrtabns_irq_modify_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_fasteoi_ack_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_fasteoi_ack_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_fasteoi_ack_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_fasteoi_mask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_fasteoi_mask_irq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_fasteoi_mask_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_set_parent_state:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_set_parent_state\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_set_parent_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_get_parent_state:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_get_parent_state\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_get_parent_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_enable_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_enable_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_enable_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_disable_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_disable_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_disable_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_ack_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_ack_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_ack_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_mask_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_mask_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_mask_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_mask_ack_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_mask_ack_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_mask_ack_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_unmask_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_unmask_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_unmask_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_eoi_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_eoi_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_eoi_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_set_affinity_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_set_affinity_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_set_affinity_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_set_type_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_set_type_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_set_type_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_retrigger_hierarchy:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_retrigger_hierarchy\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_retrigger_hierarchy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_set_vcpu_affinity_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_set_vcpu_affinity_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_set_vcpu_affinity_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_set_wake_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_set_wake_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_set_wake_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_request_resources_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_request_resources_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_request_resources_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_chip_release_resources_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_chip_release_resources_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_chip_release_resources_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@chained_action = dso_local global %struct.irqaction { ptr @bad_chained_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, [12 x i8] undef }, align 64
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@__kstrtab_irq_set_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_chip to i32), ptr @__kstrtab_irq_set_chip, ptr @__kstrtabns_irq_set_chip }, section "___ksymtab+irq_set_chip", align 4
@__kstrtab_irq_set_irq_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_irq_type = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_irq_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_irq_type to i32), ptr @__kstrtab_irq_set_irq_type, ptr @__kstrtabns_irq_set_irq_type }, section "___ksymtab+irq_set_irq_type", align 4
@__kstrtab_irq_set_handler_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_handler_data = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_handler_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_handler_data to i32), ptr @__kstrtab_irq_set_handler_data, ptr @__kstrtabns_irq_set_handler_data }, section "___ksymtab+irq_set_handler_data", align 4
@__kstrtab_irq_set_chip_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_chip_data = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_chip_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_chip_data to i32), ptr @__kstrtab_irq_set_chip_data, ptr @__kstrtabns_irq_set_chip_data }, section "___ksymtab+irq_set_chip_data", align 4
@__kstrtab_irq_get_irq_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_irq_data = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_irq_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_irq_data to i32), ptr @__kstrtab_irq_get_irq_data, ptr @__kstrtabns_irq_get_irq_data }, section "___ksymtab_gpl+irq_get_irq_data", align 4
@.str = private unnamed_addr constant [18 x i8] c"kernel/irq/chip.c\00", align 1
@__kstrtab_handle_nested_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_nested_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_nested_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_nested_irq to i32), ptr @__kstrtab_handle_nested_irq, ptr @__kstrtabns_handle_nested_irq }, section "___ksymtab_gpl+handle_nested_irq", align 4
@__kstrtab_handle_simple_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_simple_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_simple_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_simple_irq to i32), ptr @__kstrtab_handle_simple_irq, ptr @__kstrtabns_handle_simple_irq }, section "___ksymtab_gpl+handle_simple_irq", align 4
@__kstrtab_handle_untracked_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_untracked_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_untracked_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_untracked_irq to i32), ptr @__kstrtab_handle_untracked_irq, ptr @__kstrtabns_handle_untracked_irq }, section "___ksymtab_gpl+handle_untracked_irq", align 4
@__kstrtab_handle_level_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_level_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_level_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_level_irq to i32), ptr @__kstrtab_handle_level_irq, ptr @__kstrtabns_handle_level_irq }, section "___ksymtab_gpl+handle_level_irq", align 4
@__kstrtab_handle_fasteoi_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_fasteoi_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_fasteoi_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_fasteoi_irq to i32), ptr @__kstrtab_handle_fasteoi_irq, ptr @__kstrtabns_handle_fasteoi_irq }, section "___ksymtab_gpl+handle_fasteoi_irq", align 4
@__kstrtab_handle_fasteoi_nmi = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_fasteoi_nmi = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_fasteoi_nmi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_fasteoi_nmi to i32), ptr @__kstrtab_handle_fasteoi_nmi, ptr @__kstrtabns_handle_fasteoi_nmi }, section "___ksymtab_gpl+handle_fasteoi_nmi", align 4
@__kstrtab_handle_edge_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_edge_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_edge_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_edge_irq to i32), ptr @__kstrtab_handle_edge_irq, ptr @__kstrtabns_handle_edge_irq }, section "___ksymtab+handle_edge_irq", align 4
@handle_percpu_devid_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013Spurious%s percpu IRQ%u on CPU%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" and unmasked\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab___irq_set_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_set_handler = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_set_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_set_handler to i32), ptr @__kstrtab___irq_set_handler, ptr @__kstrtabns___irq_set_handler }, section "___ksymtab_gpl+__irq_set_handler", align 4
@__kstrtab_irq_set_chained_handler_and_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_chained_handler_and_data = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_chained_handler_and_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_chained_handler_and_data to i32), ptr @__kstrtab_irq_set_chained_handler_and_data, ptr @__kstrtabns_irq_set_chained_handler_and_data }, section "___ksymtab_gpl+irq_set_chained_handler_and_data", align 4
@__kstrtab_irq_set_chip_and_handler_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_chip_and_handler_name = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_chip_and_handler_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_chip_and_handler_name to i32), ptr @__kstrtab_irq_set_chip_and_handler_name, ptr @__kstrtabns_irq_set_chip_and_handler_name }, section "___ksymtab_gpl+irq_set_chip_and_handler_name", align 4
@irq_modify_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_modify_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_modify_status = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_modify_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_modify_status to i32), ptr @__kstrtab_irq_modify_status, ptr @__kstrtabns_irq_modify_status }, section "___ksymtab_gpl+irq_modify_status", align 4
@__kstrtab_handle_fasteoi_ack_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_fasteoi_ack_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_fasteoi_ack_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_fasteoi_ack_irq to i32), ptr @__kstrtab_handle_fasteoi_ack_irq, ptr @__kstrtabns_handle_fasteoi_ack_irq }, section "___ksymtab_gpl+handle_fasteoi_ack_irq", align 4
@__kstrtab_handle_fasteoi_mask_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_fasteoi_mask_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_fasteoi_mask_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_fasteoi_mask_irq to i32), ptr @__kstrtab_handle_fasteoi_mask_irq, ptr @__kstrtabns_handle_fasteoi_mask_irq }, section "___ksymtab_gpl+handle_fasteoi_mask_irq", align 4
@__kstrtab_irq_chip_set_parent_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_set_parent_state = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_set_parent_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_set_parent_state to i32), ptr @__kstrtab_irq_chip_set_parent_state, ptr @__kstrtabns_irq_chip_set_parent_state }, section "___ksymtab_gpl+irq_chip_set_parent_state", align 4
@__kstrtab_irq_chip_get_parent_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_get_parent_state = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_get_parent_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_get_parent_state to i32), ptr @__kstrtab_irq_chip_get_parent_state, ptr @__kstrtabns_irq_chip_get_parent_state }, section "___ksymtab_gpl+irq_chip_get_parent_state", align 4
@__kstrtab_irq_chip_enable_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_enable_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_enable_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_enable_parent to i32), ptr @__kstrtab_irq_chip_enable_parent, ptr @__kstrtabns_irq_chip_enable_parent }, section "___ksymtab_gpl+irq_chip_enable_parent", align 4
@__kstrtab_irq_chip_disable_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_disable_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_disable_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_disable_parent to i32), ptr @__kstrtab_irq_chip_disable_parent, ptr @__kstrtabns_irq_chip_disable_parent }, section "___ksymtab_gpl+irq_chip_disable_parent", align 4
@__kstrtab_irq_chip_ack_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_ack_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_ack_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_ack_parent to i32), ptr @__kstrtab_irq_chip_ack_parent, ptr @__kstrtabns_irq_chip_ack_parent }, section "___ksymtab_gpl+irq_chip_ack_parent", align 4
@__kstrtab_irq_chip_mask_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_mask_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_mask_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_mask_parent to i32), ptr @__kstrtab_irq_chip_mask_parent, ptr @__kstrtabns_irq_chip_mask_parent }, section "___ksymtab_gpl+irq_chip_mask_parent", align 4
@__kstrtab_irq_chip_mask_ack_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_mask_ack_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_mask_ack_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_mask_ack_parent to i32), ptr @__kstrtab_irq_chip_mask_ack_parent, ptr @__kstrtabns_irq_chip_mask_ack_parent }, section "___ksymtab_gpl+irq_chip_mask_ack_parent", align 4
@__kstrtab_irq_chip_unmask_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_unmask_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_unmask_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_unmask_parent to i32), ptr @__kstrtab_irq_chip_unmask_parent, ptr @__kstrtabns_irq_chip_unmask_parent }, section "___ksymtab_gpl+irq_chip_unmask_parent", align 4
@__kstrtab_irq_chip_eoi_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_eoi_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_eoi_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_eoi_parent to i32), ptr @__kstrtab_irq_chip_eoi_parent, ptr @__kstrtabns_irq_chip_eoi_parent }, section "___ksymtab_gpl+irq_chip_eoi_parent", align 4
@__kstrtab_irq_chip_set_affinity_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_set_affinity_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_set_affinity_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_set_affinity_parent to i32), ptr @__kstrtab_irq_chip_set_affinity_parent, ptr @__kstrtabns_irq_chip_set_affinity_parent }, section "___ksymtab_gpl+irq_chip_set_affinity_parent", align 4
@__kstrtab_irq_chip_set_type_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_set_type_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_set_type_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_set_type_parent to i32), ptr @__kstrtab_irq_chip_set_type_parent, ptr @__kstrtabns_irq_chip_set_type_parent }, section "___ksymtab_gpl+irq_chip_set_type_parent", align 4
@__kstrtab_irq_chip_retrigger_hierarchy = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_retrigger_hierarchy = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_retrigger_hierarchy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_retrigger_hierarchy to i32), ptr @__kstrtab_irq_chip_retrigger_hierarchy, ptr @__kstrtabns_irq_chip_retrigger_hierarchy }, section "___ksymtab_gpl+irq_chip_retrigger_hierarchy", align 4
@__kstrtab_irq_chip_set_vcpu_affinity_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_set_vcpu_affinity_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_set_vcpu_affinity_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_set_vcpu_affinity_parent to i32), ptr @__kstrtab_irq_chip_set_vcpu_affinity_parent, ptr @__kstrtabns_irq_chip_set_vcpu_affinity_parent }, section "___ksymtab_gpl+irq_chip_set_vcpu_affinity_parent", align 4
@__kstrtab_irq_chip_set_wake_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_set_wake_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_set_wake_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_set_wake_parent to i32), ptr @__kstrtab_irq_chip_set_wake_parent, ptr @__kstrtabns_irq_chip_set_wake_parent }, section "___ksymtab_gpl+irq_chip_set_wake_parent", align 4
@__kstrtab_irq_chip_request_resources_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_request_resources_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_request_resources_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_request_resources_parent to i32), ptr @__kstrtab_irq_chip_request_resources_parent, ptr @__kstrtabns_irq_chip_request_resources_parent }, section "___ksymtab_gpl+irq_chip_request_resources_parent", align 4
@__kstrtab_irq_chip_release_resources_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_chip_release_resources_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_chip_release_resources_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_chip_release_resources_parent to i32), ptr @__kstrtab_irq_chip_release_resources_parent, ptr @__kstrtabns_irq_chip_release_resources_parent }, section "___ksymtab_gpl+irq_chip_release_resources_parent", align 4
@bad_chained_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Chained irq %d should not call an action\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__irq_startup_managed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__irq_startup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@__tracepoint_irq_handler_entry = external dso_local global %struct.tracepoint, align 4
@__tracepoint_irq_handler_exit = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab___irq_set_handler, ptr @__ksymtab_handle_edge_irq, ptr @__ksymtab_handle_fasteoi_ack_irq, ptr @__ksymtab_handle_fasteoi_irq, ptr @__ksymtab_handle_fasteoi_mask_irq, ptr @__ksymtab_handle_fasteoi_nmi, ptr @__ksymtab_handle_level_irq, ptr @__ksymtab_handle_nested_irq, ptr @__ksymtab_handle_simple_irq, ptr @__ksymtab_handle_untracked_irq, ptr @__ksymtab_irq_chip_ack_parent, ptr @__ksymtab_irq_chip_disable_parent, ptr @__ksymtab_irq_chip_enable_parent, ptr @__ksymtab_irq_chip_eoi_parent, ptr @__ksymtab_irq_chip_get_parent_state, ptr @__ksymtab_irq_chip_mask_ack_parent, ptr @__ksymtab_irq_chip_mask_parent, ptr @__ksymtab_irq_chip_release_resources_parent, ptr @__ksymtab_irq_chip_request_resources_parent, ptr @__ksymtab_irq_chip_retrigger_hierarchy, ptr @__ksymtab_irq_chip_set_affinity_parent, ptr @__ksymtab_irq_chip_set_parent_state, ptr @__ksymtab_irq_chip_set_type_parent, ptr @__ksymtab_irq_chip_set_vcpu_affinity_parent, ptr @__ksymtab_irq_chip_set_wake_parent, ptr @__ksymtab_irq_chip_unmask_parent, ptr @__ksymtab_irq_get_irq_data, ptr @__ksymtab_irq_modify_status, ptr @__ksymtab_irq_set_chained_handler_and_data, ptr @__ksymtab_irq_set_chip, ptr @__ksymtab_irq_set_chip_and_handler_name, ptr @__ksymtab_irq_set_chip_data, ptr @__ksymtab_irq_set_handler_data, ptr @__ksymtab_irq_set_irq_type], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bad_chained_irq(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i1, ptr @bad_chained_irq.__already_done, align 1
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  store i1 true, ptr @bad_chained_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %0) #7
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_chip(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @no_irq_chip, ptr %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, i32 4
  store ptr %8, ptr %9, align 8
  %10 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %10, i1 noundef zeroext false) #7
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_irq_type(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 1) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = call i32 @__irq_set_trigger(ptr noundef nonnull %4, i32 noundef %1) #7
  %8 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %8, i1 noundef zeroext true) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %7, %6 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_set_trigger(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_handler_data(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  %8 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %8, i1 noundef zeroext false) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_msi_desc_off(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = add i32 %1, %0
  %6 = call ptr @__irq_get_desc_lock(i32 noundef %5, ptr noundef nonnull %4, i1 noundef zeroext false, i32 noundef 1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 2
  store ptr %2, ptr %9, align 8
  %10 = icmp eq ptr %2, null
  %11 = icmp ne i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 %0, ptr %2, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, ptr %4, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %6, i32 noundef %15, i1 noundef zeroext false) #7
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ 0, %14 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_msi_desc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 1) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 2
  store ptr %1, ptr %7, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i32 %0, ptr %1, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %11, i1 noundef zeroext false) #7
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ 0, %10 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_set_chip_data(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  %4 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i32 noundef 0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 1, i32 7
  store ptr %1, ptr %7, align 4
  %8 = load i32, ptr %3, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %4, i32 noundef %8, i1 noundef zeroext false) #7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ 0, %6 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_get_irq_data(i32 noundef %0) #0 {
  %2 = tail call ptr @irq_to_desc(i32 noundef %0) #7
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_startup(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_common_data, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  store i32 0, ptr %8, align 4
  %9 = load i32, ptr %6, align 4
  %10 = and i32 %9, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %3
  %13 = and i32 %9, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = and i32 %9, 131072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %94, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %94, label %40

24:                                               ; preds = %12
  %25 = and i32 %9, -65537
  store i32 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load ptr, ptr %5, align 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 131072
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %94, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %94, label %40

40:                                               ; preds = %36, %24, %18
  %41 = phi ptr [ %22, %18 ], [ %29, %24 ], [ %38, %36 ]
  tail call void %41(ptr noundef %4) #7
  %42 = load ptr, ptr %5, align 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, -131073
  store i32 %44, ptr %42, align 4
  br label %94

45:                                               ; preds = %3
  %46 = and i32 %9, 2097152
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = and i32 %9, -8388609
  store i32 %49, ptr %6, align 4
  %50 = load i32, ptr %7, align 4
  %51 = load i32, ptr @__cpu_online_mask, align 4
  %52 = and i32 %50, 65535
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  %55 = tail call i32 @llvm.cttz.i32(i32 %53, i1 true) #7, !range !11
  %56 = select i1 %54, i32 16, i32 %55
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = load i1, ptr @__irq_startup_managed.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %2, i1 %61, i1 false
  br i1 %62, label %63, label %90, !prof !12

63:                                               ; preds = %59
  store i1 true, ptr @__irq_startup_managed.__already_done, align 1
  br label %67

64:                                               ; preds = %48
  %65 = tail call i32 @irq_domain_activate_irq(ptr noundef %4, i1 noundef zeroext false) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %87, label %67, !prof !9

67:                                               ; preds = %64, %63
  %68 = phi i32 [ 210, %63 ], [ 224, %64 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %68, i32 noundef 9, ptr noundef null) #7
  br label %90

69:                                               ; preds = %45
  %70 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.irq_chip, ptr %71, i32 0, i32 33
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = tail call i32 @irq_setup_affinity(ptr noundef %0) #7
  br label %78

78:                                               ; preds = %76, %69
  %79 = tail call fastcc i32 @__irq_startup(ptr noundef %0)
  %80 = load ptr, ptr %70, align 4
  %81 = getelementptr inbounds %struct.irq_chip, ptr %80, i32 0, i32 33
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 1024
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = tail call i32 @irq_setup_affinity(ptr noundef %0) #7
  br label %94

87:                                               ; preds = %64
  %88 = tail call i32 @irq_do_set_affinity(ptr noundef %4, ptr noundef %7, i1 noundef zeroext false) #7
  %89 = tail call fastcc i32 @__irq_startup(ptr noundef %0)
  br label %94

90:                                               ; preds = %67, %59
  %91 = load ptr, ptr %5, align 4
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 8388608
  store i32 %93, ptr %91, align 4
  br label %98

94:                                               ; preds = %87, %85, %78, %40, %36, %31, %18, %15
  %95 = phi i32 [ %89, %87 ], [ %79, %78 ], [ %79, %85 ], [ 0, %15 ], [ 0, %18 ], [ 0, %31 ], [ 0, %36 ], [ 0, %40 ]
  br i1 %1, label %96, label %98

96:                                               ; preds = %94
  %97 = tail call i32 @check_irq_resend(ptr noundef %0, i1 noundef zeroext false) #7
  br label %98

98:                                               ; preds = %96, %94, %90
  %99 = phi i32 [ 0, %90 ], [ %95, %96 ], [ %95, %94 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = and i32 %5, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %33

17:                                               ; preds = %1
  %18 = and i32 %5, -65537
  store i32 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 131072
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %17, %11
  %34 = phi ptr [ %15, %11 ], [ %22, %17 ], [ %31, %29 ]
  tail call void %34(ptr noundef %2) #7
  %35 = load ptr, ptr %3, align 4
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -131073
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %33, %29, %24, %11, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_affinity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__irq_startup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 512
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @__irq_startup.__already_done, align 1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %1
  store i1 true, ptr @__irq_startup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %2) #7
  %19 = load ptr, ptr %3, align 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -65537
  store i32 %21, ptr %19, align 4
  br label %51

22:                                               ; preds = %11
  %23 = load ptr, ptr %3, align 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = and i32 %24, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.irq_chip, ptr %13, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %49

34:                                               ; preds = %22
  %35 = and i32 %24, -65537
  store i32 %35, ptr %23, align 4
  %36 = load ptr, ptr %12, align 8
  %37 = getelementptr inbounds %struct.irq_chip, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load ptr, ptr %3, align 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 131072
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.irq_chip, ptr %36, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %34, %30
  %50 = phi ptr [ %32, %30 ], [ %38, %34 ], [ %47, %45 ]
  tail call void %50(ptr noundef %2) #7
  br label %51

51:                                               ; preds = %49, %17
  %52 = phi i32 [ 0, %49 ], [ %18, %17 ]
  %53 = load ptr, ptr %3, align 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -131073
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %51, %45, %40, %30, %27
  %57 = phi i32 [ 0, %27 ], [ 0, %30 ], [ 0, %40 ], [ 0, %45 ], [ %52, %51 ]
  %58 = load ptr, ptr %3, align 4
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 4194304
  store i32 %60, ptr %58, align 4
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_do_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_irq_resend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_activate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %9 = tail call i32 @irq_domain_activate_irq(ptr noundef %8, i1 noundef zeroext false) #7
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_activate_irq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_activate_and_startup(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2097152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %10 = tail call i32 @irq_domain_activate_irq(ptr noundef %9, i1 noundef zeroext false) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef null) #7
  br label %15

13:                                               ; preds = %8, %2
  %14 = tail call i32 @irq_startup(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext true)
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 0, %12 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_shutdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4194304
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  tail call void %13(ptr noundef %2) #7
  %16 = load ptr, ptr %3, align 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 65536
  store i32 %18, ptr %16, align 4
  br label %47

19:                                               ; preds = %8
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = and i32 %20, 131072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %45

30:                                               ; preds = %19
  %31 = or i32 %20, 65536
  store i32 %31, ptr %4, align 4
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds %struct.irq_chip, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load ptr, ptr %3, align 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.irq_chip, ptr %32, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41, %30, %26
  %46 = phi ptr [ %28, %26 ], [ %34, %30 ], [ %43, %41 ]
  tail call void %46(ptr noundef %2) #7
  br label %47

47:                                               ; preds = %45, %15
  %48 = load ptr, ptr %3, align 4
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 131072
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %41, %36, %26, %23
  %52 = load ptr, ptr %3, align 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -4194305
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_shutdown_and_deactivate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4194304
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  tail call void %13(ptr noundef %2) #7
  %16 = load ptr, ptr %3, align 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 65536
  store i32 %18, ptr %16, align 4
  br label %47

19:                                               ; preds = %8
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = and i32 %20, 131072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.irq_chip, ptr %11, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %45

30:                                               ; preds = %19
  %31 = or i32 %20, 65536
  store i32 %31, ptr %4, align 4
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds %struct.irq_chip, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load ptr, ptr %3, align 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.irq_chip, ptr %32, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41, %30, %26
  %46 = phi ptr [ %28, %26 ], [ %34, %30 ], [ %43, %41 ]
  tail call void %46(ptr noundef %2) #7
  br label %47

47:                                               ; preds = %45, %15
  %48 = load ptr, ptr %3, align 4
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, 131072
  store i32 %50, ptr %48, align 4
  %51 = load ptr, ptr %3, align 4
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %47, %41, %36, %26, %23
  %54 = phi i32 [ %52, %47 ], [ %38, %41 ], [ %38, %36 ], [ %20, %26 ], [ %20, %23 ]
  %55 = phi ptr [ %51, %47 ], [ %37, %41 ], [ %37, %36 ], [ %4, %26 ], [ %4, %23 ]
  %56 = and i32 %54, -4194305
  store i32 %56, ptr %55, align 4
  br label %57

57:                                               ; preds = %53, %1
  tail call void @irq_domain_deactivate_irq(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_deactivate_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmask_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %2) #7
  %15 = load ptr, ptr %3, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -131073
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 524288
  %5 = icmp ne i32 %4, 0
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = and i32 %9, 131072
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %5, i1 %14, i1 false
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.irq_chip, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %39

22:                                               ; preds = %1
  %23 = or i32 %9, 65536
  store i32 %23, ptr %8, align 4
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.irq_chip, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  br i1 %5, label %30, label %44

30:                                               ; preds = %29
  %31 = load ptr, ptr %7, align 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 131072
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.irq_chip, ptr %25, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35, %22, %16
  %40 = phi ptr [ %20, %16 ], [ %27, %22 ], [ %37, %35 ]
  tail call void %40(ptr noundef %6) #7
  %41 = load ptr, ptr %7, align 4
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 131072
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %35, %30, %29, %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_percpu_enable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 16
  tail call void @_set_bit(i32 noundef %1, ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_percpu_disable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 16
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mask_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 131072
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  tail call void %12(ptr noundef %2) #7
  %15 = load ptr, ptr %3, align 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 131072
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unmask_threaded_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 33
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %9) #7
  br label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.irq_chip, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  tail call void %22(ptr noundef %13) #7
  %25 = load ptr, ptr %14, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -131073
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %19, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_nested_irq(i32 noundef %0) #0 {
  %2 = tail call ptr @irq_to_desc(i32 noundef %0) #7
  %3 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -193
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 4
  %8 = load ptr, ptr %7, align 64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %10, %1
  %17 = or i32 %6, 512
  store i32 %17, ptr %4, align 8
  br label %71

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #5, !srcloc !13
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #5, !srcloc !13
  %32 = add i32 %31, ptrtoint (ptr @kstat to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  %39 = load ptr, ptr %11, align 4
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 262144
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %42 = load i16, ptr %3, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %44 = load ptr, ptr %7, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %46, %18
  %47 = phi ptr [ %58, %46 ], [ %44, %18 ]
  %48 = phi i32 [ %56, %46 ], [ 0, %18 ]
  %49 = getelementptr inbounds %struct.irqaction, ptr %47, i32 0, i32 4
  %50 = load ptr, ptr %49, align 16
  %51 = getelementptr inbounds %struct.irqaction, ptr %47, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.irqaction, ptr %47, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %50(i32 noundef %52, ptr noundef %54) #7
  %56 = or i32 %55, %48
  %57 = getelementptr inbounds %struct.irqaction, ptr %47, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %46

60:                                               ; preds = %46, %18
  %61 = phi i32 [ 0, %18 ], [ %56, %46 ]
  %62 = getelementptr inbounds %struct.irq_desc, ptr %2, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 2097152
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  tail call void @note_interrupt(ptr noundef %2, i32 noundef %61) #7
  br label %67

67:                                               ; preds = %66, %60
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #7
  %68 = load ptr, ptr %11, align 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, -262145
  store i32 %70, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %72 = load i16, ptr %3, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @note_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_simple_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 786432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %9, label %53, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %16, label %17, label %53

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -193
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !12

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !9

29:                                               ; preds = %24, %17
  %30 = or i32 %20, 512
  store i32 %30, ptr %18, align 8
  br label %53

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #5, !srcloc !13
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #5, !srcloc !13
  %45 = add i32 %44, ptrtoint (ptr @kstat to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = tail call i32 @handle_irq_event(ptr noundef %0) #7
  br label %53

53:                                               ; preds = %31, %29, %15, %10, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %54 = load i16, ptr %2, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_untracked_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 786432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %9, label %41, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %16, label %17, label %41

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -193
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !12

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !9

29:                                               ; preds = %24, %17
  %30 = or i32 %20, 512
  store i32 %30, ptr %18, align 8
  br label %41

31:                                               ; preds = %24
  %32 = and i32 %19, -705
  store i32 %32, ptr %18, align 8
  %33 = load i32, ptr %25, align 4
  %34 = or i32 %33, 262144
  store i32 %34, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %35 = load i16, ptr %2, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %37 = tail call i32 @__handle_irq_event_percpu(ptr noundef %0) #7
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %38 = load ptr, ptr %3, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -262145
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %31, %29, %15, %10, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %42 = load i16, ptr %2, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__handle_irq_event_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_level_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %3) #7
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 131072
  store i32 %13, ptr %11, align 4
  br label %35

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 131072
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %3) #7
  %25 = load ptr, ptr %15, align 4
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 131072
  store i32 %27, ptr %25, align 4
  %28 = load ptr, ptr %4, align 8
  br label %29

29:                                               ; preds = %24, %20, %14
  %30 = phi ptr [ %5, %14 ], [ %5, %20 ], [ %28, %24 ]
  %31 = getelementptr inbounds %struct.irq_chip, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef %3) #7
  br label %35

35:                                               ; preds = %34, %29, %9
  %36 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 786432
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %42, label %106, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %106, label %48

48:                                               ; preds = %43
  %49 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %49, label %50, label %106

50:                                               ; preds = %48, %35
  %51 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, -193
  store i32 %53, ptr %51, align 8
  %54 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %55 = load ptr, ptr %54, align 64
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57, !prof !12

57:                                               ; preds = %50
  %58 = load ptr, ptr %36, align 4
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 65536
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !9

62:                                               ; preds = %57, %50
  %63 = or i32 %53, 512
  store i32 %63, ptr %51, align 8
  br label %106

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #5, !srcloc !13
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  %75 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %76 = inttoptr i32 %75 to ptr
  %77 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #5, !srcloc !13
  %78 = add i32 %77, ptrtoint (ptr @kstat to i32)
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4
  %85 = tail call i32 @handle_irq_event(ptr noundef %0) #7
  %86 = load ptr, ptr %36, align 4
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 196608
  %89 = icmp eq i32 %88, 131072
  br i1 %89, label %90, label %106

90:                                               ; preds = %64
  %91 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %92 = load i32, ptr %91, align 64
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %87, 131072
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %4, align 8
  %99 = getelementptr inbounds %struct.irq_chip, ptr %98, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  tail call void %100(ptr noundef %3) #7
  %103 = load ptr, ptr %36, align 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, -131073
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %102, %97, %90, %64, %62, %48, %43, %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %107 = load i16, ptr %2, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_fasteoi_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 786432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %12, label %128, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %128, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %19, label %20, label %128

20:                                               ; preds = %18, %1
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, -193
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 64
  %26 = icmp eq ptr %25, null
  %27 = load ptr, ptr %6, align 4
  br i1 %26, label %32, label %28, !prof !12

28:                                               ; preds = %20
  %29 = load i32, ptr %27, align 4
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32, !prof !9

32:                                               ; preds = %28, %20
  %33 = or i32 %23, 512
  store i32 %33, ptr %21, align 8
  %34 = load i32, ptr %27, align 4
  %35 = and i32 %34, 131072
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %128

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.irq_chip, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %128, label %42

42:                                               ; preds = %37
  tail call void %40(ptr noundef %2) #7
  %43 = load ptr, ptr %6, align 4
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 131072
  store i32 %45, ptr %43, align 4
  br label %128

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #5, !srcloc !13
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #5, !srcloc !13
  %60 = add i32 %59, ptrtoint (ptr @kstat to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = load i32, ptr %21, align 8
  %68 = and i32 %67, 32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %46
  %71 = load ptr, ptr %6, align 4
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 131072
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct.irq_chip, ptr %76, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  tail call void %78(ptr noundef %2) #7
  %81 = load ptr, ptr %6, align 4
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 131072
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %80, %75, %70, %46
  %85 = tail call i32 @handle_irq_event(ptr noundef %0) #7
  %86 = load i32, ptr %21, align 8
  %87 = and i32 %86, 32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %91 = load ptr, ptr %90, align 4
  tail call void %91(ptr noundef %2) #7
  br label %125

92:                                               ; preds = %84
  %93 = load ptr, ptr %6, align 4
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 196608
  %96 = icmp eq i32 %95, 131072
  br i1 %96, label %97, label %117

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %99 = load i32, ptr %98, align 64
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef %2) #7
  %104 = load ptr, ptr %6, align 4
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 131072
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %3, align 8
  %110 = getelementptr inbounds %struct.irq_chip, ptr %109, i32 0, i32 9
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %108
  tail call void %111(ptr noundef %2) #7
  %114 = load ptr, ptr %6, align 4
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, -131073
  store i32 %116, ptr %114, align 4
  br label %125

117:                                              ; preds = %97, %92
  %118 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %124 = load ptr, ptr %123, align 4
  tail call void %124(ptr noundef %2) #7
  br label %125

125:                                              ; preds = %122, %117, %113, %108, %101, %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %126 = load i16, ptr %5, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %139

128:                                              ; preds = %42, %37, %32, %18, %13, %11
  %129 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %135 = load ptr, ptr %134, align 4
  tail call void %135(ptr noundef %2) #7
  br label %136

136:                                              ; preds = %133, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %137 = load i16, ptr %5, align 4
  %138 = add i16 %137, 1
  store i16 %138, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %139

139:                                              ; preds = %136, %125
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_fasteoi_nmi(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !13
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #5, !srcloc !13
  %21 = add i32 %20, ptrtoint (ptr @kstat to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = tail call ptr @llvm.thread.pointer() #7
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %39 = tail call i32 @__traceiter_irq_handler_entry(ptr noundef null, i32 noundef %7, ptr noundef %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %40

40:                                               ; preds = %38, %27, %1
  %41 = load ptr, ptr %5, align 64
  %42 = getelementptr inbounds %struct.irqaction, ptr %5, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %41(i32 noundef %7, ptr noundef %43) #7
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = tail call ptr @llvm.thread.pointer() #7
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %59 = tail call i32 @__traceiter_irq_handler_exit(ptr noundef null, i32 noundef %7, ptr noundef %5, i32 noundef %44) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %60

60:                                               ; preds = %58, %47, %40
  %61 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %62(ptr noundef %65) #7
  br label %66

66:                                               ; preds = %64, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_edge_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -193
  store i32 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 786432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %1
  %12 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %3, align 8
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 4
  %21 = load i32, ptr %20, align 4
  br label %55

22:                                               ; preds = %17, %13, %11
  %23 = load i32, ptr %3, align 8
  %24 = or i32 %23, 512
  store i32 %24, ptr %3, align 8
  %25 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  tail call void %29(ptr noundef %25) #7
  %32 = load ptr, ptr %6, align 4
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 131072
  store i32 %34, ptr %32, align 4
  br label %166

35:                                               ; preds = %22
  %36 = load ptr, ptr %6, align 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 131072
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %25) #7
  %45 = load ptr, ptr %6, align 4
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 131072
  store i32 %47, ptr %45, align 4
  %48 = load ptr, ptr %26, align 8
  br label %49

49:                                               ; preds = %44, %40, %35
  %50 = phi ptr [ %27, %35 ], [ %27, %40 ], [ %48, %44 ]
  %51 = getelementptr inbounds %struct.irq_chip, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %166, label %54

54:                                               ; preds = %49
  tail call void %52(ptr noundef %25) #7
  br label %166

55:                                               ; preds = %19, %1
  %56 = phi i32 [ %21, %19 ], [ %8, %1 ]
  %57 = phi ptr [ %20, %19 ], [ %7, %1 ]
  %58 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %59 = and i32 %56, 65536
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %63 = load ptr, ptr %62, align 64
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %61, %55
  %66 = load i32, ptr %3, align 8
  %67 = or i32 %66, 512
  store i32 %67, ptr %3, align 8
  %68 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.irq_chip, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  tail call void %71(ptr noundef %58) #7
  %74 = load ptr, ptr %6, align 4
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, 131072
  store i32 %76, ptr %74, align 4
  br label %166

77:                                               ; preds = %65
  %78 = load i32, ptr %57, align 4
  %79 = and i32 %78, 131072
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.irq_chip, ptr %69, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  tail call void %83(ptr noundef %58) #7
  %86 = load ptr, ptr %6, align 4
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 131072
  store i32 %88, ptr %86, align 4
  %89 = load ptr, ptr %68, align 8
  br label %90

90:                                               ; preds = %85, %81, %77
  %91 = phi ptr [ %69, %77 ], [ %69, %81 ], [ %89, %85 ]
  %92 = getelementptr inbounds %struct.irq_chip, ptr %91, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %166, label %95

95:                                               ; preds = %90
  tail call void %93(ptr noundef %58) #7
  br label %166

96:                                               ; preds = %61
  %97 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = ptrtoint ptr %98 to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %101) #5, !srcloc !13
  %103 = add i32 %102, %99
  %104 = inttoptr i32 %103 to ptr
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  %107 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %108 = inttoptr i32 %107 to ptr
  %109 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #5, !srcloc !13
  %110 = add i32 %109, ptrtoint (ptr @kstat to i32)
  %111 = inttoptr i32 %110 to ptr
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.irq_chip, ptr %118, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  tail call void %120(ptr noundef %58) #7
  br label %121

121:                                              ; preds = %161, %96
  %122 = load ptr, ptr %62, align 64
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %138, !prof !12

124:                                              ; preds = %121
  %125 = load ptr, ptr %6, align 4
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 131072
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %124
  %130 = load ptr, ptr %117, align 8
  %131 = getelementptr inbounds %struct.irq_chip, ptr %130, i32 0, i32 7
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %166, label %134

134:                                              ; preds = %129
  tail call void %132(ptr noundef %58) #7
  %135 = load ptr, ptr %6, align 4
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %136, 131072
  store i32 %137, ptr %135, align 4
  br label %166

138:                                              ; preds = %121
  %139 = load i32, ptr %3, align 8
  %140 = and i32 %139, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %156, label %142, !prof !9

142:                                              ; preds = %138
  %143 = load ptr, ptr %6, align 4
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 196608
  %146 = icmp eq i32 %145, 131072
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load ptr, ptr %117, align 8
  %149 = getelementptr inbounds %struct.irq_chip, ptr %148, i32 0, i32 9
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  tail call void %150(ptr noundef %58) #7
  %153 = load ptr, ptr %6, align 4
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, -131073
  store i32 %155, ptr %153, align 4
  br label %156

156:                                              ; preds = %152, %147, %142, %138
  %157 = tail call i32 @handle_irq_event(ptr noundef %0) #7
  %158 = load i32, ptr %3, align 8
  %159 = and i32 %158, 512
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load ptr, ptr %6, align 4
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 65536
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %121, label %166

166:                                              ; preds = %161, %156, %134, %129, %124, %95, %90, %73, %54, %49, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %167 = load i16, ptr %2, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_percpu_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #5, !srcloc !13
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #5, !srcloc !13
  %17 = add i32 %16, ptrtoint (ptr @kstat to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %22(ptr noundef %25) #7
  br label %26

26:                                               ; preds = %24, %1
  %27 = tail call i32 @handle_irq_event_percpu(ptr noundef %0) #7
  %28 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %29(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_irq_event_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_percpu_devid_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !13
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #5, !srcloc !13
  %21 = add i32 %20, ptrtoint (ptr @kstat to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %26(ptr noundef %29) #7
  br label %30

30:                                               ; preds = %28, %1
  %31 = icmp eq ptr %5, null
  br i1 %31, label %74, label %32, !prof !12

32:                                               ; preds = %30
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = tail call ptr @llvm.thread.pointer() #7
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %47 = tail call i32 @__traceiter_irq_handler_entry(ptr noundef null, i32 noundef %7, ptr noundef nonnull %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %48

48:                                               ; preds = %46, %35, %32
  %49 = load ptr, ptr %5, align 64
  %50 = getelementptr inbounds %struct.irqaction, ptr %5, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #5, !srcloc !13
  %56 = add i32 %55, %52
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 %49(i32 noundef %7, ptr noundef %57) #7
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %48
  %62 = tail call ptr @llvm.thread.pointer() #7
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %73 = tail call i32 @__traceiter_irq_handler_exit(ptr noundef null, i32 noundef %7, ptr noundef nonnull %5, i32 noundef %58) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %104

74:                                               ; preds = %30
  %75 = tail call ptr @llvm.thread.pointer() #7
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 16
  %79 = load ptr, ptr %78, align 16
  %80 = lshr i32 %77, 5
  %81 = getelementptr i32, ptr %79, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %77, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %74
  %88 = load ptr, ptr %2, align 8
  %89 = getelementptr inbounds %struct.irq_chip, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.irq_chip, ptr %88, i32 0, i32 7
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi ptr [ %94, %92 ], [ %90, %87 ]
  %97 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %96(ptr noundef %97) #7
  %98 = load ptr, ptr %78, align 16
  tail call void @_clear_bit(i32 noundef %77, ptr noundef %98) #7
  br label %99

99:                                               ; preds = %95, %74
  %100 = load i1, ptr @handle_percpu_devid_irq.__already_done, align 1
  br i1 %100, label %104, label %101, !prof !9

101:                                              ; preds = %99
  store i1 true, ptr @handle_percpu_devid_irq.__already_done, align 1
  %102 = select i1 %86, ptr @.str.3, ptr @.str.2
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %102, i32 noundef %7, i32 noundef %77) #8
  br label %104

104:                                              ; preds = %101, %99, %72, %61, %48
  %105 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %106(ptr noundef %109) #7
  br label %110

110:                                              ; preds = %108, %104
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_percpu_devid_fasteoi_nmi(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #5, !srcloc !13
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #5, !srcloc !13
  %21 = add i32 %20, ptrtoint (ptr @kstat to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = tail call ptr @llvm.thread.pointer() #7
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  %39 = tail call i32 @__traceiter_irq_handler_entry(ptr noundef null, i32 noundef %7, ptr noundef %5) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !21
  br label %40

40:                                               ; preds = %38, %27, %1
  %41 = load ptr, ptr %5, align 64
  %42 = getelementptr inbounds %struct.irqaction, ptr %5, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #5, !srcloc !13
  %48 = add i32 %47, %44
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 %41(i32 noundef %7, ptr noundef %49) #7
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = tail call ptr @llvm.thread.pointer() #7
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %65 = tail call i32 @__traceiter_irq_handler_exit(ptr noundef null, i32 noundef %7, ptr noundef %5, i32 noundef %50) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %66

66:                                               ; preds = %64, %53, %40
  %67 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %68(ptr noundef %71) #7
  br label %72

72:                                               ; preds = %70, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__irq_set_handler(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %5, i1 noundef zeroext true, i32 noundef 0) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  call fastcc void @__irq_do_set_handler(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %9 = load i32, ptr %5, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %6, i32 noundef %9, i1 noundef zeroext true) #7
  br label %10

10:                                               ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__irq_do_set_handler(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9, !prof !24

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, 0
  br label %11

11:                                               ; preds = %18, %9
  %12 = phi ptr [ %7, %9 ], [ %20, %18 ]
  %13 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @no_irq_chip
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  br i1 %10, label %18, label %17, !prof !9

17:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 997, i32 noundef 9, ptr noundef null) #7
  br label %99

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !prof !24

22:                                               ; preds = %18, %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1003, i32 noundef 9, ptr noundef null) #7
  br label %99

23:                                               ; preds = %11
  %24 = icmp eq ptr %1, @handle_bad_irq
  br i1 %24, label %25, label %72

25:                                               ; preds = %23, %4
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, @no_irq_chip
  br i1 %28, label %60, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %31 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef %30) #7
  %35 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 131072
  store i32 %38, ptr %36, align 4
  br label %60

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 131072
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  tail call void %47(ptr noundef %30) #7
  %50 = load ptr, ptr %40, align 4
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 131072
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr %26, align 8
  br label %54

54:                                               ; preds = %49, %45, %39
  %55 = phi ptr [ %27, %39 ], [ %27, %45 ], [ %53, %49 ]
  %56 = getelementptr inbounds %struct.irq_chip, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call void %57(ptr noundef %30) #7
  br label %60

60:                                               ; preds = %59, %54, %34, %25
  %61 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 65536
  store i32 %64, ptr %62, align 4
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  store ptr null, ptr %67, align 64
  br label %68

68:                                               ; preds = %66, %60
  %69 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  store i32 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 3
  store ptr @handle_bad_irq, ptr %70, align 4
  %71 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 33
  store ptr %3, ptr %71, align 16
  br label %99

72:                                               ; preds = %23
  %73 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 3
  store ptr %1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 33
  store ptr %3, ptr %74, align 16
  br i1 %10, label %99, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = tail call i32 @__irq_set_trigger(ptr noundef %0, i32 noundef %79) #7
  store ptr %1, ptr %73, align 4
  %83 = load ptr, ptr %76, align 4
  br label %84

84:                                               ; preds = %81, %75
  %85 = phi ptr [ %83, %81 ], [ %77, %75 ]
  %86 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = or i32 %87, 68608
  store i32 %88, ptr %86, align 4
  %89 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  store ptr @chained_action, ptr %89, align 64
  %90 = load i32, ptr %85, align 4
  %91 = and i32 %90, 2097152
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = tail call i32 @irq_domain_activate_irq(ptr noundef nonnull %7, i1 noundef zeroext false) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96, !prof !9

96:                                               ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef null) #7
  br label %99

97:                                               ; preds = %93, %84
  %98 = tail call i32 @irq_startup(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #7
  br label %99

99:                                               ; preds = %97, %96, %72, %68, %22, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_set_chained_handler_and_data(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 1
  store ptr %2, ptr %8, align 4
  call fastcc void @__irq_do_set_handler(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 1, ptr noundef null)
  %9 = load i32, ptr %4, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %5, i32 noundef %9, i1 noundef zeroext true) #7
  br label %10

10:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_set_chip_and_handler_name(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false, i32 noundef 0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, ptr @no_irq_chip, ptr %1
  %12 = getelementptr inbounds %struct.irq_desc, ptr %7, i32 0, i32 1, i32 4
  store ptr %11, ptr %12, align 8
  %13 = load i32, ptr %6, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %7, i32 noundef %13, i1 noundef zeroext false) #7
  br label %14

14:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !10
  %15 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %5, i1 noundef zeroext true, i32 noundef 0) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  call fastcc void @__irq_do_set_handler(ptr noundef nonnull %15, ptr noundef %2, i32 noundef 0, ptr noundef %3) #7
  %18 = load i32, ptr %5, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %15, i32 noundef %18, i1 noundef zeroext true) #7
  br label %19

19:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_modify_status(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %75, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %2, 4096
  %12 = icmp ne i32 %11, 0
  %13 = and i1 %12, %10
  %14 = load i1, ptr @irq_modify_status.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %7
  store i1 true, ptr @irq_modify_status.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1096, i32 noundef 9, ptr noundef null) #7
  br label %18

18:                                               ; preds = %17, %7
  %19 = and i32 %1, 2096911
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %20
  %24 = and i32 %2, 2096911
  %25 = or i32 %23, %24
  store i32 %25, ptr %21, align 4
  %26 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 15
  %30 = and i32 %28, -44048
  store i32 %30, ptr %27, align 4
  %31 = load i32, ptr %21, align 4
  %32 = and i32 %31, 8192
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %18
  %35 = load ptr, ptr %26, align 4
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 1024
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr %21, align 4
  br label %39

39:                                               ; preds = %34, %18
  %40 = phi i32 [ %38, %34 ], [ %31, %18 ]
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %26, align 4
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, 2048
  store i32 %46, ptr %44, align 4
  %47 = load i32, ptr %21, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i32 [ %47, %43 ], [ %40, %39 ]
  %50 = and i32 %49, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %26, align 4
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 32768
  store i32 %55, ptr %53, align 4
  %56 = load i32, ptr %21, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %56, %52 ], [ %49, %48 ]
  %59 = and i32 %58, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %26, align 4
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 8192
  store i32 %64, ptr %62, align 4
  %65 = load i32, ptr %21, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i32 [ %65, %61 ], [ %58, %57 ]
  %68 = and i32 %67, 15
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 %29, i32 %68
  %71 = load ptr, ptr %26, align 4
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %70, %72
  store i32 %73, ptr %71, align 4
  %74 = load i32, ptr %4, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %5, i32 noundef %74, i1 noundef zeroext false) #7
  br label %75

75:                                               ; preds = %66, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_fasteoi_ack_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 786432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %12, label %131, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %131, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %19, label %20, label %131

20:                                               ; preds = %18, %1
  %21 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, -193
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 64
  %26 = icmp eq ptr %25, null
  %27 = load ptr, ptr %6, align 4
  br i1 %26, label %32, label %28, !prof !12

28:                                               ; preds = %20
  %29 = load i32, ptr %27, align 4
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32, !prof !9

32:                                               ; preds = %28, %20
  %33 = or i32 %23, 512
  store i32 %33, ptr %21, align 8
  %34 = load i32, ptr %27, align 4
  %35 = and i32 %34, 131072
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %131

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds %struct.irq_chip, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %131, label %42

42:                                               ; preds = %37
  tail call void %40(ptr noundef %2) #7
  %43 = load ptr, ptr %6, align 4
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 131072
  store i32 %45, ptr %43, align 4
  br label %131

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #5, !srcloc !13
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #5, !srcloc !13
  %60 = add i32 %59, ptrtoint (ptr @kstat to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = load i32, ptr %21, align 8
  %68 = and i32 %67, 32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %46
  %71 = load ptr, ptr %6, align 4
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 131072
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct.irq_chip, ptr %76, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  tail call void %78(ptr noundef %2) #7
  %81 = load ptr, ptr %6, align 4
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 131072
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %80, %75, %70, %46
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds %struct.irq_chip, ptr %85, i32 0, i32 6
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %2) #7
  %88 = tail call i32 @handle_irq_event(ptr noundef %0) #7
  %89 = load i32, ptr %21, align 8
  %90 = and i32 %89, 32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %2) #7
  br label %128

95:                                               ; preds = %84
  %96 = load ptr, ptr %6, align 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 196608
  %99 = icmp eq i32 %98, 131072
  br i1 %99, label %100, label %120

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %102 = load i32, ptr %101, align 64
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %2) #7
  %107 = load ptr, ptr %6, align 4
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, 131072
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %104
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct.irq_chip, ptr %112, i32 0, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %128, label %116

116:                                              ; preds = %111
  tail call void %114(ptr noundef %2) #7
  %117 = load ptr, ptr %6, align 4
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, -131073
  store i32 %119, ptr %117, align 4
  br label %128

120:                                              ; preds = %100, %95
  %121 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %2) #7
  br label %128

128:                                              ; preds = %125, %120, %116, %111, %104, %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %129 = load i16, ptr %5, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %142

131:                                              ; preds = %42, %37, %32, %18, %13, %11
  %132 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %138 = load ptr, ptr %137, align 4
  tail call void %138(ptr noundef %2) #7
  br label %139

139:                                              ; preds = %136, %131
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %140 = load i16, ptr %5, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %142

142:                                              ; preds = %139, %128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @handle_fasteoi_mask_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %2) #7
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 131072
  store i32 %14, ptr %12, align 4
  br label %36

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 131072
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %2) #7
  %26 = load ptr, ptr %16, align 4
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 131072
  store i32 %28, ptr %26, align 4
  %29 = load ptr, ptr %3, align 8
  br label %30

30:                                               ; preds = %25, %21, %15
  %31 = phi ptr [ %6, %15 ], [ %6, %21 ], [ %29, %25 ]
  %32 = getelementptr inbounds %struct.irq_chip, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef %2) #7
  br label %36

36:                                               ; preds = %35, %30, %10
  %37 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 786432
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = tail call zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) #7
  br i1 %43, label %159, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %159, label %49

49:                                               ; preds = %44
  %50 = tail call zeroext i1 @irq_wait_for_poll(ptr noundef %0) #7
  br i1 %50, label %51, label %159

51:                                               ; preds = %49, %36
  %52 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -193
  store i32 %54, ptr %52, align 8
  %55 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 4
  %56 = load ptr, ptr %55, align 64
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr %37, align 4
  br i1 %57, label %63, label %59, !prof !12

59:                                               ; preds = %51
  %60 = load i32, ptr %58, align 4
  %61 = and i32 %60, 65536
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63, !prof !9

63:                                               ; preds = %59, %51
  %64 = or i32 %54, 512
  store i32 %64, ptr %52, align 8
  %65 = load i32, ptr %58, align 4
  %66 = and i32 %65, 131072
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %159

68:                                               ; preds = %63
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds %struct.irq_chip, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %159, label %73

73:                                               ; preds = %68
  tail call void %71(ptr noundef %2) #7
  %74 = load ptr, ptr %37, align 4
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, 131072
  store i32 %76, ptr %74, align 4
  br label %159

77:                                               ; preds = %59
  %78 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #5, !srcloc !13
  %84 = add i32 %83, %80
  %85 = inttoptr i32 %84 to ptr
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  %88 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %89 = inttoptr i32 %88 to ptr
  %90 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %89) #5, !srcloc !13
  %91 = add i32 %90, ptrtoint (ptr @kstat to i32)
  %92 = inttoptr i32 %91 to ptr
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 9
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 4
  %98 = load i32, ptr %52, align 8
  %99 = and i32 %98, 32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %77
  %102 = load ptr, ptr %37, align 4
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 131072
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr inbounds %struct.irq_chip, ptr %107, i32 0, i32 7
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  tail call void %109(ptr noundef %2) #7
  %112 = load ptr, ptr %37, align 4
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, 131072
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %111, %106, %101, %77
  %116 = tail call i32 @handle_irq_event(ptr noundef %0) #7
  %117 = load i32, ptr %52, align 8
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %122 = load ptr, ptr %121, align 4
  tail call void %122(ptr noundef %2) #7
  br label %156

123:                                              ; preds = %115
  %124 = load ptr, ptr %37, align 4
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 196608
  %127 = icmp eq i32 %126, 131072
  br i1 %127, label %128, label %148

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 20
  %130 = load i32, ptr %129, align 64
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %134 = load ptr, ptr %133, align 4
  tail call void %134(ptr noundef %2) #7
  %135 = load ptr, ptr %37, align 4
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 131072
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %132
  %140 = load ptr, ptr %3, align 8
  %141 = getelementptr inbounds %struct.irq_chip, ptr %140, i32 0, i32 9
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %156, label %144

144:                                              ; preds = %139
  tail call void %142(ptr noundef %2) #7
  %145 = load ptr, ptr %37, align 4
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -131073
  store i32 %147, ptr %145, align 4
  br label %156

148:                                              ; preds = %128, %123
  %149 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 64
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %155 = load ptr, ptr %154, align 4
  tail call void %155(ptr noundef %2) #7
  br label %156

156:                                              ; preds = %153, %148, %144, %139, %132, %120
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %157 = load i16, ptr %5, align 4
  %158 = add i16 %157, 1
  store i16 %158, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %170

159:                                              ; preds = %73, %68, %63, %49, %44, %42
  %160 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 33
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %166 = load ptr, ptr %165, align 4
  tail call void %166(ptr noundef %2) #7
  br label %167

167:                                              ; preds = %164, %159
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %168 = load i16, ptr %5, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %170

170:                                              ; preds = %167, %156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_set_parent_state(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %5, i32 noundef %1, i1 noundef zeroext %2) #7
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_get_parent_state(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2) #7
  br label %15

15:                                               ; preds = %13, %7, %3
  %16 = phi i32 [ %14, %13 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_enable_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ %7, %1 ]
  tail call void %13(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_disable_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ %7, %1 ]
  tail call void %13(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_ack_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_mask_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_mask_ack_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_unmask_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_eoi_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_set_affinity_parent(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, ptr noundef %1, i1 noundef zeroext %2) #7
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -38, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_set_type_parent(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #7
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -38, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_retrigger_hierarchy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %18, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_chip, ptr %8, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %6) #7
  br label %20

16:                                               ; preds = %10, %5
  %17 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5

20:                                               ; preds = %16, %14, %1
  %21 = phi i32 [ %15, %14 ], [ 0, %1 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_set_vcpu_affinity_parent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, ptr noundef %1) #7
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -38, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_set_wake_parent(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %4, i32 noundef %1) #7
  br label %17

17:                                               ; preds = %15, %11, %2
  %18 = phi i32 [ %16, %15 ], [ 0, %2 ], [ -38, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_request_resources_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %3) #7
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ -38, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_chip_release_resources_parent(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %3) #7
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_compose_msi_msg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %14, %2
  %5 = phi ptr [ %17, %14 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr null, ptr %5
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi ptr [ null, %4 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %15, null
  %19 = icmp ne ptr %17, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %4, label %21

21:                                               ; preds = %14
  br i1 %18, label %27, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.irq_data, ptr %15, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.irq_chip, ptr %24, i32 0, i32 24
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %15, ptr noundef %1) #7
  br label %27

27:                                               ; preds = %22, %21, %2
  %28 = phi i32 [ 0, %22 ], [ -38, %21 ], [ -38, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_pm_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %4, i32 noundef 4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #7, !srcloc !26
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #7, !srcloc !27
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  br label %17

17:                                               ; preds = %16, %9, %6, %1
  %18 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %7, %9 ], [ %7, %16 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_chip_pm_put(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %4, i32 noundef 5) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_get_desc_lock(i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_pm_check_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_wait_for_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_irq_handler_entry(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_irq_handler_exit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i32 0, i32 33}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 658688}
!14 = !{i64 2148902914}
!15 = !{i64 2148898738}
!16 = !{i64 2148898813, i64 2148898840, i64 2148898887, i64 2148898909, i64 2148898937, i64 2148898957}
!17 = !{i64 640233}
!18 = !{i64 2148927058}
!19 = !{i64 2148925917}
!20 = !{i64 2151780847}
!21 = !{i64 2151781015}
!22 = !{i64 2151797293}
!23 = !{i64 2151797469}
!24 = !{!"branch_weights", i32 1073205, i32 2146410443}
!25 = !{i64 2148235203}
!26 = !{i64 734310, i64 2148224281, i64 2148224307, i64 2148224354, i64 2148224376, i64 2148224404, i64 2148224424}
!27 = !{i64 720879, i64 720904, i64 720926, i64 720942, i64 720954, i64 720974, i64 720998, i64 721014, i64 721026}
!28 = !{i64 2148235329}
