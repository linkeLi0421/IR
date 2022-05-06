; ModuleID = '/llk/IR/fs/ntfs/aops.c_pt.bc'
source_filename = "../fs/ntfs/aops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.68, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, ptr, ptr, %struct.rw_semaphore, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.runlist_element = type { i64, i64, i64 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.79 }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.80 = type { i32, i16, i8, i8 }

@ntfs_normal_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr null, ptr @ntfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, align 4
@ntfs_compressed_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr null, ptr @ntfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, align 4
@ntfs_mst_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr null, ptr @ntfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, align 4
@__func__.ntfs_read_block = private unnamed_addr constant [16 x i8] c"ntfs_read_block\00", align 1
@.str = private unnamed_addr constant [150 x i8] c"Failed to read from inode 0x%lx, attribute type 0x%x, vcn 0x%llx, offset 0x%x because its location on disk could not be determined%s (error code %i).\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" even after retrying\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.ntfs_end_buffer_async_read = private unnamed_addr constant [27 x i8] c"ntfs_end_buffer_async_read\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Buffer I/O error, logical block 0x%llx.\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.ntfs_bmap = private unnamed_addr constant [10 x i8] c"ntfs_bmap\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"BMAP does not make sense for %s attributes, returning 0.\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"non-data\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"resident\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"Not enough memory to complete mapping for inode 0x%lx.  Returning 0.\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Failed to complete mapping for inode 0x%lx.  Run chkdsk.  Returning 0.\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ntfs_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca [8 x ptr], align 4
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %1 to i32
  %6 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  br label %8

8:                                                ; preds = %390, %2
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %8
  %13 = add i32 %9, -1
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %5, %8 ]
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

21:                                               ; preds = %14
  %22 = load ptr, ptr %6, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 22
  %25 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 13
  br label %26

26:                                               ; preds = %34, %21
  %27 = load volatile i32, ptr %24, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %31 = load volatile i32, ptr %24, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %27, %26 ], [ %31, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %36 = load i64, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %37 = load volatile i32, ptr %24, align 4
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %39, label %26

39:                                               ; preds = %34
  %40 = load i32, ptr %7, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 %36, 4095
  %43 = ashr i64 %42, 12
  %44 = icmp sgt i64 %43, %41
  br i1 %44, label %46, label %45, !prof !8

45:                                               ; preds = %39
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %457

46:                                               ; preds = %39
  %47 = load volatile i32, ptr %4, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !8

50:                                               ; preds = %46
  %51 = add i32 %47, -1
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ %5, %46 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void @unlock_page(ptr noundef %1) #8
  br label %461

59:                                               ; preds = %52
  %60 = getelementptr i8, ptr %23, i32 -200
  %61 = getelementptr i8, ptr %23, i32 -156
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 160
  br i1 %63, label %90, label %64

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %23, i32 -176
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = icmp eq i32 %62, 128
  br i1 %70, label %459, label %71, !prof !8

71:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

72:                                               ; preds = %64
  %73 = load volatile i32, ptr %65, align 4
  %74 = and i32 %73, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %72
  %77 = load volatile i32, ptr %65, align 4
  %78 = and i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = icmp eq i32 %62, 128
  br i1 %81, label %83, label %82, !prof !8

82:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %23, i32 -148
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87, !prof !8

87:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

88:                                               ; preds = %83
  %89 = tail call i32 @ntfs_read_compressed_block(ptr noundef %1) #8
  br label %461

90:                                               ; preds = %76, %72, %59
  %91 = getelementptr i8, ptr %23, i32 -176
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %370, label %95

95:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #8, !annotation !19
  %96 = load ptr, ptr %6, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 -200
  %99 = getelementptr i8, ptr %97, i32 -160
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i8, ptr %97, i32 -144
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = getelementptr i8, ptr %97, i32 -172
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = getelementptr i8, ptr %97, i32 -176
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114, !prof !9

113:                                              ; preds = %108
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

114:                                              ; preds = %108, %104, %95
  %115 = load ptr, ptr %100, align 8
  %116 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 3
  %117 = load i32, ptr %116, align 16
  %118 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 2
  %119 = load i8, ptr %118, align 4
  %120 = load volatile i32, ptr %1, align 4
  %121 = and i32 %120, 8192
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  tail call void @create_empty_buffers(ptr noundef %1, i32 noundef %117, i32 noundef 0) #8
  %124 = load volatile i32, ptr %1, align 4
  %125 = and i32 %124, 8192
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %366, label %127, !prof !9

127:                                              ; preds = %123, %114
  %128 = load volatile i32, ptr %1, align 4
  %129 = and i32 %128, 8192
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132, !prof !9

131:                                              ; preds = %127
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = inttoptr i32 %134 to ptr
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %137, label %138, !prof !9

137:                                              ; preds = %132
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

138:                                              ; preds = %132
  %139 = load i32, ptr %7, align 4
  %140 = zext i8 %119 to i32
  %141 = sub nsw i32 12, %140
  %142 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %98) #8
  %143 = getelementptr i8, ptr %97, i32 -184
  %144 = load i64, ptr %143, align 8
  %145 = zext i32 %117 to i64
  %146 = add nsw i64 %145, -1
  %147 = getelementptr i8, ptr %97, i32 -192
  %148 = load i64, ptr %147, align 8
  %149 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 22
  %150 = getelementptr inbounds %struct.inode, ptr %97, i32 0, i32 13
  br label %151

151:                                              ; preds = %159, %138
  %152 = load volatile i32, ptr %149, align 4
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %155, %151
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %156 = load volatile i32, ptr %149, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %155

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %152, %151 ], [ %156, %155 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %161 = load i64, ptr %150, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %162 = load volatile i32, ptr %149, align 4
  %163 = icmp eq i32 %162, %160
  br i1 %163, label %164, label %151

164:                                              ; preds = %159
  %165 = zext i32 %141 to i64
  %166 = zext i8 %119 to i64
  %167 = zext i32 %139 to i64
  %168 = shl i64 %167, %165
  %169 = add i64 %144, %146
  %170 = ashr i64 %169, %166
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %98, i32 noundef %142) #8
  %171 = icmp sgt i64 %148, %161
  br i1 %171, label %172, label %173, !prof !9

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %164
  %174 = phi i64 [ %161, %172 ], [ %148, %164 ]
  %175 = add i64 %174, %146
  %176 = ashr i64 %175, %166
  %177 = getelementptr inbounds %struct.ntfs_volume, ptr %100, i32 0, i32 13
  %178 = getelementptr inbounds %struct.ntfs_volume, ptr %100, i32 0, i32 12
  %179 = getelementptr i8, ptr %97, i32 -140
  %180 = getelementptr i8, ptr %97, i32 -172
  %181 = getelementptr i8, ptr %97, i32 -156
  br label %182

182:                                              ; preds = %303, %173
  %183 = phi ptr [ null, %173 ], [ %304, %303 ]
  %184 = phi ptr [ %135, %173 ], [ %309, %303 ]
  %185 = phi i64 [ %168, %173 ], [ %307, %303 ]
  %186 = phi i32 [ 0, %173 ], [ %306, %303 ]
  %187 = phi i32 [ 0, %173 ], [ %305, %303 ]
  %188 = load volatile i32, ptr %184, align 4
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %303, !prof !8

191:                                              ; preds = %182
  %192 = load volatile i32, ptr %184, align 4
  %193 = and i32 %192, 16
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195, !prof !8

195:                                              ; preds = %191
  %196 = add i32 %187, 1
  %197 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %187
  store ptr %184, ptr %197, align 4
  br label %303

198:                                              ; preds = %191
  %199 = load ptr, ptr %100, align 8
  %200 = getelementptr inbounds %struct.super_block, ptr %199, i32 0, i32 20
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 6
  store ptr %201, ptr %202, align 8
  %203 = icmp ult i64 %185, %170
  br i1 %203, label %204, label %288

204:                                              ; preds = %198
  %205 = shl i64 %185, %166
  %206 = load i8, ptr %177, align 8
  %207 = zext i8 %206 to i64
  %208 = ashr i64 %205, %207
  %209 = load i32, ptr %178, align 4
  %210 = trunc i64 %205 to i32
  %211 = and i32 %209, %210
  %212 = icmp eq ptr %183, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %256, %204
  %214 = phi i1 [ true, %256 ], [ false, %204 ]
  tail call void @down_read(ptr noundef %179) #8
  %215 = load ptr, ptr %101, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %255, label %217, !prof !9

217:                                              ; preds = %213, %204
  %218 = phi i1 [ %214, %213 ], [ false, %204 ]
  %219 = phi ptr [ %215, %213 ], [ %183, %204 ]
  br label %220

220:                                              ; preds = %225, %217
  %221 = phi ptr [ %226, %225 ], [ %219, %217 ]
  %222 = getelementptr inbounds %struct.runlist_element, ptr %221, i32 0, i32 2
  %223 = load i64, ptr %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = getelementptr %struct.runlist_element, ptr %221, i32 1
  %227 = load i64, ptr %226, align 8
  %228 = icmp sgt i64 %227, %208
  br i1 %228, label %229, label %220

229:                                              ; preds = %225, %220
  %230 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %221, i64 noundef %208) #8
  %231 = icmp sgt i64 %230, -1
  br i1 %231, label %232, label %249

232:                                              ; preds = %229
  %233 = load i8, ptr %177, align 8
  %234 = zext i8 %233 to i64
  %235 = shl i64 %230, %234
  %236 = zext i32 %211 to i64
  %237 = add i64 %235, %236
  %238 = ashr i64 %237, %166
  %239 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 3
  store i64 %238, ptr %239, align 8
  %240 = load volatile i32, ptr %184, align 4
  %241 = and i32 %240, 16
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %232
  tail call void @_set_bit(i32 noundef 4, ptr noundef %184) #8
  br label %244

244:                                              ; preds = %243, %232
  %245 = icmp ult i64 %185, %176
  br i1 %245, label %246, label %292

246:                                              ; preds = %244
  %247 = add i32 %187, 1
  %248 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %187
  store ptr %184, ptr %248, align 4
  br label %303

249:                                              ; preds = %229
  %250 = icmp eq i64 %230, -1
  br i1 %250, label %288, label %251

251:                                              ; preds = %249
  %252 = xor i1 %218, true
  %253 = icmp eq i64 %230, -2
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %256, label %259

255:                                              ; preds = %213
  br i1 %214, label %261, label %256

256:                                              ; preds = %255, %251
  tail call void @up_read(ptr noundef %179) #8
  %257 = tail call i32 @ntfs_map_runlist(ptr noundef %98, i64 noundef %208) #8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %213, label %264, !prof !8

259:                                              ; preds = %251
  %260 = icmp eq ptr %221, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %259, %255
  %262 = phi i1 [ %218, %259 ], [ true, %255 ]
  %263 = phi i64 [ %230, %259 ], [ -2, %255 ]
  tail call void @up_read(ptr noundef %179) #8
  br label %264

264:                                              ; preds = %261, %259, %256
  %265 = phi i64 [ %230, %259 ], [ %263, %261 ], [ -2, %256 ]
  %266 = phi ptr [ %221, %259 ], [ null, %261 ], [ null, %256 ]
  %267 = phi i32 [ 0, %259 ], [ 0, %261 ], [ %257, %256 ]
  %268 = phi i1 [ %218, %259 ], [ %262, %261 ], [ true, %256 ]
  %269 = icmp eq i32 %267, -2
  %270 = icmp eq i64 %265, -3
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %288, label %272

272:                                              ; preds = %264
  %273 = icmp eq i32 %267, 0
  %274 = select i1 %273, i32 -5, i32 %267
  %275 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 3
  store i64 -1, ptr %275, align 8
  %276 = load volatile i32, ptr %4, align 4
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279, !prof !8

279:                                              ; preds = %272
  %280 = add i32 %276, -1
  br label %281

281:                                              ; preds = %279, %272
  %282 = phi i32 [ %280, %279 ], [ %5, %272 ]
  %283 = inttoptr i32 %282 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %283) #8
  %284 = load ptr, ptr %100, align 8
  %285 = load i32, ptr %180, align 4
  %286 = load i32, ptr %181, align 4
  %287 = select i1 %268, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_block, ptr noundef %284, ptr noundef nonnull @.str, i32 noundef %285, i32 noundef %286, i64 noundef %208, i32 noundef %211, ptr noundef nonnull %287, i32 noundef %274) #8
  br label %288

288:                                              ; preds = %281, %264, %249, %198
  %289 = phi ptr [ %183, %198 ], [ %266, %264 ], [ %221, %249 ], [ %266, %281 ]
  %290 = phi i32 [ 0, %198 ], [ 0, %264 ], [ 0, %249 ], [ %274, %281 ]
  %291 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 3
  store i64 4294967295, ptr %291, align 8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %184) #8
  br label %292

292:                                              ; preds = %288, %244
  %293 = phi ptr [ %289, %288 ], [ %221, %244 ]
  %294 = phi i32 [ %290, %288 ], [ 0, %244 ]
  %295 = mul i32 %186, %117
  %296 = add i32 %295, %117
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef %295, i32 noundef %296, i32 noundef 0, i32 noundef 0) #8
  %297 = icmp eq i32 %294, 0
  br i1 %297, label %298, label %303, !prof !8

298:                                              ; preds = %292
  %299 = load volatile i32, ptr %184, align 4
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  tail call void @_set_bit(i32 noundef 0, ptr noundef %184) #8
  br label %303

303:                                              ; preds = %302, %298, %292, %246, %195, %182
  %304 = phi ptr [ %183, %195 ], [ %183, %182 ], [ %293, %292 ], [ %221, %246 ], [ %293, %298 ], [ %293, %302 ]
  %305 = phi i32 [ %196, %195 ], [ %187, %182 ], [ %187, %292 ], [ %247, %246 ], [ %187, %298 ], [ %187, %302 ]
  %306 = add i32 %186, 1
  %307 = add i64 %185, 1
  %308 = getelementptr inbounds %struct.buffer_head, ptr %184, i32 0, i32 1
  %309 = load ptr, ptr %308, align 4
  %310 = icmp eq ptr %309, %135
  br i1 %310, label %311, label %182

311:                                              ; preds = %303
  %312 = icmp eq ptr %304, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %311
  tail call void @up_read(ptr noundef %179) #8
  br label %314

314:                                              ; preds = %313, %311
  %315 = icmp eq i32 %305, 0
  br i1 %315, label %353, label %316

316:                                              ; preds = %314
  %317 = icmp sgt i32 %305, 0
  br i1 %317, label %318, label %368

318:                                              ; preds = %337, %316
  %319 = phi i32 [ %338, %337 ], [ 0, %316 ]
  %320 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %319
  %321 = load ptr, ptr %320, align 4
  %322 = load volatile i32, ptr %321, align 4
  %323 = and i32 %322, 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %321) #8, !srcloc !23
  %326 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %321, ptr %321, i32 4, ptr elementtype(i32) %321) #8, !srcloc !24
  %327 = extractvalue { i32, i32, i32 } %326, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %328 = and i32 %327, 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %325, %318
  tail call void @__lock_buffer(ptr noundef %321) #8
  br label %331

331:                                              ; preds = %330, %325
  %332 = getelementptr inbounds %struct.buffer_head, ptr %321, i32 0, i32 7
  store ptr @ntfs_end_buffer_async_read, ptr %332, align 4
  %333 = load volatile i32, ptr %321, align 4
  %334 = and i32 %333, 64
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  tail call void @_set_bit(i32 noundef 6, ptr noundef %321) #8
  br label %337

337:                                              ; preds = %336, %331
  %338 = add nuw nsw i32 %319, 1
  %339 = icmp eq i32 %338, %305
  br i1 %339, label %340, label %318

340:                                              ; preds = %350, %337
  %341 = phi i32 [ %351, %350 ], [ 0, %337 ]
  %342 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %341
  %343 = load ptr, ptr %342, align 4
  %344 = load volatile i32, ptr %343, align 4
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %349, !prof !8

347:                                              ; preds = %340
  %348 = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %343) #8
  br label %350

349:                                              ; preds = %340
  tail call void @ntfs_end_buffer_async_read(ptr noundef %343, i32 noundef 1) #8
  br label %350

350:                                              ; preds = %349, %347
  %351 = add nuw nsw i32 %341, 1
  %352 = icmp eq i32 %351, %305
  br i1 %352, label %368, label %340

353:                                              ; preds = %314
  %354 = load volatile i32, ptr %4, align 4
  %355 = and i32 %354, 1
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357, !prof !8

357:                                              ; preds = %353
  %358 = add i32 %354, -1
  br label %359

359:                                              ; preds = %357, %353
  %360 = phi i32 [ %358, %357 ], [ %5, %353 ]
  %361 = inttoptr i32 %360 to ptr
  %362 = load volatile i32, ptr %361, align 4
  %363 = and i32 %362, 256
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %366, !prof !8

365:                                              ; preds = %359
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !26
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #8
  br label %366

366:                                              ; preds = %365, %359, %123
  %367 = phi i32 [ -12, %123 ], [ 0, %365 ], [ -5, %359 ]
  tail call void @unlock_page(ptr noundef %1) #8
  br label %368

368:                                              ; preds = %366, %350, %316
  %369 = phi i32 [ 0, %316 ], [ %367, %366 ], [ 0, %350 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  br label %461

370:                                              ; preds = %90
  %371 = icmp eq i32 %40, 0
  br i1 %371, label %373, label %372, !prof !8

372:                                              ; preds = %370
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %457

373:                                              ; preds = %370
  %374 = load volatile i32, ptr %91, align 4
  %375 = and i32 %374, 8
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %373
  %378 = getelementptr i8, ptr %23, i32 -8
  %379 = load ptr, ptr %378, align 8
  br label %380

380:                                              ; preds = %377, %373
  %381 = phi ptr [ %379, %377 ], [ %60, %373 ]
  %382 = tail call ptr @map_mft_record(ptr noundef %381) #8
  %383 = icmp ugt ptr %382, inttoptr (i32 -4096 to ptr)
  br i1 %383, label %384, label %386

384:                                              ; preds = %380
  %385 = ptrtoint ptr %382 to i32
  br label %459

386:                                              ; preds = %380
  %387 = load volatile i32, ptr %91, align 4
  %388 = and i32 %387, 32
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %391, label %390, !prof !8

390:                                              ; preds = %386
  tail call void @unmap_mft_record(ptr noundef %381) #8
  br label %8

391:                                              ; preds = %386
  %392 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %381, ptr noundef %382) #8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %455, label %394, !prof !9

394:                                              ; preds = %391
  %395 = getelementptr i8, ptr %23, i32 -156
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr i8, ptr %23, i32 -152
  %398 = load ptr, ptr %397, align 8
  %399 = getelementptr i8, ptr %23, i32 -148
  %400 = load i32, ptr %399, align 4
  %401 = tail call i32 @ntfs_attr_lookup(i32 noundef %396, ptr noundef %398, i32 noundef %400, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %392) #8
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %454, !prof !8

403:                                              ; preds = %394
  %404 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %392, i32 0, i32 1
  %405 = load ptr, ptr %404, align 4
  %406 = getelementptr inbounds %struct.ATTR_RECORD, ptr %405, i32 0, i32 7
  %407 = load i32, ptr %406, align 1
  %408 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %60) #8
  %409 = zext i32 %407 to i64
  %410 = getelementptr i8, ptr %23, i32 -192
  %411 = load i64, ptr %410, align 8
  %412 = icmp slt i64 %411, %409
  br i1 %412, label %413, label %415, !prof !9

413:                                              ; preds = %403
  %414 = trunc i64 %411 to i32
  br label %415

415:                                              ; preds = %413, %403
  %416 = phi i32 [ %414, %413 ], [ %407, %403 ]
  br label %417

417:                                              ; preds = %425, %415
  %418 = load volatile i32, ptr %24, align 4
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %425, label %421

421:                                              ; preds = %421, %417
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %422 = load volatile i32, ptr %24, align 4
  %423 = and i32 %422, 1
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %421

425:                                              ; preds = %421, %417
  %426 = phi i32 [ %418, %417 ], [ %422, %421 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %427 = load i64, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %428 = load volatile i32, ptr %24, align 4
  %429 = icmp eq i32 %428, %426
  br i1 %429, label %430, label %417

430:                                              ; preds = %425
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %60, i32 noundef %408) #8
  %431 = zext i32 %416 to i64
  %432 = icmp slt i64 %427, %431
  br i1 %432, label %433, label %435, !prof !9

433:                                              ; preds = %430
  %434 = trunc i64 %427 to i32
  br label %435

435:                                              ; preds = %433, %430
  %436 = phi i32 [ %434, %433 ], [ %416, %430 ]
  %437 = load i32, ptr @pgprot_kernel, align 4
  %438 = or i32 %437, 512
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %439 = tail call ptr @llvm.thread.pointer() #8
  %440 = getelementptr inbounds %struct.task_struct, ptr %439, i32 0, i32 149
  %441 = load i32, ptr %440, align 8
  %442 = add i32 %441, 1
  store i32 %442, ptr %440, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %443 = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %438) #8
  %444 = load ptr, ptr %404, align 4
  %445 = getelementptr inbounds %struct.ATTR_RECORD, ptr %444, i32 0, i32 7
  %446 = getelementptr inbounds %struct.anon.80, ptr %445, i32 0, i32 1
  %447 = load i16, ptr %446, align 1
  %448 = zext i16 %447 to i32
  %449 = getelementptr i8, ptr %444, i32 %448
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %443, ptr align 1 %449, i32 %436, i1 false)
  %450 = getelementptr i8, ptr %443, i32 %436
  %451 = sub i32 4096, %436
  tail call void @llvm.memset.p0.i32(ptr align 1 %450, i8 0, i32 %451, i1 false)
  tail call void @flush_dcache_page(ptr noundef %1) #8
  tail call void @kunmap_local_indexed(ptr noundef %443) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %452 = load i32, ptr %440, align 8
  %453 = add i32 %452, -1
  store i32 %453, ptr %440, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  br label %454

454:                                              ; preds = %435, %394
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %392) #8
  br label %455

455:                                              ; preds = %454, %391
  %456 = phi i32 [ %401, %454 ], [ -12, %391 ]
  tail call void @unmap_mft_record(ptr noundef %381) #8
  br label %457

457:                                              ; preds = %455, %372, %45
  %458 = phi i32 [ 0, %45 ], [ 0, %372 ], [ %456, %455 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !26
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #8
  br label %459

459:                                              ; preds = %457, %384, %69
  %460 = phi i32 [ %458, %457 ], [ %385, %384 ], [ -13, %69 ]
  tail call void @unlock_page(ptr noundef %1) #8
  br label %461

461:                                              ; preds = %459, %368, %88, %58
  %462 = phi i32 [ %460, %459 ], [ 0, %58 ], [ %89, %88 ], [ %369, %368 ]
  ret i32 %462
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ntfs_bmap(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 -200
  %5 = getelementptr i8, ptr %3, i32 -160
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %3, i32 -156
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 128
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %3, i32 -176
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %21

19:                                               ; preds = %2
  %20 = load ptr, ptr %6, align 8
  br label %27

21:                                               ; preds = %15, %10
  %22 = load ptr, ptr %6, align 8
  %23 = load volatile i32, ptr %11, align 4
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.6, ptr @.str.7
  br label %27

27:                                               ; preds = %21, %19
  %28 = phi ptr [ %22, %21 ], [ %20, %19 ]
  %29 = phi ptr [ %26, %21 ], [ @.str.5, %19 ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef %28, ptr noundef nonnull @.str.4, ptr noundef nonnull %29) #8
  br label %103

30:                                               ; preds = %15
  %31 = load volatile i32, ptr %11, align 4
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1568, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

35:                                               ; preds = %30
  %36 = load volatile i32, ptr %11, align 4
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1569, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 16
  %44 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 2
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i64
  %47 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %4) #8
  %48 = getelementptr i8, ptr %3, i32 -192
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 22
  %51 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  br label %52

52:                                               ; preds = %60, %40
  %53 = load volatile i32, ptr %50, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %56, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %57 = load volatile i32, ptr %50, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %56

60:                                               ; preds = %56, %52
  %61 = phi i32 [ %53, %52 ], [ %57, %56 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %62 = load i64, ptr %51, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %63 = load volatile i32, ptr %50, align 4
  %64 = icmp eq i32 %63, %61
  br i1 %64, label %65, label %52

65:                                               ; preds = %60
  %66 = shl i64 %1, %46
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %4, i32 noundef %47) #8
  %67 = icmp slt i64 %66, %49
  br i1 %67, label %68, label %103, !prof !8

68:                                               ; preds = %65
  %69 = zext i32 %43 to i64
  %70 = add i64 %66, %69
  %71 = icmp sgt i64 %70, %49
  %72 = icmp slt i64 %49, %62
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %103, label %74, !prof !9

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 13
  %76 = load i8, ptr %75, align 8
  %77 = getelementptr i8, ptr %3, i32 -140
  tail call void @down_read(ptr noundef %77) #8
  %78 = zext i8 %76 to i64
  %79 = ashr i64 %66, %78
  %80 = tail call i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef %4, i64 noundef %79, i1 noundef zeroext false) #8
  tail call void @up_read(ptr noundef %77) #8
  %81 = icmp slt i64 %80, -1
  br i1 %81, label %82, label %92, !prof !9

82:                                               ; preds = %74
  %83 = trunc i64 %80 to i32
  switch i32 %83, label %88 [
    i32 -3, label %103
    i32 -4, label %84
  ]

84:                                               ; preds = %82
  %85 = load ptr, ptr %6, align 8
  %86 = getelementptr i8, ptr %3, i32 -172
  %87 = load i32, ptr %86, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef %85, ptr noundef nonnull @.str.8, i32 noundef %87) #8
  br label %103

88:                                               ; preds = %82
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr i8, ptr %3, i32 -172
  %91 = load i32, ptr %90, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef %89, ptr noundef nonnull @.str.9, i32 noundef %91) #8
  br label %103

92:                                               ; preds = %74
  %93 = icmp slt i64 %80, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.ntfs_volume, ptr %6, i32 0, i32 12
  %96 = load i32, ptr %95, align 4
  %97 = trunc i64 %66 to i32
  %98 = and i32 %96, %97
  %99 = shl i64 %80, %78
  %100 = zext i32 %98 to i64
  %101 = add i64 %99, %100
  %102 = ashr i64 %101, %46
  br label %103

103:                                              ; preds = %94, %92, %88, %84, %82, %68, %65, %27
  %104 = phi i64 [ 0, %27 ], [ %102, %94 ], [ 0, %88 ], [ 0, %84 ], [ 0, %65 ], [ 0, %68 ], [ 0, %82 ], [ 0, %92 ]
  ret i64 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_compressed_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %0) unnamed_addr #3 {
  %2 = load i32, ptr @pgprot_kernel, align 4
  %3 = or i32 %2, 512
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 149
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %8 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %3) #8
  ret ptr %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_map_runlist(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ntfs_end_buffer_async_read(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -200
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %71, label %10, !prof !9

10:                                               ; preds = %2
  %11 = load volatile i32, ptr %0, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #8
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, 4095
  %23 = zext i32 %22 to i64
  %24 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %8) #8
  %25 = getelementptr i8, ptr %7, i32 -192
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 22
  %28 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  br label %29

29:                                               ; preds = %37, %15
  %30 = load volatile i32, ptr %27, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %33, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !12
  %34 = load volatile i32, ptr %27, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %30, %29 ], [ %34, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %39 = load i64, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %40 = load volatile i32, ptr %27, align 4
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %42, label %29

42:                                               ; preds = %37
  %43 = shl nuw nsw i64 %18, 12
  %44 = or i64 %43, %23
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %8, i32 noundef %24) #8
  %45 = icmp sgt i64 %26, %39
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i64 [ %39, %46 ], [ %26, %42 ]
  %49 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = zext i32 %50 to i64
  %52 = add nuw nsw i64 %44, %51
  %53 = icmp sgt i64 %52, %48
  br i1 %53, label %54, label %88, !prof !9

54:                                               ; preds = %47
  %55 = icmp sgt i64 %48, %44
  %56 = sub i64 %48, %44
  %57 = trunc i64 %56 to i32
  %58 = select i1 %55, i32 %57, i32 0
  %59 = tail call fastcc ptr @kmap_atomic(ptr noundef %4)
  %60 = load ptr, ptr %19, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = and i32 %61, 4095
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = getelementptr i8, ptr %63, i32 %58
  %65 = load i32, ptr %49, align 8
  %66 = sub i32 %65, %58
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 0, i32 %66, i1 false)
  tail call void @flush_dcache_page(ptr noundef %4) #8
  tail call void @kunmap_local_indexed(ptr noundef %59) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %67 = tail call ptr @llvm.thread.pointer() #8
  %68 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 149
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  br label %88

71:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #8
  %72 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !8

76:                                               ; preds = %71
  %77 = add i32 %73, -1
  br label %80

78:                                               ; preds = %71
  %79 = ptrtoint ptr %4 to i32
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = inttoptr i32 %81 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %82) #8
  %83 = getelementptr i8, ptr %7, i32 -160
  %84 = load ptr, ptr %83, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 3
  %87 = load i64, ptr %86, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_end_buffer_async_read, ptr noundef %85, ptr noundef nonnull @.str.3, i64 noundef %87) #8
  br label %88

88:                                               ; preds = %80, %54, %47
  %89 = load volatile i32, ptr %4, align 4
  %90 = and i32 %89, 8192
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93, !prof !9

92:                                               ; preds = %88
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = inttoptr i32 %95 to ptr
  %97 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 12
  %98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %97) #8
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %0) #8
  tail call void @unlock_buffer(ptr noundef %0) #8
  br label %99

99:                                               ; preds = %111, %93
  %100 = phi i32 [ 1, %93 ], [ %114, %111 ]
  %101 = phi ptr [ %0, %93 ], [ %116, %111 ]
  %102 = load volatile i32, ptr %101, align 4
  %103 = load volatile i32, ptr %101, align 4
  %104 = and i32 %103, 64
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load volatile i32, ptr %101, align 4
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %185, !prof !9

110:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

111:                                              ; preds = %99
  %112 = and i32 %102, 1
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 0, i32 %100
  %115 = getelementptr inbounds %struct.buffer_head, ptr %101, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %118, label %99

118:                                              ; preds = %111
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #8
  %119 = getelementptr i8, ptr %7, i32 -176
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %118
  %124 = icmp eq i32 %114, 0
  br i1 %124, label %184, label %125, !prof !9

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130, !prof !8

130:                                              ; preds = %125
  %131 = add i32 %127, -1
  br label %134

132:                                              ; preds = %125
  %133 = ptrtoint ptr %4 to i32
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = inttoptr i32 %135 to ptr
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %137, 256
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %184, !prof !8

140:                                              ; preds = %134
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !26
  br label %183

141:                                              ; preds = %118
  %142 = getelementptr i8, ptr %7, i32 -48
  %143 = load i32, ptr %142, align 8
  %144 = icmp ugt i32 %143, 4096
  br i1 %144, label %145, label %146, !prof !9

145:                                              ; preds = %141
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

146:                                              ; preds = %141
  %147 = udiv i32 4096, %143
  %148 = load i32, ptr @pgprot_kernel, align 4
  %149 = or i32 %148, 512
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %150 = tail call ptr @llvm.thread.pointer() #8
  %151 = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 149
  %152 = load i32, ptr %151, align 8
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %154 = tail call ptr @__kmap_local_page_prot(ptr noundef %4, i32 noundef %149) #8
  %155 = call i32 @llvm.umax.i32(i32 %147, i32 1)
  br label %156

156:                                              ; preds = %156, %146
  %157 = phi i32 [ %161, %156 ], [ 0, %146 ]
  %158 = mul i32 %157, %143
  %159 = getelementptr i8, ptr %154, i32 %158
  %160 = tail call i32 @post_read_mst_fixup(ptr noundef %159, i32 noundef %143) #8
  %161 = add nuw nsw i32 %157, 1
  %162 = icmp eq i32 %161, %155
  br i1 %162, label %163, label %156

163:                                              ; preds = %156
  tail call void @kunmap_local_indexed(ptr noundef %154) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %164 = load i32, ptr %151, align 8
  %165 = add i32 %164, -1
  store i32 %165, ptr %151, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  tail call void @flush_dcache_page(ptr noundef %4) #8
  %166 = icmp eq i32 %114, 0
  br i1 %166, label %184, label %167, !prof !9

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172, !prof !8

172:                                              ; preds = %167
  %173 = add i32 %169, -1
  br label %176

174:                                              ; preds = %167
  %175 = ptrtoint ptr %4 to i32
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = inttoptr i32 %177 to ptr
  %179 = load volatile i32, ptr %178, align 4
  %180 = and i32 %179, 256
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184, !prof !8

182:                                              ; preds = %176
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !26
  br label %183

183:                                              ; preds = %182, %140
  tail call void @_set_bit(i32 noundef 2, ptr noundef %4) #8
  br label %184

184:                                              ; preds = %183, %176, %163, %134, %123
  tail call void @unlock_page(ptr noundef %4) #8
  br label %186

185:                                              ; preds = %106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #8
  br label %186

186:                                              ; preds = %185, %184
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_read_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153687777, i64 2153688256, i64 2153687814, i64 2153687870, i64 2153687904, i64 2153687928, i64 2153687969, i64 2153687990, i64 2153688018, i64 2153688052}
!11 = !{i64 2151330975}
!12 = !{i64 2151330817}
!13 = !{i64 2151331119}
!14 = !{i64 2149525362}
!15 = !{i64 2150213745}
!16 = !{i64 2153689499, i64 2153689978, i64 2153689536, i64 2153689592, i64 2153689626, i64 2153689650, i64 2153689691, i64 2153689712, i64 2153689740, i64 2153689774}
!17 = !{i64 2153690517, i64 2153690996, i64 2153690554, i64 2153690610, i64 2153690644, i64 2153690668, i64 2153690709, i64 2153690730, i64 2153690758, i64 2153690792}
!18 = !{i64 2153691518, i64 2153691997, i64 2153691555, i64 2153691611, i64 2153691645, i64 2153691669, i64 2153691710, i64 2153691731, i64 2153691759, i64 2153691793}
!19 = !{!"auto-init"}
!20 = !{i64 2153683326, i64 2153683805, i64 2153683363, i64 2153683419, i64 2153683453, i64 2153683477, i64 2153683518, i64 2153683539, i64 2153683567, i64 2153683601}
!21 = !{i64 2153684548, i64 2153685027, i64 2153684585, i64 2153684641, i64 2153684675, i64 2153684699, i64 2153684740, i64 2153684761, i64 2153684789, i64 2153684823}
!22 = !{i64 2153685554, i64 2153686033, i64 2153685591, i64 2153685647, i64 2153685681, i64 2153685705, i64 2153685746, i64 2153685767, i64 2153685795, i64 2153685829}
!23 = !{i64 879872, i64 2148369843, i64 2148369869, i64 2148369916, i64 2148369938, i64 2148369966, i64 2148369986}
!24 = !{i64 2148389720, i64 2148389752, i64 2148389781, i64 2148389815, i64 2148389846, i64 2148389869}
!25 = !{i64 2148491060}
!26 = !{i64 2150214766}
!27 = !{i64 2152457806}
!28 = !{i64 2151014499}
!29 = !{i64 2151014706}
!30 = !{i64 2152460431}
!31 = !{i64 2153700269, i64 2153700749, i64 2153700306, i64 2153700362, i64 2153700396, i64 2153700420, i64 2153700461, i64 2153700482, i64 2153700510, i64 2153700544}
!32 = !{i64 2153701289, i64 2153701769, i64 2153701326, i64 2153701382, i64 2153701416, i64 2153701440, i64 2153701481, i64 2153701502, i64 2153701530, i64 2153701564}
!33 = !{i64 2153677949, i64 2153678427, i64 2153677986, i64 2153678042, i64 2153678076, i64 2153678100, i64 2153678141, i64 2153678162, i64 2153678190, i64 2153678224}
!34 = !{i64 2153679294, i64 2153679773, i64 2153679331, i64 2153679387, i64 2153679421, i64 2153679445, i64 2153679486, i64 2153679507, i64 2153679535, i64 2153679569}
!35 = !{i64 2153680402, i64 2153680881, i64 2153680439, i64 2153680495, i64 2153680529, i64 2153680553, i64 2153680594, i64 2153680615, i64 2153680643, i64 2153680677}
