; ModuleID = '/llk/IR/net/rfkill/core.c_pt.bc'
source_filename = "../net/rfkill/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_get_led_trigger_name:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_get_led_trigger_name\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_get_led_trigger_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_set_led_trigger_name:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_set_led_trigger_name\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_set_led_trigger_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_set_hw_state_reason:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_set_hw_state_reason\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_set_hw_state_reason:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_set_sw_state:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_set_sw_state\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_set_sw_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_init_sw_state:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_init_sw_state\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_init_sw_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_set_states:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_set_states\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_set_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_find_type:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_find_type\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_find_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_pause_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_pause_polling\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_pause_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_resume_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_resume_polling\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_resume_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_blocked:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_blocked\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_blocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_soft_blocked:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_soft_blocked\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_soft_blocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_register\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rfkill_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22rfkill_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_rfkill_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.62 = type { i8, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.lock_class_key = type {}
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rfkill = type { %struct.spinlock, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, %struct.led_trigger, ptr, %struct.device, %struct.list_head, %struct.delayed_work, %struct.work_struct, %struct.work_struct, [0 x i8] }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.rfkill_int_event = type { %struct.list_head, %struct.rfkill_event_ext }
%struct.rfkill_event_ext = type <{ i32, i8, i8, i8, i8, i8 }>
%struct.rfkill_data = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.wait_queue_head, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author206 = internal constant [48 x i8] c"rfkill.author=Ivo van Doorn <IvDoorn@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author207 = internal constant [56 x i8] c"rfkill.author=Johannes Berg <johannes@sipsolutions.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [37 x i8] c"rfkill.description=RF switch support\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [30 x i8] c"rfkill.file=net/rfkill/rfkill\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [19 x i8] c"rfkill.license=GPL\00", section ".modinfo", align 1
@__param_str_default_state = internal constant [21 x i8] c"rfkill.default_state\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rfkill_default_state = internal global i32 1, align 4
@__param_default_state = internal constant %struct.kernel_param { ptr @__param_str_default_state, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.57 { ptr @rfkill_default_state } }, section "__param", align 4
@__UNIQUE_ID_default_statetype211 = internal constant [35 x i8] c"rfkill.parmtype=default_state:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_state212 = internal constant [83 x i8] c"rfkill.parm=default_state:Default initial state for all radio types, 0 = radio off\00", section ".modinfo", align 1
@__kstrtab_rfkill_get_led_trigger_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_get_led_trigger_name = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_get_led_trigger_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_get_led_trigger_name to i32), ptr @__kstrtab_rfkill_get_led_trigger_name, ptr @__kstrtabns_rfkill_get_led_trigger_name }, section "___ksymtab+rfkill_get_led_trigger_name", align 4
@__kstrtab_rfkill_set_led_trigger_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_set_led_trigger_name = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_set_led_trigger_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_set_led_trigger_name to i32), ptr @__kstrtab_rfkill_set_led_trigger_name, ptr @__kstrtabns_rfkill_set_led_trigger_name }, section "___ksymtab+rfkill_set_led_trigger_name", align 4
@rfkill_input_disabled = internal global %struct.atomic_t zeroinitializer, align 4
@rfkill_global_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rfkill_global_mutex, i64 12), ptr getelementptr (i8, ptr @rfkill_global_mutex, i64 12) } }, align 4
@rfkill_epo_lock_active = internal unnamed_addr global i1 false, align 1
@rfkill_list = internal global %struct.list_head { ptr @rfkill_list, ptr @rfkill_list }, align 4
@rfkill_global_states = internal unnamed_addr global [9 x %struct.anon.62] zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"net/rfkill/core.c\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hw_state reason not supported: 0x%lx\00", align 1
@__kstrtab_rfkill_set_hw_state_reason = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_set_hw_state_reason = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_set_hw_state_reason = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_set_hw_state_reason to i32), ptr @__kstrtab_rfkill_set_hw_state_reason, ptr @__kstrtabns_rfkill_set_hw_state_reason }, section "___ksymtab+rfkill_set_hw_state_reason", align 4
@__kstrtab_rfkill_set_sw_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_set_sw_state = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_set_sw_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_set_sw_state to i32), ptr @__kstrtab_rfkill_set_sw_state, ptr @__kstrtabns_rfkill_set_sw_state }, section "___ksymtab+rfkill_set_sw_state", align 4
@__kstrtab_rfkill_init_sw_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_init_sw_state = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_init_sw_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_init_sw_state to i32), ptr @__kstrtab_rfkill_init_sw_state, ptr @__kstrtabns_rfkill_init_sw_state }, section "___ksymtab+rfkill_init_sw_state", align 4
@__kstrtab_rfkill_set_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_set_states = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_set_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_set_states to i32), ptr @__kstrtab_rfkill_set_states, ptr @__kstrtabns_rfkill_set_states }, section "___ksymtab+rfkill_set_states", align 4
@rfkill_types = internal unnamed_addr constant [9 x ptr] [ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@__kstrtab_rfkill_find_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_find_type = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_find_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_find_type to i32), ptr @__kstrtab_rfkill_find_type, ptr @__kstrtabns_rfkill_find_type }, section "___ksymtab+rfkill_find_type", align 4
@__kstrtab_rfkill_pause_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_pause_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_pause_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_pause_polling to i32), ptr @__kstrtab_rfkill_pause_polling, ptr @__kstrtabns_rfkill_pause_polling }, section "___ksymtab+rfkill_pause_polling", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_rfkill_resume_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_resume_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_resume_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_resume_polling to i32), ptr @__kstrtab_rfkill_resume_polling, ptr @__kstrtabns_rfkill_resume_polling }, section "___ksymtab+rfkill_resume_polling", align 4
@__kstrtab_rfkill_blocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_blocked = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_blocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_blocked to i32), ptr @__kstrtab_rfkill_blocked, ptr @__kstrtabns_rfkill_blocked }, section "___ksymtab+rfkill_blocked", align 4
@__kstrtab_rfkill_soft_blocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_soft_blocked = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_soft_blocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_soft_blocked to i32), ptr @__kstrtab_rfkill_soft_blocked, ptr @__kstrtabns_rfkill_soft_blocked }, section "___ksymtab+rfkill_soft_blocked", align 4
@rfkill_class = internal global %struct.class { ptr @.str.11, ptr null, ptr null, ptr @rfkill_dev_groups, ptr null, ptr @rfkill_dev_uevent, ptr null, ptr null, ptr @rfkill_release, ptr null, ptr null, ptr null, ptr null, ptr @rfkill_pm_ops, ptr null }, align 4
@__kstrtab_rfkill_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_alloc to i32), ptr @__kstrtab_rfkill_alloc, ptr @__kstrtabns_rfkill_alloc }, section "___ksymtab+rfkill_alloc", align 4
@rfkill_register.rfkill_no = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rfkill%lu\00", align 1
@__kstrtab_rfkill_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_register to i32), ptr @__kstrtab_rfkill_register, ptr @__kstrtabns_rfkill_register }, section "___ksymtab+rfkill_register", align 4
@__kstrtab_rfkill_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_unregister to i32), ptr @__kstrtab_rfkill_unregister, ptr @__kstrtabns_rfkill_unregister }, section "___ksymtab+rfkill_unregister", align 4
@__kstrtab_rfkill_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_rfkill_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_rfkill_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rfkill_destroy to i32), ptr @__kstrtab_rfkill_destroy, ptr @__kstrtabns_rfkill_destroy }, section "___ksymtab+rfkill_destroy", align 4
@__initcall__kmod_rfkill__218_1410_rfkill_init4 = internal global ptr @rfkill_init, section ".initcall4.init", align 4
@rfkill_miscdev = internal global %struct.miscdevice { i32 242, ptr @.str.11, ptr @rfkill_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@__exitcall_rfkill_exit = internal global ptr @rfkill_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias219 = internal constant [31 x i8] c"rfkill.alias=char-major-10-242\00", section ".modinfo", align 1
@__UNIQUE_ID_alias220 = internal constant [28 x i8] c"rfkill.alias=devname:rfkill\00", section ".modinfo", align 1
@rfkill_global_led_trigger_work = internal global %struct.work_struct zeroinitializer, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"wlan\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"bluetooth\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ultrawideband\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"wimax\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wwan\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"gps\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"rfkill\00", align 1
@rfkill_dev_groups = internal global [2 x ptr] [ptr @rfkill_dev_group, ptr null], align 4
@rfkill_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rfkill_suspend, ptr @rfkill_resume, ptr @rfkill_suspend, ptr @rfkill_resume, ptr @rfkill_suspend, ptr @rfkill_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rfkill_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rfkill_dev_attrs, ptr null }, align 4
@rfkill_dev_attrs = internal global [9 x ptr] [ptr @dev_attr_name, ptr @dev_attr_type, ptr @dev_attr_index, ptr @dev_attr_persistent, ptr @dev_attr_state, ptr @dev_attr_soft, ptr @dev_attr_hard, ptr @dev_attr_hard_block_reasons, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_index = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @index_show, ptr null }, align 4
@dev_attr_persistent = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @persistent_show, ptr null }, align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @state_show, ptr @state_store }, align 4
@dev_attr_soft = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @soft_show, ptr @soft_store }, align 4
@dev_attr_hard = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @hard_show, ptr null }, align 4
@dev_attr_hard_block_reasons = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @hard_block_reasons_show, ptr null }, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"persistent\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"hard_block_reasons\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"RFKILL_NAME=%s\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"RFKILL_TYPE=%s\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"RFKILL_STATE=%d\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"RFKILL_HW_BLOCK_REASON=0x%lx\00", align 1
@rfkill_fds = internal global %struct.list_head { ptr @rfkill_fds, ptr @rfkill_fds }, align 4
@rfkill_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"rfkill-any\00", align 1
@rfkill_any_led_trigger = internal global %struct.led_trigger zeroinitializer, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"rfkill-none\00", align 1
@rfkill_none_led_trigger = internal global %struct.led_trigger zeroinitializer, align 4
@rfkill_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @rfkill_fop_read, ptr @rfkill_fop_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rfkill_fop_poll, ptr @rfkill_fop_ioctl, ptr null, ptr null, i32 0, ptr @rfkill_fop_open, ptr null, ptr @rfkill_fop_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [34 x i8] c"\017rfkill: input handler disabled\0A\00", align 1
@rfkill_fop_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"&data->mtx\00", align 1
@rfkill_fop_open.__key.33 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"&data->read_wait\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"\017rfkill: input handler enabled\0A\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias219, ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_author206, ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_default_state212, ptr @__UNIQUE_ID_default_statetype211, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_rfkill_exit, ptr @__initcall__kmod_rfkill__218_1410_rfkill_init4, ptr @__ksymtab_rfkill_alloc, ptr @__ksymtab_rfkill_blocked, ptr @__ksymtab_rfkill_destroy, ptr @__ksymtab_rfkill_find_type, ptr @__ksymtab_rfkill_get_led_trigger_name, ptr @__ksymtab_rfkill_init_sw_state, ptr @__ksymtab_rfkill_pause_polling, ptr @__ksymtab_rfkill_register, ptr @__ksymtab_rfkill_resume_polling, ptr @__ksymtab_rfkill_set_hw_state_reason, ptr @__ksymtab_rfkill_set_led_trigger_name, ptr @__ksymtab_rfkill_set_states, ptr @__ksymtab_rfkill_set_sw_state, ptr @__ksymtab_rfkill_soft_blocked, ptr @__ksymtab_rfkill_unregister, ptr @__param_default_state, ptr @rfkill_exit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rfkill_get_led_trigger_name(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_set_led_trigger_name(ptr noundef writeonly %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #17, !srcloc !9
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 12
  store ptr %1, ptr %6, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_switch_all(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load volatile i32, ptr @rfkill_input_disabled, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %6 = load i1, ptr @rfkill_epo_lock_active, align 1
  br i1 %6, label %30, label %7

7:                                                ; preds = %5
  %8 = zext i1 %1 to i8
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8 %8, ptr @rfkill_global_states, align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1
  br label %13

11:                                               ; preds = %7
  %12 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %0
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi ptr [ getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), %10 ], [ %12, %11 ]
  store i8 %8, ptr %14, align 1
  %15 = load ptr, ptr @rfkill_list, align 4
  %16 = icmp eq ptr %15, @rfkill_list
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = icmp ne i32 %0, 0
  br label %19

19:                                               ; preds = %27, %17
  %20 = phi ptr [ %15, %17 ], [ %28, %27 ]
  %21 = getelementptr i8, ptr %20, i32 -548
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, %0
  %24 = and i1 %18, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %20, i32 -552
  tail call fastcc void @rfkill_set_block(ptr noundef %26, i1 noundef zeroext %1) #17
  br label %27

27:                                               ; preds = %25, %19
  %28 = load ptr, ptr %20, align 4
  %29 = icmp eq ptr %28, @rfkill_list
  br i1 %29, label %30, label %19

30:                                               ; preds = %27, %13, %5
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__rfkill_switch_all(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = zext i1 %1 to i8
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i8 %3, ptr @rfkill_global_states, align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1
  br label %8

6:                                                ; preds = %2
  %7 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %0
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi ptr [ getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), %5 ], [ %7, %6 ]
  store i8 %3, ptr %9, align 1
  %10 = load ptr, ptr @rfkill_list, align 4
  %11 = icmp eq ptr %10, @rfkill_list
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = icmp ne i32 %0, 0
  br label %14

14:                                               ; preds = %22, %12
  %15 = phi ptr [ %10, %12 ], [ %23, %22 ]
  %16 = getelementptr i8, ptr %15, i32 -548
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, %0
  %19 = and i1 %13, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %15, i32 -552
  tail call fastcc void @rfkill_set_block(ptr noundef %21, i1 noundef zeroext %1)
  br label %22

22:                                               ; preds = %20, %14
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, @rfkill_list
  br i1 %24, label %25, label %14

25:                                               ; preds = %22, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_epo() local_unnamed_addr #1 {
  %1 = load volatile i32, ptr @rfkill_input_disabled, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  store i1 true, ptr @rfkill_epo_lock_active, align 1
  %4 = load ptr, ptr @rfkill_list, align 4
  %5 = icmp eq ptr %4, @rfkill_list
  br i1 %5, label %6, label %16

6:                                                ; preds = %16, %3
  %7 = load i8, ptr @rfkill_global_states, align 1, !range !10
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 0, i32 1), align 1
  store i8 1, ptr @rfkill_global_states, align 1
  %8 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1, !range !10
  store i8 %8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1
  %9 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1, !range !10
  store i8 %9, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1
  %10 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1, !range !10
  store i8 %10, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1
  %11 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1, !range !10
  store i8 %11, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1
  %12 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1, !range !10
  store i8 %12, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1
  %13 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1, !range !10
  store i8 %13, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1
  %14 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1, !range !10
  store i8 %14, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1
  %15 = load i8, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), align 1, !range !10
  store i8 %15, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8, i32 1), align 1
  store i8 1, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), align 1
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %21

16:                                               ; preds = %16, %3
  %17 = phi ptr [ %19, %16 ], [ %4, %3 ]
  %18 = getelementptr i8, ptr %17, i32 -552
  tail call fastcc void @rfkill_set_block(ptr noundef %18, i1 noundef zeroext true)
  %19 = load ptr, ptr %17, align 4
  %20 = icmp eq ptr %19, @rfkill_list
  br i1 %20, label %6, label %16

21:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rfkill_set_block(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 13, i32 11
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %68, !prof !11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rfkill_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  tail call void %11(ptr noundef %0, ptr noundef %15) #17
  br label %16

16:                                               ; preds = %13, %7
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %18 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 2
  %21 = and i32 %19, 2147483641
  %22 = shl nuw nsw i32 %20, 1
  %23 = or i32 %22, %21
  %24 = select i1 %1, i32 2, i32 0
  %25 = or i32 %23, %24
  %26 = or i32 %25, -2147483648
  store i32 %26, ptr %18, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %17) #17
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds %struct.rfkill_ops, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %29(ptr noundef %31, i1 noundef zeroext %1) #17
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %34 = icmp eq i32 %32, 0
  %35 = load i32, ptr %18, align 8
  br i1 %34, label %43, label %36

36:                                               ; preds = %16
  %37 = and i32 %35, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = or i32 %35, 2
  br label %43

41:                                               ; preds = %36
  %42 = and i32 %35, -3
  br label %43

43:                                               ; preds = %41, %39, %16
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ], [ %35, %16 ]
  %45 = and i32 %44, 2147483643
  store i32 %45, ptr %18, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %33) #17
  %46 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  %47 = load i8, ptr %46, align 4, !range !10
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  %51 = load i32, ptr %18, align 8
  %52 = and i32 %51, 7
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %50, i32 noundef %54) #17
  br label %55

55:                                               ; preds = %49, %43
  %56 = load ptr, ptr @system_wq, align 4
  %57 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %56, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  %58 = lshr exact i32 %20, 1
  %59 = lshr i32 %44, 1
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = load i8, ptr %46, align 4, !range !10
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 13
  %67 = tail call i32 @kobject_uevent(ptr noundef %66, i32 noundef 2) #17
  tail call fastcc void @rfkill_send_events(ptr noundef %0, i32 noundef 2) #17
  br label %68

68:                                               ; preds = %65, %62, %55, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_restore_states() local_unnamed_addr #1 {
  %1 = load volatile i32, ptr @rfkill_input_disabled, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  store i1 false, ptr @rfkill_epo_lock_active, align 1
  br label %4

4:                                                ; preds = %30, %3
  %5 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %6 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %5, i32 1
  %7 = load i8, ptr %6, align 1, !range !10
  %8 = icmp ne i8 %7, 0
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store i8 %7, ptr @rfkill_global_states, align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1
  store i8 %7, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %5
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi ptr [ getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), %10 ], [ %12, %11 ]
  store i8 %7, ptr %14, align 1
  %15 = load ptr, ptr @rfkill_list, align 4
  %16 = icmp eq ptr %15, @rfkill_list
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = icmp ne i32 %5, 0
  br label %19

19:                                               ; preds = %27, %17
  %20 = phi ptr [ %15, %17 ], [ %28, %27 ]
  %21 = getelementptr i8, ptr %20, i32 -548
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, %5
  %24 = and i1 %18, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %20, i32 -552
  tail call fastcc void @rfkill_set_block(ptr noundef %26, i1 noundef zeroext %8) #17
  br label %27

27:                                               ; preds = %25, %19
  %28 = load ptr, ptr %20, align 4
  %29 = icmp eq ptr %28, @rfkill_list
  br i1 %29, label %30, label %19

30:                                               ; preds = %27, %13
  %31 = add nuw nsw i32 %5, 1
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %4

33:                                               ; preds = %30
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %34

34:                                               ; preds = %33, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_remove_epo_lock() local_unnamed_addr #1 {
  %1 = load volatile i32, ptr @rfkill_input_disabled, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  store i1 false, ptr @rfkill_epo_lock_active, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rfkill_is_epo_lock_active() local_unnamed_addr #4 {
  %1 = load i1, ptr @rfkill_epo_lock_active, align 1
  ret i1 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rfkill_get_global_sw_state(i32 noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %0
  %3 = load i8, ptr %2, align 1, !range !10
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rfkill_set_hw_state_reason(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 534, 0\0A.popsection", ""() #17, !srcloc !12
  unreachable

6:                                                ; preds = %3
  %7 = icmp ult i32 %2, 4
  br i1 %7, label %9, label %8, !prof !11

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %2) #17
  br label %53

9:                                                ; preds = %6
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #17
  %11 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %2
  %14 = icmp eq i32 %13, 0
  br i1 %1, label %15, label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 8
  %19 = or i32 %12, %2
  store i32 %19, ptr %11, align 4
  br label %28

20:                                               ; preds = %9
  %21 = xor i32 %2, -1
  %22 = and i32 %12, %21
  store i32 %22, ptr %11, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  br i1 %23, label %26, label %28

26:                                               ; preds = %20
  %27 = and i32 %25, -2
  store i32 %27, ptr %24, align 8
  br label %28

28:                                               ; preds = %26, %20, %15
  %29 = phi i32 [ %27, %26 ], [ %18, %15 ], [ %25, %20 ]
  %30 = and i32 %29, 7
  %31 = icmp ne i32 %30, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %10) #17
  %32 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  %33 = load i8, ptr %32, align 4, !range !10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %37 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  %38 = load i32, ptr %36, align 8
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %37, i32 noundef %41) #17
  br label %42

42:                                               ; preds = %35, %28
  %43 = load ptr, ptr @system_wq, align 4
  %44 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %43, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  %45 = load i8, ptr %32, align 4, !range !10
  %46 = icmp eq i8 %45, 0
  %47 = xor i1 %14, %1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16
  %51 = load ptr, ptr @system_wq, align 4
  %52 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %51, ptr noundef %50) #17
  br label %53

53:                                               ; preds = %49, %42, %8
  %54 = phi i1 [ %1, %8 ], [ %31, %49 ], [ %31, %42 ]
  ret i1 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rfkill_set_sw_state(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 583, 0\0A.popsection", ""() #17, !srcloc !13
  unreachable

5:                                                ; preds = %2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #17
  %7 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, -1
  %10 = select i1 %9, i32 2, i32 4
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  %13 = or i32 %10, %8
  %14 = select i1 %1, i32 %13, i32 %12
  store i32 %14, ptr %7, align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %1, i1 true, i1 %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %6) #17
  %18 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 4, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %5
  %22 = and i32 %8, 2
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, %17
  %25 = select i1 %24, i1 true, i1 %16
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %27) #17
  %30 = load i8, ptr %18, align 4, !range !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  %34 = load i32, ptr %7, align 8
  %35 = and i32 %34, 7
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %33, i32 noundef %37) #17
  br label %38

38:                                               ; preds = %32, %26
  %39 = load ptr, ptr @system_wq, align 4
  %40 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %39, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  br label %41

41:                                               ; preds = %38, %5
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_init_sw_state(ptr noundef %0, i1 noundef zeroext %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 609, 0\0A.popsection", ""() #17, !srcloc !14
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 610, 0\0A.popsection", ""() #17, !srcloc !15
  unreachable

10:                                               ; preds = %5
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #17
  %12 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, -1
  %15 = select i1 %14, i32 2, i32 4
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = or i32 %15, %13
  %19 = select i1 %1, i32 %18, i32 %17
  store i32 %19, ptr %12, align 8
  %20 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 6
  store i8 1, ptr %20, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %11) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_set_states(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #17, !srcloc !16
  unreachable

6:                                                ; preds = %3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #17
  %8 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp sgt i32 %9, -1
  %11 = select i1 %10, i32 2, i32 4
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = or i32 %11, %9
  %15 = select i1 %1, i32 %14, i32 %13
  %16 = and i32 %15, -2
  %17 = zext i1 %2 to i32
  %18 = or i32 %16, %17
  store i32 %18, ptr %8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %7) #17
  %19 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 4, !range !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 6
  store i8 1, ptr %23, align 1
  br label %47

24:                                               ; preds = %6
  %25 = and i32 %9, 2
  %26 = icmp eq i32 %25, 0
  %27 = xor i1 %26, %1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = and i32 %9, 1
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %30, %2
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16
  %34 = load ptr, ptr @system_wq, align 4
  %35 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %33) #17
  %36 = load i8, ptr %19, align 4, !range !10
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  %40 = load i32, ptr %8, align 8
  %41 = and i32 %40, 7
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %39, i32 noundef %43) #17
  br label %44

44:                                               ; preds = %38, %32
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  br label %47

47:                                               ; preds = %44, %22
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @rfkill_find_type(ptr noundef readonly %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(5) @.str.3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(10) @.str.4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(14) @.str.5)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(6) @.str.6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(5) @.str.7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.8)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(3) @.str.9)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.10)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 8, i32 0
  br label %28

28:                                               ; preds = %24, %21, %18, %15, %12, %9, %6, %3, %1
  %29 = phi i32 [ 0, %1 ], [ 1, %3 ], [ 2, %6 ], [ 3, %9 ], [ 4, %12 ], [ 5, %15 ], [ 6, %18 ], [ 7, %21 ], [ %27, %24 ]
  ret i32 %29
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_pause_polling(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 862, 0\0A.popsection", ""() #17, !srcloc !17
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 7
  store i8 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15
  %12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %11) #17
  br label %13

13:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_resume_polling(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 874, 0\0A.popsection", ""() #17, !srcloc !18
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 7
  store i8 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 1, !range !10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr @system_power_efficient_wq, align 4
  %16 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15
  %17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %16, i32 noundef 0) #17
  br label %18

18:                                               ; preds = %14, %9, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rfkill_blocked(ptr noundef %0) #1 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #17
  %5 = and i32 %4, 7
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rfkill_soft_blocked(ptr noundef %0) #1 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %2) #17
  %5 = and i32 %4, 2
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rfkill_alloc(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 971, i32 noundef 9, ptr noundef null) #17
  br label %36

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rfkill_ops, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 974, i32 noundef 9, ptr noundef null) #17
  br label %36

13:                                               ; preds = %8
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 977, i32 noundef 9, ptr noundef null) #17
  br label %36

16:                                               ; preds = %13
  %17 = add i32 %2, -9
  %18 = icmp ult i32 %17, -8
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 980, i32 noundef 9, ptr noundef null) #17
  br label %36

20:                                               ; preds = %16
  %21 = tail call i32 @strlen(ptr noundef nonnull %0)
  %22 = add i32 %21, 641
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  store i32 0, ptr %23, align 64
  %26 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 14
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 14, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 1
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 18
  %30 = tail call ptr @strcpy(ptr noundef %29, ptr noundef nonnull %0)
  %31 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 9
  store ptr %3, ptr %31, align 8
  %32 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 10
  store ptr %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 13
  %34 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 13, i32 31
  store ptr @rfkill_class, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rfkill, ptr %23, i32 0, i32 13, i32 1
  store ptr %1, ptr %35, align 4
  tail call void @device_initialize(ptr noundef %33) #17
  br label %36

36:                                               ; preds = %25, %20, %19, %15, %12, %7
  %37 = phi ptr [ null, %7 ], [ null, %12 ], [ null, %15 ], [ null, %19 ], [ %23, %25 ], [ null, %20 ]
  ret ptr %37
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rfkill_register(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %87, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %5 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %85

8:                                                ; preds = %3
  %9 = load i32, ptr @rfkill_register.rfkill_no, align 4
  %10 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 4
  store i32 %9, ptr %10, align 8
  %11 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %9) #17
  %12 = load i32, ptr @rfkill_register.rfkill_no, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr @rfkill_register.rfkill_no, align 4
  %14 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rfkill_list, i32 0, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.list_head, ptr @rfkill_list, i32 0, i32 1), align 4
  store ptr @rfkill_list, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 14, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %14, ptr %15, align 4
  %17 = tail call i32 @device_add(ptr noundef %4) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 12
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 13, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 4
  br label %29

29:                                               ; preds = %27, %23, %19
  %30 = phi ptr [ %21, %19 ], [ %28, %27 ], [ %25, %23 ]
  %31 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11, i32 1
  store ptr @rfkill_led_trigger_activate, ptr %32, align 4
  %33 = tail call i32 @led_trigger_register(ptr noundef %31) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %29
  store i8 1, ptr %5, align 4
  %36 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15
  store i32 -32, ptr %36, align 8
  %37 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15, i32 0, i32 2
  store ptr @rfkill_poll, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %40, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #17
  %41 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16
  store i32 -32, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16, i32 1
  store volatile ptr %42, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16, i32 1, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16, i32 2
  store ptr @rfkill_uevent_work, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 17
  store i32 -32, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 17, i32 1
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 17, i32 1, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 17, i32 2
  store ptr @rfkill_sync_work, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 9
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %35
  %54 = load ptr, ptr @system_power_efficient_wq, align 4
  %55 = tail call i32 @round_jiffies_relative(i32 noundef 500) #17
  %56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %54, ptr noundef %36, i32 noundef %55) #17
  br label %57

57:                                               ; preds = %53, %35
  %58 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 6
  %59 = load i8, ptr %58, align 1, !range !10
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i1, ptr @rfkill_epo_lock_active, align 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %61, %57
  %64 = load ptr, ptr @system_wq, align 4
  %65 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %64, ptr noundef %45) #17
  br label %76

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = load volatile i32, ptr @rfkill_input_disabled, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = and i32 %68, 2
  %73 = icmp ne i32 %72, 0
  %74 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  tail call fastcc void @__rfkill_switch_all(i32 noundef %75, i1 noundef zeroext %73)
  br label %76

76:                                               ; preds = %71, %66, %63
  %77 = load ptr, ptr @system_wq, align 4
  %78 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %77, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  tail call fastcc void @rfkill_send_events(ptr noundef nonnull %0, i32 noundef 0)
  br label %85

79:                                               ; preds = %29
  tail call void @device_del(ptr noundef %4) #17
  br label %80

80:                                               ; preds = %79, %8
  %81 = phi i32 [ %17, %8 ], [ %33, %79 ]
  %82 = load ptr, ptr %16, align 4
  %83 = load ptr, ptr %14, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %16, align 4
  br label %85

85:                                               ; preds = %80, %76, %3
  %86 = phi i32 [ 0, %76 ], [ %81, %80 ], [ -114, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %87

87:                                               ; preds = %85, %1
  %88 = phi i32 [ -22, %1 ], [ %86, %85 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_poll(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -560
  %3 = getelementptr i8, ptr %0, i32 -536
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -532
  %7 = load ptr, ptr %6, align 4
  tail call void %5(ptr noundef %2, ptr noundef %7) #17
  %8 = load ptr, ptr @system_power_efficient_wq, align 4
  %9 = tail call i32 @round_jiffies_relative(i32 noundef 500) #17
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %0, i32 noundef %9) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_uevent_work(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %2 = getelementptr i8, ptr %0, i32 -584
  %3 = load i8, ptr %2, align 4, !range !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -604
  %7 = getelementptr i8, ptr %0, i32 -524
  %8 = tail call i32 @kobject_uevent(ptr noundef %7, i32 noundef 2) #17
  tail call fastcc void @rfkill_send_events(ptr noundef %6, i32 noundef 2) #17
  br label %9

9:                                                ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_sync_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -620
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %3 = getelementptr i8, ptr %0, i32 -616
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1, !range !10
  %7 = icmp ne i8 %6, 0
  tail call fastcc void @rfkill_set_block(ptr noundef %2, i1 noundef zeroext %7)
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rfkill_send_events(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr @rfkill_fds, align 4
  %4 = icmp eq ptr %3, @rfkill_fds
  br i1 %4, label %44, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 1
  %8 = trunc i32 %1 to i8
  %9 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 3
  br label %11

11:                                               ; preds = %41, %5
  %12 = phi ptr [ %3, %5 ], [ %42, %41 ]
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 20) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rfkill_int_event, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %6, align 8
  store i32 %18, ptr %17, align 8
  %19 = load i32, ptr %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.rfkill_int_event, ptr %14, i32 0, i32 1, i32 1
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rfkill_int_event, ptr %14, i32 0, i32 1, i32 2
  store i8 %8, ptr %22, align 1
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #17
  %24 = load i32, ptr %9, align 8
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.rfkill_int_event, ptr %14, i32 0, i32 1, i32 4
  store i8 %26, ptr %27, align 1
  %28 = and i32 %24, 6
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.rfkill_int_event, ptr %14, i32 0, i32 1, i32 3
  store i8 %30, ptr %31, align 2
  %32 = load i32, ptr %10, align 4
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.rfkill_int_event, ptr %14, i32 0, i32 1, i32 5
  store i8 %33, ptr %34, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %23) #17
  %35 = getelementptr inbounds %struct.rfkill_data, ptr %12, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %35) #17
  %36 = getelementptr inbounds %struct.rfkill_data, ptr %12, i32 0, i32 1
  %37 = getelementptr inbounds %struct.rfkill_data, ptr %12, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr %14, ptr %37, align 4
  store ptr %36, ptr %14, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %14, ptr %38, align 4
  tail call void @mutex_unlock(ptr noundef %35) #17
  %40 = getelementptr inbounds %struct.rfkill_data, ptr %12, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %40, i32 noundef 1, i32 noundef 1, ptr noundef null) #17
  br label %41

41:                                               ; preds = %16, %11
  %42 = load ptr, ptr %12, align 4
  %43 = icmp eq ptr %42, @rfkill_fds
  br i1 %43, label %44, label %11

44:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_unregister(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rfkill/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1117, 0\0A.popsection", ""() #17, !srcloc !19
  unreachable

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 15
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #17
  br label %12

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 16
  %14 = tail call zeroext i1 @cancel_work_sync(ptr noundef %13) #17
  %15 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 17
  %16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %15) #17
  %17 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 5
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 13
  tail call void @device_del(ptr noundef %18) #17
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  tail call fastcc void @rfkill_send_events(ptr noundef nonnull %0, i32 noundef 1)
  %19 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 14
  %20 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 14, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %20, align 4
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  %26 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 11
  tail call void @led_trigger_unregister(ptr noundef %26) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rfkill_destroy(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rfkill, ptr %0, i32 0, i32 13
  tail call void @put_device(ptr noundef %4) #17
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rfkill_init() #8 section ".init.text" {
  %1 = load i32, ptr @rfkill_default_state, align 4
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  store i8 %3, ptr @rfkill_global_states, align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1
  store i8 %3, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), align 1
  %4 = tail call i32 @__class_register(ptr noundef nonnull @rfkill_class, ptr noundef nonnull @rfkill_init.__key) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = tail call i32 @misc_register(ptr noundef nonnull @rfkill_miscdev) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  store i32 -32, ptr @rfkill_global_led_trigger_work, align 4
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @rfkill_global_led_trigger_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @rfkill_global_led_trigger_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @rfkill_global_led_trigger_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @rfkill_global_led_trigger_work, i32 0, i32 1, i32 1), align 4
  store ptr @rfkill_global_led_trigger_worker, ptr getelementptr inbounds (%struct.work_struct, ptr @rfkill_global_led_trigger_work, i32 0, i32 2), align 4
  store ptr @.str.27, ptr @rfkill_any_led_trigger, align 4
  %10 = tail call i32 @led_trigger_register(ptr noundef nonnull @rfkill_any_led_trigger) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  store ptr @.str.28, ptr @rfkill_none_led_trigger, align 4
  %13 = tail call i32 @led_trigger_register(ptr noundef nonnull @rfkill_none_led_trigger) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @led_trigger_unregister(ptr noundef nonnull @rfkill_any_led_trigger) #17
  br label %22

16:                                               ; preds = %12
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  %19 = tail call i32 @rfkill_handler_init() #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  tail call fastcc void @rfkill_global_led_trigger_unregister()
  br label %22

22:                                               ; preds = %21, %15, %9
  %23 = phi i32 [ %19, %21 ], [ %13, %15 ], [ %10, %9 ]
  tail call void @misc_deregister(ptr noundef nonnull @rfkill_miscdev) #17
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i32 [ %7, %6 ], [ %23, %22 ]
  tail call void @class_unregister(ptr noundef nonnull @rfkill_class) #17
  br label %26

26:                                               ; preds = %24, %16, %0
  %27 = phi i32 [ 0, %16 ], [ %4, %0 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rfkill_exit() #8 section ".exit.text" {
  tail call void @rfkill_handler_exit() #17
  tail call fastcc void @rfkill_global_led_trigger_unregister()
  tail call void @misc_deregister(ptr noundef nonnull @rfkill_miscdev) #17
  tail call void @class_unregister(ptr noundef nonnull @rfkill_class) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_handler_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rfkill_global_led_trigger_unregister() unnamed_addr #1 {
  tail call void @led_trigger_unregister(ptr noundef nonnull @rfkill_none_led_trigger) #17
  tail call void @led_trigger_unregister(ptr noundef nonnull @rfkill_any_led_trigger) #17
  %1 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @rfkill_global_led_trigger_work) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_dev_uevent(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -80
  %4 = getelementptr i8, ptr %0, i32 556
  %5 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef %4) #17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -76
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [9 x ptr], ptr @rfkill_types, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %7
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #17
  %16 = getelementptr i8, ptr %0, i32 -72
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 -68
  %19 = load i32, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %15) #17
  %20 = and i32 %17, 1
  %21 = icmp eq i32 %20, 0
  %22 = lshr i32 %17, 1
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  %25 = select i1 %21, i32 %24, i32 2
  %26 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %25) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %19) #17
  br label %30

30:                                               ; preds = %28, %14, %7, %2
  %31 = phi i32 [ %29, %28 ], [ %5, %2 ], [ %12, %7 ], [ %26, %14 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_release(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -80
  tail call void @kfree(ptr noundef %2) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 556
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [9 x ptr], ptr @rfkill_types, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @persistent_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -59
  %5 = load i8, ptr %4, align 1, !range !10
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = lshr i32 %5, 1
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = select i1 %7, i32 %10, i32 2
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !20
  %7 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  call fastcc void @rfkill_set_block(ptr noundef %6, i1 noundef zeroext %16)
  call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %17

17:                                               ; preds = %14, %11, %8, %4
  %18 = phi i32 [ %3, %14 ], [ -1, %4 ], [ %9, %8 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soft_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soft_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !20
  %7 = tail call zeroext i1 @capable(i32 noundef 12) #17
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %15 = load i32, ptr %5, align 4
  %16 = icmp ne i32 %15, 0
  call fastcc void @rfkill_set_block(ptr noundef %6, i1 noundef zeroext %16)
  call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %17

17:                                               ; preds = %14, %11, %8, %4
  %18 = phi i32 [ %3, %14 ], [ -1, %4 ], [ %9, %8 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hard_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hard_block_reasons_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #11 {
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_suspend(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -57
  store i8 1, ptr %2, align 1
  %3 = getelementptr i8, ptr %0, i32 480
  %4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %3) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_resume(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -80
  %3 = getelementptr i8, ptr %0, i32 -57
  store i8 0, ptr %3, align 1
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -59
  %9 = load i8, ptr %8, align 1, !range !10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -72
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  tail call fastcc void @rfkill_set_block(ptr noundef %2, i1 noundef zeroext %15)
  br label %16

16:                                               ; preds = %11, %7
  %17 = getelementptr i8, ptr %0, i32 -56
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 -58
  %23 = load i8, ptr %22, align 2, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr @system_power_efficient_wq, align 4
  %27 = getelementptr i8, ptr %0, i32 480
  %28 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %27, i32 noundef 0) #17
  br label %29

29:                                               ; preds = %25, %21, %16, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_led_trigger_activate(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -12
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 -24
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 255, i32 0
  tail call void @led_trigger_event(ptr noundef %3, i32 noundef %12) #17
  br label %13

13:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_handler_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rfkill_global_led_trigger_worker(ptr nocapture noundef readnone %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @rfkill_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @rfkill_list
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -544
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 255, %2 ], [ 0, %6 ]
  %13 = phi i32 [ 0, %2 ], [ 255, %6 ]
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  tail call void @led_trigger_event(ptr noundef nonnull @rfkill_any_led_trigger, i32 noundef %13) #17
  tail call void @led_trigger_event(ptr noundef nonnull @rfkill_none_led_trigger, i32 noundef %12) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_fop_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rfkill_data, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #17
  %9 = getelementptr inbounds %struct.rfkill_data, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds %struct.rfkill_data, ptr %7, i32 0, i32 3
  br label %12

12:                                               ; preds = %36, %4
  %13 = load volatile ptr, ptr %9, align 4
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i32, ptr %10, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  call void @mutex_unlock(ptr noundef %8) #17
  %20 = load volatile ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, %9
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !20
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #17
  %23 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #17
  %24 = load volatile ptr, ptr %9, align 4
  %25 = icmp eq ptr %24, %9
  br i1 %25, label %26, label %33

26:                                               ; preds = %29, %22
  %27 = phi i32 [ %30, %29 ], [ %23, %22 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  call void @schedule() #17
  %30 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #17
  %31 = load volatile ptr, ptr %9, align 4
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %26, label %33

33:                                               ; preds = %29, %22
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %5) #17
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi i32 [ 0, %33 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #17
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi i32 [ %35, %34 ], [ 0, %19 ]
  call void @mutex_lock(ptr noundef %8) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %12, label %60

39:                                               ; preds = %12
  %40 = call i32 @llvm.umin.i32(i32 %2, i32 9)
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %40, i32 -1090519040) #20, !srcloc !21
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rfkill_int_event, ptr %13, i32 0, i32 1
  %46 = tail call ptr @llvm.thread.pointer() #17
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #21, !srcloc !22
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #17, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !24
  %51 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %45, i32 noundef %40) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #17, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !24
  br label %52

52:                                               ; preds = %44, %39
  %53 = phi i32 [ %51, %44 ], [ %40, %39 ]
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 %40, i32 -14
  %56 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %13, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  call void @kfree(ptr noundef %13) #17
  br label %60

60:                                               ; preds = %52, %36, %15
  %61 = phi i32 [ %55, %52 ], [ -11, %15 ], [ %37, %36 ]
  call void @mutex_unlock(ptr noundef %8) #17
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_fop_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca %struct.rfkill_event_ext, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(9) %5, i8 0, i32 9, i1 false), !annotation !20
  %6 = icmp ult i32 %2, 7
  br i1 %6, label %92, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 9)
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #20, !srcloc !25
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !11

12:                                               ; preds = %7
  %13 = tail call ptr @llvm.thread.pointer() #17
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #21, !srcloc !22
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #17, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !24
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %8) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #17, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !11

20:                                               ; preds = %12, %7
  %21 = phi i32 [ %18, %12 ], [ %8, %7 ]
  %22 = sub i32 %8, %21
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #17
  br label %92

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.rfkill_event_ext, ptr %5, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = icmp ugt i8 %26, 8
  br i1 %27, label %92, label %28

28:                                               ; preds = %24
  call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %29 = getelementptr inbounds %struct.rfkill_event_ext, ptr %5, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %90 [
    i8 3, label %36
    i8 2, label %31
  ]

31:                                               ; preds = %28
  %32 = load ptr, ptr @rfkill_list, align 4
  %33 = icmp eq ptr %32, @rfkill_list
  br i1 %33, label %90, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rfkill_event_ext, ptr %5, i32 0, i32 3
  br label %69

36:                                               ; preds = %28
  %37 = load i8, ptr %25, align 4
  %38 = getelementptr inbounds %struct.rfkill_event_ext, ptr %5, i32 0, i32 3
  %39 = load i8, ptr %38, align 2
  %40 = icmp ne i8 %39, 0
  %41 = zext i1 %40 to i8
  %42 = icmp eq i8 %37, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i8 %41, ptr @rfkill_global_states, align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 1), align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 3), align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 4), align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 5), align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 6), align 1
  store i8 %41, ptr getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 7), align 1
  br label %47

44:                                               ; preds = %36
  %45 = zext i8 %37 to i32
  %46 = getelementptr [9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi ptr [ getelementptr inbounds ([9 x %struct.anon.62], ptr @rfkill_global_states, i32 0, i32 8), %43 ], [ %46, %44 ]
  store i8 %41, ptr %48, align 1
  %49 = load ptr, ptr @rfkill_list, align 4
  %50 = icmp eq ptr %49, @rfkill_list
  br i1 %50, label %90, label %51

51:                                               ; preds = %67, %47
  %52 = phi i8 [ %68, %67 ], [ %37, %47 ]
  %53 = phi ptr [ %65, %67 ], [ %49, %47 ]
  %54 = getelementptr i8, ptr %53, i32 -548
  %55 = load i32, ptr %54, align 4
  %56 = zext i8 %52 to i32
  %57 = icmp eq i32 %55, %56
  %58 = icmp eq i8 %52, 0
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = getelementptr i8, ptr %53, i32 -552
  %62 = load i8, ptr %38, align 2
  %63 = icmp ne i8 %62, 0
  call fastcc void @rfkill_set_block(ptr noundef %61, i1 noundef zeroext %63)
  br label %64

64:                                               ; preds = %60, %51
  %65 = load ptr, ptr %53, align 4
  %66 = icmp eq ptr %65, @rfkill_list
  br i1 %66, label %90, label %67

67:                                               ; preds = %64
  %68 = load i8, ptr %25, align 4
  br label %51

69:                                               ; preds = %87, %34
  %70 = phi ptr [ %32, %34 ], [ %88, %87 ]
  %71 = getelementptr i8, ptr %70, i32 -552
  %72 = getelementptr i8, ptr %70, i32 -536
  %73 = load i32, ptr %72, align 8
  %74 = load i32, ptr %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = getelementptr i8, ptr %70, i32 -548
  %78 = load i32, ptr %77, align 4
  %79 = load i8, ptr %25, align 4
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  %82 = icmp eq i8 %79, 0
  %83 = or i1 %82, %81
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i8, ptr %35, align 2
  %86 = icmp ne i8 %85, 0
  call fastcc void @rfkill_set_block(ptr noundef %71, i1 noundef zeroext %86)
  br label %87

87:                                               ; preds = %84, %76, %69
  %88 = load ptr, ptr %70, align 4
  %89 = icmp eq ptr %88, @rfkill_list
  br i1 %89, label %90, label %69

90:                                               ; preds = %87, %64, %47, %31, %28
  %91 = phi i32 [ -22, %28 ], [ %8, %47 ], [ %8, %31 ], [ %8, %64 ], [ %8, %87 ]
  call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  br label %92

92:                                               ; preds = %90, %24, %20, %4
  %93 = phi i32 [ %91, %90 ], [ -22, %4 ], [ -22, %24 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #17
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_fop_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #17
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  %18 = select i1 %17, i32 260, i32 65
  tail call void @mutex_unlock(ptr noundef %14) #17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_fop_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = and i32 %1, 65535
  %5 = icmp eq i32 %4, 20993
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rfkill_data, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.rfkill_data, ptr %8, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rfkill_input_disabled) #17, !srcloc !27
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rfkill_input_disabled, ptr nonnull @rfkill_input_disabled, i32 1, ptr nonnull elementtype(i32) @rfkill_input_disabled) #17, !srcloc !28
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #22
  br label %19

19:                                               ; preds = %17, %13
  store i8 1, ptr %10, align 4
  br label %20

20:                                               ; preds = %19, %6
  tail call void @mutex_unlock(ptr noundef %9) #17
  br label %21

21:                                               ; preds = %20, %3
  %22 = phi i32 [ 0, %20 ], [ -38, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_fop_open(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 52) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.32, ptr noundef nonnull @rfkill_fop_open.__key) #17
  %10 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %10, ptr noundef nonnull @.str.34, ptr noundef nonnull @rfkill_fop_open.__key.33) #17
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  tail call void @mutex_lock(ptr noundef %9) #17
  %11 = load ptr, ptr @rfkill_list, align 4
  %12 = icmp eq ptr %11, @rfkill_list
  br i1 %12, label %47, label %13

13:                                               ; preds = %18, %6
  %14 = phi ptr [ %45, %18 ], [ %11, %6 ]
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 20) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 -552
  %20 = getelementptr inbounds %struct.rfkill_int_event, ptr %16, i32 0, i32 1
  %21 = getelementptr i8, ptr %14, i32 -536
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %20, align 8
  %23 = getelementptr i8, ptr %14, i32 -548
  %24 = load i32, ptr %23, align 4
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.rfkill_int_event, ptr %16, i32 0, i32 1, i32 1
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rfkill_int_event, ptr %16, i32 0, i32 1, i32 2
  store i8 0, ptr %27, align 1
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #17
  %29 = getelementptr i8, ptr %14, i32 -544
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.rfkill_int_event, ptr %16, i32 0, i32 1, i32 4
  store i8 %32, ptr %33, align 1
  %34 = load i32, ptr %29, align 8
  %35 = and i32 %34, 6
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.rfkill_int_event, ptr %16, i32 0, i32 1, i32 3
  store i8 %37, ptr %38, align 2
  %39 = getelementptr i8, ptr %14, i32 -540
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.rfkill_int_event, ptr %16, i32 0, i32 1, i32 5
  store i8 %41, ptr %42, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %28) #17
  %43 = load ptr, ptr %8, align 4
  store ptr %16, ptr %8, align 4
  store ptr %7, ptr %16, align 8
  %44 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %16, ptr %43, align 4
  %45 = load ptr, ptr %14, align 4
  %46 = icmp eq ptr %45, @rfkill_list
  br i1 %46, label %47, label %13

47:                                               ; preds = %18, %6
  %48 = load ptr, ptr @rfkill_fds, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %4, ptr %49, align 4
  store ptr %48, ptr %4, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr @rfkill_fds, ptr %50, align 4
  store volatile ptr %4, ptr @rfkill_fds, align 4
  tail call void @mutex_unlock(ptr noundef %9) #17
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  %51 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %51, align 8
  %52 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #17
  br label %61

53:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %9) #17
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  %54 = load ptr, ptr %7, align 8
  %55 = icmp eq ptr %54, %7
  br i1 %55, label %60, label %56

56:                                               ; preds = %56, %53
  %57 = phi ptr [ %58, %56 ], [ %54, %53 ]
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %57) #17
  %59 = icmp eq ptr %58, %7
  br i1 %59, label %60, label %56

60:                                               ; preds = %56, %53
  tail call void @kfree(ptr noundef nonnull %4) #17
  br label %61

61:                                               ; preds = %60, %47, %2
  %62 = phi i32 [ -12, %60 ], [ %52, %47 ], [ -12, %2 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rfkill_fop_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @rfkill_global_mutex) #17
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @rfkill_global_mutex) #17
  %9 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %16, label %12

12:                                               ; preds = %12, %2
  %13 = phi ptr [ %14, %12 ], [ %10, %2 ]
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %13) #17
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %16, label %12

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.rfkill_data, ptr %4, i32 0, i32 4
  %18 = load i8, ptr %17, align 4, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @rfkill_input_disabled) #17, !srcloc !27
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rfkill_input_disabled, ptr nonnull @rfkill_input_disabled, i32 1, ptr nonnull elementtype(i32) @rfkill_input_disabled) #17, !srcloc !31
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #22
  br label %26

26:                                               ; preds = %24, %20, %16
  tail call void @kfree(ptr noundef %4) #17
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly }
attributes #22 = { cold nounwind }

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
!9 = !{i64 2152013023, i64 2152013505, i64 2152013060, i64 2152013116, i64 2152013150, i64 2152013174, i64 2152013215, i64 2152013236, i64 2152013264, i64 2152013298}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2152036350, i64 2152036832, i64 2152036387, i64 2152036443, i64 2152036477, i64 2152036501, i64 2152036542, i64 2152036563, i64 2152036591, i64 2152036625}
!13 = !{i64 2152040491, i64 2152040973, i64 2152040528, i64 2152040584, i64 2152040618, i64 2152040642, i64 2152040683, i64 2152040704, i64 2152040732, i64 2152040766}
!14 = !{i64 2152043302, i64 2152043784, i64 2152043339, i64 2152043395, i64 2152043429, i64 2152043453, i64 2152043494, i64 2152043515, i64 2152043543, i64 2152043577}
!15 = !{i64 2152044324, i64 2152044806, i64 2152044361, i64 2152044417, i64 2152044451, i64 2152044475, i64 2152044516, i64 2152044537, i64 2152044565, i64 2152044599}
!16 = !{i64 2152046993, i64 2152047475, i64 2152047030, i64 2152047086, i64 2152047120, i64 2152047144, i64 2152047185, i64 2152047206, i64 2152047234, i64 2152047268}
!17 = !{i64 2152072880, i64 2152073362, i64 2152072917, i64 2152072973, i64 2152073007, i64 2152073031, i64 2152073072, i64 2152073093, i64 2152073121, i64 2152073155}
!18 = !{i64 2152075191, i64 2152075673, i64 2152075228, i64 2152075284, i64 2152075318, i64 2152075342, i64 2152075383, i64 2152075404, i64 2152075432, i64 2152075466}
!19 = !{i64 2152102883, i64 2152103366, i64 2152102920, i64 2152102976, i64 2152103010, i64 2152103034, i64 2152103075, i64 2152103096, i64 2152103124, i64 2152103158}
!20 = !{!"auto-init"}
!21 = !{i64 2151550485, i64 2151550510}
!22 = !{i64 4046019}
!23 = !{i64 4046216}
!24 = !{i64 2151531495}
!25 = !{i64 2151549907, i64 2151549932}
!26 = !{i64 2148041291}
!27 = !{i64 441286, i64 2147931257, i64 2147931283, i64 2147931330, i64 2147931352, i64 2147931380, i64 2147931400}
!28 = !{i64 2147944153, i64 2147944185, i64 2147944214, i64 2147944248, i64 2147944279, i64 2147944302}
!29 = !{i64 2148041494}
!30 = !{i64 2148044124}
!31 = !{i64 2147946510, i64 2147946542, i64 2147946571, i64 2147946605, i64 2147946636, i64 2147946659}
!32 = !{i64 2148044327}
