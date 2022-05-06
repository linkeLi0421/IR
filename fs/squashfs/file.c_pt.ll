; ModuleID = '/llk/IR/fs/squashfs/file.c_pt.bc'
source_filename = "../fs/squashfs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.8 }
%struct.llist_node = type { ptr }
%union.anon.8 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon, %union.anon.58, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.62 = type { ptr }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.meta_index = type { i32, i32, i16, i16, i16, i16, [127 x %struct.meta_entry] }
%struct.meta_entry = type { i64, i32, i16, i16 }
%struct.squashfs_cache_entry = type { i64, i32, i32, i64, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr }

@squashfs_aops = dso_local local_unnamed_addr constant %struct.address_space_operations { ptr null, ptr @squashfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [49 x i8] c"\013SQUASHFS error: Failed to allocate meta_index\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"\013SQUASHFS error: read_indexes: Failed to allocate block_list\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\013SQUASHFS error: read_indexes: reading block [%llx:%x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\013SQUASHFS error: Unable to read page, block %llx, size %x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @squashfs_fill_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @pgprot_kernel, align 4
  %6 = or i32 %5, 512
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 149
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %11 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %6) #9
  %12 = tail call i32 @squashfs_copy_data(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = sub i32 4096, %12
  tail call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %14, i1 false)
  tail call void @kunmap_local_indexed(ptr noundef %11) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %15 = load i32, ptr %8, align 8
  %16 = add i32 %15, -1
  store i32 %16, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  tail call void @flush_dcache_page(ptr noundef %0) #9
  %17 = icmp eq i32 %12, %3
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #9
  br label %31

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !13

24:                                               ; preds = %19
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %19
  %27 = ptrtoint ptr %0 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %30) #9
  br label %31

31:                                               ; preds = %28, %18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @squashfs_copy_cache(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.squashfs_sb_info, ptr %11, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = add nsw i32 %14, -12
  %16 = shl nsw i32 -1, %15
  %17 = xor i32 %16, -1
  %18 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %16, %19
  %21 = or i32 %19, %17
  %22 = icmp sle i32 %20, %21
  %23 = icmp sgt i32 %2, 0
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %4
  %26 = icmp eq ptr %1, null
  br label %27

27:                                               ; preds = %84, %25
  %28 = phi i32 [ %19, %25 ], [ %87, %84 ]
  %29 = phi i32 [ %2, %25 ], [ %86, %84 ]
  %30 = phi i32 [ %3, %25 ], [ %85, %84 ]
  %31 = phi i32 [ %20, %25 ], [ %80, %84 ]
  %32 = tail call i32 @llvm.smin.i32(i32 %29, i32 4096)
  %33 = select i1 %26, i32 0, i32 %32
  %34 = icmp eq i32 %31, %28
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr @pagecache_get_page(ptr noundef %36, i32 noundef %31, i32 noundef 54, i32 noundef %38) #9
  br label %40

40:                                               ; preds = %35, %27
  %41 = phi ptr [ %39, %35 ], [ %0, %27 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %79, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !13

48:                                               ; preds = %43
  %49 = add i32 %45, -1
  br label %52

50:                                               ; preds = %43
  %51 = ptrtoint ptr %41 to i32
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %60

59:                                               ; preds = %52
  tail call void @squashfs_fill_page(ptr noundef nonnull %41, ptr noundef %1, i32 noundef %30, i32 noundef %33)
  br label %60

60:                                               ; preds = %59, %58
  tail call void @unlock_page(ptr noundef nonnull %41) #9
  %61 = load i32, ptr %18, align 4
  %62 = icmp eq i32 %31, %61
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load volatile i32, ptr %44, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67, !prof !13

67:                                               ; preds = %63
  %68 = add i32 %64, -1
  br label %71

69:                                               ; preds = %63
  %70 = ptrtoint ptr %41 to i32
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #9, !srcloc !16
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #9, !srcloc !17
  %76 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  tail call void @__put_page(ptr noundef %73) #9
  br label %79

79:                                               ; preds = %78, %71, %60, %40
  %80 = add i32 %31, 1
  %81 = icmp sle i32 %80, %21
  %82 = icmp sgt i32 %29, 4096
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = add i32 %30, 4096
  %86 = add nsw i32 %29, -4096
  %87 = load i32, ptr %18, align 4
  br label %27

88:                                               ; preds = %79, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @squashfs_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.squashfs_sb_info, ptr %14, i32 0, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, -12
  %21 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 22
  %22 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 13
  br label %23

23:                                               ; preds = %31, %2
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %27, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !20
  %28 = load volatile i32, ptr %21, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %24, %23 ], [ %28, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %33 = load i64, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %34 = load volatile i32, ptr %21, align 4
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %36, label %23

36:                                               ; preds = %31
  %37 = lshr i32 %16, %20
  %38 = load i16, ptr %17, align 4
  %39 = zext i16 %38 to i64
  %40 = ashr i64 %33, %39
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %51, %36
  %44 = load volatile i32, ptr %21, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %47, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !20
  %48 = load volatile i32, ptr %21, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %44, %43 ], [ %48, %47 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %53 = load i64, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %54 = load volatile i32, ptr %21, align 4
  %55 = icmp eq i32 %54, %52
  br i1 %55, label %56, label %43

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.squashfs_sb_info, ptr %14, i32 0, i32 17
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, -1
  %60 = trunc i64 %53 to i32
  %61 = and i32 %59, %60
  br label %65

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.squashfs_sb_info, ptr %14, i32 0, i32 17
  %64 = load i32, ptr %63, align 8
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i32 [ %61, %56 ], [ %64, %62 ]
  %67 = load i32, ptr %15, align 4
  br label %68

68:                                               ; preds = %76, %65
  %69 = load volatile i32, ptr %21, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %72, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !20
  %73 = load volatile i32, ptr %21, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %72

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %69, %68 ], [ %73, %72 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %78 = load i64, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %79 = load volatile i32, ptr %21, align 4
  %80 = icmp eq i32 %79, %77
  br i1 %80, label %81, label %68

81:                                               ; preds = %76
  %82 = zext i32 %67 to i64
  %83 = add i64 %78, 4095
  %84 = ashr i64 %83, 12
  %85 = icmp sgt i64 %84, %82
  br i1 %85, label %86, label %569

86:                                               ; preds = %81
  %87 = icmp slt i32 %37, %41
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  %89 = getelementptr i8, ptr %10, i32 -24
  %90 = load i64, ptr %89, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %92, label %533

92:                                               ; preds = %88, %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !23
  %93 = load ptr, ptr %11, align 4
  %94 = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 27
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %104, %92
  %97 = load volatile i32, ptr %21, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %100, %96
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !20
  %101 = load volatile i32, ptr %21, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %100

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %97, %96 ], [ %101, %100 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  %106 = load i64, ptr %22, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %107 = load volatile i32, ptr %21, align 4
  %108 = icmp eq i32 %107, %105
  br i1 %108, label %109, label %96

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.squashfs_sb_info, ptr %95, i32 0, i32 18
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i64
  %113 = ashr i64 %106, %112
  %114 = lshr i64 %113, 18
  %115 = tail call i64 @llvm.umin.i64(i64 %114, i64 6) #9
  %116 = trunc i64 %115 to i32
  %117 = add nuw nsw i32 %116, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %118 = getelementptr i8, ptr %10, i32 -56
  %119 = getelementptr i8, ptr %10, i32 -8
  %120 = load i64, ptr %119, align 8
  store i64 %120, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %121 = getelementptr i8, ptr %10, i32 -48
  %122 = load i32, ptr %121, align 8
  store i32 %122, ptr %4, align 4
  %123 = load i64, ptr %118, align 8
  %124 = shl nuw nsw i32 %117, 11
  %125 = udiv i32 %37, %124
  %126 = icmp ugt i32 %124, %37
  br i1 %126, label %487, label %127

127:                                              ; preds = %109
  %128 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10
  %129 = getelementptr inbounds %struct.squashfs_sb_info, ptr %95, i32 0, i32 14
  %130 = trunc i32 %117 to i16
  br label %131

131:                                              ; preds = %478, %127
  %132 = phi i64 [ %123, %127 ], [ %480, %478 ]
  %133 = phi i32 [ 0, %127 ], [ %479, %478 ]
  %134 = add nsw i32 %133, 1
  %135 = load ptr, ptr %11, align 4
  %136 = getelementptr inbounds %struct.super_block, ptr %135, i32 0, i32 27
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.squashfs_sb_info, ptr %137, i32 0, i32 10
  call void @mutex_lock(ptr noundef %138) #9
  %139 = getelementptr inbounds %struct.squashfs_sb_info, ptr %137, i32 0, i32 11
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %286, label %142

142:                                              ; preds = %131
  %143 = load i32, ptr %128, align 4
  %144 = load i32, ptr %140, align 8
  %145 = icmp eq i32 %144, %143
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = getelementptr %struct.meta_index, ptr %140, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = icmp ult i32 %148, %134
  %150 = icmp ugt i32 %148, %125
  %151 = or i1 %149, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = getelementptr %struct.meta_index, ptr %140, i32 0, i32 4
  %154 = load i16, ptr %153, align 4
  %155 = icmp eq i16 %154, 0
  %156 = select i1 %155, ptr %140, ptr null
  %157 = select i1 %155, i32 %148, i32 %134
  br label %158

158:                                              ; preds = %152, %146, %142
  %159 = phi ptr [ null, %146 ], [ null, %142 ], [ %156, %152 ]
  %160 = phi i32 [ %134, %146 ], [ %134, %142 ], [ %157, %152 ]
  %161 = getelementptr %struct.meta_index, ptr %140, i32 1
  %162 = load i32, ptr %161, align 8
  %163 = icmp eq i32 %162, %143
  br i1 %163, label %164, label %176

164:                                              ; preds = %158
  %165 = getelementptr %struct.meta_index, ptr %140, i32 1, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = icmp ult i32 %166, %160
  %168 = icmp ugt i32 %166, %125
  %169 = or i1 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = getelementptr %struct.meta_index, ptr %140, i32 1, i32 4
  %172 = load i16, ptr %171, align 4
  %173 = icmp eq i16 %172, 0
  %174 = select i1 %173, ptr %161, ptr %159
  %175 = select i1 %173, i32 %166, i32 %160
  br label %176

176:                                              ; preds = %170, %164, %158
  %177 = phi ptr [ %159, %164 ], [ %159, %158 ], [ %174, %170 ]
  %178 = phi i32 [ %160, %164 ], [ %160, %158 ], [ %175, %170 ]
  %179 = getelementptr %struct.meta_index, ptr %140, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = icmp eq i32 %180, %143
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = getelementptr %struct.meta_index, ptr %140, i32 2, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = icmp ult i32 %184, %178
  %186 = icmp ugt i32 %184, %125
  %187 = or i1 %185, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = getelementptr %struct.meta_index, ptr %140, i32 2, i32 4
  %190 = load i16, ptr %189, align 4
  %191 = icmp eq i16 %190, 0
  %192 = select i1 %191, ptr %179, ptr %177
  %193 = select i1 %191, i32 %184, i32 %178
  br label %194

194:                                              ; preds = %188, %182, %176
  %195 = phi ptr [ %177, %182 ], [ %177, %176 ], [ %192, %188 ]
  %196 = phi i32 [ %178, %182 ], [ %178, %176 ], [ %193, %188 ]
  %197 = getelementptr %struct.meta_index, ptr %140, i32 3
  %198 = load i32, ptr %197, align 8
  %199 = icmp eq i32 %198, %143
  br i1 %199, label %200, label %212

200:                                              ; preds = %194
  %201 = getelementptr %struct.meta_index, ptr %140, i32 3, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = icmp ult i32 %202, %196
  %204 = icmp ugt i32 %202, %125
  %205 = or i1 %203, %204
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = getelementptr %struct.meta_index, ptr %140, i32 3, i32 4
  %208 = load i16, ptr %207, align 4
  %209 = icmp eq i16 %208, 0
  %210 = select i1 %209, ptr %197, ptr %195
  %211 = select i1 %209, i32 %202, i32 %196
  br label %212

212:                                              ; preds = %206, %200, %194
  %213 = phi ptr [ %195, %200 ], [ %195, %194 ], [ %210, %206 ]
  %214 = phi i32 [ %196, %200 ], [ %196, %194 ], [ %211, %206 ]
  %215 = getelementptr %struct.meta_index, ptr %140, i32 4
  %216 = load i32, ptr %215, align 8
  %217 = icmp eq i32 %216, %143
  br i1 %217, label %218, label %230

218:                                              ; preds = %212
  %219 = getelementptr %struct.meta_index, ptr %140, i32 4, i32 1
  %220 = load i32, ptr %219, align 4
  %221 = icmp ult i32 %220, %214
  %222 = icmp ugt i32 %220, %125
  %223 = or i1 %221, %222
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = getelementptr %struct.meta_index, ptr %140, i32 4, i32 4
  %226 = load i16, ptr %225, align 4
  %227 = icmp eq i16 %226, 0
  %228 = select i1 %227, ptr %215, ptr %213
  %229 = select i1 %227, i32 %220, i32 %214
  br label %230

230:                                              ; preds = %224, %218, %212
  %231 = phi ptr [ %213, %218 ], [ %213, %212 ], [ %228, %224 ]
  %232 = phi i32 [ %214, %218 ], [ %214, %212 ], [ %229, %224 ]
  %233 = getelementptr %struct.meta_index, ptr %140, i32 5
  %234 = load i32, ptr %233, align 8
  %235 = icmp eq i32 %234, %143
  br i1 %235, label %236, label %248

236:                                              ; preds = %230
  %237 = getelementptr %struct.meta_index, ptr %140, i32 5, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = icmp ult i32 %238, %232
  %240 = icmp ugt i32 %238, %125
  %241 = or i1 %239, %240
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = getelementptr %struct.meta_index, ptr %140, i32 5, i32 4
  %244 = load i16, ptr %243, align 4
  %245 = icmp eq i16 %244, 0
  %246 = select i1 %245, ptr %233, ptr %231
  %247 = select i1 %245, i32 %238, i32 %232
  br label %248

248:                                              ; preds = %242, %236, %230
  %249 = phi ptr [ %231, %236 ], [ %231, %230 ], [ %246, %242 ]
  %250 = phi i32 [ %232, %236 ], [ %232, %230 ], [ %247, %242 ]
  %251 = getelementptr %struct.meta_index, ptr %140, i32 6
  %252 = load i32, ptr %251, align 8
  %253 = icmp eq i32 %252, %143
  br i1 %253, label %254, label %266

254:                                              ; preds = %248
  %255 = getelementptr %struct.meta_index, ptr %140, i32 6, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = icmp ult i32 %256, %250
  %258 = icmp ugt i32 %256, %125
  %259 = or i1 %257, %258
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = getelementptr %struct.meta_index, ptr %140, i32 6, i32 4
  %262 = load i16, ptr %261, align 4
  %263 = icmp eq i16 %262, 0
  %264 = select i1 %263, ptr %251, ptr %249
  %265 = select i1 %263, i32 %256, i32 %250
  br label %266

266:                                              ; preds = %260, %254, %248
  %267 = phi ptr [ %249, %254 ], [ %249, %248 ], [ %264, %260 ]
  %268 = phi i32 [ %250, %254 ], [ %250, %248 ], [ %265, %260 ]
  %269 = getelementptr %struct.meta_index, ptr %140, i32 7
  %270 = load i32, ptr %269, align 8
  %271 = icmp eq i32 %270, %143
  br i1 %271, label %272, label %283

272:                                              ; preds = %266
  %273 = getelementptr %struct.meta_index, ptr %140, i32 7, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = icmp ult i32 %274, %268
  %276 = icmp ugt i32 %274, %125
  %277 = or i1 %275, %276
  br i1 %277, label %283, label %278

278:                                              ; preds = %272
  %279 = getelementptr %struct.meta_index, ptr %140, i32 7, i32 4
  %280 = load i16, ptr %279, align 4
  %281 = icmp eq i16 %280, 0
  %282 = select i1 %281, ptr %269, ptr %267
  br label %283

283:                                              ; preds = %278, %272, %266
  %284 = phi ptr [ %267, %272 ], [ %267, %266 ], [ %282, %278 ]
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %410

286:                                              ; preds = %283, %131
  call void @mutex_unlock(ptr noundef %138) #9
  %287 = load ptr, ptr %11, align 4
  %288 = getelementptr inbounds %struct.super_block, ptr %287, i32 0, i32 27
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.squashfs_sb_info, ptr %289, i32 0, i32 10
  call void @mutex_lock(ptr noundef %290) #9
  %291 = getelementptr inbounds %struct.squashfs_sb_info, ptr %289, i32 0, i32 11
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct.squashfs_sb_info, ptr %289, i32 0, i32 6
  %296 = load i32, ptr %295, align 8
  br label %335

297:                                              ; preds = %286
  %298 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #10
  store ptr %298, ptr %291, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %333, label %300

300:                                              ; preds = %297
  store i32 0, ptr %298, align 4096
  %301 = load ptr, ptr %291, align 4
  %302 = getelementptr %struct.meta_index, ptr %301, i32 0, i32 4
  store i16 0, ptr %302, align 4
  %303 = load ptr, ptr %291, align 4
  %304 = getelementptr %struct.meta_index, ptr %303, i32 1
  store i32 0, ptr %304, align 8
  %305 = load ptr, ptr %291, align 4
  %306 = getelementptr %struct.meta_index, ptr %305, i32 1, i32 4
  store i16 0, ptr %306, align 4
  %307 = load ptr, ptr %291, align 4
  %308 = getelementptr %struct.meta_index, ptr %307, i32 2
  store i32 0, ptr %308, align 8
  %309 = load ptr, ptr %291, align 4
  %310 = getelementptr %struct.meta_index, ptr %309, i32 2, i32 4
  store i16 0, ptr %310, align 4
  %311 = load ptr, ptr %291, align 4
  %312 = getelementptr %struct.meta_index, ptr %311, i32 3
  store i32 0, ptr %312, align 8
  %313 = load ptr, ptr %291, align 4
  %314 = getelementptr %struct.meta_index, ptr %313, i32 3, i32 4
  store i16 0, ptr %314, align 4
  %315 = load ptr, ptr %291, align 4
  %316 = getelementptr %struct.meta_index, ptr %315, i32 4
  store i32 0, ptr %316, align 8
  %317 = load ptr, ptr %291, align 4
  %318 = getelementptr %struct.meta_index, ptr %317, i32 4, i32 4
  store i16 0, ptr %318, align 4
  %319 = load ptr, ptr %291, align 4
  %320 = getelementptr %struct.meta_index, ptr %319, i32 5
  store i32 0, ptr %320, align 8
  %321 = load ptr, ptr %291, align 4
  %322 = getelementptr %struct.meta_index, ptr %321, i32 5, i32 4
  store i16 0, ptr %322, align 4
  %323 = load ptr, ptr %291, align 4
  %324 = getelementptr %struct.meta_index, ptr %323, i32 6
  store i32 0, ptr %324, align 8
  %325 = load ptr, ptr %291, align 4
  %326 = getelementptr %struct.meta_index, ptr %325, i32 6, i32 4
  store i16 0, ptr %326, align 4
  %327 = load ptr, ptr %291, align 4
  %328 = getelementptr %struct.meta_index, ptr %327, i32 7
  store i32 0, ptr %328, align 8
  %329 = load ptr, ptr %291, align 4
  %330 = getelementptr %struct.meta_index, ptr %329, i32 7, i32 4
  store i16 0, ptr %330, align 4
  %331 = getelementptr inbounds %struct.squashfs_sb_info, ptr %289, i32 0, i32 6
  store i32 0, ptr %331, align 8
  %332 = load ptr, ptr %291, align 4
  br label %335

333:                                              ; preds = %297
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %395

335:                                              ; preds = %300, %294
  %336 = phi i32 [ 0, %300 ], [ %296, %294 ]
  %337 = phi ptr [ %332, %300 ], [ %292, %294 ]
  %338 = getelementptr inbounds %struct.squashfs_sb_info, ptr %289, i32 0, i32 6
  %339 = getelementptr %struct.meta_index, ptr %337, i32 %336, i32 4
  %340 = load i16, ptr %339, align 4
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %396, label %342

342:                                              ; preds = %335
  %343 = add i32 %336, 1
  %344 = srem i32 %343, 8
  store i32 %344, ptr %338, align 8
  %345 = getelementptr %struct.meta_index, ptr %337, i32 %344, i32 4
  %346 = load i16, ptr %345, align 4
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %396, label %348

348:                                              ; preds = %342
  %349 = trunc i32 %344 to i8
  %350 = add nsw i8 %349, 1
  %351 = srem i8 %350, 8
  %352 = sext i8 %351 to i32
  store i32 %352, ptr %338, align 8
  %353 = getelementptr %struct.meta_index, ptr %337, i32 %352, i32 4
  %354 = load i16, ptr %353, align 4
  %355 = icmp eq i16 %354, 0
  br i1 %355, label %396, label %356

356:                                              ; preds = %348
  %357 = add nsw i8 %351, 1
  %358 = srem i8 %357, 8
  %359 = sext i8 %358 to i32
  store i32 %359, ptr %338, align 8
  %360 = getelementptr %struct.meta_index, ptr %337, i32 %359, i32 4
  %361 = load i16, ptr %360, align 4
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %396, label %363

363:                                              ; preds = %356
  %364 = add nsw i8 %358, 1
  %365 = srem i8 %364, 8
  %366 = sext i8 %365 to i32
  store i32 %366, ptr %338, align 8
  %367 = getelementptr %struct.meta_index, ptr %337, i32 %366, i32 4
  %368 = load i16, ptr %367, align 4
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %396, label %370

370:                                              ; preds = %363
  %371 = add nsw i8 %365, 1
  %372 = srem i8 %371, 8
  %373 = sext i8 %372 to i32
  store i32 %373, ptr %338, align 8
  %374 = getelementptr %struct.meta_index, ptr %337, i32 %373, i32 4
  %375 = load i16, ptr %374, align 4
  %376 = icmp eq i16 %375, 0
  br i1 %376, label %396, label %377

377:                                              ; preds = %370
  %378 = add nsw i8 %372, 1
  %379 = srem i8 %378, 8
  %380 = sext i8 %379 to i32
  store i32 %380, ptr %338, align 8
  %381 = getelementptr %struct.meta_index, ptr %337, i32 %380, i32 4
  %382 = load i16, ptr %381, align 4
  %383 = icmp eq i16 %382, 0
  br i1 %383, label %396, label %384

384:                                              ; preds = %377
  %385 = add nsw i8 %379, 1
  %386 = srem i8 %385, 8
  %387 = sext i8 %386 to i32
  store i32 %387, ptr %338, align 8
  %388 = getelementptr %struct.meta_index, ptr %337, i32 %387, i32 4
  %389 = load i16, ptr %388, align 4
  %390 = icmp eq i16 %389, 0
  br i1 %390, label %396, label %391

391:                                              ; preds = %384
  %392 = add nsw i8 %386, 1
  %393 = and i8 %392, 7
  %394 = zext i8 %393 to i32
  store i32 %394, ptr %338, align 8
  br label %395

395:                                              ; preds = %391, %333
  call void @mutex_unlock(ptr noundef %290) #9
  br label %487

396:                                              ; preds = %384, %377, %370, %363, %356, %348, %342, %335
  %397 = phi i32 [ %336, %335 ], [ %344, %342 ], [ %352, %348 ], [ %359, %356 ], [ %366, %363 ], [ %373, %370 ], [ %380, %377 ], [ %387, %384 ]
  %398 = phi ptr [ %339, %335 ], [ %345, %342 ], [ %353, %348 ], [ %360, %356 ], [ %367, %363 ], [ %374, %370 ], [ %381, %377 ], [ %388, %384 ]
  %399 = getelementptr %struct.meta_index, ptr %337, i32 %397
  %400 = add i32 %397, 1
  %401 = srem i32 %400, 8
  store i32 %401, ptr %338, align 8
  %402 = load i32, ptr %128, align 4
  store i32 %402, ptr %399, align 8
  %403 = getelementptr %struct.meta_index, ptr %337, i32 %397, i32 1
  store i32 %134, ptr %403, align 4
  %404 = getelementptr %struct.meta_index, ptr %337, i32 %397, i32 3
  store i16 %130, ptr %404, align 2
  %405 = getelementptr %struct.meta_index, ptr %337, i32 %397, i32 2
  store i16 0, ptr %405, align 8
  store i16 1, ptr %398, align 4
  call void @mutex_unlock(ptr noundef %290) #9
  %406 = icmp eq ptr %399, null
  br i1 %406, label %487, label %407

407:                                              ; preds = %396
  %408 = load i16, ptr %405, align 8
  %409 = zext i16 %408 to i32
  br label %432

410:                                              ; preds = %283
  %411 = getelementptr inbounds %struct.meta_index, ptr %284, i32 0, i32 4
  store i16 1, ptr %411, align 4
  call void @mutex_unlock(ptr noundef %138) #9
  %412 = getelementptr inbounds %struct.meta_index, ptr %284, i32 0, i32 1
  %413 = load i32, ptr %412, align 4
  %414 = getelementptr inbounds %struct.meta_index, ptr %284, i32 0, i32 2
  %415 = load i16, ptr %414, align 8
  %416 = zext i16 %415 to i32
  %417 = add i32 %413, %416
  %418 = icmp ult i32 %125, %417
  %419 = add i32 %417, -1
  %420 = select i1 %418, i32 %125, i32 %419
  %421 = sub i32 %420, %413
  %422 = getelementptr %struct.meta_index, ptr %284, i32 0, i32 6, i32 %421
  %423 = getelementptr %struct.meta_index, ptr %284, i32 0, i32 6, i32 %421, i32 1
  %424 = load i32, ptr %423, align 8
  %425 = zext i32 %424 to i64
  %426 = load i64, ptr %129, align 8
  %427 = add i64 %426, %425
  store i64 %427, ptr %3, align 8
  %428 = getelementptr %struct.meta_index, ptr %284, i32 0, i32 6, i32 %421, i32 2
  %429 = load i16, ptr %428, align 4
  %430 = zext i16 %429 to i32
  store i32 %430, ptr %4, align 4
  %431 = load i64, ptr %422, align 8
  br label %432

432:                                              ; preds = %410, %407
  %433 = phi i32 [ %409, %407 ], [ %416, %410 ]
  %434 = phi i32 [ %133, %407 ], [ %420, %410 ]
  %435 = phi ptr [ %399, %407 ], [ %284, %410 ]
  %436 = phi i64 [ %132, %407 ], [ %431, %410 ]
  %437 = getelementptr inbounds %struct.meta_index, ptr %435, i32 0, i32 1
  %438 = load i32, ptr %437, align 4
  %439 = getelementptr inbounds %struct.meta_index, ptr %435, i32 0, i32 2
  %440 = add i32 %438, %433
  %441 = icmp sle i32 %440, %125
  %442 = add i32 %438, 127
  %443 = icmp ult i32 %440, %442
  %444 = and i1 %441, %443
  br i1 %444, label %445, label %478

445:                                              ; preds = %473, %432
  %446 = phi i32 [ %471, %473 ], [ %434, %432 ]
  %447 = phi i64 [ %457, %473 ], [ %436, %432 ]
  %448 = phi i32 [ %474, %473 ], [ %440, %432 ]
  %449 = load ptr, ptr %11, align 4
  %450 = call fastcc i64 @read_indexes(ptr noundef %449, i32 noundef %124, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %451 = icmp slt i64 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %445
  %453 = load i16, ptr %439, align 8
  %454 = icmp eq i16 %453, 0
  br i1 %454, label %455, label %493

455:                                              ; preds = %452
  store i32 0, ptr %435, align 8
  br label %493

456:                                              ; preds = %445
  %457 = add i64 %450, %447
  %458 = load i32, ptr %437, align 4
  %459 = sub i32 %448, %458
  %460 = getelementptr %struct.meta_index, ptr %435, i32 0, i32 6, i32 %459
  %461 = load i64, ptr %3, align 8
  %462 = load i64, ptr %129, align 8
  %463 = sub i64 %461, %462
  %464 = trunc i64 %463 to i32
  %465 = getelementptr %struct.meta_index, ptr %435, i32 0, i32 6, i32 %459, i32 1
  store i32 %464, ptr %465, align 8
  %466 = load i32, ptr %4, align 4
  %467 = trunc i32 %466 to i16
  %468 = getelementptr %struct.meta_index, ptr %435, i32 0, i32 6, i32 %459, i32 2
  store i16 %467, ptr %468, align 4
  store i64 %457, ptr %460, align 8
  %469 = load i16, ptr %439, align 8
  %470 = add i16 %469, 1
  store i16 %470, ptr %439, align 8
  %471 = add i32 %446, 1
  %472 = icmp eq i32 %448, %125
  br i1 %472, label %478, label %473

473:                                              ; preds = %456
  %474 = add nuw nsw i32 %448, 1
  %475 = load i32, ptr %437, align 4
  %476 = add i32 %475, 127
  %477 = icmp ult i32 %474, %476
  br i1 %477, label %445, label %478

478:                                              ; preds = %473, %456, %432
  %479 = phi i32 [ %434, %432 ], [ %471, %456 ], [ %471, %473 ]
  %480 = phi i64 [ %436, %432 ], [ %457, %456 ], [ %457, %473 ]
  %481 = load ptr, ptr %11, align 4
  %482 = getelementptr inbounds %struct.super_block, ptr %481, i32 0, i32 27
  %483 = load ptr, ptr %482, align 4
  %484 = getelementptr inbounds %struct.squashfs_sb_info, ptr %483, i32 0, i32 10
  call void @mutex_lock(ptr noundef %484) #9
  %485 = getelementptr inbounds %struct.meta_index, ptr %435, i32 0, i32 4
  store i16 0, ptr %485, align 4
  call void @mutex_unlock(ptr noundef %484) #9
  %486 = icmp slt i32 %479, %125
  br i1 %486, label %131, label %487

487:                                              ; preds = %478, %396, %395, %109
  %488 = phi i32 [ %133, %395 ], [ 0, %109 ], [ %133, %396 ], [ %479, %478 ]
  %489 = phi i64 [ %132, %395 ], [ %123, %109 ], [ %132, %396 ], [ %480, %478 ]
  %490 = load i64, ptr %3, align 8
  store i64 %490, ptr %5, align 8
  %491 = load i32, ptr %4, align 4
  store i32 %491, ptr %6, align 4
  %492 = mul i32 %488, %124
  br label %500

493:                                              ; preds = %455, %452
  %494 = trunc i64 %450 to i32
  %495 = load ptr, ptr %11, align 4
  %496 = getelementptr inbounds %struct.super_block, ptr %495, i32 0, i32 27
  %497 = load ptr, ptr %496, align 4
  %498 = getelementptr inbounds %struct.squashfs_sb_info, ptr %497, i32 0, i32 10
  call void @mutex_lock(ptr noundef %498) #9
  %499 = getelementptr inbounds %struct.meta_index, ptr %435, i32 0, i32 4
  store i16 0, ptr %499, align 4
  call void @mutex_unlock(ptr noundef %498) #9
  br label %500

500:                                              ; preds = %493, %487
  %501 = phi i64 [ %489, %487 ], [ 0, %493 ]
  %502 = phi i32 [ %492, %487 ], [ %494, %493 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %522, label %504

504:                                              ; preds = %500
  %505 = icmp sgt i32 %37, %502
  br i1 %505, label %506, label %513

506:                                              ; preds = %504
  %507 = load ptr, ptr %11, align 4
  %508 = sub i32 %37, %502
  %509 = call fastcc i64 @read_indexes(ptr noundef %507, i32 noundef %508, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %510 = icmp slt i64 %509, 0
  br i1 %510, label %523, label %511

511:                                              ; preds = %506
  %512 = add i64 %509, %501
  br label %513

513:                                              ; preds = %511, %504
  %514 = phi i64 [ %512, %511 ], [ %501, %504 ]
  %515 = load ptr, ptr %11, align 4
  %516 = call i32 @squashfs_read_metadata(ptr noundef %515, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 4) #9
  %517 = icmp slt i32 %516, 0
  br i1 %517, label %522, label %518

518:                                              ; preds = %513
  %519 = load i32, ptr %7, align 4
  %520 = icmp ult i32 %519, 33554432
  br i1 %520, label %521, label %522

521:                                              ; preds = %518
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %526

522:                                              ; preds = %518, %513, %500
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %557

523:                                              ; preds = %506
  %524 = trunc i64 %509 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  %525 = icmp slt i32 %524, 0
  br i1 %525, label %557, label %526

526:                                              ; preds = %523, %521
  %527 = phi i32 [ %519, %521 ], [ %524, %523 ]
  %528 = phi i64 [ %514, %521 ], [ %501, %523 ]
  %529 = icmp eq i32 %527, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %526
  call void @squashfs_copy_cache(ptr noundef %1, ptr noundef null, i32 noundef %66, i32 noundef 0) #9
  br label %595

531:                                              ; preds = %526
  %532 = call i32 @squashfs_readpage_block(ptr noundef %1, i64 noundef %528, i32 noundef %527, i32 noundef %66) #9
  br label %554

533:                                              ; preds = %88
  %534 = load ptr, ptr %8, align 4
  %535 = load ptr, ptr %534, align 4
  %536 = getelementptr inbounds %struct.inode, ptr %535, i32 0, i32 8
  %537 = load ptr, ptr %536, align 4
  %538 = getelementptr i8, ptr %535, i32 -24
  %539 = load i64, ptr %538, align 8
  %540 = getelementptr i8, ptr %535, i32 -16
  %541 = load i32, ptr %540, align 8
  %542 = tail call ptr @squashfs_get_fragment(ptr noundef %537, i64 noundef %539, i32 noundef %541) #9
  %543 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %542, i32 0, i32 5
  %544 = load i32, ptr %543, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %550, label %546

546:                                              ; preds = %533
  %547 = load i64, ptr %538, align 8
  %548 = load i32, ptr %540, align 8
  %549 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %547, i32 noundef %548) #11
  br label %553

550:                                              ; preds = %533
  %551 = getelementptr i8, ptr %535, i32 -12
  %552 = load i32, ptr %551, align 4
  tail call void @squashfs_copy_cache(ptr noundef %1, ptr noundef %542, i32 noundef %66, i32 noundef %552) #9
  br label %553

553:                                              ; preds = %550, %546
  tail call void @squashfs_cache_put(ptr noundef %542) #9
  br label %554

554:                                              ; preds = %553, %531
  %555 = phi i32 [ %544, %553 ], [ %532, %531 ]
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %595, label %557

557:                                              ; preds = %554, %523, %522
  %558 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %559 = load volatile i32, ptr %558, align 4
  %560 = and i32 %559, 1
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %564, label %562, !prof !13

562:                                              ; preds = %557
  %563 = add i32 %559, -1
  br label %566

564:                                              ; preds = %557
  %565 = ptrtoint ptr %1 to i32
  br label %566

566:                                              ; preds = %564, %562
  %567 = phi i32 [ %563, %562 ], [ %565, %564 ]
  %568 = inttoptr i32 %567 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %568) #9
  br label %569

569:                                              ; preds = %566, %81
  %570 = load i32, ptr @pgprot_kernel, align 4
  %571 = or i32 %570, 512
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !8
  %572 = tail call ptr @llvm.thread.pointer() #9
  %573 = getelementptr inbounds %struct.task_struct, ptr %572, i32 0, i32 149
  %574 = load i32, ptr %573, align 8
  %575 = add i32 %574, 1
  store i32 %575, ptr %573, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %576 = call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %571) #9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %576, i8 0, i32 4096, i1 false)
  call void @kunmap_local_indexed(ptr noundef %576) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  %577 = load i32, ptr %573, align 8
  %578 = add i32 %577, -1
  store i32 %578, ptr %573, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  call void @flush_dcache_page(ptr noundef %1) #9
  %579 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %580 = load volatile i32, ptr %579, align 4
  %581 = and i32 %580, 1
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %585, label %583, !prof !13

583:                                              ; preds = %569
  %584 = add i32 %580, -1
  br label %587

585:                                              ; preds = %569
  %586 = ptrtoint ptr %1 to i32
  br label %587

587:                                              ; preds = %585, %583
  %588 = phi i32 [ %584, %583 ], [ %586, %585 ]
  %589 = inttoptr i32 %588 to ptr
  %590 = load volatile i32, ptr %589, align 4
  %591 = and i32 %590, 256
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %594

593:                                              ; preds = %587
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !12
  call void @_set_bit(i32 noundef 2, ptr noundef %1) #9
  br label %594

594:                                              ; preds = %593, %587
  call void @unlock_page(ptr noundef %1) #9
  br label %595

595:                                              ; preds = %594, %554, %530
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_readpage_block(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @read_indexes(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %64

10:                                               ; preds = %56, %46
  %11 = phi i64 [ %58, %56 ], [ %47, %46 ]
  br i1 %49, label %60, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @squashfs_read_metadata(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i32 noundef %51) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  br i1 %52, label %16, label %42

16:                                               ; preds = %15
  %17 = load i32, ptr %6, align 8
  %18 = icmp ult i32 %17, 33554432
  %19 = select i1 %18, i32 %17, i32 -5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %56, label %31

21:                                               ; preds = %12
  %22 = load i64, ptr %2, align 8
  %23 = load i32, ptr %3, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i64 noundef %22, i32 noundef %23) #11
  br label %61

25:                                               ; preds = %31
  %26 = getelementptr i32, ptr %6, i32 %38
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, 33554432
  %29 = select i1 %28, i32 %27, i32 -5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %54, label %31

31:                                               ; preds = %25, %16
  %32 = phi i32 [ %29, %25 ], [ %19, %16 ]
  %33 = phi i64 [ %37, %25 ], [ %11, %16 ]
  %34 = phi i32 [ %38, %25 ], [ 0, %16 ]
  %35 = and i32 %32, -16777217
  %36 = zext i32 %35 to i64
  %37 = add i64 %33, %36
  %38 = add nuw nsw i32 %34, 1
  %39 = icmp eq i32 %38, %53
  br i1 %39, label %40, label %25

40:                                               ; preds = %31
  %41 = icmp slt i32 %38, %50
  br label %42

42:                                               ; preds = %40, %15
  %43 = phi i64 [ %37, %40 ], [ %11, %15 ]
  %44 = phi i1 [ %41, %40 ], [ false, %15 ]
  %45 = sub i32 %48, %50
  br i1 %44, label %61, label %46

46:                                               ; preds = %42, %4
  %47 = phi i64 [ %43, %42 ], [ 0, %4 ]
  %48 = phi i32 [ %45, %42 ], [ %1, %4 ]
  %49 = icmp eq i32 %48, 0
  %50 = tail call i32 @llvm.smin.i32(i32 %48, i32 1024)
  %51 = shl i32 %50, 2
  %52 = icmp sgt i32 %48, 0
  %53 = call i32 @llvm.smax.i32(i32 %50, i32 1)
  br label %10

54:                                               ; preds = %25
  %55 = icmp slt i32 %38, %50
  br label %56

56:                                               ; preds = %54, %16
  %57 = phi i1 [ true, %16 ], [ %55, %54 ]
  %58 = phi i64 [ %11, %16 ], [ %37, %54 ]
  %59 = phi i32 [ %19, %16 ], [ %29, %54 ]
  br i1 %57, label %61, label %10

60:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %64

61:                                               ; preds = %56, %42, %21
  %62 = phi i32 [ %13, %21 ], [ %59, %56 ], [ %13, %42 ]
  tail call void @kfree(ptr noundef nonnull %6) #9
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %61, %60, %8
  %65 = phi i64 [ -12, %8 ], [ %63, %61 ], [ %11, %60 ]
  ret i64 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_get_fragment(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @squashfs_cache_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2152423713}
!9 = !{i64 2150975504}
!10 = !{i64 2150975711}
!11 = !{i64 2152426338}
!12 = !{i64 2150175771}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2150174750}
!15 = !{i64 2148441404}
!16 = !{i64 839339, i64 2148329310, i64 2148329336, i64 2148329383, i64 2148329405, i64 2148329433, i64 2148329453}
!17 = !{i64 2148343766, i64 2148343798, i64 2148343827, i64 2148343861, i64 2148343892, i64 2148343915}
!18 = !{i64 2148441607}
!19 = !{i64 2151291980}
!20 = !{i64 2151291822}
!21 = !{i64 2151292124}
!22 = !{i64 2149486367}
!23 = !{!"auto-init"}
