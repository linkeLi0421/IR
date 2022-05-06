; ModuleID = '/llk/IR/fs/nfs/mount_clnt.c_pt.bc'
source_filename = "../fs/nfs/mount_clnt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.anon.155 = type { i32, i32 }
%struct.anon.156 = type { i32, i32 }
%struct.mountres = type { i32, ptr, ptr, ptr }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.nfs_mount_request = type { ptr, i32, ptr, ptr, i32, i16, ptr, i32, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.68, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%union.anon.68 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }

@mnt_program = internal constant %struct.rpc_program { ptr @.str, i32 100005, i32 4, ptr @mnt_version, ptr @mnt_stats, ptr null }, align 4
@nfs_umount.nfs_umnt_timeout = internal constant %struct.rpc_timeout { i32 100, i32 300, i32 0, i32 2, i8 0 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@mnt_version = internal global [4 x ptr] [ptr null, ptr @mnt_version1, ptr null, ptr @mnt_version3], align 4
@mnt_stats = internal global %struct.rpc_stat zeroinitializer, align 4
@mnt_version1 = internal constant %struct.rpc_version { i32 1, i32 4, ptr @mnt_procedures, ptr @mnt_counts }, align 4
@mnt_version3 = internal constant %struct.rpc_version { i32 3, i32 4, ptr @mnt3_procedures, ptr @mnt3_counts }, align 4
@mnt_procedures = internal constant [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @mnt_xdr_enc_dirpath, ptr @mnt_xdr_dec_mountres, i32 257, i32 9, i32 0, i32 1, ptr @.str.1 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 3, ptr @mnt_xdr_enc_dirpath, ptr null, i32 257, i32 0, i32 0, i32 3, ptr @.str.2 }], align 4
@mnt_counts = internal global [4 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"MOUNT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"UMOUNT\00", align 1
@mnt_errtbl = internal unnamed_addr constant [5 x %struct.anon.155] [%struct.anon.155 zeroinitializer, %struct.anon.155 { i32 1, i32 -1 }, %struct.anon.155 { i32 2, i32 -2 }, %struct.anon.155 { i32 13, i32 -13 }, %struct.anon.155 { i32 22, i32 -22 }], align 4
@mnt3_procedures = internal constant [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @mnt_xdr_enc_dirpath, ptr @mnt_xdr_dec_mountres3, i32 257, i32 30, i32 0, i32 1, ptr @.str.1 }, %struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 3, ptr @mnt_xdr_enc_dirpath, ptr null, i32 257, i32 0, i32 0, i32 3, ptr @.str.2 }], align 4
@mnt3_counts = internal global [4 x i32] zeroinitializer, align 4
@mnt3_errtbl = internal unnamed_addr constant [10 x %struct.anon.156] [%struct.anon.156 zeroinitializer, %struct.anon.156 { i32 1, i32 -1 }, %struct.anon.156 { i32 2, i32 -2 }, %struct.anon.156 { i32 5, i32 -5 }, %struct.anon.156 { i32 13, i32 -13 }, %struct.anon.156 { i32 20, i32 -20 }, %struct.anon.156 { i32 22, i32 -22 }, %struct.anon.156 { i32 63, i32 -36 }, %struct.anon.156 { i32 10004, i32 -524 }, %struct.anon.156 { i32 10006, i32 -121 }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_mount(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rpc_timeout, align 4
  %5 = alloca %struct.mountres, align 4
  %6 = alloca %struct.rpc_message, align 4
  %7 = alloca %struct.rpc_create_args, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %8 = getelementptr inbounds %struct.mountres, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.mountres, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.mountres, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %17 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 2
  store ptr %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 3
  store ptr null, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #8
  %22 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %7, align 4
  %24 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 5
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  store i32 %27, ptr %24, align 4
  %28 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 2
  %29 = load ptr, ptr %0, align 4
  store ptr %29, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 3
  %31 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 4
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 5
  store ptr %4, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 6
  %36 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 7
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 8
  store ptr @mnt_program, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 9
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 10
  %42 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 11
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 12
  %46 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 13
  %47 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 16
  %48 = tail call ptr @llvm.thread.pointer() #8
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 83
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %47, align 4
  %51 = getelementptr inbounds %struct.rpc_create_args, ptr %7, i32 0, i32 17
  store i32 0, ptr %51, align 4
  %52 = call i32 @strlen(ptr noundef %19)
  %53 = icmp ugt i32 %52, 1024
  br i1 %53, label %83, label %54

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 8, ptr %46, align 4
  br label %59

59:                                               ; preds = %58, %54
  call void @nfs_init_timeout_values(ptr noundef nonnull %4, i32 noundef %27, i32 noundef %1, i32 noundef %2) #8
  %60 = call ptr @rpc_create(ptr noundef nonnull %7) #8
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.rpc_clnt, ptr %60, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr %struct.rpc_procinfo, ptr %64, i32 1
  store ptr %65, ptr %6, align 4
  %66 = call i32 @rpc_call_sync(ptr noundef %60, ptr noundef nonnull %6, i32 noundef 4608) #8
  call void @rpc_shutdown_client(ptr noundef %60) #8
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %5, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, ptr %42, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load ptr, ptr %12, align 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %71
  %79 = load ptr, ptr %15, align 4
  store i32 0, ptr %79, align 4
  %80 = load ptr, ptr %12, align 4
  store i32 1, ptr %80, align 4
  br label %83

81:                                               ; preds = %59
  %82 = ptrtoint ptr %60 to i32
  br label %83

83:                                               ; preds = %81, %78, %74, %68, %62, %3
  %84 = phi i32 [ -36, %3 ], [ %82, %81 ], [ %66, %62 ], [ 0, %78 ], [ 0, %74 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  ret i32 %84
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_init_timeout_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_umount(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rpc_create_args, align 4
  %3 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  %4 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %2, align 4
  %6 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 1
  store i32 17, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 4
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 5
  store ptr @nfs_umount.nfs_umnt_timeout, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 6
  %15 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 7
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 8
  store ptr @mnt_program, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 9
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 10
  %21 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 11
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 12
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 13
  store i32 16, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 14
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 15
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 16
  %29 = tail call ptr @llvm.thread.pointer() #8
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 83
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %28, align 4
  %32 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 17
  store i32 0, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %33 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 2
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 3
  store ptr null, ptr %37, align 4
  %38 = tail call i32 @strlen(ptr noundef %35)
  %39 = icmp ugt i32 %38, 1024
  br i1 %39, label %53, label %40

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.nfs_mount_request, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 24, ptr %25, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = call ptr @rpc_create(ptr noundef nonnull %2) #8
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.rpc_clnt, ptr %46, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.rpc_procinfo, ptr %50, i32 3
  store ptr %51, ptr %3, align 4
  %52 = call i32 @rpc_call_sync(ptr noundef %46, ptr noundef nonnull %3, i32 noundef 0) #8
  call void @rpc_shutdown_client(ptr noundef %46) #8
  br label %53

53:                                               ; preds = %48, %45, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mnt_xdr_enc_dirpath(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @strlen(ptr noundef %2) #8
  %5 = add i32 %4, 4
  %6 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %5) #8
  %7 = tail call ptr @xdr_encode_opaque(ptr noundef %6, ptr noundef %2, i32 noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mnt_xdr_dec_mountres(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6, !prof !9

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  switch i32 %7, label %8 [
    i32 0, label %16
    i32 16777216, label %12
    i32 33554432, label %9
    i32 218103808, label %10
    i32 369098752, label %11
  ]

8:                                                ; preds = %6
  store i32 -13, ptr %2, align 4
  br label %23

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %10, %9, %6
  %13 = phi i32 [ 2, %9 ], [ 3, %10 ], [ 4, %11 ], [ 1, %6 ]
  %14 = getelementptr [5 x %struct.anon.155], ptr @mnt_errtbl, i32 0, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %2, align 4
  br label %23

16:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  %17 = getelementptr inbounds %struct.mountres, ptr %2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 32) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !9

21:                                               ; preds = %16
  store i16 32, ptr %18, align 2
  %22 = getelementptr inbounds %struct.nfs_fh, ptr %18, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(32) %22, ptr noundef nonnull align 4 dereferenceable(32) %19, i32 32, i1 false) #8
  br label %23

23:                                               ; preds = %21, %16, %12, %8, %3
  %24 = phi i32 [ 0, %12 ], [ -5, %3 ], [ 0, %8 ], [ 0, %21 ], [ -5, %16 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mnt_xdr_dec_mountres3(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6, !prof !9

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  switch i32 %7, label %8 [
    i32 0, label %21
    i32 16777216, label %17
    i32 33554432, label %9
    i32 83886080, label %10
    i32 218103808, label %11
    i32 335544320, label %12
    i32 369098752, label %13
    i32 1056964608, label %14
    i32 338100224, label %15
    i32 371654656, label %16
  ]

8:                                                ; preds = %6
  store i32 -13, ptr %2, align 4
  br label %68

9:                                                ; preds = %6
  br label %17

10:                                               ; preds = %6
  br label %17

11:                                               ; preds = %6
  br label %17

12:                                               ; preds = %6
  br label %17

13:                                               ; preds = %6
  br label %17

14:                                               ; preds = %6
  br label %17

15:                                               ; preds = %6
  br label %17

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %6
  %18 = phi i32 [ 2, %9 ], [ 3, %10 ], [ 4, %11 ], [ 5, %12 ], [ 6, %13 ], [ 7, %14 ], [ 8, %15 ], [ 9, %16 ], [ 1, %6 ]
  %19 = getelementptr [10 x %struct.anon.156], ptr @mnt3_errtbl, i32 0, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %2, align 4
  br label %68

21:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  %22 = getelementptr inbounds %struct.mountres, ptr %2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26, !prof !9

26:                                               ; preds = %21
  %27 = load i32, ptr %24, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %29 = add i32 %28, -65
  %30 = icmp ult i32 %29, -64
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %28) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35, !prof !9

34:                                               ; preds = %31, %26, %21
  store i32 -521, ptr %2, align 4
  br label %68

35:                                               ; preds = %31
  %36 = trunc i32 %28 to i16
  store i16 %36, ptr %23, align 2
  %37 = getelementptr inbounds %struct.nfs_fh, ptr %23, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %37, ptr nonnull align 4 %32, i32 %28, i1 false) #8
  %38 = getelementptr inbounds %struct.mountres, ptr %2, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mountres, ptr %2, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %68, label %44

44:                                               ; preds = %35
  %45 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47, !prof !9

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 12) #8
  %51 = shl nuw nsw i32 %50, 2
  %52 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %51) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54, !prof !9

54:                                               ; preds = %47
  %55 = load i32, ptr %41, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %50, i32 %55) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %54
  %59 = phi ptr [ %61, %58 ], [ %52, %54 ]
  %60 = phi i32 [ %65, %58 ], [ 0, %54 ]
  %61 = getelementptr i32, ptr %59, i32 1
  %62 = load i32, ptr %59, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = getelementptr i32, ptr %39, i32 %60
  store i32 %63, ptr %64, align 4
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp eq i32 %65, %56
  br i1 %66, label %67, label %58

67:                                               ; preds = %58, %54
  store i32 %56, ptr %41, align 4
  br label %68

68:                                               ; preds = %67, %47, %44, %35, %34, %17, %8, %3
  %69 = phi i32 [ 0, %34 ], [ 0, %17 ], [ -5, %3 ], [ 0, %8 ], [ 0, %67 ], [ 0, %35 ], [ -5, %44 ], [ -5, %47 ]
  ret i32 %69
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
