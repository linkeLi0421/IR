; ModuleID = '/llk/IR/drivers/block/brd.c_pt.bc'
source_filename = "../drivers/block/brd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.62, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.brd_device = type { i32, ptr, %struct.list_head, %struct.spinlock, %struct.xarray, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type {}
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.34 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_rd_nr = internal constant [10 x i8] c"brd.rd_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rd_nr = internal global i32 16, align 4
@__param_rd_nr = internal constant %struct.kernel_param { ptr @__param_str_rd_nr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @rd_nr } }, section "__param", align 4
@__UNIQUE_ID_rd_nrtype276 = internal constant [23 x i8] c"brd.parmtype=rd_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rd_nr277 = internal constant [45 x i8] c"brd.parm=rd_nr:Maximum number of brd devices\00", section ".modinfo", align 1
@rd_size = dso_local global i32 65536, align 4
@__param_str_rd_size = internal constant [12 x i8] c"brd.rd_size\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_rd_size = internal constant %struct.kernel_param { ptr @__param_str_rd_size, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @rd_size } }, section "__param", align 4
@__UNIQUE_ID_rd_sizetype278 = internal constant [27 x i8] c"brd.parmtype=rd_size:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_rd_size279 = internal constant [50 x i8] c"brd.parm=rd_size:Size of each RAM disk in kbytes.\00", section ".modinfo", align 1
@__param_str_max_part = internal constant [13 x i8] c"brd.max_part\00", align 1
@max_part = internal global i32 1, align 4
@__param_max_part = internal constant %struct.kernel_param { ptr @__param_str_max_part, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @max_part } }, section "__param", align 4
@__UNIQUE_ID_max_parttype280 = internal constant [26 x i8] c"brd.parmtype=max_part:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_part281 = internal constant [56 x i8] c"brd.parm=max_part:Num Minors to reserve between devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [27 x i8] c"brd.file=drivers/block/brd\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [16 x i8] c"brd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias284 = internal constant [26 x i8] c"brd.alias=block-major-1-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [13 x i8] c"brd.alias=rd\00", section ".modinfo", align 1
@__setup_str_ramdisk_size = internal constant [14 x i8] c"ramdisk_size=\00", section ".init.rodata", align 1
@__setup_ramdisk_size = internal global %struct.obs_kernel_param { ptr @__setup_str_ramdisk_size, ptr @ramdisk_size, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [8 x i8] c"ramdisk\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\016brd: module unloaded\0A\00", align 1
@__initcall__kmod_brd__286_521_brd_init6 = internal global ptr @brd_init, section ".initcall6.init", align 4
@__exitcall_brd_exit = internal global ptr @brd_exit, section ".exitcall.exit", align 4
@brd_debugfs_dir = internal unnamed_addr global ptr null, align 4
@brd_devices = internal global %struct.list_head { ptr @brd_devices, ptr @brd_devices }, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"drivers/block/brd.c\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ramdisk_pages\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\016brd: module loaded\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\016brd: module NOT loaded !!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\016brd: max_part can't be larger than %d, reset max_part = %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ram%d\00", align 1
@brd_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@brd_fops = internal constant %struct.block_device_operations { ptr @brd_submit_bio, ptr null, ptr null, ptr @brd_rw_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@brd_submit_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias284, ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__UNIQUE_ID_max_part281, ptr @__UNIQUE_ID_max_parttype280, ptr @__UNIQUE_ID_rd_nr277, ptr @__UNIQUE_ID_rd_nrtype276, ptr @__UNIQUE_ID_rd_size279, ptr @__UNIQUE_ID_rd_sizetype278, ptr @__exitcall_brd_exit, ptr @__initcall__kmod_brd__286_521_brd_init6, ptr @__param_max_part, ptr @__param_rd_nr, ptr @__param_rd_size, ptr @__setup_ramdisk_size, ptr @brd_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ramdisk_size(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @simple_strtol(ptr noundef %0, ptr noundef null, i32 noundef 0) #13
  store i32 %2, ptr @rd_size, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brd_exit() #0 section ".exit.text" {
  tail call void @unregister_blkdev(i32 noundef 1, ptr noundef nonnull @.str) #13
  tail call fastcc void @brd_cleanup()
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brd_cleanup() unnamed_addr #2 {
  %1 = alloca [16 x ptr], align 4
  %2 = load ptr, ptr @brd_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %2) #13
  %3 = load ptr, ptr @brd_devices, align 4
  %4 = icmp eq ptr %3, @brd_devices
  br i1 %4, label %48, label %5

5:                                                ; preds = %42, %0
  %6 = phi ptr [ %8, %42 ], [ %3, %0 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr i8, ptr %6, i32 -4
  %10 = load ptr, ptr %9, align 4
  call void @del_gendisk(ptr noundef %10) #13
  %11 = load ptr, ptr %9, align 4
  call void @blk_cleanup_disk(ptr noundef %11) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i32 64, i1 false) #13, !annotation !9
  %12 = getelementptr i8, ptr %6, i32 12
  br label %13

13:                                               ; preds = %38, %5
  %14 = phi i32 [ 0, %5 ], [ %39, %38 ]
  %15 = call i32 @radix_tree_gang_lookup(ptr noundef %12, ptr noundef nonnull %1, i32 noundef %14, i32 noundef 16) #13
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 @__cond_resched() #13
  br label %42

19:                                               ; preds = %35, %13
  %20 = phi i32 [ %25, %35 ], [ %14, %13 ]
  %21 = phi i32 [ %36, %35 ], [ 0, %13 ]
  %22 = getelementptr [16 x ptr], ptr %1, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %20
  br i1 %26, label %27, label %28, !prof !10

27:                                               ; preds = %19
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

28:                                               ; preds = %19
  %29 = call ptr @radix_tree_delete(ptr noundef %12, i32 noundef %25) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !10

31:                                               ; preds = %28
  %32 = load ptr, ptr %22, align 4
  %33 = icmp eq ptr %29, %32
  br i1 %33, label %35, label %34, !prof !12

34:                                               ; preds = %31, %28
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

35:                                               ; preds = %31
  call void @__free_pages(ptr noundef nonnull %29, i32 noundef 0) #13
  %36 = add nuw nsw i32 %21, 1
  %37 = icmp eq i32 %36, %15
  br i1 %37, label %38, label %19

38:                                               ; preds = %35
  %39 = add i32 %25, 1
  %40 = call i32 @__cond_resched() #13
  %41 = icmp eq i32 %15, 16
  br i1 %41, label %13, label %42

42:                                               ; preds = %38, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #13
  %43 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  call void @kfree(ptr noundef %7) #13
  %47 = icmp eq ptr %8, @brd_devices
  br i1 %47, label %48, label %5

48:                                               ; preds = %42, %0
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brd_init() #0 section ".init.text" {
  %1 = load i32, ptr @max_part, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !10

3:                                                ; preds = %0
  store i32 1, ptr @max_part, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 1, %3 ], [ %1, %0 ]
  %6 = urem i32 1048576, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #13, !range !14
  %10 = sub nuw nsw i32 32, %9
  %11 = shl nuw i32 1, %10
  store i32 %11, ptr @max_part, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ %5, %4 ]
  %14 = icmp sgt i32 %13, 256
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 256, i32 noundef 256) #14
  store i32 256, ptr @max_part, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #13
  store ptr %18, ptr @brd_debugfs_dir, align 4
  %19 = load i32, ptr @rd_nr, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %25, label %29

21:                                               ; preds = %25
  %22 = add nuw nsw i32 %26, 1
  %23 = load i32, ptr @rd_nr, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %22, %21 ], [ 0, %17 ]
  %27 = tail call fastcc i32 @brd_alloc(i32 noundef %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %21, label %32

29:                                               ; preds = %21, %17
  %30 = tail call i32 @__register_blkdev(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @brd_probe) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ -5, %29 ], [ %27, %25 ]
  tail call fastcc void @brd_cleanup()
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ @.str.5, %32 ], [ @.str.4, %29 ]
  %36 = phi i32 [ %33, %32 ], [ 0, %29 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %35) #14
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_gang_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brd_alloc(i32 noundef %0) unnamed_addr #2 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @brd_devices, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @brd_devices
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -8
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %58, label %3

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 40) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %11
  store i32 %0, ptr %13, align 8
  %16 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @brd_devices, i32 0, i32 1), align 4
  store ptr %16, ptr getelementptr inbounds (%struct.list_head, ptr @brd_devices, i32 0, i32 1), align 4
  store ptr @brd_devices, ptr %16, align 8
  %18 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 2, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %16, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 3
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 4
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 4, i32 1
  store i32 2592, ptr %21, align 8
  %22 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 4, i32 2
  store ptr null, ptr %22, align 4
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %0)
  %24 = load ptr, ptr @brd_debugfs_dir, align 4
  %25 = icmp eq ptr %24, null
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %27 = or i1 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 5
  call void @debugfs_create_u64(ptr noundef nonnull %2, i16 noundef zeroext 292, ptr noundef nonnull %24, ptr noundef %29) #13
  br label %30

30:                                               ; preds = %28, %15
  %31 = call ptr @__blk_alloc_disk(i32 noundef -1, ptr noundef nonnull @brd_alloc.__key) #13
  %32 = getelementptr inbounds %struct.brd_device, ptr %13, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  store i32 1, ptr %31, align 8
  %35 = load i32, ptr @max_part, align 4
  %36 = mul i32 %35, %0
  %37 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 2
  store i32 %35, ptr %38, align 8
  %39 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 8
  store ptr @brd_fops, ptr %39, align 8
  %40 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 10
  store ptr %13, ptr %40, align 8
  %41 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 3
  %42 = call i32 @strlcpy(ptr noundef %41, ptr noundef nonnull %2, i32 noundef 32) #13
  %43 = load i32, ptr @rd_size, align 4
  %44 = shl i32 %43, 1
  %45 = zext i32 %44 to i64
  call void @set_capacity(ptr noundef nonnull %31, i64 noundef %45) #13
  %46 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  call void @blk_queue_physical_block_size(ptr noundef %47, i32 noundef 4096) #13
  %48 = load ptr, ptr %46, align 4
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %48) #13
  %49 = load ptr, ptr %46, align 4
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %49) #13
  %50 = call i32 @device_add_disk(ptr noundef null, ptr noundef nonnull %31, ptr noundef null) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %34
  call void @blk_cleanup_disk(ptr noundef nonnull %31) #13
  br label %53

53:                                               ; preds = %52, %30
  %54 = phi i32 [ %50, %52 ], [ -12, %30 ]
  %55 = load ptr, ptr %18, align 4
  %56 = load ptr, ptr %16, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  call void @kfree(ptr noundef nonnull %13) #13
  br label %58

58:                                               ; preds = %53, %34, %11, %7
  %59 = phi i32 [ %54, %53 ], [ -12, %11 ], [ 0, %34 ], [ -17, %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brd_probe(i32 noundef %0) #2 {
  %2 = and i32 %0, 1048575
  %3 = load i32, ptr @max_part, align 4
  %4 = udiv i32 %2, %3
  %5 = tail call fastcc i32 @brd_alloc(i32 noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brd_submit_bio(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %79, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 8
  %17 = load i64, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %19 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 2
  br label %20

20:                                               ; preds = %74, %11
  %21 = phi i64 [ %17, %11 ], [ %59, %74 ]
  %22 = phi i32 [ %13, %11 ], [ %76, %74 ]
  %23 = phi i32 [ %15, %11 ], [ %75, %74 ]
  %24 = phi i32 [ %9, %11 ], [ %77, %74 ]
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr %struct.bio_vec, ptr %25, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.bio_vec, ptr %25, i32 %23, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %22
  %31 = lshr i32 %30, 12
  %32 = getelementptr %struct.page, ptr %27, i32 %31
  %33 = getelementptr %struct.bio_vec, ptr %25, i32 %23, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %34, %22
  %36 = tail call i32 @llvm.umin.i32(i32 %24, i32 %35)
  %37 = and i32 %30, 4095
  %38 = sub nuw nsw i32 4096, %37
  %39 = tail call i32 @llvm.umin.i32(i32 %36, i32 %38)
  %40 = and i32 %30, 511
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %39, 511
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  %45 = load i1, ptr @brd_submit_bio.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %20
  store i1 true, ptr @brd_submit_bio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 298, i32 noundef 9, ptr noundef null) #13
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i32, ptr %19, align 4
  %51 = and i32 %50, 255
  %52 = tail call fastcc i32 @brd_do_bvec(ptr noundef %7, ptr noundef %32, i32 noundef %39, i32 noundef %37, i32 noundef %51, i64 noundef %21)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  store i8 10, ptr %55, align 2
  br label %79

56:                                               ; preds = %49
  %57 = lshr i32 %39, 9
  %58 = zext i32 %57 to i64
  %59 = add i64 %21, %58
  %60 = load i32, ptr %19, align 4
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -3
  %63 = and i32 %62, -7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load ptr, ptr %18, align 4
  %67 = add i32 %39, %22
  %68 = getelementptr %struct.bio_vec, ptr %66, i32 %23, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = add i32 %23, %71
  %73 = select i1 %70, i32 0, i32 %67
  br label %74

74:                                               ; preds = %65, %56
  %75 = phi i32 [ %23, %56 ], [ %72, %65 ]
  %76 = phi i32 [ %22, %56 ], [ %73, %65 ]
  %77 = sub i32 %24, %39
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %20

79:                                               ; preds = %74, %54, %1
  tail call void @bio_endio(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brd_rw_page(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @brd_do_bvec(ptr noundef %8, ptr noundef %2, i32 noundef 4096, i32 noundef 0, i32 noundef %3, i64 noundef %1)
  %10 = and i32 %3, 1
  %11 = icmp ne i32 %10, 0
  tail call void @page_endio(ptr noundef %2, i1 noundef zeroext %11, i32 noundef %9) #13
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brd_do_bvec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #2 {
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = trunc i64 %5 to i32
  %11 = shl i32 %10, 9
  %12 = and i32 %11, 3584
  %13 = sub nuw nsw i32 4096, %12
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %2) #13
  %15 = tail call fastcc ptr @brd_insert_page(ptr noundef %0, i64 noundef %5) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %142, label %17

17:                                               ; preds = %9
  %18 = icmp ult i32 %13, %2
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = lshr i32 %14, 9
  %21 = zext i32 %20 to i64
  %22 = add i64 %21, %5
  %23 = tail call fastcc ptr @brd_insert_page(ptr noundef %0, i64 noundef %22) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %142, label %25

25:                                               ; preds = %19, %17, %6
  %26 = load i32, ptr @pgprot_kernel, align 4
  %27 = or i32 %26, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %28 = tail call ptr @llvm.thread.pointer() #13
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 149
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %32 = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %27) #13
  br i1 %8, label %33, label %87

33:                                               ; preds = %25
  %34 = getelementptr i8, ptr %32, i32 %3
  %35 = trunc i64 %5 to i32
  %36 = shl i32 %35, 9
  %37 = and i32 %36, 3584
  %38 = sub nuw nsw i32 4096, %37
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %40 = lshr i64 %5, 3
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.brd_device, ptr %0, i32 0, i32 4
  %43 = tail call ptr @radix_tree_lookup(ptr noundef %42, i32 noundef %41) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %41
  br i1 %48, label %50, label %49, !prof !12

49:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

50:                                               ; preds = %45
  %51 = load i32, ptr @pgprot_kernel, align 4
  %52 = or i32 %51, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %53 = load i32, ptr %29, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %55 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %43, i32 noundef %52) #13
  %56 = getelementptr i8, ptr %55, i32 %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr align 1 %56, i32 %39, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %55) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %57 = load i32, ptr %29, align 8
  %58 = add i32 %57, -1
  store i32 %58, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %60

59:                                               ; preds = %33
  tail call void @llvm.memset.p0.i32(ptr align 1 %34, i8 0, i32 %39, i1 false) #13
  br label %60

60:                                               ; preds = %59, %50
  %61 = icmp ult i32 %38, %2
  br i1 %61, label %62, label %86

62:                                               ; preds = %60
  %63 = getelementptr i8, ptr %34, i32 %39
  %64 = lshr i32 %39, 9
  %65 = zext i32 %64 to i64
  %66 = add i64 %65, %5
  %67 = sub i32 %2, %39
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %68 = lshr i64 %66, 3
  %69 = trunc i64 %68 to i32
  %70 = tail call ptr @radix_tree_lookup(ptr noundef %42, i32 noundef %69) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 1, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %69
  br i1 %75, label %77, label %76, !prof !12

76:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

77:                                               ; preds = %72
  %78 = load i32, ptr @pgprot_kernel, align 4
  %79 = or i32 %78, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %80 = load i32, ptr %29, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %82 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %70, i32 noundef %79) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %63, ptr align 1 %82, i32 %67, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %82) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %83 = load i32, ptr %29, align 8
  %84 = add i32 %83, -1
  store i32 %84, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %86

85:                                               ; preds = %62
  tail call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %67, i1 false) #13
  br label %86

86:                                               ; preds = %85, %77, %60
  tail call void @flush_dcache_page(ptr noundef %1) #13
  br label %139

87:                                               ; preds = %25
  tail call void @flush_dcache_page(ptr noundef %1) #13
  %88 = getelementptr i8, ptr %32, i32 %3
  %89 = trunc i64 %5 to i32
  %90 = shl i32 %89, 9
  %91 = and i32 %90, 3584
  %92 = sub nuw nsw i32 4096, %91
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 %2) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %94 = lshr i64 %5, 3
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.brd_device, ptr %0, i32 0, i32 4
  %97 = tail call ptr @radix_tree_lookup(ptr noundef %96, i32 noundef %95) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.page, ptr %97, i32 0, i32 1, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, %95
  br i1 %102, label %105, label %103, !prof !12

103:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

104:                                              ; preds = %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 202, 0\0A.popsection", ""() #13, !srcloc !22
  unreachable

105:                                              ; preds = %99
  %106 = load i32, ptr @pgprot_kernel, align 4
  %107 = or i32 %106, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %108 = load i32, ptr %29, align 8
  %109 = add i32 %108, 1
  store i32 %109, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %110 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %97, i32 noundef %107) #13
  %111 = getelementptr i8, ptr %110, i32 %91
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %111, ptr align 1 %88, i32 %93, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %110) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %112 = load i32, ptr %29, align 8
  %113 = add i32 %112, -1
  store i32 %113, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %114 = icmp ult i32 %92, %2
  br i1 %114, label %115, label %139

115:                                              ; preds = %105
  %116 = lshr i32 %93, 9
  %117 = zext i32 %116 to i64
  %118 = add i64 %117, %5
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %119 = lshr i64 %118, 3
  %120 = trunc i64 %119 to i32
  %121 = tail call ptr @radix_tree_lookup(ptr noundef %96, i32 noundef %120) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.page, ptr %121, i32 0, i32 1, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, %120
  br i1 %126, label %129, label %127, !prof !12

127:                                              ; preds = %123
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

128:                                              ; preds = %115
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #13, !srcloc !23
  unreachable

129:                                              ; preds = %123
  %130 = sub i32 %2, %93
  %131 = getelementptr i8, ptr %88, i32 %93
  %132 = load i32, ptr @pgprot_kernel, align 4
  %133 = or i32 %132, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %134 = load i32, ptr %29, align 8
  %135 = add i32 %134, 1
  store i32 %135, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %136 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %121, i32 noundef %133) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %136, ptr align 1 %131, i32 %130, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %136) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %137 = load i32, ptr %29, align 8
  %138 = add i32 %137, -1
  store i32 %138, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %139

139:                                              ; preds = %129, %105, %86
  tail call void @kunmap_local_indexed(ptr noundef %32) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %140 = load i32, ptr %29, align 8
  %141 = add i32 %140, -1
  store i32 %141, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %142

142:                                              ; preds = %139, %19, %9
  %143 = phi i32 [ 0, %139 ], [ -28, %9 ], [ -28, %19 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @brd_insert_page(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %3 = lshr i64 %1, 3
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct.brd_device, ptr %0, i32 0, i32 4
  %6 = tail call ptr @radix_tree_lookup(ptr noundef %5, i32 noundef %4) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %45, label %12, !prof !12

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

13:                                               ; preds = %2
  %14 = tail call ptr @__alloc_pages(i32 noundef 3330, i32 noundef 0, i32 noundef 0, ptr noundef null) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @radix_tree_preload(i32 noundef 3072) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @__free_pages(ptr noundef nonnull %14, i32 noundef 0) #13
  br label %45

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.brd_device, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 2
  store i32 %4, ptr %22, align 4
  %23 = tail call i32 @radix_tree_insert(ptr noundef %5, i32 noundef %4, ptr noundef nonnull %14) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  tail call void @__free_pages(ptr noundef nonnull %14, i32 noundef 0) #13
  %26 = tail call ptr @radix_tree_lookup(ptr noundef %5, i32 noundef %4) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !10

28:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #13, !srcloc !24
  unreachable

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %4
  br i1 %32, label %38, label %33, !prof !12

33:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/brd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #13, !srcloc !25
  unreachable

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.brd_device, ptr %0, i32 0, i32 5
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi ptr [ %26, %29 ], [ %14, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !26
  %40 = load i16, ptr %21, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #12, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  br label %45

45:                                               ; preds = %38, %19, %13, %8
  %46 = phi ptr [ null, %19 ], [ %39, %38 ], [ null, %13 ], [ %6, %8 ]
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153146177, i64 2153146661, i64 2153146214, i64 2153146270, i64 2153146304, i64 2153146328, i64 2153146369, i64 2153146390, i64 2153146418, i64 2153146452}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2153147215, i64 2153147699, i64 2153147252, i64 2153147308, i64 2153147342, i64 2153147366, i64 2153147407, i64 2153147428, i64 2153147456, i64 2153147490}
!14 = !{i32 0, i32 33}
!15 = !{i64 2152581030}
!16 = !{i64 2151335504}
!17 = !{i64 2149056284}
!18 = !{i64 2149056501}
!19 = !{i64 2153142684, i64 2153143167, i64 2153142721, i64 2153142777, i64 2153142811, i64 2153142835, i64 2153142876, i64 2153142897, i64 2153142925, i64 2153142959}
!20 = !{i64 2151335711}
!21 = !{i64 2152583655}
!22 = !{i64 2153152390, i64 2153152874, i64 2153152427, i64 2153152483, i64 2153152517, i64 2153152541, i64 2153152582, i64 2153152603, i64 2153152631, i64 2153152665}
!23 = !{i64 2153155080, i64 2153155564, i64 2153155117, i64 2153155173, i64 2153155207, i64 2153155231, i64 2153155272, i64 2153155293, i64 2153155321, i64 2153155355}
!24 = !{i64 2153144109, i64 2153144593, i64 2153144146, i64 2153144202, i64 2153144236, i64 2153144260, i64 2153144301, i64 2153144322, i64 2153144350, i64 2153144384}
!25 = !{i64 2153145137, i64 2153145621, i64 2153145174, i64 2153145230, i64 2153145264, i64 2153145288, i64 2153145329, i64 2153145350, i64 2153145378, i64 2153145412}
!26 = !{i64 2148937929}
!27 = !{i64 2148933753}
!28 = !{i64 2148933828, i64 2148933855, i64 2148933902, i64 2148933924, i64 2148933952, i64 2148933972}
!29 = !{i64 2148960932}
!30 = !{i64 490266}
!31 = !{i64 2150257045}
