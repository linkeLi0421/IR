; ModuleID = '/llk/IR/drivers/base/dd.c_pt.bc'
source_filename = "../drivers/base/dd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_deferred_probe_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_deferred_probe_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_driver_deferred_probe_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_bind_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22device_bind_driver\22\09\09\09\09\09"
module asm "__kstrtabns_device_bind_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_device_probe\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22device_attach\22\09\09\09\09\09"
module asm "__kstrtabns_device_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_driver_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22device_driver_attach\22\09\09\09\09\09"
module asm "__kstrtabns_device_driver_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_attach\22\09\09\09\09\09"
module asm "__kstrtabns_driver_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_release_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22device_release_driver\22\09\09\09\09\09"
module asm "__kstrtabns_device_release_driver:\09\09\09\09\09"
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
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.device_attach_data = type { ptr, i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }

@deferred_probe_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @deferred_probe_mutex, i64 12), ptr getelementptr (i8, ptr @deferred_probe_mutex, i64 12) } }, align 4
@deferred_probe_pending_list = internal global %struct.list_head { ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list }, align 4
@defer_all_probes = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [8 x i8] c"%s: %pV\00", align 1
@driver_deferred_probe_timeout = dso_local global i32 0, align 4
@__kstrtab_driver_deferred_probe_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_deferred_probe_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_deferred_probe_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_deferred_probe_timeout to i32), ptr @__kstrtab_driver_deferred_probe_timeout, ptr @__kstrtabns_driver_deferred_probe_timeout }, section "___ksymtab_gpl+driver_deferred_probe_timeout", align 4
@__setup_str_deferred_probe_timeout_setup = internal constant [24 x i8] c"deferred_probe_timeout=\00", section ".init.rodata", align 1
@__setup_deferred_probe_timeout_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_deferred_probe_timeout_setup, ptr @deferred_probe_timeout_setup, i32 0 }, section ".init.setup", align 4
@initcalls_done = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"deferred probe timeout, ignoring dependency\0A\00", align 1
@__initcall__kmod_dd__223_352_deferred_probe_initcall7 = internal global ptr @deferred_probe_initcall, section ".initcall7.init", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"devices_deferred\00", align 1
@__exitcall_deferred_probe_exit = internal global ptr @deferred_probe_exit, section ".exitcall.exit", align 4
@__kstrtab_device_bind_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_bind_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_device_bind_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_bind_driver to i32), ptr @__kstrtab_device_bind_driver, ptr @__kstrtabns_device_bind_driver }, section "___ksymtab_gpl+device_bind_driver", align 4
@probe_count = internal global %struct.atomic_t zeroinitializer, align 4
@probe_timeout_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @probe_timeout_waitqueue, i64 4), ptr getelementptr (i8, ptr @probe_timeout_waitqueue, i64 4) } }, align 4
@deferred_probe_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_probe_work, i64 4), ptr getelementptr (i8, ptr @deferred_probe_work, i64 4) }, ptr @deferred_probe_work_func }, align 4
@probe_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @probe_waitqueue, i64 4), ptr getelementptr (i8, ptr @probe_waitqueue, i64 4) } }, align 4
@__kstrtab_wait_for_device_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_device_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_device_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_device_probe to i32), ptr @__kstrtab_wait_for_device_probe, ptr @__kstrtabns_wait_for_device_probe }, section "___ksymtab_gpl+wait_for_device_probe", align 4
@__setup_str_save_async_options = internal constant [20 x i8] c"driver_async_probe=\00", section ".init.rodata", align 1
@__setup_save_async_options = internal global %struct.obs_kernel_param { ptr @__setup_str_save_async_options, ptr @save_async_options, i32 0 }, section ".init.setup", align 4
@__kstrtab_device_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_device_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_attach to i32), ptr @__kstrtab_device_attach, ptr @__kstrtabns_device_attach }, section "___ksymtab_gpl+device_attach", align 4
@__kstrtab_device_driver_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_driver_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_device_driver_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_driver_attach to i32), ptr @__kstrtab_device_driver_attach, ptr @__kstrtabns_device_driver_attach }, section "___ksymtab_gpl+device_driver_attach", align 4
@__kstrtab_driver_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_attach to i32), ptr @__kstrtab_driver_attach, ptr @__kstrtabns_driver_attach }, section "___ksymtab_gpl+driver_attach", align 4
@__kstrtab_device_release_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_release_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_device_release_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_release_driver to i32), ptr @__kstrtab_device_release_driver, ptr @__kstrtabns_device_release_driver }, section "___ksymtab_gpl+device_release_driver", align 4
@driver_deferred_probe_enable = internal unnamed_addr global i1 false, align 1
@deferred_trigger_count = internal global %struct.atomic_t zeroinitializer, align 4
@deferred_probe_active_list = internal global %struct.list_head { ptr @deferred_probe_active_list, ptr @deferred_probe_active_list }, align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@deferred_devs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @deferred_devs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@deferred_probe_timeout_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_probe_timeout_work, i64 4), ptr getelementptr (i8, ptr @deferred_probe_timeout_work, i64 4) }, ptr @deferred_probe_timeout_work_func }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%s\09%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"deferred probe pending\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@dev_attr_coredump = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 128 }, ptr null, ptr @coredump_store }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"coredump\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\014%s: device %s already bound\0A\00", align 1
@__func__.driver_bound = private unnamed_addr constant [13 x i8] c"driver_bound\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"\014Too long list of driver names for 'driver_async_probe'!\0A\00", align 1
@async_probe_drv_names = internal global [256 x i8] zeroinitializer, align 1
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Resources present before probing\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\013%s: driver_sysfs_add(%s) failed\0A\00", align 1
@__func__.really_probe = private unnamed_addr constant [13 x i8] c"really_probe\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"device_add_groups() failed\0A\00", align 1
@dev_attr_state_synced = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @state_synced_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"state_synced sysfs add failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"\014%s: probe of %s failed with error %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"state_synced\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__exitcall_deferred_probe_exit, ptr @__initcall__kmod_dd__223_352_deferred_probe_initcall7, ptr @__ksymtab_device_attach, ptr @__ksymtab_device_bind_driver, ptr @__ksymtab_device_driver_attach, ptr @__ksymtab_device_release_driver, ptr @__ksymtab_driver_attach, ptr @__ksymtab_driver_deferred_probe_timeout, ptr @__ksymtab_wait_for_device_probe, ptr @__setup_deferred_probe_timeout_setup, ptr @__setup_save_async_options, ptr @deferred_probe_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @driver_deferred_probe_add(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device_private, ptr %8, i32 0, i32 5
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr %9, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr @deferred_probe_pending_list, ptr %9, align 4
  %14 = getelementptr inbounds %struct.device_private, ptr %8, i32 0, i32 5, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %9, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %6
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @driver_deferred_probe_del(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 5
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %5, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %8, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.device_private, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.device_private, ptr %14, i32 0, i32 7
  store ptr null, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_block_probing() local_unnamed_addr #0 {
  store i1 true, ptr @defer_all_probes, align 1
  tail call void @wait_for_device_probe()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_device_probe() #0 {
  %1 = alloca %struct.wait_queue_entry, align 4
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = load i32, ptr @driver_deferred_probe_timeout, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #10
  %6 = call i32 @prepare_to_wait_event(ptr noundef nonnull @probe_timeout_waitqueue, ptr noundef nonnull %1, i32 noundef 2) #10
  %7 = load i32, ptr @driver_deferred_probe_timeout, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  call void @schedule() #10
  %10 = call i32 @prepare_to_wait_event(ptr noundef nonnull @probe_timeout_waitqueue, ptr noundef nonnull %1, i32 noundef 2) #10
  %11 = load i32, ptr @driver_deferred_probe_timeout, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  call void @finish_wait(ptr noundef nonnull @probe_timeout_waitqueue, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #10
  br label %14

14:                                               ; preds = %13, %0
  %15 = call zeroext i1 @flush_work(ptr noundef nonnull @deferred_probe_work) #10
  %16 = load volatile i32, ptr @probe_count, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #10
  %19 = call i32 @prepare_to_wait_event(ptr noundef nonnull @probe_waitqueue, ptr noundef nonnull %2, i32 noundef 2) #10
  %20 = load volatile i32, ptr @probe_count, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %18
  call void @schedule() #10
  %23 = call i32 @prepare_to_wait_event(ptr noundef nonnull @probe_waitqueue, ptr noundef nonnull %2, i32 noundef 2) #10
  %24 = load volatile i32, ptr @probe_count, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %18
  call void @finish_wait(ptr noundef nonnull @probe_waitqueue, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %27

27:                                               ; preds = %26, %14
  call void @async_synchronize_full() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_unblock_probing() local_unnamed_addr #0 {
  store i1 false, ptr @defer_all_probes, align 1
  %1 = load i1, ptr @driver_deferred_probe_enable, align 1
  br i1 %1, label %2, label %13

2:                                                ; preds = %0
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @deferred_trigger_count) #10, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @deferred_trigger_count, ptr nonnull @deferred_trigger_count, i32 1, ptr nonnull elementtype(i32) @deferred_trigger_count) #10, !srcloc !10
  %4 = load volatile ptr, ptr @deferred_probe_pending_list, align 4
  %5 = icmp eq ptr %4, @deferred_probe_pending_list
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store ptr %4, ptr %7, align 4
  store ptr @deferred_probe_active_list, ptr %8, align 4
  store ptr %8, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  store volatile ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list, align 4
  store ptr @deferred_probe_pending_list, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  br label %10

10:                                               ; preds = %6, %2
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %11 = load ptr, ptr @system_unbound_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef nonnull @deferred_probe_work) #10
  br label %13

13:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_set_deferred_probe_reason(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @dev_driver_string(ptr noundef %0) #10
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %4 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %1) #10
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device_private, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #10
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds %struct.device_private, ptr %9, i32 0, i32 7
  store ptr %4, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @deferred_probe_timeout_setup(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @kstrtoint(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  store i32 %6, ptr @driver_deferred_probe_timeout, align 4
  br label %7

7:                                                ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @driver_deferred_probe_check_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @driver_deferred_probe_timeout, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i1, ptr @initcalls_done, align 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  br label %7

7:                                                ; preds = %6, %4, %1
  %8 = phi i32 [ -110, %6 ], [ -517, %4 ], [ -517, %1 ]
  ret i32 %8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deferred_probe_initcall() #0 {
  %1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @deferred_devs_fops) #10
  store i1 true, ptr @driver_deferred_probe_enable, align 1
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @deferred_trigger_count) #10, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @deferred_trigger_count, ptr nonnull @deferred_trigger_count, i32 1, ptr nonnull elementtype(i32) @deferred_trigger_count) #10, !srcloc !10
  %3 = load volatile ptr, ptr @deferred_probe_pending_list, align 4
  %4 = icmp eq ptr %3, @deferred_probe_pending_list
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store ptr %3, ptr %6, align 4
  store ptr @deferred_probe_active_list, ptr %7, align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  store volatile ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list, align 4
  store ptr @deferred_probe_pending_list, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  br label %9

9:                                                ; preds = %5, %0
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %10 = load ptr, ptr @system_unbound_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef nonnull @deferred_probe_work) #10
  %12 = tail call zeroext i1 @flush_work(ptr noundef nonnull @deferred_probe_work) #10
  store i1 true, ptr @initcalls_done, align 1
  %13 = load i1, ptr @driver_deferred_probe_enable, align 1
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @deferred_trigger_count) #10, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @deferred_trigger_count, ptr nonnull @deferred_trigger_count, i32 1, ptr nonnull elementtype(i32) @deferred_trigger_count) #10, !srcloc !10
  %16 = load volatile ptr, ptr @deferred_probe_pending_list, align 4
  %17 = icmp eq ptr %16, @deferred_probe_pending_list
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store ptr %16, ptr %19, align 4
  store ptr @deferred_probe_active_list, ptr %20, align 4
  store ptr %20, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  store volatile ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list, align 4
  store ptr @deferred_probe_pending_list, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %18, %14
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %23 = load ptr, ptr @system_unbound_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef nonnull @deferred_probe_work) #10
  br label %25

25:                                               ; preds = %22, %9
  %26 = tail call zeroext i1 @flush_work(ptr noundef nonnull @deferred_probe_work) #10
  %27 = load i32, ptr @driver_deferred_probe_timeout, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = mul i32 %27, 100
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %31, ptr noundef nonnull @deferred_probe_timeout_work, i32 noundef %30) #10
  br label %33

33:                                               ; preds = %29, %25
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @deferred_probe_exit() #3 section ".exit.text" {
  %1 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.2, ptr noundef null) #10
  tail call void @debugfs_remove(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @device_is_bound(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 2
  %7 = tail call i32 @klist_node_attached(ptr noundef %6) #10
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @klist_node_attached(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_bind_driver(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @driver_sysfs_add(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @device_links_force_bind(ptr noundef %0) #10
  tail call fastcc void @driver_bound(ptr noundef %0)
  br label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bus_type, ptr %7, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.subsys_private, ptr %11, i32 0, i32 7
  %13 = tail call i32 @blocking_notifier_call_chain(ptr noundef %12, i32 noundef 8, ptr noundef %0) #10
  br label %14

14:                                               ; preds = %9, %5, %4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @driver_sysfs_add(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.subsys_private, ptr %7, i32 0, i32 7
  %9 = tail call i32 @blocking_notifier_call_chain(ptr noundef %8, i32 noundef 4, ptr noundef %0) #10
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.device_driver, ptr %12, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = tail call i32 @sysfs_create_link(ptr noundef %14, ptr noundef %0, ptr noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds %struct.device_driver, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %21, ptr noundef nonnull @.str.6) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr inbounds %struct.device_driver, ptr %25, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @device_create_file(ptr noundef %0, ptr noundef nonnull @dev_attr_coredump) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %33

33:                                               ; preds = %32, %18
  %34 = phi i32 [ %22, %18 ], [ %30, %32 ]
  %35 = load ptr, ptr %11, align 8
  %36 = getelementptr inbounds %struct.device_driver, ptr %35, i32 0, i32 18
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %0, align 4
  tail call void @sysfs_remove_link(ptr noundef %37, ptr noundef %38) #10
  br label %39

39:                                               ; preds = %33, %29, %24, %10
  %40 = phi i32 [ 0, %24 ], [ 0, %29 ], [ %16, %10 ], [ %34, %33 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_force_bind(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @driver_bound(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 2
  %7 = tail call i32 @klist_node_attached(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8
  br label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.driver_bound, ptr noundef %12) #11
  br label %59

14:                                               ; preds = %9, %1
  %15 = phi ptr [ %10, %9 ], [ null, %1 ]
  %16 = getelementptr inbounds %struct.device_private, ptr %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.device_driver, ptr %18, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.driver_private, ptr %20, i32 0, i32 1
  tail call void @klist_add_tail(ptr noundef %16, ptr noundef %21) #10
  tail call void @device_links_driver_bound(ptr noundef %0) #10
  tail call void @device_pm_check_callbacks(ptr noundef %0) #10
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.device_private, ptr %22, i32 0, i32 5
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %35, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.device_private, ptr %22, i32 0, i32 5, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %24, ptr %28, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %27, align 4
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.device_private, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #10
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.device_private, ptr %33, i32 0, i32 7
  store ptr null, ptr %34, align 4
  br label %35

35:                                               ; preds = %26, %14
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %36 = load i1, ptr @driver_deferred_probe_enable, align 1
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @deferred_trigger_count) #10, !srcloc !9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @deferred_trigger_count, ptr nonnull @deferred_trigger_count, i32 1, ptr nonnull elementtype(i32) @deferred_trigger_count) #10, !srcloc !10
  %39 = load volatile ptr, ptr @deferred_probe_pending_list, align 4
  %40 = icmp eq ptr %39, @deferred_probe_pending_list
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store ptr %39, ptr %42, align 4
  store ptr @deferred_probe_active_list, ptr %43, align 4
  store ptr %43, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  store volatile ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list, align 4
  store ptr @deferred_probe_pending_list, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  br label %45

45:                                               ; preds = %41, %37
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %46 = load ptr, ptr @system_unbound_wq, align 4
  %47 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %46, ptr noundef nonnull @deferred_probe_work) #10
  br label %48

48:                                               ; preds = %45, %35
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bus_type, ptr %50, i32 0, i32 20
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.subsys_private, ptr %54, i32 0, i32 7
  %56 = tail call i32 @blocking_notifier_call_chain(ptr noundef %55, i32 noundef 5, ptr noundef %0) #10
  br label %57

57:                                               ; preds = %52, %48
  %58 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 6) #10
  br label %59

59:                                               ; preds = %57, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @driver_probe_done() local_unnamed_addr #5 {
  %1 = load volatile i32, ptr @probe_count, align 4
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 0, i32 -16
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @save_async_options(ptr noundef %0) #3 section ".init.text" {
  %2 = tail call i32 @strlen(ptr noundef %0)
  %3 = icmp ugt i32 %2, 255
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call i32 @strlcpy(ptr noundef nonnull @async_probe_drv_names, ptr noundef %0, i32 noundef 256) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @driver_allows_async_probing(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %5 [
    i32 1, label %16
    i32 2, label %4
  ]

4:                                                ; preds = %1
  br label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull @async_probe_drv_names, ptr noundef %6) #10
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.module, ptr %10, i32 0, i32 18
  %14 = load i8, ptr %13, align 1, !range !11
  %15 = icmp ne i8 %14, 0
  br label %16

16:                                               ; preds = %12, %8, %5, %4, %1
  %17 = phi i1 [ false, %4 ], [ true, %1 ], [ true, %5 ], [ false, %8 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_attach(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @__device_attach(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__device_attach(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.device_attach_data, align 8
  %4 = zext i1 %1 to i8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device_private, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %7, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.device_private, ptr %7, i32 0, i32 2
  %20 = tail call i32 @klist_node_attached(ptr noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18, %16
  %23 = tail call fastcc i32 @driver_sysfs_add(ptr noundef %0) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bus_type, ptr %27, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.subsys_private, ptr %31, i32 0, i32 7
  %33 = tail call i32 @blocking_notifier_call_chain(ptr noundef %32, i32 noundef 8, ptr noundef %0) #10
  br label %35

34:                                               ; preds = %22
  tail call void @device_links_force_bind(ptr noundef %0) #10
  tail call fastcc void @driver_bound(ptr noundef %0) #10
  br label %65

35:                                               ; preds = %29, %25
  store ptr null, ptr %13, align 8
  br label %65

36:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 0, ptr %3, align 8, !annotation !8
  store ptr %0, ptr %3, align 8
  %37 = getelementptr inbounds %struct.device_attach_data, ptr %3, i32 0, i32 1
  store i8 %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.device_attach_data, ptr %3, i32 0, i32 3
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %40, i32 noundef 4) #10
  br label %44

44:                                               ; preds = %42, %36
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @bus_for_each_drv(ptr noundef %46, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @__device_attach_driver) #10
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %1, true
  %50 = or i1 %48, %49
  %51 = load i8, ptr %38, align 2
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = call ptr @get_device(ptr noundef %0) #10
  %56 = call i64 @async_schedule_node(ptr noundef nonnull @__device_attach_async_helper, ptr noundef %0, i32 noundef -1) #10
  br label %59

57:                                               ; preds = %44
  %58 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 1) #10
  br label %59

59:                                               ; preds = %57, %54
  %60 = load ptr, ptr %39, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 @__pm_runtime_idle(ptr noundef nonnull %60, i32 noundef 5) #10
  br label %64

64:                                               ; preds = %62, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %65

65:                                               ; preds = %64, %35, %34, %18, %2
  %66 = phi i32 [ 0, %2 ], [ 0, %35 ], [ %47, %64 ], [ 1, %18 ], [ 1, %34 ]
  call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_initial_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__device_attach(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_driver_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bus_type, ptr %8, i32 0, i32 22
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = tail call fastcc i32 @__driver_probe_device(ptr noundef %0, ptr noundef %1)
  %17 = load ptr, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %15) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bus_type, ptr %21, i32 0, i32 22
  %23 = load i8, ptr %22, align 4, !range !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %25, %19, %14
  %28 = tail call i32 @llvm.abs.i32(i32 %16, i1 false)
  %29 = sub i32 0, %28
  %30 = icmp eq i32 %28, 517
  %31 = select i1 %30, i32 -11, i32 %29
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__driver_probe_device(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device_private, ptr %4, i32 0, i32 9
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 37
  %20 = load i8, ptr %19, align 4
  %21 = or i8 %20, 16
  store i8 %21, ptr %19, align 4
  tail call void @pm_runtime_get_suppliers(ptr noundef %1) #10
  %22 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %23, i32 noundef 4) #10
  br label %27

27:                                               ; preds = %25, %18
  %28 = tail call i32 @pm_runtime_barrier(ptr noundef %1) #10
  %29 = load i8, ptr @initcall_debug, align 1, !range !11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @ktime_get() #10
  %33 = tail call fastcc i32 @really_probe(ptr noundef %1, ptr noundef %0) #10
  %34 = tail call i64 @ktime_get() #10
  br label %37

35:                                               ; preds = %27
  %36 = tail call fastcc i32 @really_probe(ptr noundef %1, ptr noundef %0)
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %35 ]
  %39 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 1) #10
  %40 = load ptr, ptr %22, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %40, i32 noundef 5) #10
  br label %44

44:                                               ; preds = %42, %37
  tail call void @pm_runtime_put_suppliers(ptr noundef %1) #10
  br label %45

45:                                               ; preds = %44, %14, %9, %2
  %46 = phi i32 [ %38, %44 ], [ -19, %9 ], [ -19, %2 ], [ -16, %14 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @driver_attach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @bus_for_each_dev(ptr noundef %3, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__driver_attach) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__driver_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #10
  switch i32 %9, label %23 [
    i32 0, label %77
    i32 -517, label %10
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 16
  store i8 %13, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.device_private, ptr %15, i32 0, i32 5
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr %16, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr @deferred_probe_pending_list, ptr %16, align 4
  %21 = getelementptr inbounds %struct.device_private, ptr %15, i32 0, i32 5, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %16, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %10
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  br label %25

23:                                               ; preds = %8
  %24 = icmp slt i32 %9, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %23, %22, %2
  %26 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %28 [
    i32 1, label %39
    i32 2, label %50
  ]

28:                                               ; preds = %25
  %29 = load ptr, ptr %1, align 4
  %30 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull @async_probe_drv_names, ptr noundef %29) #10
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.module, ptr %33, i32 0, i32 18
  %37 = load i8, ptr %36, align 1, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35, %28, %25
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %40) #10
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = tail call ptr @get_device(ptr noundef %0) #10
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.device_private, ptr %47, i32 0, i32 6
  store ptr %1, ptr %48, align 4
  %49 = tail call i64 @async_schedule_node(ptr noundef nonnull @__driver_attach_async_helper, ptr noundef %0, i32 noundef -1) #10
  br label %75

50:                                               ; preds = %35, %31, %25
  %51 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bus_type, ptr %56, i32 0, i32 22
  %58 = load i8, ptr %57, align 4, !range !11
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %61) #10
  br label %62

62:                                               ; preds = %60, %54, %50
  %63 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %63) #10
  %64 = tail call fastcc i32 @driver_probe_device(ptr noundef %1, ptr noundef %0)
  %65 = load ptr, ptr %51, align 4
  tail call void @mutex_unlock(ptr noundef %63) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bus_type, ptr %69, i32 0, i32 22
  %71 = load i8, ptr %70, align 4, !range !11
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 9
  br label %75

75:                                               ; preds = %73, %44, %39
  %76 = phi ptr [ %74, %73 ], [ %40, %44 ], [ %40, %39 ]
  tail call void @mutex_unlock(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %75, %67, %62, %23, %8
  %78 = phi i32 [ %9, %8 ], [ %9, %23 ], [ 0, %62 ], [ 0, %67 ], [ 0, %75 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_release_driver_internal(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bus_type, ptr %7, i32 0, i32 22
  %9 = load i8, ptr %8, align 4, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %11, %5, %3
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %14) #10
  %15 = icmp eq ptr %1, null
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  br i1 %15, label %20, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, %1
  br i1 %19, label %22, label %113

20:                                               ; preds = %13
  %21 = icmp eq ptr %17, null
  br i1 %21, label %113, label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %17, %20 ], [ %1, %18 ]
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %25 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #10
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %27 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 9
  br label %28

28:                                               ; preds = %44, %22
  %29 = tail call zeroext i1 @device_links_busy(ptr noundef %0) #10
  br i1 %29, label %30, label %49

30:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef %14) #10
  br i1 %4, label %37, label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr inbounds %struct.bus_type, ptr %32, i32 0, i32 22
  %34 = load i8, ptr %33, align 4, !range !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void @mutex_unlock(ptr noundef %27) #10
  br label %38

37:                                               ; preds = %30
  tail call void @device_links_unbind_consumers(ptr noundef %0) #10
  br label %44

38:                                               ; preds = %36, %31
  tail call void @device_links_unbind_consumers(ptr noundef %0) #10
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.bus_type, ptr %39, i32 0, i32 22
  %41 = load i8, ptr %40, align 4, !range !11
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @mutex_lock(ptr noundef %27) #10
  br label %44

44:                                               ; preds = %43, %38, %37
  tail call void @mutex_lock(ptr noundef %14) #10
  %45 = load ptr, ptr %24, align 8
  %46 = icmp eq ptr %45, %23
  br i1 %46, label %28, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #10
  br label %113

49:                                               ; preds = %28
  %50 = load ptr, ptr %24, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.device_driver, ptr %50, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull @dev_attr_coredump) #10
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.device_driver, ptr %50, i32 0, i32 18
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %0, align 4
  tail call void @sysfs_remove_link(ptr noundef %59, ptr noundef %60) #10
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %61

61:                                               ; preds = %57, %49
  %62 = load ptr, ptr %26, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.bus_type, ptr %62, i32 0, i32 20
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.subsys_private, ptr %66, i32 0, i32 7
  %68 = tail call i32 @blocking_notifier_call_chain(ptr noundef %67, i32 noundef 6, ptr noundef %0) #10
  br label %69

69:                                               ; preds = %64, %61
  %70 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #10
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull @dev_attr_state_synced) #10
  %71 = getelementptr inbounds %struct.device_driver, ptr %23, i32 0, i32 15
  %72 = load ptr, ptr %71, align 4
  tail call void @device_remove_groups(ptr noundef %0, ptr noundef %72) #10
  %73 = load ptr, ptr %26, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.bus_type, ptr %73, i32 0, i32 10
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void %77(ptr noundef %0) #10
  br label %86

80:                                               ; preds = %75, %69
  %81 = getelementptr inbounds %struct.device_driver, ptr %23, i32 0, i32 10
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %0) #10
  br label %86

86:                                               ; preds = %84, %80, %79
  tail call void @device_links_driver_cleanup(ptr noundef %0) #10
  %87 = tail call i32 @devres_release_all(ptr noundef %0) #10
  tail call void @arch_teardown_dma_ops(ptr noundef %0) #10
  %88 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %89 = load ptr, ptr %88, align 8
  tail call void @kfree(ptr noundef %89) #10
  store ptr null, ptr %88, align 8
  store ptr null, ptr %24, align 8
  %90 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr null, ptr %90, align 8
  %91 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.dev_pm_domain, ptr %92, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void %96(ptr noundef %0) #10
  br label %99

99:                                               ; preds = %98, %94, %86
  tail call void @pm_runtime_reinit(ptr noundef %0) #10
  %100 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.device_private, ptr %102, i32 0, i32 2
  tail call void @klist_remove(ptr noundef %103) #10
  tail call void @device_pm_check_callbacks(ptr noundef %0) #10
  %104 = load ptr, ptr %26, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.bus_type, ptr %104, i32 0, i32 20
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.subsys_private, ptr %108, i32 0, i32 7
  %110 = tail call i32 @blocking_notifier_call_chain(ptr noundef %109, i32 noundef 7, ptr noundef %0) #10
  br label %111

111:                                              ; preds = %106, %99
  %112 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 7) #10
  br label %113

113:                                              ; preds = %111, %47, %20, %18
  tail call void @mutex_unlock(ptr noundef %14) #10
  br i1 %4, label %122, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.bus_type, ptr %116, i32 0, i32 22
  %118 = load i8, ptr %117, align 4, !range !11
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %121) #10
  br label %122

122:                                              ; preds = %120, %114, %113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_release_driver(ptr noundef %0) #0 {
  tail call void @device_release_driver_internal(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_driver_detach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @device_release_driver_internal(ptr noundef %0, ptr noundef null, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @driver_detach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %4 [
    i32 1, label %15
    i32 2, label %16
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull @async_probe_drv_names, ptr noundef %5) #10
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.module, ptr %9, i32 0, i32 18
  %13 = load i8, ptr %12, align 1, !range !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %4, %1
  tail call void @async_synchronize_full() #10
  br label %16

16:                                               ; preds = %15, %11, %7, %1
  %17 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.driver_private, ptr %18, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %19) #10
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.driver_private, ptr %20, i32 0, i32 1, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %29

24:                                               ; preds = %29, %16
  %25 = phi ptr [ %20, %16 ], [ %44, %29 ]
  %26 = getelementptr inbounds %struct.driver_private, ptr %25, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  ret void

29:                                               ; preds = %29, %16
  %30 = phi ptr [ %44, %29 ], [ %20, %16 ]
  %31 = getelementptr inbounds %struct.driver_private, ptr %30, i32 0, i32 1, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 60
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr @get_device(ptr noundef %34) #10
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr inbounds %struct.driver_private, ptr %36, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %40 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void @device_release_driver_internal(ptr noundef %34, ptr noundef %0, ptr noundef %41)
  tail call void @put_device(ptr noundef %34) #10
  %42 = load ptr, ptr %17, align 4
  %43 = getelementptr inbounds %struct.driver_private, ptr %42, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %43) #10
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr inbounds %struct.driver_private, ptr %44, i32 0, i32 1, i32 1
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %24, label %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deferred_devs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @deferred_devs_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @deferred_devs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %3 = load ptr, ptr @deferred_probe_pending_list, align 4
  %4 = icmp eq ptr %3, @deferred_probe_pending_list
  br i1 %4, label %24, label %5

5:                                                ; preds = %14, %2
  %6 = phi ptr [ %22, %14 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = load ptr, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ %10, %5 ]
  %16 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str.4, ptr %19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %15, ptr noundef %21) #10
  %22 = load ptr, ptr %6, align 4
  %23 = icmp eq ptr %22, @deferred_probe_pending_list
  br i1 %23, label %24, label %5

24:                                               ; preds = %14, %2
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deferred_probe_timeout_work_func(ptr nocapture noundef readnone %0) #0 {
  tail call void @fw_devlink_drivers_done() #10
  store i32 0, ptr @driver_deferred_probe_timeout, align 4
  %2 = load i1, ptr @driver_deferred_probe_enable, align 1
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @deferred_trigger_count) #10, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @deferred_trigger_count, ptr nonnull @deferred_trigger_count, i32 1, ptr nonnull elementtype(i32) @deferred_trigger_count) #10, !srcloc !10
  %5 = load volatile ptr, ptr @deferred_probe_pending_list, align 4
  %6 = icmp eq ptr %5, @deferred_probe_pending_list
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store ptr %5, ptr %8, align 4
  store ptr @deferred_probe_active_list, ptr %9, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  store volatile ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list, align 4
  store ptr @deferred_probe_pending_list, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  br label %11

11:                                               ; preds = %7, %3
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %12 = load ptr, ptr @system_unbound_wq, align 4
  %13 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %12, ptr noundef nonnull @deferred_probe_work) #10
  br label %14

14:                                               ; preds = %11, %1
  %15 = tail call zeroext i1 @flush_work(ptr noundef nonnull @deferred_probe_work) #10
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %16 = load ptr, ptr @deferred_probe_pending_list, align 4
  %17 = icmp eq ptr %16, @deferred_probe_pending_list
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %22, %18 ], [ %16, %14 ]
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.5) #11
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, @deferred_probe_pending_list
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %14
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void @__wake_up(ptr noundef nonnull @probe_timeout_waitqueue, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_devlink_drivers_done() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @coredump_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_driver_bound(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_check_callbacks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @deferred_probe_work_func(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %2 = load volatile ptr, ptr @deferred_probe_active_list, align 4
  %3 = icmp eq ptr %2, @deferred_probe_active_list
  br i1 %3, label %21, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %19, %4 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %8, align 4
  %12 = tail call ptr @get_device(ptr noundef %7) #10
  %13 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device_private, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #10
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 7
  store ptr null, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void @device_pm_move_to_tail(ptr noundef %7) #10
  tail call void @bus_probe_device(ptr noundef %7) #10
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void @put_device(ptr noundef %7) #10
  %19 = load volatile ptr, ptr @deferred_probe_active_list, align 4
  %20 = icmp eq ptr %19, @deferred_probe_active_list
  br i1 %20, label %21, label %4

21:                                               ; preds = %4, %1
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_move_to_tail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_probe_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parse_option_str(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__device_attach_driver(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bus_type, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %3, ptr noundef %0) #10
  switch i32 %10, label %24 [
    i32 0, label %58
    i32 -517, label %11
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 37
  %13 = load i8, ptr %12, align 4
  %14 = or i8 %13, 16
  store i8 %14, ptr %12, align 4
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %15 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 5
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr %17, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr @deferred_probe_pending_list, ptr %17, align 4
  %22 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 5, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %17, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %11
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  br label %26

24:                                               ; preds = %9
  %25 = icmp slt i32 %10, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %24, %23, %2
  %27 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %29 [
    i32 1, label %40
    i32 2, label %42
  ]

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 4
  %31 = tail call zeroext i1 @parse_option_str(ptr noundef nonnull @async_probe_drv_names, ptr noundef %30) #10
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.module, ptr %34, i32 0, i32 18
  %38 = load i8, ptr %37, align 1, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36, %29, %26
  %41 = getelementptr inbounds %struct.device_attach_data, ptr %1, i32 0, i32 3
  store i8 1, ptr %41, align 2
  br label %42

42:                                               ; preds = %40, %36, %32, %26
  %43 = phi i1 [ true, %40 ], [ false, %36 ], [ false, %32 ], [ false, %26 ]
  %44 = getelementptr inbounds %struct.device_attach_data, ptr %1, i32 0, i32 1
  %45 = load i8, ptr %44, align 4, !range !11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.device_attach_data, ptr %1, i32 0, i32 2
  %49 = load i8, ptr %48, align 1, !range !11
  %50 = zext i1 %43 to i8
  %51 = icmp eq i8 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %42
  %53 = tail call fastcc i32 @driver_probe_device(ptr noundef %0, ptr noundef %3)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %53, 0
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %55, %52, %47, %24, %9
  %59 = phi i32 [ %57, %55 ], [ %10, %9 ], [ %10, %24 ], [ 0, %47 ], [ %53, %52 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__device_attach_async_helper(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.device_attach_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 1103806595072, ptr %3, align 8, !annotation !8
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device_private, ptr %6, i32 0, i32 9
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %17, i32 noundef 4) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @bus_for_each_drv(ptr noundef %23, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @__device_attach_driver) #10
  %25 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 1) #10
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = call i32 @__pm_runtime_idle(ptr noundef nonnull %26, i32 noundef 5) #10
  br label %30

30:                                               ; preds = %28, %21, %11, %2
  call void @mutex_unlock(ptr noundef %4) #10
  call void @put_device(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @driver_probe_device(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load volatile i32, ptr @deferred_trigger_count, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @probe_count) #10, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @probe_count, ptr nonnull @probe_count, i32 1, ptr nonnull elementtype(i32) @probe_count) #10, !srcloc !10
  %5 = tail call fastcc i32 @__driver_probe_device(ptr noundef %0, ptr noundef %1)
  switch i32 %5, label %39 [
    i32 -517, label %6
    i32 517, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 37
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  %12 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.device_private, ptr %13, i32 0, i32 5
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  store ptr @deferred_probe_pending_list, ptr %14, align 4
  %19 = getelementptr inbounds %struct.device_private, ptr %13, i32 0, i32 5, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %14, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %11
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  br label %21

21:                                               ; preds = %20, %6
  %22 = load volatile i32, ptr @deferred_trigger_count, align 4
  %23 = icmp eq i32 %3, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load i1, ptr @defer_all_probes, align 1
  br i1 %25, label %39, label %26

26:                                               ; preds = %24
  %27 = load i1, ptr @driver_deferred_probe_enable, align 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  tail call void @mutex_lock(ptr noundef nonnull @deferred_probe_mutex) #10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @deferred_trigger_count) #10, !srcloc !9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @deferred_trigger_count, ptr nonnull @deferred_trigger_count, i32 1, ptr nonnull elementtype(i32) @deferred_trigger_count) #10, !srcloc !10
  %30 = load volatile ptr, ptr @deferred_probe_pending_list, align 4
  %31 = icmp eq ptr %30, @deferred_probe_pending_list
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store ptr %30, ptr %33, align 4
  store ptr @deferred_probe_active_list, ptr %34, align 4
  store ptr %34, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_active_list, i32 0, i32 1), align 4
  store volatile ptr @deferred_probe_pending_list, ptr @deferred_probe_pending_list, align 4
  store ptr @deferred_probe_pending_list, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_probe_pending_list, i32 0, i32 1), align 4
  br label %36

36:                                               ; preds = %32, %28
  tail call void @mutex_unlock(ptr noundef nonnull @deferred_probe_mutex) #10
  %37 = load ptr, ptr @system_unbound_wq, align 4
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef nonnull @deferred_probe_work) #10
  br label %39

39:                                               ; preds = %36, %26, %24, %21, %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @probe_count) #10, !srcloc !9
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @probe_count, ptr nonnull @probe_count, i32 1, ptr nonnull elementtype(i32) @probe_count) #10, !srcloc !16
  tail call void @__wake_up(ptr noundef nonnull @probe_waitqueue, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_get_suppliers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @really_probe(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i1, ptr @defer_all_probes, align 1
  br i1 %3, label %161, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @device_links_check_suppliers(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %161

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  br label %161

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  store ptr %1, ptr %13, align 8
  %14 = tail call i32 @pinctrl_bind_pins(ptr noundef %0) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %145

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bus_type, ptr %18, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %0) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %145

25:                                               ; preds = %22, %16
  %26 = tail call fastcc i32 @driver_sysfs_add(ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ %30, %28 ]
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.really_probe, ptr noundef %35) #11
  br label %136

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dev_pm_domain, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = tail call i32 %43(ptr noundef %0) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %123

48:                                               ; preds = %45, %41, %37
  %49 = load ptr, ptr %17, align 4
  %50 = getelementptr inbounds %struct.bus_type, ptr %49, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %53, %48
  %58 = phi ptr [ %51, %48 ], [ %55, %53 ]
  %59 = tail call i32 %58(ptr noundef %0) #10
  switch i32 %59, label %60 [
    i32 0, label %73
    i32 -517, label %71
    i32 -19, label %71
    i32 -6, label %71
  ]

60:                                               ; preds = %57
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load ptr, ptr %0, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %66, %65 ], [ %63, %60 ]
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %61, ptr noundef %68, i32 noundef %59) #11
  %70 = icmp eq i32 %59, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %57, %57, %57
  %72 = sub i32 0, %59
  br label %123

73:                                               ; preds = %67, %57, %53
  %74 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 15
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @device_add_groups(ptr noundef %0, ptr noundef %75) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  br label %110

79:                                               ; preds = %73
  %80 = icmp eq ptr %0, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %13, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.device_driver, ptr %82, i32 0, i32 9
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %84, %81
  %89 = load ptr, ptr %17, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.bus_type, ptr %89, i32 0, i32 9
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91, %84
  %96 = tail call i32 @device_create_file(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_state_synced) #10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #11
  %99 = load ptr, ptr %74, align 4
  tail call void @device_remove_groups(ptr noundef nonnull %0, ptr noundef %99) #10
  br label %110

100:                                              ; preds = %95, %91, %88, %79
  %101 = tail call i32 @pinctrl_init_done(ptr noundef %0) #10
  %102 = load ptr, ptr %38, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.dev_pm_domain, ptr %102, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void %106(ptr noundef %0) #10
  br label %109

109:                                              ; preds = %108, %104, %100
  tail call fastcc void @driver_bound(ptr noundef %0)
  br label %161

110:                                              ; preds = %98, %78
  %111 = phi i32 [ %76, %78 ], [ %96, %98 ]
  %112 = load ptr, ptr %17, align 4
  %113 = getelementptr inbounds %struct.bus_type, ptr %112, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  tail call void %114(ptr noundef %0) #10
  br label %123

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 10
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = tail call i32 %119(ptr noundef %0) #10
  br label %123

123:                                              ; preds = %121, %117, %116, %71, %45
  %124 = phi i32 [ %46, %45 ], [ %72, %71 ], [ %111, %116 ], [ %111, %121 ], [ %111, %117 ]
  %125 = load ptr, ptr %13, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.device_driver, ptr %125, i32 0, i32 17
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void @device_remove_file(ptr noundef %0, ptr noundef nonnull @dev_attr_coredump) #10
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr inbounds %struct.device_driver, ptr %125, i32 0, i32 18
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %0, align 4
  tail call void @sysfs_remove_link(ptr noundef %134, ptr noundef %135) #10
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %136

136:                                              ; preds = %132, %123, %34
  %137 = phi i32 [ %26, %34 ], [ %124, %123 ], [ %124, %132 ]
  %138 = load ptr, ptr %17, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.bus_type, ptr %138, i32 0, i32 20
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.subsys_private, ptr %142, i32 0, i32 7
  %144 = tail call i32 @blocking_notifier_call_chain(ptr noundef %143, i32 noundef 8, ptr noundef %0) #10
  br label %145

145:                                              ; preds = %140, %136, %22, %12
  %146 = phi i32 [ %14, %12 ], [ %23, %22 ], [ %137, %140 ], [ %137, %136 ]
  tail call void @device_links_no_driver(ptr noundef %0) #10
  %147 = tail call i32 @devres_release_all(ptr noundef %0) #10
  tail call void @arch_teardown_dma_ops(ptr noundef %0) #10
  %148 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %149 = load ptr, ptr %148, align 8
  tail call void @kfree(ptr noundef %149) #10
  store ptr null, ptr %148, align 8
  store ptr null, ptr %13, align 8
  %150 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr null, ptr %150, align 8
  %151 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.dev_pm_domain, ptr %152, i32 0, i32 5
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  tail call void %156(ptr noundef %0) #10
  br label %159

159:                                              ; preds = %158, %154, %145
  tail call void @pm_runtime_reinit(ptr noundef %0) #10
  %160 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  store i32 0, ptr %160, align 8
  br label %161

161:                                              ; preds = %159, %109, %11, %4, %2
  %162 = phi i32 [ -517, %2 ], [ %5, %4 ], [ %146, %159 ], [ 0, %109 ], [ -16, %11 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_put_suppliers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_links_check_suppliers(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_bind_pins(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_teardown_dma_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_init_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_no_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_synced_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %6 = load i8, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #10
  %7 = lshr i8 %6, 3
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %9) #10
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__driver_attach_async_helper(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bus_type, ptr %8, i32 0, i32 22
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %13) #10
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device_private, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call fastcc i32 @driver_probe_device(ptr noundef %19, ptr noundef %0)
  %21 = load ptr, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %15) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bus_type, ptr %25, i32 0, i32 22
  %27 = load i8, ptr %26, align 4, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %29, %23, %14
  tail call void @put_device(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_links_busy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_unbind_consumers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_driver_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 872327, i64 2148362298, i64 2148362324, i64 2148362371, i64 2148362393, i64 2148362421, i64 2148362441}
!10 = !{i64 2148373713, i64 2148373739, i64 2148373768, i64 2148373802, i64 2148373833, i64 2148373856}
!11 = !{i8 0, i8 2}
!12 = !{i64 2149040931}
!13 = !{i64 2149036755}
!14 = !{i64 2149036830, i64 2149036857, i64 2149036904, i64 2149036926, i64 2149036954, i64 2149036974}
!15 = !{i64 2149063934}
!16 = !{i64 2148376070, i64 2148376096, i64 2148376125, i64 2148376159, i64 2148376190, i64 2148376213}
