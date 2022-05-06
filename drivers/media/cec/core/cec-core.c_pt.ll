; ModuleID = '/llk/IR/drivers/media/cec/core/cec-core.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_allocate_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_allocate_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_allocate_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_register_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_register_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_register_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_unregister_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_unregister_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_unregister_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_delete_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_delete_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_delete_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, i32, [32 x i8] }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.67 }
%union.anon.67 = type { [16 x i32] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_fh = type { %struct.list_head, %struct.list_head, ptr, i8, i8, %struct.wait_queue_head, %struct.mutex, [8 x %struct.list_head], [8 x i16], i32, [2 x %struct.cec_event_entry], %struct.list_head, i32 }
%struct.cec_event_entry = type { %struct.list_head, %struct.cec_event }
%struct.cec_event = type { i64, i32, i32, %union.anon.66 }
%union.anon.66 = type { [16 x i32] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@__param_str_debug = internal constant [10 x i8] c"cec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cec_debug = dso_local global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @cec_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype220 = internal constant [23 x i8] c"cec.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug221 = internal constant [33 x i8] c"cec.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__param_str_debug_phys_addr = internal constant [20 x i8] c"cec.debug_phys_addr\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug_phys_addr = internal global i8 0, align 1
@__param_debug_phys_addr = internal constant %struct.kernel_param { ptr @__param_str_debug_phys_addr, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @debug_phys_addr } }, section "__param", align 4
@__UNIQUE_ID_debug_phys_addrtype222 = internal constant [34 x i8] c"cec.parmtype=debug_phys_addr:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_phys_addr223 = internal constant [54 x i8] c"cec.parm=debug_phys_addr:add CEC_CAP_PHYS_ADDR if set\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [34 x i8] c"drivers/media/cec/core/cec-core.c\00", align 1
@cec_allocate_adapter.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&adap->lock\00", align 1
@cec_allocate_adapter.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"&adap->kthread_waitq\00", align 1
@cec_allocate_adapter.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"&adap->devnode.lock_fhs\00", align 1
@cec_allocate_adapter.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&adap->devnode.lock\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"cec-%s\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\013cec-%s: kernel_thread() failed\0A\00", align 1
@__kstrtab_cec_allocate_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_allocate_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_allocate_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_allocate_adapter to i32), ptr @__kstrtab_cec_allocate_adapter, ptr @__kstrtabns_cec_allocate_adapter }, section "___ksymtab_gpl+cec_allocate_adapter", align 4
@top_cec_dir = internal unnamed_addr global ptr null, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"error-inj\00", align 1
@cec_error_inj_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @cec_error_inj_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cec_error_inj_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_cec_register_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_register_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_register_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_register_adapter to i32), ptr @__kstrtab_cec_register_adapter, ptr @__kstrtabns_cec_register_adapter }, section "___ksymtab_gpl+cec_register_adapter", align 4
@__kstrtab_cec_unregister_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_unregister_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_unregister_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_unregister_adapter to i32), ptr @__kstrtab_cec_unregister_adapter, ptr @__kstrtabns_cec_unregister_adapter }, section "___ksymtab_gpl+cec_unregister_adapter", align 4
@__kstrtab_cec_delete_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_delete_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_delete_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_delete_adapter to i32), ptr @__kstrtab_cec_delete_adapter, ptr @__kstrtabns_cec_delete_adapter }, section "___ksymtab_gpl+cec_delete_adapter", align 4
@cec_bus_type = internal global %struct.bus_type { ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@cec_dev_t = internal global i32 0, align 4
@__initcall__kmod_cec__226_451_cec_devnode_init4 = internal global ptr @cec_devnode_init, section ".initcall4.init", align 4
@__exitcall_cec_devnode_exit = internal global ptr @cec_devnode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author227 = internal constant [49 x i8] c"cec.author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [57 x i8] c"cec.description=Device node registration for cec drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [36 x i8] c"cec.file=drivers/media/cec/core/cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [16 x i8] c"cec.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@cec_devnode_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @cec_devnode_lock, i64 12), ptr getelementptr (i8, ptr @cec_devnode_lock, i64 12) } }, align 4
@cec_devnode_nums = internal global [8 x i32] zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"\013could not get a free minor\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"cec%d\00", align 1
@cec_devnode_fops = external dso_local constant %struct.file_operations, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"\013%s: cdev_device_add failed\0A\00", align 1
@__func__.cec_devnode_register = private unnamed_addr constant [21 x i8] c"cec_devnode_register\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cec\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"\014cec: unable to allocate major\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\014cec: Failed to create debugfs cec dir\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"\014cec: bus_register failed\0A\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_debug221, ptr @__UNIQUE_ID_debug_phys_addr223, ptr @__UNIQUE_ID_debug_phys_addrtype222, ptr @__UNIQUE_ID_debugtype220, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_cec_devnode_exit, ptr @__initcall__kmod_cec__226_451_cec_devnode_init4, ptr @__ksymtab_cec_allocate_adapter, ptr @__ksymtab_cec_delete_adapter, ptr @__ksymtab_cec_register_adapter, ptr @__ksymtab_cec_unregister_adapter, ptr @__param_debug, ptr @__param_debug_phys_addr, ptr @cec_devnode_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cec_get_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cec_devnode, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.cec_devnode, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @get_device(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ 0, %6 ], [ -6, %1 ]
  tail call void @mutex_unlock(ptr noundef %2) #7
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_put_device(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @put_device(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cec_allocate_adapter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = and i32 %3, -17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 248, i32 noundef 9, ptr noundef null) #7
  br label %60

9:                                                ; preds = %5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #7
  br label %60

12:                                               ; preds = %9
  %13 = add i8 %4, -5
  %14 = icmp ult i8 %13, -4
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #7
  br label %60

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 976) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 1
  %22 = tail call i32 @strscpy(ptr noundef %21, ptr noundef %2, i32 noundef 32) #7
  %23 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 18
  store i16 -1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 22
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 31, i32 2
  store i8 6, ptr %25, align 2
  %26 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 31, i32 4
  store i32 -1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 16
  store i32 %6, ptr %27, align 8
  %28 = load i8, ptr @debug_phys_addr, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = or i32 %6, 1
  store i32 %31, ptr %27, align 8
  br label %32

32:                                               ; preds = %30, %20
  %33 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 19
  %34 = trunc i32 %3 to i8
  %35 = lshr i8 %34, 6
  %36 = and i8 %35, 1
  store i8 %36, ptr %33, align 8
  %37 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 17
  store i8 %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 36
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 14
  store ptr %0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 15
  store ptr %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %41, ptr noundef nonnull @.str.1, ptr noundef nonnull @cec_allocate_adapter.__key) #7
  %42 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 5
  store volatile ptr %42, ptr %42, align 8
  %43 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 5, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 7
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 7, i32 1
  store ptr %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %46, ptr noundef nonnull @.str.3, ptr noundef nonnull @cec_allocate_adapter.__key.2) #7
  %47 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 2, i32 7
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 2, i32 7, i32 1
  store ptr %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 2, i32 6
  tail call void @__mutex_init(ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef nonnull @cec_allocate_adapter.__key.4) #7
  %50 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 2, i32 3
  tail call void @__mutex_init(ptr noundef %50, ptr noundef nonnull @.str.7, ptr noundef nonnull @cec_allocate_adapter.__key.6) #7
  %51 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cec_thread_func, ptr noundef nonnull %18, i32 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %2) #7
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %56, label %53

53:                                               ; preds = %32
  %54 = tail call i32 @wake_up_process(ptr noundef %51) #7
  %55 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 12
  store ptr %51, ptr %55, align 8
  br label %60

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.cec_adapter, ptr %18, i32 0, i32 12
  store ptr %51, ptr %57, align 8
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %2) #9
  %59 = load ptr, ptr %57, align 8
  tail call void @kfree(ptr noundef nonnull %18) #7
  br label %60

60:                                               ; preds = %56, %53, %16, %15, %11, %8
  %61 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %15 ], [ %59, %56 ], [ %18, %53 ], [ inttoptr (i32 -12 to ptr), %16 ]
  ret ptr %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_thread_func(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cec_register_adapter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef null) #7
  br label %65

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.device_driver, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %0, align 8
  %14 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %15, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cec_devnode_lock) #7
  %16 = tail call i32 @_find_first_zero_bit_le(ptr noundef nonnull @cec_devnode_nums, i32 noundef 256) #7
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #7
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %65

20:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef %16, ptr noundef nonnull @cec_devnode_nums) #7
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #7
  %21 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 2
  store i32 %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 0, i32 5
  store ptr @cec_bus_type, ptr %22, align 4
  %23 = load i32, ptr @cec_dev_t, align 4
  %24 = and i32 %23, -1048576
  %25 = or i32 %24, %16
  %26 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 0, i32 27
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 0, i32 33
  store ptr @cec_devnode_release, ptr %27, align 4
  %28 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %16) #7
  tail call void @device_initialize(ptr noundef %14) #7
  %29 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 1
  tail call void @cdev_init(ptr noundef %29, ptr noundef nonnull @cec_devnode_fops) #7
  %30 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 1, i32 1
  store ptr %13, ptr %30, align 4
  %31 = load i32, ptr %21, align 4
  %32 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %31) #7
  %33 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 4
  store i8 1, ptr %33, align 4
  %34 = tail call i32 @cdev_device_add(ptr noundef %29, ptr noundef %14) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %20
  store i8 0, ptr %33, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cec_devnode_register) #9
  tail call void @mutex_lock(ptr noundef nonnull @cec_devnode_lock) #7
  %38 = load i32, ptr %21, align 4
  tail call void @_clear_bit(i32 noundef %38, ptr noundef nonnull @cec_devnode_nums) #7
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #7
  br label %65

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 0, i32 8
  store ptr %0, ptr %40, align 8
  %41 = load ptr, ptr @top_cec_dir, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %65, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load ptr, ptr %14, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %48, %47 ], [ %45, %43 ]
  %51 = tail call ptr @debugfs_create_dir(ptr noundef %50, ptr noundef nonnull %41) #7
  %52 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 35
  store ptr %51, ptr %52, align 8
  tail call void @debugfs_create_devm_seqfile(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef %51, ptr noundef nonnull @cec_adap_status) #7
  %53 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 14
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.cec_adap_ops, ptr %54, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.cec_adap_ops, ptr %54, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %52, align 8
  %64 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %63, ptr noundef nonnull %0, ptr noundef nonnull @cec_error_inj_fops) #7
  br label %65

65:                                               ; preds = %62, %58, %49, %39, %36, %18, %8, %2
  %66 = phi i32 [ -22, %8 ], [ 0, %62 ], [ 0, %2 ], [ 0, %39 ], [ 0, %58 ], [ 0, %49 ], [ %34, %36 ], [ -23, %18 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_adap_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_unregister_adapter(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 35
  %7 = load ptr, ptr %6, align 8
  tail call void @debugfs_remove(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 34
  %9 = load ptr, ptr %8, align 4
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %9, ptr noundef nonnull %0) #7
  %10 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 3
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 4
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 5
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %5
  tail call void @mutex_unlock(ptr noundef %11) #7
  br label %34

20:                                               ; preds = %15
  store i8 0, ptr %12, align 4
  store i8 1, ptr %16, align 1
  %21 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 6
  tail call void @mutex_lock(ptr noundef %21) #7
  %22 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %30, label %25

25:                                               ; preds = %25, %20
  %26 = phi ptr [ %28, %25 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.cec_fh, ptr %26, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %27, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, %22
  br i1 %29, label %30, label %25

30:                                               ; preds = %25, %20
  tail call void @mutex_unlock(ptr noundef %21) #7
  tail call void @mutex_unlock(ptr noundef %11) #7
  %31 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %31) #7
  tail call void @__cec_s_phys_addr(ptr noundef %0, i16 noundef zeroext -1, i1 noundef zeroext false) #7
  %32 = tail call i32 @__cec_s_log_addrs(ptr noundef %0, ptr noundef null, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %31) #7
  %33 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 2, i32 1
  tail call void @cdev_device_del(ptr noundef %33, ptr noundef %10) #7
  tail call void @put_device(ptr noundef %10) #7
  br label %34

34:                                               ; preds = %30, %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cec_delete_adapter(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @kthread_stop(ptr noundef nonnull %7) #7
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 12
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @kthread_stop(ptr noundef %13) #7
  %15 = getelementptr inbounds %struct.cec_adapter, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.cec_adap_ops, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void %18(ptr noundef nonnull %0) #7
  br label %21

21:                                               ; preds = %20, %11
  tail call void @kfree(ptr noundef nonnull %0) #7
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cec_devnode_exit() #4 section ".exit.text" {
  %1 = load ptr, ptr @top_cec_dir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  tail call void @bus_unregister(ptr noundef nonnull @cec_bus_type) #7
  %2 = load i32, ptr @cec_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %2, i32 noundef 256) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cec_devnode_init() #4 section ".init.text" {
  %1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @cec_dev_t, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.16) #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.16, ptr noundef null) #7
  store ptr %4, ptr @top_cec_dir, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  store ptr null, ptr @top_cec_dir, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call i32 @bus_register(ptr noundef nonnull @cec_bus_type) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr @cec_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %14, i32 noundef 256) #7
  br label %15

15:                                               ; preds = %13, %0
  %16 = phi ptr [ @.str.19, %13 ], [ @.str.17, %0 ]
  %17 = phi i32 [ -5, %13 ], [ %1, %0 ]
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %16) #9
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 0, %10 ], [ %17, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cec_devnode_release(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cec_devnode_lock) #7
  %2 = getelementptr inbounds %struct.cec_devnode, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef nonnull @cec_devnode_nums) #7
  tail call void @mutex_unlock(ptr noundef nonnull @cec_devnode_lock) #7
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 644
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @kthread_stop(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr i8, ptr %0, i32 664
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @kthread_stop(ptr noundef %16) #7
  %18 = getelementptr i8, ptr %0, i32 680
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.cec_adap_ops, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void %21(ptr noundef nonnull %4) #7
  br label %24

24:                                               ; preds = %23, %14
  tail call void @kfree(ptr noundef nonnull %4) #7
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_error_inj_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %10 = tail call i32 @llvm.umin.i32(i32 %2, i32 4096)
  %11 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %10) #7
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = ptrtoint ptr %11 to i32
  br label %37

15:                                               ; preds = %4
  store ptr %11, ptr %5, align 4
  %16 = icmp eq ptr %11, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cec_adapter, ptr %9, i32 0, i32 14
  br label %22

19:                                               ; preds = %30, %26, %26
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %11, %17 ], [ %20, %19 ]
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = call ptr @skip_spaces(ptr noundef nonnull %23) #7
  store ptr %27, ptr %5, align 4
  %28 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.15) #7
  %29 = load i8, ptr %28, align 1
  switch i8 %29, label %30 [
    i8 0, label %19
    i8 35, label %19
  ]

30:                                               ; preds = %26
  %31 = load ptr, ptr %18, align 8
  %32 = getelementptr inbounds %struct.cec_adap_ops, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = call zeroext i1 %33(ptr noundef %9, ptr noundef %28) #7
  br i1 %34, label %19, label %35

35:                                               ; preds = %30
  call void @kfree(ptr noundef nonnull %11) #7
  br label %37

36:                                               ; preds = %22, %19, %15
  call void @kfree(ptr noundef %11) #7
  br label %37

37:                                               ; preds = %36, %35, %13
  %38 = phi i32 [ %14, %13 ], [ -22, %35 ], [ %2, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_error_inj_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @cec_error_inj_show, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cec_error_inj_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cec_adapter, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cec_adap_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4, ptr noundef %0) #7
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cec_s_log_addrs(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
