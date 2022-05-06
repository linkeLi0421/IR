; ModuleID = '/llk/IR/drivers/char/mem.c_pt.bc'
source_filename = "../drivers/char/mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.memdev = type { ptr, i16, ptr, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.35, %union.anon.36 }
%union.anon.35 = type { ptr }
%union.anon.36 = type { i64 }
%struct.splice_desc = type { i32, i32, i32, %union.anon.79, i64, ptr, i32, i8 }
%union.anon.79 = type { ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.anon.25 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@__initcall__kmod_mem__259_781_chr_dev_init5 = internal global ptr @chr_dev_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@memory_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @memory_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"unable to get major %d for memory devs\0A\00", align 1
@chr_dev_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@mem_class = internal unnamed_addr global ptr null, align 4
@devlist = internal unnamed_addr constant [12 x %struct.memdev] [%struct.memdev zeroinitializer, %struct.memdev { ptr @.str, i16 0, ptr @mem_fops, i32 8192 }, %struct.memdev zeroinitializer, %struct.memdev { ptr @.str.2, i16 438, ptr @null_fops, i32 134217728 }, %struct.memdev { ptr @.str.3, i16 0, ptr @port_fops, i32 0 }, %struct.memdev { ptr @.str.4, i16 438, ptr @zero_fops, i32 134217728 }, %struct.memdev zeroinitializer, %struct.memdev { ptr @.str.5, i16 438, ptr @full_fops, i32 0 }, %struct.memdev { ptr @.str.6, i16 438, ptr @random_fops, i32 0 }, %struct.memdev { ptr @.str.7, i16 438, ptr @urandom_fops, i32 0 }, %struct.memdev zeroinitializer, %struct.memdev { ptr @.str.8, i16 420, ptr @kmsg_fops, i32 0 }], align 4
@mem_fops = internal constant %struct.file_operations { ptr null, ptr @memory_lseek, ptr @read_mem, ptr @write_mem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmap_mem, i32 0, ptr @open_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@null_fops = internal constant %struct.file_operations { ptr null, ptr @null_lseek, ptr @read_null, ptr @write_null, ptr @read_iter_null, ptr @write_iter_null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @splice_write_null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@port_fops = internal constant %struct.file_operations { ptr null, ptr @memory_lseek, ptr @read_port, ptr @write_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_port, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@zero_fops = internal constant %struct.file_operations { ptr null, ptr @null_lseek, ptr @read_zero, ptr @write_null, ptr @read_iter_zero, ptr @write_iter_null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmap_zero, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_unmapped_area_zero, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@full_fops = internal constant %struct.file_operations { ptr null, ptr @null_lseek, ptr null, ptr @write_full, ptr @read_iter_zero, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@random_fops = external dso_local constant %struct.file_operations, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"urandom\00", align 1
@urandom_fops = external dso_local constant %struct.file_operations, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"kmsg\00", align 1
@kmsg_fops = external dso_local constant %struct.file_operations, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mmap_mem_ops = internal constant %struct.vm_operations_struct zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mem__259_781_chr_dev_init5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @phys_mem_access_prot_allowed(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @chr_dev_init() #1 section ".init.text" {
  %1 = tail call i32 @__register_chrdev(i32 noundef 1, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @memory_fops) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 1) #13
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @chr_dev_init.__key) #12
  store ptr %6, ptr @mem_class, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %26

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 6
  store ptr @mem_devnode, ptr %11, align 4
  br label %12

12:                                               ; preds = %21, %10
  %13 = phi i32 [ 1, %10 ], [ %22, %21 ]
  %14 = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @mem_class, align 4
  %19 = or i32 %13, 1048576
  %20 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %18, ptr noundef null, i32 noundef %19, ptr noundef null, ptr noundef nonnull %15) #12
  br label %21

21:                                               ; preds = %17, %12
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp eq i32 %22, 12
  br i1 %23, label %24, label %12

24:                                               ; preds = %21
  %25 = tail call i32 @tty_init() #13
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi i32 [ %9, %8 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal noalias ptr @mem_devnode(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048575
  %8 = lshr i32 1111, %7
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %7, i32 1
  %13 = load i16, ptr %12, align 4
  store i16 %13, ptr %1, align 2
  br label %14

14:                                               ; preds = %11, %4, %2
  ret ptr null
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tty_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @memory_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = icmp ugt i32 %5, 11
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = lshr i32 1093, %5
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %5, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = getelementptr [12 x %struct.memdev], ptr @devlist, i32 0, i32 %5, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, ptr %17, align 8
  %20 = getelementptr inbounds %struct.file_operations, ptr %13, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = tail call i32 %21(ptr noundef %0, ptr noundef %1) #12
  br label %25

25:                                               ; preds = %23, %11, %7, %2
  %26 = phi i32 [ %24, %23 ], [ -6, %2 ], [ -6, %7 ], [ 0, %11 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @memory_lseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @down_write(ptr noundef %6) #12
  switch i32 %2, label %16 [
    i32 1, label %7
    i32 0, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %9 = load i64, ptr %8, align 8
  %10 = add i64 %9, %1
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i64 [ %1, %3 ], [ %10, %7 ]
  %13 = icmp ugt i64 %12, -4096
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 %12, ptr %15, align 8
  br label %16

16:                                               ; preds = %14, %11, %3
  %17 = phi i64 [ %12, %14 ], [ -75, %11 ], [ -22, %3 ]
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 24
  tail call void @up_write(ptr noundef %19) #12
  ret i64 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_mem(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = icmp ult i64 %5, 4294967296
  br i1 %7, label %8, label %81

8:                                                ; preds = %4
  %9 = tail call i32 @valid_phys_addr_range(i32 noundef %6, i32 noundef %2) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %81, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4096) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %75, label %17

17:                                               ; preds = %15
  %18 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #15, !srcloc !8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %80, label %20

20:                                               ; preds = %17
  %21 = and i32 %6, 4095
  %22 = sub nuw nsw i32 4096, %21
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %2) #12
  br label %24

24:                                               ; preds = %69, %20
  %25 = phi i32 [ %18, %20 ], [ %73, %69 ]
  %26 = phi i32 [ %23, %20 ], [ %72, %69 ]
  %27 = phi ptr [ %1, %20 ], [ %47, %69 ]
  %28 = phi i32 [ %2, %20 ], [ %49, %69 ]
  %29 = phi i32 [ %6, %20 ], [ %48, %69 ]
  %30 = phi i32 [ 0, %20 ], [ %50, %69 ]
  %31 = inttoptr i32 %25 to ptr
  %32 = tail call i32 @copy_from_kernel_nofault(ptr noundef nonnull %13, ptr noundef nonnull %31, i32 noundef %26) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %24
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 %26, i32 -1090519040) #15, !srcloc !9
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = tail call ptr @llvm.thread.pointer() #12
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #16, !srcloc !10
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %44 = tail call i32 @arm_copy_to_user(ptr noundef %27, ptr noundef nonnull %13, i32 noundef %26) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %27, i32 %26
  %48 = add i32 %26, %29
  %49 = sub i32 %28, %26
  %50 = add i32 %26, %30
  %51 = load volatile i32, ptr %39, align 4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = tail call i32 @__cond_resched() #12
  br label %56

56:                                               ; preds = %54, %46
  %57 = load volatile i32, ptr %39, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 98, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 256
  %64 = icmp ne i32 %63, 0
  %65 = icmp eq i32 %49, 0
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %75, label %69

67:                                               ; preds = %56
  %68 = icmp eq i32 %49, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %67, %60
  %70 = and i32 %48, 4095
  %71 = sub nuw nsw i32 4096, %70
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 %49) #12
  %73 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %48, i32 -2130706432, i32 8454144) #15, !srcloc !8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %24

75:                                               ; preds = %67, %60, %15
  %76 = phi i32 [ 0, %15 ], [ %50, %60 ], [ %50, %67 ]
  tail call void @kfree(ptr noundef nonnull %13) #12
  %77 = sext i32 %76 to i64
  %78 = load i64, ptr %3, align 8
  %79 = add i64 %78, %77
  store i64 %79, ptr %3, align 8
  br label %81

80:                                               ; preds = %69, %38, %34, %24, %17
  tail call void @kfree(ptr noundef nonnull %13) #12
  br label %81

81:                                               ; preds = %80, %75, %11, %8, %4
  %82 = phi i32 [ -14, %80 ], [ %76, %75 ], [ 0, %4 ], [ -14, %8 ], [ -12, %11 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_mem(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = icmp ult i64 %5, 4294967296
  br i1 %6, label %7, label %84

7:                                                ; preds = %4
  %8 = trunc i64 %5 to i32
  %9 = tail call i32 @valid_phys_addr_range(i32 noundef %8, i32 noundef %2) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %84, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %11
  %14 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %8, i32 -2130706432, i32 8454144) #15, !srcloc !8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = and i32 %8, 4095
  %18 = sub nuw nsw i32 4096, %17
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %2) #12
  br label %23

20:                                               ; preds = %73, %13
  %21 = phi i32 [ 0, %13 ], [ %54, %73 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %84, label %79

23:                                               ; preds = %73, %16
  %24 = phi i32 [ %14, %16 ], [ %77, %73 ]
  %25 = phi i32 [ %19, %16 ], [ %76, %73 ]
  %26 = phi ptr [ %1, %16 ], [ %51, %73 ]
  %27 = phi i32 [ %2, %16 ], [ %53, %73 ]
  %28 = phi i32 [ %8, %16 ], [ %52, %73 ]
  %29 = phi i32 [ 0, %16 ], [ %54, %73 ]
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 %25, i32 -1090519040) #15, !srcloc !13
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42, !prof !14

33:                                               ; preds = %23
  %34 = inttoptr i32 %24 to ptr
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #16, !srcloc !10
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %40 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %34, ptr noundef %26, i32 noundef %25) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42, !prof !14

42:                                               ; preds = %33, %23
  %43 = phi i32 [ %40, %33 ], [ %25, %23 ]
  %44 = inttoptr i32 %24 to ptr
  %45 = sub i32 %25, %43
  %46 = getelementptr i8, ptr %44, i32 %45
  tail call void @llvm.memset.p0.i32(ptr align 1 %46, i8 0, i32 %43, i1 false) #12
  %47 = sub i32 %25, %43
  %48 = add i32 %47, %29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %84, label %79

50:                                               ; preds = %33
  %51 = getelementptr i8, ptr %26, i32 %25
  %52 = add i32 %25, %28
  %53 = sub i32 %27, %25
  %54 = add i32 %25, %29
  %55 = load volatile i32, ptr %35, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = tail call i32 @__cond_resched() #12
  br label %60

60:                                               ; preds = %58, %50
  %61 = load volatile i32, ptr %35, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 98, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 256
  %68 = icmp ne i32 %67, 0
  %69 = icmp eq i32 %53, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %79, label %73

71:                                               ; preds = %60
  %72 = icmp eq i32 %53, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %71, %64
  %74 = and i32 %52, 4095
  %75 = sub nuw nsw i32 4096, %74
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 %53) #12
  %77 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %52, i32 -2130706432, i32 8454144) #15, !srcloc !8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %20, label %23

79:                                               ; preds = %71, %64, %42, %20, %11
  %80 = phi i32 [ %48, %42 ], [ %21, %20 ], [ 0, %11 ], [ %54, %64 ], [ %54, %71 ]
  %81 = sext i32 %80 to i64
  %82 = load i64, ptr %3, align 8
  %83 = add i64 %82, %81
  store i64 %83, ptr %3, align 8
  br label %84

84:                                               ; preds = %79, %42, %20, %7, %4
  %85 = phi i32 [ %80, %79 ], [ -27, %4 ], [ -14, %7 ], [ -14, %20 ], [ -14, %42 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmap_mem(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = sub i32 %4, %5
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 1048575
  %10 = shl i32 %8, 12
  %11 = sub i32 0, %6
  %12 = icmp ugt i32 %10, %11
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = tail call i32 @valid_mmap_phys_addr_range(i32 noundef %8, i32 noundef %6) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %20 = tail call i32 @phys_mem_access_prot_allowed(ptr noundef %0, i32 noundef %18, i32 noundef %6, ptr noundef %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %19, align 4
  %25 = tail call i32 @phys_mem_access_prot(ptr noundef %0, i32 noundef %23, i32 noundef %6, i32 noundef %24) #12
  store i32 %25, ptr %19, align 4
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @mmap_mem_ops, ptr %26, align 4
  %27 = load i32, ptr %1, align 4
  %28 = load i32, ptr %7, align 4
  %29 = tail call i32 @remap_pfn_range(ptr noundef %1, i32 noundef %27, i32 noundef %28, i32 noundef %6, i32 noundef %25) #12
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 -11
  br label %32

32:                                               ; preds = %22, %17, %14, %2
  %33 = phi i32 [ -22, %2 ], [ -22, %14 ], [ -22, %17 ], [ %31, %22 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @open_port(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call zeroext i1 @capable(i32 noundef 17) #12
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1048575
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call ptr @iomem_get_mapping() #12
  %11 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  store ptr %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %4, %2
  %13 = phi i32 [ 0, %9 ], [ -1, %2 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @valid_phys_addr_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @valid_mmap_phys_addr_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phys_mem_access_prot(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iomem_get_mapping() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i64 @null_lseek(ptr nocapture noundef writeonly %0, i64 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 0, ptr %4, align 8
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @read_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #9 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @write_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #9 {
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @read_iter_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #9 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_iter_null(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  tail call void @iov_iter_advance(ptr noundef %1, i32 noundef %4) #12
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @splice_write_null(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call i32 @splice_from_pipe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @pipe_to_null) #12
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_from_pipe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pipe_to_null(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #10 {
  %4 = getelementptr inbounds %struct.splice_desc, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_port(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #15, !srcloc !15
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = load i64, ptr %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp ne i32 %2, 0
  %12 = icmp ult i32 %10, 65536
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %35

14:                                               ; preds = %28, %8
  %15 = phi i32 [ %29, %28 ], [ %2, %8 ]
  %16 = phi i32 [ %30, %28 ], [ %10, %8 ]
  %17 = phi ptr [ %31, %28 ], [ %1, %8 ]
  %18 = or i32 %16, -18874368
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #12, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !17
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #16, !srcloc !10
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %17, i8 %20, i32 -1090519041) #12, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %14
  %29 = add i32 %15, -1
  %30 = add nuw nsw i32 %16, 1
  %31 = getelementptr i8, ptr %17, i32 1
  %32 = icmp ne i32 %29, 0
  %33 = icmp ult i32 %16, 65535
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %14, label %35

35:                                               ; preds = %28, %8
  %36 = phi ptr [ %1, %8 ], [ %31, %28 ]
  %37 = phi i32 [ %10, %8 ], [ %30, %28 ]
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %3, align 8
  %39 = ptrtoint ptr %36 to i32
  %40 = ptrtoint ptr %1 to i32
  %41 = sub i32 %39, %40
  br label %42

42:                                               ; preds = %35, %14, %4
  %43 = phi i32 [ %41, %35 ], [ -14, %4 ], [ -14, %14 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_port(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #15, !srcloc !19
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %4
  %11 = icmp ne i32 %2, 0
  %12 = icmp ult i32 %6, 65536
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #12
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  br label %17

17:                                               ; preds = %29, %14
  %18 = phi i32 [ %2, %14 ], [ %30, %29 ]
  %19 = phi i32 [ %6, %14 ], [ %35, %29 ]
  %20 = phi ptr [ %1, %14 ], [ %36, %29 ]
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #16, !srcloc !10
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %24 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %20, i32 -1090519041) #12, !srcloc !20
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = icmp ugt ptr %20, %1
  br i1 %28, label %40, label %47

29:                                               ; preds = %17
  %30 = add i32 %18, -1
  %31 = extractvalue { i32, i32 } %24, 1
  %32 = trunc i32 %31 to i8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !21
  tail call void @arm_heavy_mb() #12
  %33 = or i32 %19, -18874368
  %34 = inttoptr i32 %33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %32) #12, !srcloc !22
  %35 = add nuw nsw i32 %19, 1
  %36 = getelementptr i8, ptr %20, i32 1
  %37 = icmp ne i32 %30, 0
  %38 = icmp ult i32 %19, 65535
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %17, label %40

40:                                               ; preds = %29, %27, %10
  %41 = phi ptr [ %20, %27 ], [ %1, %10 ], [ %36, %29 ]
  %42 = phi i32 [ %19, %27 ], [ %6, %10 ], [ %35, %29 ]
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %3, align 8
  %44 = ptrtoint ptr %41 to i32
  %45 = ptrtoint ptr %1 to i32
  %46 = sub i32 %44, %45
  br label %47

47:                                               ; preds = %40, %27, %4
  %48 = phi i32 [ %46, %40 ], [ -14, %4 ], [ -14, %27 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_zero(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %39, %4
  %7 = phi i32 [ %29, %39 ], [ %2, %4 ]
  %8 = phi i32 [ %28, %39 ], [ 0, %4 ]
  %9 = tail call i32 @llvm.umin.i32(i32 %7, i32 4096)
  %10 = getelementptr i8, ptr %1, i32 %8
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %9, i32 -1090519040) #15, !srcloc !23
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = tail call ptr @llvm.thread.pointer() #12
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #16, !srcloc !10
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %20 = tail call i32 @arm_clear_user(ptr noundef %10, i32 noundef %9) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22, !prof !14

22:                                               ; preds = %14, %6
  %23 = phi i32 [ %20, %14 ], [ %9, %6 ]
  %24 = sub i32 %9, %23
  %25 = add i32 %24, %8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %37

27:                                               ; preds = %14
  %28 = add i32 %9, %8
  %29 = sub i32 %7, %9
  %30 = load volatile i32, ptr %15, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !14

33:                                               ; preds = %27
  %34 = load volatile i32, ptr %15, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %27, %22
  %38 = phi i32 [ %25, %22 ], [ %28, %27 ], [ %28, %33 ]
  br label %42

39:                                               ; preds = %33
  %40 = tail call i32 @__cond_resched() #12
  %41 = icmp eq i32 %29, 0
  br i1 %41, label %42, label %6

42:                                               ; preds = %39, %37, %22, %4
  %43 = phi i32 [ %38, %37 ], [ -14, %22 ], [ 0, %4 ], [ %28, %39 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_iter_zero(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %46, %6
  %9 = phi i32 [ %4, %6 ], [ %47, %46 ]
  %10 = phi i32 [ 0, %6 ], [ %21, %46 ]
  %11 = tail call i32 @llvm.umin.i32(i32 %9, i32 4096)
  %12 = tail call i32 @iov_iter_zero(i32 noundef %11, ptr noundef %1) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, ptr %3, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %10, 0
  %19 = select i1 %18, i32 -14, i32 %10
  br label %49

20:                                               ; preds = %14, %8
  %21 = add i32 %12, %10
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30, !prof !14

26:                                               ; preds = %20
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %20
  %31 = icmp eq i32 %21, 0
  %32 = select i1 %31, i32 -512, i32 %21
  br label %49

33:                                               ; preds = %26
  %34 = load volatile i32, ptr %22, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %7, align 8
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = icmp eq i32 %21, 0
  %43 = select i1 %42, i32 -11, i32 %21
  br label %49

44:                                               ; preds = %37
  %45 = tail call i32 @__cond_resched() #12
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, ptr %3, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %8

49:                                               ; preds = %46, %41, %30, %17, %2
  %50 = phi i32 [ %19, %17 ], [ %43, %41 ], [ %32, %30 ], [ 0, %2 ], [ %21, %46 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmap_zero(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @shmem_zero_setup(ptr noundef %1) #12
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr null, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_unmapped_area_zero(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = and i32 %4, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @shmem_get_unmapped_area(ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %17

10:                                               ; preds = %5
  %11 = tail call ptr @llvm.thread.pointer() #12
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 37
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.anon.25, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #12
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi i32 [ %9, %8 ], [ %16, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_zero_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @write_full(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #9 {
  ret i32 -28
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

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
!8 = !{i64 2148792621, i64 2148792644, i64 2148792676, i64 2148792708, i64 2148792746, i64 2148792776}
!9 = !{i64 2151517080, i64 2151517105}
!10 = !{i64 4012614}
!11 = !{i64 4012811}
!12 = !{i64 2151498090}
!13 = !{i64 2151516502, i64 2151516527}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153813125, i64 2153813150}
!16 = !{i64 5403744}
!17 = !{i64 2153815011}
!18 = !{i64 2153815982, i64 2153816262, i64 2153816596, i64 2153816930}
!19 = !{i64 2153822539, i64 2153822564}
!20 = !{i64 2153826217, i64 2153826497, i64 2153826831, i64 2153827165}
!21 = !{i64 2153835069}
!22 = !{i64 5403349}
!23 = !{i64 2151513792, i64 2151513817}
