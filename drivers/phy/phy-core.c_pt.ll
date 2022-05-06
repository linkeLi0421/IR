; ModuleID = '/llk/IR/drivers/phy/phy-core.c_pt.bc'
source_filename = "../drivers/phy/phy-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_create_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_create_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_phy_create_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_remove_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_remove_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_phy_remove_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_pm_runtime_get:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_pm_runtime_get\22\09\09\09\09\09"
module asm "__kstrtabns_phy_pm_runtime_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_pm_runtime_get_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_pm_runtime_get_sync\22\09\09\09\09\09"
module asm "__kstrtabns_phy_pm_runtime_get_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_pm_runtime_put:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_pm_runtime_put\22\09\09\09\09\09"
module asm "__kstrtabns_phy_pm_runtime_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_pm_runtime_put_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_pm_runtime_put_sync\22\09\09\09\09\09"
module asm "__kstrtabns_phy_pm_runtime_put_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_pm_runtime_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_pm_runtime_allow\22\09\09\09\09\09"
module asm "__kstrtabns_phy_pm_runtime_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_pm_runtime_forbid:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_pm_runtime_forbid\22\09\09\09\09\09"
module asm "__kstrtabns_phy_pm_runtime_forbid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_init:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_init\22\09\09\09\09\09"
module asm "__kstrtabns_phy_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_exit\22\09\09\09\09\09"
module asm "__kstrtabns_phy_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_power_on\22\09\09\09\09\09"
module asm "__kstrtabns_phy_power_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_power_off\22\09\09\09\09\09"
module asm "__kstrtabns_phy_power_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_set_mode_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_set_mode_ext\22\09\09\09\09\09"
module asm "__kstrtabns_phy_set_mode_ext:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_set_media:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_set_media\22\09\09\09\09\09"
module asm "__kstrtabns_phy_set_media:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_set_speed\22\09\09\09\09\09"
module asm "__kstrtabns_phy_set_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_reset\22\09\09\09\09\09"
module asm "__kstrtabns_phy_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_calibrate:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_calibrate\22\09\09\09\09\09"
module asm "__kstrtabns_phy_calibrate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_configure\22\09\09\09\09\09"
module asm "__kstrtabns_phy_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_validate\22\09\09\09\09\09"
module asm "__kstrtabns_phy_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_put:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_put\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_put:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_put\22\09\09\09\09\09"
module asm "__kstrtabns_phy_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_phy_put:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_phy_put\22\09\09\09\09\09"
module asm "__kstrtabns_devm_phy_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_simple_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_simple_xlate\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_simple_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_get\22\09\09\09\09\09"
module asm "__kstrtabns_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_optional_get:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_optional_get\22\09\09\09\09\09"
module asm "__kstrtabns_phy_optional_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_phy_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_phy_optional_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_phy_optional_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_phy_optional_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_phy_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_phy_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_phy_get_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_phy_get_by_index\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_phy_get_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_create:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_create\22\09\09\09\09\09"
module asm "__kstrtabns_phy_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_phy_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_phy_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_phy_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_phy_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_phy_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_phy_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_devm_phy_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___of_phy_provider_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__of_phy_provider_register\22\09\09\09\09\09"
module asm "__kstrtabns___of_phy_provider_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_of_phy_provider_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_of_phy_provider_register\22\09\09\09\09\09"
module asm "__kstrtabns___devm_of_phy_provider_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phy_provider_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phy_provider_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_of_phy_provider_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_phy_provider_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_phy_provider_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_phy_provider_unregister:\09\09\09\09\09"
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.phy_lookup = type { %struct.list_head, ptr, ptr, ptr }
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
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.phy_provider = type { ptr, ptr, ptr, %struct.list_head, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@phy_provider_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @phy_provider_mutex, i64 12), ptr getelementptr (i8, ptr @phy_provider_mutex, i64 12) } }, align 4
@phys = internal global %struct.list_head { ptr @phys, ptr @phys }, align 4
@__kstrtab_phy_create_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_create_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_create_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_create_lookup to i32), ptr @__kstrtab_phy_create_lookup, ptr @__kstrtabns_phy_create_lookup }, section "___ksymtab_gpl+phy_create_lookup", align 4
@__kstrtab_phy_remove_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_remove_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_remove_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_remove_lookup to i32), ptr @__kstrtab_phy_remove_lookup, ptr @__kstrtabns_phy_remove_lookup }, section "___ksymtab_gpl+phy_remove_lookup", align 4
@__kstrtab_phy_pm_runtime_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_pm_runtime_get = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_pm_runtime_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_pm_runtime_get to i32), ptr @__kstrtab_phy_pm_runtime_get, ptr @__kstrtabns_phy_pm_runtime_get }, section "___ksymtab_gpl+phy_pm_runtime_get", align 4
@__kstrtab_phy_pm_runtime_get_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_pm_runtime_get_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_pm_runtime_get_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_pm_runtime_get_sync to i32), ptr @__kstrtab_phy_pm_runtime_get_sync, ptr @__kstrtabns_phy_pm_runtime_get_sync }, section "___ksymtab_gpl+phy_pm_runtime_get_sync", align 4
@__kstrtab_phy_pm_runtime_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_pm_runtime_put = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_pm_runtime_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_pm_runtime_put to i32), ptr @__kstrtab_phy_pm_runtime_put, ptr @__kstrtabns_phy_pm_runtime_put }, section "___ksymtab_gpl+phy_pm_runtime_put", align 4
@__kstrtab_phy_pm_runtime_put_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_pm_runtime_put_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_pm_runtime_put_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_pm_runtime_put_sync to i32), ptr @__kstrtab_phy_pm_runtime_put_sync, ptr @__kstrtabns_phy_pm_runtime_put_sync }, section "___ksymtab_gpl+phy_pm_runtime_put_sync", align 4
@__kstrtab_phy_pm_runtime_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_pm_runtime_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_pm_runtime_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_pm_runtime_allow to i32), ptr @__kstrtab_phy_pm_runtime_allow, ptr @__kstrtabns_phy_pm_runtime_allow }, section "___ksymtab_gpl+phy_pm_runtime_allow", align 4
@__kstrtab_phy_pm_runtime_forbid = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_pm_runtime_forbid = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_pm_runtime_forbid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_pm_runtime_forbid to i32), ptr @__kstrtab_phy_pm_runtime_forbid, ptr @__kstrtabns_phy_pm_runtime_forbid }, section "___ksymtab_gpl+phy_pm_runtime_forbid", align 4
@.str = private unnamed_addr constant [24 x i8] c"phy init failed --> %d\0A\00", align 1
@__kstrtab_phy_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_init = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_init to i32), ptr @__kstrtab_phy_init, ptr @__kstrtabns_phy_init }, section "___ksymtab_gpl+phy_init", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"phy exit failed --> %d\0A\00", align 1
@__kstrtab_phy_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_exit to i32), ptr @__kstrtab_phy_exit, ptr @__kstrtabns_phy_exit }, section "___ksymtab_gpl+phy_exit", align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"phy poweron failed --> %d\0A\00", align 1
@__kstrtab_phy_power_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_power_on = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_power_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_power_on to i32), ptr @__kstrtab_phy_power_on, ptr @__kstrtabns_phy_power_on }, section "___ksymtab_gpl+phy_power_on", align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"phy poweroff failed --> %d\0A\00", align 1
@__kstrtab_phy_power_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_power_off = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_power_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_power_off to i32), ptr @__kstrtab_phy_power_off, ptr @__kstrtabns_phy_power_off }, section "___ksymtab_gpl+phy_power_off", align 4
@__kstrtab_phy_set_mode_ext = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_set_mode_ext = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_set_mode_ext = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_set_mode_ext to i32), ptr @__kstrtab_phy_set_mode_ext, ptr @__kstrtabns_phy_set_mode_ext }, section "___ksymtab_gpl+phy_set_mode_ext", align 4
@__kstrtab_phy_set_media = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_set_media = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_set_media = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_set_media to i32), ptr @__kstrtab_phy_set_media, ptr @__kstrtabns_phy_set_media }, section "___ksymtab_gpl+phy_set_media", align 4
@__kstrtab_phy_set_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_set_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_set_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_set_speed to i32), ptr @__kstrtab_phy_set_speed, ptr @__kstrtabns_phy_set_speed }, section "___ksymtab_gpl+phy_set_speed", align 4
@__kstrtab_phy_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_reset to i32), ptr @__kstrtab_phy_reset, ptr @__kstrtabns_phy_reset }, section "___ksymtab_gpl+phy_reset", align 4
@__kstrtab_phy_calibrate = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_calibrate = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_calibrate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_calibrate to i32), ptr @__kstrtab_phy_calibrate, ptr @__kstrtabns_phy_calibrate }, section "___ksymtab_gpl+phy_calibrate", align 4
@__kstrtab_phy_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_configure to i32), ptr @__kstrtab_phy_configure, ptr @__kstrtabns_phy_configure }, section "___ksymtab_gpl+phy_configure", align 4
@__kstrtab_phy_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_validate to i32), ptr @__kstrtab_phy_validate, ptr @__kstrtabns_phy_validate }, section "___ksymtab_gpl+phy_validate", align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"phy-names\00", align 1
@__kstrtab_of_phy_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_get to i32), ptr @__kstrtab_of_phy_get, ptr @__kstrtabns_of_phy_get }, section "___ksymtab_gpl+of_phy_get", align 4
@__kstrtab_of_phy_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_put = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_put to i32), ptr @__kstrtab_of_phy_put, ptr @__kstrtabns_of_phy_put }, section "___ksymtab_gpl+of_phy_put", align 4
@__kstrtab_phy_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_put = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_put to i32), ptr @__kstrtab_phy_put, ptr @__kstrtabns_phy_put }, section "___ksymtab_gpl+phy_put", align 4
@devm_phy_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"drivers/phy/phy-core.c\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s %s: couldn't find PHY resource\0A\00", align 1
@__kstrtab_devm_phy_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_phy_put = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_phy_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_phy_put to i32), ptr @__kstrtab_devm_phy_put, ptr @__kstrtabns_devm_phy_put }, section "___ksymtab_gpl+devm_phy_put", align 4
@phy_class = internal unnamed_addr global ptr null, align 4
@__kstrtab_of_phy_simple_xlate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_simple_xlate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_simple_xlate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_simple_xlate to i32), ptr @__kstrtab_of_phy_simple_xlate, ptr @__kstrtabns_of_phy_simple_xlate }, section "___ksymtab_gpl+of_phy_simple_xlate", align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"%s %s: missing string\0A\00", align 1
@__kstrtab_phy_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_get = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_get to i32), ptr @__kstrtab_phy_get, ptr @__kstrtabns_phy_get }, section "___ksymtab_gpl+phy_get", align 4
@__kstrtab_phy_optional_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_optional_get = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_optional_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_optional_get to i32), ptr @__kstrtab_phy_optional_get, ptr @__kstrtabns_phy_optional_get }, section "___ksymtab_gpl+phy_optional_get", align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"devm_phy_release\00", align 1
@__kstrtab_devm_phy_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_phy_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_phy_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_phy_get to i32), ptr @__kstrtab_devm_phy_get, ptr @__kstrtabns_devm_phy_get }, section "___ksymtab_gpl+devm_phy_get", align 4
@__kstrtab_devm_phy_optional_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_phy_optional_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_phy_optional_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_phy_optional_get to i32), ptr @__kstrtab_devm_phy_optional_get, ptr @__kstrtabns_devm_phy_optional_get }, section "___ksymtab_gpl+devm_phy_optional_get", align 4
@__kstrtab_devm_of_phy_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_phy_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_phy_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_phy_get to i32), ptr @__kstrtab_devm_of_phy_get, ptr @__kstrtabns_devm_of_phy_get }, section "___ksymtab_gpl+devm_of_phy_get", align 4
@__kstrtab_devm_of_phy_get_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_phy_get_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_phy_get_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_phy_get_by_index to i32), ptr @__kstrtab_devm_of_phy_get_by_index, ptr @__kstrtabns_devm_of_phy_get_by_index }, section "___ksymtab_gpl+devm_of_phy_get_by_index", align 4
@phy_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"unable to get id\0A\00", align 1
@phy_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"&phy->mutex\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"phy-%s.%d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@__kstrtab_phy_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_create = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_create to i32), ptr @__kstrtab_phy_create, ptr @__kstrtabns_phy_create }, section "___ksymtab_gpl+phy_create", align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"devm_phy_consume\00", align 1
@__kstrtab_devm_phy_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_phy_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_phy_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_phy_create to i32), ptr @__kstrtab_devm_phy_create, ptr @__kstrtabns_devm_phy_create }, section "___ksymtab_gpl+devm_phy_create", align 4
@__kstrtab_phy_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_destroy to i32), ptr @__kstrtab_phy_destroy, ptr @__kstrtabns_phy_destroy }, section "___ksymtab_gpl+phy_destroy", align 4
@devm_phy_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_devm_phy_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_phy_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_phy_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_phy_destroy to i32), ptr @__kstrtab_devm_phy_destroy, ptr @__kstrtabns_devm_phy_destroy }, section "___ksymtab_gpl+devm_phy_destroy", align 4
@phy_provider_list = internal global %struct.list_head { ptr @phy_provider_list, ptr @phy_provider_list }, align 4
@__kstrtab___of_phy_provider_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___of_phy_provider_register = external dso_local constant [0 x i8], align 1
@__ksymtab___of_phy_provider_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__of_phy_provider_register to i32), ptr @__kstrtab___of_phy_provider_register, ptr @__kstrtabns___of_phy_provider_register }, section "___ksymtab_gpl+__of_phy_provider_register", align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"devm_phy_provider_release\00", align 1
@__kstrtab___devm_of_phy_provider_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_of_phy_provider_register = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_of_phy_provider_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_of_phy_provider_register to i32), ptr @__kstrtab___devm_of_phy_provider_register, ptr @__kstrtabns___devm_of_phy_provider_register }, section "___ksymtab_gpl+__devm_of_phy_provider_register", align 4
@__kstrtab_of_phy_provider_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phy_provider_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phy_provider_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phy_provider_unregister to i32), ptr @__kstrtab_of_phy_provider_unregister, ptr @__kstrtabns_of_phy_provider_unregister }, section "___ksymtab_gpl+of_phy_provider_unregister", align 4
@devm_of_phy_provider_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"%s %s: couldn't find PHY provider device resource\0A\00", align 1
@__kstrtab_devm_of_phy_provider_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_phy_provider_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_phy_provider_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_phy_provider_unregister to i32), ptr @__kstrtab_devm_of_phy_provider_unregister, ptr @__kstrtabns_devm_of_phy_provider_unregister }, section "___ksymtab_gpl+devm_of_phy_provider_unregister", align 4
@__initcall__kmod_phy_core__248_1200_phy_core_init6 = internal global ptr @phy_core_init, section ".initcall6.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"usb-nop-xceiv\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Requested PHY is disabled\0A\00", align 1
@phy_core_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\013failed to create phy class --> %ld\0A\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__initcall__kmod_phy_core__248_1200_phy_core_init6, ptr @__ksymtab___devm_of_phy_provider_register, ptr @__ksymtab___of_phy_provider_register, ptr @__ksymtab_devm_of_phy_get, ptr @__ksymtab_devm_of_phy_get_by_index, ptr @__ksymtab_devm_of_phy_provider_unregister, ptr @__ksymtab_devm_phy_create, ptr @__ksymtab_devm_phy_destroy, ptr @__ksymtab_devm_phy_get, ptr @__ksymtab_devm_phy_optional_get, ptr @__ksymtab_devm_phy_put, ptr @__ksymtab_of_phy_get, ptr @__ksymtab_of_phy_provider_unregister, ptr @__ksymtab_of_phy_put, ptr @__ksymtab_of_phy_simple_xlate, ptr @__ksymtab_phy_calibrate, ptr @__ksymtab_phy_configure, ptr @__ksymtab_phy_create, ptr @__ksymtab_phy_create_lookup, ptr @__ksymtab_phy_destroy, ptr @__ksymtab_phy_exit, ptr @__ksymtab_phy_get, ptr @__ksymtab_phy_init, ptr @__ksymtab_phy_optional_get, ptr @__ksymtab_phy_pm_runtime_allow, ptr @__ksymtab_phy_pm_runtime_forbid, ptr @__ksymtab_phy_pm_runtime_get, ptr @__ksymtab_phy_pm_runtime_get_sync, ptr @__ksymtab_phy_pm_runtime_put, ptr @__ksymtab_phy_pm_runtime_put_sync, ptr @__ksymtab_phy_power_off, ptr @__ksymtab_phy_power_on, ptr @__ksymtab_phy_put, ptr @__ksymtab_phy_remove_lookup, ptr @__ksymtab_phy_reset, ptr @__ksymtab_phy_set_media, ptr @__ksymtab_phy_set_mode_ext, ptr @__ksymtab_phy_set_speed, ptr @__ksymtab_phy_validate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_create_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 20) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.phy_lookup, ptr %11, i32 0, i32 1
  store ptr %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.phy_lookup, ptr %11, i32 0, i32 2
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.phy_lookup, ptr %11, i32 0, i32 3
  store ptr %0, ptr %16, align 8
  tail call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phys, i32 0, i32 1), align 4
  store ptr %11, ptr getelementptr inbounds (%struct.list_head, ptr @phys, i32 0, i32 1), align 4
  store ptr @phys, ptr %11, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %11, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  br label %19

19:                                               ; preds = %13, %9, %3
  %20 = phi i32 [ 0, %13 ], [ -22, %3 ], [ -12, %9 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_remove_lookup(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %10 = load ptr, ptr @phys, align 4
  %11 = icmp eq ptr %10, @phys
  br i1 %11, label %35, label %12

12:                                               ; preds = %32, %9
  %13 = phi ptr [ %33, %32 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.phy_lookup, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.phy_lookup, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull %2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.phy_lookup, ptr %13, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull %1)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  tail call void @kfree(ptr noundef %13) #10
  br label %35

32:                                               ; preds = %22, %17, %12
  %33 = load ptr, ptr %13, align 4
  %34 = icmp eq ptr %33, @phys
  br i1 %34, label %35, label %12

35:                                               ; preds = %32, %27, %9
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_pm_runtime_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 5) #10
  %10 = icmp slt i32 %9, 0
  %11 = icmp ne i32 %9, -115
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #10, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #10, !srcloc !10
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  br label %19

19:                                               ; preds = %18, %13, %8, %3, %1
  %20 = phi i32 [ 0, %1 ], [ -524, %3 ], [ %9, %8 ], [ %9, %13 ], [ %9, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_pm_runtime_get_sync(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  br label %13

13:                                               ; preds = %11, %8, %3, %1
  %14 = phi i32 [ 0, %1 ], [ -524, %3 ], [ %9, %11 ], [ %9, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_pm_runtime_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 5) #10
  br label %10

10:                                               ; preds = %8, %3, %1
  %11 = phi i32 [ %9, %8 ], [ 0, %1 ], [ -524, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_pm_runtime_put_sync(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  br label %10

10:                                               ; preds = %8, %3, %1
  %11 = phi i32 [ %9, %8 ], [ 0, %1 ], [ -524, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_pm_runtime_allow(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @pm_runtime_allow(ptr noundef nonnull %0) #10
  br label %9

9:                                                ; preds = %8, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_pm_runtime_forbid(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @pm_runtime_forbid(ptr noundef nonnull %0) #10
  br label %9

9:                                                ; preds = %8, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_init(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  %13 = icmp eq i32 %9, -524
  br i1 %13, label %14, label %41

14:                                               ; preds = %11, %8, %3
  %15 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %22(ptr noundef nonnull %0) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %16, align 4
  br label %30

29:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %25) #11
  br label %34

30:                                               ; preds = %27, %19, %14
  %31 = phi i32 [ %28, %27 ], [ 0, %19 ], [ %17, %14 ]
  %32 = phi i32 [ %25, %27 ], [ 0, %19 ], [ 0, %14 ]
  %33 = add i32 %31, 1
  store i32 %33, ptr %16, align 4
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ %25, %29 ], [ %32, %30 ]
  tail call void @mutex_unlock(ptr noundef %15) #10
  %36 = load i16, ptr %4, align 8
  %37 = and i16 %36, 7
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 5) #10
  br label %41

41:                                               ; preds = %39, %34, %11, %1
  %42 = phi i32 [ 0, %1 ], [ %9, %11 ], [ %35, %34 ], [ %35, %39 ]
  ret i32 %42
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_exit(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 7
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  %13 = icmp eq i32 %9, -524
  br i1 %13, label %14, label %42

14:                                               ; preds = %11, %8, %3
  %15 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.phy_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef nonnull %0) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 4
  br label %31

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %26) #11
  br label %35

31:                                               ; preds = %28, %19, %14
  %32 = phi i32 [ %29, %28 ], [ 1, %19 ], [ %17, %14 ]
  %33 = phi i32 [ %26, %28 ], [ 0, %19 ], [ 0, %14 ]
  %34 = add i32 %32, -1
  store i32 %34, ptr %16, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i32 [ %26, %30 ], [ %33, %31 ]
  tail call void @mutex_unlock(ptr noundef %15) #10
  %37 = load i16, ptr %4, align 8
  %38 = and i16 %37, 7
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 5) #10
  br label %42

42:                                               ; preds = %40, %35, %11, %1
  %43 = phi i32 [ 0, %1 ], [ %9, %11 ], [ %36, %35 ], [ %36, %40 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_power_on(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  %20 = icmp eq i32 %16, -524
  br i1 %20, label %21, label %46

21:                                               ; preds = %18, %15, %10
  %22 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.phy_ops, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %26
  %33 = tail call i32 %30(ptr noundef nonnull %0) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %23, align 8
  br label %43

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %33) #11
  tail call void @mutex_unlock(ptr noundef %22) #10
  %38 = load i16, ptr %11, align 8
  %39 = and i16 %38, 7
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  br label %46

43:                                               ; preds = %35, %26, %21
  %44 = phi i32 [ %36, %35 ], [ 0, %26 ], [ %24, %21 ]
  %45 = add i32 %44, 1
  store i32 %45, ptr %23, align 8
  tail call void @mutex_unlock(ptr noundef %22) #10
  br label %52

46:                                               ; preds = %41, %37, %18
  %47 = phi i32 [ %16, %18 ], [ %33, %37 ], [ %33, %41 ]
  %48 = load ptr, ptr %4, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @regulator_disable(ptr noundef nonnull %48) #10
  br label %52

52:                                               ; preds = %50, %46, %43, %7, %1
  %53 = phi i32 [ 0, %43 ], [ %8, %7 ], [ %47, %50 ], [ %47, %46 ], [ 0, %1 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_power_off(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.phy_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef nonnull %0) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %5, align 8
  br label %20

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %15) #11
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %35

20:                                               ; preds = %17, %8, %3
  %21 = phi i32 [ %18, %17 ], [ %6, %3 ], [ 1, %8 ]
  %22 = add i32 %21, -1
  store i32 %22, ptr %5, align 8
  tail call void @mutex_unlock(ptr noundef %4) #10
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 7
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 5) #10
  br label %29

29:                                               ; preds = %27, %20
  %30 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @regulator_disable(ptr noundef nonnull %31) #10
  br label %35

35:                                               ; preds = %33, %29, %19, %1
  %36 = phi i32 [ %15, %19 ], [ 0, %1 ], [ 0, %33 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_set_mode_ext(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.phy_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.phy_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 6, i32 2
  store i32 %1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %11
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %21

21:                                               ; preds = %20, %5, %3
  %22 = phi i32 [ %16, %20 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_set_media(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.phy_ops, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef nonnull %0, i32 noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %16

16:                                               ; preds = %10, %4, %2
  %17 = phi i32 [ %15, %10 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_set_speed(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_ops, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.phy_ops, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef nonnull %0, i32 noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %16

16:                                               ; preds = %10, %4, %2
  %17 = phi i32 [ %15, %10 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_reset(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.phy_ops, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %0, i32 noundef 4) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 4) #10
  %19 = icmp eq i32 %15, -524
  br i1 %19, label %20, label %31

20:                                               ; preds = %17, %14, %9
  %21 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %21) #10
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.phy_ops, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef nonnull %0) #10
  tail call void @mutex_unlock(ptr noundef %21) #10
  %26 = load i16, ptr %10, align 8
  %27 = and i16 %26, 7
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %0, i32 noundef 5) #10
  br label %31

31:                                               ; preds = %29, %20, %17, %3, %1
  %32 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %15, %17 ], [ %25, %20 ], [ %25, %29 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_calibrate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.phy_ops, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.phy_ops, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef nonnull %0) #10
  tail call void @mutex_unlock(ptr noundef %10) #10
  br label %15

15:                                               ; preds = %9, %3, %1
  %16 = phi i32 [ %14, %9 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_configure(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.phy_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef nonnull %0, ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %16

16:                                               ; preds = %10, %4, %2
  %17 = phi i32 [ %15, %10 ], [ -22, %2 ], [ -95, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_validate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.phy_ops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.phy_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef %13) #10
  br label %18

18:                                               ; preds = %12, %6, %4
  %19 = phi i32 [ %17, %12 ], [ -22, %4 ], [ -95, %6 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_phy_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #10
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %8 = tail call fastcc ptr @_of_phy_get(ptr noundef %0, i32 noundef %7)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.phy, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.phy_ops, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #10
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call ptr @get_device(ptr noundef %8) #10
  br label %18

18:                                               ; preds = %16, %10, %6
  %19 = phi ptr [ %8, %16 ], [ %8, %6 ], [ inttoptr (i32 -517 to ptr), %10 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_of_phy_get(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !12
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef -1, i32 noundef %1, ptr noundef nonnull %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 4
  %8 = call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.18) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %6
  call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %11 = load ptr, ptr %3, align 4
  %12 = load ptr, ptr @phy_provider_list, align 4
  %13 = icmp eq ptr %12, @phy_provider_list
  br i1 %13, label %56, label %17

14:                                               ; preds = %32, %24
  %15 = load ptr, ptr %18, align 4
  %16 = icmp eq ptr %15, @phy_provider_list
  br i1 %16, label %56, label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %19 = getelementptr i8, ptr %18, i32 -12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %11
  br i1 %23, label %36, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %18, i32 -8
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr @of_get_next_child(ptr noundef %26, ptr noundef null) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %14, label %29

29:                                               ; preds = %32, %24
  %30 = phi ptr [ %34, %32 ], [ %27, %24 ]
  %31 = icmp eq ptr %30, %11
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %25, align 4
  %34 = call ptr @of_get_next_child(ptr noundef %33, ptr noundef nonnull %30) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %14, label %29

36:                                               ; preds = %29, %17
  %37 = getelementptr i8, ptr %18, i32 -12
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %56, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %18, i32 -4
  %41 = load ptr, ptr %40, align 4
  %42 = call zeroext i1 @try_module_get(ptr noundef %41) #10
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load ptr, ptr %3, align 4
  %45 = call zeroext i1 @of_device_is_available(ptr noundef %44) #10
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.19) #11
  br label %53

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %18, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %37, align 4
  %52 = call ptr %50(ptr noundef %51, ptr noundef nonnull %3) #10
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi ptr [ %52, %48 ], [ inttoptr (i32 -19 to ptr), %46 ]
  %55 = load ptr, ptr %40, align 4
  call void @module_put(ptr noundef %55) #10
  br label %56

56:                                               ; preds = %53, %39, %36, %14, %10
  %57 = phi ptr [ %54, %53 ], [ inttoptr (i32 -517 to ptr), %39 ], [ inttoptr (i32 -517 to ptr), %36 ], [ inttoptr (i32 -517 to ptr), %10 ], [ inttoptr (i32 -517 to ptr), %14 ]
  call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  %58 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %58) #10
  br label %59

59:                                               ; preds = %56, %6, %2
  %60 = phi ptr [ %57, %56 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_phy_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.phy_ops, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void %10(ptr noundef nonnull %0) #10
  br label %13

13:                                               ; preds = %12, %5
  tail call void @mutex_unlock(ptr noundef %6) #10
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.phy_ops, ptr %14, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  tail call void @module_put(ptr noundef %16) #10
  tail call void @put_device(ptr noundef nonnull %0) #10
  br label %17

17:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_put(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @device_link_remove(ptr noundef %0, ptr noundef %1) #10
  %3 = icmp eq ptr %1, null
  %4 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy, ptr %1, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.phy, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.phy_ops, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void %11(ptr noundef nonnull %1) #10
  br label %14

14:                                               ; preds = %13, %6
  tail call void @mutex_unlock(ptr noundef %7) #10
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.phy_ops, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  tail call void @module_put(ptr noundef %17) #10
  tail call void @put_device(ptr noundef nonnull %1) #10
  br label %18

18:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_phy_put(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_phy_release, ptr noundef nonnull @devm_phy_match, ptr noundef nonnull %1) #10
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @devm_phy_put.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %19, !prof !13

10:                                               ; preds = %4
  store i1 true, ptr @devm_phy_put.__already_done, align 1
  %11 = tail call ptr @dev_driver_string(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %16, %15 ], [ %13, %10 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 649, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %11, ptr noundef %18) #10
  br label %19

19:                                               ; preds = %17, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_phy_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @device_link_remove(ptr noundef %0, ptr noundef %3) #10
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.phy, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.phy, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.phy_ops, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void %12(ptr noundef nonnull %3) #10
  br label %15

15:                                               ; preds = %14, %7
  tail call void @mutex_unlock(ptr noundef %8) #10
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.phy_ops, ptr %16, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  tail call void @module_put(ptr noundef %18) #10
  tail call void @put_device(ptr noundef nonnull %3) #10
  br label %19

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_phy_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #5 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_phy_simple_xlate(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !12
  %4 = load ptr, ptr @phy_class, align 4
  call void @class_dev_iter_init(ptr noundef nonnull %3, ptr noundef %4, ptr noundef null, ptr noundef null) #10
  br label %5

5:                                                ; preds = %8, %2
  %6 = call ptr @class_dev_iter_next(ptr noundef nonnull %3) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %5

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %6, %8 ], [ inttoptr (i32 -19 to ptr), %5 ]
  call void @class_dev_iter_exit(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret ptr %14
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_dev_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %1, null
  br i1 %5, label %15, label %7

7:                                                ; preds = %2
  br i1 %6, label %11, label %8

8:                                                ; preds = %7
  %9 = tail call i32 @of_property_match_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #10
  %10 = load ptr, ptr %3, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi ptr [ %10, %8 ], [ %4, %7 ]
  %13 = phi i32 [ %9, %8 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @_of_phy_get(ptr noundef %12, i32 noundef %13)
  br label %55

15:                                               ; preds = %2
  br i1 %6, label %16, label %25

16:                                               ; preds = %15
  %17 = tail call ptr @dev_driver_string(ptr noundef %0) #10
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load ptr, ptr %0, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %22, %21 ], [ %19, %16 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 709, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %17, ptr noundef %24) #10
  br label %67

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %27, %25 ]
  tail call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %33 = load ptr, ptr @phys, align 4
  %34 = icmp eq ptr %33, @phys
  br i1 %34, label %35, label %36

35:                                               ; preds = %47, %31
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  br label %67

36:                                               ; preds = %47, %31
  %37 = phi ptr [ %48, %47 ], [ %33, %31 ]
  %38 = getelementptr inbounds %struct.phy_lookup, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strcmp(ptr noundef %39, ptr noundef %32) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.phy_lookup, ptr %37, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @strcmp(ptr noundef %44, ptr noundef nonnull %1) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %36
  %48 = load ptr, ptr %37, align 4
  %49 = icmp eq ptr %48, @phys
  br i1 %49, label %35, label %36

50:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  %51 = icmp eq ptr %37, null
  br i1 %51, label %67, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.phy_lookup, ptr %37, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %11
  %56 = phi ptr [ %14, %11 ], [ %54, %52 ]
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.phy, ptr %56, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.phy_ops, ptr %60, i32 0, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = tail call zeroext i1 @try_module_get(ptr noundef %62) #10
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = tail call ptr @get_device(ptr noundef %56) #10
  %66 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef %56, i32 noundef 1) #10
  br label %67

67:                                               ; preds = %64, %58, %55, %50, %35, %23
  %68 = phi ptr [ %56, %64 ], [ inttoptr (i32 -22 to ptr), %23 ], [ %56, %55 ], [ inttoptr (i32 -517 to ptr), %58 ], [ inttoptr (i32 -19 to ptr), %35 ], [ inttoptr (i32 -19 to ptr), %50 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_optional_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @phy_get(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, inttoptr (i32 -19 to ptr)
  %5 = select i1 %4, ptr null, ptr %3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_phy_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @phy_get(ptr noundef %0, ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #10
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_phy_optional_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @phy_get(ptr noundef %0, ptr noundef %1) #10
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #10
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  %12 = icmp eq ptr %11, inttoptr (i32 -19 to ptr)
  %13 = select i1 %12, ptr null, ptr %11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_phy_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #10
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %9, %8 ], [ 0, %6 ]
  %12 = tail call fastcc ptr @_of_phy_get(ptr noundef %1, i32 noundef %11) #10
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.phy, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.phy_ops, ptr %16, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 @try_module_get(ptr noundef %18) #10
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = tail call ptr @get_device(ptr noundef %12) #10
  store ptr %12, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #10
  %22 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef %12, i32 noundef 1) #10
  br label %25

23:                                               ; preds = %14, %10
  %24 = phi ptr [ inttoptr (i32 -517 to ptr), %14 ], [ %12, %10 ]
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %25

25:                                               ; preds = %23, %20, %3
  %26 = phi ptr [ %24, %23 ], [ %12, %20 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_phy_get_by_index(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @_of_phy_get(ptr noundef %1, i32 noundef %2)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.phy, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.phy_ops, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @try_module_get(ptr noundef %14) #10
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %4) #10
  br label %20

17:                                               ; preds = %10
  %18 = tail call ptr @get_device(ptr noundef %7) #10
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #10
  %19 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef %7, i32 noundef 1) #10
  br label %20

20:                                               ; preds = %17, %16, %9, %3
  %21 = phi ptr [ %7, %9 ], [ %7, %17 ], [ inttoptr (i32 -517 to ptr), %16 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 906, i32 noundef 9, ptr noundef null) #10
  br label %57

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 528) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @ida_alloc_range(ptr noundef nonnull @phy_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #11
  tail call void @kfree(ptr noundef nonnull %8) #10
  %14 = inttoptr i32 %11 to ptr
  br label %57

15:                                               ; preds = %10
  tail call void @device_initialize(ptr noundef nonnull %8) #10
  %16 = getelementptr inbounds %struct.phy, ptr %8, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @phy_create.__key) #10
  %17 = load ptr, ptr @phy_class, align 4
  %18 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 31
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  store ptr %0, ptr %19, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi ptr [ %23, %21 ], [ %1, %15 ]
  %26 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.phy, ptr %8, i32 0, i32 1
  store i32 %11, ptr %27, align 8
  %28 = getelementptr inbounds %struct.phy, ptr %8, i32 0, i32 2
  store ptr %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load ptr, ptr %0, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ %33, %32 ], [ %30, %24 ]
  %36 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %8, ptr noundef nonnull @.str.11, ptr noundef %35, i32 noundef %11) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = tail call ptr @regulator_get_optional(ptr noundef nonnull %8, ptr noundef nonnull @.str.12) #10
  %40 = getelementptr inbounds %struct.phy, ptr %8, i32 0, i32 7
  store ptr %39, ptr %40, align 8
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = icmp eq ptr %39, inttoptr (i32 -517 to ptr)
  br i1 %43, label %54, label %44

44:                                               ; preds = %42
  store ptr null, ptr %40, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = tail call i32 @device_add(ptr noundef nonnull %8) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %50 = load i16, ptr %49, align 8
  %51 = and i16 %50, 7
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  tail call void @pm_runtime_enable(ptr noundef nonnull %8) #10
  tail call void @pm_runtime_no_callbacks(ptr noundef nonnull %8) #10
  br label %57

54:                                               ; preds = %45, %42, %34
  %55 = phi i32 [ %36, %34 ], [ -517, %42 ], [ %46, %45 ]
  tail call void @put_device(ptr noundef nonnull %8) #10
  %56 = inttoptr i32 %55 to ptr
  br label %57

57:                                               ; preds = %54, %53, %48, %13, %6, %5
  %58 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %14, %13 ], [ %56, %54 ], [ %8, %53 ], [ %8, %48 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_phy_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_consume, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.13) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @phy_create(ptr noundef %0, ptr noundef %1, ptr noundef %2)
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_phy_consume(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #10
  tail call void @device_unregister(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_destroy(ptr noundef %0) #0 {
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #10
  tail call void @device_unregister(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_phy_destroy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_phy_consume, ptr noundef nonnull @devm_phy_match, ptr noundef %1) #10
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @devm_phy_destroy.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %17, !prof !13

8:                                                ; preds = %2
  store i1 true, ptr @devm_phy_destroy.__already_done, align 1
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1022, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %9, ptr noundef %16) #10
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_phy_provider_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @of_node_get(ptr noundef nonnull %1) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %7, %9 ], [ %16, %15 ]
  %13 = load ptr, ptr %10, align 8
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @of_get_parent(ptr noundef nonnull %12) #10
  tail call void @of_node_put(ptr noundef nonnull %12) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %11

18:                                               ; preds = %11
  tail call void @of_node_put(ptr noundef nonnull %12) #10
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi ptr [ %1, %18 ], [ %21, %19 ]
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 24) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  store ptr %0, ptr %25, align 8
  %28 = tail call ptr @of_node_get(ptr noundef %23) #10
  %29 = getelementptr inbounds %struct.phy_provider, ptr %25, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.phy_provider, ptr %25, i32 0, i32 2
  store ptr %2, ptr %30, align 8
  %31 = getelementptr inbounds %struct.phy_provider, ptr %25, i32 0, i32 4
  store ptr %3, ptr %31, align 4
  tail call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %32 = getelementptr inbounds %struct.phy_provider, ptr %25, i32 0, i32 3
  %33 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phy_provider_list, i32 0, i32 1), align 4
  store ptr %32, ptr getelementptr inbounds (%struct.list_head, ptr @phy_provider_list, i32 0, i32 1), align 4
  store ptr @phy_provider_list, ptr %32, align 4
  %34 = getelementptr inbounds %struct.phy_provider, ptr %25, i32 0, i32 3, i32 1
  store ptr %33, ptr %34, align 8
  store volatile ptr %32, ptr %33, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  br label %35

35:                                               ; preds = %27, %22, %15, %6
  %36 = phi ptr [ %25, %27 ], [ inttoptr (i32 -12 to ptr), %22 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %15 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_of_phy_provider_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_provider_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.14) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @__of_phy_provider_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store ptr %8, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #10
  br label %12

11:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #10
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi ptr [ %8, %11 ], [ %8, %10 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_phy_provider_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %6 = getelementptr inbounds %struct.phy_provider, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.phy_provider, ptr %3, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.phy_provider, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @of_node_put(ptr noundef %12) #10
  tail call void @kfree(ptr noundef %3) #10
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  br label %13

13:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_phy_provider_unregister(ptr noundef %0) #0 {
  %2 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @phy_provider_mutex) #10
  %4 = getelementptr inbounds %struct.phy_provider, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.phy_provider, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = getelementptr inbounds %struct.phy_provider, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @of_node_put(ptr noundef %10) #10
  tail call void @kfree(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef nonnull @phy_provider_mutex) #10
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_of_phy_provider_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_destroy(ptr noundef %0, ptr noundef nonnull @devm_phy_provider_release, ptr noundef nonnull @devm_phy_match, ptr noundef %1) #10
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @devm_of_phy_provider_unregister.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %17, !prof !13

8:                                                ; preds = %2
  store i1 true, ptr @devm_of_phy_provider_unregister.__already_done, align 1
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %9, ptr noundef %16) #10
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_core_init() #7 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @phy_core_init.__key) #10
  store ptr %1, ptr @phy_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %4) #11
  %6 = load ptr, ptr @phy_class, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %10

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 8
  store ptr @phy_release, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %7, %3 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @phy_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  tail call void @regulator_put(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  tail call void @ida_free(ptr noundef nonnull @phy_ida, i32 noundef %5) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2147938839}
!9 = !{i64 437149, i64 2147927120, i64 2147927146, i64 2147927193, i64 2147927215, i64 2147927243, i64 2147927263}
!10 = !{i64 423718, i64 423743, i64 423765, i64 423781, i64 423793, i64 423813, i64 423837, i64 423853, i64 423865}
!11 = !{i64 2147938965}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 1, i32 2000}
