; ModuleID = '/llk/IR/drivers/base/power/wakeup.c_pt.bc'
source_filename = "../drivers/base/power/wakeup.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_source_create:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_source_create\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_source_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_source_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_source_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_source_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_source_add:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_source_add\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_source_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_source_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_source_remove\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_source_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_source_register:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_source_register\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_source_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_source_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_source_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_source_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_sources_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_sources_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_sources_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_sources_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_sources_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_sources_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_sources_walk_start:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_sources_walk_start\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_sources_walk_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wakeup_sources_walk_next:\09\09\09\09\09"
module asm "\09.asciz \09\22wakeup_sources_walk_next\22\09\09\09\09\09"
module asm "__kstrtabns_wakeup_sources_walk_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_wakeup_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22device_wakeup_enable\22\09\09\09\09\09"
module asm "__kstrtabns_device_wakeup_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_wakeup_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22device_wakeup_disable\22\09\09\09\09\09"
module asm "__kstrtabns_device_wakeup_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_set_wakeup_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22device_set_wakeup_capable\22\09\09\09\09\09"
module asm "__kstrtabns_device_set_wakeup_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_init_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22device_init_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_device_init_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_set_wakeup_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22device_set_wakeup_enable\22\09\09\09\09\09"
module asm "__kstrtabns_device_set_wakeup_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_stay_awake:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_stay_awake\22\09\09\09\09\09"
module asm "__kstrtabns___pm_stay_awake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_stay_awake:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_stay_awake\22\09\09\09\09\09"
module asm "__kstrtabns_pm_stay_awake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_relax:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_relax\22\09\09\09\09\09"
module asm "__kstrtabns___pm_relax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_relax:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_relax\22\09\09\09\09\09"
module asm "__kstrtabns_pm_relax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_wakeup_ws_event:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_wakeup_ws_event\22\09\09\09\09\09"
module asm "__kstrtabns_pm_wakeup_ws_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_wakeup_dev_event:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_wakeup_dev_event\22\09\09\09\09\09"
module asm "__kstrtabns_pm_wakeup_dev_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_print_active_wakeup_sources:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_print_active_wakeup_sources\22\09\09\09\09\09"
module asm "__kstrtabns_pm_print_active_wakeup_sources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_system_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_system_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_pm_system_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }
%struct.srcu_data = type { [2 x i32], [2 x i32], [48 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [56 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@wakeup_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_wakeup_source_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_source_create = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_source_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_source_create to i32), ptr @__kstrtab_wakeup_source_create, ptr @__kstrtabns_wakeup_source_create }, section "___ksymtab_gpl+wakeup_source_create", align 4
@__kstrtab_wakeup_source_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_source_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_source_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_source_destroy to i32), ptr @__kstrtab_wakeup_source_destroy, ptr @__kstrtabns_wakeup_source_destroy }, section "___ksymtab_gpl+wakeup_source_destroy", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/base/power/wakeup.c\00", align 1
@events_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@wakeup_sources = internal global %struct.list_head { ptr @wakeup_sources, ptr @wakeup_sources }, align 4
@__kstrtab_wakeup_source_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_source_add = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_source_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_source_add to i32), ptr @__kstrtab_wakeup_source_add, ptr @__kstrtabns_wakeup_source_add }, section "___ksymtab_gpl+wakeup_source_add", align 4
@wakeup_srcu = internal global %struct.srcu_struct { [1 x %struct.srcu_node] zeroinitializer, [2 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @wakeup_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @wakeup_srcu, i64 176), ptr getelementptr (i8, ptr @wakeup_srcu, i64 176) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, %struct.lockdep_map zeroinitializer }, align 4
@__kstrtab_wakeup_source_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_source_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_source_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_source_remove to i32), ptr @__kstrtab_wakeup_source_remove, ptr @__kstrtabns_wakeup_source_remove }, section "___ksymtab_gpl+wakeup_source_remove", align 4
@__kstrtab_wakeup_source_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_source_register = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_source_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_source_register to i32), ptr @__kstrtab_wakeup_source_register, ptr @__kstrtabns_wakeup_source_register }, section "___ksymtab_gpl+wakeup_source_register", align 4
@__kstrtab_wakeup_source_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_source_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_source_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_source_unregister to i32), ptr @__kstrtab_wakeup_source_unregister, ptr @__kstrtabns_wakeup_source_unregister }, section "___ksymtab_gpl+wakeup_source_unregister", align 4
@__kstrtab_wakeup_sources_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_sources_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_sources_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_sources_read_lock to i32), ptr @__kstrtab_wakeup_sources_read_lock, ptr @__kstrtabns_wakeup_sources_read_lock }, section "___ksymtab_gpl+wakeup_sources_read_lock", align 4
@__kstrtab_wakeup_sources_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_sources_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_sources_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_sources_read_unlock to i32), ptr @__kstrtab_wakeup_sources_read_unlock, ptr @__kstrtabns_wakeup_sources_read_unlock }, section "___ksymtab_gpl+wakeup_sources_read_unlock", align 4
@__kstrtab_wakeup_sources_walk_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_sources_walk_start = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_sources_walk_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_sources_walk_start to i32), ptr @__kstrtab_wakeup_sources_walk_start, ptr @__kstrtabns_wakeup_sources_walk_start }, section "___ksymtab_gpl+wakeup_sources_walk_start", align 4
@__kstrtab_wakeup_sources_walk_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_wakeup_sources_walk_next = external dso_local constant [0 x i8], align 1
@__ksymtab_wakeup_sources_walk_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wakeup_sources_walk_next to i32), ptr @__kstrtab_wakeup_sources_walk_next, ptr @__kstrtabns_wakeup_sources_walk_next }, section "___ksymtab_gpl+wakeup_sources_walk_next", align 4
@__kstrtab_device_wakeup_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_wakeup_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_device_wakeup_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_wakeup_enable to i32), ptr @__kstrtab_device_wakeup_enable, ptr @__kstrtabns_device_wakeup_enable }, section "___ksymtab_gpl+device_wakeup_enable", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Leftover wakeup IRQ found, overriding\0A\00", align 1
@__kstrtab_device_wakeup_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_wakeup_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_device_wakeup_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_wakeup_disable to i32), ptr @__kstrtab_device_wakeup_disable, ptr @__kstrtabns_device_wakeup_disable }, section "___ksymtab_gpl+device_wakeup_disable", align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Wakeup sysfs attributes not added\0A\00", align 1
@__kstrtab_device_set_wakeup_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_set_wakeup_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_device_set_wakeup_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_set_wakeup_capable to i32), ptr @__kstrtab_device_set_wakeup_capable, ptr @__kstrtabns_device_set_wakeup_capable }, section "___ksymtab_gpl+device_set_wakeup_capable", align 4
@__kstrtab_device_init_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_init_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_device_init_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_init_wakeup to i32), ptr @__kstrtab_device_init_wakeup, ptr @__kstrtabns_device_init_wakeup }, section "___ksymtab_gpl+device_init_wakeup", align 4
@__kstrtab_device_set_wakeup_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_set_wakeup_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_device_set_wakeup_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_set_wakeup_enable to i32), ptr @__kstrtab_device_set_wakeup_enable, ptr @__kstrtabns_device_set_wakeup_enable }, section "___ksymtab_gpl+device_set_wakeup_enable", align 4
@__kstrtab___pm_stay_awake = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_stay_awake = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_stay_awake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_stay_awake to i32), ptr @__kstrtab___pm_stay_awake, ptr @__kstrtabns___pm_stay_awake }, section "___ksymtab_gpl+__pm_stay_awake", align 4
@__kstrtab_pm_stay_awake = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_stay_awake = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_stay_awake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_stay_awake to i32), ptr @__kstrtab_pm_stay_awake, ptr @__kstrtabns_pm_stay_awake }, section "___ksymtab_gpl+pm_stay_awake", align 4
@__kstrtab___pm_relax = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_relax = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_relax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_relax to i32), ptr @__kstrtab___pm_relax, ptr @__kstrtabns___pm_relax }, section "___ksymtab_gpl+__pm_relax", align 4
@__kstrtab_pm_relax = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_relax = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_relax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_relax to i32), ptr @__kstrtab_pm_relax, ptr @__kstrtabns_pm_relax }, section "___ksymtab_gpl+pm_relax", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_pm_wakeup_ws_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_wakeup_ws_event = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_wakeup_ws_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_wakeup_ws_event to i32), ptr @__kstrtab_pm_wakeup_ws_event, ptr @__kstrtabns_pm_wakeup_ws_event }, section "___ksymtab_gpl+pm_wakeup_ws_event", align 4
@__kstrtab_pm_wakeup_dev_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_wakeup_dev_event = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_wakeup_dev_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_wakeup_dev_event to i32), ptr @__kstrtab_pm_wakeup_dev_event, ptr @__kstrtabns_pm_wakeup_dev_event }, section "___ksymtab_gpl+pm_wakeup_dev_event", align 4
@__kstrtab_pm_print_active_wakeup_sources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_print_active_wakeup_sources = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_print_active_wakeup_sources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_print_active_wakeup_sources to i32), ptr @__kstrtab_pm_print_active_wakeup_sources, ptr @__kstrtabns_pm_print_active_wakeup_sources }, section "___ksymtab_gpl+pm_print_active_wakeup_sources", align 4
@events_check_enabled = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@saved_count = internal unnamed_addr global i32 0, align 4
@pm_abort_suspend = internal global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_pm_system_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_system_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_system_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_system_wakeup to i32), ptr @__kstrtab_pm_system_wakeup, ptr @__kstrtabns_pm_system_wakeup }, section "___ksymtab_gpl+pm_system_wakeup", align 4
@wakeup_irq_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@wakeup_irq.0 = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@wakeup_irq.1 = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@wakeup_count_wait_queue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @wakeup_count_wait_queue, i64 4), ptr getelementptr (i8, ptr @wakeup_count_wait_queue, i64 4) } }, align 4
@__initcall__kmod_wakeup__325_1215_wakeup_sources_debugfs_init2 = internal global ptr @wakeup_sources_debugfs_init, section ".initcall2.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@deleted_ws = internal global %struct.wakeup_source { ptr @.str.3, i32 0, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, %struct.timer_list zeroinitializer, i32 0, i64 0, i64 0, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i8 0 }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@wakeup_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@wakeup_source_activate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unregistered wakeup source\0A\00", align 1
@combined_event_count = internal global %struct.atomic_t zeroinitializer, align 4
@__tracepoint_wakeup_source_activate = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_wakeup_source_deactivate = external dso_local global %struct.tracepoint, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"wakeup_sources\00", align 1
@wakeup_sources_stats_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @wakeup_sources_stats_open, ptr null, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@wakeup_sources_stats_seq_ops = internal constant %struct.seq_operations { ptr @wakeup_sources_stats_seq_start, ptr @wakeup_sources_stats_seq_stop, ptr @wakeup_sources_stats_seq_next, ptr @wakeup_sources_stats_seq_show }, align 4
@.str.8 = private unnamed_addr constant [124 x i8] c"name\09\09active_count\09event_count\09wakeup_count\09expire_count\09active_since\09total_time\09max_time\09last_change\09prevent_suspend_time\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"%-12s\09%lu\09\09%lu\09\09%lu\09\09%lu\09\09%lld\09\09%lld\09\09%lld\09\09%lld\09\09%lld\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__initcall__kmod_wakeup__325_1215_wakeup_sources_debugfs_init2, ptr @__ksymtab___pm_relax, ptr @__ksymtab___pm_stay_awake, ptr @__ksymtab_device_init_wakeup, ptr @__ksymtab_device_set_wakeup_capable, ptr @__ksymtab_device_set_wakeup_enable, ptr @__ksymtab_device_wakeup_disable, ptr @__ksymtab_device_wakeup_enable, ptr @__ksymtab_pm_print_active_wakeup_sources, ptr @__ksymtab_pm_relax, ptr @__ksymtab_pm_stay_awake, ptr @__ksymtab_pm_system_wakeup, ptr @__ksymtab_pm_wakeup_dev_event, ptr @__ksymtab_pm_wakeup_ws_event, ptr @__ksymtab_wakeup_source_add, ptr @__ksymtab_wakeup_source_create, ptr @__ksymtab_wakeup_source_destroy, ptr @__ksymtab_wakeup_source_register, ptr @__ksymtab_wakeup_source_remove, ptr @__ksymtab_wakeup_source_unregister, ptr @__ksymtab_wakeup_sources_read_lock, ptr @__ksymtab_wakeup_sources_read_unlock, ptr @__ksymtab_wakeup_sources_walk_next, ptr @__ksymtab_wakeup_sources_walk_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @wakeup_source_create(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 120) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @kstrdup_const(ptr noundef %0, i32 noundef 3264) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 8
  %9 = tail call i32 @ida_alloc_range(ptr noundef nonnull @wakeup_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 1
  store i32 %9, ptr %12, align 4
  br label %15

13:                                               ; preds = %8
  tail call void @kfree_const(ptr noundef nonnull %6) #13
  br label %14

14:                                               ; preds = %13, %5
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %15

15:                                               ; preds = %14, %11, %1
  %16 = phi ptr [ %3, %11 ], [ null, %1 ], [ null, %14 ]
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_source_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @wakeup_source_deactivate(ptr noundef nonnull %0) #13
  br label %11

11:                                               ; preds = %10, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 3)) #13
  %13 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = load i64, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 7), align 8
  %18 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 7
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %17
  store i64 %20, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 7), align 8
  %21 = load i64, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 11), align 8
  %22 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 11
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %21
  store i64 %24, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 11), align 8
  %25 = load i64, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 8), align 8
  %26 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 8
  %27 = load i64, ptr %26, align 8
  %28 = tail call i64 @llvm.smax.i64(i64 %25, i64 %27) #13
  store i64 %28, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 8), align 8
  %29 = load i32, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 12), align 8
  %30 = add i32 %29, %14
  store i32 %30, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 12), align 8
  %31 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 13), align 4
  %34 = add i32 %33, %32
  store i32 %34, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 13), align 4
  %35 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 14
  %36 = load i32, ptr %35, align 8
  %37 = load i32, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 14), align 8
  %38 = add i32 %37, %36
  store i32 %38, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 14), align 8
  %39 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 15), align 4
  %42 = add i32 %41, %40
  store i32 %42, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 15), align 4
  %43 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  %45 = load i32, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 16), align 8
  %46 = add i32 %45, %44
  store i32 %46, ptr getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 16), align 8
  br label %47

47:                                               ; preds = %16, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.wakeup_source, ptr @deleted_ws, i32 0, i32 3), i32 noundef %12) #13
  %48 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  tail call void @ida_free(ptr noundef nonnull @wakeup_ida, i32 noundef %49) #13
  %50 = load ptr, ptr %0, align 8
  tail call void @kfree_const(ptr noundef %50) #13
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %51

51:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pm_relax(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @wakeup_source_deactivate(ptr noundef nonnull %0)
  br label %11

11:                                               ; preds = %10, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_source_add(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #13
  br label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %6, ptr noundef nonnull @pm_wakeup_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %7 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 18
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, -2
  store i8 %9, ptr %7, align 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @events_lock) #13
  %11 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr @wakeup_sources, align 4
  store ptr %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2, i32 1
  store ptr @wakeup_sources, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  store volatile ptr %11, ptr @wakeup_sources, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %10) #13
  br label %15

15:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm_wakeup_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr i8, ptr %0, i32 88
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = sub i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  tail call fastcc void @wakeup_source_deactivate(ptr noundef %2)
  %18 = getelementptr i8, ptr %0, i32 76
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %13, %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_source_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 9, ptr noundef null) #13
  br label %14

4:                                                ; preds = %1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @events_lock) #13
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %5) #13
  tail call void @synchronize_srcu(ptr noundef nonnull @wakeup_srcu) #13
  %11 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5
  %12 = tail call i32 @del_timer_sync(ptr noundef %11) #13
  %13 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5, i32 2
  store ptr null, ptr %13, align 4
  br label %14

14:                                               ; preds = %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @wakeup_source_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 120) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @kstrdup_const(ptr noundef %1, i32 noundef 3264) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %4, align 8
  %10 = tail call i32 @ida_alloc_range(ptr noundef nonnull @wakeup_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void @kfree_const(ptr noundef nonnull %7) #13
  br label %13

13:                                               ; preds = %12, %6
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %39

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 1
  store i32 %10, ptr %15, align 4
  %16 = icmp eq ptr %0, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %14
  %23 = tail call i32 @wakeup_source_sysfs_add(ptr noundef %0, ptr noundef nonnull %4) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %15, align 4
  tail call void @ida_free(ptr noundef nonnull @wakeup_ida, i32 noundef %26) #13
  %27 = load ptr, ptr %4, align 8
  tail call void @kfree_const(ptr noundef %27) #13
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %39

28:                                               ; preds = %22, %17
  %29 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 3
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %30, ptr noundef nonnull @pm_wakeup_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %31 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 18
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, -2
  store i8 %33, ptr %31, align 8
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @events_lock) #13
  %35 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 2
  %36 = load ptr, ptr @wakeup_sources, align 4
  store ptr %36, ptr %35, align 8
  %37 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 2, i32 1
  store ptr @wakeup_sources, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  store volatile ptr %35, ptr @wakeup_sources, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %34) #13
  br label %39

39:                                               ; preds = %28, %25, %13, %2
  %40 = phi ptr [ null, %25 ], [ %4, %28 ], [ null, %2 ], [ null, %13 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wakeup_source_sysfs_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_source_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @events_lock) #13
  %5 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %4) #13
  tail call void @synchronize_srcu(ptr noundef nonnull @wakeup_srcu) #13
  %10 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5
  %11 = tail call i32 @del_timer_sync(ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @wakeup_source_sysfs_remove(ptr noundef nonnull %0) #13
  br label %17

17:                                               ; preds = %16, %3
  tail call void @wakeup_source_destroy(ptr noundef nonnull %0)
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_source_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wakeup_sources_read_lock() #0 {
  %1 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_sources_read_unlock(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 1
  %3 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %7

7:                                                ; preds = %6, %1
  tail call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @wakeup_sources_walk_start() #3 {
  %1 = load volatile ptr, ptr @wakeup_sources, align 4
  %2 = getelementptr i8, ptr %1, i32 -8
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @wakeup_sources_walk_next(ptr noundef %0) #4 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %4 = load volatile ptr, ptr %3, align 4
  store ptr %4, ptr %2, align 4
  %5 = icmp eq ptr %4, @wakeup_sources
  br i1 %5, label %9, label %6, !prof !8

6:                                                ; preds = %1
  %7 = load volatile ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 -8
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_wakeup_enable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %10, %8 ]
  %16 = tail call ptr @wakeup_source_register(ptr noundef nonnull %0, ptr noundef %15)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #13
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  store ptr %16, ptr %20, align 8
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.wakeup_source, ptr %16, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #14
  br label %32

32:                                               ; preds = %31, %27
  store ptr %25, ptr %28, align 4
  br label %33

33:                                               ; preds = %32, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %34 = load i16, ptr %19, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %39

36:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %37 = load i16, ptr %19, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void @wakeup_source_unregister(ptr noundef nonnull %16)
  br label %39

39:                                               ; preds = %36, %33, %14, %3, %1
  %40 = phi i32 [ -22, %3 ], [ -22, %1 ], [ -12, %14 ], [ -17, %36 ], [ 0, %33 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_wakeup_attach_irq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %10, %6
  store ptr %1, ptr %7, align 4
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @device_wakeup_detach_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 4
  store ptr null, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_wakeup_arm_wake_irqs() local_unnamed_addr #0 {
  %1 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  %2 = load volatile ptr, ptr @wakeup_sources, align 4
  %3 = icmp eq ptr %2, @wakeup_sources
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %8, %4 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void @dev_pm_arm_wake_irq(ptr noundef %7) #13
  %8 = load volatile ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, @wakeup_sources
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %0
  %11 = icmp ugt i32 %1, 1
  %12 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_arm_wake_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_wakeup_disarm_wake_irqs() local_unnamed_addr #0 {
  %1 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  %2 = load volatile ptr, ptr @wakeup_sources, align 4
  %3 = icmp eq ptr %2, @wakeup_sources
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %8, %4 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void @dev_pm_disarm_wake_irq(ptr noundef %7) #13
  %8 = load volatile ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, @wakeup_sources
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %0
  %11 = icmp ugt i32 %1, 1
  %12 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %10
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %16

16:                                               ; preds = %15, %10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_disarm_wake_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_wakeup_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  store ptr null, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %12 = load i16, ptr %9, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void @wakeup_source_unregister(ptr noundef %11)
  br label %14

14:                                               ; preds = %8, %3, %1
  %15 = phi i32 [ 0, %8 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_set_wakeup_capable(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  %7 = xor i1 %6, %1
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = zext i1 %1 to i16
  %10 = and i16 %4, -2
  %11 = or i16 %10, %9
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  br i1 %1, label %21, label %25

21:                                               ; preds = %20
  %22 = tail call i32 @wakeup_sysfs_add(ptr noundef %0) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  br label %26

25:                                               ; preds = %20
  tail call void @wakeup_sysfs_remove(ptr noundef %0) #13
  br label %26

26:                                               ; preds = %25, %24, %21, %16, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wakeup_sysfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_init_wakeup(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %1, label %9, label %26

9:                                                ; preds = %4
  br i1 %8, label %10, label %24

10:                                               ; preds = %9
  %11 = or i16 %6, 1
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @wakeup_sysfs_add(ptr noundef nonnull %0) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #14
  br label %24

24:                                               ; preds = %23, %20, %16, %10, %9
  %25 = tail call i32 @device_wakeup_enable(ptr noundef nonnull %0)
  br label %47

26:                                               ; preds = %4
  br i1 %8, label %47, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #13
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %30 = load ptr, ptr %29, align 8
  store ptr null, ptr %29, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %31 = load i16, ptr %28, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void @wakeup_source_unregister(ptr noundef %30) #13
  %33 = load i16, ptr %5, align 4
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %27
  %37 = and i16 %33, -2
  store i16 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @wakeup_sysfs_remove(ptr noundef nonnull %0) #13
  br label %47

47:                                               ; preds = %46, %42, %36, %27, %26, %24, %2
  %48 = phi i32 [ -22, %2 ], [ %25, %24 ], [ 0, %27 ], [ 0, %36 ], [ 0, %42 ], [ 0, %46 ], [ 0, %26 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_set_wakeup_enable(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %5

3:                                                ; preds = %2
  %4 = tail call i32 @device_wakeup_enable(ptr noundef %0)
  br label %18

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %15 = load ptr, ptr %14, align 8
  store ptr null, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %16 = load i16, ptr %13, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void @wakeup_source_unregister(ptr noundef %15) #13
  br label %18

18:                                               ; preds = %12, %7, %5, %3
  %19 = phi i32 [ %4, %3 ], [ 0, %12 ], [ -22, %7 ], [ -22, %5 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pm_stay_awake(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  tail call fastcc void @wakeup_source_report_event(ptr noundef nonnull %0, i1 noundef zeroext false)
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5
  %7 = tail call i32 @del_timer(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 6
  store i32 0, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wakeup_source_report_event(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8
  %6 = load i8, ptr @events_check_enabled, align 1, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 18
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ne ptr %19, @pm_wakeup_timer_fn
  %21 = load i1, ptr @wakeup_source_activate.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %17
  store i1 true, ptr @wakeup_source_activate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef nonnull @.str.5) #13
  br label %25

25:                                               ; preds = %24, %17
  br i1 %20, label %58, label %26

26:                                               ; preds = %25
  %27 = load i8, ptr %13, align 8
  %28 = or i8 %27, 1
  store i8 %28, ptr %13, align 8
  %29 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = tail call i64 @ktime_get() #13
  %33 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 9
  store i64 %32, ptr %33, align 8
  %34 = load i8, ptr %13, align 8
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 10
  store i64 %32, ptr %38, align 8
  br label %39

39:                                               ; preds = %37, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @combined_event_count) #13, !srcloc !17
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @combined_event_count, ptr nonnull @combined_event_count, i32 1, ptr nonnull elementtype(i32) @combined_event_count) #13, !srcloc !18
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %42 = load ptr, ptr %0, align 8
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wakeup_source_activate, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = tail call ptr @llvm.thread.pointer() #13
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %57 = tail call i32 @__traceiter_wakeup_source_activate(ptr noundef null, ptr noundef %42, i32 noundef %41) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %58

58:                                               ; preds = %56, %45, %39, %25, %12
  br i1 %1, label %59, label %61

59:                                               ; preds = %58
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pm_abort_suspend) #13, !srcloc !17
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pm_abort_suspend, ptr nonnull @pm_abort_suspend, i32 1, ptr nonnull elementtype(i32) @pm_abort_suspend) #13, !srcloc !22
  tail call void @s2idle_wake() #13
  br label %61

61:                                               ; preds = %59, %58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_stay_awake(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wakeup_source, ptr %7, i32 0, i32 3
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #13
  tail call fastcc void @wakeup_source_report_event(ptr noundef nonnull %7, i1 noundef zeroext false) #13
  %12 = getelementptr inbounds %struct.wakeup_source, ptr %7, i32 0, i32 5
  %13 = tail call i32 @del_timer(ptr noundef %12) #13
  %14 = getelementptr inbounds %struct.wakeup_source, ptr %7, i32 0, i32 6
  store i32 0, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #13
  br label %15

15:                                               ; preds = %9, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wakeup_source_deactivate(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 %3, ptr %2, align 8
  br label %54

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 18
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, -2
  store i8 %12, ptr %10, align 8
  %13 = tail call i64 @ktime_get() #13
  %14 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 9
  %15 = load i64, ptr %14, align 8
  %16 = sub i64 %13, %15
  %17 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, %16
  store i64 %19, ptr %17, align 8
  %20 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 8
  %21 = load i64, ptr %20, align 8
  %22 = icmp sgt i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  store i64 %16, ptr %20, align 8
  br label %24

24:                                               ; preds = %23, %9
  store i64 %13, ptr %14, align 8
  %25 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5
  %26 = tail call i32 @del_timer(ptr noundef %25) #13
  %27 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 6
  store i32 0, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @combined_event_count) #13, !srcloc !17
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @combined_event_count, ptr nonnull @combined_event_count, i32 65535, ptr nonnull elementtype(i32) @combined_event_count) #13, !srcloc !18
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %30 = load ptr, ptr %0, align 8
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wakeup_source_deactivate, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = tail call ptr @llvm.thread.pointer() #13
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  %45 = tail call i32 @__traceiter_wakeup_source_deactivate(ptr noundef null, ptr noundef %30, i32 noundef %29) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %46

46:                                               ; preds = %44, %33, %24
  %47 = load volatile i32, ptr @combined_event_count, align 4
  %48 = and i32 %47, 65535
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @wakeup_count_wait_queue, i32 0, i32 1), align 4
  %52 = icmp eq ptr %51, getelementptr inbounds (%struct.wait_queue_head, ptr @wakeup_count_wait_queue, i32 0, i32 1)
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @__wake_up(ptr noundef nonnull @wakeup_count_wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %54

54:                                               ; preds = %53, %50, %46, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_relax(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wakeup_source, ptr %7, i32 0, i32 3
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #13
  %12 = getelementptr inbounds %struct.wakeup_source, ptr %7, i32 0, i32 18
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call fastcc void @wakeup_source_deactivate(ptr noundef nonnull %7) #13
  br label %17

17:                                               ; preds = %16, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #13
  br label %18

18:                                               ; preds = %17, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_wakeup_ws_event(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  tail call fastcc void @wakeup_source_report_event(ptr noundef nonnull %0, i1 noundef zeroext %2)
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call fastcc void @wakeup_source_deactivate(ptr noundef nonnull %0)
  br label %25

10:                                               ; preds = %5
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #13
  %13 = add i32 %12, %11
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 %13
  %16 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = sub i32 %17, %15
  %20 = icmp slt i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 5
  %24 = tail call i32 @mod_timer(ptr noundef %23, i32 noundef %15) #13
  store i32 %15, ptr %16, align 4
  br label %25

25:                                               ; preds = %22, %10, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #13
  br label %26

26:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_wakeup_dev_event(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %9 = load ptr, ptr %8, align 8
  tail call void @pm_wakeup_ws_event(ptr noundef %9, i32 noundef %1, i1 noundef zeroext %2)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #13
  br label %10

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_print_active_wakeup_sources() #0 {
  %1 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  %2 = load volatile ptr, ptr @wakeup_sources, align 4
  %3 = icmp eq ptr %2, @wakeup_sources
  br i1 %3, label %8, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %6, %4 ], [ %2, %0 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @wakeup_sources
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %0
  %9 = icmp ugt i32 %1, 1
  %10 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %8
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %14

14:                                               ; preds = %13, %8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #0 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @events_lock) #13
  %2 = load i8, ptr @events_check_enabled, align 1, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %0
  %5 = load volatile i32, ptr @combined_event_count, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = load i32, ptr @saved_count, align 4
  %9 = icmp ne i32 %6, %8
  %10 = icmp ne i32 %7, 0
  %11 = or i1 %9, %10
  %12 = or i1 %9, %10
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, ptr @events_check_enabled, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %1) #13
  br i1 %11, label %15, label %31

15:                                               ; preds = %4
  %16 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  %17 = load volatile ptr, ptr @wakeup_sources, align 4
  %18 = icmp eq ptr %17, @wakeup_sources
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @wakeup_sources
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %15
  %24 = icmp ugt i32 %16, 1
  %25 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %29

29:                                               ; preds = %28, %23
  tail call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %16) #13
  br label %34

30:                                               ; preds = %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %1) #13
  br label %31

31:                                               ; preds = %30, %4
  %32 = load volatile i32, ptr @pm_abort_suspend, align 4
  %33 = icmp sgt i32 %32, 0
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i1 [ %33, %31 ], [ true, %29 ]
  ret i1 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_system_wakeup() #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pm_abort_suspend) #13, !srcloc !17
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pm_abort_suspend, ptr nonnull @pm_abort_suspend, i32 1, ptr nonnull elementtype(i32) @pm_abort_suspend) #13, !srcloc !22
  tail call void @s2idle_wake() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s2idle_wake() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_system_cancel_wakeup() local_unnamed_addr #0 {
  %1 = load volatile i32, ptr @pm_abort_suspend, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = phi i32 [ %1, %0 ], [ %12, %11 ]
  %4 = add i32 %3, -1
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %14, label %6, !prof !8

6:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pm_abort_suspend) #13, !srcloc !17
  br label %7

7:                                                ; preds = %7, %6
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pm_abort_suspend, ptr nonnull @pm_abort_suspend, i32 %3, i32 %4, ptr nonnull elementtype(i32) @pm_abort_suspend) #13, !srcloc !26
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %14, label %2, !prof !28

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_wakeup_clear(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @wakeup_irq_lock) #13
  %2 = icmp eq i32 %0, 0
  %3 = xor i1 %2, true
  %4 = load i32, ptr @wakeup_irq.0, align 4
  %5 = icmp eq i32 %4, %0
  %6 = select i1 %3, i1 %5, i1 false
  %7 = load i32, ptr @wakeup_irq.1, align 4
  %8 = select i1 %6, i32 %7, i32 0
  store i32 %8, ptr @wakeup_irq.0, align 4
  store i32 0, ptr @wakeup_irq.1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %9 = load i16, ptr @wakeup_irq_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @wakeup_irq_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br i1 %2, label %11, label %12

11:                                               ; preds = %1
  store volatile i32 0, ptr @pm_abort_suspend, align 4
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_system_irq_wakeup(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeup_irq_lock) #13
  %3 = load i32, ptr @wakeup_irq.0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @wakeup_irq.1, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeup_irq_lock, i32 noundef %2) #13
  br label %14

9:                                                ; preds = %5, %1
  %10 = phi ptr [ @wakeup_irq.0, %1 ], [ @wakeup_irq.1, %5 ]
  store i32 %0, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeup_irq_lock, i32 noundef %2) #13
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pm_abort_suspend) #13, !srcloc !17
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pm_abort_suspend, ptr nonnull @pm_abort_suspend, i32 1, ptr nonnull elementtype(i32) @pm_abort_suspend) #13, !srcloc !22
  tail call void @s2idle_wake() #13
  br label %14

14:                                               ; preds = %12, %9, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pm_wakeup_irq() local_unnamed_addr #7 {
  %1 = load i32, ptr @wakeup_irq.0, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pm_get_wakeup_count(ptr nocapture noundef writeonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  br i1 %1, label %4, label %40

4:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %6 = tail call ptr @llvm.thread.pointer() #13
  store i32 0, ptr %3, align 4
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  call void @prepare_to_wait(ptr noundef nonnull @wakeup_count_wait_queue, ptr noundef nonnull %3, i32 noundef 1) #13
  %10 = load volatile i32, ptr @combined_event_count, align 4
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %35, %4
  %14 = load volatile i32, ptr %6, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39, !prof !28

17:                                               ; preds = %13
  %18 = load volatile i32, ptr %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  %23 = load volatile ptr, ptr @wakeup_sources, align 4
  %24 = icmp eq ptr %23, @wakeup_sources
  br i1 %24, label %29, label %25

25:                                               ; preds = %25, %21
  %26 = phi ptr [ %27, %25 ], [ %23, %21 ]
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @wakeup_sources
  br i1 %28, label %29, label %25

29:                                               ; preds = %25, %21
  %30 = icmp ugt i32 %22, 1
  %31 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %29
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %35

35:                                               ; preds = %34, %29
  call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %22) #13
  call void @schedule() #13
  call void @prepare_to_wait(ptr noundef nonnull @wakeup_count_wait_queue, ptr noundef nonnull %3, i32 noundef 1) #13
  %36 = load volatile i32, ptr @combined_event_count, align 4
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %13

39:                                               ; preds = %35, %17, %13, %4
  call void @finish_wait(ptr noundef nonnull @wakeup_count_wait_queue, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #13
  br label %40

40:                                               ; preds = %39, %2
  %41 = load volatile i32, ptr @combined_event_count, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %41, 65535
  store i32 %42, ptr %0, align 4
  %44 = icmp eq i32 %43, 0
  ret i1 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pm_save_wakeup_count(i32 noundef %0) local_unnamed_addr #0 {
  store i8 0, ptr @events_check_enabled, align 1
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @events_lock) #13
  %3 = load volatile i32, ptr @combined_event_count, align 4
  %4 = lshr i32 %3, 16
  %5 = and i32 %3, 65535
  %6 = icmp eq i32 %4, %0
  %7 = icmp eq i32 %5, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 %0, ptr @saved_count, align 4
  store i8 1, ptr @events_check_enabled, align 1
  br label %10

10:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @events_lock, i32 noundef %2) #13
  %11 = load i8, ptr @events_check_enabled, align 1, !range !15
  %12 = icmp ne i8 %11, 0
  ret i1 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @wakeup_sources_debugfs_init() #8 section ".init.text" {
  %1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @wakeup_sources_stats_fops) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wakeup_source_activate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wakeup_source_deactivate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_sources_stats_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open_private(ptr noundef %1, ptr noundef nonnull @wakeup_sources_stats_seq_ops, i32 noundef 4) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @wakeup_sources_stats_seq_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i64 %3, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.8) #13
  br label %8

8:                                                ; preds = %7, %2
  %9 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @wakeup_srcu) #13
  store i32 %9, ptr %5, align 4
  %10 = load volatile ptr, ptr @wakeup_sources, align 4
  %11 = icmp eq ptr %10, @wakeup_sources
  br i1 %11, label %22, label %16

12:                                               ; preds = %16
  %13 = add nsw i64 %18, -1
  %14 = load volatile ptr, ptr %17, align 4
  %15 = icmp eq ptr %14, @wakeup_sources
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %18 = phi i64 [ %13, %12 ], [ %3, %8 ]
  %19 = icmp slt i64 %18, 1
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %17, i32 -8
  br label %22

22:                                               ; preds = %20, %12, %8
  %23 = phi ptr [ %21, %20 ], [ null, %8 ], [ null, %12 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wakeup_sources_stats_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  %7 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 189, i32 noundef 9, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %2
  tail call void @__srcu_read_unlock(ptr noundef nonnull @wakeup_srcu, i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @wakeup_sources_stats_seq_next(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 2
  %7 = load volatile ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @wakeup_sources
  %9 = getelementptr i8, ptr %7, i32 -8
  %10 = select i1 %8, ptr null, ptr %9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call fastcc void @print_wakeup_source_stats(ptr noundef %0, ptr noundef nonnull @deleted_ws)
  br label %13

13:                                               ; preds = %12, %3
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_sources_stats_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @print_wakeup_source_stats(ptr noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_wakeup_source_stats(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 7
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 8
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 11
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 18
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = tail call i64 @ktime_get() #13
  %19 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 9
  %20 = load i64, ptr %19, align 8
  %21 = sub i64 %18, %20
  %22 = add i64 %21, %6
  %23 = tail call i64 @llvm.smax.i64(i64 %21, i64 %8)
  %24 = load i8, ptr %13, align 8
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 10
  %29 = load i64, ptr %28, align 8
  %30 = add i64 %18, %10
  %31 = sub i64 %30, %29
  br label %32

32:                                               ; preds = %27, %17, %2
  %33 = phi i64 [ %22, %27 ], [ %22, %17 ], [ %6, %2 ]
  %34 = phi i64 [ %23, %27 ], [ %23, %17 ], [ %8, %2 ]
  %35 = phi i64 [ %21, %27 ], [ %21, %17 ], [ 0, %2 ]
  %36 = phi i64 [ %31, %27 ], [ %10, %17 ], [ %10, %2 ]
  %37 = load ptr, ptr %1, align 8
  %38 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 12
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 16
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = tail call i64 @llvm.abs.i64(i64 %35, i1 false) #13
  %45 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %44) #15, !srcloc !29
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %44, i64 %45, i32 0) #15, !srcloc !30
  %47 = extractvalue { i64, i32 } %46, 0
  %48 = icmp slt i64 %35, 0
  %49 = lshr i64 %47, 18
  %50 = sub nsw i64 0, %49
  %51 = select i1 %48, i64 %50, i64 %49
  %52 = tail call i64 @llvm.abs.i64(i64 %33, i1 false) #13
  %53 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %52) #15, !srcloc !29
  %54 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %52, i64 %53, i32 0) #15, !srcloc !30
  %55 = extractvalue { i64, i32 } %54, 0
  %56 = icmp slt i64 %33, 0
  %57 = lshr i64 %55, 18
  %58 = sub nsw i64 0, %57
  %59 = select i1 %56, i64 %58, i64 %57
  %60 = tail call i64 @llvm.abs.i64(i64 %34, i1 false) #13
  %61 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %60) #15, !srcloc !29
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %60, i64 %61, i32 0) #15, !srcloc !30
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = icmp slt i64 %34, 0
  %65 = lshr i64 %63, 18
  %66 = sub nsw i64 0, %65
  %67 = select i1 %64, i64 %66, i64 %65
  %68 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 9
  %69 = load i64, ptr %68, align 8
  %70 = tail call i64 @llvm.abs.i64(i64 %69, i1 false) #13
  %71 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %70) #15, !srcloc !29
  %72 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %70, i64 %71, i32 0) #15, !srcloc !30
  %73 = extractvalue { i64, i32 } %72, 0
  %74 = icmp slt i64 %69, 0
  %75 = lshr i64 %73, 18
  %76 = sub nsw i64 0, %75
  %77 = select i1 %74, i64 %76, i64 %75
  %78 = tail call i64 @llvm.abs.i64(i64 %36, i1 false) #13
  %79 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %78) #15, !srcloc !29
  %80 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %78, i64 %79, i32 0) #15, !srcloc !30
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = icmp slt i64 %36, 0
  %83 = lshr i64 %81, 18
  %84 = sub nsw i64 0, %83
  %85 = select i1 %82, i64 %84, i64 %83
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %37, i32 noundef %12, i32 noundef %39, i32 noundef %41, i32 noundef %43, i64 noundef %51, i64 noundef %59, i64 noundef %67, i64 noundef %77, i64 noundef %85) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 2149039284}
!10 = !{i64 2149240242}
!11 = !{i64 2149236066}
!12 = !{i64 2149236141, i64 2149236168, i64 2149236215, i64 2149236237, i64 2149236265, i64 2149236285}
!13 = !{i64 632293}
!14 = !{i64 2149264386}
!15 = !{i8 0, i8 2}
!16 = !{i64 2148265975}
!17 = !{i64 603301, i64 2148104867, i64 2148104893, i64 2148104940, i64 2148104962, i64 2148104990, i64 2148105010}
!18 = !{i64 2148168813, i64 2148168845, i64 2148168874, i64 2148168908, i64 2148168939, i64 2148168962}
!19 = !{i64 2148266178}
!20 = !{i64 2154351397}
!21 = !{i64 2154351575}
!22 = !{i64 2148168129, i64 2148168155, i64 2148168184, i64 2148168218, i64 2148168249, i64 2148168272}
!23 = !{i64 2154368299}
!24 = !{i64 2154368481}
!25 = !{i64 2148281555}
!26 = !{i64 589364, i64 589388, i64 589409, i64 589426, i64 589443}
!27 = !{i64 2148281755}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 1162521, i64 1162548}
!30 = !{i64 1163216, i64 1163243, i64 1163276, i64 1163297, i64 1163324, i64 1163350}
