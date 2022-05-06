; ModuleID = '/llk/IR/drivers/rtc/dev.c_pt.bc'
source_filename = "../drivers/rtc/dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.46, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
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
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_param = type { i64, %union.anon.61, i32, i32 }
%union.anon.61 = type { i64 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.65 = type { ptr }

@rtc_devt = internal global i32 0, align 4
@rtc_dev_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @rtc_dev_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtc_dev_poll, ptr @rtc_dev_ioctl, ptr null, ptr null, i32 0, ptr @rtc_dev_open, ptr null, ptr @rtc_dev_release, ptr null, ptr @rtc_dev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\013rtc_core: failed to allocate char dev region\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @rtc_dev_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_dev_prepare(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @rtc_devt, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 15
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = and i32 %2, -1048576
  %10 = or i32 %6, %9
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 5
  tail call void @cdev_init(ptr noundef %12, ptr noundef nonnull @rtc_dev_fops) #7
  %13 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 5, i32 1
  store ptr %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %8, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rtc_dev_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @rtc_devt, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str) #7
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @rtc_dev_exit() #2 section ".exit.text" {
  %1 = load i32, ptr @rtc_devt, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 16) #7
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_dev_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #7
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #7
  store i32 0, ptr %5, align 4
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %12, align 4
  %13 = icmp ult i32 %2, 4
  br i1 %13, label %53, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %15, ptr noundef nonnull %5) #7
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  store volatile i32 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 7
  %20 = load i32, ptr %19, align 8
  store i32 0, ptr %19, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %21 = load i16, ptr %18, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %36, %14
  %25 = load i32, ptr %16, align 4
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load volatile i32, ptr %9, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41, !prof !13

32:                                               ; preds = %28
  %33 = load volatile i32, ptr %9, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  call void @schedule() #7
  store volatile i32 1, ptr %17, align 8
  call void @_raw_spin_lock_irq(ptr noundef %18) #7
  %37 = load i32, ptr %19, align 8
  store i32 0, ptr %19, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %38 = load i16, ptr %18, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %24, label %41

41:                                               ; preds = %36, %32, %28, %24, %14
  %42 = phi i32 [ %20, %14 ], [ 0, %28 ], [ 0, %32 ], [ 0, %24 ], [ %37, %36 ]
  %43 = phi i1 [ false, %14 ], [ true, %28 ], [ true, %32 ], [ true, %24 ], [ false, %36 ]
  %44 = phi i32 [ 0, %14 ], [ -512, %28 ], [ -512, %32 ], [ -11, %24 ], [ 0, %36 ]
  store volatile i32 0, ptr %17, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  call void @remove_wait_queue(ptr noundef %15, ptr noundef nonnull %5) #7
  br i1 %43, label %53, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #9, !srcloc !15
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %50 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %42, i32 -1090519041) #7, !srcloc !18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 4, i32 %50
  br label %53

53:                                               ; preds = %45, %41, %4
  %54 = phi i32 [ -22, %4 ], [ %52, %45 ], [ %44, %41 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #7
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_dev_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 9
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #7
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 65
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_dev_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.rtc_time, align 4
  %5 = alloca %struct.rtc_wkalrm, align 4
  %6 = alloca %struct.rtc_param, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !19
  %12 = inttoptr i32 %2 to ptr
  %13 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 4
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %294

16:                                               ; preds = %3
  switch i32 %1, label %283 [
    i32 1074032654, label %17
    i32 1076129802, label %17
    i32 1075343380, label %17
    i32 1074032652, label %19
    i32 28677, label %25
    i32 -2145095672, label %34
    i32 1076129799, label %51
    i32 -2145095671, label %98
    i32 28678, label %134
    i32 28673, label %136
    i32 28674, label %138
    i32 28675, label %140
    i32 28676, label %142
    i32 -2147192821, label %146
    i32 1076391951, label %155
    i32 -2144833520, label %173
    i32 1075343379, label %189
  ]

17:                                               ; preds = %16, %16, %16
  %18 = tail call zeroext i1 @capable(i32 noundef 25) #7
  br i1 %18, label %33, label %292

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %23, label %144

23:                                               ; preds = %19
  %24 = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %24, label %144, label %292

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 11
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %132

31:                                               ; preds = %25
  %32 = tail call zeroext i1 @capable(i32 noundef 24) #7
  br i1 %32, label %132, label %292

33:                                               ; preds = %17
  switch i32 %1, label %283 [
    i32 1075343379, label %189
    i32 1076129799, label %51
    i32 1075343380, label %247
    i32 1076129802, label %114
  ]

34:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %35 = call i32 @rtc_read_alarm(ptr noundef %9, ptr noundef nonnull %5) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %294, label %37

37:                                               ; preds = %34
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 36, i32 -1090519040) #10, !srcloc !20
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %294

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2
  %43 = tail call ptr @llvm.thread.pointer() #7
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #9, !srcloc !15
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %48 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef %42, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %35, i32 -14
  br label %294

51:                                               ; preds = %33, %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %52 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 36, i32 -1090519040) #10, !srcloc !21
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64, !prof !13

56:                                               ; preds = %51
  %57 = tail call ptr @llvm.thread.pointer() #7
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #9, !srcloc !15
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %62 = call i32 @arm_copy_from_user(ptr noundef %52, ptr noundef %12, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !13

64:                                               ; preds = %56, %51
  %65 = phi i32 [ %62, %56 ], [ 36, %51 ]
  %66 = sub i32 36, %65
  %67 = getelementptr i8, ptr %52, i32 %66
  call void @llvm.memset.p0.i32(ptr align 1 %67, i8 0, i32 %65, i1 false) #7
  br label %294

68:                                               ; preds = %56
  store i8 0, ptr %5, align 4
  %69 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 1
  store i8 0, ptr %69, align 1
  %70 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2, i32 6
  store i32 -1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2, i32 7
  store i32 -1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2, i32 8
  store i32 -1, ptr %72, align 4
  %73 = call i32 @rtc_read_time(ptr noundef %9, ptr noundef nonnull %4) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %294, label %75

75:                                               ; preds = %68
  %76 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %4) #7
  %77 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2, i32 3
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.rtc_wkalrm, ptr %5, i32 0, i32 2, i32 5
  store i32 %84, ptr %85, align 4
  %86 = call i32 @rtc_valid_tm(ptr noundef %52) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %294, label %88

88:                                               ; preds = %75
  %89 = call i64 @rtc_tm_to_time64(ptr noundef %52) #7
  %90 = icmp slt i64 %89, %76
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = add i64 %76, 86400
  call void @rtc_time64_to_tm(i64 noundef %92, ptr noundef nonnull %4) #7
  %93 = load i32, ptr %77, align 4
  store i32 %93, ptr %79, align 4
  %94 = load i32, ptr %80, align 4
  store i32 %94, ptr %82, align 4
  %95 = load i32, ptr %83, align 4
  store i32 %95, ptr %85, align 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = call i32 @rtc_set_alarm(ptr noundef %9, ptr noundef nonnull %5) #7
  br label %294

98:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %99 = call i32 @rtc_read_time(ptr noundef %9, ptr noundef nonnull %4) #7
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %294, label %101

101:                                              ; preds = %98
  %102 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 36, i32 -1090519040) #10, !srcloc !20
  %103 = extractvalue { i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %294

105:                                              ; preds = %101
  %106 = tail call ptr @llvm.thread.pointer() #7
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 3
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %107) #9, !srcloc !15
  %109 = and i32 %108, -13
  %110 = or i32 %109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %111 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %4, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 %99, i32 -14
  br label %294

114:                                              ; preds = %33
  tail call void @mutex_unlock(ptr noundef %13) #7
  %115 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 36, i32 -1090519040) #10, !srcloc !21
  %116 = extractvalue { i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126, !prof !13

118:                                              ; preds = %114
  %119 = tail call ptr @llvm.thread.pointer() #7
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %121 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %120) #9, !srcloc !15
  %122 = and i32 %121, -13
  %123 = or i32 %122, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %124 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %12, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126, !prof !13

126:                                              ; preds = %118, %114
  %127 = phi i32 [ %124, %118 ], [ 36, %114 ]
  %128 = sub i32 36, %127
  %129 = getelementptr i8, ptr %4, i32 %128
  call void @llvm.memset.p0.i32(ptr align 1 %129, i8 0, i32 %127, i1 false) #7
  br label %294

130:                                              ; preds = %118
  %131 = call i32 @rtc_set_time(ptr noundef %9, ptr noundef nonnull %4) #7
  br label %294

132:                                              ; preds = %31, %25
  %133 = tail call i32 @rtc_irq_set_state(ptr noundef %9, i32 noundef 1) #7
  br label %292

134:                                              ; preds = %16
  %135 = tail call i32 @rtc_irq_set_state(ptr noundef %9, i32 noundef 0) #7
  br label %292

136:                                              ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %137 = tail call i32 @rtc_alarm_irq_enable(ptr noundef %9, i32 noundef 1) #7
  br label %294

138:                                              ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %139 = tail call i32 @rtc_alarm_irq_enable(ptr noundef %9, i32 noundef 0) #7
  br label %294

140:                                              ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %141 = tail call i32 @rtc_update_irq_enable(ptr noundef %9, i32 noundef 1) #7
  br label %294

142:                                              ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %143 = tail call i32 @rtc_update_irq_enable(ptr noundef %9, i32 noundef 0) #7
  br label %294

144:                                              ; preds = %23, %19
  %145 = tail call i32 @rtc_irq_set_freq(ptr noundef %9, i32 noundef %2) #7
  br label %292

146:                                              ; preds = %16
  %147 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 11
  %148 = load i32, ptr %147, align 8
  %149 = tail call ptr @llvm.thread.pointer() #7
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %151 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %150) #9, !srcloc !15
  %152 = and i32 %151, -13
  %153 = or i32 %152, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %154 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %12, i32 %148, i32 -1090519041) #7, !srcloc !22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  br label %292

155:                                              ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %156 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 40, i32 -1090519040) #10, !srcloc !21
  %157 = extractvalue { i32, i32 } %156, 0
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %167, !prof !13

159:                                              ; preds = %155
  %160 = tail call ptr @llvm.thread.pointer() #7
  %161 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 3
  %162 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %161) #9, !srcloc !15
  %163 = and i32 %162, -13
  %164 = or i32 %163, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %165 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %12, i32 noundef 40) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %171, label %167, !prof !13

167:                                              ; preds = %159, %155
  %168 = phi i32 [ %165, %159 ], [ 40, %155 ]
  %169 = sub i32 40, %168
  %170 = getelementptr i8, ptr %5, i32 %169
  call void @llvm.memset.p0.i32(ptr align 1 %170, i8 0, i32 %168, i1 false) #7
  br label %294

171:                                              ; preds = %159
  %172 = call i32 @rtc_set_alarm(ptr noundef %9, ptr noundef nonnull %5) #7
  br label %294

173:                                              ; preds = %16
  tail call void @mutex_unlock(ptr noundef %13) #7
  %174 = call i32 @rtc_read_alarm(ptr noundef %9, ptr noundef nonnull %5) #7
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %294, label %176

176:                                              ; preds = %173
  %177 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 40, i32 -1090519040) #10, !srcloc !20
  %178 = extractvalue { i32, i32 } %177, 0
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %294

180:                                              ; preds = %176
  %181 = tail call ptr @llvm.thread.pointer() #7
  %182 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 3
  %183 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %182) #9, !srcloc !15
  %184 = and i32 %183, -13
  %185 = or i32 %184, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %185) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %186 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %5, i32 noundef 40) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %183) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 %174, i32 -14
  br label %294

189:                                              ; preds = %33, %16
  %190 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 24, i32 -1090519040) #10
  %191 = extractvalue { i32, i32 } %190, 0
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %201, !prof !13

193:                                              ; preds = %189
  %194 = tail call ptr @llvm.thread.pointer() #7
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 3
  %196 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %195) #9, !srcloc !15
  %197 = and i32 %196, -13
  %198 = or i32 %197, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %198) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %199 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %12, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %196) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201, !prof !13

201:                                              ; preds = %193, %189
  %202 = phi i32 [ %199, %193 ], [ 24, %189 ]
  %203 = sub i32 24, %202
  %204 = getelementptr i8, ptr %6, i32 %203
  call void @llvm.memset.p0.i32(ptr align 1 %204, i8 0, i32 %202, i1 false) #7
  call void @mutex_unlock(ptr noundef %13) #7
  br label %294

205:                                              ; preds = %193
  %206 = load i64, ptr %6, align 8
  switch i64 %206, label %228 [
    i64 0, label %207
    i64 1, label %215
  ]

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.rtc_param, ptr %6, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = icmp eq i32 %209, 0
  %211 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 21
  %212 = load i32, ptr %211, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.rtc_param, ptr %6, i32 0, i32 1
  store i64 %213, ptr %214, align 8
  br i1 %210, label %240, label %292

215:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !19
  call void @mutex_unlock(ptr noundef %13) #7
  %216 = getelementptr inbounds %struct.rtc_param, ptr %6, i32 0, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = call i32 @rtc_read_offset(ptr noundef %9, ptr noundef nonnull %7) #7
  call void @mutex_lock(ptr noundef %13) #7
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32, ptr %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.rtc_param, ptr %6, i32 0, i32 1
  store i64 %224, ptr %225, align 8
  br label %226

226:                                              ; preds = %222, %219
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %237

227:                                              ; preds = %215
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  br label %294

228:                                              ; preds = %205
  %229 = load ptr, ptr %10, align 8
  %230 = getelementptr inbounds %struct.rtc_class_ops, ptr %229, i32 0, i32 9
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %292, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = call i32 %231(ptr noundef %235, ptr noundef nonnull %6) #7
  br label %237

237:                                              ; preds = %233, %226
  %238 = phi i32 [ %236, %233 ], [ %220, %226 ]
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %292

240:                                              ; preds = %237, %207
  %241 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %195) #9, !srcloc !15
  %242 = and i32 %241, -13
  %243 = or i32 %242, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %243) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %244 = call i32 @arm_copy_to_user(ptr noundef %12, ptr noundef nonnull %6, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %241) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %245 = icmp eq i32 %244, 0
  %246 = select i1 %245, i32 0, i32 -14
  br label %292

247:                                              ; preds = %33
  %248 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 24, i32 -1090519040) #10, !srcloc !21
  %249 = extractvalue { i32, i32 } %248, 0
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %259, !prof !13

251:                                              ; preds = %247
  %252 = tail call ptr @llvm.thread.pointer() #7
  %253 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 3
  %254 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %253) #9, !srcloc !15
  %255 = and i32 %254, -13
  %256 = or i32 %255, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %256) #7, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %257 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %12, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %254) #7, !srcloc !16
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %263, label %259, !prof !13

259:                                              ; preds = %251, %247
  %260 = phi i32 [ %257, %251 ], [ 24, %247 ]
  %261 = sub i32 24, %260
  %262 = getelementptr i8, ptr %6, i32 %261
  call void @llvm.memset.p0.i32(ptr align 1 %262, i8 0, i32 %260, i1 false) #7
  call void @mutex_unlock(ptr noundef %13) #7
  br label %294

263:                                              ; preds = %251
  %264 = load i64, ptr %6, align 8
  switch i64 %264, label %274 [
    i64 0, label %292
    i64 1, label %265
  ]

265:                                              ; preds = %263
  call void @mutex_unlock(ptr noundef %13) #7
  %266 = getelementptr inbounds %struct.rtc_param, ptr %6, i32 0, i32 2
  %267 = load i32, ptr %266, align 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.rtc_param, ptr %6, i32 0, i32 1
  %271 = load i64, ptr %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = call i32 @rtc_set_offset(ptr noundef %9, i32 noundef %272) #7
  br label %294

274:                                              ; preds = %263
  %275 = load ptr, ptr %10, align 8
  %276 = getelementptr inbounds %struct.rtc_class_ops, ptr %275, i32 0, i32 10
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %292, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = call i32 %277(ptr noundef %281, ptr noundef nonnull %6) #7
  br label %292

283:                                              ; preds = %33, %16
  %284 = load ptr, ptr %11, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %292, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %288 = load ptr, ptr %287, align 4
  %289 = tail call i32 %284(ptr noundef %288, i32 noundef %1, i32 noundef %2) #7
  %290 = icmp eq i32 %289, -515
  %291 = select i1 %290, i32 -25, i32 %289
  br label %292

292:                                              ; preds = %286, %283, %279, %274, %263, %240, %237, %228, %207, %146, %144, %134, %132, %31, %23, %17
  %293 = phi i32 [ -13, %31 ], [ %291, %286 ], [ %282, %279 ], [ %238, %237 ], [ %154, %146 ], [ %145, %144 ], [ %135, %134 ], [ %133, %132 ], [ -22, %263 ], [ -22, %274 ], [ -25, %283 ], [ -13, %17 ], [ -13, %23 ], [ -22, %207 ], [ -22, %228 ], [ %246, %240 ]
  call void @mutex_unlock(ptr noundef %13) #7
  br label %294

294:                                              ; preds = %292, %269, %265, %259, %227, %201, %180, %176, %173, %171, %167, %142, %140, %138, %136, %130, %126, %105, %101, %98, %96, %75, %68, %64, %41, %37, %34, %3
  %295 = phi i32 [ %293, %292 ], [ -14, %259 ], [ %273, %269 ], [ -14, %201 ], [ -22, %227 ], [ %172, %171 ], [ %143, %142 ], [ %141, %140 ], [ %139, %138 ], [ %137, %136 ], [ %131, %130 ], [ %97, %96 ], [ %14, %3 ], [ %35, %34 ], [ %99, %98 ], [ %174, %173 ], [ -22, %265 ], [ %73, %68 ], [ %86, %75 ], [ -14, %37 ], [ -14, %64 ], [ -14, %101 ], [ -14, %126 ], [ -14, %167 ], [ -14, %176 ], [ %50, %41 ], [ %113, %105 ], [ %188, %180 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  ret i32 %295
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_dev_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #7, !srcloc !23
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #7, !srcloc !24
  %11 = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !25
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %4, i32 -504
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %15, ptr %16, align 8
  %17 = getelementptr i8, ptr %4, i32 68
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #7
  %18 = getelementptr i8, ptr %4, i32 64
  store i32 0, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  %19 = load i16, ptr %17, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %21

21:                                               ; preds = %14, %9, %2
  %22 = phi i32 [ 0, %14 ], [ -16, %9 ], [ -16, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_dev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 4
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef %5) #7
  %9 = tail call i32 @rtc_update_irq_enable(ptr noundef %4, i32 noundef 0) #7
  br label %10

10:                                               ; preds = %8, %2
  %11 = tail call i32 @rtc_update_irq_enable(ptr noundef %4, i32 noundef 0) #7
  %12 = tail call i32 @rtc_irq_set_state(ptr noundef %4, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #7, !srcloc !23
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #7, !srcloc !27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtc_dev_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 10
  %7 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #7
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_time(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_irq_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_alarm_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_update_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_irq_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_read_offset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 2148913647}
!9 = !{i64 2148909471}
!10 = !{i64 2148909546, i64 2148909573, i64 2148909620, i64 2148909642, i64 2148909670, i64 2148909690}
!11 = !{i64 340221}
!12 = !{i64 2148937791}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2152416284}
!15 = !{i64 3567018}
!16 = !{i64 3567215}
!17 = !{i64 2151052494}
!18 = !{i64 2152429974, i64 2152430254, i64 2152430588, i64 2152430922}
!19 = !{!"auto-init"}
!20 = !{i64 2151071484, i64 2151071509}
!21 = !{i64 2151070906, i64 2151070931}
!22 = !{i64 2152449262, i64 2152449542, i64 2152449876, i64 2152450210}
!23 = !{i64 444737, i64 2147934708, i64 2147934734, i64 2147934781, i64 2147934803, i64 2147934831, i64 2147934851}
!24 = !{i64 2147954585, i64 2147954617, i64 2147954646, i64 2147954680, i64 2147954711, i64 2147954734}
!25 = !{i64 2148055901}
!26 = !{i64 2148054866}
!27 = !{i64 2147953044, i64 2147953076, i64 2147953105, i64 2147953139, i64 2147953170, i64 2147953193}
