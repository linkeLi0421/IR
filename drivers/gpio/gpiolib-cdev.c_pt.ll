; ModuleID = '/llk/IR/drivers/gpio/gpiolib-cdev.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib-cdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.gpio_v2_line_info_changed = type { %struct.gpio_v2_line_info, i64, i32, [5 x i32] }
%struct.gpio_v2_line_info = type { [32 x i8], [32 x i8], i32, i32, i64, [10 x %struct.gpio_v2_line_attribute], [4 x i32] }
%struct.gpio_v2_line_attribute = type { i32, i32, %union.anon.71 }
%union.anon.71 = type { i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.gpioline_info_changed = type { %struct.gpioline_info, i64, i32, [5 x i32] }
%struct.gpioline_info = type { i32, i32, [32 x i8], [32 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.gpio_chardev_data = type { ptr, %struct.wait_queue_head, %struct.anon.69, %struct.notifier_block, ptr, %struct.atomic_t }
%struct.anon.69 = type { %union.anon.70, [32 x %struct.gpio_v2_line_info_changed] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gpioevent_request = type { i32, i32, i32, [32 x i8], i32 }
%struct.gpiohandle_request = type { [64 x i32], i32, [64 x i8], [32 x i8], i32, i32 }
%struct.gpiochip_info = type { [32 x i8], [32 x i8], i32 }
%struct.linehandle_state = type { ptr, ptr, [64 x ptr], i32 }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.lineevent_state = type { ptr, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.anon.72, i64 }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.gpioevent_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.gpioevent_data = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.68 = type { ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.gpio_v2_line_request = type { [64 x i32], [32 x i8], %struct.gpio_v2_line_config, i32, i32, [5 x i32], i32 }
%struct.gpio_v2_line_config = type { i64, i32, [5 x i32], [10 x %struct.gpio_v2_line_config_attribute] }
%struct.gpio_v2_line_config_attribute = type { %struct.gpio_v2_line_attribute, i64 }
%struct.linereq = type { ptr, ptr, i32, %struct.wait_queue_head, i32, %struct.anon.74, %struct.atomic_t, %struct.mutex, [0 x %struct.line] }
%struct.anon.74 = type { %union.anon.75, [0 x %struct.gpio_v2_line_event] }
%union.anon.75 = type { %struct.__kfifo }
%struct.gpio_v2_line_event = type { i64, i32, i32, i32, i32, [6 x i32] }
%struct.line = type { ptr, ptr, i32, i64, i64, i32, i32, %struct.delayed_work, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.gpiohandle_config = type { i32, [64 x i8], [4 x i32] }
%struct.gpiohandle_data = type { [64 x i8] }
%struct.gpio_v2_line_values = type { i64, i64 }

@gpio_fileops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @lineinfo_watch_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lineinfo_watch_poll, ptr @gpio_ioctl, ptr null, ptr null, i32 0, ptr @gpio_chrdev_open, ptr null, ptr @gpio_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"gpio-linehandle\00", align 1
@linehandle_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @linehandle_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @linehandle_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@lineevent_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&le->wait\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gpio-event\00", align 1
@lineevent_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @lineevent_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lineevent_poll, ptr @lineevent_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @lineevent_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gpio_lock = external dso_local global %struct.spinlock, align 4
@linereq_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"&lr->config_mutex\00", align 1
@linereq_create.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"&lr->wait\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"gpio-line\00", align 1
@line_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @linereq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @linereq_poll, ptr @linereq_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @linereq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gpio_chrdev_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"&cdev->wait\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiolib_cdev_register(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 2
  tail call void @cdev_init(ptr noundef %3, ptr noundef nonnull @gpio_fileops) #10
  %4 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 2, i32 1
  store ptr null, ptr %4, align 4
  %5 = and i32 %1, -1048576
  %6 = load i32, ptr %0, align 8
  %7 = or i32 %6, %5
  %8 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 1, i32 27
  store i32 %7, ptr %9, align 8
  %10 = tail call i32 @cdev_device_add(ptr noundef %3, ptr noundef %8) #10
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiolib_cdev_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %2, ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineinfo_watch_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.gpio_v2_line_info_changed, align 8
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = alloca %struct.gpioline_info_changed, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(288) %5, i8 0, i32 288, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.gpio_chardev_data, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.gpio_chardev_data, ptr %9, i32 0, i32 2
  %12 = getelementptr inbounds %struct.gpio_chardev_data, ptr %9, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  %18 = getelementptr inbounds %struct.gpio_chardev_data, ptr %9, i32 0, i32 5
  %19 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %5, i32 0, i32 4
  %20 = getelementptr inbounds %struct.gpioline_info, ptr %7, i32 0, i32 2
  %21 = getelementptr inbounds %struct.gpioline_info, ptr %7, i32 0, i32 3
  %22 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.gpioline_info, ptr %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.gpioline_info_changed, ptr %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %5, i32 0, i32 2
  %28 = getelementptr inbounds %struct.gpioline_info_changed, ptr %7, i32 0, i32 2
  %29 = getelementptr inbounds i8, ptr %7, i32 80
  br label %30

30:                                               ; preds = %132, %4
  %31 = phi i32 [ 0, %4 ], [ %133, %132 ]
  call void @_raw_spin_lock(ptr noundef %10) #10
  %32 = load i32, ptr %11, align 8
  %33 = load i32, ptr %12, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = icmp eq i32 %31, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %38 = load i16, ptr %10, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %136

40:                                               ; preds = %35
  %41 = load i32, ptr %13, align 4
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %45 = load i16, ptr %10, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %136

47:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  %48 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %6, align 4
  store ptr %48, ptr %14, align 4
  store ptr @autoremove_wake_function, ptr %15, align 4
  store ptr %16, ptr %16, align 4
  store ptr %16, ptr %17, align 4
  br label %49

49:                                               ; preds = %52, %47
  %50 = call i32 @do_wait_intr(ptr noundef %10, ptr noundef nonnull %6) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, ptr %11, align 8
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %49, label %63

56:                                               ; preds = %49
  %57 = load ptr, ptr %17, align 4
  %58 = load ptr, ptr %16, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  %60 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 1
  store volatile i32 0, ptr %60, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %61 = load i16, ptr %10, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %136

63:                                               ; preds = %52
  %64 = load ptr, ptr %17, align 4
  %65 = load ptr, ptr %16, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %65, ptr %64, align 4
  %67 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 1
  store volatile i32 0, ptr %67, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %68

68:                                               ; preds = %63, %30
  %69 = load volatile i32, ptr %18, align 4
  %70 = icmp eq i32 %69, 2
  %71 = select i1 %70, i32 288, i32 104
  %72 = icmp ugt i32 %71, %2
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %74 = load i16, ptr %10, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %136

76:                                               ; preds = %68
  %77 = call i32 @__kfifo_out(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %78 = load i16, ptr %10, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %80 = icmp eq i32 %77, 1
  br i1 %80, label %81, label %136

81:                                               ; preds = %76
  br i1 %70, label %82, label %95

82:                                               ; preds = %81
  %83 = getelementptr i8, ptr %1, i32 %31
  %84 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %83, i32 288, i32 -1090519040) #11, !srcloc !13
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %82
  %88 = tail call ptr @llvm.thread.pointer() #10
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 3
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %89) #12, !srcloc !14
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %93 = call i32 @arm_copy_to_user(ptr noundef %83, ptr noundef nonnull %5, i32 noundef 288) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %132, label %136

95:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %96 = load i64, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 32, i1 false) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %21, ptr noundef align 8 dereferenceable(32) %22, i32 32, i1 false) #10
  %97 = load i32, ptr %23, align 8
  store i32 %97, ptr %7, align 8
  %98 = trunc i64 %96 to i32
  %99 = and i32 %98, 1
  %100 = lshr i32 %98, 2
  %101 = and i32 %100, 2
  %102 = or i32 %101, %99
  %103 = shl i32 %98, 1
  %104 = and i32 %103, 4
  %105 = or i32 %102, %104
  %106 = lshr i32 %98, 3
  %107 = and i32 %106, 8
  %108 = or i32 %105, %107
  %109 = and i32 %106, 16
  %110 = or i32 %108, %109
  %111 = and i32 %106, 32
  %112 = or i32 %110, %111
  %113 = and i32 %106, 64
  %114 = or i32 %112, %113
  %115 = and i32 %106, 128
  %116 = or i32 %114, %115
  store i32 %116, ptr %24, align 4
  %117 = load i64, ptr %25, align 8
  store i64 %117, ptr %26, align 8
  %118 = load i32, ptr %27, align 8
  store i32 %118, ptr %28, align 8
  %119 = getelementptr i8, ptr %1, i32 %31
  %120 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %119, i32 %71, i32 -1090519040) #11, !srcloc !13
  %121 = extractvalue { i32, i32 } %120, 0
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %7) #10
  br label %136

124:                                              ; preds = %95
  %125 = tail call ptr @llvm.thread.pointer() #10
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %127 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #12, !srcloc !14
  %128 = and i32 %127, -13
  %129 = or i32 %128, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %130 = call i32 @arm_copy_to_user(ptr noundef %119, ptr noundef nonnull %7, i32 noundef %71) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %131 = icmp eq i32 %130, 0
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %7) #10
  br i1 %131, label %132, label %136

132:                                              ; preds = %124, %87
  %133 = add i32 %71, %31
  %134 = add i32 %133, 288
  %135 = icmp ugt i32 %134, %2
  br i1 %135, label %136, label %30

136:                                              ; preds = %132, %124, %123, %87, %82, %76, %73, %56, %44, %37
  %137 = phi i32 [ %31, %37 ], [ -11, %44 ], [ %50, %56 ], [ -22, %73 ], [ -14, %123 ], [ -14, %82 ], [ %31, %76 ], [ %133, %132 ], [ -14, %87 ], [ -14, %124 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %5) #10
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineinfo_watch_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gpio_chardev_data, ptr %4, i32 0, i32 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  br label %13

13:                                               ; preds = %12, %7, %2
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %14 = getelementptr inbounds %struct.gpio_chardev_data, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.gpio_chardev_data, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %21 = select i1 %18, i32 0, i32 65
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gpio_v2_line_info, align 8
  %5 = alloca %struct.gpioline_info, align 4
  %6 = alloca %struct.gpio_v2_line_info, align 8
  %7 = alloca %struct.gpioevent_request, align 4
  %8 = alloca %struct.gpiohandle_request, align 4
  %9 = alloca %struct.gpiochip_info, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = inttoptr i32 %2 to ptr
  %14 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %490, label %17

17:                                               ; preds = %3
  switch i32 %1, label %334 [
    i32 -2142981119, label %18
    i32 -1049840637, label %50
    i32 -1070550012, label %202
  ]

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %9) #10
  %19 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %9, i8 0, i64 68, i1 false) #10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ %20, %18 ]
  %27 = call i32 @strscpy(ptr noundef nonnull %9, ptr noundef %26, i32 noundef 32) #10
  %28 = getelementptr inbounds %struct.gpiochip_info, ptr %9, i32 0, i32 1
  %29 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @strscpy(ptr noundef %28, ptr noundef %30, i32 noundef 32) #10
  %32 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 8
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.gpiochip_info, ptr %9, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 68, i32 -1090519040) #11, !srcloc !13
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = tail call ptr @llvm.thread.pointer() #10
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #12, !srcloc !14
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %45 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %9, i32 noundef 68) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 0, i32 -14
  br label %48

48:                                               ; preds = %39, %25
  %49 = phi i32 [ -14, %25 ], [ %47, %39 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %9) #10
  br label %490

50:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 364, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(364) %8, i8 0, i32 364, i1 false) #10, !annotation !8
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 364, i32 -1090519040) #11
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62, !prof !17

54:                                               ; preds = %50
  %55 = tail call ptr @llvm.thread.pointer() #10
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %56) #12, !srcloc !14
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %60 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %13, i32 noundef 364) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !17

62:                                               ; preds = %54, %50
  %63 = phi i32 [ %60, %54 ], [ 364, %50 ]
  %64 = sub i32 364, %63
  %65 = getelementptr i8, ptr %8, i32 %64
  call void @llvm.memset.p0.i32(ptr align 1 %65, i8 0, i32 %63, i1 false) #10
  br label %200

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.gpiohandle_request, ptr %8, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -65
  %70 = icmp ult i32 %69, -64
  br i1 %70, label %200, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gpiohandle_request, ptr %8, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = icmp ult i32 %73, 256
  br i1 %74, label %75, label %200

75:                                               ; preds = %71
  %76 = and i32 %73, 3
  %77 = icmp eq i32 %76, 3
  %78 = and i32 %73, 24
  %79 = icmp eq i32 %78, 24
  %80 = or i1 %77, %79
  br i1 %80, label %200, label %81

81:                                               ; preds = %75
  %82 = and i32 %73, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = icmp eq i32 %78, 0
  br i1 %85, label %86, label %200

86:                                               ; preds = %84
  %87 = icmp ne i32 %76, 0
  %88 = and i32 %73, 224
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %87, %89
  br i1 %90, label %91, label %200

91:                                               ; preds = %86, %81
  %92 = and i32 %73, 128
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %73, 96
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %93, %95
  %97 = icmp eq i32 %94, 96
  %98 = or i1 %97, %96
  br i1 %98, label %200, label %99

99:                                               ; preds = %91
  %100 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %101 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 268) #13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %200, label %103

103:                                              ; preds = %99
  store ptr %12, ptr %101, align 8
  %104 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  %105 = call ptr @get_device(ptr noundef %104) #10
  %106 = getelementptr inbounds %struct.gpiohandle_request, ptr %8, i32 0, i32 3
  %107 = load i8, ptr %106, align 4
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = call ptr @kstrndup(ptr noundef %106, i32 noundef 31, i32 noundef 3264) #10
  %111 = getelementptr inbounds %struct.linehandle_state, ptr %101, i32 0, i32 1
  store ptr %110, ptr %111, align 4
  %112 = icmp eq ptr %110, null
  br i1 %112, label %178, label %113

113:                                              ; preds = %109, %103
  %114 = load i32, ptr %67, align 4
  %115 = getelementptr inbounds %struct.linehandle_state, ptr %101, i32 0, i32 3
  store i32 %114, ptr %115, align 8
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %161, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.linehandle_state, ptr %101, i32 0, i32 1
  %119 = and i32 %73, 1
  %120 = icmp eq i32 %119, 0
  br label %121

121:                                              ; preds = %154, %117
  %122 = phi i32 [ 0, %117 ], [ %158, %154 ]
  %123 = getelementptr [64 x i32], ptr %8, i32 0, i32 %122
  %124 = load i32, ptr %123, align 4
  %125 = load ptr, ptr %14, align 4
  %126 = call ptr @gpiochip_get_desc(ptr noundef %125, i32 noundef %124) #10
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = ptrtoint ptr %126 to i32
  br label %178

130:                                              ; preds = %121
  %131 = load ptr, ptr %118, align 4
  %132 = call i32 @gpiod_request(ptr noundef %126, ptr noundef %131) #10
  %133 = icmp eq i32 %132, -517
  %134 = select i1 %133, i32 -19, i32 %132
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %178

136:                                              ; preds = %130
  %137 = getelementptr %struct.linehandle_state, ptr %101, i32 0, i32 2, i32 %122
  store ptr %126, ptr %137, align 4
  %138 = load i32, ptr %72, align 4
  %139 = getelementptr inbounds %struct.gpio_desc, ptr %126, i32 0, i32 1
  call fastcc void @linehandle_flags_to_desc_flags(i32 noundef %138, ptr noundef %139) #10
  %140 = call i32 @gpiod_set_transitory(ptr noundef %126, i1 noundef zeroext false) #10
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %178, label %142

142:                                              ; preds = %136
  br i1 %83, label %150, label %143

143:                                              ; preds = %142
  %144 = getelementptr %struct.gpiohandle_request, ptr %8, i32 0, i32 2, i32 %122
  %145 = load i8, ptr %144, align 1
  %146 = icmp ne i8 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @gpiod_direction_output(ptr noundef %126, i32 noundef %147) #10
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %178

150:                                              ; preds = %142
  br i1 %120, label %154, label %151

151:                                              ; preds = %150
  %152 = call i32 @gpiod_direction_input(ptr noundef %126) #10
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %151, %150, %143
  %155 = load ptr, ptr %126, align 4
  %156 = getelementptr inbounds %struct.gpio_device, ptr %155, i32 0, i32 12
  %157 = call i32 @blocking_notifier_call_chain(ptr noundef %156, i32 noundef 1, ptr noundef %126) #10
  %158 = add nuw i32 %122, 1
  %159 = load i32, ptr %67, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %121, label %161

161:                                              ; preds = %154, %113
  %162 = call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %178, label %164

164:                                              ; preds = %161
  %165 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.2, ptr noundef nonnull @linehandle_fileops, ptr noundef nonnull %101, i32 noundef 524288) #10
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = ptrtoint ptr %165 to i32
  call void @put_unused_fd(i32 noundef %162) #10
  br label %178

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.gpiohandle_request, ptr %8, i32 0, i32 5
  store i32 %162, ptr %170, align 4
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %56) #12, !srcloc !14
  %172 = and i32 %171, -13
  %173 = or i32 %172, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %174 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %8, i32 noundef 364) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  call void @fput(ptr noundef %165) #10
  call void @put_unused_fd(i32 noundef %162) #10
  br label %200

177:                                              ; preds = %169
  call void @fd_install(i32 noundef %162, ptr noundef %165) #10
  br label %200

178:                                              ; preds = %167, %161, %151, %143, %136, %130, %128, %109
  %179 = phi i32 [ %168, %167 ], [ -12, %109 ], [ %162, %161 ], [ %129, %128 ], [ %152, %151 ], [ %140, %136 ], [ %134, %130 ], [ %148, %143 ]
  %180 = getelementptr inbounds %struct.linehandle_state, ptr %101, i32 0, i32 3
  %181 = load i32, ptr %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %191, %178
  %184 = phi i32 [ %192, %191 ], [ %181, %178 ]
  %185 = phi i32 [ %193, %191 ], [ 0, %178 ]
  %186 = getelementptr %struct.linehandle_state, ptr %101, i32 0, i32 2, i32 %185
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %183
  call void @gpiod_free(ptr noundef nonnull %187) #10
  %190 = load i32, ptr %180, align 8
  br label %191

191:                                              ; preds = %189, %183
  %192 = phi i32 [ %184, %183 ], [ %190, %189 ]
  %193 = add nuw i32 %185, 1
  %194 = icmp ult i32 %193, %192
  br i1 %194, label %183, label %195

195:                                              ; preds = %191, %178
  %196 = getelementptr inbounds %struct.linehandle_state, ptr %101, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  call void @kfree(ptr noundef %197) #10
  %198 = load ptr, ptr %101, align 8
  %199 = getelementptr inbounds %struct.gpio_device, ptr %198, i32 0, i32 1
  call void @put_device(ptr noundef %199) #10
  call void @kfree(ptr noundef nonnull %101) #10
  br label %200

200:                                              ; preds = %195, %177, %176, %99, %91, %86, %84, %75, %71, %66, %62
  %201 = phi i32 [ %179, %195 ], [ -14, %176 ], [ 0, %177 ], [ -22, %66 ], [ -12, %99 ], [ -14, %62 ], [ -22, %71 ], [ -22, %75 ], [ -22, %84 ], [ -22, %91 ], [ -22, %86 ]
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %8) #10
  br label %490

202:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 48, i1 false) #10, !annotation !8
  %203 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 48, i32 -1090519040) #11
  %204 = extractvalue { i32, i32 } %203, 0
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %214, !prof !17

206:                                              ; preds = %202
  %207 = tail call ptr @llvm.thread.pointer() #10
  %208 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 3
  %209 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %208) #12, !srcloc !14
  %210 = and i32 %209, -13
  %211 = or i32 %210, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %211) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %212 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %13, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %209) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214, !prof !17

214:                                              ; preds = %206, %202
  %215 = phi i32 [ %212, %206 ], [ 48, %202 ]
  %216 = sub i32 48, %215
  %217 = getelementptr i8, ptr %7, i32 %216
  call void @llvm.memset.p0.i32(ptr align 1 %217, i8 0, i32 %215, i1 false) #10
  br label %332

218:                                              ; preds = %206
  %219 = load i32, ptr %7, align 4
  %220 = getelementptr inbounds %struct.gpioevent_request, ptr %7, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.gpioevent_request, ptr %7, i32 0, i32 2
  %223 = load i32, ptr %222, align 4
  %224 = load ptr, ptr %14, align 4
  %225 = call ptr @gpiochip_get_desc(ptr noundef %224, i32 noundef %219) #10
  %226 = icmp ugt ptr %225, inttoptr (i32 -4096 to ptr)
  br i1 %226, label %227, label %229

227:                                              ; preds = %218
  %228 = ptrtoint ptr %225 to i32
  br label %332

229:                                              ; preds = %218
  %230 = icmp ult i32 %221, 256
  %231 = icmp ult i32 %223, 4
  %232 = select i1 %230, i1 %231, i1 false
  %233 = and i32 %221, 26
  %234 = icmp eq i32 %233, 0
  %235 = and i1 %234, %232
  br i1 %235, label %236, label %332

236:                                              ; preds = %229
  %237 = and i32 %221, 128
  %238 = icmp ne i32 %237, 0
  %239 = and i32 %221, 96
  %240 = icmp ne i32 %239, 0
  %241 = and i1 %238, %240
  %242 = icmp eq i32 %239, 96
  %243 = or i1 %242, %241
  br i1 %243, label %332, label %244

244:                                              ; preds = %236
  %245 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %246 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %245, i32 noundef 3520, i32 noundef 320) #13
  %247 = icmp eq ptr %246, null
  br i1 %247, label %332, label %248

248:                                              ; preds = %244
  store ptr %12, ptr %246, align 8
  %249 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  %250 = call ptr @get_device(ptr noundef %249) #10
  %251 = getelementptr inbounds %struct.gpioevent_request, ptr %7, i32 0, i32 3
  %252 = load i8, ptr %251, align 4
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 1
  %256 = load ptr, ptr %255, align 4
  br label %261

257:                                              ; preds = %248
  %258 = call ptr @kstrndup(ptr noundef %251, i32 noundef 31, i32 noundef 3264) #10
  %259 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 1
  store ptr %258, ptr %259, align 4
  %260 = icmp eq ptr %258, null
  br i1 %260, label %330, label %261

261:                                              ; preds = %257, %254
  %262 = phi ptr [ %256, %254 ], [ %258, %257 ]
  %263 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 1
  %264 = call i32 @gpiod_request(ptr noundef %225, ptr noundef %262) #10
  %265 = icmp eq i32 %264, -517
  %266 = select i1 %265, i32 -19, i32 %264
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %330

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 2
  store ptr %225, ptr %269, align 8
  %270 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 3
  store i32 %223, ptr %270, align 4
  %271 = getelementptr inbounds %struct.gpio_desc, ptr %225, i32 0, i32 1
  call fastcc void @linehandle_flags_to_desc_flags(i32 noundef %221, ptr noundef %271) #10
  %272 = call i32 @gpiod_direction_input(ptr noundef %225) #10
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %330

274:                                              ; preds = %268
  %275 = load ptr, ptr %225, align 4
  %276 = getelementptr inbounds %struct.gpio_device, ptr %275, i32 0, i32 12
  %277 = call i32 @blocking_notifier_call_chain(ptr noundef %276, i32 noundef 1, ptr noundef %225) #10
  %278 = call i32 @gpiod_to_irq(ptr noundef %225) #10
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %330, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 4
  store i32 %278, ptr %281, align 8
  %282 = and i32 %223, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %289, label %284

284:                                              ; preds = %280
  %285 = load volatile i32, ptr %271, align 4
  %286 = and i32 %285, 64
  %287 = icmp eq i32 %286, 0
  %288 = select i1 %287, i32 1, i32 2
  br label %289

289:                                              ; preds = %284, %280
  %290 = phi i32 [ %288, %284 ], [ 0, %280 ]
  %291 = and i32 %223, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %289
  %294 = load volatile i32, ptr %271, align 4
  %295 = and i32 %294, 64
  %296 = icmp eq i32 %295, 0
  %297 = select i1 %296, i32 2, i32 1
  %298 = or i32 %297, %290
  br label %299

299:                                              ; preds = %293, %289
  %300 = phi i32 [ %298, %293 ], [ %290, %289 ]
  %301 = or i32 %300, 8192
  %302 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 6
  store i32 0, ptr %302, align 8
  %303 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 6, i32 0, i32 0, i32 1
  store i32 0, ptr %303, align 4
  %304 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 6, i32 0, i32 0, i32 2
  store i32 15, ptr %304, align 8
  %305 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 6, i32 0, i32 0, i32 3
  store i32 16, ptr %305, align 4
  %306 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 6, i32 1
  %307 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 6, i32 0, i32 0, i32 4
  store ptr %306, ptr %307, align 8
  %308 = getelementptr inbounds %struct.lineevent_state, ptr %246, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %308, ptr noundef nonnull @.str.3, ptr noundef nonnull @lineevent_create.__key) #10
  %309 = load i32, ptr %281, align 8
  %310 = load ptr, ptr %263, align 4
  %311 = call i32 @request_threaded_irq(i32 noundef %309, ptr noundef nonnull @lineevent_irq_handler, ptr noundef nonnull @lineevent_irq_thread, i32 noundef %301, ptr noundef %310, ptr noundef nonnull %246) #10
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %299
  %314 = call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %330, label %316

316:                                              ; preds = %313
  %317 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.4, ptr noundef nonnull @lineevent_fileops, ptr noundef nonnull %246, i32 noundef 524288) #10
  %318 = icmp ugt ptr %317, inttoptr (i32 -4096 to ptr)
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = ptrtoint ptr %317 to i32
  call void @put_unused_fd(i32 noundef %314) #10
  br label %330

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.gpioevent_request, ptr %7, i32 0, i32 4
  store i32 %314, ptr %322, align 4
  %323 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %208) #12, !srcloc !14
  %324 = and i32 %323, -13
  %325 = or i32 %324, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %325) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %326 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %7, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %323) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %321
  call void @fput(ptr noundef %317) #10
  call void @put_unused_fd(i32 noundef %314) #10
  br label %332

329:                                              ; preds = %321
  call void @fd_install(i32 noundef %314, ptr noundef %317) #10
  br label %332

330:                                              ; preds = %319, %313, %299, %274, %268, %261, %257
  %331 = phi i32 [ %266, %261 ], [ %272, %268 ], [ %311, %299 ], [ %320, %319 ], [ -12, %257 ], [ -19, %274 ], [ %314, %313 ]
  call fastcc void @lineevent_free(ptr noundef nonnull %246) #10
  br label %332

332:                                              ; preds = %330, %329, %328, %244, %236, %229, %227, %214
  %333 = phi i32 [ %228, %227 ], [ %331, %330 ], [ -14, %328 ], [ 0, %329 ], [ -22, %229 ], [ -22, %236 ], [ -12, %244 ], [ -14, %214 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #10
  br label %490

334:                                              ; preds = %17
  %335 = icmp eq i32 %1, -1068977141
  switch i32 %1, label %419 [
    i32 -1068977141, label %336
    i32 -1068977150, label %336
  ]

336:                                              ; preds = %334, %334
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(256) %6, i8 0, i32 256, i1 false) #10, !annotation !8
  %337 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 72, i32 -1090519040) #11
  %338 = extractvalue { i32, i32 } %337, 0
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %348, !prof !17

340:                                              ; preds = %336
  %341 = tail call ptr @llvm.thread.pointer() #10
  %342 = getelementptr inbounds %struct.thread_info, ptr %341, i32 0, i32 3
  %343 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %342) #12, !srcloc !14
  %344 = and i32 %343, -13
  %345 = or i32 %344, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %345) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %346 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %13, i32 noundef 72) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %343) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %352, label %348, !prof !17

348:                                              ; preds = %340, %336
  %349 = phi i32 [ %346, %340 ], [ 72, %336 ]
  %350 = sub i32 72, %349
  %351 = getelementptr i8, ptr %5, i32 %350
  call void @llvm.memset.p0.i32(ptr align 1 %351, i8 0, i32 %349, i1 false) #10
  br label %417

352:                                              ; preds = %340
  %353 = load ptr, ptr %11, align 8
  %354 = getelementptr inbounds %struct.gpio_device, ptr %353, i32 0, i32 5
  %355 = load ptr, ptr %354, align 4
  %356 = load i32, ptr %5, align 4
  %357 = call ptr @gpiochip_get_desc(ptr noundef %355, i32 noundef %356) #10
  %358 = icmp ugt ptr %357, inttoptr (i32 -4096 to ptr)
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = ptrtoint ptr %357 to i32
  br label %417

361:                                              ; preds = %352
  br i1 %335, label %362, label %377

362:                                              ; preds = %361
  %363 = getelementptr inbounds %struct.gpio_chardev_data, ptr %11, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %363) #10, !srcloc !19
  br label %364

364:                                              ; preds = %364, %362
  %365 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %363, ptr %363, i32 0, i32 1, ptr elementtype(i32) %363) #10, !srcloc !20
  %366 = extractvalue { i32, i32 } %365, 0
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %364

368:                                              ; preds = %364
  %369 = extractvalue { i32, i32 } %365, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %370 = icmp ult i32 %369, 2
  br i1 %370, label %371, label %417

371:                                              ; preds = %368
  %372 = load i32, ptr %5, align 4
  %373 = getelementptr inbounds %struct.gpio_chardev_data, ptr %11, i32 0, i32 4
  %374 = load ptr, ptr %373, align 4
  %375 = call i32 @_test_and_set_bit(i32 noundef %372, ptr noundef %374) #10
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %417

377:                                              ; preds = %371, %361
  call fastcc void @gpio_desc_to_lineinfo(ptr noundef %357, ptr noundef nonnull %6) #10
  %378 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %6, i32 0, i32 4
  %379 = load i64, ptr %378, align 8
  %380 = getelementptr inbounds %struct.gpioline_info, ptr %5, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %380, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 32, i1 false) #10
  %381 = getelementptr inbounds %struct.gpioline_info, ptr %5, i32 0, i32 3
  %382 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %381, ptr noundef align 8 dereferenceable(32) %382, i32 32, i1 false) #10
  %383 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %6, i32 0, i32 2
  %384 = load i32, ptr %383, align 8
  store i32 %384, ptr %5, align 4
  %385 = trunc i64 %379 to i32
  %386 = and i32 %385, 1
  %387 = lshr i32 %385, 2
  %388 = and i32 %387, 2
  %389 = or i32 %388, %386
  %390 = shl i32 %385, 1
  %391 = and i32 %390, 4
  %392 = or i32 %389, %391
  %393 = lshr i32 %385, 3
  %394 = and i32 %393, 8
  %395 = or i32 %392, %394
  %396 = and i32 %393, 16
  %397 = or i32 %395, %396
  %398 = and i32 %393, 32
  %399 = or i32 %397, %398
  %400 = and i32 %393, 64
  %401 = or i32 %399, %400
  %402 = and i32 %393, 128
  %403 = or i32 %401, %402
  %404 = getelementptr inbounds %struct.gpioline_info, ptr %5, i32 0, i32 1
  store i32 %403, ptr %404, align 4
  %405 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %342) #12, !srcloc !14
  %406 = and i32 %405, -13
  %407 = or i32 %406, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %407) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %408 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %5, i32 noundef 72) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %405) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %409 = icmp eq i32 %408, 0
  %410 = xor i1 %335, true
  %411 = or i1 %409, %410
  %412 = select i1 %409, i32 0, i32 -14
  br i1 %411, label %417, label %413

413:                                              ; preds = %377
  %414 = load i32, ptr %5, align 4
  %415 = getelementptr inbounds %struct.gpio_chardev_data, ptr %11, i32 0, i32 4
  %416 = load ptr, ptr %415, align 4
  call void @_clear_bit(i32 noundef %414, ptr noundef %416) #10
  br label %417

417:                                              ; preds = %413, %377, %371, %368, %359, %348
  %418 = phi i32 [ %360, %359 ], [ -1, %368 ], [ -16, %371 ], [ -14, %413 ], [ %412, %377 ], [ -14, %348 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #10
  br label %490

419:                                              ; preds = %334
  %420 = add i32 %1, 1056918523
  %421 = icmp ult i32 %420, 2
  br i1 %421, label %422, label %485

422:                                              ; preds = %419
  %423 = icmp eq i32 %1, -1056918522
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(256) %4, i8 0, i32 256, i1 false) #10, !annotation !8
  %424 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 256, i32 -1090519040) #11
  %425 = extractvalue { i32, i32 } %424, 0
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %435, !prof !17

427:                                              ; preds = %422
  %428 = tail call ptr @llvm.thread.pointer() #10
  %429 = getelementptr inbounds %struct.thread_info, ptr %428, i32 0, i32 3
  %430 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %429) #12, !srcloc !14
  %431 = and i32 %430, -13
  %432 = or i32 %431, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %432) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %433 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %13, i32 noundef 256) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %430) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %439, label %435, !prof !17

435:                                              ; preds = %427, %422
  %436 = phi i32 [ %433, %427 ], [ 256, %422 ]
  %437 = sub i32 256, %436
  %438 = getelementptr i8, ptr %4, i32 %437
  call void @llvm.memset.p0.i32(ptr align 1 %438, i8 0, i32 %436, i1 false) #10
  br label %483

439:                                              ; preds = %427
  %440 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %4, i32 0, i32 6
  %441 = call ptr @memchr_inv(ptr noundef %440, i32 noundef 0, i32 noundef 16) #10
  %442 = icmp eq ptr %441, null
  br i1 %442, label %443, label %483

443:                                              ; preds = %439
  %444 = load ptr, ptr %11, align 8
  %445 = getelementptr inbounds %struct.gpio_device, ptr %444, i32 0, i32 5
  %446 = load ptr, ptr %445, align 4
  %447 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %4, i32 0, i32 2
  %448 = load i32, ptr %447, align 8
  %449 = call ptr @gpiochip_get_desc(ptr noundef %446, i32 noundef %448) #10
  %450 = icmp ugt ptr %449, inttoptr (i32 -4096 to ptr)
  br i1 %450, label %451, label %453

451:                                              ; preds = %443
  %452 = ptrtoint ptr %449 to i32
  br label %483

453:                                              ; preds = %443
  br i1 %423, label %454, label %470

454:                                              ; preds = %453
  %455 = getelementptr inbounds %struct.gpio_chardev_data, ptr %11, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %455) #10, !srcloc !19
  br label %456

456:                                              ; preds = %456, %454
  %457 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %455, ptr %455, i32 0, i32 2, ptr elementtype(i32) %455) #10, !srcloc !20
  %458 = extractvalue { i32, i32 } %457, 0
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %456

460:                                              ; preds = %456
  %461 = extractvalue { i32, i32 } %457, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %462 = and i32 %461, -3
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %483

464:                                              ; preds = %460
  %465 = load i32, ptr %447, align 8
  %466 = getelementptr inbounds %struct.gpio_chardev_data, ptr %11, i32 0, i32 4
  %467 = load ptr, ptr %466, align 4
  %468 = call i32 @_test_and_set_bit(i32 noundef %465, ptr noundef %467) #10
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %483

470:                                              ; preds = %464, %453
  call fastcc void @gpio_desc_to_lineinfo(ptr noundef %449, ptr noundef nonnull %4) #10
  %471 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %429) #12, !srcloc !14
  %472 = and i32 %471, -13
  %473 = or i32 %472, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %473) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %474 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %4, i32 noundef 256) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %471) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %475 = icmp eq i32 %474, 0
  %476 = xor i1 %423, true
  %477 = or i1 %475, %476
  %478 = select i1 %475, i32 0, i32 -14
  br i1 %477, label %483, label %479

479:                                              ; preds = %470
  %480 = load i32, ptr %447, align 8
  %481 = getelementptr inbounds %struct.gpio_chardev_data, ptr %11, i32 0, i32 4
  %482 = load ptr, ptr %481, align 4
  call void @_clear_bit(i32 noundef %480, ptr noundef %482) #10
  br label %483

483:                                              ; preds = %479, %470, %464, %460, %451, %439, %435
  %484 = phi i32 [ %452, %451 ], [ -22, %439 ], [ -1, %460 ], [ -16, %464 ], [ -14, %479 ], [ %478, %470 ], [ -14, %435 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #10
  br label %490

485:                                              ; preds = %419
  switch i32 %1, label %490 [
    i32 -1034898425, label %486
    i32 -1073433588, label %488
  ]

486:                                              ; preds = %485
  %487 = tail call fastcc i32 @linereq_create(ptr noundef %12, ptr noundef %13)
  br label %490

488:                                              ; preds = %485
  %489 = tail call fastcc i32 @lineinfo_unwatch(ptr noundef %11, ptr noundef %13)
  br label %490

490:                                              ; preds = %488, %486, %485, %483, %417, %332, %200, %48, %3
  %491 = phi i32 [ %49, %48 ], [ %201, %200 ], [ %333, %332 ], [ %418, %417 ], [ %484, %483 ], [ %487, %486 ], [ %489, %488 ], [ -19, %3 ], [ -22, %485 ]
  ret i32 %491
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_chrdev_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -480
  %6 = getelementptr i8, ptr %4, i32 68
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9280, i32 noundef 3520, i32 noundef 2) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %13, i32 0, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = tail call ptr @bitmap_zalloc(i32 noundef %16, i32 noundef 3264) #10
  %18 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @gpio_chrdev_open.__key) #10
  %22 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 2
  store i32 0, ptr %22, align 16
  %23 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 2
  store i32 31, ptr %24, align 8
  %25 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 3
  store i32 288, ptr %25, align 4
  %26 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 2, i32 0, i32 0, i32 4
  store ptr %26, ptr %27, align 32
  store ptr %5, ptr %10, align 4096
  %28 = getelementptr inbounds %struct.gpio_chardev_data, ptr %10, i32 0, i32 3
  store ptr @lineinfo_changed_notify, ptr %28, align 8
  %29 = getelementptr i8, ptr %4, i32 100
  %30 = tail call i32 @blocking_notifier_chain_register(ptr noundef %29, ptr noundef %28) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = getelementptr i8, ptr %4, i32 -472
  %34 = tail call ptr @get_device(ptr noundef %33) #10
  %35 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %10, ptr %35, align 8
  %36 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %29, ptr noundef %28) #10
  br label %40

40:                                               ; preds = %38, %20
  %41 = phi i32 [ %30, %20 ], [ %36, %38 ]
  %42 = load ptr, ptr %18, align 4
  tail call void @bitmap_free(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %40, %12
  %44 = phi i32 [ %41, %40 ], [ -12, %12 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %45

45:                                               ; preds = %43, %32, %9, %2
  %46 = phi i32 [ %44, %43 ], [ -19, %2 ], [ -12, %9 ], [ 0, %32 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_chrdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gpio_chardev_data, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @bitmap_free(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.gpio_device, ptr %5, i32 0, i32 12
  %9 = getelementptr inbounds %struct.gpio_chardev_data, ptr %4, i32 0, i32 3
  %10 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %8, ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.gpio_device, ptr %5, i32 0, i32 1
  tail call void @put_device(ptr noundef %11) #10
  tail call void @kfree(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_wait_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @linereq_create(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gpio_v2_line_request, align 8
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(592) %3, i8 0, i32 592, i1 false), !annotation !8
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 592, i32 -1090519040) #11
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #12, !srcloc !14
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 592) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 592, %2 ]
  %17 = sub i32 592, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #10
  br label %176

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, -65
  %23 = icmp ult i32 %22, -64
  br i1 %23, label %176, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 5
  %26 = call ptr @memchr_inv(ptr noundef %25, i32 noundef 0, i32 noundef 20) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %176

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 2
  %30 = load i32, ptr %20, align 8
  %31 = call fastcc i32 @gpio_v2_line_config_validate(ptr noundef %29, i32 noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %176

33:                                               ; preds = %28
  %34 = load i32, ptr %20, align 8
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 96) #10
  %36 = extractvalue { i32, i1 } %35, 1
  %37 = extractvalue { i32, i1 } %35, 0
  %38 = call i32 @llvm.uadd.sat.i32(i32 %37, i32 80) #10
  %39 = select i1 %36, i32 -1, i32 %38
  %40 = call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %176, label %42

42:                                               ; preds = %33
  store ptr %0, ptr %40, align 64
  %43 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 1
  %44 = call ptr @get_device(ptr noundef %43) #10
  %45 = load i32, ptr %20, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %47, %42
  %48 = phi i32 [ %56, %47 ], [ 0, %42 ]
  %49 = getelementptr %struct.linereq, ptr %40, i32 0, i32 8, i32 %48, i32 1
  store ptr %40, ptr %49, align 4
  %50 = getelementptr %struct.linereq, ptr %40, i32 0, i32 8, i32 %48, i32 8
  store volatile i32 0, ptr %50, align 4
  %51 = getelementptr %struct.linereq, ptr %40, i32 0, i32 8, i32 %48, i32 7
  store i32 -32, ptr %51, align 8
  %52 = getelementptr inbounds %struct.work_struct, ptr %51, i32 0, i32 1
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.work_struct, ptr %51, i32 0, i32 1, i32 1
  store ptr %52, ptr %53, align 32
  %54 = getelementptr inbounds %struct.work_struct, ptr %51, i32 0, i32 2
  store ptr @debounce_work_func, ptr %54, align 4
  %55 = getelementptr %struct.linereq, ptr %40, i32 0, i32 8, i32 %48, i32 7, i32 1
  call void @init_timer_key(ptr noundef %55, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %56 = add nuw i32 %48, 1
  %57 = load i32, ptr %20, align 8
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %47, label %59

59:                                               ; preds = %47, %42
  %60 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 1
  %61 = load i8, ptr %60, align 8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = call ptr @kstrndup(ptr noundef %60, i32 noundef 31, i32 noundef 3264) #10
  %65 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %174, label %67

67:                                               ; preds = %63, %59
  %68 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 7
  call void @__mutex_init(ptr noundef %68, ptr noundef nonnull @.str.5, ptr noundef nonnull @linereq_create.__key) #10
  %69 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %69, ptr noundef nonnull @.str.7, ptr noundef nonnull @linereq_create.__key.6) #10
  %70 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 4
  store i32 %71, ptr %72, align 8
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, ptr %20, align 8
  %76 = shl i32 %75, 4
  store i32 %76, ptr %72, align 8
  br label %82

77:                                               ; preds = %67
  %78 = icmp ugt i32 %71, 1024
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  store i32 1024, ptr %72, align 8
  br label %80

80:                                               ; preds = %79, %77
  %81 = load i32, ptr %20, align 8
  br label %82

82:                                               ; preds = %80, %74
  %83 = phi i32 [ %81, %80 ], [ %75, %74 ]
  %84 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 6
  store volatile i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 2
  store i32 %83, ptr %85, align 8
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %157, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.gpio_device, ptr %0, i32 0, i32 5
  %89 = getelementptr inbounds %struct.linereq, ptr %40, i32 0, i32 1
  %90 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 2, i32 1
  br label %91

91:                                               ; preds = %150, %87
  %92 = phi i32 [ 0, %87 ], [ %154, %150 ]
  %93 = getelementptr [64 x i32], ptr %3, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %88, align 4
  %96 = call ptr @gpiochip_get_desc(ptr noundef %95, i32 noundef %94) #10
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = ptrtoint ptr %96 to i32
  br label %174

100:                                              ; preds = %91
  %101 = load ptr, ptr %89, align 4
  %102 = call i32 @gpiod_request(ptr noundef %96, ptr noundef %101) #10
  %103 = icmp eq i32 %102, -517
  %104 = select i1 %103, i32 -19, i32 %102
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %174

106:                                              ; preds = %100
  %107 = getelementptr %struct.linereq, ptr %40, i32 0, i32 8, i32 %92
  store ptr %96, ptr %107, align 16
  %108 = zext i32 %92 to i64
  %109 = shl nuw i64 1, %108
  %110 = load i32, ptr %90, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %124, %106
  %113 = phi i32 [ %125, %124 ], [ 0, %106 ]
  %114 = getelementptr %struct.gpio_v2_line_request, ptr %3, i32 0, i32 2, i32 3, i32 %113
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = getelementptr %struct.gpio_v2_line_request, ptr %3, i32 0, i32 2, i32 3, i32 %113, i32 1
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, %109
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %114, i32 0, i32 2
  br label %127

124:                                              ; preds = %117, %112
  %125 = add nuw i32 %113, 1
  %126 = icmp eq i32 %125, %110
  br i1 %126, label %127, label %112

127:                                              ; preds = %124, %122, %106
  %128 = phi ptr [ %123, %122 ], [ %29, %106 ], [ %29, %124 ]
  %129 = load i64, ptr %128, align 8
  %130 = getelementptr inbounds %struct.gpio_desc, ptr %96, i32 0, i32 1
  call fastcc void @gpio_v2_line_config_flags_to_desc_flags(i64 noundef %129, ptr noundef %130)
  %131 = call i32 @gpiod_set_transitory(ptr noundef %96, i1 noundef zeroext false) #10
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %174, label %133

133:                                              ; preds = %127
  %134 = and i64 %129, 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = call fastcc i32 @gpio_v2_line_config_output_value(ptr noundef %29, i32 noundef %92), !range !22
  %138 = call i32 @gpiod_direction_output(ptr noundef %96, i32 noundef %137) #10
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %150, label %174

140:                                              ; preds = %133
  %141 = and i64 %129, 4
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %140
  %144 = call i32 @gpiod_direction_input(ptr noundef %96) #10
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %143
  %147 = and i64 %129, 48
  %148 = call fastcc i32 @edge_detector_setup(ptr noundef %107, ptr noundef %29, i32 noundef %92, i64 noundef %147)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %146, %140, %136
  %151 = load ptr, ptr %96, align 4
  %152 = getelementptr inbounds %struct.gpio_device, ptr %151, i32 0, i32 12
  %153 = call i32 @blocking_notifier_call_chain(ptr noundef %152, i32 noundef 1, ptr noundef %96) #10
  %154 = add nuw i32 %92, 1
  %155 = load i32, ptr %20, align 8
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %91, label %157

157:                                              ; preds = %150, %82
  %158 = call i32 @get_unused_fd_flags(i32 noundef 524288) #10
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %157
  %161 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.8, ptr noundef nonnull @line_fileops, ptr noundef nonnull %40, i32 noundef 524288) #10
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = ptrtoint ptr %161 to i32
  call void @put_unused_fd(i32 noundef %158) #10
  br label %174

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gpio_v2_line_request, ptr %3, i32 0, i32 6
  store i32 %158, ptr %166, align 4
  %167 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #12, !srcloc !14
  %168 = and i32 %167, -13
  %169 = or i32 %168, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %169) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %170 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 592) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %167) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %165
  call void @fput(ptr noundef %161) #10
  call void @put_unused_fd(i32 noundef %158) #10
  br label %176

173:                                              ; preds = %165
  call void @fd_install(i32 noundef %158, ptr noundef %161) #10
  br label %176

174:                                              ; preds = %163, %157, %146, %143, %136, %127, %100, %98, %63
  %175 = phi i32 [ %164, %163 ], [ -12, %63 ], [ %158, %157 ], [ %99, %98 ], [ %138, %136 ], [ %104, %100 ], [ %131, %127 ], [ %144, %143 ], [ %148, %146 ]
  call fastcc void @linereq_free(ptr noundef nonnull %40)
  br label %176

176:                                              ; preds = %174, %173, %172, %33, %28, %24, %19, %15
  %177 = phi i32 [ %175, %174 ], [ -14, %172 ], [ 0, %173 ], [ -22, %19 ], [ -22, %24 ], [ %31, %28 ], [ -12, %33 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %3) #10
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lineinfo_unwatch(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #11, !srcloc !23
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #12, !srcloc !14
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 4, %2 ]
  %17 = sub i32 4, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #10
  br label %32

19:                                               ; preds = %7
  %20 = load i32, ptr %3, align 4
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 8
  %23 = load i16, ptr %22, align 8
  %24 = zext i16 %23 to i32
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gpio_chardev_data, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @_test_and_clear_bit(i32 noundef %20, ptr noundef %28) #10
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 -16, i32 0
  br label %32

32:                                               ; preds = %26, %19, %15
  %33 = phi i32 [ -22, %19 ], [ %31, %26 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @linehandle_flags_to_desc_flags(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = and i32 %0, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %1) #10
  br label %7

6:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %1) #10
  br label %7

7:                                                ; preds = %6, %5
  %8 = and i32 %0, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %1) #10
  br label %12

11:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %1) #10
  br label %12

12:                                               ; preds = %11, %10
  %13 = and i32 %0, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @_set_bit(i32 noundef 8, ptr noundef %1) #10
  br label %17

16:                                               ; preds = %12
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %1) #10
  br label %17

17:                                               ; preds = %16, %15
  %18 = and i32 %0, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @_set_bit(i32 noundef 13, ptr noundef %1) #10
  br label %22

21:                                               ; preds = %17
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %1) #10
  br label %22

22:                                               ; preds = %21, %20
  %23 = and i32 %0, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @_set_bit(i32 noundef 14, ptr noundef %1) #10
  br label %27

26:                                               ; preds = %22
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %1) #10
  br label %27

27:                                               ; preds = %26, %25
  %28 = and i32 %0, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef 15, ptr noundef %1) #10
  br label %32

31:                                               ; preds = %27
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %1) #10
  br label %32

32:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_transitory(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linehandle_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gpiohandle_config, align 4
  %5 = alloca %struct.gpiohandle_data, align 1
  %6 = alloca [2 x i32], align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !8
  switch i32 %1, label %174 [
    i32 -1069501432, label %10
    i32 -1069501431, label %45
    i32 -1068190710, label %96
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.linehandle_state, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.linehandle_state, ptr %8, i32 0, i32 2
  %14 = call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %12, ptr noundef %13, ptr noundef null, ptr noundef nonnull %6) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %174

16:                                               ; preds = %10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false)
  %17 = load i32, ptr %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ %29, %19 ], [ 0, %16 ]
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr %6, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = lshr i32 %23, %24
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr [64 x i8], ptr %5, i32 0, i32 %20
  store i8 %27, ptr %28, align 1
  %29 = add nuw i32 %20, 1
  %30 = load i32, ptr %11, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %19, label %32

32:                                               ; preds = %19, %16
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 64, i32 -1090519040) #11, !srcloc !13
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %174

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #12, !srcloc !14
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %42 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 -14
  br label %174

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.linehandle_state, ptr %8, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.gpio_desc, ptr %47, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %174, label %52

52:                                               ; preds = %45
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 64, i32 -1090519040) #11, !srcloc !23
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68, !prof !17

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #10
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #12, !srcloc !14
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %62 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68, !prof !17

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.linehandle_state, ptr %8, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %93, label %72

68:                                               ; preds = %56, %52
  %69 = phi i32 [ %62, %56 ], [ 64, %52 ]
  %70 = sub i32 64, %69
  %71 = getelementptr i8, ptr %5, i32 %70
  call void @llvm.memset.p0.i32(ptr align 1 %71, i8 0, i32 %69, i1 false) #10
  br label %174

72:                                               ; preds = %88, %64
  %73 = phi i32 [ %90, %88 ], [ 0, %64 ]
  %74 = getelementptr [64 x i8], ptr %5, i32 0, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = lshr i32 %73, 5
  %80 = getelementptr i32, ptr %6, i32 %79
  br i1 %76, label %84, label %81

81:                                               ; preds = %72
  %82 = load i32, ptr %80, align 4
  %83 = or i32 %82, %78
  br label %88

84:                                               ; preds = %72
  %85 = xor i32 %78, -1
  %86 = load i32, ptr %80, align 4
  %87 = and i32 %86, %85
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i32 [ %87, %84 ], [ %83, %81 ]
  store i32 %89, ptr %80, align 4
  %90 = add nuw i32 %73, 1
  %91 = load i32, ptr %65, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %72, label %93

93:                                               ; preds = %88, %64
  %94 = phi i32 [ 0, %64 ], [ %91, %88 ]
  %95 = call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %94, ptr noundef %46, ptr noundef null, ptr noundef nonnull %6) #10
  br label %174

96:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i32 84, i1 false) #10, !annotation !8
  %97 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 84, i32 -1090519040) #11, !srcloc !23
  %98 = extractvalue { i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108, !prof !17

100:                                              ; preds = %96
  %101 = tail call ptr @llvm.thread.pointer() #10
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %103 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %102) #12, !srcloc !14
  %104 = and i32 %103, -13
  %105 = or i32 %104, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %106 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %9, i32 noundef 84) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108, !prof !17

108:                                              ; preds = %100, %96
  %109 = phi i32 [ %106, %100 ], [ 84, %96 ]
  %110 = sub i32 84, %109
  %111 = getelementptr i8, ptr %4, i32 %110
  call void @llvm.memset.p0.i32(ptr align 1 %111, i8 0, i32 %109, i1 false) #10
  br label %172

112:                                              ; preds = %100
  %113 = load i32, ptr %4, align 4
  %114 = icmp ult i32 %113, 256
  br i1 %114, label %115, label %172

115:                                              ; preds = %112
  %116 = and i32 %113, 3
  %117 = icmp eq i32 %116, 3
  %118 = and i32 %113, 24
  %119 = icmp eq i32 %118, 24
  %120 = or i1 %117, %119
  br i1 %120, label %172, label %121

121:                                              ; preds = %115
  %122 = and i32 %113, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = icmp eq i32 %118, 0
  br i1 %125, label %126, label %172

126:                                              ; preds = %124
  %127 = icmp ne i32 %116, 0
  %128 = and i32 %113, 224
  %129 = icmp eq i32 %128, 0
  %130 = or i1 %127, %129
  br i1 %130, label %131, label %172

131:                                              ; preds = %126, %121
  %132 = and i32 %113, 128
  %133 = icmp ne i32 %132, 0
  %134 = and i32 %113, 96
  %135 = icmp ne i32 %134, 0
  %136 = and i1 %133, %135
  %137 = icmp eq i32 %134, 96
  %138 = or i1 %137, %136
  br i1 %138, label %172, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.linehandle_state, ptr %8, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %172, label %143

143:                                              ; preds = %139
  %144 = and i32 %113, 1
  %145 = icmp eq i32 %144, 0
  br label %146

146:                                              ; preds = %170, %143
  %147 = phi i32 [ %113, %143 ], [ %171, %170 ]
  %148 = phi i32 [ 0, %143 ], [ %167, %170 ]
  %149 = getelementptr %struct.linehandle_state, ptr %8, i32 0, i32 2, i32 %148
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.gpio_desc, ptr %150, i32 0, i32 1
  call fastcc void @linehandle_flags_to_desc_flags(i32 noundef %147, ptr noundef %151) #10
  br i1 %123, label %159, label %152

152:                                              ; preds = %146
  %153 = getelementptr %struct.gpiohandle_config, ptr %4, i32 0, i32 1, i32 %148
  %154 = load i8, ptr %153, align 1
  %155 = icmp ne i8 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @gpiod_direction_output(ptr noundef %150, i32 noundef %156) #10
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %172

159:                                              ; preds = %146
  br i1 %145, label %163, label %160

160:                                              ; preds = %159
  %161 = call i32 @gpiod_direction_input(ptr noundef %150) #10
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %160, %159, %152
  %164 = load ptr, ptr %150, align 4
  %165 = getelementptr inbounds %struct.gpio_device, ptr %164, i32 0, i32 12
  %166 = call i32 @blocking_notifier_call_chain(ptr noundef %165, i32 noundef 3, ptr noundef %150) #10
  %167 = add nuw i32 %148, 1
  %168 = load i32, ptr %140, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, ptr %4, align 4
  br label %146

172:                                              ; preds = %163, %160, %152, %139, %131, %126, %124, %115, %112, %108
  %173 = phi i32 [ -14, %108 ], [ -22, %112 ], [ -22, %115 ], [ -22, %124 ], [ -22, %131 ], [ -22, %126 ], [ 0, %139 ], [ 0, %163 ], [ %161, %160 ], [ %157, %152 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #10
  br label %174

174:                                              ; preds = %172, %93, %68, %45, %36, %32, %10, %3
  %175 = phi i32 [ %95, %93 ], [ %173, %172 ], [ %14, %10 ], [ -1, %45 ], [ -22, %3 ], [ -14, %32 ], [ -14, %68 ], [ %44, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linehandle_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.linehandle_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %16, %2
  %9 = phi i32 [ %17, %16 ], [ %6, %2 ]
  %10 = phi i32 [ %18, %16 ], [ 0, %2 ]
  %11 = getelementptr %struct.linehandle_state, ptr %4, i32 0, i32 2, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  tail call void @gpiod_free(ptr noundef nonnull %12) #10
  %15 = load i32, ptr %5, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %9, %8 ], [ %15, %14 ]
  %18 = add nuw i32 %10, 1
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %8, label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.linehandle_state, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #10
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.gpio_device, ptr %23, i32 0, i32 1
  tail call void @put_device(ptr noundef %24) #10
  tail call void @kfree(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_array_value_complex(i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_complex(i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineevent_irq_handler(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call i64 @ktime_get() #10
  %4 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 7
  store i64 %3, ptr %4, align 8
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineevent_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gpioevent_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 7
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  store i64 0, ptr %5, align 8
  %6 = load i64, ptr %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i64 @ktime_get() #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i64 [ %9, %8 ], [ %6, %2 ]
  store i64 %11, ptr %3, align 8
  %12 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, 3
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %20) #10
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.gpioevent_data, ptr %3, i32 0, i32 1
  br i1 %22, label %25, label %24

24:                                               ; preds = %18
  store i32 1, ptr %23, align 8
  br label %34

25:                                               ; preds = %18
  store i32 2, ptr %23, align 8
  br label %34

26:                                               ; preds = %10
  %27 = and i32 %13, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gpioevent_data, ptr %3, i32 0, i32 1
  store i32 1, ptr %30, align 8
  br label %34

31:                                               ; preds = %26
  br i1 %15, label %42, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.gpioevent_data, ptr %3, i32 0, i32 1
  store i32 2, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %29, %25, %24
  %35 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.lineevent_state, ptr %1, i32 0, i32 6
  %37 = call i32 @__kfifo_in(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %38 = load i16, ptr %35, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  call void @__wake_up(ptr noundef %35, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #10
  br label %42

42:                                               ; preds = %41, %34, %31
  %43 = phi i32 [ 0, %31 ], [ 1, %34 ], [ 1, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lineevent_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lineevent_state, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %0) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.lineevent_state, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @gpiod_free(ptr noundef nonnull %9) #10
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.lineevent_state, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #10
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 1
  tail call void @put_device(ptr noundef %16) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineevent_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.gpioevent_data, align 8
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  %9 = icmp ult i32 %2, 16
  br i1 %9, label %79, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.lineevent_state, ptr %8, i32 0, i32 5
  %12 = getelementptr inbounds %struct.lineevent_state, ptr %8, i32 0, i32 6
  %13 = getelementptr inbounds %struct.lineevent_state, ptr %8, i32 0, i32 6, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  br label %19

19:                                               ; preds = %75, %10
  %20 = phi i32 [ %76, %75 ], [ 0, %10 ]
  call void @_raw_spin_lock(ptr noundef %11) #10
  %21 = load i32, ptr %12, align 8
  %22 = load i32, ptr %13, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %27 = load i16, ptr %11, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

29:                                               ; preds = %24
  %30 = load i32, ptr %14, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %34 = load i16, ptr %11, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  %37 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %6, align 4
  store ptr %37, ptr %15, align 4
  store ptr @autoremove_wake_function, ptr %16, align 4
  store ptr %17, ptr %17, align 4
  store ptr %17, ptr %18, align 4
  br label %38

38:                                               ; preds = %41, %36
  %39 = call i32 @do_wait_intr(ptr noundef %11, ptr noundef nonnull %6) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, ptr %12, align 8
  %43 = load i32, ptr %13, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %38, label %52

45:                                               ; preds = %38
  %46 = load ptr, ptr %18, align 4
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  %49 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  store volatile i32 0, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %50 = load i16, ptr %11, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

52:                                               ; preds = %41
  %53 = load ptr, ptr %18, align 4
  %54 = load ptr, ptr %17, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  %56 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  store volatile i32 0, ptr %56, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %57

57:                                               ; preds = %52, %19
  %58 = call i32 @__kfifo_out(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 1) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %59 = load i16, ptr %11, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %61 = icmp eq i32 %58, 1
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %1, i32 %20
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 16, i32 -1090519040) #11, !srcloc !13
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = tail call ptr @llvm.thread.pointer() #10
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #12, !srcloc !14
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %73 = call i32 @arm_copy_to_user(ptr noundef %63, ptr noundef nonnull %5, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = add i32 %20, 16
  %77 = add i32 %20, 32
  %78 = icmp ugt i32 %77, %2
  br i1 %78, label %79, label %19

79:                                               ; preds = %75, %67, %62, %57, %45, %33, %26, %4
  %80 = phi i32 [ %20, %26 ], [ -11, %33 ], [ %39, %45 ], [ -22, %4 ], [ -14, %62 ], [ %20, %57 ], [ %76, %75 ], [ -14, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineevent_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.lineevent_state, ptr %4, i32 0, i32 5
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  br label %13

13:                                               ; preds = %12, %7, %2
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %14 = getelementptr inbounds %struct.lineevent_state, ptr %4, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.lineevent_state, ptr %4, i32 0, i32 6, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %21 = select i1 %18, i32 0, i32 65
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineevent_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gpiohandle_data, align 1
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  %8 = icmp eq i32 %1, -1069501432
  br i1 %8, label %9, label %29

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %10, i8 0, i32 63, i1 false)
  %11 = getelementptr inbounds %struct.lineevent_state, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %12) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = trunc i32 %13 to i8
  store i8 %16, ptr %4, align 1
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 64, i32 -1090519040) #11, !srcloc !13
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #12, !srcloc !14
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %26 = call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 64) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 0, i32 -14
  br label %29

29:                                               ; preds = %20, %15, %9, %3
  %30 = phi i32 [ %13, %9 ], [ -22, %3 ], [ -14, %15 ], [ %28, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineevent_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.lineevent_state, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %4) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.lineevent_state, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gpiod_free(ptr noundef nonnull %12) #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.lineevent_state, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #10
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.gpio_device, ptr %18, i32 0, i32 1
  tail call void @put_device(ptr noundef %19) #10
  tail call void @kfree(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_desc_to_lineinfo(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(256) %1, i8 0, i32 256, i1 false)
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = sdiv exact i32 %11, 24
  %13 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %12, %15
  %17 = tail call zeroext i1 @pinctrl_gpio_can_use_line(i32 noundef %16) #10
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #10
  %19 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = tail call i32 @strscpy(ptr noundef %1, ptr noundef nonnull %20, i32 noundef 32) #10
  br label %24

24:                                               ; preds = %22, %2
  %25 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %1, i32 0, i32 1
  %30 = tail call i32 @strscpy(ptr noundef %29, ptr noundef nonnull %26, i32 noundef 32) #10
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %1, i32 0, i32 4
  store i64 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load volatile i32, ptr %33, align 4
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load volatile i32, ptr %33, align 4
  %43 = and i32 %42, 512
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load volatile i32, ptr %33, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load volatile i32, ptr %33, align 4
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, ptr %13, align 8
  %55 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %5, i32 noundef %54) #10
  %56 = select i1 %55, i1 %17, i1 false
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %32, align 8
  %59 = or i64 %58, 1
  br label %60

60:                                               ; preds = %57, %49, %45, %41, %37, %31
  %61 = phi i64 [ %59, %57 ], [ 1, %49 ], [ 1, %45 ], [ 1, %41 ], [ 1, %37 ], [ 1, %31 ]
  store i64 %61, ptr %32, align 8
  br label %62

62:                                               ; preds = %60, %53
  %63 = load volatile i32, ptr %33, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = load i64, ptr %32, align 8
  %67 = select i1 %65, i64 4, i64 8
  %68 = or i64 %66, %67
  store i64 %68, ptr %32, align 8
  %69 = load volatile i32, ptr %33, align 4
  %70 = and i32 %69, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %62
  %73 = or i64 %68, 2
  store i64 %73, ptr %32, align 8
  br label %74

74:                                               ; preds = %72, %62
  %75 = phi i64 [ %73, %72 ], [ %68, %62 ]
  %76 = load volatile i32, ptr %33, align 4
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = or i64 %75, 64
  store i64 %80, ptr %32, align 8
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi i64 [ %80, %79 ], [ %75, %74 ]
  %83 = load volatile i32, ptr %33, align 4
  %84 = and i32 %83, 256
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = or i64 %82, 128
  store i64 %87, ptr %32, align 8
  br label %88

88:                                               ; preds = %86, %81
  %89 = phi i64 [ %87, %86 ], [ %82, %81 ]
  %90 = load volatile i32, ptr %33, align 4
  %91 = and i32 %90, 32768
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = or i64 %89, 1024
  store i64 %94, ptr %32, align 8
  br label %95

95:                                               ; preds = %93, %88
  %96 = phi i64 [ %94, %93 ], [ %89, %88 ]
  %97 = load volatile i32, ptr %33, align 4
  %98 = and i32 %97, 16384
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = or i64 %96, 512
  store i64 %101, ptr %32, align 8
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi i64 [ %101, %100 ], [ %96, %95 ]
  %104 = load volatile i32, ptr %33, align 4
  %105 = and i32 %104, 8192
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = or i64 %103, 256
  store i64 %108, ptr %32, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i64 [ %108, %107 ], [ %103, %102 ]
  %111 = load volatile i32, ptr %33, align 4
  %112 = and i32 %111, 65536
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = or i64 %110, 16
  store i64 %115, ptr %32, align 8
  br label %116

116:                                              ; preds = %114, %109
  %117 = phi i64 [ %115, %114 ], [ %110, %109 ]
  %118 = load volatile i32, ptr %33, align 4
  %119 = and i32 %118, 131072
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = or i64 %117, 32
  store i64 %122, ptr %32, align 8
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi i64 [ %122, %121 ], [ %117, %116 ]
  %125 = load volatile i32, ptr %33, align 4
  %126 = and i32 %125, 262144
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = or i64 %124, 2048
  store i64 %129, ptr %32, align 8
  br label %130

130:                                              ; preds = %128, %123
  %131 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 5
  %132 = load volatile i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %1, i32 0, i32 5
  store i32 3, ptr %135, align 8
  %136 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %1, i32 0, i32 5, i32 0, i32 2
  store i32 %132, ptr %136, align 8
  br label %137

137:                                              ; preds = %134, %130
  %138 = phi i32 [ 1, %134 ], [ 0, %130 ]
  %139 = getelementptr inbounds %struct.gpio_v2_line_info, ptr %1, i32 0, i32 3
  store i32 %138, ptr %139, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %18) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pinctrl_gpio_can_use_line(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpio_v2_line_config_validate(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gpio_v2_line_config, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 10
  br i1 %5, label %91, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gpio_v2_line_config, ptr %0, i32 0, i32 2
  %8 = tail call ptr @memchr_inv(ptr noundef %7, i32 noundef 0, i32 noundef 20) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %91

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %91, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 8
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %88, %12
  %16 = phi i32 [ 0, %12 ], [ %89, %88 ]
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 1, %17
  br i1 %14, label %34, label %19

19:                                               ; preds = %31, %15
  %20 = phi i32 [ %32, %31 ], [ 0, %15 ]
  %21 = getelementptr %struct.gpio_v2_line_config, ptr %0, i32 0, i32 3, i32 %20
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = getelementptr %struct.gpio_v2_line_config, ptr %0, i32 0, i32 3, i32 %20, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, %18
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %21, i32 0, i32 2
  br label %34

31:                                               ; preds = %24, %19
  %32 = add nuw i32 %20, 1
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %34, label %19

34:                                               ; preds = %31, %29, %15
  %35 = phi ptr [ %30, %29 ], [ %0, %15 ], [ %0, %31 ]
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, -4095
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %91

39:                                               ; preds = %34
  %40 = and i64 %36, 12
  %41 = icmp eq i64 %40, 12
  br i1 %41, label %91, label %42

42:                                               ; preds = %39
  %43 = and i64 %36, 8
  %44 = icmp eq i64 %43, 0
  %45 = and i64 %36, 4
  %46 = icmp eq i64 %45, 0
  %47 = and i64 %36, 48
  %48 = icmp ne i64 %47, 0
  %49 = and i1 %48, %46
  %50 = and i64 %36, 192
  %51 = icmp eq i64 %50, 192
  %52 = or i1 %51, %49
  %53 = icmp ne i64 %50, 0
  %54 = and i1 %53, %44
  %55 = or i1 %54, %52
  br i1 %55, label %91, label %56

56:                                               ; preds = %42
  %57 = and i64 %36, 1792
  %58 = icmp ne i64 %57, 0
  %59 = icmp eq i64 %40, 0
  %60 = and i1 %58, %59
  br i1 %60, label %91, label %61

61:                                               ; preds = %56
  %62 = and i64 %36, 1024
  %63 = icmp ne i64 %62, 0
  %64 = and i64 %36, 768
  %65 = icmp ne i64 %64, 0
  %66 = and i1 %63, %65
  %67 = icmp eq i64 %64, 768
  %68 = or i1 %67, %66
  br i1 %68, label %91, label %69

69:                                               ; preds = %61
  br i1 %14, label %88, label %70

70:                                               ; preds = %81, %69
  %71 = phi i1 [ %83, %81 ], [ true, %69 ]
  %72 = phi i32 [ %82, %81 ], [ 0, %69 ]
  %73 = getelementptr %struct.gpio_v2_line_config, ptr %0, i32 0, i32 3, i32 %72
  %74 = load i32, ptr %73, align 8
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = getelementptr %struct.gpio_v2_line_config, ptr %0, i32 0, i32 3, i32 %72, i32 1
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, %18
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76, %70
  %82 = add nuw i32 %72, 1
  %83 = icmp ult i32 %82, %13
  %84 = icmp eq i32 %82, %13
  br i1 %84, label %85, label %70

85:                                               ; preds = %81, %76
  %86 = phi i1 [ %83, %81 ], [ %71, %76 ]
  %87 = and i1 %46, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %85, %69
  %89 = add nuw i32 %16, 1
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %91, label %15

91:                                               ; preds = %88, %85, %61, %56, %42, %39, %34, %10, %6, %2
  %92 = phi i32 [ -22, %2 ], [ -22, %6 ], [ 0, %10 ], [ -22, %85 ], [ 0, %88 ], [ -22, %34 ], [ -22, %39 ], [ -22, %42 ], [ -22, %56 ], [ -22, %61 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @debounce_work_func(ptr noundef %0) #0 {
  %2 = alloca %struct.gpio_v2_line_event, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #10
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %68, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 48
  %9 = load volatile i32, ptr %8, align 8
  %10 = icmp eq i32 %9, %5
  br i1 %10, label %68, label %11

11:                                               ; preds = %7
  store volatile i32 %5, ptr %8, align 8
  %12 = getelementptr i8, ptr %0, i32 -24
  %13 = load volatile i64, ptr %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %68, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.gpio_desc, ptr %16, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %5, 0
  %22 = icmp ne i64 %13, 16
  %23 = icmp ne i32 %5, 0
  %24 = select i1 %20, i1 %23, i1 %21
  %25 = select i1 %22, i1 true, i1 %24
  %26 = xor i1 %25, true
  %27 = icmp eq i64 %13, 32
  %28 = select i1 %27, i1 %24, i1 false
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %68, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %31, i8 0, i32 40, i1 false)
  %32 = getelementptr i8, ptr %0, i32 -36
  %33 = load ptr, ptr %32, align 4
  %34 = load volatile i32, ptr %17, align 4
  %35 = and i32 %34, 262144
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  br label %41

39:                                               ; preds = %30
  %40 = tail call i64 @ktime_get() #10
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  store i64 %42, ptr %2, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gpio_device, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = ptrtoint ptr %43 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = sdiv exact i32 %49, 24
  %51 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %2, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = getelementptr i8, ptr %0, i32 -4
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %2, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.linereq, ptr %33, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %63, label %59

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.linereq, ptr %33, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #10, !srcloc !19
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #10, !srcloc !25
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  br label %63

63:                                               ; preds = %59, %41
  %64 = phi i32 [ %62, %59 ], [ %54, %41 ]
  %65 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %2, i32 0, i32 3
  store i32 %64, ptr %65, align 8
  %66 = select i1 %24, i32 1, i32 2
  %67 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %2, i32 0, i32 1
  store i32 %66, ptr %67, align 8
  call fastcc void @linereq_put_event(ptr noundef %33, ptr noundef nonnull %2)
  br label %68

68:                                               ; preds = %63, %15, %11, %7, %1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_v2_line_config_flags_to_desc_flags(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = and i64 %0, 2
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 6, ptr noundef %1) #10
  br label %7

6:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %1) #10
  br label %7

7:                                                ; preds = %6, %5
  %8 = and i64 %0, 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %1) #10
  br label %15

11:                                               ; preds = %7
  %12 = and i64 %0, 4
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %1) #10
  br label %15

15:                                               ; preds = %14, %11, %10
  %16 = and i64 %0, 16
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 16, ptr noundef %1) #10
  br label %20

19:                                               ; preds = %15
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %1) #10
  br label %20

20:                                               ; preds = %19, %18
  %21 = and i64 %0, 32
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 17, ptr noundef %1) #10
  br label %25

24:                                               ; preds = %20
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %1) #10
  br label %25

25:                                               ; preds = %24, %23
  %26 = and i64 %0, 64
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef 7, ptr noundef %1) #10
  br label %30

29:                                               ; preds = %25
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %1) #10
  br label %30

30:                                               ; preds = %29, %28
  %31 = and i64 %0, 128
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef 8, ptr noundef %1) #10
  br label %35

34:                                               ; preds = %30
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %1) #10
  br label %35

35:                                               ; preds = %34, %33
  %36 = and i64 %0, 256
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @_set_bit(i32 noundef 13, ptr noundef %1) #10
  br label %40

39:                                               ; preds = %35
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %1) #10
  br label %40

40:                                               ; preds = %39, %38
  %41 = and i64 %0, 512
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @_set_bit(i32 noundef 14, ptr noundef %1) #10
  br label %45

44:                                               ; preds = %40
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %1) #10
  br label %45

45:                                               ; preds = %44, %43
  %46 = and i64 %0, 1024
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @_set_bit(i32 noundef 15, ptr noundef %1) #10
  br label %50

49:                                               ; preds = %45
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %1) #10
  br label %50

50:                                               ; preds = %49, %48
  %51 = and i64 %0, 2048
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @_set_bit(i32 noundef 18, ptr noundef %1) #10
  br label %55

54:                                               ; preds = %50
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %1) #10
  br label %55

55:                                               ; preds = %54, %53
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @gpio_v2_line_config_output_value(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = zext i32 %1 to i64
  %4 = shl nuw i64 1, %3
  %5 = getelementptr inbounds %struct.gpio_v2_line_config, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %24, %2
  %9 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %10 = getelementptr %struct.gpio_v2_line_config, ptr %0, i32 0, i32 3, i32 %9
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr %struct.gpio_v2_line_config, ptr %0, i32 0, i32 3, i32 %9, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, %4
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %10, i32 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, %4
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  br label %27

24:                                               ; preds = %13, %8
  %25 = add nuw i32 %9, 1
  %26 = icmp eq i32 %25, %6
  br i1 %26, label %27, label %8

27:                                               ; preds = %24, %18, %2
  %28 = phi i32 [ %23, %18 ], [ 0, %2 ], [ 0, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @edge_detector_setup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.linereq, ptr %8, i32 0, i32 5, i32 0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.linereq, ptr %8, i32 0, i32 5
  %14 = getelementptr inbounds %struct.linereq, ptr %8, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @__kfifo_alloc(ptr noundef %13, i32 noundef %15, i32 noundef 48, i32 noundef 3264) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %131

18:                                               ; preds = %12, %6, %4
  %19 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 3
  store volatile i64 %3, ptr %19, align 8
  %20 = zext i32 %2 to i64
  %21 = shl nuw i64 1, %20
  %22 = getelementptr inbounds %struct.gpio_v2_line_config, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %89, label %25

25:                                               ; preds = %36, %18
  %26 = phi i1 [ %38, %36 ], [ true, %18 ]
  %27 = phi i32 [ %37, %36 ], [ 0, %18 ]
  %28 = getelementptr %struct.gpio_v2_line_config, ptr %1, i32 0, i32 3, i32 %27
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = getelementptr %struct.gpio_v2_line_config, ptr %1, i32 0, i32 3, i32 %27, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, %21
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31, %25
  %37 = add nuw i32 %27, 1
  %38 = icmp ult i32 %37, %23
  %39 = icmp eq i32 %37, %23
  br i1 %39, label %40, label %25

40:                                               ; preds = %36, %31
  %41 = phi i1 [ %38, %36 ], [ %26, %31 ]
  br i1 %41, label %42, label %89

42:                                               ; preds = %55, %40
  %43 = phi i32 [ %56, %55 ], [ 0, %40 ]
  %44 = getelementptr %struct.gpio_v2_line_config, ptr %1, i32 0, i32 3, i32 %43
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = getelementptr %struct.gpio_v2_line_config, ptr %1, i32 0, i32 3, i32 %43, i32 1
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, %21
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %44, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  br label %58

55:                                               ; preds = %47, %42
  %56 = add nuw i32 %43, 1
  %57 = icmp eq i32 %56, %23
  br i1 %57, label %58, label %42

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ 0, %55 ]
  %60 = load ptr, ptr %0, align 8
  %61 = tail call i32 @gpiod_set_debounce(ptr noundef %60, i32 noundef %59) #10
  switch i32 %61, label %131 [
    i32 0, label %62
    i32 -524, label %65
  ]

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.gpio_desc, ptr %63, i32 0, i32 5
  store volatile i32 %59, ptr %64, align 4
  br label %86

65:                                               ; preds = %58
  %66 = icmp eq i32 %59, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %0, align 8
  %69 = tail call i32 @gpiod_get_raw_value_cansleep(ptr noundef %68) #10
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %131, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %0, align 8
  %73 = tail call i32 @gpiod_to_irq(ptr noundef %72) #10
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %131, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 9
  store volatile i32 %69, ptr %76, align 8
  %77 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.linereq, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @request_threaded_irq(i32 noundef %73, ptr noundef nonnull @debounce_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef %80, ptr noundef %0) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %131

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 2
  store i32 %73, ptr %85, align 8
  br label %86

86:                                               ; preds = %83, %65, %62
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr inbounds %struct.gpio_desc, ptr %87, i32 0, i32 5
  store volatile i32 %59, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %40, %18
  br i1 %5, label %131, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 8
  %92 = load volatile i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %90
  %95 = load ptr, ptr %0, align 8
  %96 = tail call i32 @gpiod_to_irq(ptr noundef %95) #10
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %131, label %98

98:                                               ; preds = %94
  %99 = and i64 %3, 16
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %0, align 8
  %103 = getelementptr inbounds %struct.gpio_desc, ptr %102, i32 0, i32 1
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %104, 64
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 1, i32 2
  br label %108

108:                                              ; preds = %101, %98
  %109 = phi i32 [ %107, %101 ], [ 0, %98 ]
  %110 = and i64 %3, 32
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %0, align 8
  %114 = getelementptr inbounds %struct.gpio_desc, ptr %113, i32 0, i32 1
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 64
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 2, i32 1
  %119 = or i32 %118, %109
  br label %120

120:                                              ; preds = %112, %108
  %121 = phi i32 [ %119, %112 ], [ %109, %108 ]
  %122 = or i32 %121, 8192
  %123 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.linereq, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 @request_threaded_irq(i32 noundef %96, ptr noundef nonnull @edge_irq_handler, ptr noundef nonnull @edge_irq_thread, i32 noundef %122, ptr noundef %126, ptr noundef %0) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.line, ptr %0, i32 0, i32 2
  store i32 %96, ptr %130, align 8
  br label %131

131:                                              ; preds = %129, %120, %94, %90, %89, %75, %71, %67, %58, %12
  %132 = phi i32 [ 0, %129 ], [ %16, %12 ], [ 0, %90 ], [ 0, %89 ], [ -6, %94 ], [ %127, %120 ], [ %81, %75 ], [ -6, %71 ], [ %69, %67 ], [ %61, %58 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @linereq_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %25, %1
  %6 = phi i32 [ %26, %25 ], [ 0, %1 ]
  %7 = getelementptr %struct.linereq, ptr %0, i32 0, i32 8, i32 %6
  %8 = getelementptr %struct.linereq, ptr %0, i32 0, i32 8, i32 %6, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %7) #10
  store i32 0, ptr %8, align 8
  br label %13

13:                                               ; preds = %11, %5
  %14 = getelementptr %struct.linereq, ptr %0, i32 0, i32 8, i32 %6, i32 7
  %15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %14) #10
  %16 = getelementptr %struct.linereq, ptr %0, i32 0, i32 8, i32 %6, i32 8
  store volatile i32 0, ptr %16, align 4
  %17 = getelementptr %struct.linereq, ptr %0, i32 0, i32 8, i32 %6, i32 3
  store volatile i64 0, ptr %17, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gpio_desc, ptr %18, i32 0, i32 5
  store volatile i32 0, ptr %21, align 4
  %22 = load ptr, ptr %7, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gpiod_free(ptr noundef nonnull %22) #10
  br label %25

25:                                               ; preds = %24, %20, %13
  %26 = add nuw i32 %6, 1
  %27 = load i32, ptr %2, align 8
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %5, label %29

29:                                               ; preds = %25, %1
  %30 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 5
  tail call void @__kfifo_free(ptr noundef %30) #10
  %31 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #10
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.gpio_device, ptr %33, i32 0, i32 1
  tail call void @put_device(ptr noundef %34) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @linereq_put_event(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = getelementptr inbounds %struct.linereq, ptr %0, i32 0, i32 5, i32 0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = add i32 %7, 1
  store i32 %13, ptr %6, align 4
  %14 = tail call i32 @__kfifo_in(ptr noundef %4, ptr noundef %1, i32 noundef 1) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %15 = load i16, ptr %3, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %21

17:                                               ; preds = %2
  %18 = tail call i32 @__kfifo_in(ptr noundef %4, ptr noundef %1, i32 noundef 1) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @__wake_up(ptr noundef %3, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #10
  br label %21

21:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edge_irq_handler(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds %struct.gpio_desc, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  br label %14

12:                                               ; preds = %2
  %13 = tail call i64 @ktime_get() #10
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 4
  store i64 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.linereq, ptr %4, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.linereq, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #10, !srcloc !19
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #10, !srcloc !25
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %24 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 5
  store i32 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %20, %14
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edge_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gpio_v2_line_event, align 8
  %4 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i64 %7, ptr %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr inbounds %struct.gpio_desc, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 262144
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  br label %20

18:                                               ; preds = %10
  %19 = tail call i64 @ktime_get() #10
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, ptr %3, align 8
  %22 = getelementptr inbounds %struct.linereq, ptr %5, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.linereq, ptr %5, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #10, !srcloc !19
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #10, !srcloc !25
  %28 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %29 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 5
  store i32 %28, ptr %29, align 8
  br label %30

30:                                               ; preds = %25, %20, %9
  store i64 0, ptr %6, align 8
  %31 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 3
  %32 = load volatile i64, ptr %31, align 8
  switch i64 %32, label %67 [
    i64 48, label %33
    i64 16, label %40
    i64 32, label %42
  ]

33:                                               ; preds = %30
  %34 = load ptr, ptr %1, align 8
  %35 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %34) #10
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %3, i32 0, i32 1
  br i1 %36, label %39, label %38

38:                                               ; preds = %33
  store i32 1, ptr %37, align 8
  br label %44

39:                                               ; preds = %33
  store i32 2, ptr %37, align 8
  br label %44

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %3, i32 0, i32 1
  store i32 1, ptr %41, align 8
  br label %44

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %3, i32 0, i32 1
  store i32 2, ptr %43, align 8
  br label %44

44:                                               ; preds = %42, %40, %39, %38
  %45 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %3, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.linereq, ptr %5, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi i32 [ %54, %52 ], [ %47, %44 ]
  %57 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %3, i32 0, i32 3
  store i32 %56, ptr %57, align 8
  %58 = load ptr, ptr %1, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.gpio_device, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %60, align 8
  %62 = ptrtoint ptr %58 to i32
  %63 = ptrtoint ptr %61 to i32
  %64 = sub i32 %62, %63
  %65 = sdiv exact i32 %64, 24
  %66 = getelementptr inbounds %struct.gpio_v2_line_event, ptr %3, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  call fastcc void @linereq_put_event(ptr noundef %5, ptr noundef nonnull %3)
  br label %67

67:                                               ; preds = %55, %30
  %68 = phi i32 [ 1, %55 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #10
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debounce_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @system_wq, align 4
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds %struct.gpio_desc, ptr %4, i32 0, i32 5
  %6 = load volatile i32, ptr %5, align 4
  %7 = tail call i32 @__usecs_to_jiffies(i32 noundef %6) #10
  %8 = getelementptr inbounds %struct.line, ptr %1, i32 0, i32 7
  %9 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %8, i32 noundef %7) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linereq_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.gpio_v2_line_event, align 8
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i32 48, i1 false), !annotation !8
  %9 = icmp ult i32 %2, 48
  br i1 %9, label %79, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.linereq, ptr %8, i32 0, i32 3
  %12 = getelementptr inbounds %struct.linereq, ptr %8, i32 0, i32 5
  %13 = getelementptr inbounds %struct.linereq, ptr %8, i32 0, i32 5, i32 0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  br label %19

19:                                               ; preds = %75, %10
  %20 = phi i32 [ %76, %75 ], [ 0, %10 ]
  call void @_raw_spin_lock(ptr noundef %11) #10
  %21 = load i32, ptr %12, align 8
  %22 = load i32, ptr %13, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %27 = load i16, ptr %11, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

29:                                               ; preds = %24
  %30 = load i32, ptr %14, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %34 = load i16, ptr %11, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #10
  %37 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %6, align 4
  store ptr %37, ptr %15, align 4
  store ptr @autoremove_wake_function, ptr %16, align 4
  store ptr %17, ptr %17, align 4
  store ptr %17, ptr %18, align 4
  br label %38

38:                                               ; preds = %41, %36
  %39 = call i32 @do_wait_intr(ptr noundef %11, ptr noundef nonnull %6) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, ptr %12, align 8
  %43 = load i32, ptr %13, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %38, label %52

45:                                               ; preds = %38
  %46 = load ptr, ptr %18, align 4
  %47 = load ptr, ptr %17, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  %49 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  store volatile i32 0, ptr %49, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %50 = load i16, ptr %11, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

52:                                               ; preds = %41
  %53 = load ptr, ptr %18, align 4
  %54 = load ptr, ptr %17, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  %56 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 1
  store volatile i32 0, ptr %56, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #10
  br label %57

57:                                               ; preds = %52, %19
  %58 = call i32 @__kfifo_out(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 1) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %59 = load i16, ptr %11, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %61 = icmp eq i32 %58, 1
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %1, i32 %20
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 48, i32 -1090519040) #11, !srcloc !13
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = tail call ptr @llvm.thread.pointer() #10
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %69) #12, !srcloc !14
  %71 = and i32 %70, -13
  %72 = or i32 %71, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %73 = call i32 @arm_copy_to_user(ptr noundef %63, ptr noundef nonnull %5, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = add i32 %20, 48
  %77 = add i32 %20, 96
  %78 = icmp ugt i32 %77, %2
  br i1 %78, label %79, label %19

79:                                               ; preds = %75, %67, %62, %57, %45, %33, %26, %4
  %80 = phi i32 [ %20, %26 ], [ -11, %33 ], [ %39, %45 ], [ -22, %4 ], [ -14, %62 ], [ %20, %57 ], [ %76, %75 ], [ -14, %67 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #10
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linereq_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.linereq, ptr %4, i32 0, i32 3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #10
  br label %13

13:                                               ; preds = %12, %7, %2
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %14 = getelementptr inbounds %struct.linereq, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.linereq, ptr %4, i32 0, i32 5, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %21 = select i1 %18, i32 0, i32 65
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linereq_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gpio_v2_line_config, align 8
  %5 = alloca [2 x i32], align 8
  %6 = alloca %struct.gpio_v2_line_values, align 8
  %7 = alloca %struct.gpio_v2_line_values, align 8
  %8 = alloca [2 x i32], align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = inttoptr i32 %2 to ptr
  switch i32 %1, label %428 [
    i32 -1072647154, label %12
    i32 -1072647153, label %144
    i32 -1055869939, label %241
  ]

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !8
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 16, i32 -1090519040) #11
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31, !prof !17

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #12, !srcloc !14
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %11, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31, !prof !17

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.linereq, ptr %10, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %142, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gpio_v2_line_values, ptr %7, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  br label %35

31:                                               ; preds = %16, %12
  %32 = phi i32 [ %22, %16 ], [ 16, %12 ]
  %33 = sub i32 16, %32
  %34 = getelementptr i8, ptr %7, i32 %33
  call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %32, i1 false) #10
  br label %142

35:                                               ; preds = %35, %28
  %36 = phi i32 [ 0, %28 ], [ %47, %35 ]
  %37 = phi i32 [ 0, %28 ], [ %48, %35 ]
  %38 = phi ptr [ null, %28 ], [ %44, %35 ]
  %39 = zext i32 %37 to i64
  %40 = shl nuw i64 1, %39
  %41 = and i64 %40, %30
  %42 = icmp eq i64 %41, 0
  %43 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %37
  %44 = select i1 %42, ptr %38, ptr %43
  %45 = xor i1 %42, true
  %46 = zext i1 %45 to i32
  %47 = add i32 %36, %46
  %48 = add nuw i32 %37, 1
  %49 = icmp eq i32 %48, %26
  br i1 %49, label %50, label %35

50:                                               ; preds = %35
  switch i32 %47, label %53 [
    i32 0, label %142
    i32 1, label %51
  ]

51:                                               ; preds = %50
  %52 = call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, ptr noundef %44, ptr noundef null, ptr noundef nonnull %8) #10
  br label %86

53:                                               ; preds = %50
  %54 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 4) #10
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %142, label %56, !prof !27

56:                                               ; preds = %53
  %57 = extractvalue { i32, i1 } %54, 0
  %58 = call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3264) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %142, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %25, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load i64, ptr %29, align 8
  br label %65

65:                                               ; preds = %79, %63
  %66 = phi i32 [ %61, %63 ], [ %80, %79 ]
  %67 = phi i32 [ 0, %63 ], [ %81, %79 ]
  %68 = phi i32 [ 0, %63 ], [ %82, %79 ]
  %69 = zext i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = and i64 %70, %64
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %68
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr ptr, ptr %58, i32 %67
  store ptr %75, ptr %76, align 4
  %77 = add i32 %67, 1
  %78 = load i32, ptr %25, align 8
  br label %79

79:                                               ; preds = %73, %65
  %80 = phi i32 [ %78, %73 ], [ %66, %65 ]
  %81 = phi i32 [ %77, %73 ], [ %67, %65 ]
  %82 = add nuw i32 %68, 1
  %83 = icmp ult i32 %82, %80
  br i1 %83, label %65, label %84

84:                                               ; preds = %79, %60
  %85 = call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %47, ptr noundef nonnull %58, ptr noundef null, ptr noundef nonnull %8) #10
  call void @kfree(ptr noundef nonnull %58) #10
  br label %86

86:                                               ; preds = %84, %51
  %87 = phi i32 [ %52, %51 ], [ %85, %84 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %142

89:                                               ; preds = %86
  store i64 0, ptr %7, align 8
  %90 = load i32, ptr %25, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %135, label %92

92:                                               ; preds = %89
  %93 = load i64, ptr %29, align 8
  br label %94

94:                                               ; preds = %130, %92
  %95 = phi i64 [ 0, %92 ], [ %131, %130 ]
  %96 = phi i32 [ 0, %92 ], [ %132, %130 ]
  %97 = phi i32 [ 0, %92 ], [ %133, %130 ]
  %98 = zext i32 %97 to i64
  %99 = shl nuw i64 1, %98
  %100 = and i64 %99, %93
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %94
  %103 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %97, i32 8
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %97
  %108 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %97, i32 9
  %109 = load volatile i32, ptr %108, align 8
  %110 = icmp ne i32 %109, 0
  %111 = load ptr, ptr %107, align 8
  %112 = getelementptr inbounds %struct.gpio_desc, ptr %111, i32 0, i32 1
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %113, 64
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %110, %115
  br i1 %116, label %125, label %127

117:                                              ; preds = %102
  %118 = lshr i32 %96, 5
  %119 = getelementptr i32, ptr %8, i32 %118
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %96, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %120, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %117, %106
  %126 = or i64 %99, %95
  store i64 %126, ptr %7, align 8
  br label %127

127:                                              ; preds = %125, %117, %106
  %128 = phi i64 [ %95, %106 ], [ %126, %125 ], [ %95, %117 ]
  %129 = add i32 %96, 1
  br label %130

130:                                              ; preds = %127, %94
  %131 = phi i64 [ %128, %127 ], [ %95, %94 ]
  %132 = phi i32 [ %129, %127 ], [ %96, %94 ]
  %133 = add nuw i32 %97, 1
  %134 = icmp eq i32 %133, %90
  br i1 %134, label %135, label %94

135:                                              ; preds = %130, %89
  %136 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #12, !srcloc !14
  %137 = and i32 %136, -13
  %138 = or i32 %137, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %139 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %7, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 0, i32 -14
  br label %142

142:                                              ; preds = %135, %86, %56, %53, %50, %31, %24
  %143 = phi i32 [ -22, %50 ], [ -12, %56 ], [ %87, %86 ], [ -14, %31 ], [ -12, %53 ], [ %141, %135 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %428

144:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !annotation !8
  %145 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 16, i32 -1090519040) #11, !srcloc !23
  %146 = extractvalue { i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156, !prof !17

148:                                              ; preds = %144
  %149 = tail call ptr @llvm.thread.pointer() #10
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %151 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %150) #12, !srcloc !14
  %152 = and i32 %151, -13
  %153 = or i32 %152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %154 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156, !prof !17

156:                                              ; preds = %148, %144
  %157 = phi i32 [ %154, %148 ], [ 16, %144 ]
  %158 = sub i32 16, %157
  %159 = getelementptr i8, ptr %6, i32 %158
  call void @llvm.memset.p0.i32(ptr align 1 %159, i8 0, i32 %157, i1 false) #10
  br label %239

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.linereq, ptr %10, i32 0, i32 7
  call void @mutex_lock(ptr noundef %161) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8
  %162 = getelementptr inbounds %struct.linereq, ptr %10, i32 0, i32 2
  %163 = load i32, ptr %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %237, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.gpio_v2_line_values, ptr %6, i32 0, i32 1
  %167 = load i64, ptr %166, align 8
  %168 = load i64, ptr %6, align 8
  br label %169

169:                                              ; preds = %196, %165
  %170 = phi i32 [ 0, %165 ], [ %198, %196 ]
  %171 = phi i32 [ 0, %165 ], [ %199, %196 ]
  %172 = phi ptr [ null, %165 ], [ %197, %196 ]
  %173 = zext i32 %171 to i64
  %174 = shl nuw i64 1, %173
  %175 = and i64 %174, %167
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %169
  %178 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %171
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.gpio_desc, ptr %179, i32 0, i32 1
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %181, 2
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %237, label %184

184:                                              ; preds = %177
  %185 = and i64 %174, %168
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = and i32 %170, 31
  %189 = shl nuw i32 1, %188
  %190 = lshr i32 %170, 5
  %191 = getelementptr i32, ptr %5, i32 %190
  %192 = load i32, ptr %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, ptr %191, align 4
  br label %194

194:                                              ; preds = %187, %184
  %195 = add i32 %170, 1
  br label %196

196:                                              ; preds = %194, %169
  %197 = phi ptr [ %178, %194 ], [ %172, %169 ]
  %198 = phi i32 [ %195, %194 ], [ %170, %169 ]
  %199 = add nuw i32 %171, 1
  %200 = icmp eq i32 %199, %163
  br i1 %200, label %201, label %169

201:                                              ; preds = %196
  switch i32 %198, label %204 [
    i32 0, label %237
    i32 1, label %202
  ]

202:                                              ; preds = %201
  %203 = call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 1, ptr noundef %197, ptr noundef null, ptr noundef nonnull %5) #10
  br label %237

204:                                              ; preds = %201
  %205 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %198, i32 4) #10
  %206 = extractvalue { i32, i1 } %205, 1
  br i1 %206, label %237, label %207, !prof !27

207:                                              ; preds = %204
  %208 = extractvalue { i32, i1 } %205, 0
  %209 = call noalias align 64 ptr @__kmalloc(i32 noundef %208, i32 noundef 3264) #14
  %210 = icmp eq ptr %209, null
  br i1 %210, label %237, label %211

211:                                              ; preds = %207
  %212 = load i32, ptr %162, align 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %235, label %214

214:                                              ; preds = %211
  %215 = load i64, ptr %166, align 8
  br label %216

216:                                              ; preds = %230, %214
  %217 = phi i32 [ %231, %230 ], [ %212, %214 ]
  %218 = phi i32 [ %232, %230 ], [ 0, %214 ]
  %219 = phi i32 [ %233, %230 ], [ 0, %214 ]
  %220 = zext i32 %219 to i64
  %221 = shl nuw i64 1, %220
  %222 = and i64 %221, %215
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %216
  %225 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %219
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr ptr, ptr %209, i32 %218
  store ptr %226, ptr %227, align 4
  %228 = add i32 %218, 1
  %229 = load i32, ptr %162, align 8
  br label %230

230:                                              ; preds = %224, %216
  %231 = phi i32 [ %229, %224 ], [ %217, %216 ]
  %232 = phi i32 [ %228, %224 ], [ %218, %216 ]
  %233 = add nuw i32 %219, 1
  %234 = icmp ult i32 %233, %231
  br i1 %234, label %216, label %235

235:                                              ; preds = %230, %211
  %236 = call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %198, ptr noundef nonnull %209, ptr noundef null, ptr noundef nonnull %5) #10
  call void @kfree(ptr noundef nonnull %209) #10
  br label %237

237:                                              ; preds = %235, %207, %204, %202, %201, %177, %160
  %238 = phi i32 [ -22, %201 ], [ -12, %207 ], [ %236, %235 ], [ %203, %202 ], [ -12, %204 ], [ -22, %160 ], [ -1, %177 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @mutex_unlock(ptr noundef %161) #10
  br label %239

239:                                              ; preds = %237, %156
  %240 = phi i32 [ %238, %237 ], [ -14, %156 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %428

241:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(272) %4, i8 0, i32 272, i1 false) #10, !annotation !8
  %242 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 272, i32 -1090519040) #11, !srcloc !23
  %243 = extractvalue { i32, i32 } %242, 0
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %253, !prof !17

245:                                              ; preds = %241
  %246 = tail call ptr @llvm.thread.pointer() #10
  %247 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 3
  %248 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %247) #12, !srcloc !14
  %249 = and i32 %248, -13
  %250 = or i32 %249, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #10, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %251 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 272) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %248) #10, !srcloc !15
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !16
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %257, label %253, !prof !17

253:                                              ; preds = %245, %241
  %254 = phi i32 [ %251, %245 ], [ 272, %241 ]
  %255 = sub i32 272, %254
  %256 = getelementptr i8, ptr %4, i32 %255
  call void @llvm.memset.p0.i32(ptr align 1 %256, i8 0, i32 %254, i1 false) #10
  br label %426

257:                                              ; preds = %245
  %258 = getelementptr inbounds %struct.linereq, ptr %10, i32 0, i32 2
  %259 = load i32, ptr %258, align 8
  %260 = call fastcc i32 @gpio_v2_line_config_validate(ptr noundef nonnull %4, i32 noundef %259) #10
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %426

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.linereq, ptr %10, i32 0, i32 7
  call void @mutex_lock(ptr noundef %263) #10
  %264 = load i32, ptr %258, align 8
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %424, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.gpio_v2_line_config, ptr %4, i32 0, i32 1
  br label %268

268:                                              ; preds = %417, %266
  %269 = phi i32 [ 0, %266 ], [ %421, %417 ]
  %270 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269
  %271 = load ptr, ptr %270, align 8
  %272 = zext i32 %269 to i64
  %273 = shl nuw i64 1, %272
  %274 = load i32, ptr %267, align 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %291, label %276

276:                                              ; preds = %288, %268
  %277 = phi i32 [ %289, %288 ], [ 0, %268 ]
  %278 = getelementptr %struct.gpio_v2_line_config, ptr %4, i32 0, i32 3, i32 %277
  %279 = load i32, ptr %278, align 8
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %288

281:                                              ; preds = %276
  %282 = getelementptr %struct.gpio_v2_line_config, ptr %4, i32 0, i32 3, i32 %277, i32 1
  %283 = load i64, ptr %282, align 8
  %284 = and i64 %283, %273
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %278, i32 0, i32 2
  br label %291

288:                                              ; preds = %281, %276
  %289 = add nuw i32 %277, 1
  %290 = icmp eq i32 %289, %274
  br i1 %290, label %291, label %276

291:                                              ; preds = %288, %286, %268
  %292 = phi ptr [ %287, %286 ], [ %4, %268 ], [ %4, %288 ]
  %293 = load i64, ptr %292, align 8
  %294 = getelementptr inbounds %struct.gpio_desc, ptr %271, i32 0, i32 1
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %295, 64
  %297 = icmp ne i32 %296, 0
  %298 = and i64 %293, 2
  %299 = icmp ne i64 %298, 0
  %300 = xor i1 %299, %297
  call fastcc void @gpio_v2_line_config_flags_to_desc_flags(i64 noundef %293, ptr noundef %294) #10
  %301 = and i64 %293, 8
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %344, label %303

303:                                              ; preds = %291
  %304 = load i32, ptr %267, align 8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %325, label %306

306:                                              ; preds = %322, %303
  %307 = phi i32 [ %323, %322 ], [ 0, %303 ]
  %308 = getelementptr %struct.gpio_v2_line_config, ptr %4, i32 0, i32 3, i32 %307
  %309 = load i32, ptr %308, align 8
  %310 = icmp eq i32 %309, 2
  br i1 %310, label %311, label %322

311:                                              ; preds = %306
  %312 = getelementptr %struct.gpio_v2_line_config, ptr %4, i32 0, i32 3, i32 %307, i32 1
  %313 = load i64, ptr %312, align 8
  %314 = and i64 %313, %273
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %308, i32 0, i32 2
  %318 = load i64, ptr %317, align 8
  %319 = and i64 %318, %273
  %320 = icmp ne i64 %319, 0
  %321 = zext i1 %320 to i32
  br label %325

322:                                              ; preds = %311, %306
  %323 = add nuw i32 %307, 1
  %324 = icmp eq i32 %323, %304
  br i1 %324, label %325, label %306

325:                                              ; preds = %322, %316, %303
  %326 = phi i32 [ %321, %316 ], [ 0, %303 ], [ 0, %322 ]
  %327 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 2
  %328 = load i32, ptr %327, align 8
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %325
  %331 = call ptr @free_irq(i32 noundef %328, ptr noundef %270) #10
  store i32 0, ptr %327, align 8
  br label %332

332:                                              ; preds = %330, %325
  %333 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 7
  %334 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %333) #10
  %335 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 8
  store volatile i32 0, ptr %335, align 4
  %336 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 3
  store volatile i64 0, ptr %336, align 8
  %337 = load ptr, ptr %270, align 8
  %338 = icmp eq ptr %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.gpio_desc, ptr %337, i32 0, i32 5
  store volatile i32 0, ptr %340, align 4
  br label %341

341:                                              ; preds = %339, %332
  %342 = call i32 @gpiod_direction_output(ptr noundef %271, i32 noundef %326) #10
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %417, label %424

344:                                              ; preds = %291
  %345 = and i64 %293, 4
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %417, label %347

347:                                              ; preds = %344
  %348 = call i32 @gpiod_direction_input(ptr noundef %271) #10
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %424

350:                                              ; preds = %347
  %351 = and i64 %293, 48
  %352 = load i32, ptr %267, align 8
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %370, label %354

354:                                              ; preds = %367, %350
  %355 = phi i32 [ %368, %367 ], [ 0, %350 ]
  %356 = getelementptr %struct.gpio_v2_line_config, ptr %4, i32 0, i32 3, i32 %355
  %357 = load i32, ptr %356, align 8
  %358 = icmp eq i32 %357, 3
  br i1 %358, label %359, label %367

359:                                              ; preds = %354
  %360 = getelementptr %struct.gpio_v2_line_config, ptr %4, i32 0, i32 3, i32 %355, i32 1
  %361 = load i64, ptr %360, align 8
  %362 = and i64 %361, %273
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.gpio_v2_line_attribute, ptr %356, i32 0, i32 2
  %366 = load i32, ptr %365, align 8
  br label %370

367:                                              ; preds = %359, %354
  %368 = add nuw i32 %355, 1
  %369 = icmp eq i32 %368, %352
  br i1 %369, label %370, label %354

370:                                              ; preds = %367, %364, %350
  %371 = phi i32 [ %366, %364 ], [ 0, %350 ], [ 0, %367 ]
  %372 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 3
  %373 = load volatile i64, ptr %372, align 8
  %374 = icmp ne i64 %373, %351
  %375 = or i1 %300, %374
  br i1 %375, label %381, label %376

376:                                              ; preds = %370
  %377 = load ptr, ptr %270, align 8
  %378 = getelementptr inbounds %struct.gpio_desc, ptr %377, i32 0, i32 5
  %379 = load volatile i32, ptr %378, align 4
  %380 = icmp eq i32 %379, %371
  br i1 %380, label %417, label %381

381:                                              ; preds = %376, %370
  %382 = icmp eq i32 %371, 0
  br i1 %382, label %390, label %383

383:                                              ; preds = %381
  %384 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 8
  %385 = load volatile i32, ptr %384, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %390, label %387

387:                                              ; preds = %383
  store volatile i64 %351, ptr %372, align 8
  %388 = load ptr, ptr %270, align 8
  %389 = getelementptr inbounds %struct.gpio_desc, ptr %388, i32 0, i32 5
  store volatile i32 %371, ptr %389, align 4
  br label %417

390:                                              ; preds = %383, %381
  %391 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 2
  %392 = load i32, ptr %391, align 8
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %398, label %394

394:                                              ; preds = %390
  %395 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 8
  %396 = load volatile i32, ptr %395, align 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %394, %390
  br i1 %382, label %399, label %414

399:                                              ; preds = %398
  %400 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 8
  %401 = load volatile i32, ptr %400, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %414, label %403

403:                                              ; preds = %399
  br i1 %393, label %406, label %404

404:                                              ; preds = %403, %394
  %405 = call ptr @free_irq(i32 noundef %392, ptr noundef %270) #10
  store i32 0, ptr %391, align 8
  br label %406

406:                                              ; preds = %404, %403
  %407 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 7
  %408 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %407) #10
  %409 = getelementptr %struct.linereq, ptr %10, i32 0, i32 8, i32 %269, i32 8
  store volatile i32 0, ptr %409, align 4
  store volatile i64 0, ptr %372, align 8
  %410 = load ptr, ptr %270, align 8
  %411 = icmp eq ptr %410, null
  br i1 %411, label %414, label %412

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.gpio_desc, ptr %410, i32 0, i32 5
  store volatile i32 0, ptr %413, align 4
  br label %414

414:                                              ; preds = %412, %406, %399, %398
  %415 = call fastcc i32 @edge_detector_setup(ptr noundef %270, ptr noundef nonnull %4, i32 noundef %269, i64 noundef %351) #10
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %414, %387, %376, %344, %341
  %418 = load ptr, ptr %271, align 4
  %419 = getelementptr inbounds %struct.gpio_device, ptr %418, i32 0, i32 12
  %420 = call i32 @blocking_notifier_call_chain(ptr noundef %419, i32 noundef 3, ptr noundef %271) #10
  %421 = add nuw i32 %269, 1
  %422 = load i32, ptr %258, align 8
  %423 = icmp ult i32 %421, %422
  br i1 %423, label %268, label %424

424:                                              ; preds = %417, %414, %347, %341, %262
  %425 = phi i32 [ 0, %262 ], [ 0, %417 ], [ %415, %414 ], [ %348, %347 ], [ %342, %341 ]
  call void @mutex_unlock(ptr noundef %263) #10
  br label %426

426:                                              ; preds = %424, %257, %253
  %427 = phi i32 [ %425, %424 ], [ %260, %257 ], [ -14, %253 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #10
  br label %428

428:                                              ; preds = %426, %239, %142, %3
  %429 = phi i32 [ %143, %142 ], [ %240, %239 ], [ %427, %426 ], [ -22, %3 ]
  ret i32 %429
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @linereq_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @linereq_free(ptr noundef %4)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineinfo_changed_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.gpio_v2_line_info_changed, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %4) #10
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.gpio_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %2 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = sdiv exact i32 %10, 24
  %12 = getelementptr i8, ptr %0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = lshr i32 %11, 5
  %15 = getelementptr i32, ptr %13, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %11, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(288) %4, i8 0, i32 288, i1 false)
  %22 = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %4, i32 0, i32 2
  store i32 %1, ptr %22, align 8
  %23 = tail call i64 @ktime_get() #10
  %24 = getelementptr inbounds %struct.gpio_v2_line_info_changed, ptr %4, i32 0, i32 1
  store i64 %23, ptr %24, align 8
  call fastcc void @gpio_desc_to_lineinfo(ptr noundef %2, ptr noundef nonnull %4)
  %25 = getelementptr i8, ptr %0, i32 -9252
  %26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = getelementptr i8, ptr %0, i32 -9240
  %28 = call i32 @__kfifo_in(ptr noundef %27, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  call void @__wake_up(ptr noundef %25, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #10
  br label %31

31:                                               ; preds = %30, %21, %3
  %32 = phi i32 [ 0, %3 ], [ 1, %21 ], [ 1, %30 ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %4) #10
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{i64 2149042789}
!10 = !{i64 2149038613}
!11 = !{i64 2149038688, i64 2149038715, i64 2149038762, i64 2149038784, i64 2149038812, i64 2149038832}
!12 = !{i64 2149065792}
!13 = !{i64 2151625295, i64 2151625320}
!14 = !{i64 4120829}
!15 = !{i64 4121026}
!16 = !{i64 2151606305}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2147995494}
!19 = !{i64 306825, i64 2147808391, i64 2147808417, i64 2147808464, i64 2147808486, i64 2147808514, i64 2147808534}
!20 = !{i64 255977, i64 256001, i64 256022, i64 256039, i64 256056}
!21 = !{i64 2147995694}
!22 = !{i32 0, i32 2}
!23 = !{i64 2151624717, i64 2151624742}
!24 = !{i64 2147979914}
!25 = !{i64 2147882776, i64 2147882808, i64 2147882837, i64 2147882871, i64 2147882902, i64 2147882925}
!26 = !{i64 2147980117}
!27 = !{!"branch_weights", i32 1, i32 2000}
