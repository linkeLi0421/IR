; ModuleID = '/llk/IR/fs/nfs/nfsroot.c_pt.bc'
source_filename = "../fs/nfs/nfsroot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
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
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }

@__setup_str_nfs_root_setup = internal constant [9 x i8] c"nfsroot=\00", section ".init.rodata", align 1
@__setup_nfs_root_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_nfs_root_setup, ptr @nfs_root_setup, i32 0 }, section ".init.setup", align 4
@root_server_addr = external dso_local local_unnamed_addr global i32, align 4
@servaddr = internal global i32 -1, section ".init.data", align 4
@.str = private unnamed_addr constant [35 x i8] c"\013Root-NFS: no NFS server address\0A\00", align 1
@nfs_root_parms = internal global [1025 x i8] zeroinitializer, section ".init.data", align 1
@nfs_root_device = internal global [1025 x i8] zeroinitializer, section ".init.data", align 1
@nfs_root_options = internal global [256 x i8] c"vers=2,tcp,rsize=4096,wsize=4096\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", section ".init.data", align 1
@ROOT_DEV = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"/tftpboot/%s\00", align 1
@root_server_path = external dso_local global [0 x i8], align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"nolock,addr=%pI4\00", align 1
@nfs_export_path = internal global [1025 x i8] zeroinitializer, section ".init.data", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%pI4:%s\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013Root-NFS: could not allocate memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\013Root-NFS: mount options string too long\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013Root-NFS: root device name too long.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_nfs_root_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nfs_root_setup(ptr noundef %0) #0 section ".init.text" {
  store i32 255, ptr @ROOT_DEV, align 4
  %2 = load i8, ptr %0, align 1
  switch i8 %2, label %3 [
    i8 47, label %6
    i8 44, label %6
  ]

3:                                                ; preds = %1
  %4 = add i8 %2, -48
  %5 = icmp ult i8 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1, %1
  %7 = tail call i32 @strlcpy(ptr noundef nonnull @nfs_root_parms, ptr noundef %0, i32 noundef 1025) #12
  br label %16

8:                                                ; preds = %3
  %9 = tail call i32 @strlen(ptr noundef %0)
  %10 = add i32 %9, -1013
  %11 = icmp ult i32 %10, -1025
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 1010
  store i8 0, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @nfs_root_parms, ptr noundef nonnull @.str.1, ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %6
  %17 = tail call i32 @root_nfs_parse_addr(ptr noundef nonnull @nfs_root_parms) #12
  store i32 %17, ptr @root_server_addr, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfs_root_data(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr @root_server_addr, align 4
  store i32 %3, ptr @servaddr, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %11

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @root_nfs_data() #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store ptr @nfs_root_device, ptr %0, align 4
  store ptr @nfs_root_options, ptr %1, align 4
  br label %11

11:                                               ; preds = %10, %7, %5
  %12 = phi i32 [ -1, %5 ], [ 0, %10 ], [ -1, %7 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @root_nfs_data() unnamed_addr #0 section ".init.text" {
  %1 = alloca [30 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %1) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %1, i8 0, i32 30, i1 false), !annotation !8
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1025) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(13) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.1, i32 13, i1 false)
  %6 = load i8, ptr @root_server_path, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @root_nfs_parse_options(ptr noundef nonnull @root_server_path, ptr noundef nonnull %3) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8, %5
  %12 = load i8, ptr @nfs_root_parms, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @root_nfs_parse_options(ptr noundef nonnull @nfs_root_parms, ptr noundef nonnull %3) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14, %11
  %18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %1, i32 noundef 30, ptr noundef nonnull @.str.2, ptr noundef nonnull @servaddr)
  %19 = call fastcc i32 @root_nfs_cat(ptr noundef nonnull %1) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 92
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nsproxy, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.new_utsname, ptr %26, i32 0, i32 1
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @nfs_export_path, i32 noundef 1025, ptr noundef nonnull %3, ptr noundef %27)
  %29 = icmp sgt i32 %28, 1024
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  %31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @nfs_root_device, i32 noundef 1025, ptr noundef nonnull @.str.3, ptr noundef nonnull @servaddr, ptr noundef nonnull @nfs_export_path)
  %32 = icmp sgt i32 %31, 1024
  br i1 %32, label %39, label %33

33:                                               ; preds = %39, %37, %35, %30
  %34 = phi i32 [ -1, %35 ], [ -1, %37 ], [ -1, %39 ], [ 0, %30 ]
  call void @kfree(ptr noundef %3) #12
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %1) #12
  ret i32 %34

35:                                               ; preds = %0
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %33

37:                                               ; preds = %17, %14, %8
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %33

39:                                               ; preds = %30, %21
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  br label %33
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @root_nfs_parse_addr(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @root_nfs_parse_options(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  %4 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.7) #12
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(8) @.str.8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @strlcpy(ptr noundef %1, ptr noundef %4, i32 noundef 1025) #12
  %12 = icmp ult i32 %11, 1026
  br i1 %12, label %13, label %23

13:                                               ; preds = %10, %7, %2
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %14, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call fastcc i32 @root_nfs_cat(ptr noundef nonnull %14) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %13
  br label %23

23:                                               ; preds = %22, %19, %10
  %24 = phi i32 [ 0, %22 ], [ -1, %10 ], [ -1, %19 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @root_nfs_cat(ptr noundef %0) unnamed_addr #8 section ".init.text" {
  %2 = tail call i32 @strlen(ptr noundef nonnull @nfs_root_options)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  %6 = getelementptr i8, ptr @nfs_root_options, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 44
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strlcat(ptr noundef nonnull @nfs_root_options, ptr noundef nonnull @.str.7, i32 noundef 256) #12
  %11 = icmp ugt i32 %10, 256
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %4, %1
  %13 = tail call i32 @strlcat(ptr noundef nonnull @nfs_root_options, ptr noundef %0, i32 noundef 256) #12
  %14 = icmp ugt i32 %13, 256
  %15 = sext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i32 [ -1, %9 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(2) }

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
