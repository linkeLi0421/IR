; ModuleID = '/llk/IR/drivers/extcon/extcon.c_pt.bc'
source_filename = "../drivers/extcon/extcon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_sync\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_get_state\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_set_state\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_set_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_set_state_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_set_state_sync\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_set_state_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_get_property\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_set_property:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_set_property\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_set_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_set_property_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_set_property_sync\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_set_property_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_get_property_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_get_property_capability\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_get_property_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_set_property_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_set_property_capability\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_set_property_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_get_extcon_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_get_extcon_dev\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_get_extcon_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_register_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_register_notifier_all\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_register_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_unregister_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_unregister_notifier_all\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_unregister_notifier_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_dev_free:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_dev_free\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_dev_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_find_edev_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_find_edev_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_find_edev_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_get_edev_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_get_edev_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_get_edev_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_extcon_get_edev_name:\09\09\09\09\09"
module asm "\09.asciz \09\22extcon_get_edev_name\22\09\09\09\09\09"
module asm "__kstrtabns_extcon_get_edev_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.__extcon_info = type { i32, i32, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.extcon_dev = type { ptr, ptr, ptr, %struct.device, %struct.raw_notifier_head, ptr, %struct.list_head, i32, %struct.spinlock, i32, %struct.device_type, ptr, %struct.attribute_group, ptr, ptr }
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
%struct.raw_notifier_head = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.extcon_cable = type { ptr, i32, %struct.attribute_group, %struct.device_attribute, %struct.device_attribute, [3 x ptr], [3 x %union.extcon_property_value], [1 x %union.extcon_property_value], [1 x %union.extcon_property_value], [2 x %union.extcon_property_value], [1 x i32], [1 x i32], [1 x i32], [1 x i32] }
%union.extcon_property_value = type { i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [35 x i8] c"out of memory in extcon_set_state\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NAME=%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"STATE=%s\00", align 1
@__kstrtab_extcon_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_sync to i32), ptr @__kstrtab_extcon_sync, ptr @__kstrtabns_extcon_sync }, section "___ksymtab_gpl+extcon_sync", align 4
@__kstrtab_extcon_get_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_get_state = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_get_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_get_state to i32), ptr @__kstrtab_extcon_get_state, ptr @__kstrtabns_extcon_get_state }, section "___ksymtab_gpl+extcon_get_state", align 4
@__kstrtab_extcon_set_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_set_state = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_set_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_set_state to i32), ptr @__kstrtab_extcon_set_state, ptr @__kstrtabns_extcon_set_state }, section "___ksymtab_gpl+extcon_set_state", align 4
@__kstrtab_extcon_set_state_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_set_state_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_set_state_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_set_state_sync to i32), ptr @__kstrtab_extcon_set_state_sync, ptr @__kstrtabns_extcon_set_state_sync }, section "___ksymtab_gpl+extcon_set_state_sync", align 4
@__kstrtab_extcon_get_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_get_property = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_get_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_get_property to i32), ptr @__kstrtab_extcon_get_property, ptr @__kstrtabns_extcon_get_property }, section "___ksymtab_gpl+extcon_get_property", align 4
@__kstrtab_extcon_set_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_set_property = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_set_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_set_property to i32), ptr @__kstrtab_extcon_set_property, ptr @__kstrtabns_extcon_set_property }, section "___ksymtab_gpl+extcon_set_property", align 4
@__kstrtab_extcon_set_property_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_set_property_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_set_property_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_set_property_sync to i32), ptr @__kstrtab_extcon_set_property_sync, ptr @__kstrtabns_extcon_set_property_sync }, section "___ksymtab_gpl+extcon_set_property_sync", align 4
@__kstrtab_extcon_get_property_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_get_property_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_get_property_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_get_property_capability to i32), ptr @__kstrtab_extcon_get_property_capability, ptr @__kstrtabns_extcon_get_property_capability }, section "___ksymtab_gpl+extcon_get_property_capability", align 4
@__kstrtab_extcon_set_property_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_set_property_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_set_property_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_set_property_capability to i32), ptr @__kstrtab_extcon_set_property_capability, ptr @__kstrtabns_extcon_set_property_capability }, section "___ksymtab_gpl+extcon_set_property_capability", align 4
@extcon_dev_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @extcon_dev_list_lock, i64 12), ptr getelementptr (i8, ptr @extcon_dev_list_lock, i64 12) } }, align 4
@extcon_dev_list = internal global %struct.list_head { ptr @extcon_dev_list, ptr @extcon_dev_list }, align 4
@__kstrtab_extcon_get_extcon_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_get_extcon_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_get_extcon_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_get_extcon_dev to i32), ptr @__kstrtab_extcon_get_extcon_dev, ptr @__kstrtabns_extcon_get_extcon_dev }, section "___ksymtab_gpl+extcon_get_extcon_dev", align 4
@__kstrtab_extcon_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_register_notifier to i32), ptr @__kstrtab_extcon_register_notifier, ptr @__kstrtabns_extcon_register_notifier }, section "___ksymtab_gpl+extcon_register_notifier", align 4
@__kstrtab_extcon_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_unregister_notifier to i32), ptr @__kstrtab_extcon_unregister_notifier, ptr @__kstrtabns_extcon_unregister_notifier }, section "___ksymtab_gpl+extcon_unregister_notifier", align 4
@__kstrtab_extcon_register_notifier_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_register_notifier_all = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_register_notifier_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_register_notifier_all to i32), ptr @__kstrtab_extcon_register_notifier_all, ptr @__kstrtabns_extcon_register_notifier_all }, section "___ksymtab_gpl+extcon_register_notifier_all", align 4
@__kstrtab_extcon_unregister_notifier_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_unregister_notifier_all = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_unregister_notifier_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_unregister_notifier_all to i32), ptr @__kstrtab_extcon_unregister_notifier_all, ptr @__kstrtabns_extcon_unregister_notifier_all }, section "___ksymtab_gpl+extcon_unregister_notifier_all", align 4
@__kstrtab_extcon_dev_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_dev_free = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_dev_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_dev_free to i32), ptr @__kstrtab_extcon_dev_free, ptr @__kstrtabns_extcon_dev_free }, section "___ksymtab_gpl+extcon_dev_free", align 4
@extcon_dev_register.edev_no = internal global %struct.atomic_t { i32 -1 }, align 4
@extcon_class = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"exceed the maximum number of supported cables\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"extcon device name is null\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"extcon%lu\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cable.%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@__kstrtab_extcon_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_dev_register to i32), ptr @__kstrtab_extcon_dev_register, ptr @__kstrtabns_extcon_dev_register }, section "___ksymtab_gpl+extcon_dev_register", align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to unregister extcon_dev (%s)\0A\00", align 1
@__kstrtab_extcon_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_dev_unregister to i32), ptr @__kstrtab_extcon_dev_unregister, ptr @__kstrtabns_extcon_dev_unregister }, section "___ksymtab_gpl+extcon_dev_unregister", align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@__kstrtab_extcon_find_edev_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_find_edev_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_find_edev_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_find_edev_by_node to i32), ptr @__kstrtab_extcon_find_edev_by_node, ptr @__kstrtabns_extcon_find_edev_by_node }, section "___ksymtab_gpl+extcon_find_edev_by_node", align 4
@__kstrtab_extcon_get_edev_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_get_edev_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_get_edev_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_get_edev_by_phandle to i32), ptr @__kstrtab_extcon_get_edev_by_phandle, ptr @__kstrtabns_extcon_get_edev_by_phandle }, section "___ksymtab_gpl+extcon_get_edev_by_phandle", align 4
@__kstrtab_extcon_get_edev_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_extcon_get_edev_name = external dso_local constant [0 x i8], align 1
@__ksymtab_extcon_get_edev_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @extcon_get_edev_name to i32), ptr @__kstrtab_extcon_get_edev_name, ptr @__kstrtabns_extcon_get_edev_name }, section "___ksymtab_gpl+extcon_get_edev_name", align 4
@__initcall__kmod_extcon_core__206_1404_extcon_class_init6 = internal global ptr @extcon_class_init, section ".initcall6.init", align 4
@__exitcall_extcon_class_exit = internal global ptr @extcon_class_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [56 x i8] c"extcon_core.author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author208 = internal constant [59 x i8] c"extcon_core.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description209 = internal constant [62 x i8] c"extcon_core.description=External Connector (extcon) framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [44 x i8] c"extcon_core.file=drivers/extcon/extcon-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [27 x i8] c"extcon_core.license=GPL v2\00", section ".modinfo", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s=%d\0A\00", align 1
@extcon_info = internal unnamed_addr constant [64 x %struct.__extcon_info] [%struct.__extcon_info { i32 16, i32 0, ptr @.str.15 }, %struct.__extcon_info { i32 1, i32 1, ptr @.str.16 }, %struct.__extcon_info { i32 1, i32 2, ptr @.str.17 }, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info { i32 3, i32 5, ptr @.str.18 }, %struct.__extcon_info { i32 3, i32 6, ptr @.str.19 }, %struct.__extcon_info { i32 3, i32 7, ptr @.str.20 }, %struct.__extcon_info { i32 3, i32 8, ptr @.str.21 }, %struct.__extcon_info { i32 3, i32 9, ptr @.str.22 }, %struct.__extcon_info { i32 3, i32 10, ptr @.str.23 }, %struct.__extcon_info { i32 2, i32 11, ptr @.str.24 }, %struct.__extcon_info { i32 3, i32 12, ptr @.str.25 }, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info { i32 4, i32 20, ptr @.str.26 }, %struct.__extcon_info { i32 4, i32 21, ptr @.str.27 }, %struct.__extcon_info { i32 4, i32 22, ptr @.str.28 }, %struct.__extcon_info { i32 4, i32 23, ptr @.str.29 }, %struct.__extcon_info { i32 4, i32 24, ptr @.str.30 }, %struct.__extcon_info { i32 4, i32 25, ptr @.str.31 }, %struct.__extcon_info { i32 4, i32 26, ptr @.str.32 }, %struct.__extcon_info { i32 4, i32 27, ptr @.str.33 }, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info { i32 8, i32 40, ptr @.str.34 }, %struct.__extcon_info { i32 8, i32 41, ptr @.str.35 }, %struct.__extcon_info { i32 8, i32 42, ptr @.str.36 }, %struct.__extcon_info { i32 8, i32 43, ptr @.str.37 }, %struct.__extcon_info { i32 9, i32 44, ptr @.str.38 }, %struct.__extcon_info { i32 9, i32 45, ptr @.str.39 }, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info zeroinitializer, %struct.__extcon_info { i32 16, i32 60, ptr @.str.40 }, %struct.__extcon_info { i32 16, i32 61, ptr @.str.41 }, %struct.__extcon_info { i32 16, i32 62, ptr @.str.42 }, %struct.__extcon_info zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"USB-HOST\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"SDP\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"DCP\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"CDP\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ACA\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"FAST-CHARGER\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"SLOW-CHARGER\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"WPT\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"MICROPHONE\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"HEADPHONE\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"LINE-IN\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"LINE-OUT\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"VIDEO-IN\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"VIDEO-OUT\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"SPDIF-IN\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"SPDIF-OUT\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"MHL\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"DVI\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"VGA\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"DP\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"HMD\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"DOCK\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"JIG\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"MECHANICAL\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@create_extcon_class.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@extcon_groups = internal global [2 x ptr] [ptr @extcon_group, ptr null], align 4
@extcon_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @extcon_attrs, ptr null }, align 4
@extcon_attrs = internal global [3 x ptr] [ptr @dev_attr_state, ptr @dev_attr_name, ptr null], align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @state_show, ptr null }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @name_show, ptr null }, align 4
@.str.43 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"mutually_exclusive\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_extcon_class_exit, ptr @__initcall__kmod_extcon_core__206_1404_extcon_class_init6, ptr @__ksymtab_extcon_dev_free, ptr @__ksymtab_extcon_dev_register, ptr @__ksymtab_extcon_dev_unregister, ptr @__ksymtab_extcon_find_edev_by_node, ptr @__ksymtab_extcon_get_edev_by_phandle, ptr @__ksymtab_extcon_get_edev_name, ptr @__ksymtab_extcon_get_extcon_dev, ptr @__ksymtab_extcon_get_property, ptr @__ksymtab_extcon_get_property_capability, ptr @__ksymtab_extcon_get_state, ptr @__ksymtab_extcon_register_notifier, ptr @__ksymtab_extcon_register_notifier_all, ptr @__ksymtab_extcon_set_property, ptr @__ksymtab_extcon_set_property_capability, ptr @__ksymtab_extcon_set_property_sync, ptr @__ksymtab_extcon_set_state, ptr @__ksymtab_extcon_set_state_sync, ptr @__ksymtab_extcon_sync, ptr @__ksymtab_extcon_unregister_notifier, ptr @__ksymtab_extcon_unregister_notifier_all, ptr @extcon_class_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_sync(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [120 x i8], align 1
  %4 = alloca [120 x i8], align 1
  %5 = alloca [3 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(120) %3, i8 0, i32 120, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(120) %4, i8 0, i32 120, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %106, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr i32, ptr %13, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %106, label %14

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #16
  %25 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, %15
  %28 = and i32 %27, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #16
  %29 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.raw_notifier_head, ptr %30, i32 %15
  %32 = tail call i32 @raw_notifier_call_chain(ptr noundef %31, i32 noundef %28, ptr noundef nonnull %0) #16
  %33 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 4
  %34 = tail call i32 @raw_notifier_call_chain(ptr noundef %33, i32 noundef %28, ptr noundef nonnull %0) #16
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #16
  %36 = tail call i32 @get_zeroed_page(i32 noundef 2592) #16
  %37 = inttoptr i32 %36 to ptr
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %35) #16
  %40 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str) #17
  %41 = tail call i32 @kobject_uevent(ptr noundef %40, i32 noundef 2) #16
  br label %106

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3
  %44 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.12, ptr noundef %46) #16
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = add nsw i32 %47, -1
  %51 = getelementptr i8, ptr %37, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 10
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i8 0, ptr %51, align 1
  br label %55

55:                                               ; preds = %54, %49
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 120, ptr noundef nonnull @.str.1, ptr noundef nonnull %37)
  store ptr %3, ptr %5, align 4
  br label %57

57:                                               ; preds = %55, %42
  %58 = phi i32 [ 1, %55 ], [ 0, %42 ]
  %59 = load ptr, ptr %44, align 8
  %60 = getelementptr inbounds %struct.extcon_dev, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = icmp sgt i32 %61, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.extcon_dev, ptr %59, i32 0, i32 1
  %67 = getelementptr inbounds %struct.extcon_dev, ptr %59, i32 0, i32 9
  br label %72

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.extcon_dev, ptr %59, i32 0, i32 9
  %70 = load i32, ptr %69, align 8
  %71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %37, ptr noundef nonnull @.str.13, i32 noundef %70) #16
  br label %89

72:                                               ; preds = %72, %65
  %73 = phi i32 [ 0, %65 ], [ %85, %72 ]
  %74 = phi i32 [ 0, %65 ], [ %86, %72 ]
  %75 = getelementptr i8, ptr %37, i32 %73
  %76 = load ptr, ptr %66, align 4
  %77 = getelementptr i32, ptr %76, i32 %74
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %78, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %67, align 8
  %82 = lshr i32 %81, %74
  %83 = and i32 %82, 1
  %84 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %75, ptr noundef nonnull @.str.14, ptr noundef %80, i32 noundef %83) #16
  %85 = add i32 %84, %73
  %86 = add nuw nsw i32 %74, 1
  %87 = load i32, ptr %60, align 8
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %72, label %89

89:                                               ; preds = %72, %68
  %90 = phi i32 [ %71, %68 ], [ %85, %72 ]
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = add nsw i32 %90, -1
  %94 = getelementptr i8, ptr %37, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 10
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i8 0, ptr %94, align 1
  br label %98

98:                                               ; preds = %97, %92
  %99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 120, ptr noundef nonnull @.str.2, ptr noundef nonnull %37)
  %100 = add nuw nsw i32 %58, 1
  %101 = getelementptr [3 x ptr], ptr %5, i32 0, i32 %58
  store ptr %4, ptr %101, align 4
  br label %102

102:                                              ; preds = %98, %89, %63
  %103 = phi i32 [ %100, %98 ], [ %58, %89 ], [ %58, %63 ]
  %104 = getelementptr [3 x ptr], ptr %5, i32 0, i32 %103
  store ptr null, ptr %104, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %35) #16
  %105 = call i32 @kobject_uevent_env(ptr noundef %43, i32 noundef 2, ptr noundef nonnull %5) #16
  call void @free_pages(i32 noundef %36, i32 noundef 0) #16
  br label %106

106:                                              ; preds = %102, %39, %19, %7, %2
  %107 = phi i32 [ 0, %102 ], [ -12, %39 ], [ -22, %2 ], [ -22, %7 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #16
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.extcon_dev, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.extcon_dev, ptr %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.extcon_dev, ptr %5, i32 0, i32 9
  br label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.extcon_dev, ptr %5, i32 0, i32 9
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %16)
  br label %35

18:                                               ; preds = %18, %11
  %19 = phi i32 [ 0, %11 ], [ %31, %18 ]
  %20 = phi i32 [ 0, %11 ], [ %32, %18 ]
  %21 = getelementptr i8, ptr %2, i32 %19
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i32, ptr %22, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %24, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %13, align 8
  %28 = lshr i32 %27, %20
  %29 = and i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef %26, i32 noundef %29)
  %31 = add i32 %30, %19
  %32 = add nuw nsw i32 %20, 1
  %33 = load i32, ptr %6, align 8
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %18, label %35

35:                                               ; preds = %18, %14, %9
  %36 = phi i32 [ %17, %14 ], [ 0, %9 ], [ %31, %18 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_get_state(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %16, %8
  %12 = phi i32 [ 0, %8 ], [ %17, %16 ]
  %13 = getelementptr i32, ptr %10, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %26, label %11

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #16
  %22 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 9
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, %12
  %25 = and i32 %24, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #16
  br label %26

26:                                               ; preds = %19, %16, %4, %2
  %27 = phi i32 [ %25, %19 ], [ -22, %2 ], [ -22, %4 ], [ -22, %16 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_set_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %90

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr i32, ptr %11, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %90, label %12

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #16
  %23 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 8
  %25 = shl nuw i32 1, %13
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, %2
  br i1 %28, label %29, label %88

29:                                               ; preds = %20
  %30 = xor i32 %25, -1
  %31 = and i32 %24, %30
  %32 = zext i1 %2 to i32
  %33 = and i32 %25, %32
  %34 = or i32 %31, %33
  %35 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %29
  %39 = load i32, ptr %36, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %48, %38
  %42 = phi i32 [ %51, %48 ], [ %39, %38 ]
  %43 = phi i32 [ %47, %48 ], [ 0, %38 ]
  %44 = and i32 %42, %34
  %45 = tail call i32 @__sw_hweight32(i32 noundef %44) #16
  %46 = icmp sgt i32 %45, 1
  %47 = add i32 %43, 1
  br i1 %46, label %53, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %35, align 8
  %50 = getelementptr i32, ptr %49, i32 %47
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %41

53:                                               ; preds = %41
  %54 = icmp eq i32 %47, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %53, %48, %38, %29
  br i1 %2, label %83, label %56

56:                                               ; preds = %55
  %57 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = and i32 %58, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = getelementptr %struct.extcon_cable, ptr %60, i32 %13, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %64, i8 0, i32 12, i1 false) #16
  br label %65

65:                                               ; preds = %63, %56
  %66 = and i32 %58, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = getelementptr %struct.extcon_cable, ptr %60, i32 %13, i32 7
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = and i32 %58, 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = getelementptr %struct.extcon_cable, ptr %60, i32 %13, i32 8
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = and i32 %58, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = getelementptr %struct.extcon_cable, ptr %60, i32 %13, i32 9
  store i64 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, ptr %23, align 8
  %82 = and i32 %81, %30
  br label %86

83:                                               ; preds = %55
  %84 = load i32, ptr %23, align 8
  %85 = or i32 %84, %25
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i32 [ %85, %83 ], [ %82, %80 ]
  store i32 %87, ptr %23, align 8
  br label %88

88:                                               ; preds = %86, %53, %20
  %89 = phi i32 [ 0, %20 ], [ -1, %53 ], [ 0, %86 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #16
  br label %90

90:                                               ; preds = %88, %17, %5, %3
  %91 = phi i32 [ %89, %88 ], [ -22, %3 ], [ -22, %5 ], [ -22, %17 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_set_state_sync(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = tail call i32 @extcon_set_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @extcon_sync(ptr noundef %0, i32 noundef %1)
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %4, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_get_property(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  store i32 0, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %88, label %6

6:                                                ; preds = %4
  switch i32 %2, label %88 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %10
    i32 50, label %7
    i32 100, label %8
    i32 150, label %9
    i32 151, label %9
  ]

7:                                                ; preds = %6
  br label %10

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6, %6
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %6, %6
  %11 = phi i32 [ 1, %6 ], [ 1, %6 ], [ 1, %6 ], [ 2, %7 ], [ 4, %8 ], [ 8, %9 ]
  %12 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %88, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %88

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %28, %20
  %24 = phi i32 [ 0, %20 ], [ %29, %28 ]
  %25 = getelementptr i32, ptr %22, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, %18
  br i1 %30, label %88, label %23

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #16
  switch i32 %2, label %65 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %34
    i32 50, label %42
    i32 100, label %47
    i32 150, label %52
    i32 151, label %52
  ]

34:                                               ; preds = %31, %31, %31
  %35 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.extcon_cable, ptr %36, i32 %24, i32 10
  %38 = lshr i32 %2, 5
  %39 = getelementptr i32, ptr %37, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = lshr i32 %40, %2
  br label %61

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.extcon_cable, ptr %44, i32 %24, i32 11
  %46 = load volatile i32, ptr %45, align 4
  br label %61

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.extcon_cable, ptr %49, i32 %24, i32 12
  %51 = load volatile i32, ptr %50, align 4
  br label %61

52:                                               ; preds = %31, %31
  %53 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = add nsw i32 %2, -150
  %56 = getelementptr %struct.extcon_cable, ptr %54, i32 %24, i32 13
  %57 = lshr i32 %55, 5
  %58 = getelementptr i32, ptr %56, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = lshr i32 %59, %55
  br label %61

61:                                               ; preds = %52, %47, %42, %34
  %62 = phi i32 [ %60, %52 ], [ %51, %47 ], [ %46, %42 ], [ %41, %34 ]
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %86, label %65

65:                                               ; preds = %61, %31
  %66 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 9
  %67 = load i32, ptr %66, align 8
  %68 = shl nuw i32 1, %24
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %73 = load ptr, ptr %72, align 4
  switch i32 %2, label %86 [
    i32 0, label %74
    i32 1, label %74
    i32 2, label %74
    i32 50, label %76
    i32 100, label %78
    i32 150, label %80
    i32 151, label %80
  ]

74:                                               ; preds = %71, %71, %71
  %75 = getelementptr %struct.extcon_cable, ptr %73, i32 %24, i32 6, i32 %2
  br label %83

76:                                               ; preds = %71
  %77 = getelementptr %struct.extcon_cable, ptr %73, i32 %24, i32 7
  br label %83

78:                                               ; preds = %71
  %79 = getelementptr %struct.extcon_cable, ptr %73, i32 %24, i32 8
  br label %83

80:                                               ; preds = %71, %71
  %81 = add nsw i32 %2, -150
  %82 = getelementptr %struct.extcon_cable, ptr %73, i32 %24, i32 9, i32 %81
  br label %83

83:                                               ; preds = %80, %78, %76, %74
  %84 = phi ptr [ %82, %80 ], [ %79, %78 ], [ %77, %76 ], [ %75, %74 ]
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %3, align 4
  br label %86

86:                                               ; preds = %83, %71, %65, %61
  %87 = phi i32 [ -1, %61 ], [ 0, %65 ], [ -22, %71 ], [ 0, %83 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #16
  br label %88

88:                                               ; preds = %86, %28, %16, %10, %6, %4
  %89 = phi i32 [ -22, %4 ], [ -22, %10 ], [ -22, %6 ], [ -22, %16 ], [ %87, %86 ], [ -22, %28 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_set_property(ptr noundef %0, i32 noundef %1, i32 noundef %2, [1 x i32] %3) #0 {
  %5 = extractvalue [1 x i32] %3, 0
  %6 = icmp eq ptr %0, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %4
  switch i32 %2, label %85 [
    i32 0, label %11
    i32 1, label %11
    i32 2, label %11
    i32 50, label %8
    i32 100, label %9
    i32 150, label %10
    i32 151, label %10
  ]

8:                                                ; preds = %7
  br label %11

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7, %7
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %7, %7
  %12 = phi i32 [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 2, %8 ], [ 4, %9 ], [ 8, %10 ]
  %13 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 8
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %85

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %29, %21
  %25 = phi i32 [ 0, %21 ], [ %30, %29 ]
  %26 = getelementptr i32, ptr %23, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %25, 1
  %31 = icmp eq i32 %30, %19
  br i1 %31, label %85, label %24

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #16
  switch i32 %2, label %35 [
    i32 0, label %38
    i32 1, label %38
    i32 2, label %38
    i32 50, label %46
    i32 100, label %51
    i32 150, label %56
    i32 151, label %56
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  br label %70

38:                                               ; preds = %32, %32, %32
  %39 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.extcon_cable, ptr %40, i32 %25, i32 10
  %42 = lshr i32 %2, 5
  %43 = getelementptr i32, ptr %41, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = lshr i32 %44, %2
  br label %65

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr %struct.extcon_cable, ptr %48, i32 %25, i32 11
  %50 = load volatile i32, ptr %49, align 4
  br label %65

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.extcon_cable, ptr %53, i32 %25, i32 12
  %55 = load volatile i32, ptr %54, align 4
  br label %65

56:                                               ; preds = %32, %32
  %57 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = add nsw i32 %2, -150
  %60 = getelementptr %struct.extcon_cable, ptr %58, i32 %25, i32 13
  %61 = lshr i32 %59, 5
  %62 = getelementptr i32, ptr %60, i32 %61
  %63 = load volatile i32, ptr %62, align 4
  %64 = lshr i32 %63, %59
  br label %65

65:                                               ; preds = %56, %51, %46, %38
  %66 = phi ptr [ %58, %56 ], [ %53, %51 ], [ %48, %46 ], [ %40, %38 ]
  %67 = phi i32 [ %64, %56 ], [ %55, %51 ], [ %50, %46 ], [ %45, %38 ]
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %65, %35
  %71 = phi ptr [ %37, %35 ], [ %66, %65 ]
  switch i32 %2, label %83 [
    i32 0, label %72
    i32 1, label %72
    i32 2, label %72
    i32 50, label %74
    i32 100, label %76
    i32 150, label %78
    i32 151, label %78
  ]

72:                                               ; preds = %70, %70, %70
  %73 = getelementptr %struct.extcon_cable, ptr %71, i32 %25, i32 6, i32 %2
  br label %81

74:                                               ; preds = %70
  %75 = getelementptr %struct.extcon_cable, ptr %71, i32 %25, i32 7
  br label %81

76:                                               ; preds = %70
  %77 = getelementptr %struct.extcon_cable, ptr %71, i32 %25, i32 8
  br label %81

78:                                               ; preds = %70, %70
  %79 = add nsw i32 %2, -150
  %80 = getelementptr %struct.extcon_cable, ptr %71, i32 %25, i32 9, i32 %79
  br label %81

81:                                               ; preds = %78, %76, %74, %72
  %82 = phi ptr [ %80, %78 ], [ %77, %76 ], [ %75, %74 ], [ %73, %72 ]
  store i32 %5, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %70, %65
  %84 = phi i32 [ -1, %65 ], [ -22, %70 ], [ 0, %81 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #16
  br label %85

85:                                               ; preds = %83, %29, %17, %11, %7, %4
  %86 = phi i32 [ -22, %4 ], [ -22, %11 ], [ -22, %7 ], [ -22, %17 ], [ %84, %83 ], [ -22, %29 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_set_property_sync(ptr noundef %0, i32 noundef %1, i32 noundef %2, [1 x i32] %3) #0 {
  %5 = tail call i32 @extcon_set_property(ptr noundef %0, i32 noundef %1, i32 noundef %2, [1 x i32] %3)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @extcon_sync(ptr noundef %0, i32 noundef %1)
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_get_property_capability(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %3
  switch i32 %2, label %62 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 50, label %6
    i32 100, label %7
    i32 150, label %8
    i32 151, label %8
  ]

6:                                                ; preds = %5
  br label %9

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5, %5
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %5, %5
  %10 = phi i32 [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 2, %6 ], [ 4, %7 ], [ 8, %8 ]
  %11 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %27, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %27 ]
  %24 = getelementptr i32, ptr %21, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %62, label %22

30:                                               ; preds = %22
  switch i32 %2, label %62 [
    i32 0, label %31
    i32 1, label %31
    i32 2, label %31
    i32 50, label %40
    i32 100, label %46
    i32 150, label %52
    i32 151, label %52
  ]

31:                                               ; preds = %30, %30, %30
  %32 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.extcon_cable, ptr %33, i32 %23, i32 10
  %35 = lshr i32 %2, 5
  %36 = getelementptr i32, ptr %34, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = lshr i32 %37, %2
  %39 = and i32 %38, 1
  br label %62

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.extcon_cable, ptr %42, i32 %23, i32 11
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  br label %62

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr %struct.extcon_cable, ptr %48, i32 %23, i32 12
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  br label %62

52:                                               ; preds = %30, %30
  %53 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = add nsw i32 %2, -150
  %56 = getelementptr %struct.extcon_cable, ptr %54, i32 %23, i32 13
  %57 = lshr i32 %55, 5
  %58 = getelementptr i32, ptr %56, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = lshr i32 %59, %55
  %61 = and i32 %60, 1
  br label %62

62:                                               ; preds = %52, %46, %40, %31, %30, %27, %15, %9, %5, %3
  %63 = phi i32 [ -22, %3 ], [ -22, %9 ], [ %61, %52 ], [ %51, %46 ], [ %45, %40 ], [ %39, %31 ], [ -22, %30 ], [ -22, %5 ], [ -22, %15 ], [ -22, %27 ]
  ret i32 %63
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_set_property_capability(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  switch i32 %2, label %59 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 50, label %6
    i32 100, label %7
    i32 150, label %8
    i32 151, label %8
  ]

6:                                                ; preds = %5
  br label %9

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5, %5
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %5, %5
  %10 = phi i32 [ 1, %5 ], [ 1, %5 ], [ 1, %5 ], [ 2, %6 ], [ 4, %7 ], [ 8, %8 ]
  %11 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %27, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %27 ]
  %24 = getelementptr i32, ptr %21, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %59, label %22

30:                                               ; preds = %22
  switch i32 %2, label %59 [
    i32 0, label %31
    i32 1, label %31
    i32 2, label %31
    i32 50, label %38
    i32 100, label %42
    i32 150, label %46
    i32 151, label %46
  ]

31:                                               ; preds = %30, %30, %30
  %32 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.extcon_cable, ptr %33, i32 %23, i32 10
  %35 = shl nuw nsw i32 1, %2
  %36 = lshr i32 %2, 5
  %37 = getelementptr i32, ptr %34, i32 %36
  br label %54

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.extcon_cable, ptr %40, i32 %23, i32 11
  br label %54

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.extcon_cable, ptr %44, i32 %23, i32 12
  br label %54

46:                                               ; preds = %30, %30
  %47 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = add nsw i32 %2, -150
  %50 = getelementptr %struct.extcon_cable, ptr %48, i32 %23, i32 13
  %51 = shl nuw nsw i32 1, %49
  %52 = lshr i32 %49, 5
  %53 = getelementptr i32, ptr %50, i32 %52
  br label %54

54:                                               ; preds = %46, %42, %38, %31
  %55 = phi ptr [ %37, %31 ], [ %41, %38 ], [ %45, %42 ], [ %53, %46 ]
  %56 = phi i32 [ %35, %31 ], [ 1, %38 ], [ 1, %42 ], [ %51, %46 ]
  %57 = load i32, ptr %55, align 4
  %58 = or i32 %57, %56
  store i32 %58, ptr %55, align 4
  br label %59

59:                                               ; preds = %54, %30, %27, %15, %9, %5, %3
  %60 = phi i32 [ -22, %3 ], [ -22, %9 ], [ -22, %30 ], [ -22, %5 ], [ -22, %15 ], [ 0, %54 ], [ -22, %27 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @extcon_get_extcon_dev(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @extcon_dev_list_lock) #16
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @extcon_dev_list, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @extcon_dev_list
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -496
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %6, i32 -496
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi ptr [ %14, %13 ], [ null, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @extcon_dev_list_lock) #16
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ inttoptr (i32 -22 to ptr), %1 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_register_notifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr i32, ptr %13, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %29, label %14

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #16
  %25 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.raw_notifier_head, ptr %26, i32 %15
  %28 = tail call i32 @raw_notifier_chain_register(ptr noundef %27, ptr noundef nonnull %2) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #16
  br label %29

29:                                               ; preds = %22, %19, %7, %3
  %30 = phi i32 [ %28, %22 ], [ -22, %3 ], [ -22, %7 ], [ -22, %19 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_unregister_notifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr i32, ptr %13, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %29, label %14

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #16
  %25 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.raw_notifier_head, ptr %26, i32 %15
  %28 = tail call i32 @raw_notifier_chain_unregister(ptr noundef %27, ptr noundef nonnull %2) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #16
  br label %29

29:                                               ; preds = %22, %19, %7, %3
  %30 = phi i32 [ %28, %22 ], [ -22, %3 ], [ -22, %7 ], [ -22, %19 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_register_notifier_all(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 4
  %10 = tail call i32 @raw_notifier_chain_register(ptr noundef %9, ptr noundef nonnull %1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #16
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_unregister_notifier_all(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 4
  %10 = tail call i32 @raw_notifier_chain_unregister(ptr noundef %9, ptr noundef nonnull %1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #16
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @extcon_dev_allocate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 576) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.extcon_dev, ptr %5, i32 0, i32 7
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.extcon_dev, ptr %5, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi ptr [ %5, %7 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @extcon_dev_free(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @extcon_dev_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr @extcon_class, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @create_extcon_class.__key) #16
  store ptr %5, ptr @extcon_class, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 3
  store ptr @extcon_groups, ptr %8, align 4
  br label %12

9:                                                ; preds = %4
  %10 = ptrtoint ptr %5 to i32
  %11 = icmp slt ptr %5, null
  br i1 %11, label %325, label %12

12:                                               ; preds = %9, %7, %1
  %13 = phi ptr [ %5, %7 ], [ %5, %9 ], [ %2, %1 ]
  %14 = icmp eq ptr %0, null
  br i1 %14, label %325, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %325, label %19

19:                                               ; preds = %19, %15
  %20 = phi i32 [ %24, %19 ], [ 0, %15 ]
  %21 = getelementptr i32, ptr %17, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = add i32 %20, 1
  br i1 %23, label %25, label %19

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  store i32 %20, ptr %26, align 8
  %27 = icmp sgt i32 %20, 32
  %28 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3
  br i1 %27, label %29, label %30

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.3) #17
  br label %325

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 31
  store ptr %13, ptr %31, align 4
  %32 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 33
  store ptr @extcon_dev_release, ptr %32, align 4
  %33 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load ptr, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi ptr [ %39, %38 ], [ %36, %30 ]
  store ptr %41, ptr %0, align 8
  %42 = icmp eq ptr %41, null
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #17
  br label %325

46:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @extcon_dev_register.edev_no) #16, !srcloc !10
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @extcon_dev_register.edev_no, ptr nonnull @extcon_dev_register.edev_no, i32 1, ptr nonnull elementtype(i32) @extcon_dev_register.edev_no) #16, !srcloc !11
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %49 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %28, ptr noundef nonnull @.str.5, i32 noundef %48) #16
  %50 = load i32, ptr %26, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %229, label %52

52:                                               ; preds = %46
  %53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 116) #16
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %55, label %57, !prof !13

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  store ptr null, ptr %56, align 4
  br label %325

57:                                               ; preds = %52
  %58 = extractvalue { i32, i1 } %53, 0
  %59 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %58, i32 noundef 3520) #19
  %60 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %325, label %62

62:                                               ; preds = %57
  %63 = load i32, ptr %26, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef 0) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %98, %65
  %69 = phi i32 [ 0, %65 ], [ %95, %98 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %316, label %71

71:                                               ; preds = %71, %68
  %72 = phi i32 [ %73, %71 ], [ %69, %68 ]
  %73 = add nsw i32 %72, -1
  %74 = load ptr, ptr %60, align 4
  %75 = getelementptr %struct.extcon_cable, ptr %74, i32 %73, i32 2
  %76 = load ptr, ptr %75, align 4
  tail call void @kfree(ptr noundef %76) #16
  %77 = icmp sgt i32 %72, 1
  br i1 %77, label %71, label %316

78:                                               ; preds = %98, %65
  %79 = phi ptr [ %100, %98 ], [ %66, %65 ]
  %80 = phi i32 [ %95, %98 ], [ 0, %65 ]
  %81 = phi ptr [ %99, %98 ], [ %59, %65 ]
  %82 = getelementptr %struct.extcon_cable, ptr %81, i32 %80
  store ptr %0, ptr %82, align 4
  %83 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 1
  store i32 %80, ptr %83, align 4
  %84 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 3
  %85 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 5
  store ptr %84, ptr %85, align 4
  %86 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 4
  %87 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 5, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 5, i32 2
  store ptr null, ptr %88, align 4
  %89 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 2
  store ptr %79, ptr %89, align 4
  %90 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 2, i32 3
  store ptr %85, ptr %90, align 4
  store ptr @.str.7, ptr %84, align 4
  %91 = getelementptr inbounds %struct.attribute, ptr %84, i32 0, i32 1
  store i16 292, ptr %91, align 4
  %92 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 3, i32 1
  store ptr @cable_name_show, ptr %92, align 4
  store ptr @.str.8, ptr %86, align 4
  %93 = getelementptr inbounds %struct.attribute, ptr %86, i32 0, i32 1
  store i16 292, ptr %93, align 4
  %94 = getelementptr %struct.extcon_cable, ptr %81, i32 %80, i32 4, i32 1
  store ptr @cable_state_show, ptr %94, align 4
  %95 = add nuw nsw i32 %80, 1
  %96 = load i32, ptr %26, align 8
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %78
  %99 = load ptr, ptr %60, align 4
  %100 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %95) #16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %68, label %78

102:                                              ; preds = %78, %62
  %103 = phi i32 [ %63, %62 ], [ %96, %78 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %229, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %181, label %109

109:                                              ; preds = %109, %105
  %110 = phi i32 [ %114, %109 ], [ 0, %105 ]
  %111 = getelementptr i32, ptr %107, i32 %110
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = add i32 %110, 1
  br i1 %113, label %115, label %109

115:                                              ; preds = %109
  %116 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 4) #16
  %117 = extractvalue { i32, i1 } %116, 1
  br i1 %117, label %118, label %120, !prof !13

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 13
  store ptr null, ptr %119, align 4
  br label %302

120:                                              ; preds = %115
  %121 = extractvalue { i32, i1 } %116, 0
  %122 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %121, i32 noundef 3520) #19
  %123 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 13
  store ptr %122, ptr %123, align 4
  %124 = icmp eq ptr %122, null
  br i1 %124, label %302, label %125

125:                                              ; preds = %120
  %126 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %110, i32 16) #16
  %127 = extractvalue { i32, i1 } %126, 1
  br i1 %127, label %128, label %130, !prof !13

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 14
  store ptr null, ptr %129, align 8
  br label %141

130:                                              ; preds = %125
  %131 = extractvalue { i32, i1 } %126, 0
  %132 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %131, i32 noundef 3520) #19
  %133 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 14
  store ptr %132, ptr %133, align 8
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load ptr, ptr %123, align 4
  br label %141

137:                                              ; preds = %130
  %138 = load ptr, ptr %106, align 8
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %175, label %143

141:                                              ; preds = %135, %128
  %142 = phi ptr [ %136, %135 ], [ %122, %128 ]
  tail call void @kfree(ptr noundef %142) #16
  br label %302

143:                                              ; preds = %161, %137
  %144 = phi i32 [ %173, %161 ], [ %139, %137 ]
  %145 = phi i32 [ %170, %161 ], [ 0, %137 ]
  %146 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %144) #16
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = add i32 %145, -1
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %151, label %158

151:                                              ; preds = %151, %148
  %152 = phi i32 [ %156, %151 ], [ %149, %148 ]
  %153 = load ptr, ptr %133, align 8
  %154 = getelementptr %struct.device_attribute, ptr %153, i32 %152
  %155 = load ptr, ptr %154, align 4
  tail call void @kfree(ptr noundef %155) #16
  %156 = add nsw i32 %152, -1
  %157 = icmp sgt i32 %152, 0
  br i1 %157, label %151, label %158

158:                                              ; preds = %151, %148
  %159 = load ptr, ptr %133, align 8
  tail call void @kfree(ptr noundef %159) #16
  %160 = load ptr, ptr %123, align 4
  tail call void @kfree(ptr noundef %160) #16
  br label %302

161:                                              ; preds = %143
  %162 = load ptr, ptr %133, align 8
  %163 = getelementptr %struct.device_attribute, ptr %162, i32 %145
  store ptr %146, ptr %163, align 4
  %164 = load ptr, ptr %133, align 8
  %165 = getelementptr %struct.device_attribute, ptr %164, i32 %145, i32 0, i32 1
  store i16 0, ptr %165, align 4
  %166 = load ptr, ptr %133, align 8
  %167 = getelementptr %struct.device_attribute, ptr %166, i32 %145
  %168 = load ptr, ptr %123, align 4
  %169 = getelementptr ptr, ptr %168, i32 %145
  store ptr %167, ptr %169, align 4
  %170 = add i32 %145, 1
  %171 = load ptr, ptr %106, align 8
  %172 = getelementptr i32, ptr %171, i32 %170
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %143

175:                                              ; preds = %161, %137
  %176 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 12
  store ptr @.str.44, ptr %176, align 8
  %177 = load ptr, ptr %123, align 4
  %178 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 12, i32 3
  store ptr %177, ptr %178, align 4
  %179 = load i32, ptr %26, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %229, label %181

181:                                              ; preds = %175, %105
  %182 = phi i32 [ %179, %175 ], [ %103, %105 ]
  %183 = add i32 %182, 2
  %184 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %183, i32 4) #16
  %185 = extractvalue { i32, i1 } %184, 1
  br i1 %185, label %186, label %188, !prof !13

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 10, i32 1
  store ptr null, ptr %187, align 4
  br label %274

188:                                              ; preds = %181
  %189 = extractvalue { i32, i1 } %184, 0
  %190 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %189, i32 noundef 3520) #19
  %191 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 10, i32 1
  store ptr %190, ptr %191, align 4
  %192 = icmp eq ptr %190, null
  br i1 %192, label %274, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 10
  %195 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load ptr, ptr %28, align 4
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %196, %193 ]
  store ptr %201, ptr %194, align 4
  %202 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 10, i32 4
  store ptr @dummy_sysfs_dev_release, ptr %202, align 4
  %203 = load i32, ptr %26, align 8
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %200
  %206 = load ptr, ptr %60, align 4
  %207 = getelementptr %struct.extcon_cable, ptr %206, i32 0, i32 2
  store ptr %207, ptr %190, align 64
  %208 = load i32, ptr %26, align 8
  %209 = icmp sgt i32 %208, 1
  br i1 %209, label %210, label %219

210:                                              ; preds = %210, %205
  %211 = phi i32 [ %216, %210 ], [ 1, %205 ]
  %212 = load ptr, ptr %191, align 4
  %213 = load ptr, ptr %60, align 4
  %214 = getelementptr %struct.extcon_cable, ptr %213, i32 %211, i32 2
  %215 = getelementptr ptr, ptr %212, i32 %211
  store ptr %214, ptr %215, align 4
  %216 = add nuw nsw i32 %211, 1
  %217 = load i32, ptr %26, align 8
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %210, label %219

219:                                              ; preds = %210, %205, %200
  %220 = phi i32 [ 0, %200 ], [ 1, %205 ], [ %216, %210 ]
  %221 = load ptr, ptr %106, align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %227, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 12
  %225 = load ptr, ptr %191, align 4
  %226 = getelementptr ptr, ptr %225, i32 %220
  store ptr %224, ptr %226, align 4
  br label %227

227:                                              ; preds = %223, %219
  %228 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 4
  store ptr %194, ptr %228, align 8
  br label %229

229:                                              ; preds = %227, %175, %102, %46
  %230 = tail call i32 @device_register(ptr noundef %28) #16
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  tail call void @put_device(ptr noundef %28) #16
  br label %267

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 8
  store i32 0, ptr %234, align 4
  %235 = load i32, ptr %26, align 8
  %236 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %235, i32 4) #16
  %237 = extractvalue { i32, i1 } %236, 1
  br i1 %237, label %238, label %240, !prof !13

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 5
  store ptr null, ptr %239, align 4
  br label %251

240:                                              ; preds = %233
  %241 = extractvalue { i32, i1 } %236, 0
  %242 = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %241, i32 noundef 3520) #16
  %243 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 5
  store ptr %242, ptr %243, align 4
  %244 = icmp eq ptr %242, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %240
  %246 = load i32, ptr %26, align 8
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  store ptr null, ptr %242, align 4
  %249 = load i32, ptr %26, align 8
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %252, label %259

251:                                              ; preds = %240, %238
  tail call void @device_unregister(ptr noundef %28) #16
  br label %267

252:                                              ; preds = %252, %248
  %253 = phi i32 [ %256, %252 ], [ 1, %248 ]
  %254 = load ptr, ptr %243, align 4
  %255 = getelementptr %struct.raw_notifier_head, ptr %254, i32 %253
  store ptr null, ptr %255, align 4
  %256 = add nuw nsw i32 %253, 1
  %257 = load i32, ptr %26, align 8
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %252, label %259

259:                                              ; preds = %252, %248, %245
  %260 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 4
  store ptr null, ptr %260, align 8
  %261 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 8
  store ptr %0, ptr %261, align 8
  %262 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 9
  store i32 0, ptr %262, align 8
  tail call void @mutex_lock(ptr noundef nonnull @extcon_dev_list_lock) #16
  %263 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 6
  %264 = load ptr, ptr @extcon_dev_list, align 4
  %265 = getelementptr inbounds %struct.list_head, ptr %264, i32 0, i32 1
  store ptr %263, ptr %265, align 4
  store ptr %264, ptr %263, align 4
  %266 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 6, i32 1
  store ptr @extcon_dev_list, ptr %266, align 4
  store volatile ptr %263, ptr @extcon_dev_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @extcon_dev_list_lock) #16
  br label %325

267:                                              ; preds = %251, %232
  %268 = phi i32 [ %230, %232 ], [ -12, %251 ]
  %269 = load i32, ptr %26, align 8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %325, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 10, i32 1
  %273 = load ptr, ptr %272, align 4
  tail call void @kfree(ptr noundef %273) #16
  br label %274

274:                                              ; preds = %271, %188, %186
  %275 = phi i32 [ -12, %186 ], [ -12, %188 ], [ %268, %271 ]
  %276 = load i32, ptr %26, align 8
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %325, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 2
  %280 = load ptr, ptr %279, align 8
  %281 = icmp eq ptr %280, null
  br i1 %281, label %302, label %282

282:                                              ; preds = %278
  %283 = load i32, ptr %280, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %297, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 14
  br label %287

287:                                              ; preds = %287, %285
  %288 = phi i32 [ 0, %285 ], [ %292, %287 ]
  %289 = load ptr, ptr %286, align 8
  %290 = getelementptr %struct.device_attribute, ptr %289, i32 %288
  %291 = load ptr, ptr %290, align 4
  tail call void @kfree(ptr noundef %291) #16
  %292 = add i32 %288, 1
  %293 = load ptr, ptr %279, align 8
  %294 = getelementptr i32, ptr %293, i32 %292
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %287

297:                                              ; preds = %287, %282
  %298 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 14
  %299 = load ptr, ptr %298, align 8
  tail call void @kfree(ptr noundef %299) #16
  %300 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 13
  %301 = load ptr, ptr %300, align 4
  tail call void @kfree(ptr noundef %301) #16
  br label %302

302:                                              ; preds = %297, %278, %158, %141, %120, %118
  %303 = phi i32 [ -12, %118 ], [ -12, %120 ], [ -12, %141 ], [ -12, %158 ], [ %275, %278 ], [ %275, %297 ]
  %304 = load i32, ptr %26, align 8
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  br label %308

308:                                              ; preds = %308, %306
  %309 = phi i32 [ 0, %306 ], [ %313, %308 ]
  %310 = load ptr, ptr %307, align 4
  %311 = getelementptr %struct.extcon_cable, ptr %310, i32 %309, i32 2
  %312 = load ptr, ptr %311, align 4
  tail call void @kfree(ptr noundef %312) #16
  %313 = add nuw nsw i32 %309, 1
  %314 = load i32, ptr %26, align 8
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %308, label %318

316:                                              ; preds = %71, %68
  %317 = load i32, ptr %26, align 8
  br label %318

318:                                              ; preds = %316, %308, %302
  %319 = phi i32 [ %317, %316 ], [ %304, %302 ], [ %314, %308 ]
  %320 = phi i32 [ -12, %316 ], [ %303, %302 ], [ %303, %308 ]
  %321 = icmp eq i32 %319, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %324 = load ptr, ptr %323, align 4
  tail call void @kfree(ptr noundef %324) #16
  br label %325

325:                                              ; preds = %322, %318, %274, %267, %259, %57, %55, %45, %29, %15, %12, %9
  %326 = phi i32 [ -22, %29 ], [ -22, %45 ], [ 0, %259 ], [ %10, %9 ], [ -22, %15 ], [ -22, %12 ], [ %320, %322 ], [ %320, %318 ], [ -12, %57 ], [ -12, %55 ], [ %268, %267 ], [ %275, %274 ]
  ret i32 %326
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @extcon_dev_release(ptr nocapture noundef %0) #10 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cable_name_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %1, i32 -28
  %5 = getelementptr i8, ptr %1, i32 -24
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.extcon_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i32, ptr %9, i32 %6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [64 x %struct.__extcon_info], ptr @extcon_info, i32 0, i32 %11, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %13)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cable_state_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -44
  %5 = getelementptr i8, ptr %1, i32 -40
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.extcon_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i32, ptr %9, i32 %6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq ptr %7, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.extcon_dev, ptr %7, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %22, %13
  %18 = phi i32 [ %23, %22 ], [ 0, %13 ]
  %19 = getelementptr i32, ptr %9, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %11
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %18, 1
  %24 = icmp eq i32 %23, %15
  br i1 %24, label %32, label %17

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.extcon_dev, ptr %7, i32 0, i32 8
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #16
  %28 = getelementptr inbounds %struct.extcon_dev, ptr %7, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, %18
  %31 = and i32 %30, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #16
  br label %32

32:                                               ; preds = %25, %22, %13, %3
  %33 = phi i32 [ %31, %25 ], [ -22, %3 ], [ -22, %13 ], [ -22, %22 ]
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.43, i32 noundef %33)
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dummy_sysfs_dev_release(ptr nocapture noundef %0) #10 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @extcon_dev_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @extcon_dev_list_lock) #16
  %4 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @extcon_dev_list_lock) #16
  %9 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3
  %10 = tail call ptr @get_device(ptr noundef %9) #16
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 3, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %21) #17
  br label %73

22:                                               ; preds = %3
  tail call void @device_unregister(ptr noundef %9) #16
  %23 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %24, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 14
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ 0, %33 ], [ %40, %35 ]
  %37 = load ptr, ptr %34, align 8
  %38 = getelementptr %struct.device_attribute, ptr %37, i32 %36
  %39 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %39) #16
  %40 = add i32 %36, 1
  %41 = load ptr, ptr %23, align 8
  %42 = getelementptr i32, ptr %41, i32 %40
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %35

45:                                               ; preds = %35, %30
  %46 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 14
  %47 = load ptr, ptr %46, align 8
  tail call void @kfree(ptr noundef %47) #16
  %48 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  tail call void @kfree(ptr noundef %49) #16
  br label %50

50:                                               ; preds = %45, %26, %22
  %51 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 7
  %52 = load i32, ptr %51, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ 0, %54 ], [ %61, %56 ]
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr %struct.extcon_cable, ptr %58, i32 %57, i32 2
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #16
  %61 = add nuw nsw i32 %57, 1
  %62 = load i32, ptr %51, align 8
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %56, label %64

64:                                               ; preds = %56, %50
  %65 = phi i32 [ %52, %50 ], [ %62, %56 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 10, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void @kfree(ptr noundef %69) #16
  %70 = getelementptr inbounds %struct.extcon_dev, ptr %0, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #16
  br label %72

72:                                               ; preds = %67, %64
  tail call void @put_device(ptr noundef %9) #16
  br label %73

73:                                               ; preds = %72, %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @extcon_find_edev_by_node(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @extcon_dev_list_lock) #16
  %2 = load ptr, ptr @extcon_dev_list, align 4
  %3 = icmp eq ptr %2, @extcon_dev_list
  br i1 %3, label %18, label %4

4:                                                ; preds = %13, %1
  %5 = phi ptr [ %14, %13 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -444
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %4
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, @extcon_dev_list
  br i1 %15, label %18, label %4

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %5, i32 -496
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi ptr [ %17, %16 ], [ inttoptr (i32 -517 to ptr), %1 ], [ inttoptr (i32 -517 to ptr), %13 ]
  tail call void @mutex_unlock(ptr noundef nonnull @extcon_dev_list_lock) #16
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @extcon_get_edev_by_phandle(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #16, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %3) #16
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %34, label %15

15:                                               ; preds = %9
  call void @mutex_lock(ptr noundef nonnull @extcon_dev_list_lock) #16
  %16 = load ptr, ptr @extcon_dev_list, align 4
  %17 = icmp eq ptr %16, @extcon_dev_list
  br i1 %17, label %32, label %18

18:                                               ; preds = %27, %15
  %19 = phi ptr [ %28, %27 ], [ %16, %15 ]
  %20 = getelementptr i8, ptr %19, i32 -444
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, @extcon_dev_list
  br i1 %29, label %32, label %18

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %19, i32 -496
  br label %32

32:                                               ; preds = %30, %27, %15
  %33 = phi ptr [ %31, %30 ], [ inttoptr (i32 -517 to ptr), %15 ], [ inttoptr (i32 -517 to ptr), %27 ]
  call void @mutex_unlock(ptr noundef nonnull @extcon_dev_list_lock) #16
  call void @of_node_put(ptr noundef nonnull %12) #16
  br label %34

34:                                               ; preds = %32, %9, %5, %2
  %35 = phi ptr [ %33, %32 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %9 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @extcon_get_edev_name(ptr noundef readonly %0) #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @extcon_class_init() #12 section ".init.text" {
  %1 = load ptr, ptr @extcon_class, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @create_extcon_class.__key) #16
  store ptr %4, ptr @extcon_class, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 3
  store ptr @extcon_groups, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %6, %0
  %11 = phi i32 [ %7, %6 ], [ 0, %8 ], [ 0, %0 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @extcon_class_exit() #12 section ".exit.text" {
  %1 = load ptr, ptr @extcon_class, align 4
  tail call void @class_destroy(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{i64 2148175119}
!10 = !{i64 575887, i64 2148065858, i64 2148065884, i64 2148065931, i64 2148065953, i64 2148065981, i64 2148066001}
!11 = !{i64 2148077957, i64 2148077989, i64 2148078018, i64 2148078052, i64 2148078083, i64 2148078106}
!12 = !{i64 2148175322}
!13 = !{!"branch_weights", i32 1, i32 2000}
