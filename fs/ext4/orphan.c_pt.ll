; ModuleID = '/llk/IR/fs/ext4/orphan.c_pt.bc'
source_filename = "../fs/ext4/orphan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.69 = type { ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [16 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, %struct.ext4_fc_replay_state, [52 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type {}
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ext4_orphan_block = type { %struct.atomic_t, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.anon.74 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.ext4_orphan_block_tail = type { i32, i32 }

@ext4_orphan_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"fs/ext4/orphan.c\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\010Assertion failure in %s() at %s:%d: '%s'\0A\00", align 1
@__func__.ext4_orphan_add = private unnamed_addr constant [16 x i8] c"ext4_orphan_add\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode)) || inode->i_nlink == 0\00", align 1
@ext4_orphan_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_orphan_del = private unnamed_addr constant [16 x i8] c"ext4_orphan_del\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"write access unavailable, skipping orphan cleanup\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Skipping orphan cleanup due to unknown ROCOMPAT features\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Errors on filesystem, clearing orphan list.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"orphan cleanup on readonly fs\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%d orphan inode%s deleted\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%d truncate%s cleaned up\00", align 1
@__func__.ext4_init_orphan_info = private unnamed_addr constant [22 x i8] c"ext4_init_orphan_info\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"get orphan inode failed\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"orphan file block %d: bad magic\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"orphan file block %d: bad checksum\00", align 1
@__func__.ext4_orphan_file_add = private unnamed_addr constant [21 x i8] c"ext4_orphan_file_add\00", align 1
@ext4_orphan_file_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ext4_orphan_file_del = private unnamed_addr constant [21 x i8] c"ext4_orphan_file_del\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"%s: truncating inode %lu to %lld bytes\00", align 1
@__func__.ext4_process_orphan = private unnamed_addr constant [20 x i8] c"ext4_process_orphan\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"%s: deleting unreferenced inode %lu\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"fs/ext4/ext4.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_orphan_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ext4_iloc, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %208, label %11

11:                                               ; preds = %2
  %12 = tail call zeroext i1 @is_bad_inode(ptr noundef %1) #10
  br i1 %12, label %208, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 40
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = load i1, ptr @ext4_orphan_add.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !9

25:                                               ; preds = %18
  store i1 true, ptr @ext4_orphan_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 111, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %18, %13
  %27 = getelementptr i8, ptr %1, i32 -128
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 4096
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %208

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %1, i32 -96
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %208

35:                                               ; preds = %31
  %36 = load i16, ptr %1, align 8
  %37 = and i16 %36, -4096
  switch i16 %37, label %38 [
    i16 -32768, label %44
    i16 16384, label %44
    i16 -24576, label %44
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %38
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ext4_orphan_add, ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.2) #11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/orphan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #10, !srcloc !11
  unreachable

44:                                               ; preds = %38, %35, %35, %35
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 51
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %156, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 27
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 51
  %53 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 3
  %54 = load i32, ptr %53, align 16
  %55 = add i32 %54, -8
  %56 = lshr i32 %55, 2
  %57 = tail call ptr @llvm.thread.pointer() #10
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = mul i32 %59, 13
  %61 = load i32, ptr %52, align 4
  %62 = urem i32 %60, %61
  %63 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 51, i32 2
  br label %64

64:                                               ; preds = %83, %48
  %65 = phi i32 [ %62, %48 ], [ %87, %83 ]
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr %struct.ext4_orphan_block, ptr %66, i32 %65
  %68 = load volatile i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %78, %64
  %70 = phi i32 [ %68, %64 ], [ %79, %78 ]
  %71 = add i32 %70, -1
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %83, label %73, !prof !9

73:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #10, !srcloc !13
  br label %74

74:                                               ; preds = %74, %73
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 %70, i32 %71, ptr elementtype(i32) %67) #10, !srcloc !14
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74
  %79 = extractvalue { i32, i32 } %75, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %80 = icmp eq i32 %79, %70
  br i1 %80, label %81, label %69, !prof !10

81:                                               ; preds = %78
  %82 = icmp sgt i32 %71, -1
  br i1 %82, label %89, label %83

83:                                               ; preds = %81, %69
  %84 = add i32 %65, 1
  %85 = load i32, ptr %52, align 4
  %86 = icmp slt i32 %84, %85
  %87 = select i1 %86, i32 %84, i32 0
  %88 = icmp eq i32 %87, %62
  br i1 %88, label %156, label %64

89:                                               ; preds = %81
  %90 = load ptr, ptr %4, align 4
  %91 = load ptr, ptr %63, align 4
  %92 = getelementptr %struct.ext4_orphan_block, ptr %91, i32 %65, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_file_add, i32 noundef 48, ptr noundef %0, ptr noundef %90, ptr noundef %93, i32 noundef 0) #10
  %95 = icmp eq i32 %94, 0
  %96 = load ptr, ptr %63, align 4
  br i1 %95, label %100, label %97

97:                                               ; preds = %89
  %98 = getelementptr %struct.ext4_orphan_block, ptr %96, i32 %65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #10, !srcloc !13
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 1, ptr elementtype(i32) %98) #10, !srcloc !16
  br label %153

100:                                              ; preds = %89
  %101 = getelementptr %struct.ext4_orphan_block, ptr %96, i32 %65, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.buffer_head, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  br label %106

106:                                              ; preds = %143, %100
  %107 = phi i32 [ 0, %100 ], [ %136, %143 ]
  %108 = phi i32 [ 0, %100 ], [ %135, %143 ]
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = icmp sgt i32 %107, 3
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = load ptr, ptr %63, align 4
  %114 = getelementptr %struct.ext4_orphan_block, ptr %113, i32 %65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %114) #10, !srcloc !13
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %114, ptr %114, i32 1, ptr elementtype(i32) %114) #10, !srcloc !16
  br label %156

116:                                              ; preds = %110
  %117 = tail call i32 @__cond_resched() #10
  br label %118

118:                                              ; preds = %116, %106
  %119 = getelementptr i32, ptr %104, i32 %108
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %122, %118
  %123 = phi i32 [ %130, %122 ], [ %108, %118 ]
  %124 = phi i32 [ %129, %122 ], [ %107, %118 ]
  %125 = add i32 %123, 1
  %126 = icmp slt i32 %125, %56
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = add i32 %124, %128
  %130 = select i1 %126, i32 %125, i32 0
  %131 = getelementptr i32, ptr %104, i32 %130
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %122

134:                                              ; preds = %122, %118
  %135 = phi i32 [ %108, %118 ], [ %130, %122 ]
  %136 = phi i32 [ %107, %118 ], [ %129, %122 ]
  %137 = getelementptr i32, ptr %104, i32 %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %138 = load i32, ptr %105, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #10, !srcloc !13
  br label %139

139:                                              ; preds = %139, %134
  %140 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %137, i32 0, i32 %138) #10, !srcloc !18
  %141 = extractvalue { i32, i32 } %140, 0
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %139

143:                                              ; preds = %139
  %144 = extractvalue { i32, i32 } %140, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %106

146:                                              ; preds = %143
  %147 = mul i32 %65, %56
  %148 = add i32 %135, %147
  store i32 %148, ptr %32, align 8
  tail call void @_set_bit(i32 noundef 12, ptr noundef %27) #10
  %149 = load ptr, ptr %63, align 4
  %150 = getelementptr %struct.ext4_orphan_block, ptr %149, i32 %65, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_file_add, i32 noundef 84, ptr noundef %0, ptr noundef null, ptr noundef %151) #10
  br label %153

153:                                              ; preds = %146, %97
  %154 = phi i32 [ %94, %97 ], [ %152, %146 ]
  %155 = icmp eq i32 %154, -28
  br i1 %155, label %156, label %208

156:                                              ; preds = %153, %112, %83, %44
  %157 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 14
  %158 = load ptr, ptr %157, align 64
  %159 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_add, i32 noundef 140, ptr noundef %0, ptr noundef %5, ptr noundef %158, i32 noundef 1) #10
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %206

161:                                              ; preds = %156
  %162 = call i32 @ext4_reserve_inode_write(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %206

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 49
  call void @mutex_lock(ptr noundef %165) #10
  %166 = getelementptr i8, ptr %1, i32 -148
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  %169 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %170 = load ptr, ptr %169, align 4
  br i1 %168, label %174, label %171

171:                                              ; preds = %164
  %172 = load i32, ptr %170, align 8
  %173 = icmp ugt i32 %167, %172
  br i1 %173, label %174, label %194

174:                                              ; preds = %171, %164
  %175 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 15
  %176 = getelementptr inbounds %struct.ext4_super_block, ptr %170, i32 0, i32 41
  %177 = load i32, ptr %176, align 8
  store i32 %177, ptr %166, align 4
  %178 = load ptr, ptr %157, align 64
  call fastcc void @lock_buffer(ptr noundef %178)
  %179 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %180 = load i32, ptr %179, align 4
  %181 = load ptr, ptr %175, align 4
  %182 = getelementptr inbounds %struct.ext4_super_block, ptr %181, i32 0, i32 41
  store i32 %180, ptr %182, align 8
  call void @ext4_superblock_csum_set(ptr noundef %5) #10
  %183 = load ptr, ptr %157, align 64
  call void @unlock_buffer(ptr noundef %183) #10
  %184 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 50
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  store ptr %32, ptr %186, align 4
  store ptr %185, ptr %32, align 4
  %187 = getelementptr i8, ptr %1, i32 -92
  store ptr %184, ptr %187, align 4
  store volatile ptr %32, ptr %184, align 4
  call void @mutex_unlock(ptr noundef %165) #10
  %188 = load ptr, ptr %157, align 64
  %189 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_add, i32 noundef 167, ptr noundef %0, ptr noundef null, ptr noundef %188) #10
  %190 = call i32 @ext4_mark_iloc_dirty(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #10
  %191 = icmp eq i32 %189, 0
  %192 = select i1 %191, i32 %190, i32 %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %202

194:                                              ; preds = %171
  %195 = getelementptr inbounds %struct.ext4_sb_info, ptr %7, i32 0, i32 50
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %32, ptr %197, align 4
  store ptr %196, ptr %32, align 4
  %198 = getelementptr i8, ptr %1, i32 -92
  store ptr %195, ptr %198, align 4
  store volatile ptr %32, ptr %195, align 4
  call void @mutex_unlock(ptr noundef %165) #10
  %199 = load ptr, ptr %3, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %194
  call void @__brelse(ptr noundef nonnull %199) #10
  br label %208

202:                                              ; preds = %174
  call void @mutex_lock(ptr noundef %165) #10
  %203 = load ptr, ptr %187, align 4
  %204 = load ptr, ptr %32, align 4
  %205 = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  store ptr %203, ptr %205, align 4
  store volatile ptr %204, ptr %203, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %187, align 4
  call void @mutex_unlock(ptr noundef %165) #10
  br label %206

206:                                              ; preds = %202, %161, %156
  %207 = phi i32 [ %159, %156 ], [ %162, %161 ], [ %192, %202 ]
  call void @__ext4_std_error(ptr noundef %5, ptr noundef nonnull @__func__.ext4_orphan_add, i32 noundef 188, i32 noundef %207) #10
  br label %208

208:                                              ; preds = %206, %201, %194, %174, %153, %31, %26, %11, %2
  %209 = phi i32 [ 0, %11 ], [ 0, %2 ], [ 0, %31 ], [ 0, %26 ], [ %154, %153 ], [ %207, %206 ], [ 0, %174 ], [ 0, %194 ], [ 0, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %209
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %0) unnamed_addr #5 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #10, !srcloc !20
  %7 = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @__lock_buffer(ptr noundef %0) #10
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_orphan_del(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ext4_iloc, align 4
  %4 = alloca %struct.ext4_iloc, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 25
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %149, label %17

17:                                               ; preds = %12, %2
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 40
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i1, ptr @ext4_orphan_del.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %22
  store i1 true, ptr @ext4_orphan_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 240, i32 noundef 9, ptr noundef null) #10
  br label %30

30:                                               ; preds = %29, %22, %17
  %31 = getelementptr i8, ptr %1, i32 -128
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 4096
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %86, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %0, null
  br i1 %39, label %82, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 3
  %42 = load i32, ptr %41, align 16
  %43 = add i32 %42, -8
  %44 = lshr i32 %43, 2
  %45 = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 51
  %46 = getelementptr i8, ptr %1, i32 -96
  %47 = load i32, ptr %46, align 8
  %48 = freeze i32 %47
  %49 = freeze i32 %44
  %50 = udiv i32 %48, %49
  %51 = mul i32 %50, %49
  %52 = sub i32 %48, %51
  %53 = load i32, ptr %45, align 4
  %54 = icmp sge i32 %50, %53
  %55 = load i1, ptr @ext4_orphan_file_del.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %40
  store i1 true, ptr @ext4_orphan_file_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #10
  br label %59

59:                                               ; preds = %58, %40
  br i1 %54, label %82, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 51, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.ext4_orphan_block, ptr %63, i32 %50, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_file_del, i32 noundef 208, ptr noundef nonnull %0, ptr noundef %61, ptr noundef %65, i32 noundef 0) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %60
  %69 = load ptr, ptr %62, align 4
  %70 = getelementptr %struct.ext4_orphan_block, ptr %69, i32 %50, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i32, ptr %73, i32 %52
  store i32 0, ptr %74, align 4
  %75 = load ptr, ptr %62, align 4
  %76 = getelementptr %struct.ext4_orphan_block, ptr %75, i32 %50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #10, !srcloc !13
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #10, !srcloc !16
  %78 = load ptr, ptr %62, align 4
  %79 = getelementptr %struct.ext4_orphan_block, ptr %78, i32 %50, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_file_del, i32 noundef 215, ptr noundef nonnull %0, ptr noundef null, ptr noundef %80) #10
  br label %82

82:                                               ; preds = %68, %60, %59, %35
  %83 = phi i32 [ 0, %59 ], [ %66, %60 ], [ %81, %68 ], [ 0, %35 ]
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %31) #10
  %84 = getelementptr i8, ptr %1, i32 -96
  store volatile ptr %84, ptr %84, align 4
  %85 = getelementptr i8, ptr %1, i32 -92
  store ptr %84, ptr %85, align 4
  br label %149

86:                                               ; preds = %30
  %87 = getelementptr i8, ptr %1, i32 -96
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %149, label %90

90:                                               ; preds = %86
  %91 = icmp eq ptr %0, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = call i32 @ext4_reserve_inode_write(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #10
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %93, %92 ], [ 0, %90 ]
  %96 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 49
  call void @mutex_lock(ptr noundef %96) #10
  %97 = getelementptr i8, ptr %1, i32 -92
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %87, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %98, ptr %100, align 4
  store volatile ptr %99, ptr %98, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %97, align 4
  %101 = icmp ne i32 %95, 0
  %102 = select i1 %91, i1 true, i1 %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  call void @mutex_unlock(ptr noundef %96) #10
  br label %138

104:                                              ; preds = %94
  %105 = getelementptr i8, ptr %1, i32 -148
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 50
  %108 = icmp eq ptr %98, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load ptr, ptr %5, align 4
  %111 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 14
  %112 = load ptr, ptr %111, align 64
  %113 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 273, ptr noundef nonnull %0, ptr noundef %110, ptr noundef %112, i32 noundef 1) #10
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  call void @mutex_unlock(ptr noundef %96) #10
  br label %144

116:                                              ; preds = %109
  %117 = load ptr, ptr %111, align 64
  call fastcc void @lock_buffer(ptr noundef %117)
  %118 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ext4_super_block, ptr %119, i32 0, i32 41
  store i32 %106, ptr %120, align 8
  %121 = load ptr, ptr %5, align 4
  call void @ext4_superblock_csum_set(ptr noundef %121) #10
  %122 = load ptr, ptr %111, align 64
  call void @unlock_buffer(ptr noundef %122) #10
  call void @mutex_unlock(ptr noundef %96) #10
  %123 = load ptr, ptr %111, align 64
  %124 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 283, ptr noundef nonnull %0, ptr noundef null, ptr noundef %123) #10
  br label %133

125:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %126 = getelementptr i8, ptr %98, i32 96
  %127 = call i32 @ext4_reserve_inode_write(ptr noundef nonnull %0, ptr noundef %126, ptr noundef nonnull %4) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr i8, ptr %98, i32 -52
  store i32 %106, ptr %130, align 4
  %131 = call i32 @ext4_mark_iloc_dirty(ptr noundef nonnull %0, ptr noundef %126, ptr noundef nonnull %4) #10
  call void @mutex_unlock(ptr noundef %96) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %133

132:                                              ; preds = %125
  call void @mutex_unlock(ptr noundef %96) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %144

133:                                              ; preds = %129, %116
  %134 = phi i32 [ %124, %116 ], [ %131, %129 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  store i32 0, ptr %105, align 4
  %137 = call i32 @ext4_mark_iloc_dirty(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #10
  br label %138

138:                                              ; preds = %136, %103
  %139 = phi i32 [ %95, %103 ], [ %137, %136 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %148, %144, %138
  %142 = phi i32 [ %139, %138 ], [ %145, %148 ], [ %145, %144 ]
  %143 = load ptr, ptr %5, align 4
  call void @__ext4_std_error(ptr noundef %143, ptr noundef nonnull @__func__.ext4_orphan_del, i32 noundef 305, i32 noundef %142) #10
  br label %149

144:                                              ; preds = %133, %132, %115
  %145 = phi i32 [ %113, %115 ], [ %134, %133 ], [ %127, %132 ]
  %146 = load ptr, ptr %3, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %141, label %148

148:                                              ; preds = %144
  call void @__brelse(ptr noundef nonnull %146) #10
  br label %141

149:                                              ; preds = %141, %138, %86, %82, %12
  %150 = phi i32 [ %83, %82 ], [ 0, %12 ], [ 0, %86 ], [ %142, %141 ], [ 0, %138 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_orphan_cleanup(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 51
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 16
  %12 = add i32 %11, -8
  %13 = lshr i32 %12, 2
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %1, i32 0, i32 41
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, ptr %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %137, label %20

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 4
  %24 = load i8, ptr %23, align 8, !range !22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.block_device, ptr %22, i32 0, i32 17
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 4
  %32 = load i8, ptr %31, align 8, !range !22
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 12
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %26, %20
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %137

40:                                               ; preds = %34
  %41 = tail call i32 @ext4_feature_set_ok(ptr noundef %0, i32 noundef 0) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  br label %137

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.ext4_sb_info, ptr %45, i32 0, i32 25
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %14, align 8
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %6, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %137

56:                                               ; preds = %50
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  store i32 0, ptr %14, align 8
  br label %137

57:                                               ; preds = %44
  %58 = and i32 %6, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8) #10
  %61 = load i32, ptr %5, align 4
  %62 = and i32 %61, -2
  store i32 %62, ptr %5, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, ptr %14, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %76, %63
  %67 = phi i32 [ %83, %76 ], [ %64, %63 ]
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.ext4_sb_info, ptr %68, i32 0, i32 25
  %70 = load i16, ptr %69, align 8
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = tail call ptr @ext4_orphan_get(ptr noundef %0, i32 noundef %67) #10
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = getelementptr i8, ptr %74, i32 -96
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.ext4_sb_info, ptr %78, i32 0, i32 50
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %77, ptr %81, align 4
  store ptr %80, ptr %77, align 4
  %82 = getelementptr i8, ptr %74, i32 -92
  store ptr %79, ptr %82, align 4
  store volatile ptr %77, ptr %79, align 4
  call fastcc void @ext4_process_orphan(ptr noundef %74, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %83 = load i32, ptr %14, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %66

85:                                               ; preds = %73, %66
  store i32 0, ptr %14, align 8
  br label %86

86:                                               ; preds = %85, %76, %63
  %87 = load i32, ptr %9, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %124

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 51, i32 2
  %91 = icmp ult i32 %12, 4
  %92 = call i32 @llvm.umax.i32(i32 %13, i32 1)
  br label %93

93:                                               ; preds = %120, %89
  %94 = phi i32 [ %87, %89 ], [ %121, %120 ]
  %95 = phi i32 [ 0, %89 ], [ %122, %120 ]
  %96 = load ptr, ptr %90, align 4
  %97 = getelementptr %struct.ext4_orphan_block, ptr %96, i32 %95, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  br i1 %91, label %120, label %101

101:                                              ; preds = %93
  %102 = mul i32 %95, %13
  br label %103

103:                                              ; preds = %115, %101
  %104 = phi i32 [ 0, %101 ], [ %116, %115 ]
  %105 = getelementptr i32, ptr %100, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = tail call ptr @ext4_orphan_get(ptr noundef %0, i32 noundef %106) #10
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = getelementptr i8, ptr %109, i32 -128
  tail call void @_set_bit(i32 noundef 12, ptr noundef %112) #10
  %113 = add i32 %104, %102
  %114 = getelementptr i8, ptr %109, i32 -96
  store i32 %113, ptr %114, align 8
  call fastcc void @ext4_process_orphan(ptr noundef %109, ptr noundef nonnull %4, ptr noundef nonnull %3)
  br label %115

115:                                              ; preds = %111, %108, %103
  %116 = add nuw nsw i32 %104, 1
  %117 = icmp eq i32 %116, %92
  br i1 %117, label %118, label %103

118:                                              ; preds = %115
  %119 = load i32, ptr %9, align 4
  br label %120

120:                                              ; preds = %118, %93
  %121 = phi i32 [ %119, %118 ], [ %94, %93 ]
  %122 = add nuw nsw i32 %95, 1
  %123 = icmp slt i32 %122, %121
  br i1 %123, label %93, label %124

124:                                              ; preds = %120, %86
  %125 = load i32, ptr %3, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = icmp eq i32 %125, 1
  %129 = select i1 %128, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %125, ptr noundef nonnull %129) #10
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, ptr %4, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = icmp eq i32 %131, 1
  %135 = select i1 %134, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, i32 noundef %131, ptr noundef nonnull %135) #10
  br label %136

136:                                              ; preds = %133, %130
  store i32 %6, ptr %5, align 4
  br label %137

137:                                              ; preds = %136, %56, %50, %43, %39, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_feature_set_ok(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_orphan_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ext4_process_orphan(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ext4_sb_info, ptr %10, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %8, label %33, label %15

15:                                               ; preds = %3
  br i1 %14, label %21, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %20 = load i64, ptr %19, align 8
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef %18, i64 noundef %20) #10
  br label %21

21:                                               ; preds = %16, %15
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @down_write(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %26 = load i64, ptr %25, align 8
  tail call void @truncate_inode_pages(ptr noundef %24, i64 noundef %26) #10
  %27 = tail call i32 @ext4_truncate(ptr noundef %0) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = tail call i32 @ext4_orphan_del(ptr noundef null, ptr noundef %0)
  %31 = load ptr, ptr %4, align 4
  tail call void @__ext4_std_error(ptr noundef %31, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef 347, i32 noundef %27) #10
  br label %32

32:                                               ; preds = %29, %21
  tail call void @up_write(ptr noundef %22) #10
  br label %37

33:                                               ; preds = %3
  br i1 %14, label %37, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.ext4_process_orphan, i32 noundef %36) #10
  br label %37

37:                                               ; preds = %34, %33, %32
  %38 = phi ptr [ %1, %32 ], [ %2, %34 ], [ %2, %33 ]
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  tail call void @iput(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_release_orphan_info(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 51
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 51, i32 2
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi i32 [ %5, %9 ], [ %21, %20 ]
  %13 = phi i32 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.ext4_orphan_block, ptr %14, i32 %13, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @__brelse(ptr noundef nonnull %16) #10
  %19 = load i32, ptr %4, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %11, label %24

24:                                               ; preds = %20, %7
  %25 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 51, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #10
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_orphan_file_block_trigger(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.74, align 8
  %6 = alloca %struct.anon.74, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.ext4_journal_trigger, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 16
  %12 = add i32 %11, -8
  %13 = and i32 %12, -4
  %14 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %16 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %7, align 8
  %18 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 51, i32 1
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !annotation !8
  %20 = getelementptr inbounds %struct.ext4_sb_info, ptr %15, i32 0, i32 119
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %21, align 64
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %25, label %24, !prof !10

24:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

25:                                               ; preds = %4
  store ptr %21, ptr %6, align 8
  %26 = getelementptr inbounds %struct.anon.74, ptr %6, i32 0, i32 1
  store i32 %19, ptr %26, align 8
  %27 = call i32 @crypto_shash_update(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 8) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !10

29:                                               ; preds = %25
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

30:                                               ; preds = %25
  %31 = load i32, ptr %26, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %32 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !8
  %33 = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 119
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %34, align 64
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %38, label %37, !prof !10

37:                                               ; preds = %30
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

38:                                               ; preds = %30
  store ptr %34, ptr %5, align 8
  %39 = getelementptr inbounds %struct.anon.74, ptr %5, i32 0, i32 1
  store i32 %31, ptr %39, align 8
  %40 = call i32 @crypto_shash_update(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %13) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %38
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

43:                                               ; preds = %38
  %44 = load i32, ptr %39, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %45 = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %10, align 16
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = getelementptr i8, ptr %48, i32 -8
  %50 = getelementptr inbounds %struct.ext4_orphan_block_tail, ptr %49, i32 0, i32 1
  store i32 %44, ptr %50, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_init_orphan_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.74, align 8
  %3 = alloca %struct.anon.74, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 51
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 16
  %10 = add i32 %9, -8
  %11 = lshr i32 %10, 2
  %12 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %177, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 100
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @__ext4_iget(ptr noundef %0, i32 noundef %20, i32 noundef 1, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 586) #10
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #10
  %24 = ptrtoint ptr %21 to i32
  br label %177

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 13
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i64
  %31 = ashr i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, ptr %7, align 4
  %33 = getelementptr i8, ptr %21, i32 528
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 51, i32 1
  store i32 %34, ptr %35, align 4
  %36 = shl i32 %32, 3
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #12
  %38 = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 51, i32 2
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %175, label %40

40:                                               ; preds = %25
  %41 = load i32, ptr %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %159

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.anon.74, ptr %3, i32 0, i32 1
  %45 = getelementptr inbounds %struct.anon.74, ptr %2, i32 0, i32 1
  %46 = icmp ult i32 %10, 4
  %47 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %48

48:                                               ; preds = %153, %43
  %49 = phi i32 [ 0, %43 ], [ %156, %153 ]
  %50 = call ptr @ext4_bread(ptr noundef null, ptr noundef %21, i32 noundef %49, i32 noundef 0) #10
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr %struct.ext4_orphan_block, ptr %51, i32 %49, i32 1
  store ptr %50, ptr %52, align 4
  %53 = load ptr, ptr %38, align 4
  %54 = getelementptr %struct.ext4_orphan_block, ptr %53, i32 %49, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = ptrtoint ptr %55 to i32
  br label %160

59:                                               ; preds = %48
  %60 = icmp eq ptr %55, null
  br i1 %60, label %160, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %8, align 16
  %65 = getelementptr i8, ptr %63, i32 -8
  %66 = getelementptr i8, ptr %65, i32 %64
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 185649668
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 611, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %49) #10
  br label %160

70:                                               ; preds = %61
  %71 = add i32 %64, -8
  %72 = and i32 %71, -4
  %73 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %74 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 3
  %75 = load i64, ptr %74, align 8
  store i64 %75, ptr %4, align 8
  %76 = getelementptr inbounds %struct.ext4_sb_info, ptr %73, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.ext4_super_block, ptr %77, i32 0, i32 30
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 1024
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %130, label %82

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.ext4_sb_info, ptr %73, i32 0, i32 119
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %100, !prof !9

89:                                               ; preds = %82
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 3289, i32 noundef 9, ptr noundef null) #10
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ext4_super_block, ptr %92, i32 0, i32 30
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 1024
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.ext4_sb_info, ptr %90, i32 0, i32 119
  %99 = load ptr, ptr %98, align 8
  br label %100

100:                                              ; preds = %97, %82
  %101 = phi ptr [ %99, %97 ], [ %84, %82 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %130, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %62, align 4
  %105 = load i32, ptr %8, align 16
  %106 = getelementptr i8, ptr %104, i32 -8
  %107 = getelementptr i8, ptr %106, i32 %105
  %108 = getelementptr inbounds %struct.ext4_sb_info, ptr %73, i32 0, i32 51, i32 1
  %109 = load i32, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #10, !annotation !8
  %110 = load i32, ptr %101, align 64
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %113, label %112, !prof !10

112:                                              ; preds = %103
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

113:                                              ; preds = %103
  store ptr %101, ptr %3, align 8
  store i32 %109, ptr %44, align 8
  %114 = call i32 @crypto_shash_update(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 8) #10
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116, !prof !10

116:                                              ; preds = %113
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

117:                                              ; preds = %113
  %118 = load i32, ptr %44, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %119 = load ptr, ptr %5, align 4
  %120 = load ptr, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false) #10, !annotation !8
  %121 = getelementptr inbounds %struct.ext4_sb_info, ptr %119, i32 0, i32 119
  %122 = load ptr, ptr %121, align 8
  %123 = load i32, ptr %122, align 64
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %126, label %125, !prof !10

125:                                              ; preds = %117
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #10, !srcloc !23
  unreachable

126:                                              ; preds = %117
  store ptr %122, ptr %2, align 8
  store i32 %118, ptr %45, align 8
  %127 = call i32 @crypto_shash_update(ptr noundef nonnull %2, ptr noundef %120, i32 noundef %72) #10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129, !prof !10

129:                                              ; preds = %126
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

130:                                              ; preds = %100, %89, %70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %137

131:                                              ; preds = %126
  %132 = load i32, ptr %45, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  %133 = getelementptr inbounds %struct.ext4_orphan_block_tail, ptr %107, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, %132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %0, ptr noundef nonnull @__func__.ext4_init_orphan_info, i32 noundef 617, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.15, i32 noundef %49) #10
  br label %160

137:                                              ; preds = %131, %130
  %138 = load ptr, ptr %38, align 4
  %139 = getelementptr %struct.ext4_orphan_block, ptr %138, i32 %49, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.buffer_head, ptr %140, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  br i1 %46, label %153, label %143

143:                                              ; preds = %143, %137
  %144 = phi i32 [ %150, %143 ], [ 0, %137 ]
  %145 = phi i32 [ %151, %143 ], [ 0, %137 ]
  %146 = getelementptr i32, ptr %142, i32 %145
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = add i32 %144, %149
  %151 = add nuw nsw i32 %145, 1
  %152 = icmp eq i32 %151, %47
  br i1 %152, label %153, label %143

153:                                              ; preds = %143, %137
  %154 = phi i32 [ 0, %137 ], [ %150, %143 ]
  %155 = getelementptr %struct.ext4_orphan_block, ptr %138, i32 %49
  store volatile i32 %154, ptr %155, align 4
  %156 = add nuw nsw i32 %49, 1
  %157 = load i32, ptr %7, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %48, label %159

159:                                              ; preds = %153, %40
  call void @iput(ptr noundef %21) #10
  br label %177

160:                                              ; preds = %136, %69, %59, %57
  %161 = phi i32 [ %58, %57 ], [ -5, %69 ], [ -5, %136 ], [ -5, %59 ]
  %162 = icmp eq i32 %49, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %171, %160
  %164 = phi i32 [ %165, %171 ], [ %49, %160 ]
  %165 = add nsw i32 %164, -1
  %166 = load ptr, ptr %38, align 4
  %167 = getelementptr %struct.ext4_orphan_block, ptr %166, i32 %165, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  call void @__brelse(ptr noundef nonnull %168) #10
  br label %171

171:                                              ; preds = %170, %163
  %172 = icmp sgt i32 %164, 1
  br i1 %172, label %163, label %173

173:                                              ; preds = %171, %160
  %174 = load ptr, ptr %38, align 4
  call void @kfree(ptr noundef %174) #10
  br label %175

175:                                              ; preds = %173, %25
  %176 = phi i32 [ %161, %173 ], [ -12, %25 ]
  call void @iput(ptr noundef %21) #10
  br label %177

177:                                              ; preds = %175, %159, %23, %1
  %178 = phi i32 [ %24, %23 ], [ %176, %175 ], [ 0, %159 ], [ 0, %1 ]
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_bread(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_orphan_file_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 16
  %6 = add i32 %5, -8
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ext4_super_block, ptr %9, i32 0, i32 28
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4096
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 51
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 51, i32 2
  %20 = load ptr, ptr %19, align 4
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  %23 = icmp eq i32 %22, %16
  br i1 %23, label %29, label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ 0, %18 ], [ %22, %21 ]
  %26 = getelementptr %struct.ext4_orphan_block, ptr %20, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %21, label %29

29:                                               ; preds = %24, %21, %14, %1
  %30 = phi i32 [ 1, %1 ], [ 1, %14 ], [ 0, %24 ], [ 1, %21 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153814086, i64 2153814567, i64 2153814123, i64 2153814179, i64 2153814213, i64 2153814237, i64 2153814278, i64 2153814299, i64 2153814327, i64 2153814361}
!12 = !{i64 2148459180}
!13 = !{i64 844368, i64 2148334339, i64 2148334365, i64 2148334412, i64 2148334434, i64 2148334462, i64 2148334482}
!14 = !{i64 830431, i64 830455, i64 830476, i64 830493, i64 830510}
!15 = !{i64 2148459380}
!16 = !{i64 2148345754, i64 2148345780, i64 2148345809, i64 2148345843, i64 2148345874, i64 2148345897}
!17 = !{i64 2153806588}
!18 = !{i64 855742, i64 855763, i64 855786, i64 855805, i64 855824}
!19 = !{i64 2153807011}
!20 = !{i64 2148354216, i64 2148354248, i64 2148354277, i64 2148354311, i64 2148354342, i64 2148354365}
!21 = !{i64 2148455556}
!22 = !{i8 0, i8 2}
!23 = !{i64 2153755724, i64 2153756204, i64 2153755761, i64 2153755817, i64 2153755851, i64 2153755875, i64 2153755916, i64 2153755937, i64 2153755965, i64 2153755999}
!24 = !{i64 2153756802, i64 2153757282, i64 2153756839, i64 2153756895, i64 2153756929, i64 2153756953, i64 2153756994, i64 2153757015, i64 2153757043, i64 2153757077}
