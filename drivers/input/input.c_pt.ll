; ModuleID = '/llk/IR/drivers/input/input.c_pt.bc'
source_filename = "../drivers/input/input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_event:\09\09\09\09\09"
module asm "\09.asciz \09\22input_event\22\09\09\09\09\09"
module asm "__kstrtabns_input_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_inject_event:\09\09\09\09\09"
module asm "\09.asciz \09\22input_inject_event\22\09\09\09\09\09"
module asm "__kstrtabns_input_inject_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_alloc_absinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22input_alloc_absinfo\22\09\09\09\09\09"
module asm "__kstrtabns_input_alloc_absinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_abs_params:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_abs_params\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_abs_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_grab_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_grab_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_grab_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_release_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_release_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_release_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_open_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_open_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_open_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_flush_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_flush_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_flush_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_close_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_close_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_close_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_scancode_to_scalar:\09\09\09\09\09"
module asm "\09.asciz \09\22input_scancode_to_scalar\22\09\09\09\09\09"
module asm "__kstrtabns_input_scancode_to_scalar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_get_keycode:\09\09\09\09\09"
module asm "\09.asciz \09\22input_get_keycode\22\09\09\09\09\09"
module asm "__kstrtabns_input_get_keycode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_keycode:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_keycode\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_keycode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_match_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22input_match_device_id\22\09\09\09\09\09"
module asm "__kstrtabns_input_match_device_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_reset_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_reset_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_class:\09\09\09\09\09"
module asm "\09.asciz \09\22input_class\22\09\09\09\09\09"
module asm "__kstrtabns_input_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_input_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_input_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_devm_input_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_get_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22input_get_timestamp\22\09\09\09\09\09"
module asm "__kstrtabns_input_get_timestamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_set_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22input_set_capability\22\09\09\09\09\09"
module asm "__kstrtabns_input_set_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_enable_softrepeat:\09\09\09\09\09"
module asm "\09.asciz \09\22input_enable_softrepeat\22\09\09\09\09\09"
module asm "__kstrtabns_input_enable_softrepeat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_device_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22input_device_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_input_device_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22input_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_input_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_register_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22input_register_handler\22\09\09\09\09\09"
module asm "__kstrtabns_input_register_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_unregister_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22input_unregister_handler\22\09\09\09\09\09"
module asm "__kstrtabns_input_unregister_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_handler_for_each_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22input_handler_for_each_handle\22\09\09\09\09\09"
module asm "__kstrtabns_input_handler_for_each_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_register_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22input_register_handle\22\09\09\09\09\09"
module asm "__kstrtabns_input_register_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_unregister_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22input_unregister_handle\22\09\09\09\09\09"
module asm "__kstrtabns_input_unregister_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_get_new_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22input_get_new_minor\22\09\09\09\09\09"
module asm "__kstrtabns_input_get_new_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_input_free_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22input_free_minor\22\09\09\09\09\09"
module asm "__kstrtabns_input_free_minor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.input_mt = type { i32, i32, i32, i32, i32, ptr, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_value = type { i16, i16, i32 }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.anon.66 = type { i16, i8 }

@__UNIQUE_ID_author208 = internal constant [51 x i8] c"input_core.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description209 = internal constant [34 x i8] c"input_core.description=Input core\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [41 x i8] c"input_core.file=drivers/input/input-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [23 x i8] c"input_core.license=GPL\00", section ".modinfo", align 1
@__kstrtab_input_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_event = external dso_local constant [0 x i8], align 1
@__ksymtab_input_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_event to i32), ptr @__kstrtab_input_event, ptr @__kstrtabns_input_event }, section "___ksymtab+input_event", align 4
@__kstrtab_input_inject_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_inject_event = external dso_local constant [0 x i8], align 1
@__ksymtab_input_inject_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_inject_event to i32), ptr @__kstrtab_input_inject_event, ptr @__kstrtabns_input_inject_event }, section "___ksymtab+input_inject_event", align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: unable to allocate memory\0A\00", align 1
@__func__.input_alloc_absinfo = private unnamed_addr constant [20 x i8] c"input_alloc_absinfo\00", align 1
@__kstrtab_input_alloc_absinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_alloc_absinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_input_alloc_absinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_alloc_absinfo to i32), ptr @__kstrtab_input_alloc_absinfo, ptr @__kstrtabns_input_alloc_absinfo }, section "___ksymtab+input_alloc_absinfo", align 4
@__kstrtab_input_set_abs_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_abs_params = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_abs_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_abs_params to i32), ptr @__kstrtab_input_set_abs_params, ptr @__kstrtabns_input_set_abs_params }, section "___ksymtab+input_set_abs_params", align 4
@__kstrtab_input_grab_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_grab_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_grab_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_grab_device to i32), ptr @__kstrtab_input_grab_device, ptr @__kstrtabns_input_grab_device }, section "___ksymtab+input_grab_device", align 4
@__kstrtab_input_release_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_release_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_release_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_release_device to i32), ptr @__kstrtab_input_release_device, ptr @__kstrtabns_input_release_device }, section "___ksymtab+input_release_device", align 4
@__kstrtab_input_open_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_open_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_open_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_open_device to i32), ptr @__kstrtab_input_open_device, ptr @__kstrtabns_input_open_device }, section "___ksymtab+input_open_device", align 4
@__kstrtab_input_flush_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_flush_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_flush_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_flush_device to i32), ptr @__kstrtab_input_flush_device, ptr @__kstrtabns_input_flush_device }, section "___ksymtab+input_flush_device", align 4
@__kstrtab_input_close_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_close_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_close_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_close_device to i32), ptr @__kstrtab_input_close_device, ptr @__kstrtabns_input_close_device }, section "___ksymtab+input_close_device", align 4
@__kstrtab_input_scancode_to_scalar = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_scancode_to_scalar = external dso_local constant [0 x i8], align 1
@__ksymtab_input_scancode_to_scalar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_scancode_to_scalar to i32), ptr @__kstrtab_input_scancode_to_scalar, ptr @__kstrtabns_input_scancode_to_scalar }, section "___ksymtab+input_scancode_to_scalar", align 4
@__kstrtab_input_get_keycode = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_get_keycode = external dso_local constant [0 x i8], align 1
@__ksymtab_input_get_keycode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_get_keycode to i32), ptr @__kstrtab_input_get_keycode, ptr @__kstrtabns_input_get_keycode }, section "___ksymtab+input_get_keycode", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: got too big old keycode %#x\0A\00", align 1
@__func__.input_set_keycode = private unnamed_addr constant [18 x i8] c"input_set_keycode\00", align 1
@__kstrtab_input_set_keycode = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_keycode = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_keycode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_keycode to i32), ptr @__kstrtab_input_set_keycode, ptr @__kstrtabns_input_set_keycode }, section "___ksymtab+input_set_keycode", align 4
@__kstrtab_input_match_device_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_match_device_id = external dso_local constant [0 x i8], align 1
@__ksymtab_input_match_device_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_match_device_id to i32), ptr @__kstrtab_input_match_device_id, ptr @__kstrtabns_input_match_device_id }, section "___ksymtab+input_match_device_id", align 4
@__kstrtab_input_reset_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_reset_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_reset_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_reset_device to i32), ptr @__kstrtab_input_reset_device, ptr @__kstrtabns_input_reset_device }, section "___ksymtab+input_reset_device", align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_class = dso_local global %struct.class { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @input_devnode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_input_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_class = external dso_local constant [0 x i8], align 1
@__ksymtab_input_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_class to i32), ptr @__kstrtab_input_class, ptr @__kstrtabns_input_class }, section "___ksymtab_gpl+input_class", align 4
@input_allocate_device.input_no = internal global %struct.atomic_t { i32 -1 }, align 4
@input_dev_type = internal constant %struct.device_type { ptr null, ptr @input_dev_attr_groups, ptr @input_dev_uevent, ptr null, ptr @input_dev_release, ptr @input_dev_pm_ops }, align 4
@input_allocate_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&dev->mutex\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"input%lu\00", align 1
@__kstrtab_input_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_allocate_device to i32), ptr @__kstrtab_input_allocate_device, ptr @__kstrtabns_input_allocate_device }, section "___ksymtab+input_allocate_device", align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"devm_input_device_release\00", align 1
@__kstrtab_devm_input_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_input_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_input_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_input_allocate_device to i32), ptr @__kstrtab_devm_input_allocate_device, ptr @__kstrtabns_devm_input_allocate_device }, section "___ksymtab+devm_input_allocate_device", align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"drivers/input/input.c\00", align 1
@__kstrtab_input_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_free_device to i32), ptr @__kstrtab_input_free_device, ptr @__kstrtabns_input_free_device }, section "___ksymtab+input_free_device", align 4
@__kstrtab_input_set_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_timestamp to i32), ptr @__kstrtab_input_set_timestamp, ptr @__kstrtabns_input_set_timestamp }, section "___ksymtab+input_set_timestamp", align 4
@__kstrtab_input_get_timestamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_get_timestamp = external dso_local constant [0 x i8], align 1
@__ksymtab_input_get_timestamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_get_timestamp to i32), ptr @__kstrtab_input_get_timestamp, ptr @__kstrtabns_input_get_timestamp }, section "___ksymtab+input_get_timestamp", align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"\013input: %s: unknown type %u (code %u)\0A\00", align 1
@__func__.input_set_capability = private unnamed_addr constant [21 x i8] c"input_set_capability\00", align 1
@__kstrtab_input_set_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_set_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_input_set_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_set_capability to i32), ptr @__kstrtab_input_set_capability, ptr @__kstrtabns_input_set_capability }, section "___ksymtab+input_set_capability", align 4
@__kstrtab_input_enable_softrepeat = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_enable_softrepeat = external dso_local constant [0 x i8], align 1
@__ksymtab_input_enable_softrepeat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_enable_softrepeat to i32), ptr @__kstrtab_input_enable_softrepeat, ptr @__kstrtabns_input_enable_softrepeat }, section "___ksymtab+input_enable_softrepeat", align 4
@__kstrtab_input_device_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_device_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_input_device_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_device_enabled to i32), ptr @__kstrtab_input_device_enabled, ptr @__kstrtabns_input_device_enabled }, section "___ksymtab_gpl+input_device_enabled", align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"Absolute device without dev->absinfo, refusing to register\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"devm_input_device_unregister\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\016input: %s as %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Unspecified device\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@input_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @input_mutex, i64 12), ptr getelementptr (i8, ptr @input_mutex, i64 12) } }, align 4
@input_dev_list = internal global %struct.list_head { ptr @input_dev_list, ptr @input_dev_list }, align 4
@input_handler_list = internal global %struct.list_head { ptr @input_handler_list, ptr @input_handler_list }, align 4
@__kstrtab_input_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_register_device to i32), ptr @__kstrtab_input_register_device, ptr @__kstrtabns_input_register_device }, section "___ksymtab+input_register_device", align 4
@__kstrtab_input_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_input_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_unregister_device to i32), ptr @__kstrtab_input_unregister_device, ptr @__kstrtabns_input_unregister_device }, section "___ksymtab+input_unregister_device", align 4
@__kstrtab_input_register_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_register_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_input_register_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_register_handler to i32), ptr @__kstrtab_input_register_handler, ptr @__kstrtabns_input_register_handler }, section "___ksymtab+input_register_handler", align 4
@__kstrtab_input_unregister_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_unregister_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_input_unregister_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_unregister_handler to i32), ptr @__kstrtab_input_unregister_handler, ptr @__kstrtabns_input_unregister_handler }, section "___ksymtab+input_unregister_handler", align 4
@__kstrtab_input_handler_for_each_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_handler_for_each_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_input_handler_for_each_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_handler_for_each_handle to i32), ptr @__kstrtab_input_handler_for_each_handle, ptr @__kstrtabns_input_handler_for_each_handle }, section "___ksymtab+input_handler_for_each_handle", align 4
@__kstrtab_input_register_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_register_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_input_register_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_register_handle to i32), ptr @__kstrtab_input_register_handle, ptr @__kstrtabns_input_register_handle }, section "___ksymtab+input_register_handle", align 4
@__kstrtab_input_unregister_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_unregister_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_input_unregister_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_unregister_handle to i32), ptr @__kstrtab_input_unregister_handle, ptr @__kstrtabns_input_unregister_handle }, section "___ksymtab+input_unregister_handle", align 4
@input_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_input_get_new_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_get_new_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_input_get_new_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_get_new_minor to i32), ptr @__kstrtab_input_get_new_minor, ptr @__kstrtabns_input_get_new_minor }, section "___ksymtab+input_get_new_minor", align 4
@__kstrtab_input_free_minor = external dso_local constant [0 x i8], align 1
@__kstrtabns_input_free_minor = external dso_local constant [0 x i8], align 1
@__ksymtab_input_free_minor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @input_free_minor to i32), ptr @__kstrtab_input_free_minor, ptr @__kstrtabns_input_free_minor }, section "___ksymtab+input_free_minor", align 4
@__initcall__kmod_input_core__268_2640_input_init4 = internal global ptr @input_init, section ".initcall4.init", align 4
@__exitcall_input_exit = internal global ptr @input_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [9 x i8] c"input/%s\00", align 1
@input_dev_attr_groups = internal global [5 x ptr] [ptr @input_dev_attr_group, ptr @input_dev_id_attr_group, ptr @input_dev_caps_attr_group, ptr @input_poller_attribute_group, ptr null], align 4
@input_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @input_dev_suspend, ptr @input_dev_resume, ptr @input_dev_freeze, ptr null, ptr @input_dev_poweroff, ptr @input_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@input_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @input_dev_attrs, ptr null }, align 4
@input_dev_id_attr_group = internal constant %struct.attribute_group { ptr @.str.30, ptr null, ptr null, ptr @input_dev_id_attrs, ptr null }, align 4
@input_dev_caps_attr_group = internal constant %struct.attribute_group { ptr @.str.36, ptr null, ptr null, ptr @input_dev_caps_attrs, ptr null }, align 4
@input_poller_attribute_group = external dso_local global %struct.attribute_group, align 4
@input_dev_attrs = internal global [7 x ptr] [ptr @dev_attr_name, ptr @dev_attr_phys, ptr @dev_attr_uniq, ptr @dev_attr_modalias, ptr @dev_attr_properties, ptr @dev_attr_inhibited, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @input_dev_show_name, ptr null }, align 4
@dev_attr_phys = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @input_dev_show_phys, ptr null }, align 4
@dev_attr_uniq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @input_dev_show_uniq, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @input_dev_show_modalias, ptr null }, align 4
@dev_attr_properties = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @input_dev_show_properties, ptr null }, align 4
@dev_attr_inhibited = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420 }, ptr @inhibited_show, ptr @inhibited_store }, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"input:b%04Xv%04Xp%04Xe%04X-\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%X,\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"inhibited\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@input_dev_id_attrs = internal global [5 x ptr] [ptr @dev_attr_bustype, ptr @dev_attr_vendor, ptr @dev_attr_product, ptr @dev_attr_version, ptr null], align 4
@dev_attr_bustype = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @input_dev_show_id_bustype, ptr null }, align 4
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @input_dev_show_id_vendor, ptr null }, align 4
@dev_attr_product = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @input_dev_show_id_product, ptr null }, align 4
@dev_attr_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @input_dev_show_id_version, ptr null }, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"bustype\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"%04x\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@input_dev_caps_attrs = internal global [10 x ptr] [ptr @dev_attr_ev, ptr @dev_attr_key, ptr @dev_attr_rel, ptr @dev_attr_abs, ptr @dev_attr_msc, ptr @dev_attr_led, ptr @dev_attr_snd, ptr @dev_attr_ff, ptr @dev_attr_sw, ptr null], align 4
@dev_attr_ev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @input_dev_show_cap_ev, ptr null }, align 4
@dev_attr_key = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @input_dev_show_cap_key, ptr null }, align 4
@dev_attr_rel = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @input_dev_show_cap_rel, ptr null }, align 4
@dev_attr_abs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @input_dev_show_cap_abs, ptr null }, align 4
@dev_attr_msc = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292 }, ptr @input_dev_show_cap_msc, ptr null }, align 4
@dev_attr_led = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @input_dev_show_cap_led, ptr null }, align 4
@dev_attr_snd = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @input_dev_show_cap_snd, ptr null }, align 4
@dev_attr_ff = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @input_dev_show_cap_ff, ptr null }, align 4
@dev_attr_sw = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @input_dev_show_cap_sw, ptr null }, align 4
@.str.37 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"msc\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"snd\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"PRODUCT=%x/%x/%x/%x\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"NAME=\22%s\22\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"PHYS=\22%s\22\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"UNIQ=\22%s\22\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"PROP=\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"EV=\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"KEY=\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"REL=\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"ABS=\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"MSC=\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"LED=\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"SND=\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"FF=\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"SW=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@.str.62 = private unnamed_addr constant [62 x i8] c"\013input: failed to attach handler %s to device %s, error: %d\0A\00", align 1
@input_devices_state = internal unnamed_addr global i32 0, align 4
@input_devices_poll_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @input_devices_poll_wait, i64 4), ptr getelementptr (i8, ptr @input_devices_poll_wait, i64 4) } }, align 4
@.str.63 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@proc_bus_input_dir = internal unnamed_addr global ptr null, align 4
@.str.64 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"bus/input\00", align 1
@input_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [45 x i8] c"\013input: unable to register input_dev class\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"\013input: unable to register char major %d\00", align 1
@input_devices_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @input_proc_devices_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release, ptr @input_proc_devices_poll, ptr null, ptr null, ptr null }, align 4
@input_handlers_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @input_proc_handlers_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@input_devices_seq_ops = internal constant %struct.seq_operations { ptr @input_devices_seq_start, ptr @input_seq_stop, ptr @input_devices_seq_next, ptr @input_devices_seq_show }, align 4
@.str.68 = private unnamed_addr constant [51 x i8] c"I: Bus=%04x Vendor=%04x Product=%04x Version=%04x\0A\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"N: Name=\22%s\22\0A\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"P: Phys=%s\0A\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"S: Sysfs=%s\0A\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"U: Uniq=%s\0A\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"H: Handlers=\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"PROP\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"KEY\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"REL\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"MSC\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"LED\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"SND\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"B: %s=\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@input_handlers_seq_ops = internal constant %struct.seq_operations { ptr @input_handlers_seq_start, ptr @input_seq_stop, ptr @input_handlers_seq_next, ptr @input_handlers_seq_show }, align 4
@.str.87 = private unnamed_addr constant [21 x i8] c"N: Number=%u Name=%s\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c" (filter)\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c" Minor=%d\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_input_exit, ptr @__initcall__kmod_input_core__268_2640_input_init4, ptr @__ksymtab_devm_input_allocate_device, ptr @__ksymtab_input_alloc_absinfo, ptr @__ksymtab_input_allocate_device, ptr @__ksymtab_input_class, ptr @__ksymtab_input_close_device, ptr @__ksymtab_input_device_enabled, ptr @__ksymtab_input_enable_softrepeat, ptr @__ksymtab_input_event, ptr @__ksymtab_input_flush_device, ptr @__ksymtab_input_free_device, ptr @__ksymtab_input_free_minor, ptr @__ksymtab_input_get_keycode, ptr @__ksymtab_input_get_new_minor, ptr @__ksymtab_input_get_timestamp, ptr @__ksymtab_input_grab_device, ptr @__ksymtab_input_handler_for_each_handle, ptr @__ksymtab_input_inject_event, ptr @__ksymtab_input_match_device_id, ptr @__ksymtab_input_open_device, ptr @__ksymtab_input_register_device, ptr @__ksymtab_input_register_handle, ptr @__ksymtab_input_register_handler, ptr @__ksymtab_input_release_device, ptr @__ksymtab_input_reset_device, ptr @__ksymtab_input_scancode_to_scalar, ptr @__ksymtab_input_set_abs_params, ptr @__ksymtab_input_set_capability, ptr @__ksymtab_input_set_keycode, ptr @__ksymtab_input_set_timestamp, ptr @__ksymtab_input_unregister_device, ptr @__ksymtab_input_unregister_handle, ptr @__ksymtab_input_unregister_handler, ptr @input_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %1, 31
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %8 = lshr i32 %1, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = shl nuw i32 1, %1
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #16
  tail call fastcc void @input_handle_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #16
  br label %17

17:                                               ; preds = %14, %6, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @input_handle_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 48
  %6 = load i8, ptr %5, align 8, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %306

8:                                                ; preds = %4
  switch i32 %1, label %250 [
    i32 0, label %9
    i32 1, label %12
    i32 5, label %35
    i32 3, label %55
    i32 2, label %166
    i32 4, label %168
    i32 17, label %178
    i32 18, label %198
    i32 20, label %218
    i32 21, label %227
    i32 22, label %243
  ]

9:                                                ; preds = %8
  switch i32 %2, label %250 [
    i32 1, label %244
    i32 0, label %10
    i32 2, label %11
  ]

10:                                               ; preds = %9
  br label %250

11:                                               ; preds = %9
  br label %250

12:                                               ; preds = %8
  %13 = icmp ugt i32 %2, 767
  br i1 %13, label %250, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  %16 = lshr i32 %2, 5
  %17 = getelementptr i32, ptr %15, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %2, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %250, label %23

23:                                               ; preds = %14
  %24 = icmp eq i32 %3, 2
  br i1 %24, label %240, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 27
  %27 = getelementptr i32, ptr %26, i32 %16
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, %20
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne i32 %3, 0
  %32 = xor i1 %31, %30
  br i1 %32, label %250, label %33

33:                                               ; preds = %25
  %34 = xor i32 %28, %20
  store i32 %34, ptr %27, align 4
  br label %240

35:                                               ; preds = %8
  %36 = icmp ugt i32 %2, 16
  br i1 %36, label %250, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 13
  %39 = lshr i32 %2, 5
  %40 = getelementptr i32, ptr %38, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = shl nuw nsw i32 1, %2
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %250, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 30
  %47 = getelementptr i32, ptr %46, i32 %39
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, %42
  %50 = icmp eq i32 %49, 0
  %51 = icmp ne i32 %3, 0
  %52 = xor i1 %51, %50
  br i1 %52, label %250, label %53

53:                                               ; preds = %45
  %54 = xor i32 %48, %42
  store i32 %54, ptr %47, align 4
  br label %240

55:                                               ; preds = %8
  %56 = icmp ugt i32 %2, 63
  br i1 %56, label %250, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %59 = lshr i32 %2, 5
  %60 = getelementptr i32, ptr %58, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %2, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %250, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq i32 %2, 47
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = icmp ne ptr %68, null
  %72 = icmp sgt i32 %3, -1
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %250

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.input_mt, ptr %68, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, %3
  br i1 %77, label %78, label %250

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.input_mt, ptr %68, i32 0, i32 2
  store i32 %3, ptr %79, align 4
  br label %250

80:                                               ; preds = %66
  %81 = add nsw i32 %2, -48
  %82 = icmp ult i32 %81, 14
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr %struct.input_absinfo, ptr %85, i32 %2
  br label %94

87:                                               ; preds = %80
  %88 = icmp eq ptr %68, null
  br i1 %88, label %240, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.input_mt, ptr %68, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr %struct.input_mt, ptr %68, i32 0, i32 6, i32 %91
  %93 = getelementptr [14 x i32], ptr %92, i32 0, i32 %81
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi ptr [ %93, %89 ], [ %86, %83 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %135, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %95, align 4
  %99 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr %struct.input_absinfo, ptr %100, i32 %2, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %131, label %104

104:                                              ; preds = %97
  %105 = sdiv i32 %102, 2
  %106 = sub i32 %98, %105
  %107 = icmp slt i32 %106, %3
  %108 = add i32 %105, %98
  %109 = icmp sgt i32 %108, %3
  %110 = and i1 %107, %109
  br i1 %110, label %250, label %111

111:                                              ; preds = %104
  %112 = sub i32 %98, %102
  %113 = icmp slt i32 %112, %3
  %114 = add i32 %102, %98
  %115 = icmp sgt i32 %114, %3
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = mul i32 %98, 3
  %119 = add i32 %118, %3
  %120 = sdiv i32 %119, 4
  br label %131

121:                                              ; preds = %111
  %122 = shl i32 %102, 1
  %123 = sub i32 %98, %122
  %124 = icmp slt i32 %123, %3
  %125 = add i32 %122, %98
  %126 = icmp sgt i32 %125, %3
  %127 = and i1 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = add i32 %98, %3
  %130 = sdiv i32 %129, 2
  br label %131

131:                                              ; preds = %128, %121, %117, %97
  %132 = phi i32 [ %120, %117 ], [ %130, %128 ], [ %3, %121 ], [ %3, %97 ]
  %133 = icmp eq i32 %98, %132
  br i1 %133, label %250, label %134

134:                                              ; preds = %131
  store i32 %132, ptr %95, align 4
  br label %135

135:                                              ; preds = %134, %94
  %136 = phi i32 [ %3, %94 ], [ %132, %134 ]
  %137 = icmp ne ptr %68, null
  %138 = select i1 %82, i1 %137, i1 false
  br i1 %138, label %139, label %240

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.input_mt, ptr %68, i32 0, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = icmp eq i32 %141, 0
  br i1 %146, label %240, label %151

147:                                              ; preds = %139
  %148 = getelementptr %struct.input_absinfo, ptr %143, i32 47
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %141, %149
  br i1 %150, label %240, label %163

151:                                              ; preds = %145
  %152 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %153 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %152, i32 noundef 3520, i32 noundef 1536) #17
  store ptr %153, ptr %142, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %157 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  %160 = select i1 %159, ptr %156, ptr %158
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.input_alloc_absinfo) #18
  %161 = load ptr, ptr %142, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %240, label %163

163:                                              ; preds = %155, %151, %147
  %164 = phi ptr [ %161, %155 ], [ %153, %151 ], [ %143, %147 ]
  %165 = getelementptr %struct.input_absinfo, ptr %164, i32 47
  store i32 %141, ptr %165, align 4
  br label %240

166:                                              ; preds = %8
  %167 = icmp ugt i32 %2, 15
  br i1 %167, label %250, label %229

168:                                              ; preds = %8
  %169 = icmp ugt i32 %2, 7
  br i1 %169, label %250, label %170

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 9
  %172 = lshr i32 %2, 5
  %173 = getelementptr i32, ptr %171, i32 %172
  %174 = load volatile i32, ptr %173, align 4
  %175 = shl nuw nsw i32 1, %2
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %250, label %243

178:                                              ; preds = %8
  %179 = icmp ugt i32 %2, 15
  br i1 %179, label %250, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 10
  %182 = lshr i32 %2, 5
  %183 = getelementptr i32, ptr %181, i32 %182
  %184 = load volatile i32, ptr %183, align 4
  %185 = shl nuw nsw i32 1, %2
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %250, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 28
  %190 = getelementptr i32, ptr %189, i32 %182
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %191, %185
  %193 = icmp eq i32 %192, 0
  %194 = icmp ne i32 %3, 0
  %195 = xor i1 %194, %193
  br i1 %195, label %250, label %196

196:                                              ; preds = %188
  %197 = xor i32 %191, %185
  store i32 %197, ptr %190, align 4
  br label %243

198:                                              ; preds = %8
  %199 = icmp ugt i32 %2, 7
  br i1 %199, label %250, label %200

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 11
  %202 = lshr i32 %2, 5
  %203 = getelementptr i32, ptr %201, i32 %202
  %204 = load volatile i32, ptr %203, align 4
  %205 = shl nuw nsw i32 1, %2
  %206 = and i32 %204, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %250, label %208

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 29
  %210 = getelementptr i32, ptr %209, i32 %202
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %211, %205
  %213 = icmp eq i32 %212, 0
  %214 = icmp ne i32 %3, 0
  %215 = xor i1 %214, %213
  br i1 %215, label %243, label %216

216:                                              ; preds = %208
  %217 = xor i32 %211, %205
  store i32 %217, ptr %210, align 4
  br label %243

218:                                              ; preds = %8
  %219 = icmp ult i32 %2, 2
  %220 = icmp sgt i32 %3, -1
  %221 = and i1 %219, %220
  br i1 %221, label %222, label %250

222:                                              ; preds = %218
  %223 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 24, i32 %2
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, %3
  br i1 %225, label %250, label %226

226:                                              ; preds = %222
  store i32 %3, ptr %223, align 4
  br label %243

227:                                              ; preds = %8
  %228 = icmp slt i32 %3, 0
  br i1 %228, label %250, label %243

229:                                              ; preds = %166
  %230 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 7
  %231 = lshr i32 %2, 5
  %232 = getelementptr i32, ptr %230, i32 %231
  %233 = load volatile i32, ptr %232, align 4
  %234 = shl nuw nsw i32 1, %2
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  %237 = icmp eq i32 %3, 0
  %238 = or i1 %237, %236
  br i1 %238, label %250, label %239

239:                                              ; preds = %229
  tail call void @add_input_randomness(i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  br label %250

240:                                              ; preds = %163, %155, %147, %145, %135, %87, %53, %33, %23
  %241 = phi i32 [ %3, %53 ], [ 2, %23 ], [ %3, %33 ], [ %3, %87 ], [ %136, %145 ], [ %136, %155 ], [ %136, %163 ], [ %136, %147 ], [ %136, %135 ]
  %242 = phi i32 [ 1, %53 ], [ 1, %23 ], [ 1, %33 ], [ 1, %87 ], [ 1, %145 ], [ 5, %155 ], [ 5, %163 ], [ 1, %147 ], [ 1, %135 ]
  tail call void @add_input_randomness(i32 noundef %1, i32 noundef %2, i32 noundef %241) #16
  br label %250

243:                                              ; preds = %227, %226, %216, %208, %196, %170, %8
  tail call void @add_input_randomness(i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  br label %244

244:                                              ; preds = %243, %9
  %245 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 34
  %246 = load ptr, ptr %245, align 8
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = tail call i32 %246(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  br label %250

250:                                              ; preds = %248, %244, %240, %239, %229, %227, %222, %218, %200, %198, %188, %180, %178, %170, %168, %166, %131, %104, %78, %74, %70, %57, %55, %45, %37, %35, %25, %14, %12, %11, %10, %9, %8
  %251 = phi i32 [ %3, %248 ], [ %3, %244 ], [ %3, %168 ], [ %3, %170 ], [ %3, %8 ], [ %3, %222 ], [ %3, %218 ], [ %3, %200 ], [ %3, %180 ], [ %3, %188 ], [ %3, %57 ], [ %3, %37 ], [ %3, %45 ], [ %3, %14 ], [ %3, %25 ], [ %3, %9 ], [ %3, %11 ], [ %3, %10 ], [ %3, %70 ], [ %3, %78 ], [ %3, %74 ], [ %98, %131 ], [ %3, %12 ], [ %3, %35 ], [ %3, %55 ], [ %98, %104 ], [ %3, %178 ], [ %3, %198 ], [ %3, %239 ], [ %241, %240 ], [ %3, %229 ], [ %3, %166 ], [ %3, %227 ]
  %252 = phi i32 [ 3, %248 ], [ 3, %244 ], [ 0, %168 ], [ 0, %170 ], [ 0, %8 ], [ 0, %222 ], [ 0, %218 ], [ 0, %200 ], [ 0, %180 ], [ 0, %188 ], [ 0, %57 ], [ 0, %37 ], [ 0, %45 ], [ 0, %14 ], [ 0, %25 ], [ 0, %9 ], [ 1, %11 ], [ 9, %10 ], [ 0, %70 ], [ 0, %78 ], [ 0, %74 ], [ 0, %131 ], [ 0, %12 ], [ 0, %35 ], [ 0, %55 ], [ 0, %104 ], [ 0, %178 ], [ 0, %198 ], [ 1, %239 ], [ %242, %240 ], [ 0, %229 ], [ 0, %166 ], [ 0, %227 ]
  %253 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 45
  %254 = load ptr, ptr %253, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %306, label %256

256:                                              ; preds = %250
  %257 = and i32 %252, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %284, label %259

259:                                              ; preds = %256
  %260 = and i32 %252, 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 43
  %264 = load i32, ptr %263, align 8
  %265 = add i32 %264, 1
  store i32 %265, ptr %263, align 8
  %266 = getelementptr %struct.input_value, ptr %254, i32 %264
  store i16 3, ptr %266, align 4
  %267 = getelementptr %struct.input_value, ptr %254, i32 %264, i32 1
  store i16 47, ptr %267, align 2
  %268 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr inbounds %struct.input_mt, ptr %269, i32 0, i32 2
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr %struct.input_value, ptr %254, i32 %264, i32 2
  store i32 %271, ptr %272, align 4
  %273 = load ptr, ptr %253, align 8
  br label %274

274:                                              ; preds = %262, %259
  %275 = phi ptr [ %273, %262 ], [ %254, %259 ]
  %276 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 43
  %277 = load i32, ptr %276, align 8
  %278 = add i32 %277, 1
  store i32 %278, ptr %276, align 8
  %279 = getelementptr %struct.input_value, ptr %275, i32 %277
  %280 = trunc i32 %1 to i16
  store i16 %280, ptr %279, align 4
  %281 = trunc i32 %2 to i16
  %282 = getelementptr %struct.input_value, ptr %275, i32 %277, i32 1
  store i16 %281, ptr %282, align 2
  %283 = getelementptr %struct.input_value, ptr %275, i32 %277, i32 2
  store i32 %251, ptr %283, align 4
  br label %284

284:                                              ; preds = %274, %256
  %285 = and i32 %252, 8
  %286 = icmp eq i32 %285, 0
  %287 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 43
  %288 = load i32, ptr %287, align 8
  br i1 %286, label %295, label %289

289:                                              ; preds = %284
  %290 = icmp ugt i32 %288, 1
  br i1 %290, label %291, label %293

291:                                              ; preds = %289
  %292 = load ptr, ptr %253, align 8
  tail call fastcc void @input_pass_values(ptr noundef %0, ptr noundef %292, i32 noundef %288)
  br label %293

293:                                              ; preds = %291, %289
  store i32 0, ptr %287, align 8
  %294 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 47, i32 1
  store i64 0, ptr %294, align 8
  br label %306

295:                                              ; preds = %284
  %296 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 44
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, -2
  %299 = icmp ult i32 %288, %298
  br i1 %299, label %306, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr %253, align 8
  %302 = add i32 %288, 1
  store i32 %302, ptr %287, align 8
  %303 = getelementptr %struct.input_value, ptr %301, i32 %288
  store i64 4294967296, ptr %303, align 4
  %304 = load ptr, ptr %253, align 8
  %305 = load i32, ptr %287, align 8
  tail call fastcc void @input_pass_values(ptr noundef %0, ptr noundef %304, i32 noundef %305)
  store i32 0, ptr %287, align 8
  br label %306

306:                                              ; preds = %300, %295, %293, %250, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_inject_event(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt i32 %1, 31
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 5
  %10 = lshr i32 %1, 5
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = shl nuw i32 1, %1
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 36
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %19 = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 35
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %20, %0
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call fastcc void @input_handle_event(ptr noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %25

25:                                               ; preds = %24, %16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #16
  br label %26

26:                                               ; preds = %25, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_alloc_absinfo(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1536) #17
  store ptr %7, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %11 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %10, ptr %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.input_alloc_absinfo) #18
  br label %15

15:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_set_abs_params(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1536) #17
  store ptr %12, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %16 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr %15, ptr %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.input_alloc_absinfo) #18
  %20 = load ptr, ptr %7, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %14, %10, %6
  %23 = phi ptr [ %20, %14 ], [ %12, %10 ], [ %8, %6 ]
  %24 = getelementptr %struct.input_absinfo, ptr %23, i32 %1, i32 1
  store i32 %2, ptr %24, align 4
  %25 = getelementptr %struct.input_absinfo, ptr %23, i32 %1, i32 2
  store i32 %3, ptr %25, align 4
  %26 = getelementptr %struct.input_absinfo, ptr %23, i32 %1, i32 3
  store i32 %4, ptr %26, align 4
  %27 = getelementptr %struct.input_absinfo, ptr %23, i32 %1, i32 4
  store i32 %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 8
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %32 = and i32 %1, 31
  %33 = shl nuw i32 1, %32
  %34 = lshr i32 %1, 5
  %35 = getelementptr i32, ptr %31, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %22, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_grab_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 35
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  store volatile ptr %0, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 0, %11 ], [ -16, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #16
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ %5, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_release_device(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 35
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  store volatile ptr null, ptr %6, align 4
  tail call void @synchronize_rcu() #16
  %10 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 41
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %29, label %13

13:                                               ; preds = %26, %9
  %14 = phi ptr [ %27, %26 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -20
  %16 = getelementptr i8, ptr %14, i32 -16
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.input_handler, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %15) #16
  br label %26

26:                                               ; preds = %25, %19, %13
  %27 = load ptr, ptr %14, align 4
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %13

29:                                               ; preds = %26, %9, %1
  tail call void @mutex_unlock(ptr noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_open_device(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 39
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 38
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 48
  %21 = load i8, ptr %20, align 8, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 31
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %3) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %15, align 8
  %32 = add i32 %31, -1
  store i32 %32, ptr %15, align 8
  %33 = load i32, ptr %12, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %12, align 4
  tail call void @synchronize_rcu() #16
  br label %40

35:                                               ; preds = %27, %23
  %36 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 21
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @input_dev_poller_start(ptr noundef nonnull %37) #16
  br label %40

40:                                               ; preds = %39, %35, %30, %19, %11, %7
  %41 = phi i32 [ 0, %11 ], [ 0, %19 ], [ %28, %30 ], [ 0, %39 ], [ 0, %35 ], [ -19, %7 ]
  tail call void @mutex_unlock(ptr noundef %4) #16
  br label %42

42:                                               ; preds = %40, %1
  %43 = phi i32 [ %41, %40 ], [ %5, %1 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_dev_poller_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_flush_device(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 37
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 33
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %4, ptr noundef %1) #16
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ %15, %14 ], [ %6, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_close_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 35
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  store volatile ptr null, ptr %6, align 4
  tail call void @synchronize_rcu() #16
  %10 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 41
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %29, label %13

13:                                               ; preds = %26, %9
  %14 = phi ptr [ %27, %26 ], [ %11, %9 ]
  %15 = getelementptr i8, ptr %14, i32 -20
  %16 = getelementptr i8, ptr %14, i32 -16
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 -4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.input_handler, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void %23(ptr noundef %15) #16
  br label %26

26:                                               ; preds = %25, %19, %13
  %27 = load ptr, ptr %14, align 4
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %13

29:                                               ; preds = %26, %9, %1
  %30 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 48
  %31 = load i8, ptr %30, align 8, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 38
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 21
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @input_dev_poller_stop(ptr noundef nonnull %40) #16
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 32
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void %45(ptr noundef %3) #16
  br label %48

48:                                               ; preds = %47, %43, %33, %29
  %49 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, -1
  store i32 %51, ptr %49, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  tail call void @synchronize_rcu() #16
  br label %54

54:                                               ; preds = %53, %48
  tail call void @mutex_unlock(ptr noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_dev_poller_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @input_scancode_to_scalar(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.input_keymap_entry, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %18 [
    i8 1, label %5
    i8 2, label %9
    i8 4, label %13
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.input_keymap_entry, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.input_keymap_entry, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.input_keymap_entry, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi i32 [ %8, %5 ], [ %12, %9 ], [ %15, %13 ]
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ -22, %2 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_get_keycode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_set_keycode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.input_value], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !12
  %5 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 767
  br i1 %7, label %54, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 18
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 %12(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -2
  store i32 %18, ptr %16, align 4
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 767
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %23 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %22, ptr %24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.input_set_keycode, i32 noundef %19) #18
  br label %53

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = lshr i32 %19, 5
  %34 = getelementptr i32, ptr %16, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %19, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 27
  %42 = getelementptr i32, ptr %41, i32 %33
  %43 = load i32, ptr %42, align 4
  %44 = xor i32 %37, -1
  %45 = and i32 %43, %44
  store i32 %45, ptr %42, align 4
  %46 = and i32 %43, %37
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  store i16 1, ptr %4, align 4
  %49 = getelementptr inbounds %struct.input_value, ptr %4, i32 0, i32 1
  %50 = trunc i32 %19 to i16
  store i16 %50, ptr %49, align 2
  %51 = getelementptr inbounds %struct.input_value, ptr %4, i32 0, i32 2
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.input_value, ptr %4, i32 1
  store i64 4294967296, ptr %52, align 4
  call fastcc void @input_pass_values(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  br label %53

53:                                               ; preds = %48, %40, %32, %27, %21, %8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #16
  br label %54

54:                                               ; preds = %53, %2
  %55 = phi i32 [ %13, %53 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %55
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @input_pass_values(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %228, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %6 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 35
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.input_handle, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.input_handler, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.input_value, ptr %1, i32 %2
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %176, label %18

18:                                               ; preds = %40, %15
  %19 = phi ptr [ %41, %40 ], [ %13, %15 ]
  %20 = phi ptr [ %38, %40 ], [ %1, %15 ]
  %21 = phi ptr [ %37, %40 ], [ %1, %15 ]
  %22 = load i16, ptr %20, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.input_value, ptr %20, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.input_value, ptr %20, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call zeroext i1 %19(ptr noundef nonnull %7, i32 noundef %23, i32 noundef %26, i32 noundef %28) #16
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = icmp eq ptr %21, %20
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = load i64, ptr %20, align 4
  store i64 %33, ptr %21, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = getelementptr %struct.input_value, ptr %21, i32 1
  br label %36

36:                                               ; preds = %34, %18
  %37 = phi ptr [ %21, %18 ], [ %35, %34 ]
  %38 = getelementptr %struct.input_value, ptr %20, i32 1
  %39 = icmp eq ptr %38, %16
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %12, align 4
  br label %18

42:                                               ; preds = %36
  %43 = ptrtoint ptr %37 to i32
  %44 = ptrtoint ptr %1 to i32
  %45 = sub i32 %43, %44
  %46 = ashr exact i32 %45, 3
  %47 = icmp eq ptr %37, %1
  br i1 %47, label %176, label %48

48:                                               ; preds = %42, %9
  %49 = phi i32 [ %46, %42 ], [ %2, %9 ]
  %50 = getelementptr inbounds %struct.input_handler, ptr %11, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void %51(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %49) #16
  br label %176

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.input_handler, ptr %11, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %176, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.input_value, ptr %1, i32 %49
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %176, label %61

61:                                               ; preds = %58
  %62 = load i16, ptr %1, align 4
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.input_value, ptr %1, i32 0, i32 1
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.input_value, ptr %1, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  tail call void %56(ptr noundef nonnull %7, i32 noundef %63, i32 noundef %66, i32 noundef %68) #16
  %69 = getelementptr %struct.input_value, ptr %1, i32 1
  %70 = icmp eq ptr %69, %59
  br i1 %70, label %176, label %71

71:                                               ; preds = %71, %61
  %72 = phi ptr [ %81, %71 ], [ %69, %61 ]
  %73 = load ptr, ptr %55, align 4
  %74 = load i16, ptr %72, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.input_value, ptr %72, i32 0, i32 1
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.input_value, ptr %72, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  tail call void %73(ptr noundef nonnull %7, i32 noundef %75, i32 noundef %78, i32 noundef %80) #16
  %81 = getelementptr %struct.input_value, ptr %72, i32 1
  %82 = icmp eq ptr %81, %59
  br i1 %82, label %176, label %71

83:                                               ; preds = %5
  %84 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 41
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %176, label %87

87:                                               ; preds = %83
  %88 = ptrtoint ptr %1 to i32
  %89 = getelementptr inbounds %struct.input_value, ptr %1, i32 0, i32 1
  %90 = getelementptr inbounds %struct.input_value, ptr %1, i32 0, i32 2
  %91 = getelementptr %struct.input_value, ptr %1, i32 1
  br label %92

92:                                               ; preds = %172, %87
  %93 = phi ptr [ %85, %87 ], [ %174, %172 ]
  %94 = phi i32 [ %2, %87 ], [ %173, %172 ]
  %95 = getelementptr i8, ptr %93, i32 -20
  %96 = getelementptr i8, ptr %93, i32 -16
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %172, label %99

99:                                               ; preds = %92
  %100 = getelementptr i8, ptr %93, i32 -4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.input_handler, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %138, label %105

105:                                              ; preds = %99
  %106 = getelementptr %struct.input_value, ptr %1, i32 %94
  %107 = icmp eq ptr %106, %1
  br i1 %107, label %134, label %108

108:                                              ; preds = %130, %105
  %109 = phi ptr [ %131, %130 ], [ %103, %105 ]
  %110 = phi ptr [ %128, %130 ], [ %1, %105 ]
  %111 = phi ptr [ %127, %130 ], [ %1, %105 ]
  %112 = load i16, ptr %110, align 4
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.input_value, ptr %110, i32 0, i32 1
  %115 = load i16, ptr %114, align 2
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds %struct.input_value, ptr %110, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = tail call zeroext i1 %109(ptr noundef %95, i32 noundef %113, i32 noundef %116, i32 noundef %118) #16
  br i1 %119, label %126, label %120

120:                                              ; preds = %108
  %121 = icmp eq ptr %111, %110
  br i1 %121, label %124, label %122

122:                                              ; preds = %120
  %123 = load i64, ptr %110, align 4
  store i64 %123, ptr %111, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = getelementptr %struct.input_value, ptr %111, i32 1
  br label %126

126:                                              ; preds = %124, %108
  %127 = phi ptr [ %111, %108 ], [ %125, %124 ]
  %128 = getelementptr %struct.input_value, ptr %110, i32 1
  %129 = icmp eq ptr %128, %106
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %102, align 4
  br label %108

132:                                              ; preds = %126
  %133 = ptrtoint ptr %127 to i32
  br label %134

134:                                              ; preds = %132, %105
  %135 = phi i32 [ %133, %132 ], [ %88, %105 ]
  %136 = sub i32 %135, %88
  %137 = ashr exact i32 %136, 3
  br label %138

138:                                              ; preds = %134, %99
  %139 = phi i32 [ %137, %134 ], [ %94, %99 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %176, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.input_handler, ptr %101, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  tail call void %143(ptr noundef %95, ptr noundef %1, i32 noundef %139) #16
  br label %172

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.input_handler, ptr %101, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %172, label %150

150:                                              ; preds = %146
  %151 = getelementptr %struct.input_value, ptr %1, i32 %139
  %152 = icmp eq ptr %151, %1
  br i1 %152, label %172, label %153

153:                                              ; preds = %150
  %154 = load i16, ptr %1, align 4
  %155 = zext i16 %154 to i32
  %156 = load i16, ptr %89, align 2
  %157 = zext i16 %156 to i32
  %158 = load i32, ptr %90, align 4
  tail call void %148(ptr noundef %95, i32 noundef %155, i32 noundef %157, i32 noundef %158) #16
  %159 = icmp eq ptr %91, %151
  br i1 %159, label %172, label %160

160:                                              ; preds = %160, %153
  %161 = phi ptr [ %170, %160 ], [ %91, %153 ]
  %162 = load ptr, ptr %147, align 4
  %163 = load i16, ptr %161, align 4
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.input_value, ptr %161, i32 0, i32 1
  %166 = load i16, ptr %165, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds %struct.input_value, ptr %161, i32 0, i32 2
  %169 = load i32, ptr %168, align 4
  tail call void %162(ptr noundef %95, i32 noundef %164, i32 noundef %167, i32 noundef %169) #16
  %170 = getelementptr %struct.input_value, ptr %161, i32 1
  %171 = icmp eq ptr %170, %151
  br i1 %171, label %172, label %160

172:                                              ; preds = %160, %153, %150, %146, %145, %92
  %173 = phi i32 [ %94, %92 ], [ %139, %145 ], [ %139, %146 ], [ %139, %150 ], [ %139, %153 ], [ %139, %160 ]
  %174 = load volatile ptr, ptr %93, align 4
  %175 = icmp eq ptr %174, %84
  br i1 %175, label %176, label %92

176:                                              ; preds = %172, %138, %83, %71, %61, %58, %54, %53, %42, %15
  %177 = phi i32 [ 0, %42 ], [ %49, %53 ], [ %49, %54 ], [ %49, %58 ], [ %2, %83 ], [ %49, %61 ], [ 0, %15 ], [ 0, %138 ], [ %173, %172 ], [ %49, %71 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !10
  %178 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %179, 1048576
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %228, label %182

182:                                              ; preds = %176
  %183 = load volatile i32, ptr %178, align 4
  %184 = and i32 %183, 2
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %228, label %186

186:                                              ; preds = %182
  %187 = getelementptr %struct.input_value, ptr %1, i32 %177
  %188 = icmp eq ptr %187, %1
  br i1 %188, label %228, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 23
  %191 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 24, i32 1
  %192 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 24
  %193 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 23, i32 2
  %194 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 22
  br label %195

195:                                              ; preds = %225, %189
  %196 = phi ptr [ %1, %189 ], [ %226, %225 ]
  %197 = load i16, ptr %196, align 4
  %198 = icmp eq i16 %197, 1
  br i1 %198, label %199, label %225

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.input_value, ptr %196, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  switch i32 %201, label %202 [
    i32 2, label %225
    i32 0, label %223
  ]

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.input_value, ptr %196, i32 0, i32 1
  %204 = load i16, ptr %203, align 2
  %205 = zext i16 %204 to i32
  %206 = load volatile i32, ptr %178, align 4
  %207 = and i32 %206, 1048576
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %225, label %209

209:                                              ; preds = %202
  %210 = load i32, ptr %191, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %225, label %212

212:                                              ; preds = %209
  %213 = load i32, ptr %192, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %193, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %225, label %218

218:                                              ; preds = %215
  store i32 %205, ptr %194, align 8
  %219 = load volatile i32, ptr @jiffies, align 64
  %220 = tail call i32 @__msecs_to_jiffies(i32 noundef %213) #16
  %221 = add i32 %220, %219
  %222 = tail call i32 @mod_timer(ptr noundef %190, i32 noundef %221) #16
  br label %225

223:                                              ; preds = %199
  %224 = tail call i32 @del_timer(ptr noundef %190) #16
  br label %225

225:                                              ; preds = %223, %218, %215, %212, %209, %202, %199, %195
  %226 = getelementptr %struct.input_value, ptr %196, i32 1
  %227 = icmp eq ptr %226, %187
  br i1 %227, label %228, label %195

228:                                              ; preds = %225, %186, %182, %176, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @input_match_device_id(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %8, %10
  br i1 %11, label %12, label %117

12:                                               ; preds = %6, %2
  %13 = and i32 %3, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 2
  %17 = load i16, ptr %16, align 2
  %18 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 3, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %17, %19
  br i1 %20, label %21, label %117

21:                                               ; preds = %15, %12
  %22 = and i32 %3, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 3
  %26 = load i16, ptr %25, align 4
  %27 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 3, i32 2
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %26, %28
  br i1 %29, label %30, label %117

30:                                               ; preds = %24, %21
  %31 = and i32 %3, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 2
  %36 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 3, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = icmp eq i16 %35, %37
  br i1 %38, label %39, label %117

39:                                               ; preds = %33, %30
  %40 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 5
  %41 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %40, align 4
  %43 = load i32, ptr %41, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, 2147483647
  %46 = and i32 %45, %44
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 6
  %50 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  %51 = tail call i32 @__bitmap_subset(ptr noundef %49, ptr noundef %50, i32 noundef 767) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %117, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 7
  %55 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %54, align 4
  %57 = load i32, ptr %55, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, 32767
  %60 = and i32 %59, %58
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %117

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 8
  %64 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %65 = tail call i32 @__bitmap_subset(ptr noundef %63, ptr noundef %64, i32 noundef 63) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %117, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 9
  %69 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 9
  %70 = load i32, ptr %68, align 4
  %71 = load i32, ptr %69, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, 127
  %74 = and i32 %73, %72
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 10
  %78 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 10
  %79 = load i32, ptr %77, align 4
  %80 = load i32, ptr %78, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, 32767
  %83 = and i32 %82, %81
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 11
  %87 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 11
  %88 = load i32, ptr %86, align 4
  %89 = load i32, ptr %87, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, 127
  %92 = and i32 %91, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 12
  %96 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 12
  %97 = tail call i32 @__bitmap_subset(ptr noundef %95, ptr noundef %96, i32 noundef 127) #16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 13
  %101 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 13
  %102 = load i32, ptr %100, align 4
  %103 = load i32, ptr %101, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, 65535
  %106 = and i32 %105, %104
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.input_device_id, ptr %1, i32 0, i32 14
  %110 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 4
  %111 = load i32, ptr %109, align 4
  %112 = load i32, ptr %110, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, 2147483647
  %115 = and i32 %114, %113
  %116 = icmp eq i32 %115, 0
  br label %117

117:                                              ; preds = %108, %99, %94, %85, %76, %67, %62, %53, %48, %39, %33, %24, %15, %6
  %118 = phi i1 [ false, %6 ], [ false, %15 ], [ false, %24 ], [ false, %33 ], [ false, %99 ], [ false, %94 ], [ false, %85 ], [ false, %76 ], [ false, %67 ], [ false, %62 ], [ false, %53 ], [ false, %48 ], [ false, %39 ], [ %116, %108 ]
  ret i1 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_reset_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  tail call fastcc void @input_dev_toggle(ptr noundef %0, i1 noundef zeroext true)
  tail call fastcc void @input_dev_release_keys(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @input_dev_toggle(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 10
  %13 = tail call i32 @_find_next_bit_le(ptr noundef %12, i32 noundef 16, i32 noundef 0) #16
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 28
  br label %17

17:                                               ; preds = %32, %15
  %18 = phi i32 [ %13, %15 ], [ %34, %32 ]
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr %16, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = or i1 %25, %1
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load ptr, ptr %3, align 8
  %29 = select i1 %1, i1 %25, i1 false
  %30 = zext i1 %29 to i32
  %31 = tail call i32 %28(ptr noundef %0, i32 noundef 17, i32 noundef %18, i32 noundef %30) #16
  br label %32

32:                                               ; preds = %27, %17
  %33 = add nsw i32 %18, 1
  %34 = tail call i32 @_find_next_bit_le(ptr noundef %12, i32 noundef 16, i32 noundef %33) #16
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %17, label %36

36:                                               ; preds = %32, %11, %6
  %37 = load volatile i32, ptr %7, align 4
  %38 = and i32 %37, 262144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 11
  %42 = tail call i32 @_find_next_bit_le(ptr noundef %41, i32 noundef 8, i32 noundef 0) #16
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 29
  br label %46

46:                                               ; preds = %61, %44
  %47 = phi i32 [ %42, %44 ], [ %63, %61 ]
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr %45, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  %55 = or i1 %54, %1
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load ptr, ptr %3, align 8
  %58 = select i1 %1, i1 %54, i1 false
  %59 = zext i1 %58 to i32
  %60 = tail call i32 %57(ptr noundef %0, i32 noundef 18, i32 noundef %47, i32 noundef %59) #16
  br label %61

61:                                               ; preds = %56, %46
  %62 = add nsw i32 %47, 1
  %63 = tail call i32 @_find_next_bit_le(ptr noundef %41, i32 noundef 8, i32 noundef %62) #16
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %46, label %65

65:                                               ; preds = %61, %40, %36
  br i1 %1, label %66, label %79

66:                                               ; preds = %65
  %67 = load volatile i32, ptr %7, align 4
  %68 = and i32 %67, 1048576
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 24
  %73 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 24, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = tail call i32 %71(ptr noundef %0, i32 noundef 20, i32 noundef 1, i32 noundef %74) #16
  %76 = load ptr, ptr %3, align 8
  %77 = load i32, ptr %72, align 8
  %78 = tail call i32 %76(ptr noundef %0, i32 noundef 20, i32 noundef 0, i32 noundef %77) #16
  br label %79

79:                                               ; preds = %70, %66, %65, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @input_dev_release_keys(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1 x %struct.input_value], align 8
  %3 = alloca [1 x %struct.input_value], align 8
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 27
  %10 = tail call i32 @_find_next_bit_le(ptr noundef %9, i32 noundef 768, i32 noundef 0) #16
  %11 = icmp slt i32 %10, 768
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.input_value, ptr %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.input_value, ptr %3, i32 0, i32 2
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %10, %12 ], [ %19, %15 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i16 1, ptr %3, align 8
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %13, align 2
  store i32 0, ptr %14, align 4
  call fastcc void @input_pass_values(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %18 = add nsw i32 %16, 1
  %19 = call i32 @_find_next_bit_le(ptr noundef %9, i32 noundef 768, i32 noundef %18) #16
  %20 = icmp slt i32 %19, 768
  br i1 %20, label %15, label %21

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i16 0, ptr %2, align 8
  %22 = getelementptr inbounds %struct.input_value, ptr %2, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.input_value, ptr %2, i32 0, i32 2
  store i32 1, ptr %23, align 4
  call fastcc void @input_pass_values(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %24

24:                                               ; preds = %21, %8
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(96) %9, i8 0, i32 96, i1 false)
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @input_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef %9) #16
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @input_allocate_device() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 936) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 40
  %6 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 40, i32 4
  store ptr @input_dev_type, ptr %6, align 8
  %7 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 40, i32 31
  store ptr @input_class, ptr %7, align 4
  tail call void @device_initialize(ptr noundef %5) #16
  %8 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 37
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @input_allocate_device.__key) #16
  %9 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 36
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 23
  tail call void @init_timer_key(ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %11 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 41
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 41, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 42
  store volatile ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 42, i32 1
  store ptr %13, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @input_allocate_device.input_no) #16, !srcloc !14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @input_allocate_device.input_no, ptr nonnull @input_allocate_device.input_no, i32 1, ptr nonnull elementtype(i32) @input_allocate_device.input_no) #16, !srcloc !15
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %17 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %16) #16
  tail call void @__module_get(ptr noundef null) #16
  br label %18

18:                                               ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_input_allocate_device(ptr noundef %0) #0 {
  %2 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_input_device_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.5) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @input_allocate_device()
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @devres_free(ptr noundef nonnull %2) #16
  br label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 46
  store i8 1, ptr %10, align 4
  store ptr %5, ptr %2, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %2) #16
  br label %11

11:                                               ; preds = %8, %7, %1
  %12 = phi ptr [ %5, %8 ], [ null, %7 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_input_device_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40
  tail call void @put_device(ptr noundef %6) #16
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_free_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 46
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @devres_destroy(ptr noundef %9, ptr noundef nonnull @devm_input_device_release, ptr noundef nonnull @devm_input_device_match, ptr noundef nonnull %0) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !17

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2020, i32 noundef 9, ptr noundef null) #16
  br label %13

13:                                               ; preds = %12, %7, %3
  %14 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void @put_device(ptr noundef %14) #16
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_input_device_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #6 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_set_timestamp(ptr nocapture noundef writeonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 47
  %4 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 47, i32 1
  store i64 %1, ptr %4, align 8
  %5 = tail call i64 @ktime_mono_to_any(i64 noundef %1, i32 noundef 0) #16
  store i64 %5, ptr %3, align 8
  %6 = tail call i64 @ktime_mono_to_any(i64 noundef %1, i32 noundef 1) #16
  %7 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 47, i32 2
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @input_get_timestamp(ptr noundef %0) #0 {
  %2 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 47, i32 1
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call i64 @ktime_get() #16
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 47
  store i64 %6, ptr %2, align 8
  %8 = tail call i64 @ktime_mono_to_any(i64 noundef %6, i32 noundef 0) #16
  store i64 %8, ptr %7, align 8
  %9 = tail call i64 @ktime_mono_to_any(i64 noundef %6, i32 noundef 1) #16
  %10 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 47, i32 2
  store i64 %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 47
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_set_capability(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %36 [
    i32 1, label %4
    i32 2, label %6
    i32 3, label %8
    i32 4, label %26
    i32 5, label %28
    i32 17, label %30
    i32 18, label %32
    i32 21, label %34
    i32 22, label %46
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  br label %38

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 7
  br label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1536) #17
  store ptr %14, ptr %9, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %18 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %17, ptr %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.input_alloc_absinfo) #18
  %22 = load ptr, ptr %9, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %16, %12, %8
  %25 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  br label %38

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 9
  br label %38

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 13
  br label %38

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 10
  br label %38

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 11
  br label %38

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 12
  br label %38

36:                                               ; preds = %3
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.input_set_capability, i32 noundef %1, i32 noundef %2) #18
  tail call void @dump_stack() #18
  br label %53

38:                                               ; preds = %34, %32, %30, %28, %26, %24, %6, %4
  %39 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %25, %24 ], [ %27, %26 ], [ %29, %28 ], [ %31, %30 ], [ %33, %32 ], [ %35, %34 ]
  %40 = and i32 %2, 31
  %41 = shl nuw i32 1, %40
  %42 = lshr i32 %2, 5
  %43 = getelementptr i32, ptr %39, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %38, %3
  %47 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %48 = shl nuw nsw i32 1, %1
  %49 = lshr i32 %1, 5
  %50 = getelementptr i32, ptr %47, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %46, %36, %16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @input_enable_softrepeat(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 23, i32 2
  store ptr @input_repeat_key, ptr %4, align 4
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 24
  store i32 %1, ptr %5, align 8
  %6 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 24, i32 1
  store i32 %2, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @input_repeat_key(ptr noundef %0) #0 {
  %2 = alloca [2 x %struct.input_value], align 4
  %3 = getelementptr i8, ptr %0, i32 -204
  %4 = getelementptr i8, ptr %0, i32 164
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 36
  %9 = lshr i32 %7, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %7, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  %16 = icmp ugt i32 %7, 767
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %44, label %18

18:                                               ; preds = %1
  %19 = getelementptr i8, ptr %0, i32 -176
  %20 = getelementptr i32, ptr %19, i32 %9
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, %13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  store i16 1, ptr %2, align 4
  %25 = getelementptr inbounds %struct.input_value, ptr %2, i32 0, i32 1
  %26 = trunc i32 %7 to i16
  store i16 %26, ptr %25, align 2
  %27 = getelementptr inbounds %struct.input_value, ptr %2, i32 0, i32 2
  store i32 2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.input_value, ptr %2, i32 1
  store i64 4294967296, ptr %28, align 4
  %29 = tail call i64 @ktime_get() #16
  %30 = getelementptr i8, ptr %0, i32 700
  %31 = getelementptr i8, ptr %0, i32 708
  store i64 %29, ptr %31, align 8
  %32 = tail call i64 @ktime_mono_to_any(i64 noundef %29, i32 noundef 0) #16
  store i64 %32, ptr %30, align 8
  %33 = tail call i64 @ktime_mono_to_any(i64 noundef %29, i32 noundef 1) #16
  %34 = getelementptr i8, ptr %0, i32 716
  store i64 %33, ptr %34, align 8
  call fastcc void @input_pass_values(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 2)
  %35 = getelementptr i8, ptr %0, i32 24
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %24
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = call i32 @__msecs_to_jiffies(i32 noundef %36) #16
  %41 = add i32 %40, %39
  %42 = call i32 @mod_timer(ptr noundef %0, i32 noundef %41) #16
  br label %43

43:                                               ; preds = %38, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  br label %44

44:                                               ; preds = %43, %18, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @input_device_enabled(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 48
  %3 = load i8, ptr %2, align 8, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 38
  %7 = load i32, ptr %6, align 8
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_register_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8) #18
  br label %260

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 46
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_input_device_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.9) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %260, label %19

19:                                               ; preds = %16
  store ptr %0, ptr %17, align 4
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ %3, %12 ]
  %23 = phi ptr [ %17, %19 ], [ null, %12 ]
  %24 = or i32 %22, 1
  store i32 %24, ptr %2, align 4
  %25 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -2
  store i32 %27, ptr %25, align 4
  %28 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 4
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 6, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -393217
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %21
  %37 = load volatile i32, ptr %2, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(96) %25, i8 0, i32 96, i1 false) #16
  br label %41

41:                                               ; preds = %40, %36
  %42 = load volatile i32, ptr %2, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 7
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load volatile i32, ptr %2, align 4
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  store i64 0, ptr %52, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load volatile i32, ptr %2, align 4
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 9
  store i32 0, ptr %58, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = load volatile i32, ptr %2, align 4
  %61 = and i32 %60, 131072
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 10
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %59
  %66 = load volatile i32, ptr %2, align 4
  %67 = and i32 %66, 262144
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 11
  store i32 0, ptr %70, align 8
  br label %71

71:                                               ; preds = %69, %65
  %72 = load volatile i32, ptr %2, align 4
  %73 = and i32 %72, 2097152
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %76, i8 0, i32 16, i1 false) #16
  br label %77

77:                                               ; preds = %75, %71
  %78 = load volatile i32, ptr %2, align 4
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 13
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 25
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.input_mt, ptr %85, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  br label %110

90:                                               ; preds = %83
  %91 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 8, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 33554432
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr %struct.input_absinfo, ptr %97, i32 57, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.input_absinfo, ptr %97, i32 57, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %99, 1
  %103 = sub i32 %102, %101
  %104 = tail call i32 @llvm.smax.i32(i32 %103, i32 2) #16
  %105 = tail call i32 @llvm.umin.i32(i32 %104, i32 32) #16
  br label %110

106:                                              ; preds = %90
  %107 = load volatile i32, ptr %91, align 4
  %108 = lshr i32 %107, 20
  %109 = and i32 %108, 2
  br label %110

110:                                              ; preds = %106, %95, %87
  %111 = phi i32 [ %89, %87 ], [ %105, %95 ], [ %109, %106 ]
  %112 = add i32 %111, 1
  %113 = load volatile i32, ptr %2, align 4
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %118 = tail call i32 @_find_next_bit_le(ptr noundef %117, i32 noundef 64, i32 noundef 0) #16
  %119 = icmp slt i32 %118, 64
  br i1 %119, label %120, label %130

120:                                              ; preds = %120, %116
  %121 = phi i32 [ %128, %120 ], [ %118, %116 ]
  %122 = phi i32 [ %126, %120 ], [ %112, %116 ]
  %123 = add i32 %121, -47
  %124 = icmp ult i32 %123, 15
  %125 = select i1 %124, i32 %111, i32 1
  %126 = add i32 %125, %122
  %127 = add nsw i32 %121, 1
  %128 = tail call i32 @_find_next_bit_le(ptr noundef %117, i32 noundef 64, i32 noundef %127) #16
  %129 = icmp slt i32 %128, 64
  br i1 %129, label %120, label %130

130:                                              ; preds = %120, %116, %110
  %131 = phi i32 [ %112, %110 ], [ %112, %116 ], [ %126, %120 ]
  %132 = load volatile i32, ptr %2, align 4
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 7
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 65535
  %139 = tail call i32 @__sw_hweight32(i32 noundef %138) #16
  %140 = add i32 %139, %131
  br label %141

141:                                              ; preds = %135, %130
  %142 = phi i32 [ %140, %135 ], [ %131, %130 ]
  %143 = add i32 %142, 7
  %144 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 14
  %145 = load i32, ptr %144, align 8
  %146 = icmp ult i32 %145, %143
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 %143, ptr %144, align 8
  br label %148

148:                                              ; preds = %147, %141
  %149 = phi i32 [ %143, %147 ], [ %145, %141 ]
  %150 = add i32 %149, 2
  %151 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 44
  store i32 %150, ptr %151, align 4
  %152 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %150, i32 8) #16
  %153 = extractvalue { i32, i1 } %152, 1
  br i1 %153, label %154, label %156, !prof !18

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 45
  br label %255

156:                                              ; preds = %148
  %157 = extractvalue { i32, i1 } %152, 0
  %158 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %157, i32 noundef 3520) #19
  %159 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 45
  store ptr %158, ptr %159, align 8
  %160 = icmp eq ptr %158, null
  br i1 %160, label %258, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 24
  %163 = load i32, ptr %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr %struct.input_dev, ptr %0, i32 0, i32 24, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 23, i32 2
  store ptr @input_repeat_key, ptr %170, align 4
  store i32 250, ptr %162, align 8
  store i32 33, ptr %166, align 4
  br label %171

171:                                              ; preds = %169, %165, %161
  %172 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 19
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store ptr @input_default_getkeycode, ptr %172, align 4
  br label %176

176:                                              ; preds = %175, %171
  %177 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 18
  %178 = load ptr, ptr %177, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  store ptr @input_default_setkeycode, ptr %177, align 8
  br label %181

181:                                              ; preds = %180, %176
  %182 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %181
  tail call void @input_dev_poller_finalize(ptr noundef nonnull %183) #16
  br label %186

186:                                              ; preds = %185, %181
  %187 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  %188 = tail call i32 @device_add(ptr noundef %187) #16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %252

190:                                              ; preds = %186
  %191 = tail call ptr @kobject_get_path(ptr noundef %187, i32 noundef 3264) #16
  %192 = load ptr, ptr %0, align 8
  %193 = icmp eq ptr %192, null
  %194 = select i1 %193, ptr @.str.11, ptr %192
  %195 = icmp eq ptr %191, null
  %196 = select i1 %195, ptr @.str.12, ptr %191
  %197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %194, ptr noundef %196) #18
  tail call void @kfree(ptr noundef %191) #16
  %198 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @input_mutex) #16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %251

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 42
  %202 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @input_dev_list, i32 0, i32 1), align 4
  store ptr %201, ptr getelementptr inbounds (%struct.list_head, ptr @input_dev_list, i32 0, i32 1), align 4
  store ptr @input_dev_list, ptr %201, align 4
  %203 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 42, i32 1
  store ptr %202, ptr %203, align 4
  store volatile ptr %201, ptr %202, align 4
  %204 = load ptr, ptr @input_handler_list, align 4
  %205 = icmp eq ptr %204, @input_handler_list
  br i1 %205, label %243, label %206

206:                                              ; preds = %240, %200
  %207 = phi ptr [ %241, %240 ], [ %204, %200 ]
  %208 = getelementptr i8, ptr %207, i32 -56
  %209 = getelementptr i8, ptr %207, i32 -12
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr i8, ptr %207, i32 -40
  br label %212

212:                                              ; preds = %227, %206
  %213 = phi ptr [ %210, %206 ], [ %228, %227 ]
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.input_device_id, ptr %213, i32 0, i32 15
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %240, label %220

220:                                              ; preds = %216, %212
  %221 = tail call zeroext i1 @input_match_device_id(ptr noundef %0, ptr noundef %213) #16
  br i1 %221, label %222, label %227

222:                                              ; preds = %220
  %223 = load ptr, ptr %211, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = tail call zeroext i1 %223(ptr noundef %208, ptr noundef %0) #16
  br i1 %226, label %229, label %227

227:                                              ; preds = %225, %220
  %228 = getelementptr %struct.input_device_id, ptr %213, i32 1
  br label %212

229:                                              ; preds = %225, %222
  %230 = icmp eq ptr %213, null
  br i1 %230, label %240, label %231

231:                                              ; preds = %229
  %232 = getelementptr i8, ptr %207, i32 -36
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i32 %233(ptr noundef %208, ptr noundef %0, ptr noundef nonnull %213) #16
  switch i32 %234, label %235 [
    i32 -19, label %240
    i32 0, label %240
  ]

235:                                              ; preds = %231
  %236 = getelementptr i8, ptr %207, i32 -16
  %237 = load ptr, ptr %236, align 4
  %238 = load ptr, ptr %187, align 4
  %239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %237, ptr noundef %238, i32 noundef %234) #18
  br label %240

240:                                              ; preds = %235, %231, %231, %229, %216
  %241 = load ptr, ptr %207, align 4
  %242 = icmp eq ptr %241, @input_handler_list
  br i1 %242, label %243, label %206

243:                                              ; preds = %240, %200
  %244 = load i32, ptr @input_devices_state, align 4
  %245 = add i32 %244, 1
  store i32 %245, ptr @input_devices_state, align 4
  tail call void @__wake_up(ptr noundef nonnull @input_devices_poll_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef nonnull @input_mutex) #16
  %246 = load i8, ptr %13, align 4, !range !8
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %260, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %250 = load ptr, ptr %249, align 4
  tail call void @devres_add(ptr noundef %250, ptr noundef %23) #16
  br label %260

251:                                              ; preds = %190
  tail call void @device_del(ptr noundef %187) #16
  br label %252

252:                                              ; preds = %251, %186
  %253 = phi i32 [ %188, %186 ], [ %198, %251 ]
  %254 = load ptr, ptr %159, align 8
  tail call void @kfree(ptr noundef %254) #16
  br label %255

255:                                              ; preds = %252, %154
  %256 = phi ptr [ %155, %154 ], [ %159, %252 ]
  %257 = phi i32 [ -12, %154 ], [ %253, %252 ]
  store ptr null, ptr %256, align 8
  br label %258

258:                                              ; preds = %255, %156
  %259 = phi i32 [ -12, %156 ], [ %257, %255 ]
  tail call void @devres_free(ptr noundef %23) #16
  br label %260

260:                                              ; preds = %258, %248, %243, %16, %10
  %261 = phi i32 [ %259, %258 ], [ -22, %10 ], [ -12, %16 ], [ 0, %248 ], [ 0, %243 ]
  ret i32 %261
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_input_device_unregister(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @__input_unregister_device(ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @input_default_getkeycode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %58, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  br label %28

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  switch i8 %16, label %58 [
    i8 1, label %17
    i8 2, label %21
    i8 4, label %25
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  br label %28

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  br label %28

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21, %17, %10
  %29 = phi i32 [ %13, %10 ], [ %27, %25 ], [ %24, %21 ], [ %20, %17 ]
  %30 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 15
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  switch i32 %4, label %46 [
    i32 1, label %34
    i32 2, label %40
  ]

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %29
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  br label %51

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i16, ptr %42, i32 %29
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  br label %51

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i32, ptr %48, i32 %29
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %46, %40, %34
  %52 = phi i32 [ %50, %46 ], [ %45, %40 ], [ %39, %34 ]
  %53 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = trunc i32 %29 to i16
  %55 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 2
  store i16 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 1
  store i8 4, ptr %56, align 1
  %57 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  store i32 %29, ptr %57, align 4
  br label %58

58:                                               ; preds = %51, %28, %14, %2
  %59 = phi i32 [ 0, %51 ], [ -22, %2 ], [ -22, %28 ], [ -22, %14 ]
  ret i32 %59
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_default_setkeycode(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %125, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  br label %29

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  switch i8 %17, label %125 [
    i8 1, label %18
    i8 2, label %22
    i8 4, label %26
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  br label %29

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  br label %29

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22, %18, %11
  %30 = phi i32 [ %14, %11 ], [ %28, %26 ], [ %25, %22 ], [ %21, %18 ]
  %31 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %125

34:                                               ; preds = %29
  %35 = icmp ult i32 %5, 4
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = shl nuw nsw i32 %5, 3
  %40 = lshr i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %36, %34
  switch i32 %5, label %61 [
    i32 1, label %43
    i32 2, label %52
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %30
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, ptr %2, align 4
  %49 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %46, align 1
  br label %68

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i16, ptr %54, i32 %30
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  store i32 %57, ptr %2, align 4
  %58 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i16
  store i16 %60, ptr %55, align 2
  br label %68

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i32, ptr %63, i32 %30
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %2, align 4
  %66 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %64, align 4
  br label %68

68:                                               ; preds = %61, %52, %43
  %69 = load i32, ptr %2, align 4
  %70 = icmp ult i32 %69, 768
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = lshr i32 %69, 5
  %76 = getelementptr i32, ptr %72, i32 %75
  %77 = xor i32 %74, -1
  %78 = load i32, ptr %76, align 4
  %79 = and i32 %78, %77
  store i32 %79, ptr %76, align 4
  %80 = load i32, ptr %31, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %115, label %82

82:                                               ; preds = %71
  %83 = load i32, ptr %4, align 8
  %84 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 17
  %85 = load i32, ptr %2, align 4
  br label %89

86:                                               ; preds = %105
  %87 = add nuw i32 %90, 1
  %88 = icmp eq i32 %87, %80
  br i1 %88, label %115, label %89

89:                                               ; preds = %86, %82
  %90 = phi i32 [ 0, %82 ], [ %87, %86 ]
  switch i32 %83, label %101 [
    i32 1, label %91
    i32 2, label %96
  ]

91:                                               ; preds = %89
  %92 = load ptr, ptr %84, align 4
  %93 = getelementptr i8, ptr %92, i32 %90
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  br label %105

96:                                               ; preds = %89
  %97 = load ptr, ptr %84, align 4
  %98 = getelementptr i16, ptr %97, i32 %90
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  br label %105

101:                                              ; preds = %89
  %102 = load ptr, ptr %84, align 4
  %103 = getelementptr i32, ptr %102, i32 %90
  %104 = load i32, ptr %103, align 4
  br label %105

105:                                              ; preds = %101, %96, %91
  %106 = phi i32 [ %104, %101 ], [ %100, %96 ], [ %95, %91 ]
  %107 = icmp eq i32 %106, %85
  br i1 %107, label %108, label %86

108:                                              ; preds = %105
  %109 = and i32 %85, 31
  %110 = shl nuw i32 1, %109
  %111 = lshr i32 %85, 5
  %112 = getelementptr i32, ptr %72, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %108, %86, %71, %68
  %116 = getelementptr inbounds %struct.input_keymap_entry, ptr %1, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 6
  %119 = and i32 %117, 31
  %120 = shl nuw i32 1, %119
  %121 = lshr i32 %117, 5
  %122 = getelementptr i32, ptr %118, i32 %121
  %123 = load i32, ptr %122, align 4
  %124 = or i32 %120, %123
  store i32 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %115, %36, %29, %15, %3
  %126 = phi i32 [ 0, %115 ], [ -22, %3 ], [ -22, %29 ], [ -22, %36 ], [ -22, %15 ]
  ret i32 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_dev_poller_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_unregister_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 46
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @devres_destroy(ptr noundef %7, ptr noundef nonnull @devm_input_device_unregister, ptr noundef nonnull @devm_input_device_match, ptr noundef %0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !17

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2378, i32 noundef 9, ptr noundef null) #16
  br label %11

11:                                               ; preds = %10, %5
  tail call fastcc void @__input_unregister_device(ptr noundef %0)
  br label %16

12:                                               ; preds = %1
  tail call fastcc void @__input_unregister_device(ptr noundef %0)
  %13 = icmp eq ptr %0, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void @put_device(ptr noundef %15) #16
  br label %16

16:                                               ; preds = %14, %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__input_unregister_device(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 39
  store i8 1, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 36
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #16
  tail call fastcc void @input_dev_release_keys(ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 41
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %11, %8 ], [ %6, %1 ]
  %10 = getelementptr i8, ptr %9, i32 -16
  store i32 0, ptr %10, align 4
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %14 = load i16, ptr %4, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  tail call void @mutex_lock(ptr noundef nonnull @input_mutex) #16
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %13
  %19 = phi ptr [ %21, %18 ], [ %16, %13 ]
  %20 = getelementptr i8, ptr %19, i32 -20
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr i8, ptr %19, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.input_handler, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %20) #16
  %26 = icmp eq ptr %21, %5
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %13
  %28 = load volatile ptr, ptr %5, align 4
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %31, label %30, !prof !17

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2190, i32 noundef 9, ptr noundef null) #16
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 23
  %33 = tail call i32 @del_timer_sync(ptr noundef %32) #16
  %34 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 42
  %35 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 42, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %35, align 4
  %39 = load i32, ptr @input_devices_state, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr @input_devices_state, align 4
  tail call void @__wake_up(ptr noundef nonnull @input_devices_poll_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef nonnull @input_mutex) #16
  %41 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  tail call void @device_del(ptr noundef %41) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_register_handler(ptr noundef %0) #0 {
  %2 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @input_mutex) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %54

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 12
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 12, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @input_handler_list, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @input_handler_list, i32 0, i32 1), align 4
  store ptr @input_handler_list, ptr %7, align 4
  %9 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 13, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %7, ptr %8, align 4
  %10 = load ptr, ptr @input_dev_list, align 4
  %11 = icmp eq ptr %10, @input_dev_list
  br i1 %11, label %51, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 11
  %14 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 5
  %16 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 10
  br label %17

17:                                               ; preds = %48, %12
  %18 = phi ptr [ %10, %12 ], [ %49, %48 ]
  %19 = getelementptr i8, ptr %18, i32 -880
  %20 = load ptr, ptr %13, align 4
  br label %21

21:                                               ; preds = %36, %17
  %22 = phi ptr [ %20, %17 ], [ %37, %36 ]
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.input_device_id, ptr %22, i32 0, i32 15
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %25, %21
  %30 = tail call zeroext i1 @input_match_device_id(ptr noundef %19, ptr noundef %22) #16
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load ptr, ptr %14, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call zeroext i1 %32(ptr noundef %0, ptr noundef %19) #16
  br i1 %35, label %38, label %36

36:                                               ; preds = %34, %29
  %37 = getelementptr %struct.input_device_id, ptr %22, i32 1
  br label %21

38:                                               ; preds = %34, %31
  %39 = icmp eq ptr %22, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %15, align 4
  %42 = tail call i32 %41(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %22) #16
  switch i32 %42, label %43 [
    i32 -19, label %48
    i32 0, label %48
  ]

43:                                               ; preds = %40
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr i8, ptr %18, i32 -480
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %44, ptr noundef %46, i32 noundef %42) #18
  br label %48

48:                                               ; preds = %43, %40, %40, %38, %25
  %49 = load ptr, ptr %18, align 4
  %50 = icmp eq ptr %49, @input_dev_list
  br i1 %50, label %51, label %17

51:                                               ; preds = %48, %4
  %52 = load i32, ptr @input_devices_state, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr @input_devices_state, align 4
  tail call void @__wake_up(ptr noundef nonnull @input_devices_poll_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef nonnull @input_mutex) #16
  br label %54

54:                                               ; preds = %51, %1
  %55 = phi i32 [ 0, %51 ], [ %2, %1 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_unregister_handler(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @input_mutex) #16
  %2 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %10, %7 ]
  %9 = getelementptr i8, ptr %8, i32 -28
  %10 = load ptr, ptr %8, align 4
  %11 = load ptr, ptr %6, align 4
  tail call void %11(ptr noundef %9) #16
  %12 = icmp eq ptr %10, %2
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  %14 = load volatile ptr, ptr %2, align 4
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %17, label %16, !prof !17

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2437, i32 noundef 9, ptr noundef null) #16
  br label %17

17:                                               ; preds = %16, %13
  %18 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 13
  %19 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 13, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %19, align 4
  %23 = load i32, ptr @input_devices_state, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr @input_devices_state, align 4
  tail call void @__wake_up(ptr noundef nonnull @input_devices_poll_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef nonnull @input_mutex) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_handler_for_each_handle(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %4 = getelementptr inbounds %struct.input_handler, ptr %0, i32 0, i32 12
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -28
  %11 = tail call i32 %2(ptr noundef %10, ptr noundef %1) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %11, %9 ], [ 0, %5 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !10
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_register_handle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.input_handler, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 5
  %14 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 41
  br i1 %12, label %19, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %14, align 4
  store ptr %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 5, i32 1
  store ptr %14, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  store volatile ptr %13, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  br label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 41, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %14, ptr %13, align 4
  %22 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 5, i32 1
  store ptr %21, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  store volatile ptr %13, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %20, %19 ], [ %18, %15 ]
  store ptr %13, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %6) #16
  %25 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.input_handler, ptr %3, i32 0, i32 12
  %27 = getelementptr inbounds %struct.input_handler, ptr %3, i32 0, i32 12, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %26, ptr %25, align 4
  %29 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 6, i32 1
  store ptr %28, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  store volatile ptr %25, ptr %28, align 4
  store ptr %25, ptr %27, align 4
  %30 = getelementptr inbounds %struct.input_handler, ptr %3, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  tail call void %31(ptr noundef %0) #16
  br label %34

34:                                               ; preds = %33, %23, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_unregister_handle(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 5
  %11 = getelementptr inbounds %struct.input_handle, ptr %0, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %9) #16
  tail call void @synchronize_rcu() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @input_get_new_minor(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp sgt i32 %0, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = add nsw i32 %0, -1
  %7 = add i32 %6, %1
  %8 = tail call i32 @ida_alloc_range(ptr noundef nonnull @input_ida, i32 noundef %0, i32 noundef %7, i32 noundef 3264) #16
  %9 = icmp slt i32 %8, 0
  %10 = and i1 %9, %2
  br i1 %10, label %11, label %13

11:                                               ; preds = %5, %3
  %12 = tail call i32 @ida_alloc_range(ptr noundef nonnull @input_ida, i32 noundef 256, i32 noundef 1023, i32 noundef 3264) #16
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %8, %5 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @input_free_minor(i32 noundef %0) #0 {
  tail call void @ida_free(ptr noundef nonnull @input_ida, i32 noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @input_exit() #10 section ".exit.text" {
  tail call fastcc void @input_proc_exit()
  tail call void @unregister_chrdev_region(i32 noundef 13631488, i32 noundef 1024) #16
  tail call void @class_unregister(ptr noundef nonnull @input_class) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @input_proc_exit() unnamed_addr #0 {
  %1 = load ptr, ptr @proc_bus_input_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.63, ptr noundef %1) #16
  %2 = load ptr, ptr @proc_bus_input_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.64, ptr noundef %2) #16
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.65, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @input_init() #10 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @input_class, ptr noundef nonnull @input_init.__key) #16
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #18
  br label %15

5:                                                ; preds = %0
  %6 = tail call fastcc i32 @input_proc_init() #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call i32 @register_chrdev_region(i32 noundef 13631488, i32 noundef 1024, ptr noundef nonnull @.str.2) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef 13) #18
  tail call fastcc void @input_proc_exit()
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %6, %5 ], [ %9, %11 ]
  tail call void @class_unregister(ptr noundef nonnull @input_class) #16
  br label %15

15:                                               ; preds = %13, %8, %3
  %16 = phi i32 [ %1, %3 ], [ %14, %13 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_input_randomness(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -400
  %4 = getelementptr i8, ptr %0, i32 -388
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 -386
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 -384
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 -382
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %112

18:                                               ; preds = %2
  %19 = load ptr, ptr %3, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef nonnull %19) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %112

24:                                               ; preds = %21, %18
  %25 = getelementptr i8, ptr %0, i32 -396
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull %26) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %112

31:                                               ; preds = %28, %24
  %32 = getelementptr i8, ptr %0, i32 -392
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %33) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %112

38:                                               ; preds = %35, %31
  %39 = getelementptr i8, ptr %0, i32 -380
  %40 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef %39, i32 noundef 31)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %112

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 -376
  %44 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef %43, i32 noundef 31)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %112

46:                                               ; preds = %42
  %47 = load volatile i32, ptr %43, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %0, i32 -372
  %52 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef %51, i32 noundef 767)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %112

54:                                               ; preds = %50, %46
  %55 = load volatile i32, ptr %43, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %0, i32 -276
  %60 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.53, ptr noundef %59, i32 noundef 15)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %58, %54
  %63 = load volatile i32, ptr %43, align 4
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %0, i32 -272
  %68 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef %67, i32 noundef 63)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %112

70:                                               ; preds = %66, %62
  %71 = load volatile i32, ptr %43, align 4
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %0, i32 -264
  %76 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %75, i32 noundef 7)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %74, %70
  %79 = load volatile i32, ptr %43, align 4
  %80 = and i32 %79, 131072
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %0, i32 -260
  %84 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef %83, i32 noundef 15)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %82, %78
  %87 = load volatile i32, ptr %43, align 4
  %88 = and i32 %87, 262144
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %0, i32 -256
  %92 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef %91, i32 noundef 7)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %90, %86
  %95 = load volatile i32, ptr %43, align 4
  %96 = and i32 %95, 2097152
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr i8, ptr %0, i32 -252
  %100 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef %99, i32 noundef 127)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98, %94
  %103 = load volatile i32, ptr %43, align 4
  %104 = and i32 %103, 32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr i8, ptr %0, i32 -236
  %108 = tail call fastcc i32 @input_add_uevent_bm_var(ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef %107, i32 noundef 16)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %102
  %111 = tail call fastcc i32 @input_add_uevent_modalias_var(ptr noundef %1, ptr noundef %3)
  br label %112

112:                                              ; preds = %110, %106, %98, %90, %82, %74, %66, %58, %50, %42, %38, %35, %28, %21, %2
  %113 = phi i32 [ %108, %106 ], [ %100, %98 ], [ %92, %90 ], [ %84, %82 ], [ %76, %74 ], [ %68, %66 ], [ %60, %58 ], [ %52, %50 ], [ %44, %42 ], [ %40, %38 ], [ %36, %35 ], [ %29, %28 ], [ %22, %21 ], [ %16, %2 ], [ %111, %110 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @input_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -400
  tail call void @input_ff_destroy(ptr noundef %2) #16
  tail call void @input_mt_destroy_slots(ptr noundef %2) #16
  %3 = getelementptr i8, ptr %0, i32 -204
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 -164
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #16
  %7 = getelementptr i8, ptr %0, i32 496
  %8 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %8) #16
  tail call void @kfree(ptr noundef %2) #16
  tail call void @module_put(ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -400
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.16, ptr %5
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef nonnull %7) #16
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_phys(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -396
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.16, ptr %5
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef nonnull %7) #16
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_uniq(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -392
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.16, ptr %5
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.15, ptr noundef nonnull %7) #16
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_modalias(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -400
  %5 = tail call fastcc i32 @input_print_modalias(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @input_print_modalias(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #14 {
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %6 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 3, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 3, i32 2
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 3, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %5, ptr noundef nonnull @.str.20, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17)
  %19 = getelementptr i8, ptr %0, i32 %18
  %20 = sub i32 %1, %18
  %21 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 5
  %22 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #16
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef %22, ptr noundef nonnull @.str.22, i32 noundef 101) #16
  br label %24

24:                                               ; preds = %39, %4
  %25 = phi i32 [ %40, %39 ], [ %23, %4 ]
  %26 = phi i32 [ %41, %39 ], [ 0, %4 ]
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr %21, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw i32 1, %26
  %31 = and i32 %30, %29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = getelementptr i8, ptr %19, i32 %25
  %35 = sub i32 %20, %25
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #16
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %34, i32 noundef %36, ptr noundef nonnull @.str.23, i32 noundef %26) #16
  %38 = add i32 %37, %25
  br label %39

39:                                               ; preds = %33, %24
  %40 = phi i32 [ %38, %33 ], [ %25, %24 ]
  %41 = add nuw nsw i32 %26, 1
  %42 = icmp eq i32 %41, 31
  br i1 %42, label %43, label %24

43:                                               ; preds = %39
  %44 = add i32 %40, %18
  %45 = getelementptr i8, ptr %0, i32 %44
  %46 = sub i32 %1, %44
  %47 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 6
  %48 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #16
  %49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %45, i32 noundef %48, ptr noundef nonnull @.str.22, i32 noundef 107) #16
  br label %50

50:                                               ; preds = %66, %43
  %51 = phi i32 [ %67, %66 ], [ %49, %43 ]
  %52 = phi i32 [ %68, %66 ], [ 113, %43 ]
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr %47, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %45, i32 %51
  %62 = sub i32 %46, %51
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 0) #16
  %64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %61, i32 noundef %63, ptr noundef nonnull @.str.23, i32 noundef %52) #16
  %65 = add i32 %64, %51
  br label %66

66:                                               ; preds = %60, %50
  %67 = phi i32 [ %65, %60 ], [ %51, %50 ]
  %68 = add nuw nsw i32 %52, 1
  %69 = icmp eq i32 %68, 767
  br i1 %69, label %70, label %50

70:                                               ; preds = %66
  %71 = add i32 %67, %44
  %72 = getelementptr i8, ptr %0, i32 %71
  %73 = sub i32 %1, %71
  %74 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 7
  %75 = tail call i32 @llvm.smax.i32(i32 %73, i32 0) #16
  %76 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef %75, ptr noundef nonnull @.str.22, i32 noundef 114) #16
  br label %77

77:                                               ; preds = %92, %70
  %78 = phi i32 [ %93, %92 ], [ %76, %70 ]
  %79 = phi i32 [ %94, %92 ], [ 0, %70 ]
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr %74, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = shl nuw i32 1, %79
  %84 = and i32 %83, %82
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %77
  %87 = getelementptr i8, ptr %72, i32 %78
  %88 = sub i32 %73, %78
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 0) #16
  %90 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %87, i32 noundef %89, ptr noundef nonnull @.str.23, i32 noundef %79) #16
  %91 = add i32 %90, %78
  br label %92

92:                                               ; preds = %86, %77
  %93 = phi i32 [ %91, %86 ], [ %78, %77 ]
  %94 = add nuw nsw i32 %79, 1
  %95 = icmp eq i32 %94, 15
  br i1 %95, label %96, label %77

96:                                               ; preds = %92
  %97 = add i32 %93, %71
  %98 = getelementptr i8, ptr %0, i32 %97
  %99 = sub i32 %1, %97
  %100 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 8
  %101 = tail call i32 @llvm.smax.i32(i32 %99, i32 0) #16
  %102 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %98, i32 noundef %101, ptr noundef nonnull @.str.22, i32 noundef 97) #16
  br label %103

103:                                              ; preds = %119, %96
  %104 = phi i32 [ %120, %119 ], [ %102, %96 ]
  %105 = phi i32 [ %121, %119 ], [ 0, %96 ]
  %106 = lshr i32 %105, 5
  %107 = getelementptr i32, ptr %100, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %105, 31
  %110 = shl nuw i32 1, %109
  %111 = and i32 %110, %108
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = getelementptr i8, ptr %98, i32 %104
  %115 = sub i32 %99, %104
  %116 = tail call i32 @llvm.smax.i32(i32 %115, i32 0) #16
  %117 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %114, i32 noundef %116, ptr noundef nonnull @.str.23, i32 noundef %105) #16
  %118 = add i32 %117, %104
  br label %119

119:                                              ; preds = %113, %103
  %120 = phi i32 [ %118, %113 ], [ %104, %103 ]
  %121 = add nuw nsw i32 %105, 1
  %122 = icmp eq i32 %121, 63
  br i1 %122, label %123, label %103

123:                                              ; preds = %119
  %124 = add i32 %120, %97
  %125 = getelementptr i8, ptr %0, i32 %124
  %126 = sub i32 %1, %124
  %127 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 9
  %128 = tail call i32 @llvm.smax.i32(i32 %126, i32 0) #16
  %129 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %125, i32 noundef %128, ptr noundef nonnull @.str.22, i32 noundef 109) #16
  %130 = load i32, ptr %127, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %123
  %134 = getelementptr i8, ptr %125, i32 %129
  %135 = sub i32 %126, %129
  %136 = tail call i32 @llvm.smax.i32(i32 %135, i32 0) #16
  %137 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %134, i32 noundef %136, ptr noundef nonnull @.str.23, i32 noundef 0) #16
  %138 = add i32 %137, %129
  %139 = load i32, ptr %127, align 4
  br label %140

140:                                              ; preds = %133, %123
  %141 = phi i32 [ %139, %133 ], [ %130, %123 ]
  %142 = phi i32 [ %138, %133 ], [ %129, %123 ]
  %143 = and i32 %141, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  %146 = getelementptr i8, ptr %125, i32 %142
  %147 = sub i32 %126, %142
  %148 = tail call i32 @llvm.smax.i32(i32 %147, i32 0) #16
  %149 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %146, i32 noundef %148, ptr noundef nonnull @.str.23, i32 noundef 1) #16
  %150 = add i32 %149, %142
  %151 = load i32, ptr %127, align 4
  br label %152

152:                                              ; preds = %145, %140
  %153 = phi i32 [ %151, %145 ], [ %141, %140 ]
  %154 = phi i32 [ %150, %145 ], [ %142, %140 ]
  %155 = and i32 %153, 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %164, label %157

157:                                              ; preds = %152
  %158 = getelementptr i8, ptr %125, i32 %154
  %159 = sub i32 %126, %154
  %160 = tail call i32 @llvm.smax.i32(i32 %159, i32 0) #16
  %161 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %158, i32 noundef %160, ptr noundef nonnull @.str.23, i32 noundef 2) #16
  %162 = add i32 %161, %154
  %163 = load i32, ptr %127, align 4
  br label %164

164:                                              ; preds = %157, %152
  %165 = phi i32 [ %163, %157 ], [ %153, %152 ]
  %166 = phi i32 [ %162, %157 ], [ %154, %152 ]
  %167 = and i32 %165, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = getelementptr i8, ptr %125, i32 %166
  %171 = sub i32 %126, %166
  %172 = tail call i32 @llvm.smax.i32(i32 %171, i32 0) #16
  %173 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %170, i32 noundef %172, ptr noundef nonnull @.str.23, i32 noundef 3) #16
  %174 = add i32 %173, %166
  %175 = load i32, ptr %127, align 4
  br label %176

176:                                              ; preds = %169, %164
  %177 = phi i32 [ %175, %169 ], [ %165, %164 ]
  %178 = phi i32 [ %174, %169 ], [ %166, %164 ]
  %179 = and i32 %177, 16
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %176
  %182 = getelementptr i8, ptr %125, i32 %178
  %183 = sub i32 %126, %178
  %184 = tail call i32 @llvm.smax.i32(i32 %183, i32 0) #16
  %185 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %182, i32 noundef %184, ptr noundef nonnull @.str.23, i32 noundef 4) #16
  %186 = add i32 %185, %178
  %187 = load i32, ptr %127, align 4
  br label %188

188:                                              ; preds = %181, %176
  %189 = phi i32 [ %187, %181 ], [ %177, %176 ]
  %190 = phi i32 [ %186, %181 ], [ %178, %176 ]
  %191 = and i32 %189, 32
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = getelementptr i8, ptr %125, i32 %190
  %195 = sub i32 %126, %190
  %196 = tail call i32 @llvm.smax.i32(i32 %195, i32 0) #16
  %197 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %194, i32 noundef %196, ptr noundef nonnull @.str.23, i32 noundef 5) #16
  %198 = add i32 %197, %190
  %199 = load i32, ptr %127, align 4
  br label %200

200:                                              ; preds = %193, %188
  %201 = phi i32 [ %199, %193 ], [ %189, %188 ]
  %202 = phi i32 [ %198, %193 ], [ %190, %188 ]
  %203 = and i32 %201, 64
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %200
  %206 = getelementptr i8, ptr %125, i32 %202
  %207 = sub i32 %126, %202
  %208 = tail call i32 @llvm.smax.i32(i32 %207, i32 0) #16
  %209 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %206, i32 noundef %208, ptr noundef nonnull @.str.23, i32 noundef 6) #16
  %210 = add i32 %209, %202
  br label %211

211:                                              ; preds = %205, %200
  %212 = phi i32 [ %210, %205 ], [ %202, %200 ]
  %213 = add i32 %212, %124
  %214 = getelementptr i8, ptr %0, i32 %213
  %215 = sub i32 %1, %213
  %216 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 10
  %217 = tail call i32 @llvm.smax.i32(i32 %215, i32 0) #16
  %218 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %214, i32 noundef %217, ptr noundef nonnull @.str.22, i32 noundef 108) #16
  br label %219

219:                                              ; preds = %234, %211
  %220 = phi i32 [ %235, %234 ], [ %218, %211 ]
  %221 = phi i32 [ %236, %234 ], [ 0, %211 ]
  %222 = lshr i32 %221, 5
  %223 = getelementptr i32, ptr %216, i32 %222
  %224 = load i32, ptr %223, align 4
  %225 = shl nuw i32 1, %221
  %226 = and i32 %225, %224
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %219
  %229 = getelementptr i8, ptr %214, i32 %220
  %230 = sub i32 %215, %220
  %231 = tail call i32 @llvm.smax.i32(i32 %230, i32 0) #16
  %232 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %229, i32 noundef %231, ptr noundef nonnull @.str.23, i32 noundef %221) #16
  %233 = add i32 %232, %220
  br label %234

234:                                              ; preds = %228, %219
  %235 = phi i32 [ %233, %228 ], [ %220, %219 ]
  %236 = add nuw nsw i32 %221, 1
  %237 = icmp eq i32 %236, 15
  br i1 %237, label %238, label %219

238:                                              ; preds = %234
  %239 = add i32 %235, %213
  %240 = getelementptr i8, ptr %0, i32 %239
  %241 = sub i32 %1, %239
  %242 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 11
  %243 = tail call i32 @llvm.smax.i32(i32 %241, i32 0) #16
  %244 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %240, i32 noundef %243, ptr noundef nonnull @.str.22, i32 noundef 115) #16
  %245 = load i32, ptr %242, align 4
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %238
  %249 = getelementptr i8, ptr %240, i32 %244
  %250 = sub i32 %241, %244
  %251 = tail call i32 @llvm.smax.i32(i32 %250, i32 0) #16
  %252 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %249, i32 noundef %251, ptr noundef nonnull @.str.23, i32 noundef 0) #16
  %253 = add i32 %252, %244
  %254 = load i32, ptr %242, align 4
  br label %255

255:                                              ; preds = %248, %238
  %256 = phi i32 [ %254, %248 ], [ %245, %238 ]
  %257 = phi i32 [ %253, %248 ], [ %244, %238 ]
  %258 = and i32 %256, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %255
  %261 = getelementptr i8, ptr %240, i32 %257
  %262 = sub i32 %241, %257
  %263 = tail call i32 @llvm.smax.i32(i32 %262, i32 0) #16
  %264 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %261, i32 noundef %263, ptr noundef nonnull @.str.23, i32 noundef 1) #16
  %265 = add i32 %264, %257
  %266 = load i32, ptr %242, align 4
  br label %267

267:                                              ; preds = %260, %255
  %268 = phi i32 [ %266, %260 ], [ %256, %255 ]
  %269 = phi i32 [ %265, %260 ], [ %257, %255 ]
  %270 = and i32 %268, 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %279, label %272

272:                                              ; preds = %267
  %273 = getelementptr i8, ptr %240, i32 %269
  %274 = sub i32 %241, %269
  %275 = tail call i32 @llvm.smax.i32(i32 %274, i32 0) #16
  %276 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %273, i32 noundef %275, ptr noundef nonnull @.str.23, i32 noundef 2) #16
  %277 = add i32 %276, %269
  %278 = load i32, ptr %242, align 4
  br label %279

279:                                              ; preds = %272, %267
  %280 = phi i32 [ %278, %272 ], [ %268, %267 ]
  %281 = phi i32 [ %277, %272 ], [ %269, %267 ]
  %282 = and i32 %280, 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %279
  %285 = getelementptr i8, ptr %240, i32 %281
  %286 = sub i32 %241, %281
  %287 = tail call i32 @llvm.smax.i32(i32 %286, i32 0) #16
  %288 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %285, i32 noundef %287, ptr noundef nonnull @.str.23, i32 noundef 3) #16
  %289 = add i32 %288, %281
  %290 = load i32, ptr %242, align 4
  br label %291

291:                                              ; preds = %284, %279
  %292 = phi i32 [ %290, %284 ], [ %280, %279 ]
  %293 = phi i32 [ %289, %284 ], [ %281, %279 ]
  %294 = and i32 %292, 16
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %291
  %297 = getelementptr i8, ptr %240, i32 %293
  %298 = sub i32 %241, %293
  %299 = tail call i32 @llvm.smax.i32(i32 %298, i32 0) #16
  %300 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %297, i32 noundef %299, ptr noundef nonnull @.str.23, i32 noundef 4) #16
  %301 = add i32 %300, %293
  %302 = load i32, ptr %242, align 4
  br label %303

303:                                              ; preds = %296, %291
  %304 = phi i32 [ %302, %296 ], [ %292, %291 ]
  %305 = phi i32 [ %301, %296 ], [ %293, %291 ]
  %306 = and i32 %304, 32
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %315, label %308

308:                                              ; preds = %303
  %309 = getelementptr i8, ptr %240, i32 %305
  %310 = sub i32 %241, %305
  %311 = tail call i32 @llvm.smax.i32(i32 %310, i32 0) #16
  %312 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %309, i32 noundef %311, ptr noundef nonnull @.str.23, i32 noundef 5) #16
  %313 = add i32 %312, %305
  %314 = load i32, ptr %242, align 4
  br label %315

315:                                              ; preds = %308, %303
  %316 = phi i32 [ %314, %308 ], [ %304, %303 ]
  %317 = phi i32 [ %313, %308 ], [ %305, %303 ]
  %318 = and i32 %316, 64
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %315
  %321 = getelementptr i8, ptr %240, i32 %317
  %322 = sub i32 %241, %317
  %323 = tail call i32 @llvm.smax.i32(i32 %322, i32 0) #16
  %324 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %321, i32 noundef %323, ptr noundef nonnull @.str.23, i32 noundef 6) #16
  %325 = add i32 %324, %317
  br label %326

326:                                              ; preds = %320, %315
  %327 = phi i32 [ %325, %320 ], [ %317, %315 ]
  %328 = add i32 %327, %239
  %329 = getelementptr i8, ptr %0, i32 %328
  %330 = sub i32 %1, %328
  %331 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 12
  %332 = tail call i32 @llvm.smax.i32(i32 %330, i32 0) #16
  %333 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %329, i32 noundef %332, ptr noundef nonnull @.str.22, i32 noundef 102) #16
  br label %334

334:                                              ; preds = %350, %326
  %335 = phi i32 [ %351, %350 ], [ %333, %326 ]
  %336 = phi i32 [ %352, %350 ], [ 0, %326 ]
  %337 = lshr i32 %336, 5
  %338 = getelementptr i32, ptr %331, i32 %337
  %339 = load i32, ptr %338, align 4
  %340 = and i32 %336, 31
  %341 = shl nuw i32 1, %340
  %342 = and i32 %341, %339
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %350, label %344

344:                                              ; preds = %334
  %345 = getelementptr i8, ptr %329, i32 %335
  %346 = sub i32 %330, %335
  %347 = tail call i32 @llvm.smax.i32(i32 %346, i32 0) #16
  %348 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %345, i32 noundef %347, ptr noundef nonnull @.str.23, i32 noundef %336) #16
  %349 = add i32 %348, %335
  br label %350

350:                                              ; preds = %344, %334
  %351 = phi i32 [ %349, %344 ], [ %335, %334 ]
  %352 = add nuw nsw i32 %336, 1
  %353 = icmp eq i32 %352, 127
  br i1 %353, label %354, label %334

354:                                              ; preds = %350
  %355 = add i32 %351, %328
  %356 = getelementptr i8, ptr %0, i32 %355
  %357 = sub i32 %1, %355
  %358 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 13
  %359 = tail call i32 @llvm.smax.i32(i32 %357, i32 0) #16
  %360 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %356, i32 noundef %359, ptr noundef nonnull @.str.22, i32 noundef 119) #16
  br label %361

361:                                              ; preds = %376, %354
  %362 = phi i32 [ %377, %376 ], [ %360, %354 ]
  %363 = phi i32 [ %378, %376 ], [ 0, %354 ]
  %364 = lshr i32 %363, 5
  %365 = getelementptr i32, ptr %358, i32 %364
  %366 = load i32, ptr %365, align 4
  %367 = shl nuw i32 1, %363
  %368 = and i32 %367, %366
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %361
  %371 = getelementptr i8, ptr %356, i32 %362
  %372 = sub i32 %357, %362
  %373 = tail call i32 @llvm.smax.i32(i32 %372, i32 0) #16
  %374 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %371, i32 noundef %373, ptr noundef nonnull @.str.23, i32 noundef %363) #16
  %375 = add i32 %374, %362
  br label %376

376:                                              ; preds = %370, %361
  %377 = phi i32 [ %375, %370 ], [ %362, %361 ]
  %378 = add nuw nsw i32 %363, 1
  %379 = icmp eq i32 %378, 16
  br i1 %379, label %380, label %361

380:                                              ; preds = %376
  %381 = add i32 %377, %355
  %382 = icmp eq i32 %3, 0
  br i1 %382, label %389, label %383

383:                                              ; preds = %380
  %384 = getelementptr i8, ptr %0, i32 %381
  %385 = sub i32 %1, %381
  %386 = tail call i32 @llvm.smax.i32(i32 %385, i32 0)
  %387 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %384, i32 noundef %386, ptr noundef nonnull @.str.21)
  %388 = add i32 %387, %381
  br label %389

389:                                              ; preds = %383, %380
  %390 = phi i32 [ %388, %383 ], [ %381, %380 ]
  ret i32 %390
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_properties(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -380
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 31, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @input_print_bitmap(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #14 {
  %6 = add i32 %3, 31
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %42, label %8

8:                                                ; preds = %5
  %9 = lshr i32 %6, 5
  br label %10

10:                                               ; preds = %36, %8
  %11 = phi i32 [ %14, %36 ], [ %9, %8 ]
  %12 = phi i32 [ %38, %36 ], [ 0, %8 ]
  %13 = phi i1 [ %37, %36 ], [ true, %8 ]
  %14 = add nsw i32 %11, -1
  %15 = getelementptr i32, ptr %2, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %13, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = sub i32 %1, %12
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = getelementptr i8, ptr %0, i32 %12
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef %21, ptr noundef nonnull @.str.27, i32 noundef %16) #16
  br label %24

24:                                               ; preds = %19, %10
  %25 = phi i32 [ %23, %19 ], [ 0, %10 ]
  %26 = add i32 %25, %12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %14, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %28
  %31 = getelementptr i8, ptr %0, i32 %26
  %32 = sub i32 %1, %26
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0)
  %34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef %33, ptr noundef nonnull @.str.25)
  %35 = add i32 %34, %26
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %30 ], [ %13, %24 ]
  %38 = phi i32 [ %35, %30 ], [ 0, %24 ]
  %39 = icmp ugt i32 %11, 1
  br i1 %39, label %10, label %40

40:                                               ; preds = %36
  %41 = icmp eq i32 %38, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %40, %5
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.26, i32 noundef 0)
  br label %44

44:                                               ; preds = %42, %40, %28
  %45 = phi i32 [ %43, %42 ], [ %38, %40 ], [ %26, %28 ]
  %46 = icmp eq i32 %4, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %0, i32 %45
  %49 = sub i32 %1, %45
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %48, i32 noundef %50, ptr noundef nonnull @.str.21)
  %52 = add i32 %51, %45
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i32 [ %52, %47 ], [ %45, %44 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inhibited_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 528
  %5 = load i8, ptr %4, align 8, !range !8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %6) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inhibited_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -400
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !12
  %7 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %4
  %10 = load i8, ptr %5, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr i8, ptr %0, i32 -28
  call void @mutex_lock(ptr noundef %12) #16
  %13 = getelementptr i8, ptr %0, i32 528
  %14 = load i8, ptr %13, align 8, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %11, label %35, label %16

16:                                               ; preds = %9
  br i1 %15, label %17, label %56

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %0, i32 -8
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 -48
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void %23(ptr noundef %6) #16
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr i8, ptr %0, i32 -204
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @input_dev_poller_stop(ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %30, %26, %17
  %32 = getelementptr i8, ptr %0, i32 -32
  call void @_raw_spin_lock_irq(ptr noundef %32) #16
  call fastcc void @input_dev_release_keys(ptr noundef %6) #16
  call fastcc void @input_dev_toggle(ptr noundef %6, i1 noundef zeroext false) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  store i8 1, ptr %13, align 8
  br label %56

35:                                               ; preds = %9
  br i1 %15, label %56, label %36

36:                                               ; preds = %35
  %37 = getelementptr i8, ptr %0, i32 -8
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %0, i32 -52
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = call i32 %42(ptr noundef %6) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %40
  %48 = getelementptr i8, ptr %0, i32 -204
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @input_dev_poller_start(ptr noundef nonnull %49) #16
  br label %52

52:                                               ; preds = %51, %47, %36
  store i8 0, ptr %13, align 8
  %53 = getelementptr i8, ptr %0, i32 -32
  call void @_raw_spin_lock_irq(ptr noundef %53) #16
  call fastcc void @input_dev_toggle(ptr noundef %6, i1 noundef zeroext true) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %54 = load i16, ptr %53, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %53, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %56

56:                                               ; preds = %52, %44, %35, %31, %16
  %57 = phi i32 [ %3, %31 ], [ %3, %16 ], [ %3, %52 ], [ %3, %35 ], [ %45, %44 ]
  call void @mutex_unlock(ptr noundef %12) #16
  br label %58

58:                                               ; preds = %56, %4
  %59 = phi i32 [ -22, %4 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_id_bustype(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -388
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %6) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_id_vendor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -386
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %6) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_id_product(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -384
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %6) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_id_version(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -382
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.32, i32 noundef %6) #16
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_ev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -376
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 31, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_key(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -372
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 767, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_rel(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -276
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 15, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_abs(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -272
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 63, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_msc(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 7, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_led(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -260
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 15, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_snd(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -256
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 7, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_ff(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -252
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 127, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_show_cap_sw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 -236
  %5 = tail call fastcc i32 @input_print_bitmap(ptr noundef %2, i32 noundef 4096, ptr noundef %4, i32 noundef 16, i32 noundef 1)
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 4096)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @input_add_uevent_bm_var(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %1) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %57

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 3, i32 %10
  %12 = sub i32 2048, %9
  %13 = add i32 %3, 31
  %14 = icmp ult i32 %13, 32
  br i1 %14, label %48, label %15

15:                                               ; preds = %7
  %16 = lshr i32 %13, 5
  br label %17

17:                                               ; preds = %40, %15
  %18 = phi i32 [ %16, %15 ], [ %24, %40 ]
  %19 = phi i32 [ 0, %15 ], [ %45, %40 ]
  %20 = phi i1 [ true, %15 ], [ false, %40 ]
  br label %21

21:                                               ; preds = %46, %17
  %22 = phi i32 [ %24, %46 ], [ %18, %17 ]
  %23 = phi i32 [ 0, %46 ], [ %19, %17 ]
  %24 = add nsw i32 %22, -1
  %25 = getelementptr i32, ptr %2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %20, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = sub i32 %12, %23
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #16
  %32 = getelementptr i8, ptr %11, i32 %23
  %33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef %31, ptr noundef nonnull @.str.27, i32 noundef %26) #16
  br label %34

34:                                               ; preds = %29, %21
  %35 = phi i32 [ %33, %29 ], [ 0, %21 ]
  %36 = add i32 %35, %23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %24, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %11, i32 %36
  %42 = sub i32 %12, %36
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 0) #16
  %44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %41, i32 noundef %43, ptr noundef nonnull @.str.25) #16
  %45 = add i32 %44, %36
  br label %17

46:                                               ; preds = %34
  %47 = icmp ugt i32 %22, 1
  br i1 %47, label %21, label %48

48:                                               ; preds = %46, %7
  %49 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %11, i32 noundef %12, ptr noundef nonnull @.str.26, i32 noundef 0) #16
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi i32 [ %49, %48 ], [ %36, %38 ]
  %52 = load i32, ptr %8, align 4
  %53 = sub i32 2048, %52
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = add i32 %52, %51
  store i32 %56, ptr %8, align 4
  br label %57

57:                                               ; preds = %55, %50, %4
  %58 = phi i32 [ 0, %55 ], [ -12, %4 ], [ -12, %50 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @input_add_uevent_modalias_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %0, ptr noundef nonnull @.str.61) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kobj_uevent_env, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = getelementptr %struct.kobj_uevent_env, ptr %0, i32 0, i32 3, i32 %8
  %10 = sub i32 2048, %7
  %11 = tail call fastcc i32 @input_print_modalias(ptr noundef %9, i32 noundef %10, ptr noundef %1, i32 noundef 0)
  %12 = load i32, ptr %6, align 4
  %13 = sub i32 2048, %12
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = add i32 %12, %11
  store i32 %16, ptr %6, align 4
  br label %17

17:                                               ; preds = %15, %5, %2
  %18 = phi i32 [ 0, %15 ], [ -12, %2 ], [ -12, %5 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_destroy_slots(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -400
  %3 = getelementptr i8, ptr %0, i32 -32
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #16
  tail call fastcc void @input_dev_release_keys(ptr noundef %2)
  tail call fastcc void @input_dev_toggle(ptr noundef %2, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -400
  %3 = getelementptr i8, ptr %0, i32 -32
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #16
  tail call fastcc void @input_dev_toggle(ptr noundef %2, i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_freeze(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -400
  %3 = getelementptr i8, ptr %0, i32 -32
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #16
  tail call fastcc void @input_dev_release_keys(ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_dev_poweroff(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -400
  %3 = getelementptr i8, ptr %0, i32 -32
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #16
  tail call fastcc void @input_dev_toggle(ptr noundef %2, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @input_proc_init() unnamed_addr #10 section ".init.text" {
  %1 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.65, ptr noundef null) #16
  store ptr %1, ptr @proc_bus_input_dir, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @proc_create(ptr noundef nonnull @.str.63, i16 noundef zeroext 0, ptr noundef nonnull %1, ptr noundef nonnull @input_devices_proc_ops) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @proc_bus_input_dir, align 4
  %8 = tail call ptr @proc_create(ptr noundef nonnull @.str.64, i16 noundef zeroext 0, ptr noundef %7, ptr noundef nonnull @input_handlers_proc_ops) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr @proc_bus_input_dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.63, ptr noundef %11) #16
  br label %12

12:                                               ; preds = %10, %3
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.65, ptr noundef null) #16
  br label %13

13:                                               ; preds = %12, %6, %0
  %14 = phi i32 [ -12, %12 ], [ -12, %0 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_proc_devices_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @input_devices_seq_ops) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_proc_devices_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5(ptr noundef %0, ptr noundef nonnull @input_devices_poll_wait, ptr noundef nonnull %1) #16
  br label %8

8:                                                ; preds = %7, %4, %2
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %10 = load i64, ptr %9, align 8
  %11 = load i32, ptr @input_devices_state, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store i64 %12, ptr %9, align 8
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ 65, %14 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @input_devices_seq_start(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @input_mutex) #16
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.anon.66, ptr %3, i32 0, i32 1
  br i1 %5, label %9, label %7

7:                                                ; preds = %2
  store i8 0, ptr %6, align 2
  %8 = inttoptr i32 %4 to ptr
  br label %12

9:                                                ; preds = %2
  store i8 1, ptr %6, align 2
  %10 = load i64, ptr %1, align 8
  %11 = tail call ptr @seq_list_start(ptr noundef nonnull @input_dev_list, i64 noundef %10) #16
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @input_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.anon.66, ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef nonnull @input_mutex) #16
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @input_devices_seq_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @input_dev_list, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_devices_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -880
  %4 = getelementptr i8, ptr %1, i32 -480
  %5 = tail call ptr @kobject_get_path(ptr noundef %4, i32 noundef 3264) #16
  %6 = getelementptr i8, ptr %1, i32 -868
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %1, i32 -866
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %1, i32 -864
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %1, i32 -862
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17) #16
  %18 = load ptr, ptr %3, align 8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.16, ptr %18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull %20) #16
  %21 = getelementptr i8, ptr %1, i32 -876
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str.16, ptr %22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %24) #16
  %25 = icmp eq ptr %5, null
  %26 = select i1 %25, ptr @.str.16, ptr %5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %26) #16
  %27 = getelementptr i8, ptr %1, i32 -872
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @.str.16, ptr %28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %30) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.73) #16
  %31 = getelementptr i8, ptr %1, i32 -8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %40, label %34

34:                                               ; preds = %34, %2
  %35 = phi ptr [ %38, %34 ], [ %32, %2 ]
  %36 = getelementptr i8, ptr %35, i32 -12
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %37) #16
  %38 = load ptr, ptr %35, align 4
  %39 = icmp eq ptr %38, %31
  br i1 %39, label %40, label %34

40:                                               ; preds = %34, %2
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  %41 = getelementptr i8, ptr %1, i32 -860
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef %41, i32 noundef 31)
  %42 = getelementptr i8, ptr %1, i32 -856
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %42, i32 noundef 31)
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = getelementptr i8, ptr %1, i32 -852
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %47, i32 noundef 767)
  br label %48

48:                                               ; preds = %46, %40
  %49 = load volatile i32, ptr %42, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %1, i32 -756
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef %53, i32 noundef 15)
  br label %54

54:                                               ; preds = %52, %48
  %55 = load volatile i32, ptr %42, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %1, i32 -752
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef %59, i32 noundef 63)
  br label %60

60:                                               ; preds = %58, %54
  %61 = load volatile i32, ptr %42, align 4
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %1, i32 -744
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.80, ptr noundef %65, i32 noundef 7)
  br label %66

66:                                               ; preds = %64, %60
  %67 = load volatile i32, ptr %42, align 4
  %68 = and i32 %67, 131072
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %1, i32 -740
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.81, ptr noundef %71, i32 noundef 15)
  br label %72

72:                                               ; preds = %70, %66
  %73 = load volatile i32, ptr %42, align 4
  %74 = and i32 %73, 262144
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %1, i32 -736
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.82, ptr noundef %77, i32 noundef 7)
  br label %78

78:                                               ; preds = %76, %72
  %79 = load volatile i32, ptr %42, align 4
  %80 = and i32 %79, 2097152
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %1, i32 -732
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %83, i32 noundef 127)
  br label %84

84:                                               ; preds = %82, %78
  %85 = load volatile i32, ptr %42, align 4
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %1, i32 -716
  tail call fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %89, i32 noundef 16)
  br label %90

90:                                               ; preds = %88, %84
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  tail call void @kfree(ptr noundef %5) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @input_seq_print_bitmap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [18 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %5, i8 0, i32 18, i1 false), !annotation !12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %1) #16
  %6 = add i32 %3, 31
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = lshr i32 %6, 5
  br label %10

10:                                               ; preds = %24, %8
  %11 = phi i32 [ %9, %8 ], [ %13, %24 ]
  %12 = phi i1 [ true, %8 ], [ %25, %24 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr i32, ptr %2, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %12, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 18, ptr noundef nonnull @.str.27, i32 noundef %15) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %10
  %22 = phi i1 [ %12, %18 ], [ true, %10 ]
  %23 = icmp ugt i32 %11, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %26, %21
  %25 = phi i1 [ %22, %21 ], [ false, %26 ]
  br label %10

26:                                               ; preds = %18
  %27 = icmp eq i32 %13, 0
  %28 = select i1 %27, ptr @.str.16, ptr @.str.25
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, ptr noundef nonnull %5, ptr noundef nonnull %28) #16
  %29 = icmp ugt i32 %11, 1
  br i1 %29, label %24, label %32

30:                                               ; preds = %21
  br i1 %22, label %31, label %32

31:                                               ; preds = %30, %4
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 48) #16
  br label %32

32:                                               ; preds = %31, %30, %26
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_proc_handlers_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @input_handlers_seq_ops) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @input_handlers_seq_start(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @input_mutex) #16
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.anon.66, ptr %3, i32 0, i32 1
  br i1 %5, label %9, label %7

7:                                                ; preds = %2
  store i8 0, ptr %6, align 2
  %8 = inttoptr i32 %4 to ptr
  br label %14

9:                                                ; preds = %2
  store i8 1, ptr %6, align 2
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = load i64, ptr %1, align 8
  %13 = tail call ptr @seq_list_start(ptr noundef nonnull @input_handler_list, i64 noundef %12) #16
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @input_handlers_seq_next(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load i64, ptr %2, align 8
  %6 = trunc i64 %5 to i16
  %7 = add i16 %6, 1
  store i16 %7, ptr %4, align 4
  %8 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @input_handler_list, ptr noundef %2) #16
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @input_handlers_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 -16
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %5, ptr noundef %7) #16
  %8 = getelementptr i8, ptr %1, i32 -44
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.88) #16
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr i8, ptr %1, i32 -24
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 -20
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %18) #16
  br label %19

19:                                               ; preds = %16, %12
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149389726}
!10 = !{i64 2149389943}
!11 = !{i64 2152330024}
!12 = !{!"auto-init"}
!13 = !{i64 2148066338}
!14 = !{i64 466333, i64 2147956304, i64 2147956330, i64 2147956377, i64 2147956399, i64 2147956427, i64 2147956447}
!15 = !{i64 2147969200, i64 2147969232, i64 2147969261, i64 2147969295, i64 2147969326, i64 2147969349}
!16 = !{i64 2148066541}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2148990954}
!20 = !{i64 2148986778}
!21 = !{i64 2148986853, i64 2148986880, i64 2148986927, i64 2148986949, i64 2148986977, i64 2148986997}
!22 = !{i64 361817}
!23 = !{i64 2149015098}
!24 = !{i64 2150360611}
