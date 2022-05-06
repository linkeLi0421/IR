; ModuleID = '/llk/IR/fs/fhandle.c_pt.bc'
source_filename = "../fs/fhandle.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_handle = type { i32, i32, [0 x i8] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.97, %struct.list_head, %struct.list_head, %union.anon.98 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.95 }
%union.anon.95 = type { i64 }
%union.anon.97 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.98 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.file = type { %union.anon.99, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.99 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.94 = type { ptr }

@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

@sys_name_to_handle_at = dso_local alias i32 (i32, ptr, ptr, ptr, i32), ptr @__se_sys_name_to_handle_at
@sys_open_by_handle_at = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_open_by_handle_at

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_name_to_handle_at(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.file_handle, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path, align 8
  %9 = inttoptr i32 %2 to ptr
  %10 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  store i64 0, ptr %8, align 8, !annotation !8
  %11 = and i32 %4, -5121
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %107

13:                                               ; preds = %5
  %14 = inttoptr i32 %1 to ptr
  %15 = lshr i32 %4, 10
  %16 = and i32 %15, 1
  %17 = shl nuw nsw i32 %4, 2
  %18 = and i32 %17, 16384
  %19 = or i32 %18, %16
  %20 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %14, i32 noundef %19, ptr noundef nonnull %8, ptr noundef null) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %107

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %23 = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %105, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.export_operations, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %105, label %34

34:                                               ; preds = %30
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 8, i32 -1090519040) #8, !srcloc !9
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46, !prof !10

38:                                               ; preds = %34
  %39 = tail call ptr @llvm.thread.pointer() #7
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #9, !srcloc !11
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %44 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %9, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !10

46:                                               ; preds = %38, %34
  %47 = phi i32 [ %44, %38 ], [ 8, %34 ]
  %48 = sub i32 8, %47
  %49 = getelementptr i8, ptr %6, i32 %48
  call void @llvm.memset.p0.i32(ptr align 1 %49, i8 0, i32 %47, i1 false) #7
  br label %105

50:                                               ; preds = %38
  %51 = load i32, ptr %6, align 8
  %52 = icmp ugt i32 %51, 128
  br i1 %52, label %105, label %53

53:                                               ; preds = %50
  %54 = add nuw nsw i32 %51, 8
  %55 = call noalias align 64 ptr @__kmalloc(i32 noundef %54, i32 noundef 3264) #10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %105, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %6, align 8
  %59 = lshr i32 %58, 2
  store i32 %59, ptr %7, align 4
  %60 = load ptr, ptr %23, align 4
  %61 = getelementptr inbounds %struct.file_handle, ptr %55, i32 0, i32 2
  %62 = call i32 @exportfs_encode_fh(ptr noundef %60, ptr noundef %61, ptr noundef nonnull %7, i32 noundef 0) #7
  %63 = getelementptr inbounds %struct.file_handle, ptr %55, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %7, align 4
  %65 = shl i32 %64, 2
  store i32 %65, ptr %55, align 64
  %66 = load i32, ptr %6, align 8
  %67 = icmp ugt i32 %65, %66
  %68 = freeze i1 %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %57
  switch i32 %62, label %70 [
    i32 -28, label %72
    i32 255, label %72
  ]

70:                                               ; preds = %69
  %71 = add i32 %65, 8
  br label %72

72:                                               ; preds = %70, %69, %69, %57
  %73 = phi i32 [ %71, %70 ], [ 8, %69 ], [ 8, %69 ], [ 8, %57 ]
  %74 = phi i32 [ 0, %70 ], [ -75, %69 ], [ -75, %69 ], [ -75, %57 ]
  %75 = load ptr, ptr %8, align 8
  %76 = getelementptr i8, ptr %75, i32 132
  %77 = load i32, ptr %76, align 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #9, !srcloc !11
  %79 = and i32 %78, -13
  %80 = or i32 %79, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %81 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %77, i32 -1090519041) #7, !srcloc !14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %72
  %84 = icmp slt i32 %73, 0
  %85 = load i1, ptr @check_copy_size.__already_done, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %89, !prof !15

88:                                               ; preds = %83
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %89

89:                                               ; preds = %88, %83
  br i1 %84, label %102, label %90, !prof !15

90:                                               ; preds = %89
  %91 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %73, i32 -1090519040) #8, !srcloc !16
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #9, !srcloc !11
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %98 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %55, i32 noundef %73) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i32 [ %98, %94 ], [ %73, %90 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99, %89, %72
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i32 [ -14, %102 ], [ %74, %99 ]
  call void @kfree(ptr noundef nonnull %55) #7
  br label %105

105:                                              ; preds = %103, %53, %50, %46, %30, %22
  %106 = phi i32 [ %104, %103 ], [ -95, %30 ], [ -95, %22 ], [ -22, %50 ], [ -12, %53 ], [ -14, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @path_put(ptr noundef nonnull %8) #7
  br label %107

107:                                              ; preds = %105, %13, %5
  %108 = phi i32 [ -22, %5 ], [ %20, %13 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  ret i32 %108
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_open_by_handle_at(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.file_handle, align 8
  %5 = alloca %struct.path, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %7 = tail call zeroext i1 @capable(i32 noundef 2) #7
  br i1 %7, label %8, label %95

8:                                                ; preds = %3
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1090519040) #8, !srcloc !9
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !10

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #7
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #9, !srcloc !11
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 8, %8 ]
  %22 = sub i32 8, %21
  %23 = getelementptr i8, ptr %4, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #7
  br label %95

24:                                               ; preds = %12
  %25 = load i32, ptr %4, align 8
  %26 = add i32 %25, -129
  %27 = icmp ult i32 %26, -128
  br i1 %27, label %95, label %28

28:                                               ; preds = %24
  %29 = add nuw nsw i32 %25, 8
  %30 = call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %95, label %32

32:                                               ; preds = %28
  %33 = load i64, ptr %4, align 8
  store i64 %33, ptr %30, align 64
  %34 = getelementptr inbounds %struct.file_handle, ptr %30, i32 0, i32 2
  %35 = getelementptr inbounds %struct.file_handle, ptr %6, i32 0, i32 2
  %36 = trunc i64 %33 to i32
  %37 = icmp slt i32 %36, 0
  %38 = load i1, ptr @check_copy_size.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !15

41:                                               ; preds = %32
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %42

42:                                               ; preds = %41, %32
  br i1 %37, label %97, label %43, !prof !15

43:                                               ; preds = %42
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 %36, i32 -1090519040) #8, !srcloc !9
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !10

47:                                               ; preds = %43
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #9, !srcloc !11
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  %51 = call i32 @arm_copy_from_user(ptr noundef %34, ptr noundef %35, i32 noundef %36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #7, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !13
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %51, %47 ], [ %36, %43 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55, !prof !10

55:                                               ; preds = %52
  %56 = sub i32 %36, %53
  %57 = getelementptr i8, ptr %34, i32 %56
  call void @llvm.memset.p0.i32(ptr align 1 %57, i8 0, i32 %53, i1 false) #7
  br label %97

58:                                               ; preds = %52
  %59 = icmp eq i32 %0, -100
  br i1 %59, label %60, label %69

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 89
  %62 = load ptr, ptr %61, align 64
  %63 = getelementptr inbounds %struct.fs_struct, ptr %62, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %63) #7
  %64 = getelementptr inbounds %struct.fs_struct, ptr %62, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = call ptr @mntget(ptr noundef %65) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %67 = load i16, ptr %63, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !20
  br label %82

69:                                               ; preds = %58
  %70 = call i32 @__fdget(i32 noundef %0) #7, !noalias !21
  %71 = and i32 %70, -4
  %72 = inttoptr i32 %71 to ptr
  %73 = icmp eq i32 %71, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void @kfree(ptr noundef nonnull %30) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %154

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.file, ptr %72, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = call ptr @mntget(ptr noundef %77) #7
  %79 = and i32 %70, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call void @fput(ptr noundef nonnull %72) #7
  br label %82

82:                                               ; preds = %81, %75, %60
  %83 = phi ptr [ %66, %60 ], [ %78, %81 ], [ %78, %75 ]
  store ptr %83, ptr %5, align 8
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %98, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %30, align 64
  %87 = lshr i32 %86, 2
  %88 = getelementptr inbounds %struct.file_handle, ptr %30, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = call ptr @exportfs_decode_fh(ptr noundef %83, ptr noundef %34, i32 noundef %87, i32 noundef %89, ptr noundef nonnull @vfs_dentry_acceptable, ptr noundef null) #7
  %91 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  call void @kfree(ptr noundef nonnull %30) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %102

94:                                               ; preds = %85
  call void @mntput(ptr noundef %83) #7
  br label %98

95:                                               ; preds = %28, %24, %20, %3
  %96 = phi i32 [ -14, %20 ], [ -12, %28 ], [ -22, %24 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %154

97:                                               ; preds = %55, %42
  call void @kfree(ptr noundef nonnull %30) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %154

98:                                               ; preds = %94, %82
  %99 = phi ptr [ %90, %94 ], [ %83, %82 ]
  %100 = ptrtoint ptr %99 to i32
  call void @kfree(ptr noundef nonnull %30) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %101 = icmp eq ptr %99, null
  br i1 %101, label %102, label %154

102:                                              ; preds = %98, %93
  %103 = call i32 @get_unused_fd_flags(i32 noundef %2) #7
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void @path_put(ptr noundef nonnull %5) #7
  br label %154

106:                                              ; preds = %102
  %107 = call ptr @file_open_root(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, i32 noundef %2, i16 noundef zeroext 0) #7
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  call void @put_unused_fd(i32 noundef %103) #7
  %110 = ptrtoint ptr %107 to i32
  br label %152

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.file, ptr %107, i32 0, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 32
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 32, i32 4128
  %117 = getelementptr inbounds %struct.file, ptr %107, i32 0, i32 8
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 67108864
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.file, ptr %107, i32 0, i32 1
  %123 = getelementptr inbounds %struct.file, ptr %107, i32 0, i32 1, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 5
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.super_block, ptr %128, i32 0, i32 42
  %130 = load volatile i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %151, label %132

132:                                              ; preds = %121
  %133 = load i16, ptr %126, align 8
  %134 = and i16 %133, -4096
  %135 = icmp eq i16 %134, 16384
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = or i32 %116, 1073741824
  %138 = load i32, ptr %124, align 8
  %139 = and i32 %138, 16384
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %136, %132
  %142 = phi i32 [ %137, %136 ], [ %116, %132 ]
  %143 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, %124
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = call i32 @__fsnotify_parent(ptr noundef %124, i32 noundef %142, ptr noundef %122, i32 noundef 1) #7
  br label %151

148:                                              ; preds = %141, %136
  %149 = phi i32 [ %142, %141 ], [ %137, %136 ]
  %150 = call i32 @fsnotify(i32 noundef %149, ptr noundef %122, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %126, i32 noundef 0) #7
  br label %151

151:                                              ; preds = %148, %146, %121, %111
  call void @fd_install(i32 noundef %103, ptr noundef %107) #7
  br label %152

152:                                              ; preds = %151, %109
  %153 = phi i32 [ %110, %109 ], [ %103, %151 ]
  call void @path_put(ptr noundef nonnull %5) #7
  br label %154

154:                                              ; preds = %152, %105, %98, %97, %95, %74
  %155 = phi i32 [ %103, %105 ], [ %153, %152 ], [ %100, %98 ], [ %96, %95 ], [ -14, %97 ], [ -9, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_fh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exportfs_decode_fh(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vfs_dentry_acceptable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 2151026478, i64 2151026503}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3522590}
!12 = !{i64 3522787}
!13 = !{i64 2151008066}
!14 = !{i64 2153874987, i64 2153875267, i64 2153875601, i64 2153875935}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2151027056, i64 2151027081}
!17 = !{i64 2149061423}
!18 = !{i64 2149057247}
!19 = !{i64 2149057322, i64 2149057349, i64 2149057396, i64 2149057418, i64 2149057446, i64 2149057466}
!20 = !{i64 2149084426}
!21 = !{!22}
!22 = distinct !{!22, !23, !"fdget: argument 0"}
!23 = distinct !{!23, !"fdget"}
