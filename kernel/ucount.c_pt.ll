; ModuleID = '/llk/IR/kernel/ucount.c_pt.bc'
source_filename = "../kernel/ucount.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [14 x %struct.atomic_t] }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table_root = type { %struct.ctl_table_set, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_ucounts = dso_local global %struct.ucounts { %struct.hlist_node zeroinitializer, ptr @init_user_ns, %struct.kuid_t zeroinitializer, %struct.atomic_t { i32 1 }, [14 x %struct.atomic_t] zeroinitializer }, align 4
@set_root = internal global %struct.ctl_table_root { %struct.ctl_table_set zeroinitializer, ptr @set_lookup, ptr null, ptr @set_permissions }, align 4
@user_table = internal global [15 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.3, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.4, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.5, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.6, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.7, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.8, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.9, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.10, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table { ptr @.str.11, ptr null, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @ue_zero, ptr @ue_int_max }, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer, %struct.ctl_table zeroinitializer], align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@ucounts_hashtable = internal global [1024 x %struct.hlist_head] zeroinitializer, align 4
@ucounts_lock = internal global %struct.spinlock zeroinitializer, align 4
@dec_ucount.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"kernel/ucount.c\00", align 1
@dec_rlimit_ucounts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inc_rlimit_get_ucounts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_ucount__149_380_user_namespace_sysctl_init4 = internal global ptr @user_namespace_sysctl_init, section ".initcall4.init", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"max_user_namespaces\00", align 1
@ue_zero = internal global i32 0, align 4
@ue_int_max = internal global i32 2147483647, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"max_pid_namespaces\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"max_uts_namespaces\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"max_ipc_namespaces\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"max_net_namespaces\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"max_mnt_namespaces\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"max_cgroup_namespaces\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"max_time_namespaces\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"max_inotify_instances\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"max_inotify_watches\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@do_dec_rlimit_put_ucounts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@user_namespace_sysctl_init.user_header = internal unnamed_addr global ptr null, align 4
@user_namespace_sysctl_init.empty = internal global [1 x %struct.ctl_table] zeroinitializer, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_ucount__149_380_user_namespace_sysctl_init4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @setup_userns_sysctls(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 14
  tail call void @setup_sysctl_set(ptr noundef %2, ptr noundef nonnull @set_root, ptr noundef nonnull @set_is_seen) #8
  %3 = tail call ptr @kmemdup(ptr noundef nonnull @user_table, i32 noundef 540, i32 noundef 3264) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  br label %39

8:                                                ; preds = %1
  %9 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 0
  %10 = getelementptr %struct.ctl_table, ptr %3, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 1
  %12 = getelementptr %struct.ctl_table, ptr %3, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 2
  %14 = getelementptr %struct.ctl_table, ptr %3, i32 2, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 3
  %16 = getelementptr %struct.ctl_table, ptr %3, i32 3, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 4
  %18 = getelementptr %struct.ctl_table, ptr %3, i32 4, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 5
  %20 = getelementptr %struct.ctl_table, ptr %3, i32 5, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 6
  %22 = getelementptr %struct.ctl_table, ptr %3, i32 6, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 7
  %24 = getelementptr %struct.ctl_table, ptr %3, i32 7, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 8
  %26 = getelementptr %struct.ctl_table, ptr %3, i32 8, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 9
  %28 = getelementptr %struct.ctl_table, ptr %3, i32 9, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 10
  %30 = getelementptr %struct.ctl_table, ptr %3, i32 10, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 11
  %32 = getelementptr %struct.ctl_table, ptr %3, i32 11, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 12
  %34 = getelementptr %struct.ctl_table, ptr %3, i32 12, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr %struct.user_namespace, ptr %0, i32 0, i32 17, i32 13
  %36 = getelementptr %struct.ctl_table, ptr %3, i32 13, i32 1
  store ptr %35, ptr %36, align 4
  %37 = tail call ptr @__register_sysctl_table(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull %3) #8
  %38 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 15
  store ptr %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %8, %5
  %40 = phi ptr [ %7, %5 ], [ %37, %8 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @kfree(ptr noundef %3) #8
  tail call void @retire_sysctl_set(ptr noundef %2) #8
  br label %43

43:                                               ; preds = %42, %39
  %44 = xor i1 %41, true
  ret i1 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_sysctl_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @set_is_seen(ptr noundef readnone %0) #3 {
  %2 = icmp eq ptr %0, getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 14)
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__register_sysctl_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @retire_sysctl_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @retire_userns_sysctls(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_sysctl_table(ptr noundef %3) #8
  %6 = getelementptr inbounds %struct.user_namespace, ptr %0, i32 0, i32 14
  tail call void @retire_sysctl_set(ptr noundef %6) #8
  tail call void @kfree(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_ucounts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #8, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #8, !srcloc !10
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !12
  %8 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %3, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  store volatile ptr %15, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr %12, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  store ptr null, ptr %0, align 4
  store ptr null, ptr %11, align 4
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %21) #8
  call void @kfree(ptr noundef %0) #8
  br label %22

22:                                               ; preds = %20, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %23

23:                                               ; preds = %22, %1
  %24 = phi ptr [ %0, %1 ], [ null, %22 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_ucounts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !12
  %3 = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 3
  %4 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %3, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %2) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  store volatile ptr %11, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  store volatile ptr %8, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %10
  store ptr null, ptr %0, align 4
  store ptr null, ptr %7, align 4
  br label %16

16:                                               ; preds = %15, %6
  %17 = load i32, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %17) #8
  call void @kfree(ptr noundef %0) #8
  br label %18

18:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_ucounts(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = extractvalue [1 x i32] %1, 0
  %5 = ptrtoint ptr %0 to i32
  %6 = add i32 %4, %5
  %7 = mul i32 %6, 1640531527
  %8 = lshr i32 %7, 22
  %9 = getelementptr %struct.hlist_head, ptr @ucounts_hashtable, i32 %8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ucounts_lock) #8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %21, %2
  %13 = phi ptr [ %22, %21 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.ucounts, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ucounts, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %56, label %21

21:                                               ; preds = %17, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12

24:                                               ; preds = %21, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %25 = load i16, ptr @ucounts_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @ucounts_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 76) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ucounts, ptr %28, i32 0, i32 1
  store ptr %0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ucounts, ptr %28, i32 0, i32 2
  store i32 %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ucounts, ptr %28, i32 0, i32 3
  store volatile i32 1, ptr %33, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ucounts_lock) #8
  %34 = load ptr, ptr %9, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store volatile ptr null, ptr %28, align 8
  br label %52

37:                                               ; preds = %46, %30
  %38 = phi ptr [ %47, %46 ], [ %34, %30 ]
  %39 = getelementptr inbounds %struct.ucounts, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ucounts, ptr %38, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %37
  %47 = load ptr, ptr %38, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %37

49:                                               ; preds = %42
  tail call void @kfree(ptr noundef nonnull %28) #8
  br label %56

50:                                               ; preds = %46
  store volatile ptr %34, ptr %28, align 8
  %51 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  store volatile ptr %28, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %36
  store volatile ptr %28, ptr %9, align 4
  %53 = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  store volatile ptr %9, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %54 = load i16, ptr @ucounts_lock, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr @ucounts_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %80

56:                                               ; preds = %49, %17
  %57 = phi ptr [ %38, %49 ], [ %13, %17 ]
  %58 = getelementptr inbounds %struct.ucounts, ptr %57, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !10
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %61 = icmp sgt i32 %60, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %62 = load i16, ptr @ucounts_lock, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr @ucounts_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br i1 %61, label %80, label %64

64:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !12
  %65 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %58, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %3) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %57, align 4
  store volatile ptr %72, ptr %69, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.hlist_node, ptr %72, i32 0, i32 1
  store volatile ptr %69, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %71
  store ptr null, ptr %57, align 4
  store ptr null, ptr %68, align 4
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %78) #8
  call void @kfree(ptr noundef nonnull %57) #8
  br label %79

79:                                               ; preds = %77, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %80

80:                                               ; preds = %79, %56, %52, %24
  %81 = phi ptr [ null, %79 ], [ %28, %52 ], [ null, %24 ], [ %57, %56 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock_irqsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inc_ucount(ptr noundef %0, [1 x i32] %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @alloc_ucounts(ptr noundef %0, [1 x i32] %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %29, %3
  %8 = phi ptr [ %31, %29 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.ucounts, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.user_namespace, ptr %10, i32 0, i32 17, i32 %2
  %12 = load volatile i32, ptr %11, align 4
  %13 = getelementptr %struct.ucounts, ptr %8, i32 0, i32 4, i32 %2
  %14 = load volatile i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %26, %7
  %16 = phi i32 [ %14, %7 ], [ %27, %26 ]
  %17 = icmp slt i32 %16, %12
  br i1 %17, label %20, label %18, !prof !18

18:                                               ; preds = %15
  %19 = icmp eq ptr %5, %8
  br i1 %19, label %42, label %33

20:                                               ; preds = %15
  %21 = add nsw i32 %16, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #8, !srcloc !9
  br label %22

22:                                               ; preds = %22, %20
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 %16, i32 %21, ptr elementtype(i32) %13) #8, !srcloc !20
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %28 = icmp eq i32 %27, %16
  br i1 %28, label %29, label %15, !prof !18

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.user_namespace, ptr %10, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %7

33:                                               ; preds = %33, %18
  %34 = phi ptr [ %40, %33 ], [ %5, %18 ]
  %35 = getelementptr %struct.ucounts, ptr %34, i32 0, i32 4, i32 %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #8, !srcloc !9
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #8, !srcloc !22
  %37 = getelementptr inbounds %struct.ucounts, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.user_namespace, ptr %38, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %8
  br i1 %41, label %42, label %33

42:                                               ; preds = %33, %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !12
  %43 = getelementptr inbounds %struct.ucounts, ptr %5, i32 0, i32 3
  %44 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %43, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %4) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %5, align 4
  store volatile ptr %51, ptr %48, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  store volatile ptr %48, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %50
  store ptr null, ptr %5, align 4
  store ptr null, ptr %47, align 4
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %57) #8
  call void @kfree(ptr noundef nonnull %5) #8
  br label %58

58:                                               ; preds = %56, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %59

59:                                               ; preds = %58, %29, %3
  %60 = phi ptr [ null, %58 ], [ null, %3 ], [ %5, %29 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dec_ucount(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %26, %2
  %6 = phi ptr [ %30, %26 ], [ %0, %2 ]
  %7 = getelementptr %struct.ucounts, ptr %6, i32 0, i32 4, i32 %1
  %8 = load volatile i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %18, %5
  %10 = phi i32 [ %8, %5 ], [ %19, %18 ]
  %11 = add i32 %10, -1
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13, !prof !23

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !9
  br label %14

14:                                               ; preds = %14, %13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %10, i32 %11, ptr elementtype(i32) %7) #8, !srcloc !20
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %20 = icmp eq i32 %19, %10
  br i1 %20, label %21, label %9, !prof !18

21:                                               ; preds = %18, %9
  %22 = load i1, ptr @dec_ucount.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %12, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !23

25:                                               ; preds = %21
  store i1 true, ptr @dec_ucount.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 261, i32 noundef 9, ptr noundef null) #8
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.ucounts, ptr %6, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.user_namespace, ptr %28, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5

32:                                               ; preds = %26, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !12
  %33 = getelementptr inbounds %struct.ucounts, ptr %0, i32 0, i32 3
  %34 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %33, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %3) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 4
  store volatile ptr %41, ptr %38, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  store volatile ptr %38, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %40
  store ptr null, ptr %0, align 4
  store ptr null, ptr %37, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %47) #8
  call void @kfree(ptr noundef %0) #8
  br label %48

48:                                               ; preds = %46, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inc_rlimit_ucounts(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %23, %5 ], [ %0, %3 ]
  %7 = phi i32 [ %17, %5 ], [ 0, %3 ]
  %8 = phi i32 [ %21, %5 ], [ 2147483647, %3 ]
  %9 = getelementptr %struct.ucounts, ptr %6, i32 0, i32 4, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %2, ptr elementtype(i32) %9) #8, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %12 = icmp slt i32 %11, 0
  %13 = icmp sgt i32 %11, %8
  %14 = select i1 %12, i1 true, i1 %13
  %15 = icmp eq ptr %6, %0
  %16 = select i1 %15, i32 %11, i32 %7
  %17 = select i1 %14, i32 2147483647, i32 %16
  %18 = getelementptr inbounds %struct.ucounts, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.user_namespace, ptr %19, i32 0, i32 17, i32 %1
  %21 = load volatile i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.user_namespace, ptr %19, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5

25:                                               ; preds = %5, %3
  %26 = phi i32 [ 0, %3 ], [ %17, %5 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %16, %3
  %6 = phi ptr [ %22, %16 ], [ %0, %3 ]
  %7 = phi i32 [ %18, %16 ], [ -1, %3 ]
  %8 = getelementptr %struct.ucounts, ptr %6, i32 0, i32 4, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %2, ptr elementtype(i32) %8) #8, !srcloc !25
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %11 = icmp slt i32 %10, 0
  %12 = load i1, ptr @dec_rlimit_ucounts.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !23

15:                                               ; preds = %5
  store i1 true, ptr @dec_rlimit_ucounts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 289, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %5
  %17 = icmp eq ptr %6, %0
  %18 = select i1 %17, i32 %10, i32 %7
  %19 = getelementptr inbounds %struct.ucounts, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.user_namespace, ptr %20, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5

24:                                               ; preds = %16
  %25 = icmp eq i32 %18, 0
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i1 [ false, %3 ], [ %25, %24 ]
  ret i1 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dec_rlimit_put_ucounts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @do_dec_rlimit_put_ucounts(ptr noundef %0, ptr noundef null, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_dec_rlimit_put_ucounts(ptr noundef %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %46, label %6

6:                                                ; preds = %43, %3
  %7 = phi ptr [ %44, %43 ], [ %0, %3 ]
  %8 = getelementptr %struct.ucounts, ptr %7, i32 0, i32 4, i32 %2
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !9
  %9 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !25
  %10 = extractvalue { i32, i32 } %9, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %11 = icmp slt i32 %10, 0
  %12 = load i1, ptr @do_dec_rlimit_put_ucounts.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %20, !prof !23

15:                                               ; preds = %6
  store i1 true, ptr @do_dec_rlimit_put_ucounts.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 302, i32 noundef 9, ptr noundef null) #8
  %16 = getelementptr inbounds %struct.ucounts, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.user_namespace, ptr %17, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  br label %43

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.ucounts, ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.user_namespace, ptr %22, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq i32 %10, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !12
  %27 = getelementptr inbounds %struct.ucounts, ptr %7, i32 0, i32 3
  %28 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %27, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %4) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 4
  store volatile ptr %35, ptr %32, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  store volatile ptr %32, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  store ptr null, ptr %7, align 4
  store ptr null, ptr %31, align 4
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %41) #8
  call void @kfree(ptr noundef %7) #8
  br label %42

42:                                               ; preds = %40, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %43

43:                                               ; preds = %42, %20, %15
  %44 = phi ptr [ %19, %15 ], [ %24, %42 ], [ %24, %20 ]
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %6

46:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inc_rlimit_get_ucounts(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %45, %2
  %6 = phi ptr [ %48, %45 ], [ %0, %2 ]
  %7 = phi i32 [ %21, %45 ], [ 2147483647, %2 ]
  %8 = phi i32 [ %17, %45 ], [ 0, %2 ]
  %9 = getelementptr %struct.ucounts, ptr %6, i32 0, i32 4, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #8, !srcloc !10
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %12 = icmp slt i32 %11, 0
  %13 = icmp sgt i32 %11, %7
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %58, label %15

15:                                               ; preds = %5
  %16 = icmp eq ptr %6, %0
  %17 = select i1 %16, i32 %11, i32 %8
  %18 = getelementptr inbounds %struct.ucounts, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.user_namespace, ptr %19, i32 0, i32 17, i32 %1
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %11, 1
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ucounts, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #8, !srcloc !9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #8, !srcloc !10
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %18, align 4
  br label %45

30:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !12
  %31 = call i32 @_atomic_dec_and_lock_irqsave(ptr noundef %24, ptr noundef nonnull @ucounts_lock, ptr noundef nonnull %3) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %6, align 4
  store volatile ptr %38, ptr %35, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  store volatile ptr %35, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  store ptr null, ptr %6, align 4
  store ptr null, ptr %34, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ucounts_lock, i32 noundef %44) #8
  call void @kfree(ptr noundef nonnull %6) #8
  br label %50

45:                                               ; preds = %28, %15
  %46 = phi ptr [ %29, %28 ], [ %19, %15 ]
  %47 = getelementptr inbounds %struct.user_namespace, ptr %46, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %5

50:                                               ; preds = %43, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #8, !srcloc !9
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #8, !srcloc !25
  %52 = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %53 = icmp slt i32 %52, 0
  %54 = load i1, ptr @inc_rlimit_get_ucounts.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !23

57:                                               ; preds = %50
  store i1 true, ptr @inc_rlimit_get_ucounts.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 9, ptr noundef null) #8
  br label %58

58:                                               ; preds = %57, %50, %5
  call fastcc void @do_dec_rlimit_put_ucounts(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %1)
  br label %59

59:                                               ; preds = %58, %45, %2
  %60 = phi i32 [ 0, %58 ], [ 0, %2 ], [ %17, %45 ]
  ret i32 %60
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147483647)
  br label %7

7:                                                ; preds = %15, %5
  %8 = phi i32 [ %19, %15 ], [ %6, %5 ]
  %9 = phi ptr [ %21, %15 ], [ %0, %5 ]
  %10 = getelementptr %struct.ucounts, ptr %9, i32 0, i32 4, i32 %1
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  %13 = icmp sgt i32 %11, %8
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ucounts, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.user_namespace, ptr %17, i32 0, i32 17, i32 %1
  %19 = load volatile i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.user_namespace, ptr %17, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7

23:                                               ; preds = %15, %7, %3
  %24 = phi i1 [ false, %3 ], [ %14, %7 ], [ %14, %15 ]
  ret i1 %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @user_namespace_sysctl_init() #5 section ".init.text" {
  %1 = tail call ptr @register_sysctl(ptr noundef nonnull @.str, ptr noundef nonnull @user_namespace_sysctl_init.empty) #8
  store ptr %1, ptr @user_namespace_sysctl_init.user_header, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !23

3:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ucount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 373, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

4:                                                ; preds = %0
  %5 = tail call zeroext i1 @setup_userns_sysctls(ptr noundef nonnull @init_user_ns)
  br i1 %5, label %7, label %6, !prof !18

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/ucount.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 374, 0\0A.popsection", ""() #8, !srcloc !28
  unreachable

7:                                                ; preds = %4
  %8 = load i32, ptr getelementptr inbounds (%struct.ucounts, ptr @init_ucounts, i32 0, i32 2), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.ucounts, ptr @init_ucounts, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = mul i32 %11, 1640531527
  %13 = lshr i32 %12, 22
  %14 = getelementptr %struct.hlist_head, ptr @ucounts_hashtable, i32 %13
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @ucounts_lock) #8
  %15 = load ptr, ptr %14, align 4
  store volatile ptr %15, ptr @init_ucounts, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  store volatile ptr @init_ucounts, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %7
  store volatile ptr @init_ucounts, ptr %14, align 4
  store volatile ptr %14, ptr getelementptr inbounds (%struct.ucounts, ptr @init_ucounts, i32 0, i32 0, i32 1), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %20 = load i16, ptr @ucounts_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @ucounts_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %22 = tail call i32 @inc_rlimit_ucounts(ptr noundef nonnull @init_ucounts, i32 noundef 10, i32 noundef 1)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @set_lookup(ptr nocapture noundef readnone %0) #3 {
  ret ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 14)
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_permissions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ctl_table_header, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -284
  %6 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 24) #8
  %7 = getelementptr inbounds %struct.ctl_table, ptr %1, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = lshr i16 %8, 6
  %10 = and i16 %9, 7
  %11 = and i16 %8, 4
  %12 = select i1 %6, i16 %10, i16 %11
  %13 = mul nuw nsw i16 %12, 73
  %14 = zext i16 %13 to i32
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2148018076}
!9 = !{i64 418868, i64 2147908839, i64 2147908865, i64 2147908912, i64 2147908934, i64 2147908962, i64 2147908982}
!10 = !{i64 2147920938, i64 2147920970, i64 2147920999, i64 2147921033, i64 2147921064, i64 2147921087}
!11 = !{i64 2148018279}
!12 = !{!"auto-init"}
!13 = !{i64 2148977339}
!14 = !{i64 2148973163}
!15 = !{i64 2148973238, i64 2148973265, i64 2148973312, i64 2148973334, i64 2148973362, i64 2148973382}
!16 = !{i64 314352}
!17 = !{i64 2149001483}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148033656}
!20 = !{i64 404931, i64 404955, i64 404976, i64 404993, i64 405010}
!21 = !{i64 2148033856}
!22 = !{i64 2147922611, i64 2147922637, i64 2147922666, i64 2147922700, i64 2147922731, i64 2147922754}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2148020909}
!25 = !{i64 2147923295, i64 2147923327, i64 2147923356, i64 2147923390, i64 2147923421, i64 2147923444}
!26 = !{i64 2148021112}
!27 = !{i64 2150801770, i64 2150802250, i64 2150801807, i64 2150801863, i64 2150801897, i64 2150801921, i64 2150801962, i64 2150801983, i64 2150802011, i64 2150802045}
!28 = !{i64 2150802822, i64 2150803302, i64 2150802859, i64 2150802915, i64 2150802949, i64 2150802973, i64 2150803014, i64 2150803035, i64 2150803063, i64 2150803097}
