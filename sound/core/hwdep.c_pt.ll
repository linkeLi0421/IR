; ModuleID = '/llk/IR/sound/core/hwdep.c_pt.bc'
source_filename = "../sound/core/hwdep.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hwdep_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hwdep_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hwdep_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_hwdep_dsp_image = type { i32, [64 x i8], ptr, i32, i32 }
%struct.snd_hwdep_dsp_status = type { i32, [32 x i8], i32, i32, i32, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.46 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_hwdep_info = type { i32, i32, [64 x i8], [80 x i8], i32, [64 x i8] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.58, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.58 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author212 = internal constant [40 x i8] c"author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [37 x i8] c"description=Hardware dependent layer\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@snd_hwdep_new.ops = internal constant %struct.snd_device_ops { ptr @snd_hwdep_dev_free, ptr @snd_hwdep_dev_register, ptr @snd_hwdep_dev_disconnect }, align 4
@snd_hwdep_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"&hwdep->open_wait\00", align 1
@snd_hwdep_new.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&hwdep->open_mutex\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hwC%iD%i\00", align 1
@__kstrtab_snd_hwdep_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hwdep_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hwdep_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hwdep_new to i32), ptr @__kstrtab_snd_hwdep_new, ptr @__kstrtabns_snd_hwdep_new }, section "___ksymtab+snd_hwdep_new", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@register_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 12), ptr getelementptr (i8, ptr @register_mutex, i64 12) } }, align 4
@snd_hwdep_devices = internal global %struct.list_head { ptr @snd_hwdep_devices, ptr @snd_hwdep_devices }, align 4
@snd_hwdep_f_ops = internal constant %struct.file_operations { ptr @__this_module, ptr @snd_hwdep_llseek, ptr @snd_hwdep_read, ptr @snd_hwdep_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_hwdep_poll, ptr @snd_hwdep_ioctl, ptr null, ptr @snd_hwdep_mmap, i32 0, ptr @snd_hwdep_open, ptr null, ptr @snd_hwdep_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@snd_major = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"hwdep\00", align 1
@snd_hwdep_proc_entry = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"%02i-%02i: %s\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_license214, ptr @__ksymtab_snd_hwdep_new], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hwdep_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store ptr null, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 704) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @snd_hwdep_new.__key) #9
  %15 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_hwdep_new.__key.1) #9
  store ptr %0, ptr %11, align 8
  %16 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 2
  store i32 %2, ptr %16, align 4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 3
  %20 = tail call i32 @strscpy(ptr noundef %19, ptr noundef nonnull %1, i32 noundef 32) #9
  br label %21

21:                                               ; preds = %18, %13
  %22 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 10
  tail call void @snd_device_initialize(ptr noundef %22, ptr noundef nonnull %0) #9
  %23 = getelementptr inbounds %struct.snd_hwdep, ptr %11, i32 0, i32 10, i32 33
  store ptr @release_hwdep_device, ptr %23, align 4
  %24 = load i32, ptr %0, align 8
  %25 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef %24, i32 noundef %2) #9
  %26 = tail call i32 @snd_device_new(ptr noundef nonnull %0, i32 noundef 9, ptr noundef nonnull %11, ptr noundef nonnull @snd_hwdep_new.ops) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void @put_device(ptr noundef %22) #9
  br label %31

29:                                               ; preds = %21
  br i1 %7, label %31, label %30

30:                                               ; preds = %29
  store ptr %11, ptr %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %28, %9, %4
  %32 = phi i32 [ %26, %28 ], [ -6, %4 ], [ -12, %9 ], [ 0, %30 ], [ 0, %29 ]
  ret i32 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_dev_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef nonnull %3) #9
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 10
  tail call void @put_device(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_dev_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  %5 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr @snd_hwdep_devices, align 4
  %8 = icmp eq ptr %7, @snd_hwdep_devices
  br i1 %8, label %24, label %9

9:                                                ; preds = %18, %1
  %10 = phi ptr [ %19, %18 ], [ %7, %1 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %9
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, @snd_hwdep_devices
  br i1 %20, label %24, label %9

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %10, i32 -4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %21, %18, %1
  %25 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @snd_hwdep_devices, i32 0, i32 1), align 4
  store ptr %25, ptr getelementptr inbounds (%struct.list_head, ptr @snd_hwdep_devices, i32 0, i32 1), align 4
  store ptr @snd_hwdep_devices, ptr %25, align 4
  %27 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %25, ptr %26, align 4
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %5, align 4
  %30 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 10
  %31 = tail call i32 @snd_register_device(i32 noundef 3, ptr noundef %28, i32 noundef %29, ptr noundef nonnull @snd_hwdep_f_ops, ptr noundef %3, ptr noundef %30) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.4) #10
  %34 = load ptr, ptr %27, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  br label %37

37:                                               ; preds = %33, %24, %21
  %38 = phi i32 [ %31, %33 ], [ -16, %21 ], [ 0, %24 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_dev_disconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr @snd_hwdep_devices, align 4
  %10 = icmp eq ptr %9, @snd_hwdep_devices
  br i1 %10, label %25, label %11

11:                                               ; preds = %20, %5
  %12 = phi ptr [ %21, %20 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 -4
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, @snd_hwdep_devices
  br i1 %22, label %25, label %11

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %12, i32 -4
  br label %25

25:                                               ; preds = %23, %20, %5
  %26 = phi ptr [ null, %5 ], [ %24, %23 ], [ null, %20 ]
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %29) #9
  %30 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %31 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 10
  %32 = tail call i32 @snd_unregister_device(ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 1
  %34 = getelementptr inbounds %struct.snd_hwdep, ptr %3, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  store volatile ptr %33, ptr %33, align 4
  store ptr %33, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %29) #9
  br label %38

38:                                               ; preds = %28, %25
  %39 = phi i32 [ 0, %28 ], [ -22, %25 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  br label %40

40:                                               ; preds = %38, %1
  %41 = phi i32 [ -6, %1 ], [ %39, %38 ]
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_hwdep_device(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -200
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @snd_hwdep_proc_init() #11
  %1 = tail call i32 @snd_ctl_register_ioctl(ptr noundef nonnull @snd_hwdep_control_ioctl) #9
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  %1 = tail call i32 @snd_ctl_unregister_ioctl(ptr noundef nonnull @snd_hwdep_control_ioctl) #9
  %2 = load ptr, ptr @snd_hwdep_proc_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @snd_hwdep_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i64 %7(ptr noundef %5, ptr noundef %0, i64 noundef %1, i32 noundef %2) #9
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i64 [ %10, %9 ], [ -6, %3 ]
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -6, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.snd_hwdep, ptr %6, i32 0, i32 6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %6, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -6, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %4, ptr noundef %0, ptr noundef %1) #9
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.snd_hwdep_dsp_image, align 4
  %5 = alloca %struct.snd_hwdep_dsp_status, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = inttoptr i32 %2 to ptr
  switch i32 %1, label %82 [
    i32 -2147203072, label %9
    i32 -2133047295, label %16
    i32 -2143270910, label %18
    i32 1079003139, label %43
  ]

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !8
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 65537, i32 -1090519041) #9, !srcloc !11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  br label %88

16:                                               ; preds = %3
  %17 = tail call fastcc i32 @snd_hwdep_info(ptr noundef %7, ptr noundef %8)
  br label %88

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %19 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 6, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #9
  %23 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 13
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.snd_hwdep_dsp_status, ptr %5, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = call i32 %20(ptr noundef %7, ptr noundef nonnull %5) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 64, i32 -1090519040) #13, !srcloc !12
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = tail call ptr @llvm.thread.pointer() #9
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #12, !srcloc !8
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #9, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %38 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -14
  br label %41

41:                                               ; preds = %32, %28, %22, %18
  %42 = phi i32 [ -6, %18 ], [ %26, %22 ], [ -14, %28 ], [ %40, %32 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %88

43:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %4, i8 0, i32 80, i1 false) #9
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 80, i32 -1090519040) #13, !srcloc !13
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55, !prof !14

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #9
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #12, !srcloc !8
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %53 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %8, i32 noundef 80) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #9, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !14

55:                                               ; preds = %47, %43
  %56 = phi i32 [ %53, %47 ], [ 80, %43 ]
  %57 = sub i32 80, %56
  %58 = getelementptr i8, ptr %4, i32 %57
  call void @llvm.memset.p0.i32(ptr align 1 %58, i8 0, i32 %56, i1 false) #9
  br label %80

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 6, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %4, align 4
  %65 = icmp ugt i32 %64, 31
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 13
  %68 = load i32, ptr %67, align 8
  %69 = shl nuw i32 1, %64
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = call i32 %61(ptr noundef %7, ptr noundef nonnull %4) #9
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr %4, align 4
  %77 = shl nuw i32 1, %76
  %78 = load i32, ptr %67, align 8
  %79 = or i32 %78, %77
  store i32 %79, ptr %67, align 8
  br label %80

80:                                               ; preds = %75, %72, %66, %63, %59, %55
  %81 = phi i32 [ 0, %75 ], [ -6, %59 ], [ -22, %63 ], [ -16, %66 ], [ %73, %72 ], [ -14, %55 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #9
  br label %88

82:                                               ; preds = %3
  %83 = getelementptr inbounds %struct.snd_hwdep, ptr %7, i32 0, i32 6, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef %7, ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  br label %88

88:                                               ; preds = %86, %82, %80, %41, %16, %9
  %89 = phi i32 [ %87, %86 ], [ %81, %80 ], [ %42, %41 ], [ %17, %16 ], [ %15, %9 ], [ -25, %82 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %4, ptr noundef %0, ptr noundef %1) #9
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ -6, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  %7 = getelementptr inbounds i8, ptr %3, i32 12
  store i64 0, ptr %7, align 4, !annotation !15
  %8 = load i32, ptr @snd_major, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %91

10:                                               ; preds = %2
  %11 = and i32 %5, 1048575
  %12 = tail call ptr @snd_lookup_minor_data(i32 noundef %11, i32 noundef 3) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %91, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @try_module_get(ptr noundef %17) #9
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %12, align 8
  %21 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 28
  tail call void @put_device(ptr noundef %21) #9
  br label %91

22:                                               ; preds = %14
  %23 = tail call ptr @llvm.thread.pointer() #9
  store i32 0, ptr %3, align 4
  %24 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @default_wake_function, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %26, ptr noundef nonnull %3) #9
  %27 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 11
  call void @mutex_lock(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 14
  %29 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 12
  %30 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 6, i32 3
  %31 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %32 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  br label %33

33:                                               ; preds = %60, %22
  %34 = load i8, ptr %28, align 4
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %29, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %37, %33
  %41 = load ptr, ptr %30, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @remove_wait_queue(ptr noundef %26, ptr noundef nonnull %3) #9
  br label %68

44:                                               ; preds = %40
  %45 = call i32 %41(ptr noundef nonnull %12, ptr noundef %1) #9
  %46 = icmp eq i32 %45, -11
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32, ptr %31, align 4
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  store volatile i32 1, ptr %32, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void @mutex_unlock(ptr noundef %27) #9
  call void @schedule() #9
  call void @mutex_lock(ptr noundef %27) #9
  %52 = load ptr, ptr %12, align 8
  %53 = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 25
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load volatile i32, ptr %23, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64, !prof !14

60:                                               ; preds = %56
  %61 = load volatile i32, ptr %23, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %33, label %64

64:                                               ; preds = %60, %56, %51, %47, %37
  %65 = phi i32 [ -512, %60 ], [ -19, %51 ], [ -16, %47 ], [ -16, %37 ], [ -512, %56 ]
  call void @remove_wait_queue(ptr noundef %26, ptr noundef nonnull %3) #9
  br label %82

66:                                               ; preds = %44
  call void @remove_wait_queue(ptr noundef %26, ptr noundef nonnull %3) #9
  %67 = icmp sgt i32 %45, -1
  br i1 %67, label %68, label %82

68:                                               ; preds = %66, %43
  %69 = load ptr, ptr %12, align 8
  %70 = call i32 @snd_card_file_add(ptr noundef %69, ptr noundef %1) #9
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.snd_hwdep, ptr %12, i32 0, i32 6, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = call i32 %74(ptr noundef nonnull %12, ptr noundef %1) #9
  br label %82

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %12, ptr %79, align 8
  %80 = load i32, ptr %29, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %29, align 4
  call void @mutex_unlock(ptr noundef %27) #9
  br label %87

82:                                               ; preds = %76, %72, %66, %64
  %83 = phi i32 [ %65, %64 ], [ %45, %66 ], [ %70, %72 ], [ %70, %76 ]
  call void @mutex_unlock(ptr noundef %27) #9
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 8
  %86 = load ptr, ptr %85, align 4
  call void @module_put(ptr noundef %86) #9
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i32 [ %83, %82 ], [ %70, %78 ]
  %89 = load ptr, ptr %12, align 8
  %90 = getelementptr inbounds %struct.snd_card, ptr %89, i32 0, i32 28
  call void @put_device(ptr noundef %90) #9
  br label %91

91:                                               ; preds = %87, %19, %10, %2
  %92 = phi i32 [ %88, %87 ], [ -14, %19 ], [ -6, %2 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_release(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 6, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 %10(ptr noundef %4, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = add nsw i32 %17, -1
  store i32 %20, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %14
  tail call void @mutex_unlock(ptr noundef %8) #9
  %22 = getelementptr inbounds %struct.snd_hwdep, ptr %4, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %22, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %23 = load ptr, ptr %4, align 8
  %24 = tail call i32 @snd_card_file_remove(ptr noundef %23, ptr noundef %1) #9
  tail call void @module_put(ptr noundef %7) #9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @snd_hwdep_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.snd_hwdep_info, align 4
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(220) %3, i8 0, i64 220, i1 false)
  %4 = load ptr, ptr %0, align 8
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.snd_hwdep_info, ptr %3, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.snd_hwdep_info, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 3
  %9 = call i32 @strscpy(ptr noundef %7, ptr noundef %8, i32 noundef 64) #9
  %10 = getelementptr inbounds %struct.snd_hwdep_info, ptr %3, i32 0, i32 3
  %11 = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 4
  %12 = call i32 @strscpy(ptr noundef %10, ptr noundef %11, i32 noundef 80) #9
  %13 = getelementptr inbounds %struct.snd_hwdep, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.snd_hwdep_info, ptr %3, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 220, i32 -1090519040) #13, !srcloc !12
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = tail call ptr @llvm.thread.pointer() #9
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #12, !srcloc !8
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %25 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 220) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #9, !srcloc !9
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 -14
  br label %28

28:                                               ; preds = %19, %2
  %29 = phi i32 [ -14, %2 ], [ %27, %19 ]
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %3) #9
  ret i32 %29
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @snd_hwdep_proc_init() unnamed_addr #3 section ".init.text" {
  %1 = tail call ptr @snd_info_create_module_entry(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4
  store ptr @snd_hwdep_proc_read, ptr %4, align 4
  %5 = tail call i32 @snd_info_register(ptr noundef nonnull %1) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @snd_info_free_entry(ptr noundef nonnull %1) #9
  br label %8

8:                                                ; preds = %7, %3, %0
  %9 = phi ptr [ null, %7 ], [ %1, %3 ], [ null, %0 ]
  store ptr %9, ptr @snd_hwdep_proc_entry, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_register_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @snd_hwdep_control_ioctl(ptr noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %2, label %90 [
    i32 -1073457888, label %5
    i32 -2133043935, label %57
  ]

5:                                                ; preds = %4
  %6 = inttoptr i32 %3 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #12, !srcloc !8
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #9, !srcloc !17
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %5
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  %17 = icmp slt i32 %16, 0
  %18 = icmp slt i32 %16, 4
  %19 = add i32 %16, 1
  %20 = select i1 %18, i32 %19, i32 4
  %21 = select i1 %17, i32 0, i32 %20
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %48

23:                                               ; preds = %15
  %24 = load ptr, ptr @snd_hwdep_devices, align 4
  %25 = icmp eq ptr %24, @snd_hwdep_devices
  br label %26

26:                                               ; preds = %43, %23
  %27 = phi i32 [ %21, %23 ], [ %44, %43 ]
  br i1 %25, label %43, label %28

28:                                               ; preds = %37, %26
  %29 = phi ptr [ %38, %37 ], [ %24, %26 ]
  %30 = getelementptr i8, ptr %29, i32 -4
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %29, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %27
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %28
  %38 = load ptr, ptr %29, align 4
  %39 = icmp eq ptr %38, @snd_hwdep_devices
  br i1 %39, label %43, label %28

40:                                               ; preds = %33
  %41 = getelementptr i8, ptr %29, i32 -4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37, %26
  %44 = add nsw i32 %27, 1
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %48, label %26

46:                                               ; preds = %40
  %47 = icmp sgt i32 %27, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %46, %43, %15
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ -1, %48 ], [ %27, %46 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  %51 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #12, !srcloc !8
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %54 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %50, i32 -1090519041) #9, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 -14
  br label %90

57:                                               ; preds = %4
  %58 = inttoptr i32 %3 to ptr
  %59 = tail call ptr @llvm.thread.pointer() #9
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #12, !srcloc !8
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %64 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %58, i32 -1090519041) #9, !srcloc !19
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #9, !srcloc !9
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %57
  %68 = extractvalue { i32, i32 } %64, 1
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  %69 = load ptr, ptr @snd_hwdep_devices, align 4
  %70 = icmp eq ptr %69, @snd_hwdep_devices
  br i1 %70, label %88, label %71

71:                                               ; preds = %80, %67
  %72 = phi ptr [ %81, %80 ], [ %69, %67 ]
  %73 = getelementptr i8, ptr %72, i32 -4
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %72, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, %68
  br i1 %79, label %83, label %80

80:                                               ; preds = %76, %71
  %81 = load ptr, ptr %72, align 4
  %82 = icmp eq ptr %81, @snd_hwdep_devices
  br i1 %82, label %88, label %71

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %72, i32 -4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @snd_hwdep_info(ptr noundef nonnull %84, ptr noundef %58)
  br label %88

88:                                               ; preds = %86, %83, %80, %67
  %89 = phi i32 [ %87, %86 ], [ -6, %83 ], [ -6, %67 ], [ -6, %80 ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  br label %90

90:                                               ; preds = %88, %57, %49, %5, %4
  %91 = phi i32 [ -14, %5 ], [ %56, %49 ], [ %89, %88 ], [ -14, %57 ], [ -515, %4 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @snd_hwdep_proc_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @register_mutex) #9
  %3 = load ptr, ptr @snd_hwdep_devices, align 4
  %4 = icmp eq ptr %3, @snd_hwdep_devices
  br i1 %4, label %16, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %7, align 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr i8, ptr %6, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %6, i32 44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %10, i32 noundef %12, ptr noundef %13) #9
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, @snd_hwdep_devices
  br i1 %15, label %16, label %5

16:                                               ; preds = %5, %2
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_unregister_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 3587308}
!9 = !{i64 3587505}
!10 = !{i64 2151072784}
!11 = !{i64 2152085815, i64 2152086095, i64 2152086429, i64 2152086763}
!12 = !{i64 2151091774, i64 2151091799}
!13 = !{i64 2151091196, i64 2151091221}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"auto-init"}
!16 = !{i64 2152079410}
!17 = !{i64 2152100514, i64 2152100794, i64 2152101128, i64 2152101462}
!18 = !{i64 2152113551, i64 2152113831, i64 2152114165, i64 2152114499}
!19 = !{i64 2152125637, i64 2152125917, i64 2152126251, i64 2152126585}
