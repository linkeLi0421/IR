; ModuleID = '/llk/IR/drivers/mtd/ubi/io.c_pt.bc'
source_filename = "../drivers/mtd/ubi/io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.65 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.65 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_io_read = private unnamed_addr constant [12 x i8] c"ubi_io_read\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" (ECC error)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"fixable bit-flip detected at PEB %d\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"error %d%s while reading %d bytes from PEB %d:%d, read only %zd bytes, retry\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"error %d%s while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@__func__.ubi_io_write = private unnamed_addr constant [13 x i8] c"ubi_io_write\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"read-only mode\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"cannot write %d bytes to PEB %d:%d (emulated)\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"error %d while writing %d bytes to PEB %d:%d, written %zd bytes\00", align 1
@__func__.ubi_io_sync_erase = private unnamed_addr constant [18 x i8] c"ubi_io_sync_erase\00", align 1
@__func__.ubi_io_is_bad = private unnamed_addr constant [14 x i8] c"ubi_io_is_bad\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"error %d while checking if PEB %d is bad\00", align 1
@__func__.ubi_io_mark_bad = private unnamed_addr constant [16 x i8] c"ubi_io_mark_bad\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"cannot mark PEB %d bad, error %d\00", align 1
@__func__.ubi_io_read_ec_hdr = private unnamed_addr constant [19 x i8] c"ubi_io_read_ec_hdr\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"no EC header found at PEB %d, only 0xFF bytes\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"bad magic number at PEB %d: %08x instead of %08x\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"bad EC header CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"validation failed for PEB %d\00", align 1
@__func__.ubi_io_write_ec_hdr = private unnamed_addr constant [20 x i8] c"ubi_io_write_ec_hdr\00", align 1
@__func__.ubi_io_read_vid_hdr = private unnamed_addr constant [20 x i8] c"ubi_io_read_vid_hdr\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"no VID header found at PEB %d, only 0xFF bytes\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"bad CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@__func__.ubi_io_write_vid_hdr = private unnamed_addr constant [21 x i8] c"ubi_io_write_vid_hdr\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"cannot allocate memory to check for 0xFFs\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"err %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@.str.19 = private unnamed_addr constant [69 x i8] c"flash region at PEB %d:%d, length %d does not contain all 0xFF bytes\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"hex dump of the %d-%d region\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@__func__.nor_erase_prepare = private unnamed_addr constant [18 x i8] c"nor_erase_prepare\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"cannot invalidate PEB %d, write returned %d\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"run torture test for PEB %d\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"erased PEB %d, but a non-0xFF byte found\00", align 1
@patterns = internal unnamed_addr constant [3 x i8] c"\A5Z\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"pattern %x checking failed for PEB %d\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"PEB %d passed torture test, do not mark it as bad\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"read problems on freshly erased PEB %d, must be bad\00", align 1
@__func__.do_sync_erase = private unnamed_addr constant [14 x i8] c"do_sync_erase\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"error %d while erasing PEB %d, retry\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"cannot erase PEB %d, error %d\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"cannot erase PEB %d (emulated)\00", align 1
@.str.32 = private unnamed_addr constant [86 x i8] c"node with incompatible UBI version found: this UBI version is %d, image version is %d\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"bad VID header offset %d, expected %d\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"bad data offset %d, expected %d\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"bad erase counter %lld\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"bad EC header\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"bad copy_flag\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"negative values\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"bad vol_id\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"bad compat\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"bad vol_type\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"bad data_pad\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"bad data_size\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"zero used_ebs\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"zero data_size\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"too high lnum\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"non-zero data CRC\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"non-zero data_size\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"zero data_size of copy\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"bad used_ebs\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"bad VID header\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"bad magic %#08x, must be %#08x\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"bad CRC, calculated %#08x, read %#08x\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.54 = private unnamed_addr constant [52 x i8] c"bad VID header magic %#08x at PEB %d, must be %#08x\00", align 1
@.str.55 = private unnamed_addr constant [59 x i8] c"bad VID header CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"cannot allocate memory to check writes\00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"self-check failed for PEB %d:%d, len %d\00", align 1
@.str.58 = private unnamed_addr constant [27 x i8] c"data differ at position %d\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"hex dump of the original buffer from %d to %d\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"hex dump of the read buffer from %d to %d\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp sgt i32 %2, -1
  br i1 %7, label %8, label %12, !prof !9

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, %2
  br i1 %11, label %17, label %12, !prof !9

12:                                               ; preds = %8, %5
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 52
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read, i32 noundef 122, i32 noundef %15) #11
  tail call void @dump_stack() #11
  br label %17

17:                                               ; preds = %12, %8
  %18 = icmp sgt i32 %3, -1
  br i1 %18, label %19, label %24, !prof !9

19:                                               ; preds = %17
  %20 = add i32 %4, %3
  %21 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %24, label %29, !prof !10

24:                                               ; preds = %19, %17
  %25 = tail call ptr @llvm.thread.pointer() #10
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 52
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read, i32 noundef 123, i32 noundef %27) #11
  tail call void @dump_stack() #11
  br label %29

29:                                               ; preds = %24, %19
  %30 = icmp slt i32 %4, 1
  br i1 %30, label %31, label %36, !prof !10

31:                                               ; preds = %29
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 52
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read, i32 noundef 124, i32 noundef %34) #11
  tail call void @dump_stack() #11
  br label %36

36:                                               ; preds = %31, %29
  %37 = tail call fastcc i32 @self_check_not_bad(ptr noundef %0, i32 noundef %2)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %36
  %40 = load i8, ptr %1, align 1
  %41 = xor i8 %40, -1
  store i8 %41, ptr %1, align 1
  %42 = sext i32 %2 to i64
  %43 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %44 = load i32, ptr %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, %42
  %47 = sext i32 %3 to i64
  %48 = add nsw i64 %46, %47
  %49 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @mtd_read(ptr noundef %50, i64 noundef %48, i32 noundef %4, ptr noundef nonnull %6, ptr noundef %1) #10
  switch i32 %51, label %60 [
    i32 0, label %90
    i32 -117, label %52
  ]

52:                                               ; preds = %84, %78, %60, %39
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %2) #10
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, %4
  br i1 %54, label %108, label %55, !prof !9

55:                                               ; preds = %52
  %56 = tail call ptr @llvm.thread.pointer() #10
  %57 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 52
  %58 = load i32, ptr %57, align 8
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read, i32 noundef 169, i32 noundef %58) #11
  call void @dump_stack() #11
  br label %108

60:                                               ; preds = %39
  %61 = icmp eq i32 %51, -74
  %62 = select i1 %61, ptr @.str.1, ptr @.str.2
  %63 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %51, ptr noundef nonnull %62, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %63) #10
  call void @yield() #10
  %64 = load ptr, ptr %49, align 4
  %65 = call i32 @mtd_read(ptr noundef %64, i64 noundef %48, i32 noundef %4, ptr noundef nonnull %6, ptr noundef %1) #10
  switch i32 %65, label %78 [
    i32 0, label %90
    i32 -117, label %52
  ]

66:                                               ; preds = %84
  %67 = icmp ne i32 %89, -74
  %68 = select i1 %67, ptr @.str.2, ptr @.str.1
  %69 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %89, ptr noundef nonnull %68, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %69) #10
  call void @dump_stack() #11
  %70 = load i32, ptr %6, align 4
  %71 = icmp eq i32 %70, %4
  %72 = select i1 %71, i1 true, i1 %67
  br i1 %72, label %108, label %73

73:                                               ; preds = %66
  %74 = tail call ptr @llvm.thread.pointer() #10
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 52
  %76 = load i32, ptr %75, align 8
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read, i32 noundef 190, i32 noundef %76) #11
  call void @dump_stack() #11
  br label %108

78:                                               ; preds = %60
  %79 = icmp eq i32 %65, -74
  %80 = select i1 %79, ptr @.str.1, ptr @.str.2
  %81 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %65, ptr noundef nonnull %80, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %81) #10
  call void @yield() #10
  %82 = load ptr, ptr %49, align 4
  %83 = call i32 @mtd_read(ptr noundef %82, i64 noundef %48, i32 noundef %4, ptr noundef nonnull %6, ptr noundef %1) #10
  switch i32 %83, label %84 [
    i32 0, label %90
    i32 -117, label %52
  ]

84:                                               ; preds = %78
  %85 = icmp eq i32 %83, -74
  %86 = select i1 %85, ptr @.str.1, ptr @.str.2
  %87 = load i32, ptr %6, align 4
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %83, ptr noundef nonnull %86, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %87) #10
  call void @yield() #10
  %88 = load ptr, ptr %49, align 4
  %89 = call i32 @mtd_read(ptr noundef %88, i64 noundef %48, i32 noundef %4, ptr noundef nonnull %6, ptr noundef %1) #10
  switch i32 %89, label %66 [
    i32 0, label %90
    i32 -117, label %52
  ]

90:                                               ; preds = %84, %78, %60, %39
  %91 = load i32, ptr %6, align 4
  %92 = icmp eq i32 %91, %4
  br i1 %92, label %98, label %93, !prof !9

93:                                               ; preds = %90
  %94 = tail call ptr @llvm.thread.pointer() #10
  %95 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 52
  %96 = load i32, ptr %95, align 8
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read, i32 noundef 194, i32 noundef %96) #11
  call void @dump_stack() #11
  br label %98

98:                                               ; preds = %93, %90
  %99 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %100 = load i8, ptr %99, align 4
  %101 = and i8 %100, 16
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = call i32 @prandom_u32() #10
  %105 = urem i32 %104, 200
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %103, %73, %66, %55, %52, %36
  %109 = phi i32 [ %37, %36 ], [ 0, %107 ], [ 5, %103 ], [ %89, %66 ], [ -5, %73 ], [ 5, %55 ], [ 5, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %109
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @self_check_not_bad(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %9 = load ptr, ptr %8, align 4
  %10 = icmp sgt i32 %1, -1
  br i1 %10, label %11, label %15, !prof !9

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %20, label %15, !prof !9

15:                                               ; preds = %11, %7
  %16 = tail call ptr @llvm.thread.pointer() #10
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_is_bad, i32 noundef 576, i32 noundef %18) #11
  tail call void @dump_stack() #11
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, %26
  %31 = tail call i32 @mtd_block_isbad(ptr noundef %9, i64 noundef %30) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %31, i32 noundef %1) #10
  br label %36

34:                                               ; preds = %25
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %34, %33
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  tail call void @dump_stack() #11
  %37 = icmp sgt i32 %31, 0
  %38 = select i1 %37, i32 -22, i32 %31
  br label %39

39:                                               ; preds = %36, %34, %20, %2
  %40 = phi i32 [ %38, %36 ], [ 0, %2 ], [ 0, %34 ], [ 0, %20 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp sgt i32 %2, -1
  br i1 %8, label %9, label %13, !prof !9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, %2
  br i1 %12, label %18, label %13, !prof !9

13:                                               ; preds = %9, %5
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write, i32 noundef 231, i32 noundef %16) #11
  tail call void @dump_stack() #11
  br label %18

18:                                               ; preds = %13, %9
  %19 = icmp sgt i32 %3, -1
  br i1 %19, label %20, label %25, !prof !9

20:                                               ; preds = %18
  %21 = add i32 %4, %3
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %30, !prof !10

25:                                               ; preds = %20, %18
  %26 = tail call ptr @llvm.thread.pointer() #10
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 52
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write, i32 noundef 232, i32 noundef %28) #11
  tail call void @dump_stack() #11
  br label %30

30:                                               ; preds = %25, %20
  %31 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 68
  %32 = load i32, ptr %31, align 8
  %33 = srem i32 %3, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35, !prof !9

35:                                               ; preds = %30
  %36 = tail call ptr @llvm.thread.pointer() #10
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 52
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write, i32 noundef 233, i32 noundef %38) #11
  tail call void @dump_stack() #11
  br label %40

40:                                               ; preds = %35, %30
  %41 = icmp sgt i32 %4, 0
  br i1 %41, label %42, label %46, !prof !9

42:                                               ; preds = %40
  %43 = load i32, ptr %31, align 8
  %44 = srem i32 %4, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46, !prof !9

46:                                               ; preds = %42, %40
  %47 = tail call ptr @llvm.thread.pointer() #10
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 52
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write, i32 noundef 234, i32 noundef %49) #11
  tail call void @dump_stack() #11
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %144

56:                                               ; preds = %51
  %57 = tail call fastcc i32 @self_check_not_bad(ptr noundef %0, i32 noundef %2)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %144

59:                                               ; preds = %56
  %60 = tail call i32 @ubi_self_check_all_ff(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %144

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %64 = load i32, ptr %63, align 4
  %65 = icmp sgt i32 %64, %3
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = tail call fastcc i32 @self_check_peb_ec_hdr(ptr noundef %0, i32 noundef %2)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %144

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @self_check_peb_vid_hdr(ptr noundef %0, i32 noundef %2)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %144

72:                                               ; preds = %69, %62
  %73 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 32
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @prandom_u32() #10
  %79 = urem i32 %78, 500
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %4, i32 noundef %2, i32 noundef %3) #10
  tail call void @dump_stack() #11
  br label %144

82:                                               ; preds = %77, %72
  %83 = sext i32 %2 to i64
  %84 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %85 = load i32, ptr %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %86, %83
  %88 = sext i32 %3 to i64
  %89 = add nsw i64 %87, %88
  %90 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @mtd_write(ptr noundef %91, i64 noundef %89, i32 noundef %4, ptr noundef nonnull %7, ptr noundef %1) #10
  %93 = icmp eq i32 %92, 0
  %94 = load i32, ptr %7, align 4
  br i1 %93, label %96, label %95

95:                                               ; preds = %82
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %92, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %94) #10
  call void @dump_stack() #11
  call void @ubi_dump_flash(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  br label %144

96:                                               ; preds = %82
  %97 = icmp eq i32 %94, %4
  br i1 %97, label %103, label %98, !prof !9

98:                                               ; preds = %96
  %99 = tail call ptr @llvm.thread.pointer() #10
  %100 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 52
  %101 = load i32, ptr %100, align 8
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write, i32 noundef 278, i32 noundef %101) #11
  call void @dump_stack() #11
  br label %103

103:                                              ; preds = %98, %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %104 = load i32, ptr %84, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, %83
  %107 = add nsw i64 %106, %88
  %108 = load i8, ptr %73, align 4
  %109 = and i8 %108, 2
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %136, label %111

111:                                              ; preds = %103
  %112 = call noalias ptr @__vmalloc(i32 noundef %4, i32 noundef 3136) #12
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.56) #10
  br label %136

115:                                              ; preds = %111
  %116 = load ptr, ptr %90, align 4
  %117 = call i32 @mtd_read(ptr noundef %116, i64 noundef %107, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %112) #10
  switch i32 %117, label %140 [
    i32 0, label %118
    i32 -117, label %118
  ]

118:                                              ; preds = %115, %115
  br i1 %41, label %119, label %135

119:                                              ; preds = %132, %118
  %120 = phi i32 [ %133, %132 ], [ 0, %118 ]
  %121 = getelementptr i8, ptr %1, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = getelementptr i8, ptr %112, i32 %120
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %122, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = getelementptr i8, ptr %1, i32 %120
  %128 = getelementptr i8, ptr %112, i32 %120
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %120) #10
  %129 = sub i32 %4, %120
  %130 = call i32 @llvm.smax.i32(i32 %129, i32 128) #10
  %131 = add nuw i32 %130, %120
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %120, i32 noundef %131) #10
  call void @print_hex_dump(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %127, i32 noundef %130, i1 noundef zeroext true) #10
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %120, i32 noundef %131) #10
  call void @print_hex_dump(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %128, i32 noundef %130, i1 noundef zeroext true) #10
  call void @dump_stack() #11
  call void @vfree(ptr noundef nonnull %112) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %144

132:                                              ; preds = %119
  %133 = add nuw nsw i32 %120, 1
  %134 = icmp eq i32 %133, %4
  br i1 %134, label %135, label %119

135:                                              ; preds = %132, %118
  call void @vfree(ptr noundef nonnull %112) #10
  br label %136

136:                                              ; preds = %135, %114, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %137 = add i32 %4, %3
  %138 = load i32, ptr %84, align 4
  %139 = icmp eq i32 %138, %137
  br i1 %139, label %144, label %141

140:                                              ; preds = %115
  call void @vfree(ptr noundef nonnull %112) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %144

141:                                              ; preds = %136
  %142 = sub i32 %138, %137
  %143 = call i32 @ubi_self_check_all_ff(ptr noundef %0, i32 noundef %2, i32 noundef %137, i32 noundef %142)
  br label %144

144:                                              ; preds = %141, %140, %136, %126, %95, %81, %69, %66, %59, %56, %55
  %145 = phi i32 [ -30, %55 ], [ -5, %81 ], [ %57, %56 ], [ %60, %59 ], [ %67, %66 ], [ %70, %69 ], [ %117, %140 ], [ %143, %141 ], [ 0, %136 ], [ %92, %95 ], [ -22, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_self_check_all_ff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, %6
  %11 = sext i32 %2 to i64
  %12 = add nsw i64 %10, %11
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %4
  %18 = tail call noalias ptr @__vmalloc(i32 noundef %3, i32 noundef 3136) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %35

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @mtd_read(ptr noundef %23, i64 noundef %12, i32 noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %18) #10
  switch i32 %24, label %25 [
    i32 0, label %27
    i32 -117, label %27
  ]

25:                                               ; preds = %21
  %26 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %24, i32 noundef %3, i32 noundef %1, i32 noundef %2, i32 noundef %26) #10
  br label %33

27:                                               ; preds = %21, %21
  %28 = call i32 @ubi_check_pattern(ptr noundef nonnull %18, i8 noundef zeroext -1, i32 noundef %3) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  %31 = add i32 %3, %2
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %2, i32 noundef %31) #10
  call void @print_hex_dump(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %18, i32 noundef %3, i1 noundef zeroext true) #10
  br label %33

32:                                               ; preds = %27
  call void @vfree(ptr noundef nonnull %18) #10
  br label %35

33:                                               ; preds = %30, %25
  %34 = phi i32 [ -22, %30 ], [ %24, %25 ]
  call void @dump_stack() #11
  call void @vfree(ptr noundef nonnull %18) #10
  br label %35

35:                                               ; preds = %33, %32, %20, %4
  %36 = phi i32 [ %34, %33 ], [ 0, %32 ], [ 0, %20 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @self_check_peb_ec_hdr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 72
  %9 = load i32, ptr %8, align 8
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3392) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %1, i32 noundef 0, i32 noundef 64)
  switch i32 %13, label %35 [
    i32 5, label %14
    i32 0, label %14
    i32 -74, label %14
  ]

14:                                               ; preds = %12, %12, %12
  %15 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %10, i32 noundef 60) #13
  %16 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %10, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = icmp eq i32 %18, %15
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %15, i32 noundef %18) #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  br label %34

21:                                               ; preds = %14
  %22 = load i8, ptr %3, align 4
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %10, align 64
  %27 = icmp eq i32 %26, 592003669
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %29, i32 noundef 1430407459) #10
  br label %34

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @validate_ec_hdr(ptr noundef %0, ptr noundef nonnull %10) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  br label %34

34:                                               ; preds = %33, %28, %20
  tail call void @ubi_dump_ec_hdr(ptr noundef nonnull %10) #10
  tail call void @dump_stack() #11
  br label %35

35:                                               ; preds = %34, %30, %21, %12
  %36 = phi i32 [ 0, %21 ], [ 0, %30 ], [ %13, %12 ], [ -22, %34 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %37

37:                                               ; preds = %35, %7, %2
  %38 = phi i32 [ %36, %35 ], [ 0, %2 ], [ -12, %7 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @self_check_peb_vid_hdr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3392, i32 noundef 8) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %13 = load i32, ptr %12, align 4
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3136) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %12, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %14, i8 0, i32 %17, i1 false) #10
  %18 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %9, i32 0, i32 1
  store ptr %14, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr i8, ptr %14, i32 %20
  store ptr %21, ptr %9, align 8
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 75
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %12, align 4
  %25 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %1, i32 noundef %23, i32 noundef %24)
  switch i32 %25, label %35 [
    i32 5, label %26
    i32 0, label %26
    i32 -74, label %26
  ]

26:                                               ; preds = %16, %16, %16
  %27 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %21, i32 noundef 60) #13
  %28 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %21, i32 0, i32 15
  %29 = load i32, ptr %28, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = icmp eq i32 %30, %27
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %1, i32 noundef %27, i32 noundef %30) #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  tail call void @ubi_dump_vid_hdr(ptr noundef %21) #10
  tail call void @dump_stack() #11
  br label %35

33:                                               ; preds = %26
  %34 = tail call fastcc i32 @self_check_vid_hdr(ptr noundef %0, i32 noundef %1, ptr noundef %21)
  br label %35

35:                                               ; preds = %33, %32, %16
  %36 = phi i32 [ -22, %32 ], [ %34, %33 ], [ %25, %16 ]
  tail call void @kfree(ptr noundef nonnull %14) #10
  br label %37

37:                                               ; preds = %35, %11
  %38 = phi i32 [ %36, %35 ], [ -12, %11 ]
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %39

39:                                               ; preds = %37, %7, %2
  %40 = phi i32 [ 0, %2 ], [ -12, %7 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_flash(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_sync_erase(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_ec_hdr, align 1
  %7 = alloca %struct.ubi_vid_io_buf, align 8
  %8 = alloca %struct.ubi_vid_hdr, align 1
  %9 = icmp sgt i32 %1, -1
  br i1 %9, label %10, label %14, !prof !9

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %12 = load i32, ptr %11, align 8
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %19, label %14, !prof !9

14:                                               ; preds = %10, %3
  %15 = tail call ptr @llvm.thread.pointer() #10
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 52
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_sync_erase, i32 noundef 527, i32 noundef %17) #11
  tail call void @dump_stack() #11
  br label %19

19:                                               ; preds = %14, %10
  %20 = tail call fastcc i32 @self_check_not_bad(ptr noundef %0, i32 noundef %1)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %139

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %139

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mtd_info, ptr %34, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %76

38:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %6, i8 0, i32 64, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %8, i8 0, i32 64, i1 false) #10, !annotation !8
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %39
  %44 = call i32 @ubi_io_read_ec_hdr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 0) #10
  switch i32 %44, label %45 [
    i32 4, label %49
    i32 3, label %49
    i32 1, label %49
  ]

45:                                               ; preds = %38
  %46 = load ptr, ptr %33, align 4
  %47 = call i32 @mtd_write(ptr noundef %46, i64 noundef %43, i32 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %45, %38, %38, %38
  %50 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %51 = load i32, ptr %50, align 4
  call void @llvm.memset.p0.i32(ptr nonnull align 1 %8, i8 0, i32 %51, i1 false) #10
  %52 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %7, i32 0, i32 1
  store ptr %8, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr i8, ptr %8, i32 %54
  store ptr %55, ptr %7, align 8
  %56 = icmp eq ptr %8, %55
  br i1 %56, label %62, label %57, !prof !9

57:                                               ; preds = %49
  %58 = tail call ptr @llvm.thread.pointer() #10
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 52
  %60 = load i32, ptr %59, align 8
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nor_erase_prepare, i32 noundef 484, i32 noundef %60) #11
  call void @dump_stack() #11
  br label %62

62:                                               ; preds = %57, %49
  %63 = call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 0) #10
  switch i32 %63, label %64 [
    i32 4, label %72
    i32 3, label %72
    i32 1, label %72
  ]

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 75
  %66 = load i32, ptr %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %43, %67
  %69 = load ptr, ptr %33, align 4
  %70 = call i32 @mtd_write(ptr noundef %69, i64 noundef %68, i32 noundef 4, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %62, %62, %62
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %76

73:                                               ; preds = %64, %45
  %74 = phi i32 [ %47, %45 ], [ %70, %64 ]
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %1, i32 noundef %74) #10
  %75 = load i32, ptr %40, align 4
  call void @ubi_dump_flash(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %75) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %139

76:                                               ; preds = %72, %32, %27
  %77 = icmp eq i32 %2, 0
  br i1 %77, label %133, label %78

78:                                               ; preds = %76
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %1) #10
  %79 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 81
  call void @mutex_lock(ptr noundef %79) #10
  %80 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 80
  %81 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  br label %85

82:                                               ; preds = %117
  %83 = add nuw nsw i32 %86, 1
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %124, label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ 0, %78 ], [ %83, %82 ]
  %87 = call fastcc i32 @do_sync_erase(ptr noundef %0, i32 noundef %1) #10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %127

89:                                               ; preds = %85
  %90 = load ptr, ptr %80, align 8
  %91 = load i32, ptr %81, align 4
  %92 = call i32 @ubi_io_read(ptr noundef %0, ptr noundef %90, i32 noundef %1, i32 noundef 0, i32 noundef %91) #10
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %127

94:                                               ; preds = %89
  %95 = load ptr, ptr %80, align 8
  %96 = load i32, ptr %81, align 4
  %97 = call i32 @ubi_check_pattern(ptr noundef %95, i8 noundef zeroext -1, i32 noundef %96) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %1) #10
  br label %125

100:                                              ; preds = %94
  %101 = load ptr, ptr %80, align 8
  %102 = getelementptr [3 x i8], ptr @patterns, i32 0, i32 %86
  %103 = load i8, ptr %102, align 1
  %104 = load i32, ptr %81, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %101, i8 %103, i32 %104, i1 false) #10
  %105 = load ptr, ptr %80, align 8
  %106 = load i32, ptr %81, align 4
  %107 = call i32 @ubi_io_write(ptr noundef %0, ptr noundef %105, i32 noundef %1, i32 noundef 0, i32 noundef %106) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %100
  %110 = load ptr, ptr %80, align 8
  %111 = xor i8 %103, -1
  %112 = load i32, ptr %81, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %110, i8 %111, i32 %112, i1 false) #10
  %113 = load ptr, ptr %80, align 8
  %114 = load i32, ptr %81, align 4
  %115 = call i32 @ubi_io_read(ptr noundef %0, ptr noundef %113, i32 noundef %1, i32 noundef 0, i32 noundef %114) #10
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %109
  %118 = load ptr, ptr %80, align 8
  %119 = load i32, ptr %81, align 4
  %120 = call i32 @ubi_check_pattern(ptr noundef %118, i8 noundef zeroext %103, i32 noundef %119) #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %82

122:                                              ; preds = %117
  %123 = zext i8 %103 to i32
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %123, i32 noundef %1) #10
  br label %125

124:                                              ; preds = %82
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %1) #10
  br label %125

125:                                              ; preds = %124, %122, %99
  %126 = phi i32 [ 3, %124 ], [ -5, %122 ], [ -5, %99 ]
  call void @mutex_unlock(ptr noundef %79) #10
  br label %130

127:                                              ; preds = %109, %100, %89, %85
  %128 = phi i32 [ %87, %85 ], [ %92, %89 ], [ %107, %100 ], [ %115, %109 ]
  call void @mutex_unlock(ptr noundef %79) #10
  switch i32 %128, label %130 [
    i32 5, label %129
    i32 -74, label %129
  ]

129:                                              ; preds = %127, %127
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %1) #10
  br label %139

130:                                              ; preds = %127, %125
  %131 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %130, %76
  %134 = phi i32 [ %131, %130 ], [ 0, %76 ]
  %135 = call fastcc i32 @do_sync_erase(ptr noundef %0, i32 noundef %1)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = add nuw i32 %134, 1
  br label %139

139:                                              ; preds = %137, %133, %130, %129, %73, %26, %19
  %140 = phi i32 [ -30, %26 ], [ %138, %137 ], [ %20, %19 ], [ -5, %73 ], [ %131, %130 ], [ %135, %133 ], [ -5, %129 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_sync_erase(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.erase_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %9, !prof !9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %14, label %9, !prof !9

9:                                                ; preds = %5, %2
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_sync_erase, i32 noundef 313, i32 noundef %12) #11
  tail call void @dump_stack() #11
  br label %14

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %21 = getelementptr inbounds %struct.erase_info, ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %23 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %23, align 8
  %24 = load i32, ptr %20, align 4
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, %19
  store i64 %26, ptr %3, align 8
  store i64 %25, ptr %21, align 8
  %27 = load ptr, ptr %22, align 4
  %28 = call i32 @mtd_erase(ptr noundef %27, ptr noundef nonnull %3) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %18
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %28, i32 noundef %1) #10
  call void @yield() #10
  %31 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %31, align 8
  %32 = load i32, ptr %20, align 4
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, %19
  store i64 %34, ptr %3, align 8
  store i64 %33, ptr %21, align 8
  %35 = load ptr, ptr %22, align 4
  %36 = call i32 @mtd_erase(ptr noundef %35, ptr noundef nonnull %3) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %39

38:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %70

39:                                               ; preds = %30
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %36, i32 noundef %1) #10
  call void @yield() #10
  %40 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %40, align 8
  %41 = load i32, ptr %20, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %19
  store i64 %43, ptr %3, align 8
  store i64 %42, ptr %21, align 8
  %44 = load ptr, ptr %22, align 4
  %45 = call i32 @mtd_erase(ptr noundef %44, ptr noundef nonnull %3) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %39
  call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %45, i32 noundef %1) #10
  call void @yield() #10
  %48 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %48, align 8
  %49 = load i32, ptr %20, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, %19
  store i64 %51, ptr %3, align 8
  store i64 %50, ptr %21, align 8
  %52 = load ptr, ptr %22, align 4
  %53 = call i32 @mtd_erase(ptr noundef %52, ptr noundef nonnull %3) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef %53) #10
  call void @dump_stack() #11
  br label %70

56:                                               ; preds = %47, %39, %30, %18
  %57 = load i32, ptr %20, align 4
  %58 = call i32 @ubi_self_check_all_ff(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 32
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = call i32 @prandom_u32() #10
  %67 = urem i32 %66, 400
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %1) #10
  br label %70

70:                                               ; preds = %69, %65, %60, %56, %55, %38
  %71 = phi i32 [ -30, %38 ], [ %53, %55 ], [ -5, %69 ], [ %58, %56 ], [ 0, %65 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_is_bad(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %4 = load ptr, ptr %3, align 4
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %10, !prof !9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %15, label %10, !prof !9

10:                                               ; preds = %6, %2
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 52
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_is_bad, i32 noundef 576, i32 noundef %13) #11
  tail call void @dump_stack() #11
  br label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, %21
  %26 = tail call i32 @mtd_block_isbad(ptr noundef %4, i64 noundef %25) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %26, i32 noundef %1) #10
  br label %29

29:                                               ; preds = %28, %20, %15
  %30 = phi i32 [ %26, %28 ], [ 0, %15 ], [ %26, %20 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_mark_bad(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 79
  %4 = load ptr, ptr %3, align 4
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %10, !prof !9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %15, label %10, !prof !9

10:                                               ; preds = %6, %2
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 52
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_mark_bad, i32 noundef 606, i32 noundef %13) #11
  tail call void @dump_stack() #11
  br label %15

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.6) #10
  br label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, %26
  %31 = tail call i32 @mtd_block_markbad(ptr noundef %4, i64 noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %31) #10
  br label %34

34:                                               ; preds = %33, %25, %20, %19
  %35 = phi i32 [ -30, %19 ], [ 0, %20 ], [ %31, %33 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_markbad(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_read_ec_hdr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %10, !prof !9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, %1
  br i1 %9, label %15, label %10, !prof !9

10:                                               ; preds = %6, %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 52
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read_ec_hdr, i32 noundef 701, i32 noundef %13) #11
  tail call void @dump_stack() #11
  br label %15

15:                                               ; preds = %10, %6
  %16 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef 0, i32 noundef 64)
  %17 = icmp eq i32 %16, 0
  switch i32 %16, label %51 [
    i32 5, label %18
    i32 0, label %18
    i32 -74, label %18
  ]

18:                                               ; preds = %15, %15, %15
  %19 = load i32, ptr %2, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = icmp eq i32 %19, 592003669
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %16, -74
  br i1 %23, label %51, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @ubi_check_pattern(ptr noundef %2, i8 noundef zeroext -1, i32 noundef 64) #10
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %3, 0
  br i1 %26, label %32, label %28

28:                                               ; preds = %24
  br i1 %27, label %30, label %29

29:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1) #10
  br label %30

30:                                               ; preds = %29, %28
  %31 = select i1 %17, i32 1, i32 2
  br label %51

32:                                               ; preds = %24
  br i1 %27, label %51, label %33

33:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %20, i32 noundef 1430407459) #10
  tail call void @ubi_dump_ec_hdr(ptr noundef %2) #10
  br label %51

34:                                               ; preds = %18
  %35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %2, i32 noundef 60) #13
  %36 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %2, i32 0, i32 8
  %37 = load i32, ptr %36, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = icmp eq i32 %38, %35
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = icmp eq i32 %3, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef %35, i32 noundef %38) #10
  tail call void @ubi_dump_ec_hdr(ptr noundef %2) #10
  br label %43

43:                                               ; preds = %42, %40
  %44 = select i1 %17, i32 3, i32 4
  br label %51

45:                                               ; preds = %34
  %46 = tail call fastcc i32 @validate_ec_hdr(ptr noundef %0, ptr noundef %2)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1) #10
  br label %51

49:                                               ; preds = %45
  %50 = select i1 %17, i32 0, i32 5
  br label %51

51:                                               ; preds = %49, %48, %43, %33, %32, %30, %22, %15
  %52 = phi i32 [ -22, %48 ], [ %50, %49 ], [ 4, %22 ], [ %31, %30 ], [ 3, %33 ], [ 3, %32 ], [ %44, %43 ], [ %16, %15 ]
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_check_pattern(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_ec_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_ec_hdr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 3
  %4 = load i64, ptr %3, align 1
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  %6 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef 1, i32 noundef %16) #10
  br label %30

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 74
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %8, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %8, i32 noundef %19) #10
  br label %30

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %11, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %24) #10
  br label %30

27:                                               ; preds = %22
  %28 = icmp ugt i64 %5, 2147483647
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %5) #10
  br label %30

30:                                               ; preds = %29, %26, %21, %15
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.36) #10
  tail call void @ubi_dump_ec_hdr(ptr noundef %1) #10
  tail call void @dump_stack() #11
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 1, %30 ], [ 0, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_write_ec_hdr(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %9, !prof !9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %14, label %9, !prof !9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @llvm.thread.pointer() #10
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write_ec_hdr, i32 noundef 810, i32 noundef %12) #11
  tail call void @dump_stack() #11
  br label %14

14:                                               ; preds = %9, %5
  store i32 592003669, ptr %2, align 1
  %15 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %2, i32 0, i32 1
  store i8 1, ptr %15, align 1
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 74
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %2, i32 0, i32 4
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 71
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %2, i32 0, i32 5
  store i32 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %2, i32 0, i32 6
  store i32 %26, ptr %27, align 1
  %28 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %2, i32 noundef 60) #13
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %2, i32 0, i32 8
  store i32 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %14
  %36 = tail call fastcc i32 @validate_ec_hdr(ptr noundef %0, ptr noundef %2) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  tail call void @ubi_dump_ec_hdr(ptr noundef %2) #10
  tail call void @dump_stack() #11
  br label %46

39:                                               ; preds = %35, %14
  %40 = tail call i32 @ubi_dbg_power_cut(ptr noundef %0, i32 noundef 1) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 72
  %44 = load i32, ptr %43, align 8
  %45 = tail call i32 @ubi_io_write(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef 0, i32 noundef %44)
  br label %46

46:                                               ; preds = %42, %39, %38
  %47 = phi i32 [ %45, %42 ], [ -22, %38 ], [ -30, %39 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_dbg_power_cut(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp sgt i32 %1, -1
  br i1 %8, label %9, label %13, !prof !9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %18, label %13, !prof !9

13:                                               ; preds = %9, %4
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_read_vid_hdr, i32 noundef 975, i32 noundef %16) #11
  tail call void @dump_stack() #11
  br label %18

18:                                               ; preds = %13, %9
  %19 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 75
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 64
  %24 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %7, i32 noundef %1, i32 noundef %20, i32 noundef %23)
  %25 = icmp eq i32 %24, 0
  switch i32 %24, label %59 [
    i32 5, label %26
    i32 0, label %26
    i32 -74, label %26
  ]

26:                                               ; preds = %18, %18, %18
  %27 = load i32, ptr %5, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = icmp eq i32 %27, 558449237
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %24, -74
  br i1 %31, label %59, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @ubi_check_pattern(ptr noundef %5, i8 noundef zeroext -1, i32 noundef 64) #10
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq i32 %3, 0
  br i1 %34, label %40, label %36

36:                                               ; preds = %32
  br i1 %35, label %38, label %37

37:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %1) #10
  br label %38

38:                                               ; preds = %37, %36
  %39 = select i1 %25, i32 1, i32 2
  br label %59

40:                                               ; preds = %32
  br i1 %35, label %59, label %41

41:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %28, i32 noundef 1430407457) #10
  tail call void @ubi_dump_vid_hdr(ptr noundef %5) #10
  br label %59

42:                                               ; preds = %26
  %43 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %5, i32 noundef 60) #13
  %44 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %5, i32 0, i32 15
  %45 = load i32, ptr %44, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = icmp eq i32 %46, %43
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = icmp eq i32 %3, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %43, i32 noundef %46) #10
  tail call void @ubi_dump_vid_hdr(ptr noundef %5) #10
  br label %51

51:                                               ; preds = %50, %48
  %52 = select i1 %25, i32 3, i32 4
  br label %59

53:                                               ; preds = %42
  %54 = tail call fastcc i32 @validate_vid_hdr(ptr noundef %0, ptr noundef %5)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1) #10
  br label %59

57:                                               ; preds = %53
  %58 = select i1 %25, i32 0, i32 5
  br label %59

59:                                               ; preds = %57, %56, %51, %41, %40, %38, %30, %18
  %60 = phi i32 [ -22, %56 ], [ %58, %57 ], [ 4, %30 ], [ %39, %38 ], [ 3, %41 ], [ 3, %40 ], [ %52, %51 ], [ %24, %18 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_dump_vid_hdr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_vid_hdr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 9
  %19 = load i32, ptr %18, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 10
  %22 = load i32, ptr %21, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %1, i32 0, i32 11
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %27 = load i32, ptr %26, align 8
  %28 = sub i32 %27, %23
  %29 = icmp ugt i8 %6, 1
  br i1 %29, label %82, label %30

30:                                               ; preds = %2
  %31 = icmp slt i32 %9, 0
  %32 = icmp slt i32 %12, 0
  %33 = select i1 %31, i1 true, i1 %32
  %34 = icmp slt i32 %17, 0
  %35 = select i1 %33, i1 true, i1 %34
  %36 = icmp slt i32 %20, 0
  %37 = select i1 %35, i1 true, i1 %36
  %38 = icmp slt i32 %23, 0
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %82, label %40

40:                                               ; preds = %30
  %41 = add nsw i32 %9, -128
  %42 = icmp ult i32 %41, 2147479423
  br i1 %42, label %82, label %43

43:                                               ; preds = %40
  %44 = icmp ult i32 %9, 2147479551
  %45 = icmp ne i8 %14, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %82, label %47

47:                                               ; preds = %43
  %48 = freeze i32 %9
  %49 = icmp ugt i32 %48, 2147479550
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  switch i8 %14, label %82 [
    i8 5, label %51
    i8 4, label %51
    i8 2, label %51
    i8 1, label %51
  ]

51:                                               ; preds = %50, %50, %50, %50, %47
  %52 = add i8 %4, -3
  %53 = icmp ult i8 %52, -2
  br i1 %53, label %82, label %54

54:                                               ; preds = %51
  %55 = sdiv i32 %27, 2
  %56 = icmp slt i32 %23, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = icmp sgt i32 %17, %27
  br i1 %58, label %82, label %59

59:                                               ; preds = %57
  %60 = icmp eq i8 %4, 2
  br i1 %60, label %61, label %72

61:                                               ; preds = %59
  %62 = icmp eq i32 %19, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %61
  %64 = icmp eq i32 %16, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %63
  %66 = add nsw i32 %20, -1
  %67 = icmp slt i32 %12, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = icmp eq i32 %17, %28
  br i1 %69, label %84, label %82

70:                                               ; preds = %65
  %71 = icmp ult i32 %12, %20
  br i1 %71, label %84, label %82

72:                                               ; preds = %59
  %73 = icmp eq i8 %6, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = icmp eq i32 %25, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = icmp eq i32 %16, 0
  br i1 %77, label %80, label %82

78:                                               ; preds = %72
  %79 = icmp eq i32 %16, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %78, %76
  %81 = icmp eq i32 %19, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %80, %78, %76, %74, %70, %68, %63, %61, %57, %54, %51, %50, %43, %40, %30, %2
  %83 = phi ptr [ @.str.37, %2 ], [ @.str.38, %30 ], [ @.str.39, %40 ], [ @.str.40, %43 ], [ @.str.40, %50 ], [ @.str.41, %51 ], [ @.str.42, %54 ], [ @.str.43, %57 ], [ @.str.44, %61 ], [ @.str.45, %63 ], [ @.str.43, %68 ], [ @.str.46, %70 ], [ @.str.47, %74 ], [ @.str.48, %76 ], [ @.str.49, %78 ], [ @.str.50, %80 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull %83) #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.51) #10
  tail call void @ubi_dump_vid_hdr(ptr noundef %1) #10
  tail call void @dump_stack() #11
  br label %84

84:                                               ; preds = %82, %80, %70, %68
  %85 = phi i32 [ 1, %82 ], [ 0, %80 ], [ 0, %68 ], [ 0, %70 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_io_write_vid_hdr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp sgt i32 %1, -1
  br i1 %7, label %8, label %12, !prof !9

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %10 = load i32, ptr %9, align 8
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %17, label %12, !prof !9

12:                                               ; preds = %8, %3
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 52
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_io_write_vid_hdr, i32 noundef 1059, i32 noundef %15) #11
  tail call void @dump_stack() #11
  br label %17

17:                                               ; preds = %12, %8
  %18 = tail call fastcc i32 @self_check_peb_ec_hdr(ptr noundef %0, i32 noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  store i32 558449237, ptr %4, align 1
  %21 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 1
  store i8 1, ptr %21, align 1
  %22 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %4, i32 noundef 60) #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %4, i32 0, i32 15
  store i32 %23, ptr %24, align 1
  %25 = tail call fastcc i32 @self_check_vid_hdr(ptr noundef %0, i32 noundef %1, ptr noundef %4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = tail call i32 @ubi_dbg_power_cut(ptr noundef %0, i32 noundef 2) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 75
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @ubi_io_write(ptr noundef %0, ptr noundef %6, i32 noundef %1, i32 noundef %32, i32 noundef %34)
  br label %36

36:                                               ; preds = %30, %27, %20, %17
  %37 = phi i32 [ %35, %30 ], [ %18, %17 ], [ %25, %20 ], [ -30, %27 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @self_check_vid_hdr(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 1
  %10 = icmp eq i32 %9, 558449237
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %12, i32 noundef %1, i32 noundef 1430407457) #10
  br label %17

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @validate_vid_hdr(ptr noundef %0, ptr noundef %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  br label %17

17:                                               ; preds = %16, %11
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %1) #10
  tail call void @ubi_dump_vid_hdr(ptr noundef %2) #10
  tail call void @dump_stack() #11
  br label %18

18:                                               ; preds = %17, %13, %3
  %19 = phi i32 [ -22, %17 ], [ 0, %3 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
