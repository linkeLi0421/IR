; ModuleID = '/llk/IR/sound/core/init.c_pt.bc'
source_filename = "../sound/core/init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_initialize\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_devm_card_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_devm_card_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_devm_card_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_ref:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_ref\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_ref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_disconnect_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_disconnect_sync\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_disconnect_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_free_when_closed:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_free_when_closed\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_free_when_closed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_set_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_set_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_set_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_add_dev_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_add_dev_attr\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_add_dev_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_component_add:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_component_add\22\09\09\09\09\09"
module asm "__kstrtabns_snd_component_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_file_add:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_file_add\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_file_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_card_file_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_card_file_remove\22\09\09\09\09\09"
module asm "__kstrtabns_snd_card_file_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_power_ref_and_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_power_ref_and_wait\22\09\09\09\09\09"
module asm "__kstrtabns_snd_power_ref_and_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_power_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_power_wait\22\09\09\09\09\09"
module asm "__kstrtabns_snd_power_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.62, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.62 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_monitor_file = type { ptr, ptr, %struct.list_head, %struct.list_head }

@__param_str_slots = internal constant [6 x i8] c"slots\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_slots = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @slots }, align 4
@__param_slots = internal constant %struct.kernel_param { ptr @__param_str_slots, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @__param_arr_slots } }, section "__param", align 4
@__UNIQUE_ID_slotstype216 = internal constant [30 x i8] c"parmtype=slots:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_slots217 = internal constant [47 x i8] c"parm=slots:Module names assigned to the slots.\00", section ".modinfo", align 1
@sound_class = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_snd_device_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_initialize to i32), ptr @__kstrtab_snd_device_initialize, ptr @__kstrtabns_snd_device_initialize }, section "___ksymtab_gpl+snd_device_initialize", align 4
@__kstrtab_snd_card_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_new to i32), ptr @__kstrtab_snd_card_new, ptr @__kstrtabns_snd_card_new }, section "___ksymtab+snd_card_new", align 4
@.str = private unnamed_addr constant [19 x i8] c"__snd_card_release\00", align 1
@__kstrtab_snd_devm_card_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_devm_card_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_devm_card_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_devm_card_new to i32), ptr @__kstrtab_snd_devm_card_new, ptr @__kstrtabns_snd_devm_card_new }, section "___ksymtab_gpl+snd_devm_card_new", align 4
@snd_card_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @snd_card_mutex, i64 12), ptr getelementptr (i8, ptr @snd_card_mutex, i64 12) } }, align 4
@snd_cards = internal unnamed_addr global [32 x ptr] zeroinitializer, align 4
@__kstrtab_snd_card_ref = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_ref = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_ref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_ref to i32), ptr @__kstrtab_snd_card_ref, ptr @__kstrtabns_snd_card_ref }, section "___ksymtab_gpl+snd_card_ref", align 4
@snd_cards_lock = internal global [1 x i32] zeroinitializer, align 4
@shutdown_lock = internal global %struct.spinlock zeroinitializer, align 4
@shutdown_files = internal global %struct.list_head { ptr @shutdown_files, ptr @shutdown_files }, align 4
@snd_shutdown_f_ops = internal constant %struct.file_operations { ptr @__this_module, ptr @snd_disconnect_llseek, ptr @snd_disconnect_read, ptr @snd_disconnect_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_disconnect_poll, ptr @snd_disconnect_ioctl, ptr null, ptr @snd_disconnect_mmap, i32 0, ptr null, ptr null, ptr @snd_disconnect_release, ptr null, ptr @snd_disconnect_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_snd_card_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_disconnect to i32), ptr @__kstrtab_snd_card_disconnect, ptr @__kstrtabns_snd_card_disconnect }, section "___ksymtab+snd_card_disconnect", align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"snd_card_disconnect error (%d), skipping sync\0A\00", align 1
@__kstrtab_snd_card_disconnect_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_disconnect_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_disconnect_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_disconnect_sync to i32), ptr @__kstrtab_snd_card_disconnect_sync, ptr @__kstrtabns_snd_card_disconnect_sync }, section "___ksymtab_gpl+snd_card_disconnect_sync", align 4
@__kstrtab_snd_card_free_when_closed = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_free_when_closed = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_free_when_closed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_free_when_closed to i32), ptr @__kstrtab_snd_card_free_when_closed, ptr @__kstrtabns_snd_card_free_when_closed }, section "___ksymtab+snd_card_free_when_closed", align 4
@__kstrtab_snd_card_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_free to i32), ptr @__kstrtab_snd_card_free, ptr @__kstrtabns_snd_card_free }, section "___ksymtab+snd_card_free", align 4
@__kstrtab_snd_card_set_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_set_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_set_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_set_id to i32), ptr @__kstrtab_snd_card_set_id, ptr @__kstrtabns_snd_card_set_id }, section "___ksymtab+snd_card_set_id", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Too many groups assigned\0A\00", align 1
@__kstrtab_snd_card_add_dev_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_add_dev_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_add_dev_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_add_dev_attr to i32), ptr @__kstrtab_snd_card_add_dev_attr, ptr @__kstrtabns_snd_card_add_dev_attr }, section "___ksymtab_gpl+snd_card_add_dev_attr", align 4
@__kstrtab_snd_card_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_register to i32), ptr @__kstrtab_snd_card_register, ptr @__kstrtabns_snd_card_register }, section "___ksymtab+snd_card_register", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"cards\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@__kstrtab_snd_component_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_component_add = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_component_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_component_add to i32), ptr @__kstrtab_snd_component_add, ptr @__kstrtabns_snd_component_add }, section "___ksymtab+snd_component_add", align 4
@__kstrtab_snd_card_file_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_file_add = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_file_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_file_add to i32), ptr @__kstrtab_snd_card_file_add, ptr @__kstrtabns_snd_card_file_add }, section "___ksymtab+snd_card_file_add", align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"card file remove problem (%p)\0A\00", align 1
@__kstrtab_snd_card_file_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_card_file_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_card_file_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_card_file_remove to i32), ptr @__kstrtab_snd_card_file_remove, ptr @__kstrtabns_snd_card_file_remove }, section "___ksymtab+snd_card_file_remove", align 4
@__kstrtab_snd_power_ref_and_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_power_ref_and_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_power_ref_and_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_power_ref_and_wait to i32), ptr @__kstrtab_snd_power_ref_and_wait, ptr @__kstrtabns_snd_power_ref_and_wait }, section "___ksymtab_gpl+snd_power_ref_and_wait", align 4
@__kstrtab_snd_power_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_power_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_power_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_power_wait to i32), ptr @__kstrtab_snd_power_wait, ptr @__kstrtabns_snd_power_wait }, section "___ksymtab+snd_power_wait", align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@slots = internal global [32 x ptr] zeroinitializer, align 4
@snd_ecards_limit = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"cannot find the slot for index %d (range 0-%i), error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"sound/core/init.c\00", align 1
@snd_card_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"&card->controls_rwsem\00", align 1
@snd_card_init.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"&card->memory_mutex\00", align 1
@snd_card_init.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"&card->power_sleep\00", align 1
@snd_card_init.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"&card->power_ref_sleep\00", align 1
@snd_card_init.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"&card->remove_sleep\00", align 1
@card_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @card_dev_attrs, ptr null }, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"card%d\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"unable to register control minors\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"unable to create card info\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"unable to free card info\0A\00", align 1
@card_dev_attrs = internal global [3 x ptr] [ptr @dev_attr_id, ptr @dev_attr_number, ptr null], align 4
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @id_show, ptr @id_store }, align 4
@dev_attr_number = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @number_show, ptr null }, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"%s(%p, %p) failed!\00", align 1
@__func__.snd_disconnect_release = private unnamed_addr constant [23 x i8] c"snd_disconnect_release\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"_%X\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"unable to set card id (%s)\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"%2i [%-15s]: %s - %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"                      %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"--- no soundcards ---\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"%2i %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_slots217, ptr @__UNIQUE_ID_slotstype216, ptr @__ksymtab_snd_card_add_dev_attr, ptr @__ksymtab_snd_card_disconnect, ptr @__ksymtab_snd_card_disconnect_sync, ptr @__ksymtab_snd_card_file_add, ptr @__ksymtab_snd_card_file_remove, ptr @__ksymtab_snd_card_free, ptr @__ksymtab_snd_card_free_when_closed, ptr @__ksymtab_snd_card_new, ptr @__ksymtab_snd_card_ref, ptr @__ksymtab_snd_card_register, ptr @__ksymtab_snd_card_set_id, ptr @__ksymtab_snd_component_add, ptr @__ksymtab_snd_device_initialize, ptr @__ksymtab_snd_devm_card_new, ptr @__ksymtab_snd_power_ref_and_wait, ptr @__ksymtab_snd_power_wait, ptr @__param_slots], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_device_initialize(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @device_initialize(ptr noundef %0) #16
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 28
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = load ptr, ptr @sound_class, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 33
  store ptr @default_release, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @default_release(ptr nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  store ptr null, ptr %5, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %10 = add nuw i32 %9, 1544
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @snd_card_init(ptr noundef nonnull %11, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %9)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #16
  br label %18

17:                                               ; preds = %13
  store ptr %11, ptr %5, align 4
  br label %18

18:                                               ; preds = %17, %16, %8, %6
  %19 = phi i32 [ %14, %16 ], [ 0, %17 ], [ -22, %6 ], [ -12, %8 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_card_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %0, i32 1544
  %10 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 9
  store ptr %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %8, %6
  %12 = icmp eq ptr %3, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 1
  %15 = tail call i32 @strscpy(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 16) #16
  br label %16

16:                                               ; preds = %13, %11
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %16
  %19 = icmp eq ptr %4, null
  %20 = getelementptr inbounds %struct.module, ptr %4, i32 0, i32 2
  br label %21

21:                                               ; preds = %70, %18
  %22 = phi i32 [ %71, %70 ], [ 0, %18 ]
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %22, 5
  %28 = getelementptr i32, ptr @snd_cards_lock, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, %23
  %31 = icmp ne i32 %30, 0
  %32 = or i1 %19, %31
  br i1 %32, label %70, label %33

33:                                               ; preds = %26
  %34 = load i8, ptr %20, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %33
  %37 = getelementptr [32 x ptr], ptr @slots, i32 0, i32 %22
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %70, label %40

40:                                               ; preds = %36
  %41 = load i8, ptr %38, align 1
  %42 = icmp eq i8 %41, 33
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = zext i1 %42 to i32
  %46 = getelementptr i8, ptr %38, i32 %45
  br label %47

47:                                               ; preds = %62, %40
  %48 = phi i8 [ %34, %40 ], [ %65, %62 ]
  %49 = phi ptr [ %20, %40 ], [ %64, %62 ]
  %50 = phi ptr [ %46, %40 ], [ %63, %62 ]
  %51 = phi i32 [ undef, %40 ], [ %61, %62 ]
  %52 = load i8, ptr %50, align 1
  %53 = icmp eq i8 %48, 45
  %54 = select i1 %53, i8 95, i8 %48
  %55 = icmp eq i8 %52, 45
  %56 = select i1 %55, i8 95, i8 %52
  %57 = icmp eq i8 %54, %56
  %58 = icmp eq i8 %54, 0
  %59 = select i1 %58, i32 2, i32 0
  %60 = select i1 %57, i32 %59, i32 1
  %61 = select i1 %57, i32 %51, i32 %45
  switch i32 %60, label %67 [
    i32 0, label %62
    i32 2, label %66
  ]

62:                                               ; preds = %47
  %63 = getelementptr i8, ptr %50, i32 1
  %64 = getelementptr i8, ptr %49, i32 1
  %65 = load i8, ptr %64, align 1
  br label %47

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %47
  %68 = phi i32 [ %44, %66 ], [ %61, %47 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67, %36, %33, %26, %21
  %71 = add nuw nsw i32 %22, 1
  %72 = icmp eq i32 %71, 32
  br i1 %72, label %73, label %21

73:                                               ; preds = %91, %70
  %74 = phi i32 [ %92, %91 ], [ 0, %70 ]
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %73
  %79 = lshr i32 %74, 5
  %80 = getelementptr i32, ptr @snd_cards_lock, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, %75
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = getelementptr [32 x ptr], ptr @slots, i32 0, i32 %74
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load i8, ptr %86, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88, %78, %73
  %92 = add nuw nsw i32 %74, 1
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %108, label %73

94:                                               ; preds = %88, %84, %67, %16
  %95 = phi i32 [ %2, %16 ], [ %74, %88 ], [ %74, %84 ], [ %22, %67 ]
  %96 = load i32, ptr @snd_ecards_limit, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = lshr i32 %95, 5
  %100 = getelementptr i32, ptr @snd_cards_lock, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %95, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %113, label %108

106:                                              ; preds = %94
  %107 = icmp sgt i32 %95, 31
  br i1 %107, label %108, label %113

108:                                              ; preds = %106, %98, %91
  %109 = phi i32 [ -19, %106 ], [ -16, %98 ], [ -19, %91 ]
  %110 = phi i32 [ %95, %106 ], [ %95, %98 ], [ %2, %91 ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %111 = load i32, ptr @snd_ecards_limit, align 4
  %112 = add i32 %111, -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %110, i32 noundef %112, i32 noundef %109) #18
  br label %171

113:                                              ; preds = %106, %98
  tail call void @_set_bit(i32 noundef %95, ptr noundef nonnull @snd_cards_lock) #16
  %114 = load i32, ptr @snd_ecards_limit, align 4
  %115 = icmp slt i32 %95, %114
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = add nsw i32 %95, 1
  store i32 %117, ptr @snd_ecards_limit, align 4
  br label %118

118:                                              ; preds = %116, %113
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %119 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  store ptr %1, ptr %119, align 8
  store i32 %95, ptr %0, align 8
  %120 = icmp eq ptr %4, null
  br i1 %120, label %121, label %122, !prof !8

121:                                              ; preds = %118
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 277, i32 noundef 9, ptr noundef null) #16
  br label %122

122:                                              ; preds = %121, %118
  %123 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 8
  store ptr %4, ptr %123, align 4
  %124 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  store volatile ptr %124, ptr %124, align 4
  %125 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11, i32 1
  store ptr %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 14
  tail call void @__init_rwsem(ptr noundef %126, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_card_init.__key) #16
  %127 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 15
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18
  store volatile ptr %128, ptr %128, align 4
  %129 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 18, i32 1
  store ptr %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 19
  store volatile ptr %130, ptr %130, align 4
  %131 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 19, i32 1
  store ptr %130, ptr %131, align 4
  %132 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 24
  store i32 0, ptr %132, align 4
  %133 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 22
  store volatile ptr %133, ptr %133, align 4
  %134 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 22, i32 1
  store ptr %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 36
  tail call void @__mutex_init(ptr noundef %135, ptr noundef nonnull @.str.11, ptr noundef nonnull @snd_card_init.__key.10) #16
  %136 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 39
  tail call void @__init_waitqueue_head(ptr noundef %136, ptr noundef nonnull @.str.13, ptr noundef nonnull @snd_card_init.__key.12) #16
  %137 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 40
  tail call void @__init_waitqueue_head(ptr noundef %137, ptr noundef nonnull @.str.15, ptr noundef nonnull @snd_card_init.__key.14) #16
  %138 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 38
  store volatile i32 0, ptr %138, align 4
  %139 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 34
  tail call void @__init_waitqueue_head(ptr noundef %139, ptr noundef nonnull @.str.17, ptr noundef nonnull @snd_card_init.__key.16) #16
  %140 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 33
  store i32 -1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  tail call void @device_initialize(ptr noundef %141) #16
  %142 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28, i32 1
  store ptr %1, ptr %142, align 4
  %143 = load ptr, ptr @sound_class, align 4
  %144 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28, i32 31
  store ptr %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28, i32 33
  store ptr @release_card_device, ptr %145, align 4
  %146 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 29
  %147 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28, i32 32
  store ptr %146, ptr %147, align 8
  store ptr @card_dev_attr_group, ptr %146, align 8
  %148 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %141, ptr noundef nonnull @.str.18, i32 noundef %95) #16
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %122
  %151 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 5
  %152 = load ptr, ptr %119, align 8
  %153 = tail call ptr @dev_driver_string(ptr noundef %152) #16
  %154 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load ptr, ptr %141, align 4
  br label %159

159:                                              ; preds = %157, %150
  %160 = phi ptr [ %158, %157 ], [ %155, %150 ]
  %161 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %151, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %153, ptr noundef %160)
  %162 = tail call i32 @snd_ctl_create(ptr noundef %0) #16
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.20) #18
  br label %169

165:                                              ; preds = %159
  %166 = tail call i32 @snd_info_card_create(ptr noundef %0) #16
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21) #18
  tail call void @snd_device_free_all(ptr noundef %0) #16
  br label %169

169:                                              ; preds = %168, %164, %122
  %170 = phi i32 [ %148, %122 ], [ %162, %164 ], [ %166, %168 ]
  tail call void @put_device(ptr noundef %141) #16
  br label %171

171:                                              ; preds = %169, %165, %108
  %172 = phi i32 [ %109, %108 ], [ %170, %169 ], [ 0, %165 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_devm_card_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #0 {
  store ptr null, ptr %5, align 4
  %7 = add i32 %4, 1544
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @__snd_card_release, i32 noundef %7, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 31
  store i8 1, ptr %11, align 1
  %12 = tail call fastcc i32 @snd_card_init(ptr noundef nonnull %8, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #16
  br label %16

15:                                               ; preds = %10
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #16
  store ptr %8, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %14, %6
  %17 = phi i32 [ %12, %14 ], [ 0, %15 ], [ -12, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__snd_card_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1
  store i64 0, ptr %3, align 8
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 32
  %7 = load i8, ptr %6, align 2, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 26
  store ptr %3, ptr %10, align 4
  %11 = call i32 @snd_card_disconnect(ptr noundef %1) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 28
  call void @put_device(ptr noundef %14) #16
  call void @wait_for_completion(ptr noundef nonnull %3) #16
  br label %15

15:                                               ; preds = %13, %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_card_ref(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %2 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 28
  %7 = tail call ptr @get_device(ptr noundef %6) #16
  br label %8

8:                                                ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_locked(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @snd_cards_lock, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = lshr i32 %4, %5
  %7 = and i32 %6, 1
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_disconnect(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %71, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 25
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %10 = load i16, ptr %5, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %71

12:                                               ; preds = %4
  store i32 1, ptr %6, align 8
  %13 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %41, label %16

16:                                               ; preds = %38, %12
  %17 = phi ptr [ %39, %38 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %17, i32 -12
  store ptr %21, ptr %22, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shutdown_lock) #16
  %23 = getelementptr i8, ptr %17, i32 -8
  %24 = load ptr, ptr @shutdown_files, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store ptr %24, ptr %23, align 4
  %26 = getelementptr i8, ptr %17, i32 -4
  store ptr @shutdown_files, ptr %26, align 4
  store volatile ptr %23, ptr @shutdown_files, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %27 = load i16, ptr @shutdown_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @shutdown_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr inbounds %struct.file, ptr %29, i32 0, i32 3
  store ptr @snd_shutdown_f_ops, ptr %30, align 4
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %16
  %36 = load ptr, ptr %33, align 4
  %37 = tail call zeroext i1 @try_module_get(ptr noundef %36) #16
  br label %38

38:                                               ; preds = %35, %16
  %39 = load ptr, ptr %17, align 4
  %40 = icmp eq ptr %39, %13
  br i1 %40, label %41, label %16

41:                                               ; preds = %38, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %42 = load i16, ptr %5, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call void @snd_device_disconnect_all(ptr noundef nonnull %0) #16
  %44 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 33
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  tail call void @synchronize_irq(i32 noundef %45) #16
  br label %48

48:                                               ; preds = %47, %41
  tail call void @snd_info_card_disconnect(ptr noundef nonnull %0) #16
  %49 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 30
  %50 = load i8, ptr %49, align 8, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  tail call void @device_del(ptr noundef %53) #16
  store i8 0, ptr %49, align 8
  br label %54

54:                                               ; preds = %52, %48
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %55 = load i32, ptr %0, align 8
  %56 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %55
  store ptr null, ptr %56, align 4
  tail call void @_clear_bit(i32 noundef %55, ptr noundef nonnull @snd_cards_lock) #16
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %57 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %57, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %58 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 38
  %59 = load volatile i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #16, !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #16
  %62 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 40
  %63 = call i32 @prepare_to_wait_event(ptr noundef %62, ptr noundef nonnull %2, i32 noundef 2) #16
  %64 = load volatile i32, ptr %58, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %66, %61
  call void @schedule() #16
  %67 = call i32 @prepare_to_wait_event(ptr noundef %62, ptr noundef nonnull %2, i32 noundef 2) #16
  %68 = load volatile i32, ptr %58, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %66

70:                                               ; preds = %66, %61
  call void @finish_wait(ptr noundef %62, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %71

71:                                               ; preds = %70, %54, %9, %1
  %72 = phi i32 [ 0, %9 ], [ -22, %1 ], [ 0, %54 ], [ 0, %70 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_disconnect_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_card_disconnect_sync(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call i32 @snd_card_disconnect(ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %7 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %3) #18
  br label %28

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 22
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #16
  %14 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 34
  %15 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 2) #16
  %16 = load volatile ptr, ptr %10, align 4
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %13
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %19 = load i16, ptr %9, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  call void @schedule() #16
  call void @_raw_spin_lock_irq(ptr noundef %9) #16
  %21 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %2, i32 noundef 2) #16
  %22 = load volatile ptr, ptr %10, align 4
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %13
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  br label %25

25:                                               ; preds = %24, %8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %26 = load i16, ptr %9, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  br label %28

28:                                               ; preds = %25, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_free_when_closed(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_card_disconnect(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  tail call void @put_device(ptr noundef %5) #16
  br label %6

6:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_free(ptr noundef %0) #0 {
  %2 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1
  store i64 0, ptr %2, align 8
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 32
  %6 = load i8, ptr %5, align 2, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 26
  store ptr %2, ptr %9, align 4
  %10 = call i32 @snd_card_disconnect(ptr noundef %0) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  call void @put_device(ptr noundef %13) #16
  call void @wait_for_completion(ptr noundef nonnull %2) #16
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi i32 [ 0, %12 ], [ 0, %1 ], [ %10, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_card_set_id(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  tail call fastcc void @snd_card_set_id_no_lock(ptr noundef %0, ptr noundef %1, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snd_card_set_id_no_lock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [5 x i8], align 1
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %2, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %16, %3
  %9 = phi i8 [ %18, %16 ], [ %6, %3 ]
  %10 = phi ptr [ %17, %16 ], [ %2, %3 ]
  %11 = zext i8 %9 to i32
  %12 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 7
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %10, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %62, label %8

20:                                               ; preds = %8
  %21 = add nsw i32 %11, -58
  %22 = icmp ult i32 %21, -10
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %1, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 3
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i8 68, i8 %24
  %31 = getelementptr %struct.snd_card, ptr %0, i32 0, i32 1, i32 1
  store i8 %30, ptr %5, align 1
  %32 = load i8, ptr %10, align 1
  br label %33

33:                                               ; preds = %23, %20
  %34 = phi i8 [ %32, %23 ], [ %9, %20 ]
  %35 = phi ptr [ %31, %23 ], [ %5, %20 ]
  %36 = ptrtoint ptr %5 to i32
  %37 = icmp ne i8 %34, 0
  %38 = ptrtoint ptr %35 to i32
  %39 = sub i32 %38, %36
  %40 = icmp ult i32 %39, 15
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %42, label %62

42:                                               ; preds = %53, %33
  %43 = phi i8 [ %56, %53 ], [ %34, %33 ]
  %44 = phi ptr [ %54, %53 ], [ %35, %33 ]
  %45 = phi ptr [ %55, %53 ], [ %10, %33 ]
  %46 = zext i8 %43 to i32
  %47 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 7
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = getelementptr i8, ptr %44, i32 1
  store i8 %43, ptr %44, align 1
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi ptr [ %52, %51 ], [ %44, %42 ]
  %55 = getelementptr i8, ptr %45, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = icmp ne i8 %56, 0
  %58 = ptrtoint ptr %54 to i32
  %59 = sub i32 %58, %36
  %60 = icmp ult i32 %59, 15
  %61 = select i1 %57, i1 %60, i1 false
  br i1 %61, label %42, label %62

62:                                               ; preds = %53, %33, %16, %3
  %63 = phi ptr [ %35, %33 ], [ %5, %3 ], [ %54, %53 ], [ %5, %16 ]
  store i8 0, ptr %63, align 1
  %64 = load i8, ptr %5, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(5) @.str.28, i32 noundef 4)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %108, %66, %62
  store i64 32770348699510084, ptr %5, align 1
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i1 [ false, %66 ], [ true, %69 ]
  %72 = tail call i32 @strlen(ptr noundef %5)
  %73 = getelementptr i8, ptr %5, i32 %72
  %74 = getelementptr %struct.snd_card, ptr %0, i32 0, i32 1, i32 15
  br label %75

75:                                               ; preds = %96, %70
  %76 = phi i32 [ 0, %70 ], [ %97, %96 ]
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !14
  %77 = tail call i32 @snd_info_check_reserved_words(ptr noundef %5) #16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %96, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr @snd_ecards_limit, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %93, %79
  %83 = phi i32 [ %94, %93 ], [ 0, %79 ]
  %84 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  %87 = icmp eq ptr %85, %0
  %88 = or i1 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.snd_card, ptr %85, i32 0, i32 1
  %91 = tail call i32 @strcmp(ptr noundef %90, ptr noundef %5) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89, %82
  %94 = add nuw nsw i32 %83, 1
  %95 = icmp eq i32 %94, %80
  br i1 %95, label %118, label %82

96:                                               ; preds = %89, %75
  %97 = add nuw nsw i32 %76, 1
  %98 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.30, i32 noundef %97)
  %99 = call i32 @strlen(ptr noundef nonnull %4)
  %100 = add i32 %99, %72
  %101 = icmp ugt i32 %100, 15
  %102 = sub i32 0, %99
  %103 = getelementptr i8, ptr %74, i32 %102
  %104 = select i1 %101, ptr %103, ptr %73
  %105 = call ptr @strcpy(ptr noundef %104, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #16
  %106 = icmp eq i32 %97, 32
  br i1 %106, label %107, label %75

107:                                              ; preds = %96
  br i1 %71, label %109, label %108

108:                                              ; preds = %107
  store i8 0, ptr %5, align 1
  br label %69

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %111 = load ptr, ptr %110, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.31, ptr noundef %5) #18
  %112 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 20
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %109
  %117 = tail call i32 @strscpy(ptr noundef %5, ptr noundef nonnull %114, i32 noundef 16) #16
  br label %119

118:                                              ; preds = %93, %79
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #16
  br label %119

119:                                              ; preds = %118, %116, %109
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_add_dev_attr(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr %struct.snd_card, ptr %0, i32 0, i32 29, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.snd_card, ptr %0, i32 0, i32 29, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.snd_card, ptr %0, i32 0, i32 29, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %16 = load ptr, ptr %15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.2) #18
  br label %19

17:                                               ; preds = %10, %6, %2
  %18 = phi ptr [ %3, %2 ], [ %7, %6 ], [ %11, %10 ]
  store ptr %1, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ 0, %17 ], [ -28, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_register(ptr noundef %0) #0 {
  %2 = alloca [16 x i8], align 1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %80, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 30
  %6 = load i8, ptr %5, align 8, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  %10 = tail call i32 @device_add(ptr noundef %9) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %80, label %12

12:                                               ; preds = %8
  store i8 1, ptr %5, align 8
  br label %20

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 31
  %15 = load i8, ptr %14, align 1, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %19 = load ptr, ptr %18, align 8
  tail call void @devm_remove_action(ptr noundef %19, ptr noundef nonnull @trigger_card_free, ptr noundef nonnull %0) #16
  br label %20

20:                                               ; preds = %17, %13, %12
  %21 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 31
  %22 = load i8, ptr %21, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @devm_add_action(ptr noundef %26, ptr noundef nonnull @trigger_card_free, ptr noundef nonnull %0) #16
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %24, %20
  %30 = tail call i32 @snd_device_register_all(ptr noundef nonnull %0) #16
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %80, label %32

32:                                               ; preds = %29
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %33 = load i32, ptr %0, align 8
  %34 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %38 = tail call i32 @snd_info_card_register(ptr noundef nonnull %0) #16
  br label %80

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef align 4 dereferenceable(16) %40, i32 16, i1 false)
  call fastcc void @snd_card_set_id_no_lock(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  br label %75

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 4
  %49 = select i1 %47, ptr %48, ptr %45
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %70, %44
  %53 = phi i8 [ %62, %70 ], [ %50, %44 ]
  %54 = phi ptr [ %71, %70 ], [ %49, %44 ]
  %55 = phi ptr [ %61, %70 ], [ %49, %44 ]
  %56 = zext i8 %53 to i32
  %57 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 32
  %60 = icmp eq i8 %59, 0
  %61 = getelementptr i8, ptr %55, i32 1
  %62 = load i8, ptr %61, align 1
  br i1 %60, label %70, label %63

63:                                               ; preds = %52
  %64 = zext i8 %62 to i32
  %65 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 7
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr %54, ptr %61
  br label %70

70:                                               ; preds = %63, %52
  %71 = phi ptr [ %69, %63 ], [ %54, %52 ]
  %72 = icmp eq i8 %62, 0
  br i1 %72, label %73, label %52

73:                                               ; preds = %70, %44
  %74 = phi ptr [ %49, %44 ], [ %71, %70 ]
  tail call fastcc void @snd_card_set_id_no_lock(ptr noundef nonnull %0, ptr noundef %49, ptr noundef %74)
  br label %75

75:                                               ; preds = %73, %43
  %76 = load i32, ptr %0, align 8
  %77 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %76
  store ptr %0, ptr %77, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %78 = tail call i32 @snd_info_card_register(ptr noundef nonnull %0) #16
  %79 = tail call i32 @llvm.smin.i32(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %75, %37, %29, %24, %8, %1
  %81 = phi i32 [ %38, %37 ], [ -22, %1 ], [ %10, %8 ], [ %27, %24 ], [ %30, %29 ], [ %79, %75 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_remove_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trigger_card_free(ptr noundef %0) #0 {
  %2 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1
  store i64 0, ptr %2, align 8
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 32
  %6 = load i8, ptr %5, align 2, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 26
  store ptr %2, ptr %9, align 4
  %10 = call i32 @snd_card_disconnect(ptr noundef %0) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  call void @put_device(ptr noundef %13) #16
  call void @wait_for_completion(ptr noundef nonnull %2) #16
  br label %14

14:                                               ; preds = %12, %8, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_register_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @snd_card_info_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @snd_info_create_module_entry(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.3, ptr noundef null) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4
  store ptr @snd_card_info_read, ptr %4, align 4
  %5 = tail call i32 @snd_info_register(ptr noundef nonnull %1) #16
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @snd_info_create_module_entry(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.4, ptr noundef null) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4
  store ptr @snd_card_module_info_read, ptr %11, align 4
  %12 = tail call i32 @snd_info_register(ptr noundef nonnull %8) #16
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 -12, i32 0
  br label %15

15:                                               ; preds = %10, %7, %3, %0
  %16 = phi i32 [ -12, %0 ], [ -12, %3 ], [ -12, %7 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_card_info_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %17, %2
  %4 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %5 = phi i32 [ 0, %2 ], [ %19, %17 ]
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %6 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = add i32 %4, 1
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 2
  %14 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.32, i32 noundef %5, ptr noundef %12, ptr noundef %13, ptr noundef %14) #16
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef %16) #16
  br label %17

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %10, %9 ], [ %4, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %3

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.34) #16
  br label %25

25:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_card_module_info_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %4 = phi i32 [ 0, %2 ], [ %14, %13 ]
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %5 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.module, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %4, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %3
  tail call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  %14 = add nuw nsw i32 %4, 1
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %3

16:                                               ; preds = %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_component_add(ptr noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 7
  %5 = tail call ptr @strstr(ptr noundef %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %5, i32 %3
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %10 [
    i8 0, label %23
    i8 32, label %23
  ]

10:                                               ; preds = %7, %2
  %11 = tail call i32 @strlen(ptr noundef %4)
  %12 = add i32 %3, -127
  %13 = add i32 %12, %11
  %14 = icmp ult i32 %13, -129
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load i8, ptr %4, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strlen(ptr %4)
  %20 = getelementptr i8, ptr %4, i32 %19
  store i16 32, ptr %20, align 1
  br label %21

21:                                               ; preds = %18, %15
  %22 = tail call ptr @strcat(ptr noundef %4, ptr noundef %1)
  br label %23

23:                                               ; preds = %21, %10, %7, %7
  %24 = phi i32 [ 0, %21 ], [ 1, %7 ], [ 1, %7 ], [ -12, %10 ]
  ret i32 %24
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_file_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 24) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  store ptr %1, ptr %4, align 8
  %7 = getelementptr inbounds %struct.snd_monitor_file, ptr %4, i32 0, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_monitor_file, ptr %4, i32 0, i32 2
  store volatile ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.snd_monitor_file, ptr %4, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %15 = load i16, ptr %10, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call void @kfree(ptr noundef nonnull %4) #16
  br label %27

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.snd_monitor_file, ptr %4, i32 0, i32 3
  %19 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  store ptr %20, ptr %18, align 8
  %22 = getelementptr inbounds %struct.snd_monitor_file, ptr %4, i32 0, i32 3, i32 1
  store ptr %19, ptr %22, align 4
  store volatile ptr %18, ptr %19, align 4
  %23 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  %24 = tail call ptr @get_device(ptr noundef %23) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %25 = load i16, ptr %10, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %27

27:                                               ; preds = %17, %14, %2
  %28 = phi i32 [ -19, %14 ], [ 0, %17 ], [ -12, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_card_file_remove(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 22
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -16
  %15 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @shutdown_lock) #16
  %19 = getelementptr i8, ptr %7, i32 -8
  %20 = getelementptr i8, ptr %7, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %24 = load i16, ptr @shutdown_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @shutdown_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %26 = getelementptr i8, ptr %7, i32 -12
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %13
  %30 = load ptr, ptr %27, align 4
  tail call void @module_put(ptr noundef %30) #16
  br label %31

31:                                               ; preds = %29, %13, %5
  %32 = phi ptr [ %14, %29 ], [ %14, %13 ], [ null, %5 ]
  %33 = load volatile ptr, ptr %4, align 4
  %34 = icmp eq ptr %33, %4
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 34
  tail call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  br label %37

37:                                               ; preds = %35, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %38 = load i16, ptr %3, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %40 = icmp eq ptr %32, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 27
  %43 = load ptr, ptr %42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef %1) #18
  br label %46

44:                                               ; preds = %37
  tail call void @kfree(ptr noundef nonnull %32) #16
  %45 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 28
  tail call void @put_device(ptr noundef %45) #16
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ 0, %44 ], [ -2, %41 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_power_ref_and_wait(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !17
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !18
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 37
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 25
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load volatile i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !14
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #16
  %16 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 39
  %17 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 2) #16
  %18 = load i32, ptr %9, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 40
  br label %22

22:                                               ; preds = %30, %20
  %23 = load volatile i32, ptr %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !17
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !20
  %27 = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @__wake_up(ptr noundef %21, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %30

30:                                               ; preds = %29, %25
  call void @schedule() #16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !17
  %31 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !18
  %32 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %2, i32 noundef 2) #16
  %33 = load i32, ptr %9, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %22, label %35

35:                                               ; preds = %30, %22, %15
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #16
  %36 = load i32, ptr %9, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %12
  br label %39

39:                                               ; preds = %38, %35, %8, %1
  %40 = phi i32 [ 0, %1 ], [ 0, %38 ], [ -19, %35 ], [ -19, %8 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_power_wait(ptr noundef %0) #0 {
  %2 = tail call i32 @snd_power_ref_and_wait(ptr noundef %0)
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !17
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !20
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %9

9:                                                ; preds = %7, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_card_device(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -976
  %3 = getelementptr i8, ptr %0, i32 490
  store i8 1, ptr %3, align 2
  tail call void @snd_device_free_all(ptr noundef %2) #16
  %4 = getelementptr i8, ptr %0, i32 -580
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #16
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call i32 @snd_info_card_free(ptr noundef %2) #16
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.22) #18
  br label %14

14:                                               ; preds = %11, %8
  %15 = getelementptr i8, ptr %0, i32 -12
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @complete(ptr noundef nonnull %16) #16
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %0, i32 489
  %21 = load i8, ptr %20, align 1, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @kfree(ptr noundef %2) #16
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_card_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -972
  %5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @id_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr i8, ptr %0, i32 -976
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %7 = tail call i32 @llvm.umin.i32(i32 %3, i32 15)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %20, %4
  %10 = phi i32 [ %21, %20 ], [ 0, %4 ]
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = freeze i8 %15
  %17 = and i8 %16, 7
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  switch i8 %12, label %47 [
    i8 95, label %20
    i8 45, label %20
  ]

20:                                               ; preds = %19, %19, %9
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %2, i32 %7, i1 false)
  %24 = getelementptr [16 x i8], ptr %5, i32 0, i32 %7
  store i8 0, ptr %24, align 1
  tail call void @mutex_lock(ptr noundef nonnull @snd_card_mutex) #16
  %25 = call i32 @snd_info_check_reserved_words(ptr noundef nonnull %5) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr @snd_ecards_limit, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %39, %27
  %31 = phi i32 [ %40, %39 ], [ 0, %27 ]
  %32 = getelementptr [32 x ptr], ptr @snd_cards, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 1
  %37 = call i32 @strcmp(ptr noundef %36, ptr noundef nonnull %5) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35, %30
  %40 = add nuw nsw i32 %31, 1
  %41 = icmp eq i32 %40, %28
  br i1 %41, label %42, label %30

42:                                               ; preds = %39, %27
  %43 = getelementptr i8, ptr %0, i32 -972
  %44 = call ptr @strcpy(ptr noundef %43, ptr noundef nonnull %5)
  call void @snd_info_card_id_change(ptr noundef %6) #16
  br label %45

45:                                               ; preds = %42, %35, %23
  %46 = phi i32 [ %3, %42 ], [ -17, %23 ], [ -17, %35 ]
  call void @mutex_unlock(ptr noundef nonnull @snd_card_mutex) #16
  br label %47

47:                                               ; preds = %45, %19
  %48 = phi i32 [ %46, %45 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_card_id_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_check_reserved_words(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @number_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -976
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %5) #16
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i64 @snd_disconnect_llseek(ptr nocapture noundef readnone %0, i64 noundef %1, i32 noundef %2) #2 {
  ret i64 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_disconnect_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_disconnect_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_disconnect_poll(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_disconnect_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #2 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_disconnect_mmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_disconnect_release(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @shutdown_lock) #16
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @shutdown_files, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @shutdown_files
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -8
  %13 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %13, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi ptr [ %12, %11 ], [ null, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %19 = load i16, ptr @shutdown_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @shutdown_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %21 = icmp eq ptr %18, null
  br i1 %21, label %41, label %22, !prof !8

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.snd_monitor_file, ptr %18, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.file_operations, ptr %29, i32 0, i32 18
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(i32 noundef -1, ptr noundef %1, i32 noundef 0) #16
  br label %35

35:                                               ; preds = %33, %27, %22
  %36 = getelementptr inbounds %struct.snd_monitor_file, ptr %18, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.file_operations, ptr %37, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0, ptr noundef %1) #16
  ret i32 %40

41:                                               ; preds = %17
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.snd_disconnect_release, ptr noundef %0, ptr noundef %1) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @snd_disconnect_fasync(i32 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  ret i32 -19
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold noreturn nounwind }

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
!10 = !{i64 2149192438}
!11 = !{i64 2149188262}
!12 = !{i64 2149188337, i64 2149188364, i64 2149188411, i64 2149188433, i64 2149188461, i64 2149188481}
!13 = !{i64 2149215441}
!14 = !{!"auto-init"}
!15 = !{i64 585701}
!16 = !{i64 2149216582}
!17 = !{i64 556709, i64 2148058275, i64 2148058301, i64 2148058348, i64 2148058370, i64 2148058398, i64 2148058418}
!18 = !{i64 2148121537, i64 2148121563, i64 2148121592, i64 2148121626, i64 2148121657, i64 2148121680}
!19 = !{i64 2148222216}
!20 = !{i64 2148124578, i64 2148124610, i64 2148124639, i64 2148124673, i64 2148124704, i64 2148124727}
!21 = !{i64 2148222419}
