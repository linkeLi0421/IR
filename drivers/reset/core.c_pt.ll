; ModuleID = '/llk/IR/drivers/reset/core.c_pt.bc'
source_filename = "../drivers/reset/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_reset_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_controller_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_reset_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_reset_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_reset_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_reset_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_controller_add_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_controller_add_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_reset_controller_add_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_reset\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_bulk_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_bulk_reset\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_bulk_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_rearm:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_rearm\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_rearm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_assert:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_assert\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_assert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_bulk_assert:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_bulk_assert\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_bulk_assert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_deassert:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_deassert\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_deassert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_bulk_deassert:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_bulk_deassert\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_bulk_deassert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_status:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_status\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_bulk_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_bulk_acquire\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_bulk_acquire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_release:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_release\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_bulk_release:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_bulk_release\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_bulk_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___of_reset_control_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__of_reset_control_get\22\09\09\09\09\09"
module asm "__kstrtabns___of_reset_control_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___reset_control_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__reset_control_get\22\09\09\09\09\09"
module asm "__kstrtabns___reset_control_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___reset_control_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__reset_control_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns___reset_control_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_put:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_put\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_bulk_put\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_reset_control_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_reset_control_get\22\09\09\09\09\09"
module asm "__kstrtabns___devm_reset_control_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_reset_control_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_reset_control_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns___devm_reset_control_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22__device_reset\22\09\09\09\09\09"
module asm "__kstrtabns___device_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reset_control_array_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reset_control_array_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_reset_control_array_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_reset_control_array_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_reset_control_array_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_reset_control_array_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_control_get_count:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_control_get_count\22\09\09\09\09\09"
module asm "__kstrtabns_reset_control_get_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.reset_control_lookup = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.reset_control = type { ptr, %struct.list_head, i32, %struct.kref, i8, i8, i8, %struct.atomic_t, %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.reset_control_array = type { %struct.reset_control, i32, [0 x ptr] }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.reset_control_bulk_devres = type { i32, ptr }

@reset_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reset_list_mutex, i64 12), ptr getelementptr (i8, ptr @reset_list_mutex, i64 12) } }, align 4
@reset_controller_list = internal global %struct.list_head { ptr @reset_controller_list, ptr @reset_controller_list }, align 4
@__kstrtab_reset_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_controller_register to i32), ptr @__kstrtab_reset_controller_register, ptr @__kstrtabns_reset_controller_register }, section "___ksymtab_gpl+reset_controller_register", align 4
@__kstrtab_reset_controller_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_controller_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_controller_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_controller_unregister to i32), ptr @__kstrtab_reset_controller_unregister, ptr @__kstrtabns_reset_controller_unregister }, section "___ksymtab_gpl+reset_controller_unregister", align 4
@.str = private unnamed_addr constant [30 x i8] c"devm_reset_controller_release\00", align 1
@__kstrtab_devm_reset_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_reset_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_reset_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_reset_controller_register to i32), ptr @__kstrtab_devm_reset_controller_register, ptr @__kstrtabns_devm_reset_controller_register }, section "___ksymtab_gpl+devm_reset_controller_register", align 4
@reset_lookup_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reset_lookup_mutex, i64 12), ptr getelementptr (i8, ptr @reset_lookup_mutex, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\014%s(): reset lookup entry badly specified, skipping\0A\00", align 1
@__func__.reset_controller_add_lookup = private unnamed_addr constant [28 x i8] c"reset_controller_add_lookup\00", align 1
@reset_lookup_list = internal global %struct.list_head { ptr @reset_lookup_list, ptr @reset_lookup_list }, align 4
@__kstrtab_reset_controller_add_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_controller_add_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_controller_add_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_controller_add_lookup to i32), ptr @__kstrtab_reset_controller_add_lookup, ptr @__kstrtabns_reset_controller_add_lookup }, section "___ksymtab_gpl+reset_controller_add_lookup", align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"drivers/reset/core.c\00", align 1
@__kstrtab_reset_control_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_reset to i32), ptr @__kstrtab_reset_control_reset, ptr @__kstrtabns_reset_control_reset }, section "___ksymtab_gpl+reset_control_reset", align 4
@__kstrtab_reset_control_bulk_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_bulk_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_bulk_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_bulk_reset to i32), ptr @__kstrtab_reset_control_bulk_reset, ptr @__kstrtabns_reset_control_bulk_reset }, section "___ksymtab_gpl+reset_control_bulk_reset", align 4
@__kstrtab_reset_control_rearm = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_rearm = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_rearm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_rearm to i32), ptr @__kstrtab_reset_control_rearm, ptr @__kstrtabns_reset_control_rearm }, section "___ksymtab_gpl+reset_control_rearm", align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"reset %s (ID: %u) is not acquired\0A\00", align 1
@__kstrtab_reset_control_assert = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_assert = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_assert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_assert to i32), ptr @__kstrtab_reset_control_assert, ptr @__kstrtabns_reset_control_assert }, section "___ksymtab_gpl+reset_control_assert", align 4
@__kstrtab_reset_control_bulk_assert = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_bulk_assert = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_bulk_assert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_bulk_assert to i32), ptr @__kstrtab_reset_control_bulk_assert, ptr @__kstrtabns_reset_control_bulk_assert }, section "___ksymtab_gpl+reset_control_bulk_assert", align 4
@__kstrtab_reset_control_deassert = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_deassert = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_deassert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_deassert to i32), ptr @__kstrtab_reset_control_deassert, ptr @__kstrtabns_reset_control_deassert }, section "___ksymtab_gpl+reset_control_deassert", align 4
@__kstrtab_reset_control_bulk_deassert = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_bulk_deassert = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_bulk_deassert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_bulk_deassert to i32), ptr @__kstrtab_reset_control_bulk_deassert, ptr @__kstrtabns_reset_control_bulk_deassert }, section "___ksymtab_gpl+reset_control_bulk_deassert", align 4
@__kstrtab_reset_control_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_status = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_status to i32), ptr @__kstrtab_reset_control_status, ptr @__kstrtabns_reset_control_status }, section "___ksymtab_gpl+reset_control_status", align 4
@__kstrtab_reset_control_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_acquire to i32), ptr @__kstrtab_reset_control_acquire, ptr @__kstrtabns_reset_control_acquire }, section "___ksymtab_gpl+reset_control_acquire", align 4
@__kstrtab_reset_control_bulk_acquire = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_bulk_acquire = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_bulk_acquire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_bulk_acquire to i32), ptr @__kstrtab_reset_control_bulk_acquire, ptr @__kstrtabns_reset_control_bulk_acquire }, section "___ksymtab_gpl+reset_control_bulk_acquire", align 4
@__kstrtab_reset_control_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_release = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_release to i32), ptr @__kstrtab_reset_control_release, ptr @__kstrtabns_reset_control_release }, section "___ksymtab_gpl+reset_control_release", align 4
@__kstrtab_reset_control_bulk_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_bulk_release = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_bulk_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_bulk_release to i32), ptr @__kstrtab_reset_control_bulk_release, ptr @__kstrtabns_reset_control_bulk_release }, section "___ksymtab_gpl+reset_control_bulk_release", align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"reset-names\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@__kstrtab___of_reset_control_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___of_reset_control_get = external dso_local constant [0 x i8], align 1
@__ksymtab___of_reset_control_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__of_reset_control_get to i32), ptr @__kstrtab___of_reset_control_get, ptr @__kstrtabns___of_reset_control_get }, section "___ksymtab_gpl+__of_reset_control_get", align 4
@__kstrtab___reset_control_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___reset_control_get = external dso_local constant [0 x i8], align 1
@__ksymtab___reset_control_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__reset_control_get to i32), ptr @__kstrtab___reset_control_get, ptr @__kstrtabns___reset_control_get }, section "___ksymtab_gpl+__reset_control_get", align 4
@__kstrtab___reset_control_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___reset_control_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab___reset_control_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__reset_control_bulk_get to i32), ptr @__kstrtab___reset_control_bulk_get, ptr @__kstrtabns___reset_control_bulk_get }, section "___ksymtab_gpl+__reset_control_bulk_get", align 4
@__kstrtab_reset_control_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_put = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_put to i32), ptr @__kstrtab_reset_control_put, ptr @__kstrtabns_reset_control_put }, section "___ksymtab_gpl+reset_control_put", align 4
@__kstrtab_reset_control_bulk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_bulk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_bulk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_bulk_put to i32), ptr @__kstrtab_reset_control_bulk_put, ptr @__kstrtabns_reset_control_bulk_put }, section "___ksymtab_gpl+reset_control_bulk_put", align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"devm_reset_control_release\00", align 1
@__kstrtab___devm_reset_control_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_reset_control_get = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_reset_control_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_reset_control_get to i32), ptr @__kstrtab___devm_reset_control_get, ptr @__kstrtabns___devm_reset_control_get }, section "___ksymtab_gpl+__devm_reset_control_get", align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"devm_reset_control_bulk_release\00", align 1
@__kstrtab___devm_reset_control_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_reset_control_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_reset_control_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_reset_control_bulk_get to i32), ptr @__kstrtab___devm_reset_control_bulk_get, ptr @__kstrtabns___devm_reset_control_bulk_get }, section "___ksymtab_gpl+__devm_reset_control_bulk_get", align 4
@__kstrtab___device_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns___device_reset = external dso_local constant [0 x i8], align 1
@__ksymtab___device_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__device_reset to i32), ptr @__kstrtab___device_reset, ptr @__kstrtabns___device_reset }, section "___ksymtab_gpl+__device_reset", align 4
@__kstrtab_of_reset_control_array_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reset_control_array_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reset_control_array_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reset_control_array_get to i32), ptr @__kstrtab_of_reset_control_array_get, ptr @__kstrtabns_of_reset_control_array_get }, section "___ksymtab_gpl+of_reset_control_array_get", align 4
@__kstrtab_devm_reset_control_array_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_reset_control_array_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_reset_control_array_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_reset_control_array_get to i32), ptr @__kstrtab_devm_reset_control_array_get, ptr @__kstrtabns_devm_reset_control_array_get }, section "___ksymtab_gpl+devm_reset_control_array_get", align 4
@__kstrtab_reset_control_get_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_control_get_count = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_control_get_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_control_get_count to i32), ptr @__kstrtab_reset_control_get_count, ptr @__kstrtabns_reset_control_get_count }, section "___ksymtab_gpl+reset_control_get_count", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab___device_reset, ptr @__ksymtab___devm_reset_control_bulk_get, ptr @__ksymtab___devm_reset_control_get, ptr @__ksymtab___of_reset_control_get, ptr @__ksymtab___reset_control_bulk_get, ptr @__ksymtab___reset_control_get, ptr @__ksymtab_devm_reset_control_array_get, ptr @__ksymtab_devm_reset_controller_register, ptr @__ksymtab_of_reset_control_array_get, ptr @__ksymtab_reset_control_acquire, ptr @__ksymtab_reset_control_assert, ptr @__ksymtab_reset_control_bulk_acquire, ptr @__ksymtab_reset_control_bulk_assert, ptr @__ksymtab_reset_control_bulk_deassert, ptr @__ksymtab_reset_control_bulk_put, ptr @__ksymtab_reset_control_bulk_release, ptr @__ksymtab_reset_control_bulk_reset, ptr @__ksymtab_reset_control_deassert, ptr @__ksymtab_reset_control_get_count, ptr @__ksymtab_reset_control_put, ptr @__ksymtab_reset_control_rearm, ptr @__ksymtab_reset_control_release, ptr @__ksymtab_reset_control_reset, ptr @__ksymtab_reset_control_status, ptr @__ksymtab_reset_controller_add_lookup, ptr @__ksymtab_reset_controller_register, ptr @__ksymtab_reset_controller_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_controller_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 6
  store i32 1, ptr %6, align 4
  store ptr @of_reset_simple_xlate, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %10 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr @reset_controller_list, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %13 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 2, i32 1
  store ptr @reset_controller_list, ptr %13, align 4
  store volatile ptr %10, ptr @reset_controller_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @of_reset_simple_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  %8 = select i1 %7, i32 %4, i32 -22
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_controller_unregister(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %2 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_reset_controller_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_reset_controller_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 6
  store i32 1, ptr %10, align 4
  store ptr @of_reset_simple_xlate, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 3
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 4
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %14 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr @reset_controller_list, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store ptr %15, ptr %14, align 4
  %17 = getelementptr inbounds %struct.reset_controller_dev, ptr %1, i32 0, i32 2, i32 1
  store ptr @reset_controller_list, ptr %17, align 4
  store volatile ptr %14, ptr @reset_controller_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #10
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ 0, %11 ], [ -12, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_reset_controller_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %4 = getelementptr inbounds %struct.reset_controller_dev, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.reset_controller_dev, ptr %3, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_controller_add_lookup(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @reset_lookup_mutex) #10
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %19, %2
  %5 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %6 = getelementptr %struct.reset_control_lookup, ptr %0, i32 %5
  %7 = getelementptr %struct.reset_control_lookup, ptr %0, i32 %5, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.reset_control_lookup, ptr %0, i32 %5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.reset_controller_add_lookup) #11
  br label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @reset_lookup_list, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @reset_lookup_list, i32 0, i32 1), align 4
  store ptr @reset_lookup_list, ptr %6, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %6, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = add nuw i32 %5, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %4

22:                                               ; preds = %19, %2
  tail call void @mutex_unlock(ptr noundef nonnull @reset_lookup_mutex) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_reset(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 333, i32 noundef 9, ptr noundef null) #10
  br label %64

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %64, label %18

14:                                               ; preds = %18
  %15 = add nuw i32 %19, 1
  %16 = load i32, ptr %11, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %15, %14 ], [ 0, %10 ]
  %20 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @reset_control_reset(ptr noundef %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %14, label %64

24:                                               ; preds = %6
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 5
  %31 = load i8, ptr %30, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 7
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !10

37:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 343, i32 noundef 9, ptr noundef null) #10
  br label %64

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #10, !srcloc !12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #10, !srcloc !13
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load ptr, ptr %0, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  br label %51

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 4
  %49 = load i8, ptr %48, align 4, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %47, %43
  %52 = phi ptr [ %46, %43 ], [ %27, %47 ]
  %53 = phi ptr [ %44, %43 ], [ %25, %47 ]
  %54 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 %52(ptr noundef %53, i32 noundef %55) #10
  %57 = load i8, ptr %30, align 1, !range !9
  %58 = icmp ne i8 %57, 0
  %59 = icmp ne i32 %56, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #10, !srcloc !12
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #10, !srcloc !15
  br label %64

64:                                               ; preds = %61, %51, %47, %38, %37, %24, %18, %14, %10, %5, %1
  %65 = phi i32 [ -22, %5 ], [ -22, %37 ], [ 0, %1 ], [ -524, %24 ], [ 0, %38 ], [ -1, %47 ], [ %56, %61 ], [ %56, %51 ], [ 0, %10 ], [ %22, %18 ], [ 0, %14 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_bulk_reset(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %7, label %13

4:                                                ; preds = %7
  %5 = add nuw nsw i32 %8, 1
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %9 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @reset_control_reset(ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %4, label %13

13:                                               ; preds = %7, %4, %2
  %14 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %11, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_rearm(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %77, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 405, i32 noundef 9, ptr noundef null) #10
  br label %77

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %77, label %14

14:                                               ; preds = %33, %10
  %15 = phi i32 [ %34, %33 ], [ 0, %10 ]
  %16 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %55, label %21, !prof !8

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.reset_control, ptr %17, i32 0, i32 5
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.reset_control, ptr %17, i32 0, i32 7
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %55, !prof !10

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.reset_control, ptr %17, i32 0, i32 4
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %77, label %33

33:                                               ; preds = %29, %25, %14
  %34 = add nuw i32 %15, 1
  %35 = icmp eq i32 %34, %12
  br i1 %35, label %36, label %14

36:                                               ; preds = %51, %33
  %37 = phi i32 [ %52, %51 ], [ 0, %33 ]
  %38 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 5
  %43 = load i8, ptr %42, align 1, !range !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #10, !srcloc !12
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #10, !srcloc !17
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 238, i32 noundef 9, ptr noundef null) #10
  br label %51

51:                                               ; preds = %50, %45, %41, %36
  %52 = add nuw i32 %37, 1
  %53 = load i32, ptr %11, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %36, label %77

55:                                               ; preds = %25, %19
  %56 = phi i32 [ 222, %19 ], [ 226, %25 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %56, i32 noundef 9, ptr noundef null) #10
  br label %77

57:                                               ; preds = %6
  %58 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 5
  %59 = load i8, ptr %58, align 1, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 7
  %63 = load volatile i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65, !prof !10

65:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 412, i32 noundef 9, ptr noundef null) #10
  br label %77

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #10, !srcloc !12
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #10, !srcloc !17
  %69 = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76, !prof !8

71:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 415, i32 noundef 9, ptr noundef null) #10
  br label %76

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 4
  %74 = load i8, ptr %73, align 4, !range !9
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72, %71, %66
  br label %77

77:                                               ; preds = %76, %72, %65, %55, %51, %29, %10, %5, %1
  %78 = phi i32 [ -22, %5 ], [ -22, %65 ], [ 0, %76 ], [ 0, %1 ], [ -1, %72 ], [ 0, %10 ], [ -22, %55 ], [ 0, %51 ], [ -1, %29 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_assert(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %94, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 446, i32 noundef 9, ptr noundef null) #10
  br label %94

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %94, label %14

14:                                               ; preds = %22, %10
  %15 = phi i32 [ %23, %22 ], [ 0, %10 ]
  %16 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_assert(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %94, label %26

22:                                               ; preds = %14
  %23 = add nuw i32 %15, 1
  %24 = load i32, ptr %11, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %14, label %94

26:                                               ; preds = %26, %20
  %27 = phi i32 [ %28, %26 ], [ %15, %20 ]
  %28 = add i32 %27, -1
  %29 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @reset_control_deassert(ptr noundef %30) #10
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %94, label %26

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 5
  %35 = load i8, ptr %34, align 1, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 8
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !10

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 453, i32 noundef 9, ptr noundef null) #10
  br label %94

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 7
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47, !prof !8

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 456, i32 noundef 9, ptr noundef null) #10
  br label %94

47:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #10, !srcloc !12
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #10, !srcloc !17
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.reset_control_ops, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %94, label %88

57:                                               ; preds = %33
  %58 = load ptr, ptr %0, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.reset_control_ops, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %94, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 4
  %65 = load i8, ptr %64, align 4, !range !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.reset_controller_dev, ptr %58, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %84

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.reset_controller_dev, ptr %58, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 2
  br label %81

81:                                               ; preds = %79, %71
  %82 = phi ptr [ %80, %79 ], [ %69, %71 ]
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %75, %71
  %85 = phi ptr [ null, %75 ], [ %73, %71 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 479, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %85, i32 noundef %87) #10
  br label %94

88:                                               ; preds = %63, %51
  %89 = phi ptr [ %61, %63 ], [ %55, %51 ]
  %90 = phi ptr [ %58, %63 ], [ %52, %51 ]
  %91 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 %89(ptr noundef %90, i32 noundef %92) #10
  br label %94

94:                                               ; preds = %88, %84, %57, %51, %47, %46, %41, %26, %22, %20, %10, %5, %1
  %95 = phi i32 [ -22, %5 ], [ -22, %41 ], [ -22, %46 ], [ %93, %88 ], [ -1, %84 ], [ 0, %1 ], [ 0, %47 ], [ 0, %51 ], [ -524, %57 ], [ %18, %20 ], [ 0, %10 ], [ %18, %26 ], [ 0, %22 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_bulk_assert(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %12, %2
  %5 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %6 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %22, label %15

12:                                               ; preds = %4
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %22, label %4

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %17, %15 ], [ %5, %10 ]
  %17 = add nsw i32 %16, -1
  %18 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %17, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @reset_control_deassert(ptr noundef %19)
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %15

22:                                               ; preds = %15, %12, %10, %2
  %23 = phi i32 [ %8, %10 ], [ 0, %2 ], [ %8, %15 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_deassert(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %83, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 534, i32 noundef 9, ptr noundef null) #10
  br label %83

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %22, %10
  %15 = phi i32 [ %23, %22 ], [ 0, %10 ]
  %16 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_deassert(ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %83, label %26

22:                                               ; preds = %14
  %23 = add nuw i32 %15, 1
  %24 = load i32, ptr %11, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %14, label %83

26:                                               ; preds = %26, %20
  %27 = phi i32 [ %28, %26 ], [ %15, %20 ]
  %28 = add i32 %27, -1
  %29 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @reset_control_assert(ptr noundef %30) #10
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %83, label %26

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 5
  %35 = load i8, ptr %34, align 1, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 8
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41, !prof !10

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 541, i32 noundef 9, ptr noundef null) #10
  br label %83

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #10, !srcloc !12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #10, !srcloc !13
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %73, label %83

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 4
  %49 = load i8, ptr %48, align 4, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.reset_controller_dev, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %69

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.reset_controller_dev, ptr %52, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.device_node, ptr %62, i32 0, i32 2
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi ptr [ %65, %64 ], [ %54, %56 ]
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %60, %56
  %70 = phi ptr [ null, %60 ], [ %58, %56 ], [ %68, %66 ]
  %71 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 549, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %70, i32 noundef %72) #10
  br label %83

73:                                               ; preds = %47, %42
  %74 = load ptr, ptr %0, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.reset_control_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 %77(ptr noundef %74, i32 noundef %81) #10
  br label %83

83:                                               ; preds = %79, %73, %69, %42, %41, %26, %22, %20, %10, %5, %1
  %84 = phi i32 [ -22, %5 ], [ -22, %41 ], [ %82, %79 ], [ -1, %69 ], [ 0, %1 ], [ 0, %42 ], [ 0, %73 ], [ %18, %20 ], [ 0, %10 ], [ %18, %26 ], [ 0, %22 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_bulk_deassert(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi i32 [ %0, %2 ], [ %5, %7 ]
  %5 = add i32 %4, -1
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_deassert(ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12

12:                                               ; preds = %7
  %13 = icmp slt i32 %5, %0
  br i1 %13, label %14, label %21

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %16, %14 ], [ %5, %12 ]
  %16 = add i32 %15, 1
  %17 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %15, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @reset_control_assert(ptr noundef %18)
  %20 = icmp eq i32 %16, %0
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %12, %3
  %22 = phi i32 [ %10, %12 ], [ %10, %14 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_status(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef 9, ptr noundef null) #10
  br label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.reset_control_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 %14(ptr noundef %11, i32 noundef %18) #10
  br label %20

20:                                               ; preds = %16, %10, %6, %5, %1
  %21 = phi i32 [ %19, %16 ], [ 0, %1 ], [ -22, %5 ], [ -22, %6 ], [ -524, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_acquire(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %62, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 646, i32 noundef 9, ptr noundef null) #10
  br label %62

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %22, %10
  %15 = phi i32 [ %23, %22 ], [ 0, %10 ]
  %16 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @reset_control_acquire(ptr noundef %17) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %62, label %26

22:                                               ; preds = %14
  %23 = add nuw i32 %15, 1
  %24 = load i32, ptr %11, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %14, label %62

26:                                               ; preds = %26, %20
  %27 = phi i32 [ %28, %26 ], [ %15, %20 ]
  %28 = add i32 %27, -1
  %29 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call void @reset_control_release(ptr noundef %30) #10
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %62, label %26

32:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %33 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  br label %62

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.reset_controller_dev, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 2
  br label %44

44:                                               ; preds = %58, %42
  %45 = phi ptr [ %40, %42 ], [ %59, %58 ]
  %46 = getelementptr i8, ptr %45, i32 -4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %43, align 4
  %50 = getelementptr i8, ptr %45, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %45, i32 16
  %55 = load i8, ptr %54, align 4, !range !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  br label %62

58:                                               ; preds = %53, %48, %44
  %59 = load ptr, ptr %45, align 4
  %60 = icmp eq ptr %59, %39
  br i1 %60, label %61, label %44

61:                                               ; preds = %58, %37
  store i8 1, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  br label %62

62:                                               ; preds = %61, %57, %36, %26, %22, %20, %10, %5, %1
  %63 = phi i32 [ -22, %5 ], [ 0, %36 ], [ -16, %57 ], [ 0, %61 ], [ 0, %1 ], [ %18, %20 ], [ 0, %10 ], [ %18, %26 ], [ 0, %22 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_bulk_acquire(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %12, %2
  %5 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %6 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_acquire(ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %21, label %15

12:                                               ; preds = %4
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %21, label %4

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %17, %15 ], [ %5, %10 ]
  %17 = add nsw i32 %16, -1
  %18 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %17, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @reset_control_release(ptr noundef %19)
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %12, %10, %2
  %22 = phi i32 [ %8, %10 ], [ 0, %2 ], [ %8, %15 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_control_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 717, i32 noundef 9, ptr noundef null) #10
  br label %23

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %8 = load i8, ptr %7, align 2, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %18, %14 ], [ 0, %10 ]
  %16 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %15
  %17 = load ptr, ptr %16, align 4
  tail call void @reset_control_release(ptr noundef %17) #10
  %18 = add nuw i32 %15, 1
  %19 = load i32, ptr %11, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %14, label %23

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 4
  store i8 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %14, %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_control_bulk_release(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @reset_control_release(ptr noundef %7)
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_reset_control_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false), !annotation !19
  %8 = icmp eq ptr %0, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = tail call i32 @of_property_match_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #10
  %13 = icmp eq i32 %12, -84
  br i1 %13, label %56, label %14

14:                                               ; preds = %11
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = select i1 %4, ptr null, ptr inttoptr (i32 -2 to ptr)
  br label %56

18:                                               ; preds = %14, %9
  %19 = phi i32 [ %12, %14 ], [ %2, %9 ]
  %20 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef -1, i32 noundef %19, ptr noundef nonnull %7) #10
  switch i32 %20, label %21 [
    i32 -22, label %56
    i32 0, label %24
  ]

21:                                               ; preds = %18
  %22 = inttoptr i32 %20 to ptr
  %23 = select i1 %4, ptr null, ptr %22
  br label %56

24:                                               ; preds = %18
  call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %25 = load ptr, ptr %7, align 4
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi ptr [ @reset_controller_list, %24 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @reset_controller_list
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %25, %32
  br i1 %33, label %34, label %26

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %28, i32 -8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %28, i32 24
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %44, label %43, !prof !10

43:                                               ; preds = %37
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 855, i32 noundef 9, ptr noundef null) #10
  br label %53

44:                                               ; preds = %37
  %45 = getelementptr i8, ptr %28, i32 28
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef nonnull %35, ptr noundef nonnull %7) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = inttoptr i32 %47 to ptr
  br label %53

51:                                               ; preds = %44
  %52 = call fastcc ptr @__reset_control_get_internal(ptr noundef nonnull %35, i32 noundef %47, i1 noundef zeroext %3, i1 noundef zeroext %5)
  br label %53

53:                                               ; preds = %51, %49, %43, %34, %26
  %54 = phi ptr [ inttoptr (i32 -22 to ptr), %43 ], [ %50, %49 ], [ %52, %51 ], [ inttoptr (i32 -517 to ptr), %34 ], [ inttoptr (i32 -517 to ptr), %26 ]
  call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  %55 = load ptr, ptr %7, align 4
  call void @of_node_put(ptr noundef %55) #10
  br label %56

56:                                               ; preds = %53, %21, %18, %16, %11, %6
  %57 = phi ptr [ %54, %53 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -84 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %18 ], [ %17, %16 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #10
  ret ptr %57
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__reset_control_get_internal(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = zext i1 %2 to i8
  %6 = zext i1 %3 to i8
  %7 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 3
  br label %8

8:                                                ; preds = %12, %4
  %9 = phi ptr [ %7, %4 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -4
  %18 = getelementptr i8, ptr %10, i32 17
  %19 = load i8, ptr %18, align 1, !range !9
  %20 = icmp ne i8 %19, 0
  %21 = or i1 %20, %2
  %22 = or i1 %21, %3
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = and i1 %20, %2
  br i1 %24, label %26, label %25, !prof !10

25:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 765, i32 noundef 9, ptr noundef null) #10
  br label %55

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #10, !srcloc !12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #10, !srcloc !20
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !8

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %55, label %35, !prof !10

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #10
  br label %55

37:                                               ; preds = %16, %8
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 32) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.reset_controller_dev, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call zeroext i1 @try_module_get(ptr noundef %43) #10
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @kfree(ptr noundef nonnull %39) #10
  br label %55

46:                                               ; preds = %41
  store ptr %0, ptr %39, align 8
  %47 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 1
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store ptr %48, ptr %47, align 4
  %50 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 1, i32 1
  store ptr %7, ptr %50, align 8
  store volatile ptr %47, ptr %7, align 4
  %51 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 2
  store i32 %1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 3
  store volatile i32 1, ptr %52, align 8
  %53 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 4
  store i8 %6, ptr %53, align 4
  %54 = getelementptr inbounds %struct.reset_control, ptr %39, i32 0, i32 5
  store i8 %5, ptr %54, align 1
  br label %55

55:                                               ; preds = %46, %45, %37, %35, %31, %25
  %56 = phi ptr [ inttoptr (i32 -16 to ptr), %25 ], [ %39, %46 ], [ inttoptr (i32 -19 to ptr), %45 ], [ %17, %31 ], [ %17, %35 ], [ inttoptr (i32 -12 to ptr), %37 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__reset_control_get(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = and i1 %3, %5
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 942, i32 noundef 9, ptr noundef null) #10
  br label %81

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @__of_reset_control_get(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
  br label %81

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  tail call void @mutex_lock(ptr noundef nonnull @reset_lookup_mutex) #10
  %23 = load ptr, ptr @reset_lookup_list, align 4
  %24 = icmp eq ptr %23, @reset_lookup_list
  br i1 %24, label %76, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %1, null
  br label %27

27:                                               ; preds = %73, %25
  %28 = phi ptr [ %23, %25 ], [ %74, %73 ]
  %29 = getelementptr inbounds %struct.reset_control_lookup, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @strcmp(ptr noundef %30, ptr noundef %22) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.reset_control_lookup, ptr %28, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %26, label %37, label %38

37:                                               ; preds = %33
  br i1 %36, label %42, label %73

38:                                               ; preds = %33
  br i1 %36, label %73, label %39

39:                                               ; preds = %38
  %40 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %35) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39, %37
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %43 = getelementptr inbounds %struct.reset_control_lookup, ptr %28, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr @reset_controller_list, align 4
  %46 = icmp eq ptr %45, @reset_controller_list
  br i1 %46, label %68, label %47

47:                                               ; preds = %62, %42
  %48 = phi ptr [ %63, %62 ], [ %45, %42 ]
  %49 = getelementptr i8, ptr %48, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi ptr [ %57, %56 ], [ %54, %52 ]
  %60 = tail call i32 @strcmp(ptr noundef %44, ptr noundef %59) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58, %47
  %63 = load ptr, ptr %48, align 4
  %64 = icmp eq ptr %63, @reset_controller_list
  br i1 %64, label %68, label %47

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %48, i32 -8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %62, %42
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  tail call void @mutex_unlock(ptr noundef nonnull @reset_lookup_mutex) #10
  br label %81

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.reset_control_lookup, ptr %28, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = tail call fastcc ptr @__reset_control_get_internal(ptr noundef nonnull %66, i32 noundef %71, i1 noundef zeroext %3, i1 noundef zeroext %5) #10
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  br label %76

73:                                               ; preds = %39, %38, %37, %27
  %74 = load ptr, ptr %28, align 4
  %75 = icmp eq ptr %74, @reset_lookup_list
  br i1 %75, label %76, label %27

76:                                               ; preds = %73, %69, %21
  %77 = phi ptr [ %72, %69 ], [ null, %21 ], [ null, %73 ]
  tail call void @mutex_unlock(ptr noundef nonnull @reset_lookup_mutex) #10
  %78 = icmp ne ptr %77, null
  %79 = or i1 %78, %4
  %80 = select i1 %79, ptr %77, ptr inttoptr (i32 -2 to ptr)
  br label %81

81:                                               ; preds = %76, %68, %13, %8
  %82 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %14, %13 ], [ inttoptr (i32 -517 to ptr), %68 ], [ %80, %76 ]
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__reset_control_bulk_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %18, %6
  %9 = phi i32 [ %19, %18 ], [ 0, %6 ]
  %10 = getelementptr %struct.reset_control_bulk_data, ptr %2, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @__reset_control_get(ptr noundef %0, ptr noundef %11, i32 noundef 0, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
  %13 = getelementptr %struct.reset_control_bulk_data, ptr %2, i32 %9, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = ptrtoint ptr %12 to i32
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %44, label %21

18:                                               ; preds = %8
  %19 = add nuw nsw i32 %9, 1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %45, label %8

21:                                               ; preds = %42, %15
  %22 = phi i32 [ %23, %42 ], [ %9, %15 ]
  %23 = add nsw i32 %22, -1
  %24 = getelementptr %struct.reset_control_bulk_data, ptr %2, i32 %23, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.reset_control, ptr %25, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #10, !srcloc !12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #10, !srcloc !22
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %42, label %32, !prof !10

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #10
  br label %42

33:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.reset_controller_dev, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void @module_put(ptr noundef %36) #10
  %37 = getelementptr %struct.reset_control, ptr %25, i32 0, i32 1
  %38 = getelementptr %struct.reset_control, ptr %25, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  tail call void @kfree(ptr noundef %25) #10
  br label %42

42:                                               ; preds = %33, %32, %30
  %43 = icmp eq i32 %23, 0
  br i1 %43, label %44, label %21

44:                                               ; preds = %42, %15
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  br label %45

45:                                               ; preds = %44, %18, %6
  %46 = phi i32 [ %16, %44 ], [ 0, %6 ], [ 0, %18 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_control_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 2, !range !9
  %8 = icmp eq i8 %7, 0
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.reset_control_array, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %33, %9
  %14 = phi i32 [ %34, %33 ], [ 0, %9 ]
  %15 = getelementptr %struct.reset_control_array, ptr %0, i32 0, i32 2, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.reset_control, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !22
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %33, label %23, !prof !10

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #10
  br label %33

24:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.reset_controller_dev, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @module_put(ptr noundef %27) #10
  %28 = getelementptr %struct.reset_control, ptr %16, i32 0, i32 1
  %29 = getelementptr %struct.reset_control, ptr %16, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @kfree(ptr noundef %16) #10
  br label %33

33:                                               ; preds = %24, %23, %21
  %34 = add nuw i32 %14, 1
  %35 = load i32, ptr %10, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %13, label %37

37:                                               ; preds = %33, %9
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  tail call void @kfree(ptr noundef %0) #10
  br label %56

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.reset_control, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #10, !srcloc !12
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #10, !srcloc !22
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %55, label %45, !prof !10

45:                                               ; preds = %43
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 3) #10
  br label %55

46:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.reset_controller_dev, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @module_put(ptr noundef %49) #10
  %50 = getelementptr %struct.reset_control, ptr %0, i32 0, i32 1
  %51 = getelementptr %struct.reset_control, ptr %0, i32 0, i32 1, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %55

55:                                               ; preds = %46, %45, %43
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  br label %56

56:                                               ; preds = %55, %37, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reset_control_bulk_put(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %29, %2
  %5 = phi i32 [ %6, %29 ], [ %0, %2 ]
  %6 = add i32 %5, -1
  %7 = getelementptr %struct.reset_control_bulk_data, ptr %1, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.reset_control, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !22
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %29, label %19, !prof !10

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #10
  br label %29

20:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.reset_controller_dev, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void @module_put(ptr noundef %23) #10
  %24 = getelementptr %struct.reset_control, ptr %8, i32 0, i32 1
  %25 = getelementptr %struct.reset_control, ptr %8, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void @kfree(ptr noundef nonnull %8) #10
  br label %29

29:                                               ; preds = %20, %19, %17, %4
  %30 = icmp eq i32 %6, 0
  br i1 %30, label %31, label %4

31:                                               ; preds = %29, %2
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_reset_control_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_reset_control_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__reset_control_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @devres_free(ptr noundef nonnull %7) #10
  br label %16

15:                                               ; preds = %9
  store ptr %10, ptr %7, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #10
  br label %16

16:                                               ; preds = %15, %14, %6
  %17 = phi ptr [ %10, %14 ], [ %10, %15 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_reset_control_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @reset_control_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__devm_reset_control_bulk_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_reset_control_bulk_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @__reset_control_bulk_get(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @devres_free(ptr noundef nonnull %7) #10
  br label %15

13:                                               ; preds = %9
  store i32 %1, ptr %7, align 4
  %14 = getelementptr inbounds %struct.reset_control_bulk_devres, ptr %7, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #10
  br label %15

15:                                               ; preds = %13, %12, %6
  %16 = phi i32 [ %10, %12 ], [ 0, %13 ], [ -12, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_reset_control_bulk_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.reset_control_bulk_devres, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @reset_control_bulk_put(i32 noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__device_reset(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = tail call ptr @__reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %1, i1 noundef zeroext true)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @reset_control_reset(ptr noundef %3)
  tail call void @reset_control_put(ptr noundef %3)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_reset_control_array_get(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9, %6, %4
  %12 = phi i32 [ %7, %9 ], [ -22, %4 ], [ -2, %6 ]
  br i1 %2, label %60, label %13

13:                                               ; preds = %11
  %14 = inttoptr i32 %12 to ptr
  br label %60

15:                                               ; preds = %9
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #10
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = tail call i32 @llvm.uadd.sat.i32(i32 %18, i32 36) #10
  %20 = select i1 %17, i32 -1, i32 %19
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %27, %15
  %24 = phi i32 [ %29, %27 ], [ 0, %15 ]
  %25 = tail call ptr @__of_reset_control_get(ptr noundef nonnull %0, ptr noundef null, i32 noundef %24, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.reset_control_array, ptr %21, i32 0, i32 2, i32 %24
  store ptr %25, ptr %28, align 4
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, %7
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.reset_control_array, ptr %21, i32 0, i32 1
  store i32 %7, ptr %32, align 32
  %33 = getelementptr inbounds %struct.reset_control, ptr %21, i32 0, i32 6
  store i8 1, ptr %33, align 2
  br label %60

34:                                               ; preds = %23
  tail call void @mutex_lock(ptr noundef nonnull @reset_list_mutex) #10
  %35 = icmp eq i32 %24, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %57, %34
  %37 = phi i32 [ %38, %57 ], [ %24, %34 ]
  %38 = add nsw i32 %37, -1
  %39 = getelementptr %struct.reset_control_array, ptr %21, i32 0, i32 2, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.reset_control, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #10, !srcloc !12
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #10, !srcloc !22
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %57, label %47, !prof !10

47:                                               ; preds = %45
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #10
  br label %57

48:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %49 = load ptr, ptr %40, align 4
  %50 = getelementptr inbounds %struct.reset_controller_dev, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @module_put(ptr noundef %51) #10
  %52 = getelementptr %struct.reset_control, ptr %40, i32 0, i32 1
  %53 = getelementptr %struct.reset_control, ptr %40, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  tail call void @kfree(ptr noundef %40) #10
  br label %57

57:                                               ; preds = %48, %47, %45
  %58 = icmp sgt i32 %37, 1
  br i1 %58, label %36, label %59

59:                                               ; preds = %57, %34
  tail call void @mutex_unlock(ptr noundef nonnull @reset_list_mutex) #10
  tail call void @kfree(ptr noundef nonnull %21) #10
  br label %60

60:                                               ; preds = %59, %31, %15, %13, %11
  %61 = phi ptr [ %25, %59 ], [ %21, %31 ], [ %14, %13 ], [ null, %11 ], [ inttoptr (i32 -12 to ptr), %15 ]
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_reset_control_array_get(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_reset_control_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_reset_control_array_get(ptr noundef %8, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext true)
  %10 = icmp eq ptr %9, null
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %15

14:                                               ; preds = %6
  store ptr %9, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %15

15:                                               ; preds = %14, %13, %3
  %16 = phi ptr [ %9, %13 ], [ %9, %14 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reset_control_get_count(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 -2, i32 %6
  br label %36

9:                                                ; preds = %1
  %10 = icmp eq ptr %0, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ]
  tail call void @mutex_lock(ptr noundef nonnull @reset_lookup_mutex) #10
  %19 = load ptr, ptr @reset_lookup_list, align 4
  %20 = icmp eq ptr %19, @reset_lookup_list
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @mutex_unlock(ptr noundef nonnull @reset_lookup_mutex) #10
  br label %35

22:                                               ; preds = %22, %17
  %23 = phi ptr [ %31, %22 ], [ %19, %17 ]
  %24 = phi i32 [ %30, %22 ], [ 0, %17 ]
  %25 = getelementptr inbounds %struct.reset_control_lookup, ptr %23, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %18) #10
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = add i32 %24, %29
  %31 = load ptr, ptr %23, align 4
  %32 = icmp eq ptr %31, @reset_lookup_list
  br i1 %32, label %33, label %22

33:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef nonnull @reset_lookup_mutex) #10
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33, %21
  br label %36

36:                                               ; preds = %35, %33, %9, %5
  %37 = phi i32 [ %8, %5 ], [ -22, %9 ], [ -2, %35 ], [ %30, %33 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147949757}
!12 = !{i64 276668, i64 2147778234, i64 2147778260, i64 2147778307, i64 2147778329, i64 2147778357, i64 2147778377}
!13 = !{i64 2147852619, i64 2147852651, i64 2147852680, i64 2147852714, i64 2147852745, i64 2147852768}
!14 = !{i64 2147949960}
!15 = !{i64 2147854292, i64 2147854318, i64 2147854347, i64 2147854381, i64 2147854412, i64 2147854435}
!16 = !{i64 2147952590}
!17 = !{i64 2147854976, i64 2147855008, i64 2147855037, i64 2147855071, i64 2147855102, i64 2147855125}
!18 = !{i64 2147952793}
!19 = !{!"auto-init"}
!20 = !{i64 2147853393, i64 2147853425, i64 2147853454, i64 2147853488, i64 2147853519, i64 2147853542}
!21 = !{i64 2147953591}
!22 = !{i64 2147855750, i64 2147855782, i64 2147855811, i64 2147855845, i64 2147855876, i64 2147855899}
!23 = !{i64 2149313626}
