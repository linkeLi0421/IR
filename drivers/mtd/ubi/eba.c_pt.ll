; ModuleID = '/llk/IR/drivers/mtd/ubi/eba.c_pt.bc'
source_filename = "../drivers/mtd/ubi/eba.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.ubi_eba_entry = type { i32 }
%struct.ubi_eba_leb_desc = type { i32, i32 }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_ltree_entry = type { %struct.rb_node, i32, i32, i32, %struct.rw_semaphore }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_sgl = type { i32, i32, [64 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_eba_copy_table = private unnamed_addr constant [19 x i8] c"ubi_eba_copy_table\00", align 1
@__func__.ubi_eba_read_leb = private unnamed_addr constant [17 x i8] c"ubi_eba_read_leb\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"corrupted VID header at PEB %d, LEB %d:%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"force data checking\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"CRC error: calculated %#08x, must be %#08x\00", align 1
@__func__.ubi_eba_read_leb_sg = private unnamed_addr constant [20 x i8] c"ubi_eba_read_leb_sg\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to write data to PEB %d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"try another PEB\00", align 1
@__func__.ubi_eba_write_leb_st = private unnamed_addr constant [21 x i8] c"ubi_eba_write_leb_st\00", align 1
@__func__.ubi_eba_copy_leb = private unnamed_addr constant [17 x i8] c"ubi_eba_copy_leb\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"error %d while reading data from PEB %d\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"error %d while reading VID header back from PEB %d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"LEB:%i:%i is PEB:%i instead of %i!\00", align 1
@__func__.self_check_eba = private unnamed_addr constant [15 x i8] c"self_check_eba\00", align 1
@ubi_eba_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"&ubi->alc_mutex\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"no enough physical eraseblocks (%d, need %d)\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%d PEBs are corrupted and not used\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ltree_add_entry.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"&le->mutex\00", align 1
@__func__.ltree_add_entry = private unnamed_addr constant [16 x i8] c"ltree_add_entry\00", align 1
@__func__.leb_write_unlock = private unnamed_addr constant [17 x i8] c"leb_write_unlock\00", align 1
@__func__.leb_read_unlock = private unnamed_addr constant [16 x i8] c"leb_read_unlock\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"switch to read-only mode\00", align 1
@__func__.ubi_io_read_data = private unnamed_addr constant [17 x i8] c"ubi_io_read_data\00", align 1
@__func__.ubi_io_write_data = private unnamed_addr constant [18 x i8] c"ubi_io_write_data\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"try again\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"recover PEB %d, move data to PEB %d\00", align 1
@__func__.try_recover_peb = private unnamed_addr constant [16 x i8] c"try_recover_peb\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"data was successfully recovered\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"failed to write to PEB %d\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"failed to write VID header to LEB %d:%d, PEB %d\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"failed to write %d bytes at offset %d of LEB %d:%d, PEB %d\00", align 1
@__func__.leb_write_trylock = private unnamed_addr constant [18 x i8] c"leb_write_trylock\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"cannot reserve enough PEBs for bad PEB handling, reserved %d, need %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ubi_next_sqnum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 21
  %4 = load i64, ptr %3, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %6 = load i16, ptr %2, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret i64 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ubi_eba_get_ldesc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  store i32 %1, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.ubi_eba_entry, ptr %6, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubi_eba_leb_desc, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubi_eba_create_table(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #13
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %6
  store ptr null, ptr %4, align 8
  br label %24

10:                                               ; preds = %6
  %11 = extractvalue { i32, i1 } %7, 0
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #15
  store ptr %12, ptr %4, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  store i32 -1, ptr %12, align 64
  %17 = icmp eq i32 %1, 1
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %22, %18 ], [ 1, %16 ]
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr %struct.ubi_eba_entry, ptr %20, i32 %19
  store i32 -1, ptr %21, align 4
  %22 = add nuw nsw i32 %19, 1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %25, label %18

24:                                               ; preds = %10, %9
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %25

25:                                               ; preds = %24, %18, %16, %14, %2
  %26 = phi ptr [ inttoptr (i32 -12 to ptr), %24 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %4, %14 ], [ %4, %16 ], [ %4, %18 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_eba_destroy_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %4) #13
  tail call void @kfree(ptr noundef nonnull %0) #13
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_eba_copy_table(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %0, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %11, !prof !13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18, !prof !12

11:                                               ; preds = %7, %3
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_copy_table, i32 noundef 179, i32 noundef %14) #16
  tail call void @dump_stack() #16
  %16 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi ptr [ %17, %11 ], [ %9, %7 ]
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %21, %18
  %22 = phi i32 [ %28, %21 ], [ 0, %18 ]
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr %struct.ubi_eba_entry, ptr %23, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr %struct.ubi_eba_entry, ptr %26, i32 %22
  store i32 %25, ptr %27, align 4
  %28 = add nuw nsw i32 %22, 1
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %21

30:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_eba_replace_table(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %7) #13
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %8

8:                                                ; preds = %6, %2
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ubi_eba_is_mapped(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.ubi_eba_entry, ptr %5, i32 %1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_unmap_leb(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %5, i32 noundef %2) #13
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %10, i32 0, i32 4
  tail call void @down_write(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.ubi_eba_entry, ptr %16, i32 %2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %22

20:                                               ; preds = %9
  %21 = ptrtoint ptr %10 to i32
  br label %30

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 29
  tail call void @down_read(ptr noundef %23) #13
  %24 = load ptr, ptr %14, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.ubi_eba_entry, ptr %25, i32 %2
  store i32 -1, ptr %26, align 4
  tail call void @up_read(ptr noundef %23) #13
  %27 = tail call i32 @ubi_wl_put_peb(ptr noundef %0, i32 noundef %5, i32 noundef %2, i32 noundef %18, i32 noundef 0) #13
  br label %28

28:                                               ; preds = %22, %12
  %29 = phi i32 [ 0, %12 ], [ %27, %22 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %5, i32 noundef %2)
  br label %30

30:                                               ; preds = %28, %20, %3
  %31 = phi i32 [ %29, %28 ], [ -30, %3 ], [ %21, %20 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_put_peb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %29, %3
  %9 = phi ptr [ %31, %29 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %29

15:                                               ; preds = %8
  %16 = icmp slt i32 %11, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %9, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, %2
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %29

25:                                               ; preds = %19
  %26 = icmp slt i32 %21, %2
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %29

29:                                               ; preds = %27, %23, %17, %13
  %30 = phi ptr [ %14, %13 ], [ %18, %17 ], [ %24, %23 ], [ %28, %27 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8

33:                                               ; preds = %29, %25, %3
  %34 = phi ptr [ null, %3 ], [ null, %29 ], [ %9, %25 ]
  %35 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44, !prof !12

39:                                               ; preds = %33
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 52
  %42 = load i32, ptr %41, align 8
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leb_write_unlock, i32 noundef 419, i32 noundef %42) #16
  tail call void @dump_stack() #16
  br label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %34, i32 0, i32 4
  tail call void @up_write(ptr noundef %45) #13
  %46 = load i32, ptr %35, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @rb_erase(ptr noundef %34, ptr noundef %5) #13
  tail call void @kfree(ptr noundef %34) #13
  br label %49

49:                                               ; preds = %48, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %50 = load i16, ptr %4, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_read_leb(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = tail call fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %9, i32 noundef %2) #13
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %10, i32 0, i32 4
  tail call void @down_read(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.ubi_eba_entry, ptr %16, i32 %2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %22, label %32

20:                                               ; preds = %7
  %21 = ptrtoint ptr %10 to i32
  br label %136

22:                                               ; preds = %12
  tail call fastcc void @leb_read_unlock(ptr noundef %0, i32 noundef %9, i32 noundef %2)
  %23 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %31, !prof !12

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 52
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_read_leb, i32 noundef 623, i32 noundef %29) #16
  tail call void @dump_stack() #16
  br label %31

31:                                               ; preds = %26, %22
  tail call void @llvm.memset.p0.i32(ptr align 1 %3, i8 -1, i32 %5, i1 false)
  br label %136

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 3
  %36 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %37 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %38 = icmp slt i32 %4, 0
  %39 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %40 = icmp eq i32 %6, 0
  %41 = or i1 %35, %40
  br label %42

42:                                               ; preds = %115, %32
  %43 = phi i32 [ %100, %115 ], [ 0, %32 ]
  %44 = phi i32 [ 1, %115 ], [ 0, %32 ]
  %45 = phi i1 [ false, %115 ], [ %41, %32 ]
  br i1 %45, label %99, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3392, i32 noundef 8) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %134, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %36, align 4
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3136) #15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  tail call void @kfree(ptr noundef nonnull %48) #13
  br label %134

55:                                               ; preds = %50
  %56 = load i32, ptr %36, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %52, i8 0, i32 %56, i1 false) #13
  %57 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %48, i32 0, i32 1
  store ptr %52, ptr %57, align 4
  %58 = load i32, ptr %37, align 8
  %59 = getelementptr i8, ptr %52, i32 %58
  store ptr %59, ptr %48, align 8
  %60 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %18, ptr noundef nonnull %48, i32 noundef 1) #13
  switch i32 %60, label %61 [
    i32 5, label %72
    i32 0, label %73
  ]

61:                                               ; preds = %55
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %131

63:                                               ; preds = %61
  %64 = add nsw i32 %60, -3
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %9, i32 noundef %2) #13
  br label %131

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 35
  %69 = load i32, ptr %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %131

71:                                               ; preds = %67
  tail call fastcc void @ubi_ro_mode(ptr noundef %0)
  br label %131

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %55
  %74 = phi i32 [ 1, %72 ], [ %44, %55 ]
  %75 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %59, i32 0, i32 9
  %76 = load i32, ptr %75, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = icmp ugt i32 %77, %2
  br i1 %78, label %84, label %79, !prof !14

79:                                               ; preds = %73
  %80 = tail call ptr @llvm.thread.pointer() #13
  %81 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 52
  %82 = load i32, ptr %81, align 8
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_read_leb, i32 noundef 686, i32 noundef %82) #16
  tail call void @dump_stack() #16
  br label %84

84:                                               ; preds = %79, %73
  %85 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %59, i32 0, i32 8
  %86 = load i32, ptr %85, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = icmp eq i32 %87, %5
  br i1 %88, label %94, label %89, !prof !14

89:                                               ; preds = %84
  %90 = tail call ptr @llvm.thread.pointer() #13
  %91 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 52
  %92 = load i32, ptr %91, align 8
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_read_leb, i32 noundef 687, i32 noundef %92) #16
  tail call void @dump_stack() #16
  br label %94

94:                                               ; preds = %89, %84
  %95 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %59, i32 0, i32 11
  %96 = load i32, ptr %95, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %98 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %98) #13
  tail call void @kfree(ptr noundef nonnull %48) #13
  br label %99

99:                                               ; preds = %94, %42
  %100 = phi i32 [ %97, %94 ], [ %43, %42 ]
  %101 = phi i32 [ %74, %94 ], [ %44, %42 ]
  br i1 %38, label %102, label %107, !prof !12

102:                                              ; preds = %99
  %103 = tail call ptr @llvm.thread.pointer() #13
  %104 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 52
  %105 = load i32, ptr %104, align 8
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read_data, i32 noundef 1136, i32 noundef %105) #16
  tail call void @dump_stack() #16
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32, ptr %39, align 4
  %109 = add i32 %108, %4
  %110 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %3, i32 noundef %18, i32 noundef %109, i32 noundef %5) #13
  switch i32 %110, label %134 [
    i32 0, label %116
    i32 5, label %117
    i32 -74, label %111
  ]

111:                                              ; preds = %107
  %112 = load i32, ptr %33, align 4
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %134, label %114

114:                                              ; preds = %111
  br i1 %45, label %115, label %119

115:                                              ; preds = %114
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.2) #13
  br label %42

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %107
  %118 = phi i32 [ %101, %116 ], [ 1, %107 ]
  br i1 %45, label %124, label %119

119:                                              ; preds = %117, %114
  %120 = phi i32 [ %118, %117 ], [ 1, %114 ]
  %121 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %3, i32 noundef %5) #17
  %122 = icmp eq i32 %121, %100
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %121, i32 noundef %100) #13
  br label %134

124:                                              ; preds = %119, %117
  %125 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = tail call i32 @ubi_wl_scrub_peb(ptr noundef %0, i32 noundef %18) #13
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i32 [ %128, %127 ], [ %110, %124 ]
  tail call fastcc void @leb_read_unlock(ptr noundef %0, i32 noundef %9, i32 noundef %2)
  br label %136

131:                                              ; preds = %71, %67, %66, %61
  %132 = phi i32 [ -74, %66 ], [ -22, %71 ], [ %60, %61 ], [ -74, %67 ]
  %133 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %133) #13
  tail call void @kfree(ptr noundef nonnull %48) #13
  br label %134

134:                                              ; preds = %131, %123, %111, %107, %54, %46
  %135 = phi i32 [ %132, %131 ], [ -74, %123 ], [ -12, %54 ], [ %110, %107 ], [ -12, %46 ], [ -74, %111 ]
  tail call fastcc void @leb_read_unlock(ptr noundef %0, i32 noundef %9, i32 noundef %2)
  br label %136

136:                                              ; preds = %134, %129, %31, %20
  %137 = phi i32 [ %135, %134 ], [ 0, %31 ], [ %130, %129 ], [ %21, %20 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @leb_read_unlock(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %29, %3
  %9 = phi ptr [ %31, %29 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %29

15:                                               ; preds = %8
  %16 = icmp slt i32 %11, %1
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %9, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, %2
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %29

25:                                               ; preds = %19
  %26 = icmp slt i32 %21, %2
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %29

29:                                               ; preds = %27, %23, %17, %13
  %30 = phi ptr [ %14, %13 ], [ %18, %17 ], [ %24, %23 ], [ %28, %27 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8

33:                                               ; preds = %29, %25, %3
  %34 = phi ptr [ null, %3 ], [ null, %29 ], [ %9, %25 ]
  %35 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44, !prof !12

39:                                               ; preds = %33
  %40 = tail call ptr @llvm.thread.pointer() #13
  %41 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 52
  %42 = load i32, ptr %41, align 8
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leb_read_unlock, i32 noundef 343, i32 noundef %42) #16
  tail call void @dump_stack() #16
  br label %44

44:                                               ; preds = %39, %33
  %45 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %34, i32 0, i32 4
  tail call void @up_read(ptr noundef %45) #13
  %46 = load i32, ptr %35, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @rb_erase(ptr noundef %34, ptr noundef %5) #13
  tail call void @kfree(ptr noundef %34) #13
  br label %49

49:                                               ; preds = %48, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %50 = load i16, ptr %4, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ubi_ro_mode(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, ptr %2, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  tail call void @dump_stack() #16
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_scrub_peb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_read_leb_sg(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.ubi_sgl, ptr %2, i32 0, i32 1
  br label %10

10:                                               ; preds = %51, %7
  %11 = phi i32 [ %54, %51 ], [ %8, %7 ]
  %12 = phi i32 [ %41, %51 ], [ %5, %7 ]
  %13 = phi i32 [ %52, %51 ], [ %4, %7 ]
  %14 = icmp sgt i32 %11, 63
  br i1 %14, label %15, label %21, !prof !12

15:                                               ; preds = %10
  %16 = tail call ptr @llvm.thread.pointer() #13
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_read_leb_sg, i32 noundef 756, i32 noundef %18) #16
  tail call void @dump_stack() #16
  %20 = load i32, ptr %2, align 4
  br label %21

21:                                               ; preds = %15, %10
  %22 = phi i32 [ %20, %15 ], [ %11, %10 ]
  %23 = getelementptr %struct.ubi_sgl, ptr %2, i32 0, i32 2, i32 %22
  %24 = getelementptr %struct.ubi_sgl, ptr %2, i32 0, i32 2, i32 %22, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %9, align 4
  %27 = sub i32 %25, %26
  %28 = tail call i32 @llvm.umin.i32(i32 %12, i32 %27)
  %29 = load i32, ptr %23, align 4
  %30 = and i32 %29, -4
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call ptr @page_address(ptr noundef %31) #13
  %33 = getelementptr %struct.ubi_sgl, ptr %2, i32 0, i32 2, i32 %22, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = load i32, ptr %9, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  %38 = tail call i32 @ubi_eba_read_leb(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef %37, i32 noundef %13, i32 noundef %28, i32 noundef %6)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %21
  %41 = sub i32 %12, %28
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, ptr %9, align 4
  %45 = add i32 %44, %28
  store i32 %45, ptr %9, align 4
  %46 = load i32, ptr %24, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, ptr %2, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %2, align 4
  store i32 0, ptr %9, align 4
  br label %55

51:                                               ; preds = %40
  %52 = add i32 %28, %13
  %53 = load i32, ptr %2, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %2, align 4
  store i32 0, ptr %9, align 4
  br label %10

55:                                               ; preds = %48, %43, %21
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_write_leb(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %146

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %8, i32 noundef %2) #13
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %13, i32 0, i32 4
  tail call void @down_write(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 24
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.ubi_eba_entry, ptr %19, i32 %2
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %47

23:                                               ; preds = %12
  %24 = ptrtoint ptr %13 to i32
  br label %146

25:                                               ; preds = %15
  %26 = icmp slt i32 %4, 0
  br i1 %26, label %27, label %32, !prof !12

27:                                               ; preds = %25
  %28 = tail call ptr @llvm.thread.pointer() #13
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 52
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write_data, i32 noundef 1148, i32 noundef %30) #16
  tail call void @dump_stack() #16
  br label %32

32:                                               ; preds = %27, %25
  %33 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %4
  %36 = tail call i32 @ubi_io_write(ptr noundef %0, ptr noundef %3, i32 noundef %21, i32 noundef %35, i32 noundef %5) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %144, label %38

38:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %21) #13
  %39 = icmp eq i32 %36, -5
  br i1 %39, label %40, label %139

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %139, label %45

45:                                               ; preds = %40
  %46 = tail call fastcc i32 @recover_peb(ptr noundef %0, i32 noundef %21, i32 noundef %8, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  br label %136

47:                                               ; preds = %15
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3392, i32 noundef 8) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %53 = load i32, ptr %52, align 4
  %54 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %53, i32 noundef 3136) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  tail call void @kfree(ptr noundef nonnull %49) #13
  br label %57

57:                                               ; preds = %56, %47
  tail call fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %8, i32 noundef %2)
  br label %146

58:                                               ; preds = %51
  %59 = load i32, ptr %52, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %54, i8 0, i32 %59, i1 false) #13
  %60 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %49, i32 0, i32 1
  store ptr %54, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr i8, ptr %54, i32 %62
  store ptr %63, ptr %49, align 8
  %64 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %63, i32 0, i32 2
  store i8 1, ptr %64, align 1
  %65 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %65) #13
  %66 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 21
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %69 = load i16, ptr %65, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %71 = tail call i64 @llvm.bswap.i64(i64 %67)
  %72 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %63, i32 0, i32 13
  store i64 %71, ptr %72, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %8)
  %74 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %63, i32 0, i32 5
  store i32 %73, ptr %74, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %2)
  %76 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %63, i32 0, i32 6
  store i32 %75, ptr %76, align 1
  %77 = icmp eq i32 %8, 2147479551
  %78 = select i1 %77, i8 5, i8 0
  %79 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %63, i32 0, i32 4
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 16
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %63, i32 0, i32 10
  store i32 %82, ptr %83, align 1
  %84 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %85 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %49, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %86 = icmp eq i32 %85, -5
  br i1 %86, label %87, label %133

87:                                               ; preds = %58
  %88 = load i8, ptr %84, align 4
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %133, label %91

91:                                               ; preds = %87
  tail call void @_raw_spin_lock(ptr noundef %65) #13
  %92 = load i64, ptr %66, align 8
  %93 = add i64 %92, 1
  store i64 %93, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %94 = load i16, ptr %65, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %96 = tail call i64 @llvm.bswap.i64(i64 %92)
  store i64 %96, ptr %72, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %97 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %49, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %98 = icmp eq i32 %97, -5
  br i1 %98, label %99, label %133

99:                                               ; preds = %91
  %100 = load i8, ptr %84, align 4
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %99
  tail call void @_raw_spin_lock(ptr noundef %65) #13
  %104 = load i64, ptr %66, align 8
  %105 = add i64 %104, 1
  store i64 %105, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %106 = load i16, ptr %65, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %108 = tail call i64 @llvm.bswap.i64(i64 %104)
  store i64 %108, ptr %72, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %109 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %49, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %110 = icmp eq i32 %109, -5
  br i1 %110, label %111, label %133

111:                                              ; preds = %103
  %112 = load i8, ptr %84, align 4
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %111
  tail call void @_raw_spin_lock(ptr noundef %65) #13
  %116 = load i64, ptr %66, align 8
  %117 = add i64 %116, 1
  store i64 %117, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %118 = load i16, ptr %65, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %120 = tail call i64 @llvm.bswap.i64(i64 %116)
  store i64 %120, ptr %72, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %121 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %49, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %122 = icmp eq i32 %121, -5
  br i1 %122, label %123, label %133

123:                                              ; preds = %115
  %124 = load i8, ptr %84, align 4
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  tail call void @_raw_spin_lock(ptr noundef %65) #13
  %128 = load i64, ptr %66, align 8
  %129 = add i64 %128, 1
  store i64 %129, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %130 = load i16, ptr %65, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %132 = tail call i64 @llvm.bswap.i64(i64 %128)
  store i64 %132, ptr %72, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %133

133:                                              ; preds = %127, %123, %115, %111, %103, %99, %91, %87, %58
  %134 = phi i32 [ %85, %58 ], [ -5, %87 ], [ %97, %91 ], [ -5, %99 ], [ %109, %103 ], [ -5, %111 ], [ %121, %115 ], [ -5, %123 ], [ -5, %127 ]
  %135 = load ptr, ptr %60, align 4
  tail call void @kfree(ptr noundef %135) #13
  tail call void @kfree(ptr noundef nonnull %49) #13
  br label %136

136:                                              ; preds = %133, %45
  %137 = phi i32 [ %46, %45 ], [ %134, %133 ]
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136, %40, %38
  %140 = phi i32 [ %137, %136 ], [ %36, %38 ], [ -5, %40 ]
  %141 = load i32, ptr %9, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, ptr %9, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  tail call void @dump_stack() #16
  br label %144

144:                                              ; preds = %143, %139, %136, %32
  %145 = phi i32 [ 0, %136 ], [ %140, %139 ], [ %140, %143 ], [ 0, %32 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %8, i32 noundef %2)
  br label %146

146:                                              ; preds = %144, %57, %23, %6
  %147 = phi i32 [ %145, %144 ], [ -12, %57 ], [ -30, %6 ], [ %24, %23 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @recover_peb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = icmp sgt i32 %2, 2147479550
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = add nsw i32 %2, -2147479551
  %11 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %10, %12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %13, %9 ], [ %2, %7 ]
  %16 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3392, i32 noundef 8) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %119, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %23 = load i32, ptr %22, align 4
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3136) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %117, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %22, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %24, i8 0, i32 %27, i1 false) #13
  %28 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %19, i32 0, i32 1
  store ptr %24, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr i8, ptr %24, i32 %30
  store ptr %31, ptr %19, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, ptr %17, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %17, i32 0, i32 3
  %34 = icmp sgt i32 %5, 0
  %35 = add i32 %6, %5
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  br label %37

37:                                               ; preds = %111, %26
  %38 = phi i32 [ 0, %26 ], [ %112, %111 ]
  %39 = load ptr, ptr %32, align 4
  %40 = load i32, ptr %33, align 8
  %41 = tail call i32 @ubi_wl_get_peb(ptr noundef %39) #13
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %103, label %43

43:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %39, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %41) #13
  %44 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %39, i32 noundef %1, ptr noundef nonnull %19, i32 noundef 1) #13
  switch i32 %44, label %45 [
    i32 5, label %48
    i32 0, label %48
  ]

45:                                               ; preds = %43
  %46 = icmp sgt i32 %44, 0
  %47 = select i1 %46, i32 -5, i32 %44
  br label %105

48:                                               ; preds = %43, %43
  %49 = load ptr, ptr %19, align 8
  %50 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %49, i32 0, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %58, label %53, !prof !14

53:                                               ; preds = %48
  %54 = tail call ptr @llvm.thread.pointer() #13
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 52
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.try_recover_peb, i32 noundef 834, i32 noundef %56) #16
  tail call void @dump_stack() #16
  br label %58

58:                                               ; preds = %53, %48
  %59 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 81
  tail call void @mutex_lock(ptr noundef %59) #13
  %60 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 80
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr i8, ptr %61, i32 %5
  tail call void @llvm.memset.p0.i32(ptr align 1 %62, i8 -1, i32 %6, i1 false) #13
  br i1 %34, label %63, label %68

63:                                               ; preds = %58
  %64 = load ptr, ptr %60, align 8
  %65 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 71
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @ubi_io_read(ptr noundef %39, ptr noundef %64, i32 noundef %1, i32 noundef %66, i32 noundef %5) #13
  switch i32 %67, label %87 [
    i32 5, label %68
    i32 0, label %68
  ]

68:                                               ; preds = %63, %63, %58
  %69 = load ptr, ptr %60, align 8
  %70 = getelementptr i8, ptr %69, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 1 %4, i32 %6, i1 false) #13
  %71 = load ptr, ptr %60, align 8
  %72 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %71, i32 noundef %35) #17
  %73 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %73) #13
  %74 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 21
  %75 = load i64, ptr %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr %74, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %77 = load i16, ptr %73, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %73, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %79 = tail call i64 @llvm.bswap.i64(i64 %75) #13
  %80 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %49, i32 0, i32 13
  store i64 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %49, i32 0, i32 3
  store i8 1, ptr %81, align 1
  %82 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %49, i32 0, i32 8
  store i32 %36, ptr %82, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %72) #13
  %84 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %49, i32 0, i32 11
  store i32 %83, ptr %84, align 1
  %85 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %19) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %68, %63
  %88 = phi i8 [ 0, %63 ], [ 1, %68 ]
  %89 = phi i32 [ %67, %63 ], [ %85, %68 ]
  tail call void @mutex_unlock(ptr noundef %59) #13
  br label %105

90:                                               ; preds = %68
  %91 = load ptr, ptr %60, align 8
  %92 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 71
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @ubi_io_write(ptr noundef %39, ptr noundef %91, i32 noundef %41, i32 noundef %93, i32 noundef %35) #13
  tail call void @mutex_unlock(ptr noundef %59) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ubi_volume, ptr %17, i32 0, i32 24
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr %struct.ubi_eba_entry, ptr %99, i32 %3
  store i32 %41, ptr %100, align 4
  %101 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 29
  tail call void @up_read(ptr noundef %101) #13
  %102 = tail call i32 @ubi_wl_put_peb(ptr noundef %39, i32 noundef %40, i32 noundef %3, i32 noundef %1, i32 noundef 1) #13
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %39, ptr noundef nonnull @.str.17) #13
  br label %114

103:                                              ; preds = %37
  %104 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 29
  tail call void @up_read(ptr noundef %104) #13
  br label %114

105:                                              ; preds = %90, %87, %45
  %106 = phi i8 [ 0, %45 ], [ %88, %87 ], [ 1, %90 ]
  %107 = phi i32 [ %47, %45 ], [ %89, %87 ], [ %94, %90 ]
  %108 = getelementptr inbounds %struct.ubi_device, ptr %39, i32 0, i32 29
  tail call void @up_read(ptr noundef %108) #13
  %109 = tail call i32 @ubi_wl_put_peb(ptr noundef %39, i32 noundef %40, i32 noundef %3, i32 noundef %41, i32 noundef 1) #13
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %39, ptr noundef nonnull @.str.18, i32 noundef %41) #13
  %110 = icmp eq i8 %106, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.15) #13
  %112 = add nuw nsw i32 %38, 1
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %37

114:                                              ; preds = %111, %105, %103, %96
  %115 = phi i32 [ 0, %96 ], [ %41, %103 ], [ %107, %111 ], [ %107, %105 ]
  %116 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %116) #13
  br label %117

117:                                              ; preds = %114, %21
  %118 = phi i32 [ %115, %114 ], [ -12, %21 ]
  tail call void @kfree(ptr noundef nonnull %19) #13
  br label %119

119:                                              ; preds = %117, %14
  %120 = phi i32 [ -12, %14 ], [ %118, %117 ]
  ret i32 %120
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_write_vid_and_data(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @ubi_wl_get_peb(ptr noundef %8) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ubi_volume, ptr %0, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.ubi_eba_entry, ptr %16, i32 %1
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %8, i32 noundef %11, ptr noundef %2) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %10, i32 noundef %1, i32 noundef %11) #13
  br label %42

22:                                               ; preds = %13
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %22
  %25 = icmp slt i32 %4, 0
  br i1 %25, label %26, label %31, !prof !12

26:                                               ; preds = %24
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 52
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write_data, i32 noundef 1148, i32 noundef %29) #16
  tail call void @dump_stack() #16
  br label %31

31:                                               ; preds = %26, %24
  %32 = getelementptr inbounds %struct.ubi_device, ptr %8, i32 0, i32 71
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %4
  %35 = tail call i32 @ubi_io_write(ptr noundef %8, ptr noundef %3, i32 noundef %11, i32 noundef %34, i32 noundef %5) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %8, ptr noundef nonnull @.str.20, i32 noundef %5, i32 noundef %4, i32 noundef %10, i32 noundef %1, i32 noundef %11) #13
  br label %42

38:                                               ; preds = %31, %22
  %39 = load ptr, ptr %14, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.ubi_eba_entry, ptr %40, i32 %1
  store i32 %11, ptr %41, align 4
  br label %42

42:                                               ; preds = %38, %37, %21, %6
  %43 = phi i32 [ %18, %21 ], [ %18, %37 ], [ %18, %38 ], [ 0, %6 ]
  %44 = phi i32 [ %19, %21 ], [ %35, %37 ], [ 0, %38 ], [ %11, %6 ]
  %45 = getelementptr inbounds %struct.ubi_device, ptr %8, i32 0, i32 29
  tail call void @up_read(ptr noundef %45) #13
  %46 = icmp ne i32 %44, 0
  %47 = icmp sgt i32 %11, -1
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = tail call i32 @ubi_wl_put_peb(ptr noundef %8, i32 noundef %10, i32 noundef %1, i32 noundef %11, i32 noundef 1) #13
  br label %57

51:                                               ; preds = %42
  %52 = icmp eq i32 %44, 0
  %53 = icmp sgt i32 %43, -1
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call i32 @ubi_wl_put_peb(ptr noundef %8, i32 noundef %10, i32 noundef %1, i32 noundef %43, i32 noundef 0) #13
  br label %57

57:                                               ; preds = %55, %51, %49
  %58 = phi i32 [ %50, %49 ], [ %56, %55 ], [ %44, %51 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_write_leb_st(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %157

12:                                               ; preds = %6
  %13 = add i32 %5, -1
  %14 = icmp eq i32 %13, %2
  %15 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %16 = load i32, ptr %15, align 4
  br i1 %14, label %17, label %22

17:                                               ; preds = %12
  %18 = add i32 %4, -1
  %19 = add i32 %18, %16
  %20 = sub i32 0, %16
  %21 = and i32 %19, %20
  br label %31

22:                                               ; preds = %12
  %23 = add i32 %16, -1
  %24 = and i32 %23, %4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26, !prof !14

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 52
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_write_leb_st, i32 noundef 1125, i32 noundef %29) #16
  tail call void @dump_stack() #16
  br label %31

31:                                               ; preds = %26, %22, %17
  %32 = phi i32 [ %21, %17 ], [ %4, %26 ], [ %4, %22 ]
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3392, i32 noundef 8) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %157, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %38 = load i32, ptr %37, align 4
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3136) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %155, label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %37, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %39, i8 0, i32 %42, i1 false) #13
  %43 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %34, i32 0, i32 1
  store ptr %39, ptr %43, align 4
  %44 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr i8, ptr %39, i32 %45
  store ptr %46, ptr %34, align 8
  %47 = tail call fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %8, i32 noundef %2) #13
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %84, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %47, i32 0, i32 4
  tail call void @down_write(ptr noundef %50) #13
  %51 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %51) #13
  %52 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 21
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, ptr %52, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %55 = load i16, ptr %51, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %57 = tail call i64 @llvm.bswap.i64(i64 %53)
  %58 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 13
  store i64 %57, ptr %58, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %8)
  %60 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 5
  store i32 %59, ptr %60, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %2)
  %62 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 6
  store i32 %61, ptr %62, align 1
  %63 = icmp eq i32 %8, 2147479551
  %64 = select i1 %63, i8 5, i8 0
  %65 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 4
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 16
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 10
  store i32 %68, ptr %69, align 1
  %70 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %3, i32 noundef %4) #17
  %71 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 2
  store i8 2, ptr %71, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %4)
  %73 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 8
  store i32 %72, ptr %73, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %5)
  %75 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 9
  store i32 %74, ptr %75, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %70)
  %77 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %46, i32 0, i32 11
  store i32 %76, ptr %77, align 1
  %78 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 24
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr %struct.ubi_eba_entry, ptr %80, i32 %2
  %82 = load i32, ptr %81, align 4
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %86, label %91, !prof !12

84:                                               ; preds = %41
  %85 = ptrtoint ptr %47 to i32
  br label %152

86:                                               ; preds = %49
  %87 = tail call ptr @llvm.thread.pointer() #13
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 52
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_write_leb_st, i32 noundef 1149, i32 noundef %89) #16
  tail call void @dump_stack() #16
  br label %91

91:                                               ; preds = %86, %49
  %92 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %93 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %34, ptr noundef %3, i32 noundef 0, i32 noundef %32)
  %94 = icmp eq i32 %93, -5
  br i1 %94, label %95, label %141

95:                                               ; preds = %91
  %96 = load i8, ptr %92, align 4
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %144, label %99

99:                                               ; preds = %95
  tail call void @_raw_spin_lock(ptr noundef %51) #13
  %100 = load i64, ptr %52, align 8
  %101 = add i64 %100, 1
  store i64 %101, ptr %52, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %102 = load i16, ptr %51, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %104 = tail call i64 @llvm.bswap.i64(i64 %100)
  store i64 %104, ptr %58, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %105 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %34, ptr noundef %3, i32 noundef 0, i32 noundef %32)
  %106 = icmp eq i32 %105, -5
  br i1 %106, label %107, label %141

107:                                              ; preds = %99
  %108 = load i8, ptr %92, align 4
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %144, label %111

111:                                              ; preds = %107
  tail call void @_raw_spin_lock(ptr noundef %51) #13
  %112 = load i64, ptr %52, align 8
  %113 = add i64 %112, 1
  store i64 %113, ptr %52, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %114 = load i16, ptr %51, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %116 = tail call i64 @llvm.bswap.i64(i64 %112)
  store i64 %116, ptr %58, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %117 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %34, ptr noundef %3, i32 noundef 0, i32 noundef %32)
  %118 = icmp eq i32 %117, -5
  br i1 %118, label %119, label %141

119:                                              ; preds = %111
  %120 = load i8, ptr %92, align 4
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %119
  tail call void @_raw_spin_lock(ptr noundef %51) #13
  %124 = load i64, ptr %52, align 8
  %125 = add i64 %124, 1
  store i64 %125, ptr %52, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %126 = load i16, ptr %51, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %128 = tail call i64 @llvm.bswap.i64(i64 %124)
  store i64 %128, ptr %58, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %129 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %34, ptr noundef %3, i32 noundef 0, i32 noundef %32)
  %130 = icmp eq i32 %129, -5
  br i1 %130, label %131, label %141

131:                                              ; preds = %123
  %132 = load i8, ptr %92, align 4
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %131
  tail call void @_raw_spin_lock(ptr noundef %51) #13
  %136 = load i64, ptr %52, align 8
  %137 = add i64 %136, 1
  store i64 %137, ptr %52, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %138 = load i16, ptr %51, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %140 = tail call i64 @llvm.bswap.i64(i64 %136)
  store i64 %140, ptr %58, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %144

141:                                              ; preds = %123, %111, %99, %91
  %142 = phi i32 [ %93, %91 ], [ %105, %99 ], [ %117, %111 ], [ %129, %123 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141, %135, %131, %119, %107, %95
  %145 = phi i32 [ %142, %141 ], [ -5, %135 ], [ -5, %131 ], [ -5, %119 ], [ -5, %107 ], [ -5, %95 ]
  %146 = load i32, ptr %9, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 1, ptr %9, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  tail call void @dump_stack() #16
  br label %149

149:                                              ; preds = %148, %144, %141
  %150 = phi i32 [ 0, %141 ], [ %145, %144 ], [ %145, %148 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %8, i32 noundef %2)
  %151 = load ptr, ptr %43, align 4
  br label %152

152:                                              ; preds = %149, %84
  %153 = phi ptr [ %39, %84 ], [ %151, %149 ]
  %154 = phi i32 [ %85, %84 ], [ %150, %149 ]
  tail call void @kfree(ptr noundef %153) #13
  br label %155

155:                                              ; preds = %152, %36
  %156 = phi i32 [ %154, %152 ], [ -12, %36 ]
  tail call void @kfree(ptr noundef nonnull %34) #13
  br label %157

157:                                              ; preds = %155, %31, %6
  %158 = phi i32 [ -30, %6 ], [ -12, %31 ], [ %156, %155 ]
  ret i32 %158
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %129

11:                                               ; preds = %5
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %11
  %14 = tail call i32 @ubi_eba_unmap_leb(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %129

16:                                               ; preds = %13
  %17 = tail call i32 @ubi_eba_write_leb(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %129

18:                                               ; preds = %11
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3392, i32 noundef 8) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %129, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %24 = load i32, ptr %23, align 4
  %25 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 3136) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @kfree(ptr noundef nonnull %20) #13
  br label %129

28:                                               ; preds = %22
  %29 = load i32, ptr %23, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %25, i8 0, i32 %29, i1 false) #13
  %30 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %20, i32 0, i32 1
  store ptr %25, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr i8, ptr %25, i32 %32
  store ptr %33, ptr %20, align 8
  %34 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %34) #13
  %35 = tail call fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %7, i32 noundef %2) #13
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %68, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %35, i32 0, i32 4
  tail call void @down_write(ptr noundef %38) #13
  %39 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %39) #13
  %40 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 21
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %43 = load i16, ptr %39, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %45 = tail call i64 @llvm.bswap.i64(i64 %41)
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 13
  store i64 %45, ptr %46, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %7)
  %48 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 5
  store i32 %47, ptr %48, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %2)
  %50 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 6
  store i32 %49, ptr %50, align 1
  %51 = icmp eq i32 %7, 2147479551
  %52 = select i1 %51, i8 5, i8 0
  %53 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 4
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 16
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 10
  store i32 %56, ptr %57, align 1
  %58 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %3, i32 noundef %4) #17
  %59 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 2
  store i8 1, ptr %59, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %4)
  %61 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 8
  store i32 %60, ptr %61, align 1
  %62 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 3
  store i8 1, ptr %62, align 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %58)
  %64 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %33, i32 0, i32 11
  store i32 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %66 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %20, ptr noundef %3, i32 noundef 0, i32 noundef %4)
  %67 = icmp eq i32 %66, -5
  br i1 %67, label %70, label %116

68:                                               ; preds = %28
  %69 = ptrtoint ptr %35 to i32
  br label %126

70:                                               ; preds = %37
  %71 = load i8, ptr %65, align 4
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %119, label %74

74:                                               ; preds = %70
  tail call void @_raw_spin_lock(ptr noundef %39) #13
  %75 = load i64, ptr %40, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %77 = load i16, ptr %39, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %79 = tail call i64 @llvm.bswap.i64(i64 %75)
  store i64 %79, ptr %46, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %80 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %20, ptr noundef %3, i32 noundef 0, i32 noundef %4)
  %81 = icmp eq i32 %80, -5
  br i1 %81, label %82, label %116

82:                                               ; preds = %74
  %83 = load i8, ptr %65, align 4
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %119, label %86

86:                                               ; preds = %82
  tail call void @_raw_spin_lock(ptr noundef %39) #13
  %87 = load i64, ptr %40, align 8
  %88 = add i64 %87, 1
  store i64 %88, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %89 = load i16, ptr %39, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %91 = tail call i64 @llvm.bswap.i64(i64 %87)
  store i64 %91, ptr %46, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %92 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %20, ptr noundef %3, i32 noundef 0, i32 noundef %4)
  %93 = icmp eq i32 %92, -5
  br i1 %93, label %94, label %116

94:                                               ; preds = %86
  %95 = load i8, ptr %65, align 4
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %94
  tail call void @_raw_spin_lock(ptr noundef %39) #13
  %99 = load i64, ptr %40, align 8
  %100 = add i64 %99, 1
  store i64 %100, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %101 = load i16, ptr %39, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %103 = tail call i64 @llvm.bswap.i64(i64 %99)
  store i64 %103, ptr %46, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  %104 = tail call fastcc i32 @try_write_vid_and_data(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %20, ptr noundef %3, i32 noundef 0, i32 noundef %4)
  %105 = icmp eq i32 %104, -5
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load i8, ptr %65, align 4
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %106
  tail call void @_raw_spin_lock(ptr noundef %39) #13
  %111 = load i64, ptr %40, align 8
  %112 = add i64 %111, 1
  store i64 %112, ptr %40, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %113 = load i16, ptr %39, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %115 = tail call i64 @llvm.bswap.i64(i64 %111)
  store i64 %115, ptr %46, align 1
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %119

116:                                              ; preds = %98, %86, %74, %37
  %117 = phi i32 [ %66, %37 ], [ %80, %74 ], [ %92, %86 ], [ %104, %98 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116, %110, %106, %94, %82, %70
  %120 = phi i32 [ %117, %116 ], [ -5, %110 ], [ -5, %106 ], [ -5, %94 ], [ -5, %82 ], [ -5, %70 ]
  %121 = load i32, ptr %8, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 1, ptr %8, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #13
  tail call void @dump_stack() #16
  br label %124

124:                                              ; preds = %123, %119, %116
  %125 = phi i32 [ 0, %116 ], [ %120, %119 ], [ %120, %123 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %7, i32 noundef %2)
  br label %126

126:                                              ; preds = %124, %68
  %127 = phi i32 [ %69, %68 ], [ %125, %124 ]
  tail call void @mutex_unlock(ptr noundef %34) #13
  %128 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %128) #13
  tail call void @kfree(ptr noundef nonnull %20) #13
  br label %129

129:                                              ; preds = %126, %27, %18, %16, %13, %5
  %130 = phi i32 [ %17, %16 ], [ %127, %126 ], [ -30, %5 ], [ %14, %13 ], [ -12, %27 ], [ -12, %18 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_copy_leb(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 29
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14, !prof !12

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_copy_leb, i32 noundef 1309, i32 noundef %12) #16
  tail call void @dump_stack() #16
  br label %14

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 5
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 8
  %26 = load i32, ptr %25, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = add i32 %30, %27
  %32 = sub i32 0, %29
  %33 = and i32 %31, %32
  br label %41

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 10
  %38 = load i32, ptr %37, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = sub i32 %36, %39
  br label %41

41:                                               ; preds = %34, %24
  %42 = phi i32 [ %33, %24 ], [ %40, %34 ]
  %43 = phi i32 [ %27, %24 ], [ %40, %34 ]
  %44 = icmp sgt i32 %17, 2147479550
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = add nsw i32 %17, -2147479551
  %47 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %46, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ %49, %45 ], [ %17, %41 ]
  %52 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %52) #13
  %53 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %51
  %54 = load ptr, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %55 = load i16, ptr %52, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %57 = icmp eq ptr %54, null
  br i1 %57, label %164, label %58

58:                                               ; preds = %50
  %59 = tail call fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %17, i32 noundef %20) #13
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %164, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %59, i32 0, i32 4
  %63 = tail call i32 @down_write_trylock(ptr noundef %62) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %66) #13
  %67 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %59, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %67, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77, !prof !12

71:                                               ; preds = %65
  %72 = tail call ptr @llvm.thread.pointer() #13
  %73 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 52
  %74 = load i32, ptr %73, align 8
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.leb_write_trylock, i32 noundef 396, i32 noundef %74) #16
  tail call void @dump_stack() #16
  %76 = load i32, ptr %67, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i32 [ %76, %71 ], [ %69, %65 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 23
  tail call void @rb_erase(ptr noundef %59, ptr noundef %81) #13
  tail call void @kfree(ptr noundef %59) #13
  br label %82

82:                                               ; preds = %80, %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %83 = load i16, ptr %66, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  br label %164

85:                                               ; preds = %61
  %86 = getelementptr inbounds %struct.ubi_volume, ptr %54, i32 0, i32 24
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.ubi_eba_entry, ptr %88, i32 %20
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, %1
  br i1 %91, label %92, label %162

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 81
  tail call void @mutex_lock(ptr noundef %93) #13
  %94 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 80
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %95, i32 noundef %1, i32 noundef %97, i32 noundef %42) #13
  switch i32 %98, label %99 [
    i32 5, label %100
    i32 0, label %100
  ]

99:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %98, i32 noundef %1) #13
  br label %160

100:                                              ; preds = %92, %92
  %101 = load i8, ptr %21, align 1
  %102 = icmp eq i8 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load ptr, ptr %94, align 8
  %105 = tail call i32 @ubi_calc_data_len(ptr noundef %0, ptr noundef %104, i32 noundef %43) #13
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i32 [ %105, %103 ], [ %42, %100 ]
  %108 = phi i32 [ %105, %103 ], [ %43, %100 ]
  %109 = tail call i32 @__cond_resched() #13
  %110 = load ptr, ptr %94, align 8
  %111 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %110, i32 noundef %108) #17
  %112 = tail call i32 @__cond_resched() #13
  %113 = icmp sgt i32 %108, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 3
  store i8 1, ptr %115, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %108)
  %117 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 8
  store i32 %116, ptr %117, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %111)
  %119 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 11
  store i32 %118, ptr %119, align 1
  br label %120

120:                                              ; preds = %114, %106
  %121 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %121) #13
  %122 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 21
  %123 = load i64, ptr %122, align 8
  %124 = add i64 %123, 1
  store i64 %124, ptr %122, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %125 = load i16, ptr %121, align 4
  %126 = add i16 %125, 1
  store i16 %126, ptr %121, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  %127 = tail call i64 @llvm.bswap.i64(i64 %123)
  %128 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 13
  store i64 %127, ptr %128, align 1
  %129 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %0, i32 noundef %2, ptr noundef %3) #13
  switch i32 %129, label %160 [
    i32 0, label %131
    i32 -5, label %130
  ]

130:                                              ; preds = %120
  br label %160

131:                                              ; preds = %120
  %132 = tail call i32 @__cond_resched() #13
  %133 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %2, ptr noundef %3, i32 noundef 1) #13
  switch i32 %133, label %134 [
    i32 0, label %136
    i32 5, label %160
  ]

134:                                              ; preds = %131
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %133, i32 noundef %2) #13
  switch i32 %133, label %160 [
    i32 -5, label %135
    i32 -12, label %135
    i32 -110, label %135
    i32 4, label %135
    i32 3, label %135
  ]

135:                                              ; preds = %134, %134, %134, %134, %134
  br label %160

136:                                              ; preds = %131
  br i1 %113, label %137, label %144

137:                                              ; preds = %136
  %138 = load ptr, ptr %94, align 8
  %139 = load i32, ptr %96, align 4
  %140 = tail call i32 @ubi_io_write(ptr noundef %0, ptr noundef %138, i32 noundef %2, i32 noundef %139, i32 noundef %107) #13
  switch i32 %140, label %160 [
    i32 0, label %142
    i32 -5, label %141
  ]

141:                                              ; preds = %137
  br label %160

142:                                              ; preds = %137
  %143 = tail call i32 @__cond_resched() #13
  br label %144

144:                                              ; preds = %142, %136
  %145 = load ptr, ptr %86, align 4
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr %struct.ubi_eba_entry, ptr %146, i32 %20
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, %1
  br i1 %149, label %157, label %150, !prof !14

150:                                              ; preds = %144
  %151 = tail call ptr @llvm.thread.pointer() #13
  %152 = getelementptr inbounds %struct.task_struct, ptr %151, i32 0, i32 52
  %153 = load i32, ptr %152, align 8
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_eba_copy_leb, i32 noundef 1452, i32 noundef %153) #16
  tail call void @dump_stack() #16
  %155 = load ptr, ptr %86, align 4
  %156 = load ptr, ptr %155, align 4
  br label %157

157:                                              ; preds = %150, %144
  %158 = phi ptr [ %156, %150 ], [ %146, %144 ]
  %159 = getelementptr %struct.ubi_eba_entry, ptr %158, i32 %20
  store i32 %2, ptr %159, align 4
  br label %160

160:                                              ; preds = %157, %141, %137, %135, %134, %131, %130, %120, %99
  %161 = phi i32 [ 2, %99 ], [ 4, %130 ], [ 4, %141 ], [ 0, %157 ], [ %129, %120 ], [ %133, %131 ], [ %140, %137 ], [ %133, %135 ], [ 3, %134 ]
  tail call void @mutex_unlock(ptr noundef %93) #13
  br label %162

162:                                              ; preds = %160, %85
  %163 = phi i32 [ %161, %160 ], [ 1, %85 ]
  tail call fastcc void @leb_write_unlock(ptr noundef %0, i32 noundef %17, i32 noundef %20)
  br label %164

164:                                              ; preds = %162, %82, %58, %50
  %165 = phi i32 [ %163, %162 ], [ 1, %50 ], [ 6, %82 ], [ 6, %58 ]
  ret i32 %165
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_calc_data_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_vid_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @self_check_eba(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #13
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  br i1 %8, label %157, label %10, !prof !12

10:                                               ; preds = %3
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %157, label %13

13:                                               ; preds = %10
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3264) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %154, label %16

16:                                               ; preds = %13
  %17 = icmp ult i32 %5, 2147483647
  br i1 %17, label %18, label %152

18:                                               ; preds = %131, %16
  %19 = phi i32 [ %132, %131 ], [ 0, %16 ]
  %20 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %131, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ubi_volume, ptr %21, i32 0, i32 9
  %25 = load i32, ptr %24, align 8
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #13
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %134, label %28, !prof !12

28:                                               ; preds = %23
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #15
  %31 = getelementptr ptr, ptr %11, i32 %19
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %137, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %24, align 8
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #13
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %134, label %37, !prof !12

37:                                               ; preds = %33
  %38 = extractvalue { i32, i1 } %35, 0
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #15
  %40 = getelementptr ptr, ptr %14, i32 %19
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %137, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %24, align 8
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  store i32 -1, ptr %39, align 64
  %46 = load ptr, ptr %31, align 4
  store i32 -1, ptr %46, align 4
  %47 = load i32, ptr %24, align 8
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %49, %45
  %50 = phi i32 [ %55, %49 ], [ 1, %45 ]
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr i32, ptr %51, i32 %50
  store i32 -1, ptr %52, align 4
  %53 = load ptr, ptr %31, align 4
  %54 = getelementptr i32, ptr %53, i32 %50
  store i32 -1, ptr %54, align 4
  %55 = add nuw nsw i32 %50, 1
  %56 = load i32, ptr %24, align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %49, label %58

58:                                               ; preds = %49, %45, %42
  %59 = load i32, ptr %4, align 4
  %60 = icmp sgt i32 %59, %19
  %61 = add nuw i32 %19, 2147479551
  %62 = sub i32 %61, %59
  %63 = select i1 %60, i32 %19, i32 %62
  %64 = tail call ptr @ubi_find_av(ptr noundef %2, i32 noundef %63) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %131, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %64, i32 0, i32 9
  %68 = tail call ptr @rb_first(ptr noundef %67) #13
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %70, %66
  %71 = phi ptr [ %78, %70 ], [ %68, %66 ]
  %72 = getelementptr i8, ptr %71, i32 -28
  %73 = load i32, ptr %72, align 4
  %74 = load ptr, ptr %31, align 4
  %75 = getelementptr i8, ptr %71, i32 -20
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i32, ptr %74, i32 %76
  store i32 %73, ptr %77, align 4
  %78 = tail call ptr @rb_next(ptr noundef nonnull %71) #13
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %70

80:                                               ; preds = %70, %66
  %81 = load i32, ptr %4, align 4
  %82 = icmp sgt i32 %81, %19
  %83 = sub i32 %61, %81
  %84 = select i1 %82, i32 %19, i32 %83
  %85 = tail call ptr @ubi_find_av(ptr noundef %1, i32 noundef %84) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %131, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %85, i32 0, i32 9
  %89 = tail call ptr @rb_first(ptr noundef %88) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %96, %87
  %92 = load i32, ptr %24, align 8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.ubi_volume, ptr %21, i32 0, i32 3
  br label %106

96:                                               ; preds = %96, %87
  %97 = phi ptr [ %104, %96 ], [ %89, %87 ]
  %98 = getelementptr i8, ptr %97, i32 -28
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %40, align 4
  %101 = getelementptr i8, ptr %97, i32 -20
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr i32, ptr %100, i32 %102
  store i32 %99, ptr %103, align 4
  %104 = tail call ptr @rb_next(ptr noundef nonnull %97) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %91, label %96

106:                                              ; preds = %127, %94
  %107 = phi i32 [ %92, %94 ], [ %128, %127 ]
  %108 = phi i32 [ 0, %94 ], [ %129, %127 ]
  %109 = load ptr, ptr %31, align 4
  %110 = getelementptr i32, ptr %109, i32 %108
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %40, align 4
  %113 = getelementptr i32, ptr %112, i32 %108
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %111, %114
  %116 = icmp eq i32 %111, -1
  %117 = or i1 %116, %115
  %118 = icmp eq i32 %114, -1
  %119 = or i1 %118, %117
  br i1 %119, label %127, label %120

120:                                              ; preds = %106
  %121 = load i32, ptr %95, align 8
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %121, i32 noundef %108, i32 noundef %114, i32 noundef %111) #13
  %122 = tail call ptr @llvm.thread.pointer() #13
  %123 = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 52
  %124 = load i32, ptr %123, align 8
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.self_check_eba, i32 noundef 1583, i32 noundef %124) #16
  tail call void @dump_stack() #16
  %126 = load i32, ptr %24, align 8
  br label %127

127:                                              ; preds = %120, %106
  %128 = phi i32 [ %107, %106 ], [ %126, %120 ]
  %129 = add nuw nsw i32 %108, 1
  %130 = icmp slt i32 %129, %128
  br i1 %130, label %106, label %131

131:                                              ; preds = %127, %91, %80, %58, %18
  %132 = add nuw nsw i32 %19, 1
  %133 = icmp eq i32 %19, %5
  br i1 %133, label %137, label %18

134:                                              ; preds = %33, %23
  %135 = phi ptr [ %11, %23 ], [ %14, %33 ]
  %136 = getelementptr ptr, ptr %135, i32 %19
  store ptr null, ptr %136, align 4
  br label %137

137:                                              ; preds = %134, %131, %37, %28
  %138 = phi i32 [ -12, %134 ], [ 0, %131 ], [ -12, %28 ], [ -12, %37 ]
  br i1 %17, label %139, label %152

139:                                              ; preds = %149, %137
  %140 = phi i32 [ %150, %149 ], [ 0, %137 ]
  %141 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = getelementptr ptr, ptr %11, i32 %140
  %146 = load ptr, ptr %145, align 4
  tail call void @kfree(ptr noundef %146) #13
  %147 = getelementptr ptr, ptr %14, i32 %140
  %148 = load ptr, ptr %147, align 4
  tail call void @kfree(ptr noundef %148) #13
  br label %149

149:                                              ; preds = %144, %139
  %150 = add nuw nsw i32 %140, 1
  %151 = icmp eq i32 %140, %5
  br i1 %151, label %152, label %139

152:                                              ; preds = %149, %137, %16
  %153 = phi i32 [ %138, %137 ], [ 0, %16 ], [ %138, %149 ]
  tail call void @kfree(ptr noundef nonnull %11) #13
  br label %154

154:                                              ; preds = %152, %13
  %155 = phi ptr [ %14, %152 ], [ %11, %13 ]
  %156 = phi i32 [ %153, %152 ], [ -12, %13 ]
  tail call void @kfree(ptr noundef nonnull %155) #13
  br label %157

157:                                              ; preds = %154, %10, %3
  %158 = phi i32 [ -12, %3 ], [ -12, %10 ], [ %156, %154 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_find_av(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_eba_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.10, ptr noundef nonnull @ubi_eba_init.__key) #13
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 23
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 17
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 21
  store i64 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2147483647
  br i1 %12, label %13, label %91

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3, i32 1
  br label %16

16:                                               ; preds = %88, %13
  %17 = phi i32 [ 0, %13 ], [ %89, %88 ]
  %18 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %88, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @__cond_resched() #13
  %23 = getelementptr inbounds %struct.ubi_volume, ptr %19, i32 0, i32 9
  %24 = load i32, ptr %23, align 8
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 4) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %85, label %28

28:                                               ; preds = %21
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #13
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %31, label %32, !prof !12

31:                                               ; preds = %28
  store ptr null, ptr %26, align 8
  br label %46

32:                                               ; preds = %28
  %33 = extractvalue { i32, i1 } %29, 0
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #15
  store ptr %34, ptr %26, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %24, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  store i32 -1, ptr %34, align 64
  %39 = icmp eq i32 %24, 1
  br i1 %39, label %47, label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ %44, %40 ], [ 1, %38 ]
  %42 = load ptr, ptr %26, align 8
  %43 = getelementptr %struct.ubi_eba_entry, ptr %42, i32 %41
  store i32 -1, ptr %43, align 4
  %44 = add nuw nsw i32 %41, 1
  %45 = icmp eq i32 %44, %24
  br i1 %45, label %47, label %40

46:                                               ; preds = %32, %31
  tail call void @kfree(ptr noundef nonnull %26) #13
  br label %85

47:                                               ; preds = %40, %38, %36
  %48 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %85, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.ubi_volume, ptr %19, i32 0, i32 24
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %54) #13
  tail call void @kfree(ptr noundef nonnull %51) #13
  br label %55

55:                                               ; preds = %53, %49
  store ptr %26, ptr %50, align 4
  %56 = load i32, ptr %10, align 4
  %57 = icmp sgt i32 %56, %17
  %58 = add nuw i32 %17, 2147479551
  %59 = sub i32 %58, %56
  %60 = select i1 %57, i32 %17, i32 %59
  %61 = tail call ptr @ubi_find_av(ptr noundef %1, i32 noundef %60) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %61, i32 0, i32 9
  %65 = tail call ptr @rb_first(ptr noundef %64) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %82, %63
  %68 = phi ptr [ %83, %82 ], [ %65, %63 ]
  %69 = getelementptr i8, ptr %68, i32 -20
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %23, align 8
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  tail call void @rb_erase(ptr noundef %68, ptr noundef %64) #13
  %74 = load ptr, ptr %15, align 4
  store ptr %68, ptr %15, align 4
  store ptr %14, ptr %68, align 4
  %75 = getelementptr i8, ptr %68, i32 4
  store ptr %74, ptr %75, align 4
  store volatile ptr %68, ptr %74, align 4
  br label %82

76:                                               ; preds = %67
  %77 = load ptr, ptr %50, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr %struct.ubi_eba_entry, ptr %78, i32 %70
  %80 = getelementptr i8, ptr %68, i32 -28
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = tail call ptr @rb_next(ptr noundef nonnull %68) #13
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %67

85:                                               ; preds = %47, %46, %21
  %86 = phi ptr [ inttoptr (i32 -12 to ptr), %46 ], [ inttoptr (i32 -12 to ptr), %21 ], [ %26, %47 ]
  %87 = ptrtoint ptr %86 to i32
  br label %137

88:                                               ; preds = %82, %63, %55, %16
  %89 = add nuw nsw i32 %17, 1
  %90 = icmp eq i32 %17, %11
  br i1 %90, label %91, label %16

91:                                               ; preds = %88, %2
  %92 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %93 = load i32, ptr %92, align 8
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %93, i32 noundef 1) #13
  %96 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 64
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %137, label %99

99:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %97) #13
  br label %137

100:                                              ; preds = %91
  %101 = add nsw i32 %93, -1
  store i32 %101, ptr %92, align 8
  %102 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %106 = load i8, ptr %105, align 4
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %154, label %109

109:                                              ; preds = %100
  tail call void @ubi_calculate_reserved(ptr noundef %0) #13
  %110 = load i32, ptr %92, align 8
  %111 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 12
  %112 = load i32, ptr %111, align 8
  %113 = icmp slt i32 %110, %112
  %114 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 11
  br i1 %113, label %115, label %129

115:                                              ; preds = %109
  store i32 %110, ptr %114, align 4
  %116 = load i64, ptr %6, align 8
  %117 = icmp ugt i64 %116, 262144
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = sdiv i32 %112, 10
  %120 = add i32 %112, 9
  %121 = icmp ult i32 %120, 19
  %122 = select i1 %121, i32 1, i32 %119
  %123 = icmp sgt i32 %110, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118, %115
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %110, i32 noundef %112) #13
  %125 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 64
  %126 = load i32, ptr %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %126) #13
  br label %130

129:                                              ; preds = %109
  store i32 %112, ptr %114, align 4
  br label %130

130:                                              ; preds = %129, %128, %124, %118
  %131 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 11
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %92, align 8
  %134 = sub i32 %133, %132
  store i32 %134, ptr %92, align 8
  %135 = load i32, ptr %102, align 4
  %136 = add i32 %135, %132
  store i32 %136, ptr %102, align 4
  br label %154

137:                                              ; preds = %99, %95, %85
  %138 = phi i32 [ %87, %85 ], [ -28, %99 ], [ -28, %95 ]
  br i1 %12, label %139, label %154

139:                                              ; preds = %151, %137
  %140 = phi i32 [ %152, %151 ], [ 0, %137 ]
  %141 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.ubi_volume, ptr %142, i32 0, i32 24
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %146, align 4
  tail call void @kfree(ptr noundef %149) #13
  tail call void @kfree(ptr noundef nonnull %146) #13
  br label %150

150:                                              ; preds = %148, %144
  store ptr null, ptr %145, align 4
  br label %151

151:                                              ; preds = %150, %139
  %152 = add nuw nsw i32 %140, 1
  %153 = icmp eq i32 %140, %11
  br i1 %153, label %154, label %139

154:                                              ; preds = %151, %137, %130, %100
  %155 = phi i32 [ 0, %130 ], [ 0, %100 ], [ %138, %137 ], [ %138, %151 ]
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_calculate_reserved(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ltree_add_entry(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3136, i32 noundef 48) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %91, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %5, i32 0, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %5, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @ltree_add_entry.__key) #13
  %10 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %5, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %5, i32 0, i32 2
  store i32 %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %78, label %16

16:                                               ; preds = %37, %7
  %17 = phi ptr [ %39, %37 ], [ %14, %7 ]
  %18 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, %1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %37

23:                                               ; preds = %16
  %24 = icmp slt i32 %19, %1
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %17, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, %2
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %37

33:                                               ; preds = %27
  %34 = icmp slt i32 %29, %2
  br i1 %34, label %35, label %83

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %37

37:                                               ; preds = %35, %31, %25, %21
  %38 = phi ptr [ %22, %21 ], [ %26, %25 ], [ %32, %31 ], [ %36, %35 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %16

41:                                               ; preds = %37
  br i1 %15, label %78, label %42

42:                                               ; preds = %72, %41
  %43 = phi ptr [ %74, %72 ], [ %14, %41 ]
  %44 = phi ptr [ %73, %72 ], [ %13, %41 ]
  %45 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %43, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, %1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 2
  br label %72

50:                                               ; preds = %42
  %51 = icmp slt i32 %46, %1
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.rb_node, ptr %43, i32 0, i32 1
  br label %72

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %43, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %2
  br i1 %57, label %58, label %64, !prof !12

58:                                               ; preds = %54
  %59 = tail call ptr @llvm.thread.pointer() #13
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 52
  %61 = load i32, ptr %60, align 8
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ltree_add_entry, i32 noundef 292, i32 noundef %61) #16
  tail call void @dump_stack() #16
  %63 = load i32, ptr %55, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i32 [ %63, %58 ], [ %56, %54 ]
  %66 = icmp sgt i32 %65, %2
  %67 = load ptr, ptr %44, align 4
  br i1 %66, label %68, label %70

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 2
  br label %72

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br label %72

72:                                               ; preds = %70, %68, %52, %48
  %73 = phi ptr [ %49, %48 ], [ %53, %52 ], [ %69, %68 ], [ %71, %70 ]
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %42

76:                                               ; preds = %72
  %77 = ptrtoint ptr %43 to i32
  br label %78

78:                                               ; preds = %76, %41, %7
  %79 = phi ptr [ %73, %76 ], [ %13, %41 ], [ %13, %7 ]
  %80 = phi i32 [ %77, %76 ], [ 0, %41 ], [ 0, %7 ]
  store i32 %80, ptr %5, align 8
  %81 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  store ptr null, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  store ptr null, ptr %82, align 8
  store ptr %5, ptr %79, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %5, ptr noundef %13) #13
  br label %83

83:                                               ; preds = %78, %33
  %84 = phi ptr [ null, %78 ], [ %5, %33 ]
  %85 = phi ptr [ %5, %78 ], [ %17, %33 ]
  %86 = getelementptr inbounds %struct.ubi_ltree_entry, ptr %85, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %89 = load i16, ptr %12, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !11
  tail call void @kfree(ptr noundef %84) #13
  br label %91

91:                                               ; preds = %83, %3
  %92 = phi ptr [ %85, %83 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_get_peb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

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
!8 = !{i64 2148969380}
!9 = !{i64 2148965204}
!10 = !{i64 2148965279, i64 2148965306, i64 2148965353, i64 2148965375, i64 2148965403, i64 2148965423}
!11 = !{i64 2148992383}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 4000000, i32 4001}
!14 = !{!"branch_weights", i32 2000, i32 1}
