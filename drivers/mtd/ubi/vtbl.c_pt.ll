; ModuleID = '/llk/IR/drivers/mtd/ubi/vtbl.c_pt.bc'
source_filename = "../drivers/mtd/ubi/vtbl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
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
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.ubi_ainf_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.rb_node, %struct.rb_root }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon.70 }
%union.anon.70 = type { %struct.rb_node }

@.str = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_change_vtbl_record = private unnamed_addr constant [23 x i8] c"ubi_change_vtbl_record\00", align 1
@empty_vtbl_record = internal global %struct.ubi_vtbl_record zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"the layout volume was not found\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"too many LEBs (%d) in layout volume\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"volume table copy #2 is corrupted\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"volume table was restored\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"both volume tables are corrupted\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"volume table copy #1 is corrupted\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"bad CRC at record %u: %#08x, not %#08x\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"bad data_pad, has to be %d\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"too large reserved_pebs %d, good PEBs %d\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"volumes %d and %d have the same name \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"volume table check failed: record %d, error %d\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"more than one auto-resize volume (%d and %d)\00", align 1
@__func__.init_volumes = private unnamed_addr constant [13 x i8] c"init_volumes\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"static volume %d misses %d LEBs - corrupted\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"layout volume\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"not enough PEBs, required %d, available %d\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%d PEBs are corrupted and not used\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"found %d volumes while attaching, maximum is %d + %d\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"too large volume ID %d found\00", align 1
@__func__.check_attaching_info = private unnamed_addr constant [21 x i8] c"check_attaching_info\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"finish volume %d removal\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"bad attaching information, error %d\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"self-check failed\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_change_vtbl_record(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %9, !prof !8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %14, label %9, !prof !8

9:                                                ; preds = %5, %3
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_change_vtbl_record, i32 noundef 96, i32 noundef %12) #14
  tail call void @dump_stack() #14
  br label %14

14:                                               ; preds = %9, %5
  %15 = icmp eq ptr %2, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %2, i32 noundef 168) #15
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %2, i32 0, i32 9
  store i32 %18, ptr %19, align 1
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi ptr [ %2, %16 ], [ @empty_vtbl_record, %14 ]
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.ubi_vtbl_record, ptr %23, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(172) %24, ptr noundef nonnull align 1 dereferenceable(172) %21, i32 172, i1 false)
  %25 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %22, align 4
  %31 = load i32, ptr %29, align 8
  %32 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr noundef %28, i32 noundef 0, ptr noundef %30, i32 noundef %31) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load ptr, ptr %22, align 4
  %36 = load i32, ptr %29, align 8
  %37 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr noundef %28, i32 noundef 1, ptr noundef %35, i32 noundef %36) #13
  br label %38

38:                                               ; preds = %34, %20
  %39 = phi i32 [ %32, %20 ], [ %37, %34 ]
  %40 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %41 = load i8, ptr %40, align 4
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %22, align 4
  %46 = tail call fastcc i32 @vtbl_check(ptr noundef %0, ptr noundef %45) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.22) #13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/ubi/vtbl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 869, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

49:                                               ; preds = %44, %38
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_vtbl_rename_volumes(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %38, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  br label %7

7:                                                ; preds = %35, %5
  %8 = phi ptr [ %3, %5 ], [ %36, %35 ]
  %9 = getelementptr i8, ptr %8, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.ubi_volume, ptr %11, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr %struct.ubi_vtbl_record, ptr %12, i32 %14
  %16 = getelementptr i8, ptr %8, i32 -8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(172) %15, ptr noundef nonnull align 1 dereferenceable(172) @empty_vtbl_record, i32 172, i1 false)
  br label %35

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %8, i32 -140
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = getelementptr %struct.ubi_vtbl_record, ptr %12, i32 %14, i32 5
  store i16 %24, ptr %25, align 1
  %26 = getelementptr %struct.ubi_vtbl_record, ptr %12, i32 %14, i32 6
  %27 = getelementptr i8, ptr %8, i32 -136
  %28 = load i32, ptr %21, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr align 4 %27, i32 %28, i1 false)
  %29 = load i32, ptr %21, align 4
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = sub i32 128, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %31, i1 false)
  %32 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %15, i32 noundef 168) #15
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = getelementptr %struct.ubi_vtbl_record, ptr %12, i32 %14, i32 9
  store i32 %33, ptr %34, align 1
  br label %35

35:                                               ; preds = %20, %19
  %36 = load ptr, ptr %8, align 4
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %7

38:                                               ; preds = %35, %2
  %39 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %44 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %43, align 4
  %46 = load i32, ptr %44, align 8
  %47 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr noundef %42, i32 noundef 0, ptr noundef %45, i32 noundef %46) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load ptr, ptr %43, align 4
  %51 = load i32, ptr %44, align 8
  %52 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr noundef %42, i32 noundef 1, ptr noundef %50, i32 noundef %51) #13
  br label %53

53:                                               ; preds = %49, %38
  %54 = phi i32 [ %47, %38 ], [ %52, %49 ]
  ret i32 %54
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_read_volume_table(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 8
  store i32 1807947505, ptr getelementptr inbounds (%struct.ubi_vtbl_record, ptr @empty_vtbl_record, i32 0, i32 9), align 1
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %5 = load i32, ptr %4, align 8
  %6 = udiv i32 %5, 172
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %8 = icmp ugt i32 %5, 22187
  %9 = select i1 %8, i32 128, i32 %6
  store i32 %9, ptr %7, align 4
  %10 = mul nuw i32 %9, 172
  %11 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 16
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = add i32 %14, %10
  %16 = sub i32 0, %13
  %17 = and i32 %15, %16
  store i32 %17, ptr %11, align 8
  %18 = tail call ptr @ubi_find_av(ptr noundef %1, i32 noundef 2147479551) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 13
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %11, align 8
  %26 = tail call noalias ptr @vzalloc(i32 noundef %25) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  store ptr inttoptr (i32 -12 to ptr), ptr %29, align 4
  br label %51

30:                                               ; preds = %24
  %31 = load i32, ptr %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %36, %30
  %34 = tail call fastcc i32 @create_vtbl(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %26) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %44

36:                                               ; preds = %36, %30
  %37 = phi i32 [ %39, %36 ], [ 0, %30 ]
  %38 = getelementptr %struct.ubi_vtbl_record, ptr %26, i32 %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(172) %38, ptr noundef nonnull align 1 dereferenceable(172) @empty_vtbl_record, i32 172, i1 false) #13
  %39 = add nuw nsw i32 %37, 1
  %40 = icmp eq i32 %39, %31
  br i1 %40, label %33, label %36

41:                                               ; preds = %33
  %42 = tail call fastcc i32 @create_vtbl(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %26) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %33
  %45 = phi i32 [ %34, %33 ], [ %42, %41 ]
  tail call void @vfree(ptr noundef nonnull %26) #13
  %46 = inttoptr i32 %45 to ptr
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %46, %44 ], [ %26, %41 ]
  %49 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  store ptr %48, ptr %49, align 4
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %138

51:                                               ; preds = %47, %28
  %52 = phi ptr [ inttoptr (i32 -12 to ptr), %28 ], [ %48, %47 ]
  %53 = ptrtoint ptr %52 to i32
  br label %407

54:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.1) #13
  br label %407

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %18, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %57) #13
  br label %407

60:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8
  %61 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %18, i32 0, i32 9
  %62 = tail call ptr @rb_first(ptr noundef %61) #13
  %63 = icmp eq ptr %62, null
  br i1 %63, label %108, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  br label %66

66:                                               ; preds = %84, %64
  %67 = phi ptr [ %62, %64 ], [ %85, %84 ]
  %68 = load i32, ptr %11, align 8
  %69 = tail call noalias ptr @vzalloc(i32 noundef %68) #16
  %70 = getelementptr i8, ptr %67, i32 -20
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr [2 x ptr], ptr %3, i32 0, i32 %71
  store ptr %69, ptr %72, align 4
  %73 = icmp eq ptr %69, null
  br i1 %73, label %123, label %74

74:                                               ; preds = %66
  %75 = getelementptr i8, ptr %67, i32 -28
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %11, align 8
  %78 = load i32, ptr %65, align 4
  %79 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef nonnull %69, i32 noundef %76, i32 noundef %78, i32 noundef %77) #13
  switch i32 %79, label %123 [
    i32 5, label %80
    i32 -74, label %80
    i32 0, label %84
  ]

80:                                               ; preds = %74, %74
  %81 = getelementptr i8, ptr %67, i32 -16
  %82 = load i8, ptr %81, align 8
  %83 = or i8 %82, 1
  store i8 %83, ptr %81, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = tail call ptr @rb_next(ptr noundef nonnull %67) #13
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %66

87:                                               ; preds = %84
  %88 = load ptr, ptr %3, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = tail call fastcc i32 @vtbl_check(ptr noundef %0, ptr noundef nonnull %88) #13
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %126, label %93

93:                                               ; preds = %90
  %94 = icmp eq i32 %91, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %93
  %96 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %11, align 8
  %101 = tail call i32 @bcmp(ptr nonnull %88, ptr nonnull %97, i32 %100) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99, %95
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.3) #13
  %104 = tail call fastcc i32 @create_vtbl(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %88) #13
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.4) #13
  br label %107

107:                                              ; preds = %106, %99
  tail call void @vfree(ptr noundef %97) #13
  br label %132

108:                                              ; preds = %93, %87, %60
  %109 = phi ptr [ null, %87 ], [ %88, %93 ], [ null, %60 ]
  %110 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = tail call fastcc i32 @vtbl_check(ptr noundef %0, ptr noundef nonnull %111) #13
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %113
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %116, %108
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.5) #13
  br label %126

119:                                              ; preds = %116
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.6) #13
  %120 = tail call fastcc i32 @create_vtbl(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %111) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.4) #13
  tail call void @vfree(ptr noundef %109) #13
  br label %132

123:                                              ; preds = %74, %66
  %124 = phi i32 [ -12, %66 ], [ %79, %74 ]
  %125 = load ptr, ptr %3, align 8
  br label %126

126:                                              ; preds = %123, %119, %118, %113, %103, %90
  %127 = phi ptr [ %88, %90 ], [ %109, %113 ], [ %109, %118 ], [ %109, %119 ], [ %88, %103 ], [ %125, %123 ]
  %128 = phi i32 [ -22, %90 ], [ -22, %113 ], [ -22, %118 ], [ %120, %119 ], [ %104, %103 ], [ %124, %123 ]
  tail call void @vfree(ptr noundef %127) #13
  %129 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  tail call void @vfree(ptr noundef %130) #13
  %131 = inttoptr i32 %128 to ptr
  br label %132

132:                                              ; preds = %126, %122, %107
  %133 = phi ptr [ %131, %126 ], [ %111, %122 ], [ %88, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %134 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  store ptr %133, ptr %134, align 4
  %135 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = ptrtoint ptr %133 to i32
  br label %407

138:                                              ; preds = %132, %47
  %139 = phi ptr [ %133, %132 ], [ %48, %47 ]
  %140 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 63
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 64
  %143 = load i32, ptr %142, align 8
  %144 = sub i32 %141, %143
  %145 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  store i32 %144, ptr %145, align 8
  %146 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %147 = load i32, ptr %7, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %277

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 14
  %151 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 4
  br label %152

152:                                              ; preds = %272, %149
  %153 = phi i32 [ 0, %149 ], [ %274, %272 ]
  %154 = phi i32 [ 0, %149 ], [ %273, %272 ]
  %155 = tail call i32 @__cond_resched() #13
  %156 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153
  %157 = load i32, ptr %156, align 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %272, label %159

159:                                              ; preds = %152
  %160 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %161 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %160, i32 noundef 3520, i32 noundef 776) #17
  %162 = icmp eq ptr %161, null
  br i1 %162, label %404, label %163

163:                                              ; preds = %159
  %164 = load i32, ptr %156, align 1
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #13
  %166 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 9
  store i32 %165, ptr %166, align 8
  %167 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 1
  %168 = load i32, ptr %167, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #13
  %170 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 15
  store i32 %169, ptr %170, align 8
  %171 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 2
  %172 = load i32, ptr %171, align 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #13
  %174 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 16
  store i32 %173, ptr %174, align 4
  %175 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 4
  %176 = load i8, ptr %175, align 1
  %177 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 25
  %178 = load i8, ptr %177, align 8
  %179 = shl i8 %176, 3
  %180 = and i8 %179, 8
  %181 = and i8 %178, -9
  %182 = or i8 %181, %180
  store i8 %182, ptr %177, align 8
  %183 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 3
  %184 = load i8, ptr %183, align 1
  %185 = icmp eq i8 %184, 1
  %186 = select i1 %185, i32 3, i32 4
  %187 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 10
  store i32 %186, ptr %187, align 4
  %188 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 5
  %189 = load i16, ptr %188, align 1
  %190 = tail call i16 @llvm.bswap.i16(i16 %189) #13
  %191 = zext i16 %190 to i32
  %192 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 17
  store i32 %191, ptr %192, align 8
  %193 = load i32, ptr %4, align 8
  %194 = sub i32 %193, %173
  %195 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 11
  store i32 %194, ptr %195, align 8
  %196 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 18
  %197 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %196, ptr align 1 %197, i32 %191, i1 false) #13
  %198 = getelementptr %struct.ubi_volume, ptr %161, i32 0, i32 18, i32 %191
  store i8 0, ptr %198, align 1
  %199 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 3
  store i32 %153, ptr %199, align 8
  %200 = getelementptr %struct.ubi_vtbl_record, ptr %139, i32 %153, i32 7
  %201 = load i8, ptr %200, align 1
  %202 = and i8 %201, 2
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %163
  %205 = load i8, ptr %177, align 8
  %206 = or i8 %205, 1
  store i8 %206, ptr %177, align 8
  br label %207

207:                                              ; preds = %204, %163
  %208 = and i8 %201, 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  %211 = load i32, ptr %150, align 8
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %211, i32 noundef %153) #13
  tail call void @kfree(ptr noundef nonnull %161) #13
  br label %404

214:                                              ; preds = %210
  store i32 %153, ptr %150, align 8
  br label %215

215:                                              ; preds = %214, %207
  %216 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %153
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %226, label %219, !prof !8

219:                                              ; preds = %215
  %220 = tail call ptr @llvm.thread.pointer() #13
  %221 = getelementptr inbounds %struct.task_struct, ptr %220, i32 0, i32 52
  %222 = load i32, ptr %221, align 8
  %223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_volumes, i32 noundef 565, i32 noundef %222) #14
  tail call void @dump_stack() #14
  %224 = load i32, ptr %166, align 8
  %225 = load i32, ptr %187, align 4
  br label %226

226:                                              ; preds = %219, %215
  %227 = phi i32 [ %225, %219 ], [ %186, %215 ]
  %228 = phi i32 [ %224, %219 ], [ %165, %215 ]
  store ptr %161, ptr %216, align 4
  %229 = load i32, ptr %151, align 8
  %230 = add i32 %229, 1
  store i32 %230, ptr %151, align 8
  %231 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 2
  store ptr %0, ptr %231, align 4
  %232 = add i32 %228, %154
  %233 = icmp eq i32 %227, 3
  br i1 %233, label %234, label %242

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 12
  store i32 %228, ptr %235, align 4
  %236 = load i32, ptr %195, align 8
  %237 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 13
  store i32 %236, ptr %237, align 8
  %238 = sext i32 %228 to i64
  %239 = sext i32 %236 to i64
  %240 = mul nsw i64 %239, %238
  %241 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 14
  store i64 %240, ptr %241, align 8
  br label %272

242:                                              ; preds = %226
  %243 = tail call ptr @ubi_find_av(ptr noundef %1, i32 noundef %153) #13
  %244 = icmp eq ptr %243, null
  br i1 %244, label %272, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %243, i32 0, i32 2
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %272, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %243, i32 0, i32 4
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, %247
  br i1 %252, label %258, label %253

253:                                              ; preds = %249
  %254 = load i32, ptr %243, align 4
  %255 = sub i32 %251, %247
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %254, i32 noundef %255) #13
  %256 = load i8, ptr %177, align 8
  %257 = or i8 %256, 4
  store i8 %257, ptr %177, align 8
  br label %272

258:                                              ; preds = %249
  %259 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 12
  store i32 %247, ptr %259, align 4
  %260 = add i32 %247, -1
  %261 = sext i32 %260 to i64
  %262 = load i32, ptr %195, align 8
  %263 = sext i32 %262 to i64
  %264 = mul nsw i64 %263, %261
  %265 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 14
  store i64 %264, ptr %265, align 8
  %266 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %243, i32 0, i32 5
  %267 = load i32, ptr %266, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %264, %268
  store i64 %269, ptr %265, align 8
  %270 = load i32, ptr %266, align 4
  %271 = getelementptr inbounds %struct.ubi_volume, ptr %161, i32 0, i32 13
  store i32 %270, ptr %271, align 8
  br label %272

272:                                              ; preds = %258, %253, %245, %242, %234, %152
  %273 = phi i32 [ %154, %152 ], [ %232, %234 ], [ %232, %253 ], [ %232, %258 ], [ %232, %245 ], [ %232, %242 ]
  %274 = add nuw nsw i32 %153, 1
  %275 = load i32, ptr %7, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %152, label %277

277:                                              ; preds = %272, %138
  %278 = phi i32 [ 0, %138 ], [ %273, %272 ]
  %279 = phi i32 [ 0, %138 ], [ %274, %272 ]
  %280 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %281 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %280, i32 noundef 3520, i32 noundef 776) #17
  %282 = icmp eq ptr %281, null
  br i1 %282, label %404, label %283

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 9
  store i32 2, ptr %284, align 8
  %285 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 15
  store i32 1, ptr %285, align 8
  %286 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 10
  store i32 3, ptr %286, align 4
  %287 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 17
  store i32 13, ptr %287, align 8
  %288 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(14) %288, ptr noundef nonnull align 1 dereferenceable(14) @.str.15, i32 14, i1 false) #13
  %289 = load i32, ptr %4, align 8
  %290 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 11
  store i32 %289, ptr %290, align 8
  %291 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 12
  store i32 2, ptr %291, align 4
  %292 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 13
  store i32 2, ptr %292, align 8
  %293 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 16
  %294 = load i32, ptr %293, align 4
  %295 = sub i32 %289, %294
  %296 = sext i32 %295 to i64
  %297 = shl nsw i64 %296, 1
  %298 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 14
  store i64 %297, ptr %298, align 8
  %299 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 3
  store i32 2147479551, ptr %299, align 8
  %300 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 4
  store i32 1, ptr %300, align 4
  %301 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %279
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %309, label %304, !prof !8

304:                                              ; preds = %283
  %305 = tail call ptr @llvm.thread.pointer() #13
  %306 = getelementptr inbounds %struct.task_struct, ptr %305, i32 0, i32 52
  %307 = load i32, ptr %306, align 8
  %308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_volumes, i32 noundef 643, i32 noundef %307) #14
  tail call void @dump_stack() #14
  br label %309

309:                                              ; preds = %304, %283
  %310 = load i32, ptr %7, align 4
  %311 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %310
  store ptr %281, ptr %311, align 4
  %312 = add i32 %278, 2
  %313 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 4
  %314 = load i32, ptr %313, align 8
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 8
  %316 = getelementptr inbounds %struct.ubi_volume, ptr %281, i32 0, i32 2
  store ptr %0, ptr %316, align 4
  %317 = load i32, ptr %145, align 8
  %318 = icmp slt i32 %317, %312
  br i1 %318, label %319, label %323

319:                                              ; preds = %309
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %312, i32 noundef %317) #13
  %320 = load i32, ptr %142, align 8
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %404, label %322

322:                                              ; preds = %319
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %320) #13
  br label %404

323:                                              ; preds = %309
  %324 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 9
  %325 = load i32, ptr %324, align 4
  %326 = add i32 %325, %312
  store i32 %326, ptr %324, align 4
  %327 = sub i32 %317, %312
  store i32 %327, ptr %145, align 8
  %328 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 11
  %329 = load i32, ptr %328, align 8
  %330 = load i32, ptr %7, align 4
  %331 = add i32 %330, 1
  %332 = icmp sgt i32 %329, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %323
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %329, i32 noundef 1, i32 noundef %330) #13
  br label %404

334:                                              ; preds = %323
  %335 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 12
  %336 = load i32, ptr %335, align 4
  %337 = icmp sge i32 %336, %331
  %338 = icmp slt i32 %336, 2147479551
  %339 = and i1 %337, %338
  br i1 %339, label %342, label %340

340:                                              ; preds = %334
  %341 = icmp ult i32 %330, 2147483647
  br i1 %341, label %343, label %407

342:                                              ; preds = %334
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %336) #13
  br label %404

343:                                              ; preds = %399, %340
  %344 = phi i32 [ %400, %399 ], [ 0, %340 ]
  %345 = tail call i32 @__cond_resched() #13
  %346 = tail call ptr @ubi_find_av(ptr noundef %1, i32 noundef %344) #13
  %347 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %344
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %352

350:                                              ; preds = %343
  %351 = icmp eq ptr %346, null
  br i1 %351, label %399, label %398

352:                                              ; preds = %343
  %353 = getelementptr inbounds %struct.ubi_volume, ptr %348, i32 0, i32 9
  %354 = load i32, ptr %353, align 8
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %368

356:                                              ; preds = %352
  %357 = load i32, ptr %7, align 4
  %358 = icmp slt i32 %344, %357
  br i1 %358, label %364, label %359, !prof !8

359:                                              ; preds = %356
  %360 = tail call ptr @llvm.thread.pointer() #13
  %361 = getelementptr inbounds %struct.task_struct, ptr %360, i32 0, i32 52
  %362 = load i32, ptr %361, align 8
  %363 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.check_attaching_info, i32 noundef 750, i32 noundef %362) #14
  tail call void @dump_stack() #14
  br label %364

364:                                              ; preds = %359, %356
  %365 = icmp eq ptr %346, null
  br i1 %365, label %399, label %366

366:                                              ; preds = %364
  %367 = load i32, ptr %346, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %367) #13
  br label %398

368:                                              ; preds = %352
  %369 = icmp eq ptr %346, null
  br i1 %369, label %399, label %370

370:                                              ; preds = %368
  %371 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %346, i32 0, i32 1
  %372 = load i32, ptr %371, align 4
  %373 = icmp slt i32 %372, %354
  br i1 %373, label %374, label %394

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %346, i32 0, i32 2
  %376 = load i32, ptr %375, align 4
  %377 = icmp sgt i32 %376, %354
  br i1 %377, label %394, label %378

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %346, i32 0, i32 3
  %380 = load i32, ptr %379, align 4
  %381 = getelementptr inbounds %struct.ubi_volume, ptr %348, i32 0, i32 10
  %382 = load i32, ptr %381, align 4
  %383 = icmp eq i32 %380, %382
  br i1 %383, label %384, label %394

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %346, i32 0, i32 4
  %386 = load i32, ptr %385, align 4
  %387 = icmp sgt i32 %386, %354
  br i1 %387, label %394, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.ubi_ainf_volume, ptr %346, i32 0, i32 6
  %390 = load i32, ptr %389, align 4
  %391 = getelementptr inbounds %struct.ubi_volume, ptr %348, i32 0, i32 16
  %392 = load i32, ptr %391, align 4
  %393 = icmp eq i32 %390, %392
  br i1 %393, label %399, label %394

394:                                              ; preds = %388, %384, %378, %374, %370
  %395 = phi i32 [ 1, %370 ], [ 2, %374 ], [ 3, %378 ], [ 4, %384 ], [ 5, %388 ]
  %396 = getelementptr inbounds %struct.ubi_volume, ptr %348, i32 0, i32 2
  %397 = load ptr, ptr %396, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %397, ptr noundef nonnull @.str.21, i32 noundef %395) #13
  tail call void @ubi_dump_av(ptr noundef nonnull %346) #13
  tail call void @ubi_dump_vol_info(ptr noundef nonnull %348) #13
  br label %404

398:                                              ; preds = %366, %350
  tail call void @ubi_remove_av(ptr noundef %1, ptr noundef nonnull %346) #13
  br label %399

399:                                              ; preds = %398, %388, %368, %364, %350
  %400 = add nuw nsw i32 %344, 1
  %401 = load i32, ptr %7, align 4
  %402 = add i32 %401, 1
  %403 = icmp slt i32 %400, %402
  br i1 %403, label %343, label %407

404:                                              ; preds = %394, %342, %333, %322, %319, %277, %213, %159
  %405 = phi i32 [ -28, %319 ], [ -28, %322 ], [ -12, %277 ], [ -22, %213 ], [ -22, %333 ], [ -22, %342 ], [ -22, %394 ], [ -12, %159 ]
  %406 = load ptr, ptr %146, align 4
  tail call void @vfree(ptr noundef %406) #13
  tail call void @ubi_free_all_volumes(ptr noundef %0) #13
  br label %407

407:                                              ; preds = %404, %399, %340, %136, %59, %54, %51
  %408 = phi i32 [ -22, %59 ], [ %137, %136 ], [ %405, %404 ], [ %53, %51 ], [ -22, %54 ], [ 0, %340 ], [ 0, %399 ]
  ret i32 %408
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_find_av(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_all_volumes(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_atomic_leb_change(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_vtbl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %10 = load i32, ptr %9, align 4
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %75, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %9, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %11, i8 0, i32 %14, i1 false) #13
  %15 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %6, i32 0, i32 1
  store ptr %11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr i8, ptr %11, i32 %17
  store ptr %18, ptr %6, align 8
  %19 = tail call ptr @ubi_early_get_peb(ptr noundef %0, ptr noundef %1) #13
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %35, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 2
  %23 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 5
  %24 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 4
  %25 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 10
  %26 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 9
  %27 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %2)
  %29 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 6
  %30 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 17
  %31 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %18, i32 0, i32 13
  %32 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 16
  %33 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %34 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3
  br label %38

35:                                               ; preds = %63, %13
  %36 = phi ptr [ %19, %13 ], [ %69, %63 ]
  %37 = ptrtoint ptr %36 to i32
  br label %72

38:                                               ; preds = %63, %21
  %39 = phi ptr [ %19, %21 ], [ %69, %63 ]
  %40 = phi i32 [ 0, %21 ], [ %64, %63 ]
  store i8 1, ptr %22, align 1
  store i32 -1048705, ptr %23, align 1
  store i8 5, ptr %24, align 1
  store i32 0, ptr %25, align 1
  store i32 0, ptr %26, align 1
  store i32 0, ptr %27, align 1
  store i32 %28, ptr %29, align 1
  %41 = load i64, ptr %30, align 8
  %42 = add i64 %41, 1
  store i64 %42, ptr %30, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42)
  store i64 %43, ptr %31, align 1
  %44 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %39, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @ubi_io_write_vid_hdr(ptr noundef %0, i32 noundef %45, ptr noundef nonnull %6) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load i32, ptr %44, align 4
  %50 = load i32, ptr %32, align 8
  %51 = load i32, ptr %33, align 4
  %52 = tail call i32 @ubi_io_write(ptr noundef %0, ptr noundef %3, i32 noundef %49, i32 noundef %51, i32 noundef %50) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, ptr %44, align 4
  %56 = load i32, ptr %39, align 8
  %57 = tail call i32 @ubi_add_to_av(ptr noundef %0, ptr noundef %1, i32 noundef %55, i32 noundef %56, ptr noundef %18, i32 noundef 0) #13
  tail call void @ubi_free_aeb(ptr noundef %1, ptr noundef %39) #13
  br label %72

58:                                               ; preds = %48, %38
  %59 = phi i32 [ %46, %38 ], [ %52, %48 ]
  %60 = icmp ne i32 %59, -5
  %61 = icmp eq i32 %40, 5
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = add nuw nsw i32 %40, 1
  %65 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %39, i32 0, i32 6
  %66 = load ptr, ptr %34, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %65, ptr %67, align 4
  store ptr %66, ptr %65, align 4
  %68 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %39, i32 0, i32 6, i32 0, i32 1
  store ptr %34, ptr %68, align 4
  store volatile ptr %65, ptr %34, align 4
  %69 = tail call ptr @ubi_early_get_peb(ptr noundef %0, ptr noundef %1) #13
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %35, label %38

71:                                               ; preds = %58
  tail call void @ubi_free_aeb(ptr noundef %1, ptr noundef %39) #13
  br label %72

72:                                               ; preds = %71, %54, %35
  %73 = phi i32 [ %57, %54 ], [ %37, %35 ], [ %59, %71 ]
  %74 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %74) #13
  br label %75

75:                                               ; preds = %72, %8
  %76 = phi i32 [ -12, %8 ], [ %73, %72 ]
  tail call void @kfree(ptr noundef nonnull %6) #13
  br label %77

77:                                               ; preds = %75, %4
  %78 = phi i32 [ -12, %4 ], [ %76, %75 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubi_early_get_peb(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_vid_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_add_to_av(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_aeb(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vtbl_check(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 63
  br label %14

10:                                               ; preds = %86, %2
  %11 = phi i32 [ %4, %2 ], [ %88, %86 ]
  %12 = add i32 %11, -1
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %92, label %121

14:                                               ; preds = %86, %6
  %15 = phi i32 [ 0, %6 ], [ %87, %86 ]
  %16 = tail call i32 @__cond_resched() #13
  %17 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15
  %18 = load i32, ptr %17, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 1
  %21 = load i32, ptr %20, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 2
  %24 = load i32, ptr %23, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 5
  %31 = load i16, ptr %30, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %33 = zext i16 %32 to i32
  %34 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 6
  %35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %17, i32 noundef 168) #15
  %36 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %15, i32 9
  %37 = load i32, ptr %36, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = icmp eq i32 %38, %35
  br i1 %39, label %41, label %40

40:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %15, i32 noundef %35, i32 noundef %38) #13
  tail call void @ubi_dump_vtbl_record(ptr noundef %17, i32 noundef %15) #13
  br label %121

41:                                               ; preds = %14
  %42 = icmp eq i32 %18, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = tail call i32 @bcmp(ptr noundef dereferenceable(172) %17, ptr noundef nonnull dereferenceable(172) @empty_vtbl_record, i32 172)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %86, label %119

46:                                               ; preds = %41
  %47 = icmp slt i32 %19, 0
  %48 = icmp slt i32 %22, 0
  %49 = select i1 %47, i1 true, i1 %48
  %50 = icmp slt i32 %25, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %119, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %7, align 8
  %54 = icmp sgt i32 %22, %53
  %55 = icmp eq i32 %21, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %119, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %8, align 4
  %59 = add i32 %58, -1
  %60 = and i32 %59, %22
  %61 = icmp ne i32 %21, 16777216
  %62 = icmp ne i32 %60, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %119, label %64

64:                                               ; preds = %57
  %65 = srem i32 %53, %22
  %66 = icmp eq i32 %25, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %65) #13
  br label %119

68:                                               ; preds = %64
  %69 = add i8 %29, -3
  %70 = icmp ult i8 %69, -2
  br i1 %70, label %119, label %71

71:                                               ; preds = %68
  %72 = icmp ugt i8 %27, 1
  br i1 %72, label %119, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %9, align 4
  %75 = icmp sgt i32 %19, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %19, i32 noundef %74) #13
  br label %119

77:                                               ; preds = %73
  %78 = icmp ugt i16 %32, 127
  br i1 %78, label %119, label %79

79:                                               ; preds = %77
  %80 = load i8, ptr %34, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %119, label %82

82:                                               ; preds = %79
  %83 = add nuw nsw i32 %33, 1
  %84 = tail call i32 @strnlen(ptr noundef %34, i32 noundef %83)
  %85 = icmp eq i32 %84, %33
  br i1 %85, label %86, label %119

86:                                               ; preds = %82, %43
  %87 = add nuw nsw i32 %15, 1
  %88 = load i32, ptr %3, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %14, label %10

90:                                               ; preds = %116, %92
  %91 = icmp eq i32 %94, %12
  br i1 %91, label %121, label %92

92:                                               ; preds = %90, %10
  %93 = phi i32 [ %94, %90 ], [ 0, %10 ]
  %94 = add nuw nsw i32 %93, 1
  %95 = icmp slt i32 %94, %11
  br i1 %95, label %96, label %90

96:                                               ; preds = %92
  %97 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %93, i32 5
  %98 = load i16, ptr %97, align 1
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  %100 = zext i16 %99 to i32
  %101 = icmp eq i16 %98, 0
  %102 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %93, i32 6
  br label %103

103:                                              ; preds = %116, %96
  %104 = phi i32 [ %94, %96 ], [ %117, %116 ]
  br i1 %101, label %116, label %105

105:                                              ; preds = %103
  %106 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %104, i32 5
  %107 = load i16, ptr %106, align 1
  %108 = icmp eq i16 %98, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %104, i32 6
  %111 = tail call i32 @strncmp(ptr noundef %102, ptr noundef %110, i32 noundef %100)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %93
  %115 = getelementptr %struct.ubi_vtbl_record, ptr %1, i32 %104
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %93, i32 noundef %104, ptr noundef %102) #13
  tail call void @ubi_dump_vtbl_record(ptr noundef %114, i32 noundef %93) #13
  tail call void @ubi_dump_vtbl_record(ptr noundef %115, i32 noundef %104) #13
  br label %121

116:                                              ; preds = %109, %105, %103
  %117 = add nuw i32 %104, 1
  %118 = icmp eq i32 %117, %11
  br i1 %118, label %90, label %103

119:                                              ; preds = %82, %79, %77, %76, %71, %68, %67, %57, %52, %46, %43
  %120 = phi i32 [ 6, %67 ], [ 9, %76 ], [ 2, %43 ], [ 3, %46 ], [ 4, %52 ], [ 5, %57 ], [ 7, %68 ], [ 8, %71 ], [ 10, %77 ], [ 11, %79 ], [ 12, %82 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %15, i32 noundef %120) #13
  tail call void @ubi_dump_vtbl_record(ptr noundef %17, i32 noundef %15) #13
  br label %121

121:                                              ; preds = %119, %113, %90, %40, %10
  %122 = phi i32 [ 1, %40 ], [ -22, %119 ], [ -22, %113 ], [ 0, %10 ], [ 0, %90 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vtbl_record(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_remove_av(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_av(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vol_info(ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152925535, i64 2152926022, i64 2152925572, i64 2152925628, i64 2152925662, i64 2152925686, i64 2152925727, i64 2152925748, i64 2152925776, i64 2152925810}
