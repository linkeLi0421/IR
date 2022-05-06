; ModuleID = '/llk/IR/security/keys/keyctl.c_pt.bc'
source_filename = "../security/keys/keyctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.95, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.95 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.43 = type { %struct.callback_head }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.28, %union.anon.29 }
%union.anon.28 = type { ptr }
%union.anon.29 = type { i64 }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"%s;%d;%d;%08x;\00", align 1
@key_quota_root_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_root_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@keyrings_capabilities = internal constant [2 x i8] c"\E9\03", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"keyring\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4

@sys_add_key = dso_local alias i32 (ptr, ptr, ptr, i32, i32), ptr @__se_sys_add_key
@sys_request_key = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_request_key
@sys_keyctl = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_keyctl

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_add_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [32 x i8], align 1
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #9, !annotation !8
  %9 = icmp ugt i32 %3, 1048575
  br i1 %9, label %82, label %10

10:                                               ; preds = %5
  %11 = inttoptr i32 %0 to ptr
  %12 = call i32 @strncpy_from_user(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 32) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %12, -32
  %16 = icmp ult i32 %15, -31
  br i1 %16, label %82, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %6, align 1
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %82, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %6, i32 31
  store i8 0, ptr %21, align 1
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = call ptr @strndup_user(ptr noundef nonnull %7, i32 noundef 4096) #9
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = ptrtoint ptr %24 to i32
  br label %82

28:                                               ; preds = %23
  %29 = load i8, ptr %24, align 1
  switch i8 %29, label %34 [
    i8 0, label %30
    i8 46, label %31
  ]

30:                                               ; preds = %28
  call void @kfree(ptr noundef %24) #9
  br label %34

31:                                               ; preds = %28
  %32 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.2, i32 7) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %31, %30, %28, %20
  %35 = phi ptr [ %24, %31 ], [ null, %30 ], [ null, %20 ], [ %24, %28 ]
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3264, i32 noundef -1) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %37
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %3, i32 -1090519040) #11, !srcloc !9
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52, !prof !10

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #9
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %46) #12, !srcloc !11
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %50 = call i32 @arm_copy_from_user(ptr noundef nonnull %38, ptr noundef %8, i32 noundef %3) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #9, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !10

52:                                               ; preds = %44, %40
  %53 = phi i32 [ %50, %44 ], [ %3, %40 ]
  %54 = sub i32 %3, %53
  %55 = getelementptr i8, ptr %38, i32 %54
  call void @llvm.memset.p0.i32(ptr align 1 %55, i8 0, i32 %53, i1 false) #9
  br label %76

56:                                               ; preds = %44, %34
  %57 = phi ptr [ null, %34 ], [ %38, %44 ]
  %58 = call ptr @lookup_user_key(i32 noundef %4, i32 noundef 1, i32 noundef 3) #9
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = ptrtoint ptr %58 to i32
  br label %76

62:                                               ; preds = %56
  %63 = call ptr @key_create_or_update(ptr noundef %58, ptr noundef nonnull %6, ptr noundef %35, ptr noundef %57, i32 noundef %3, i32 noundef -1, i32 noundef 0) #9
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %65 = ptrtoint ptr %63 to i32
  br i1 %64, label %71, label %66

66:                                               ; preds = %62
  %67 = and i32 %65, -2
  %68 = inttoptr i32 %67 to ptr
  %69 = getelementptr inbounds %struct.key, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  call void @key_put(ptr noundef %68) #9
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %70, %66 ], [ %65, %62 ]
  %73 = ptrtoint ptr %58 to i32
  %74 = and i32 %73, -2
  %75 = inttoptr i32 %74 to ptr
  call void @key_put(ptr noundef %75) #9
  br label %76

76:                                               ; preds = %71, %60, %52
  %77 = phi ptr [ %57, %60 ], [ %57, %71 ], [ %38, %52 ]
  %78 = phi i32 [ %61, %60 ], [ %72, %71 ], [ -14, %52 ]
  call void @kvfree_sensitive(ptr noundef %77, i32 noundef %3) #9
  br label %79

79:                                               ; preds = %76, %37, %31
  %80 = phi ptr [ %35, %76 ], [ %35, %37 ], [ %24, %31 ]
  %81 = phi i32 [ %78, %76 ], [ -12, %37 ], [ -1, %31 ]
  call void @kfree(ptr noundef %80) #9
  br label %82

82:                                               ; preds = %79, %26, %17, %14, %10, %5
  %83 = phi i32 [ -22, %5 ], [ %27, %26 ], [ %81, %79 ], [ -1, %17 ], [ -22, %14 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_request_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = inttoptr i32 %0 to ptr
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9, !annotation !8
  %9 = call i32 @strncpy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 32) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %75, label %11

11:                                               ; preds = %4
  %12 = add nsw i32 %9, -32
  %13 = icmp ult i32 %12, -31
  br i1 %13, label %75, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %5, align 1
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %75, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %5, i32 31
  store i8 0, ptr %18, align 1
  %19 = call ptr @strndup_user(ptr noundef %7, i32 noundef 4096) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %19 to i32
  br label %75

23:                                               ; preds = %17
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  %26 = call ptr @strndup_user(ptr noundef nonnull %8, i32 noundef 4096) #9
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  br label %73

30:                                               ; preds = %25
  %31 = call i32 @strlen(ptr noundef %26) #9
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i32 [ %31, %30 ], [ 0, %23 ]
  %34 = phi ptr [ %26, %30 ], [ null, %23 ]
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = call ptr @lookup_user_key(i32 noundef %3, i32 noundef 1, i32 noundef 3) #9
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = ptrtoint ptr %37 to i32
  br label %71

41:                                               ; preds = %36, %32
  %42 = phi ptr [ %37, %36 ], [ null, %32 ]
  %43 = call ptr @key_type_lookup(ptr noundef nonnull %5) #9
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = ptrtoint ptr %43 to i32
  %47 = ptrtoint ptr %42 to i32
  %48 = and i32 %47, -2
  %49 = inttoptr i32 %48 to ptr
  br label %68

50:                                               ; preds = %41
  %51 = ptrtoint ptr %42 to i32
  %52 = and i32 %51, -2
  %53 = inttoptr i32 %52 to ptr
  %54 = call ptr @request_key_and_link(ptr noundef %43, ptr noundef %19, ptr noundef null, ptr noundef %34, i32 noundef %33, ptr noundef null, ptr noundef %53, i32 noundef 0) #9
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = ptrtoint ptr %54 to i32
  br label %66

58:                                               ; preds = %50
  %59 = call i32 @wait_for_key_construction(ptr noundef %54, i1 noundef zeroext true) #9
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.key, ptr %54, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %59, %58 ], [ %63, %61 ]
  call void @key_put(ptr noundef %54) #9
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi i32 [ %57, %56 ], [ %65, %64 ]
  call void @key_type_put(ptr noundef %43) #9
  br label %68

68:                                               ; preds = %66, %45
  %69 = phi ptr [ %53, %66 ], [ %49, %45 ]
  %70 = phi i32 [ %67, %66 ], [ %46, %45 ]
  call void @key_put(ptr noundef %69) #9
  br label %71

71:                                               ; preds = %68, %39
  %72 = phi i32 [ %40, %39 ], [ %70, %68 ]
  call void @kfree(ptr noundef %34) #9
  br label %73

73:                                               ; preds = %71, %28
  %74 = phi i32 [ %29, %28 ], [ %72, %71 ]
  call void @kfree(ptr noundef %19) #9
  br label %75

75:                                               ; preds = %73, %21, %14, %11, %4
  %76 = phi i32 [ %22, %21 ], [ %74, %73 ], [ -1, %14 ], [ -22, %11 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_get_keyring_ID(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef %4, i32 noundef 4) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %5 to i32
  br i1 %6, label %13, label %8

8:                                                ; preds = %2
  %9 = and i32 %7, -2
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @key_put(ptr noundef %10) #9
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ %7, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_join_session_keyring(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @strndup_user(ptr noundef nonnull %0, i32 noundef 4096) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %17

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = icmp eq i8 %9, 46
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %4, %8 ], [ null, %1 ]
  %13 = tail call i32 @join_session_keyring(ptr noundef %12) #9
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %4, %8 ], [ %12, %11 ]
  %16 = phi i32 [ -1, %8 ], [ %13, %11 ]
  tail call void @kfree(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @join_session_keyring(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_update_key(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 4096
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = tail call noalias ptr @kvmalloc_node(i32 noundef %2, i32 noundef 3264, i32 noundef -1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %7
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #11, !srcloc !9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !10

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #12, !srcloc !11
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %20 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %2) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %14, %10
  %23 = phi i32 [ %20, %14 ], [ %2, %10 ]
  %24 = sub i32 %2, %23
  %25 = getelementptr i8, ptr %8, i32 %24
  tail call void @llvm.memset.p0.i32(ptr align 1 %25, i8 0, i32 %23, i1 false) #9
  br label %37

26:                                               ; preds = %14, %5
  %27 = phi ptr [ null, %5 ], [ %8, %14 ]
  %28 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 3) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i32
  br label %37

32:                                               ; preds = %26
  %33 = tail call i32 @key_update(ptr noundef %28, ptr noundef %27, i32 noundef %2) #9
  %34 = ptrtoint ptr %28 to i32
  %35 = and i32 %34, -2
  %36 = inttoptr i32 %35 to ptr
  tail call void @key_put(ptr noundef %36) #9
  br label %37

37:                                               ; preds = %32, %30, %22
  %38 = phi ptr [ %27, %30 ], [ %27, %32 ], [ %8, %22 ]
  %39 = phi i32 [ %31, %30 ], [ %33, %32 ], [ -14, %22 ]
  tail call void @kvfree_sensitive(ptr noundef %38, i32 noundef %2) #9
  br label %40

40:                                               ; preds = %37, %7, %3
  %41 = phi i32 [ -22, %3 ], [ %39, %37 ], [ -12, %7 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_revoke_key(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 3) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  %6 = icmp eq ptr %2, inttoptr (i32 -13 to ptr)
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 6) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  br label %24

12:                                               ; preds = %7, %1
  %13 = phi ptr [ %8, %7 ], [ %2, %1 ]
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 14
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  tail call void @key_revoke(ptr noundef %16) #9
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi i32 [ 0, %21 ], [ -1, %12 ]
  tail call void @key_put(ptr noundef %16) #9
  br label %24

24:                                               ; preds = %22, %10, %4
  %25 = phi i32 [ %5, %4 ], [ %11, %10 ], [ %23, %22 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_invalidate_key(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 4) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %2 to i32
  br i1 %3, label %8, label %5

5:                                                ; preds = %1
  %6 = and i32 %4, -2
  %7 = inttoptr i32 %6 to ptr
  br label %21

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %9, label %10, label %31

10:                                               ; preds = %8
  %11 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 8) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 14
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13, %5
  %22 = phi ptr [ %7, %5 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.key, ptr %22, i32 0, i32 14
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void @key_invalidate(ptr noundef %22) #9
  br label %28

28:                                               ; preds = %27, %21, %13
  %29 = phi ptr [ %22, %21 ], [ %22, %27 ], [ %16, %13 ]
  %30 = phi i32 [ -1, %21 ], [ 0, %27 ], [ %4, %13 ]
  tail call void @key_put(ptr noundef %29) #9
  br label %31

31:                                               ; preds = %28, %10, %8
  %32 = phi i32 [ %4, %10 ], [ %30, %28 ], [ %4, %8 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_clear(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 1, i32 noundef 3) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %2 to i32
  br i1 %3, label %8, label %5

5:                                                ; preds = %1
  %6 = and i32 %4, -2
  %7 = inttoptr i32 %6 to ptr
  br label %21

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %9, label %10, label %32

10:                                               ; preds = %8
  %11 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 8) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 14
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13, %5
  %22 = phi ptr [ %7, %5 ], [ %16, %13 ]
  %23 = getelementptr inbounds %struct.key, ptr %22, i32 0, i32 14
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call i32 @keyring_clear(ptr noundef %22) #9
  br label %29

29:                                               ; preds = %27, %21, %13
  %30 = phi ptr [ %22, %21 ], [ %22, %27 ], [ %16, %13 ]
  %31 = phi i32 [ -1, %21 ], [ %28, %27 ], [ %4, %13 ]
  tail call void @key_put(ptr noundef %30) #9
  br label %32

32:                                               ; preds = %29, %10, %8
  %33 = phi i32 [ %4, %10 ], [ %31, %29 ], [ %4, %8 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyring_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_link(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 1, i32 noundef 3) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %26

7:                                                ; preds = %2
  %8 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 1, i32 noundef 5) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %3 to i32
  %13 = and i32 %12, -2
  %14 = inttoptr i32 %13 to ptr
  br label %23

15:                                               ; preds = %7
  %16 = ptrtoint ptr %3 to i32
  %17 = and i32 %16, -2
  %18 = inttoptr i32 %17 to ptr
  %19 = ptrtoint ptr %8 to i32
  %20 = and i32 %19, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 @key_link(ptr noundef %18, ptr noundef %21) #9
  tail call void @key_put(ptr noundef %21) #9
  br label %23

23:                                               ; preds = %15, %10
  %24 = phi ptr [ %18, %15 ], [ %14, %10 ]
  %25 = phi i32 [ %22, %15 ], [ %11, %10 ]
  tail call void @key_put(ptr noundef %24) #9
  br label %26

26:                                               ; preds = %23, %5
  %27 = phi i32 [ %6, %5 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_unlink(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 0, i32 noundef 3) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %38

7:                                                ; preds = %2
  %8 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 2, i32 noundef 7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %3 to i32
  %13 = and i32 %12, -2
  %14 = inttoptr i32 %13 to ptr
  br label %35

15:                                               ; preds = %7
  %16 = ptrtoint ptr %3 to i32
  %17 = and i32 %16, -2
  %18 = inttoptr i32 %17 to ptr
  %19 = ptrtoint ptr %8 to i32
  %20 = and i32 %19, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 14
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 14
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %15
  %32 = tail call i32 @key_unlink(ptr noundef %18, ptr noundef %21) #9
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ -1, %26 ]
  tail call void @key_put(ptr noundef %21) #9
  br label %35

35:                                               ; preds = %33, %10
  %36 = phi ptr [ %18, %33 ], [ %14, %10 ]
  %37 = phi i32 [ %34, %33 ], [ %11, %10 ]
  tail call void @key_put(ptr noundef %36) #9
  br label %38

38:                                               ; preds = %35, %5
  %39 = phi i32 [ %6, %5 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_move(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %3, 2
  br i1 %5, label %6, label %43

6:                                                ; preds = %4
  %7 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 1, i32 noundef 5) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %43

11:                                               ; preds = %6
  %12 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 0, i32 noundef 3) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %38

16:                                               ; preds = %11
  %17 = tail call ptr @lookup_user_key(i32 noundef %2, i32 noundef 1, i32 noundef 3) #9
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  %21 = ptrtoint ptr %12 to i32
  %22 = and i32 %21, -2
  %23 = inttoptr i32 %22 to ptr
  br label %35

24:                                               ; preds = %16
  %25 = ptrtoint ptr %7 to i32
  %26 = and i32 %25, -2
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %12 to i32
  %29 = and i32 %28, -2
  %30 = inttoptr i32 %29 to ptr
  %31 = ptrtoint ptr %17 to i32
  %32 = and i32 %31, -2
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 @key_move(ptr noundef %27, ptr noundef %30, ptr noundef %33, i32 noundef %3) #9
  tail call void @key_put(ptr noundef %33) #9
  br label %35

35:                                               ; preds = %24, %19
  %36 = phi ptr [ %30, %24 ], [ %23, %19 ]
  %37 = phi i32 [ %34, %24 ], [ %20, %19 ]
  tail call void @key_put(ptr noundef %36) #9
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi i32 [ %15, %14 ], [ %37, %35 ]
  %40 = ptrtoint ptr %7 to i32
  %41 = and i32 %40, -2
  %42 = inttoptr i32 %41 to ptr
  tail call void @key_put(ptr noundef %42) #9
  br label %43

43:                                               ; preds = %38, %9, %4
  %44 = phi i32 [ %10, %9 ], [ %39, %38 ], [ -22, %4 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_describe_key(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 2, i32 noundef 1) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = icmp eq ptr %4, inttoptr (i32 -13 to ptr)
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = tail call ptr @key_get_instantiation_authkey(i32 noundef %0) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @key_put(ptr noundef %9) #9
  %12 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 2, i32 noundef 9) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8, %6
  %15 = phi ptr [ inttoptr (i32 -13 to ptr), %8 ], [ %12, %11 ], [ %4, %6 ]
  %16 = ptrtoint ptr %15 to i32
  br label %98

17:                                               ; preds = %11, %3
  %18 = phi ptr [ %12, %11 ], [ %4, %3 ]
  %19 = ptrtoint ptr %18 to i32
  %20 = and i32 %19, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 15, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @strlen(ptr noundef %23)
  %25 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 15, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, -1
  %31 = load i32, ptr @overflowuid, align 4
  %32 = select i1 %30, i32 %31, i32 %29
  %33 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -1
  %36 = load i32, ptr @overflowgid, align 4
  %37 = select i1 %35, i32 %36, i32 %34
  %38 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 10
  %39 = load i32, ptr %38, align 8
  %40 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %27, i32 noundef %32, i32 noundef %37, i32 noundef %39) #9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %96, label %42

42:                                               ; preds = %17
  %43 = tail call i32 @strlen(ptr noundef nonnull %40)
  %44 = add i32 %24, 1
  %45 = add i32 %44, %43
  %46 = icmp eq ptr %1, null
  %47 = icmp ugt i32 %45, %2
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %94, label %49

49:                                               ; preds = %42
  %50 = icmp slt i32 %43, 0
  %51 = load i1, ptr @check_copy_size.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !14

54:                                               ; preds = %49
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %55

55:                                               ; preds = %54, %49
  br i1 %50, label %93, label %56, !prof !14

56:                                               ; preds = %55
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %43, i32 -1090519040) #11, !srcloc !15
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #9
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #12, !srcloc !11
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %66 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %40, i32 noundef %43) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %43, %56 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %1, i32 %43
  %72 = load ptr, ptr %22, align 8
  %73 = icmp slt i32 %44, 0
  %74 = load i1, ptr @check_copy_size.__already_done, align 1
  %75 = xor i1 %74, true
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %78, !prof !14

77:                                               ; preds = %70
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %78

78:                                               ; preds = %77, %70
  br i1 %73, label %93, label %79, !prof !14

79:                                               ; preds = %78
  %80 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %71, i32 %44, i32 -1090519040) #11, !srcloc !15
  %81 = extractvalue { i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = tail call ptr @llvm.thread.pointer() #9
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %86 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %85) #12, !srcloc !11
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %89 = tail call i32 @arm_copy_to_user(ptr noundef %71, ptr noundef %72, i32 noundef %44) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  br label %90

90:                                               ; preds = %83, %79
  %91 = phi i32 [ %89, %83 ], [ %44, %79 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %78, %67, %55
  br label %94

94:                                               ; preds = %93, %90, %42
  %95 = phi i32 [ -14, %93 ], [ %45, %90 ], [ %45, %42 ]
  tail call void @kfree(ptr noundef nonnull %40) #9
  br label %96

96:                                               ; preds = %94, %17
  %97 = phi i32 [ %95, %94 ], [ -12, %17 ]
  tail call void @key_put(ptr noundef %21) #9
  br label %98

98:                                               ; preds = %96, %14
  %99 = phi i32 [ %16, %14 ], [ %97, %96 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_get_instantiation_authkey(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_keyring_search(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %6 = call i32 @strncpy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 32) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %91, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %6, -32
  %10 = icmp ult i32 %9, -31
  br i1 %10, label %91, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %5, align 1
  %13 = icmp eq i8 %12, 46
  br i1 %13, label %91, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %5, i32 31
  store i8 0, ptr %15, align 1
  %16 = call ptr @strndup_user(ptr noundef %2, i32 noundef 4096) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %16 to i32
  br label %91

20:                                               ; preds = %14
  %21 = call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 4) #9
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %89

25:                                               ; preds = %20
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = call ptr @lookup_user_key(i32 noundef %3, i32 noundef 1, i32 noundef 3) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i32
  br label %84

32:                                               ; preds = %27, %25
  %33 = phi ptr [ %28, %27 ], [ null, %25 ]
  %34 = call ptr @key_type_lookup(ptr noundef nonnull %5) #9
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = ptrtoint ptr %34 to i32
  br label %79

38:                                               ; preds = %32
  %39 = call ptr @keyring_search(ptr noundef %21, ptr noundef %34, ptr noundef %16, i1 noundef zeroext true) #9
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = ptrtoint ptr %39 to i32
  %43 = icmp eq ptr %39, inttoptr (i32 -11 to ptr)
  %44 = select i1 %43, i32 -126, i32 %42
  br label %77

45:                                               ; preds = %38
  %46 = icmp eq ptr %33, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = ptrtoint ptr %39 to i32
  %49 = and i32 %48, -2
  %50 = inttoptr i32 %49 to ptr
  br label %70

51:                                               ; preds = %45
  %52 = tail call ptr @llvm.thread.pointer() #9
  %53 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 83
  %54 = load ptr, ptr %53, align 8
  %55 = call i32 @key_task_permission(ptr noundef %39, ptr noundef %54, i32 noundef 5) #9
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = ptrtoint ptr %39 to i32
  %59 = and i32 %58, -2
  %60 = inttoptr i32 %59 to ptr
  br label %74

61:                                               ; preds = %51
  %62 = ptrtoint ptr %33 to i32
  %63 = and i32 %62, -2
  %64 = inttoptr i32 %63 to ptr
  %65 = ptrtoint ptr %39 to i32
  %66 = and i32 %65, -2
  %67 = inttoptr i32 %66 to ptr
  %68 = call i32 @key_link(ptr noundef %64, ptr noundef %67) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %61, %47
  %71 = phi ptr [ %50, %47 ], [ %67, %61 ]
  %72 = getelementptr inbounds %struct.key, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %70, %61, %57
  %75 = phi ptr [ %60, %57 ], [ %67, %61 ], [ %71, %70 ]
  %76 = phi i32 [ %55, %57 ], [ %68, %61 ], [ %73, %70 ]
  call void @key_put(ptr noundef %75) #9
  br label %77

77:                                               ; preds = %74, %41
  %78 = phi i32 [ %44, %41 ], [ %76, %74 ]
  call void @key_type_put(ptr noundef %34) #9
  br label %79

79:                                               ; preds = %77, %36
  %80 = phi i32 [ %37, %36 ], [ %78, %77 ]
  %81 = ptrtoint ptr %33 to i32
  %82 = and i32 %81, -2
  %83 = inttoptr i32 %82 to ptr
  call void @key_put(ptr noundef %83) #9
  br label %84

84:                                               ; preds = %79, %30
  %85 = phi i32 [ %31, %30 ], [ %80, %79 ]
  %86 = ptrtoint ptr %21 to i32
  %87 = and i32 %86, -2
  %88 = inttoptr i32 %87 to ptr
  call void @key_put(ptr noundef %88) #9
  br label %89

89:                                               ; preds = %84, %23
  %90 = phi i32 [ %24, %23 ], [ %85, %84 ]
  call void @kfree(ptr noundef %16) #9
  br label %91

91:                                               ; preds = %89, %18, %11, %8, %4
  %92 = phi i32 [ %19, %18 ], [ %90, %89 ], [ -1, %11 ], [ -22, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %92
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_type_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_type_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_read_key(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 10) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %90, label %6

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  %8 = and i32 %7, -2
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 13
  %11 = load volatile i16, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %12 = sext i16 %11 to i32
  %13 = icmp slt i16 %11, 0
  br i1 %13, label %88, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @llvm.thread.pointer() #9
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 83
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @key_task_permission(ptr noundef %4, ptr noundef %17, i32 noundef 2) #9
  switch i32 %18, label %88 [
    i32 0, label %22
    i32 -13, label %19
  ]

19:                                               ; preds = %14
  %20 = and i32 %7, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %88, label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 15, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.key_type, ptr %24, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %88, label %28

28:                                               ; preds = %22
  %29 = icmp ne ptr %1, null
  %30 = icmp ne i32 %2, 0
  %31 = and i1 %29, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 3
  tail call void @down_read(ptr noundef %33) #9
  %34 = tail call i32 @key_validate(ptr noundef %9) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load ptr, ptr %23, align 8
  %38 = getelementptr inbounds %struct.key_type, ptr %37, i32 0, i32 13
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %9, ptr noundef null, i32 noundef 0) #9
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i32 [ %40, %36 ], [ %34, %32 ]
  tail call void @up_read(ptr noundef %33) #9
  br label %88

43:                                               ; preds = %28
  %44 = icmp ult i32 %2, 4097
  %45 = getelementptr inbounds %struct.key, ptr %9, i32 0, i32 3
  %46 = select i1 %44, i32 %2, i32 0
  br label %47

47:                                               ; preds = %73, %43
  %48 = phi ptr [ null, %43 ], [ %55, %73 ]
  %49 = phi i32 [ %46, %43 ], [ %64, %73 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call noalias ptr @kvmalloc_node(i32 noundef %49, i32 noundef 3264, i32 noundef -1) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %88, label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %52, %51 ], [ %48, %47 ]
  tail call void @down_read(ptr noundef %45) #9
  %56 = tail call i32 @key_validate(ptr noundef %9) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load ptr, ptr %23, align 8
  %60 = getelementptr inbounds %struct.key_type, ptr %59, i32 0, i32 13
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %9, ptr noundef %55, i32 noundef %49) #9
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i32 [ %62, %58 ], [ %56, %54 ]
  tail call void @up_read(ptr noundef %45) #9
  %65 = icmp slt i32 %64, 1
  %66 = icmp ugt i32 %64, %2
  %67 = or i1 %65, %66
  br i1 %67, label %86, label %68

68:                                               ; preds = %63
  %69 = icmp ugt i32 %64, %49
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = icmp eq ptr %55, null
  br i1 %71, label %73, label %72, !prof !10

72:                                               ; preds = %70
  tail call void @kvfree_sensitive(ptr noundef nonnull %55, i32 noundef %49) #9
  br label %73

73:                                               ; preds = %72, %70
  br label %47

74:                                               ; preds = %68
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %64, i32 -1090519040) #11, !srcloc !15
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %79) #12, !srcloc !11
  %81 = and i32 %80, -13
  %82 = or i32 %81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %83 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef %55, i32 noundef %64) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 %64, i32 -14
  br label %86

86:                                               ; preds = %78, %74, %63
  %87 = phi i32 [ -14, %74 ], [ %85, %78 ], [ %64, %63 ]
  tail call void @kvfree_sensitive(ptr noundef %55, i32 noundef %49) #9
  br label %88

88:                                               ; preds = %86, %51, %41, %22, %19, %14, %6
  %89 = phi i32 [ %12, %6 ], [ %87, %86 ], [ %42, %41 ], [ %18, %14 ], [ -13, %19 ], [ -95, %22 ], [ -12, %51 ]
  tail call void @key_put(ptr noundef %9) #9
  br label %90

90:                                               ; preds = %88, %3
  %91 = phi i32 [ %89, %88 ], [ -126, %3 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_chown_key(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, -1
  %5 = icmp eq i32 %2, -1
  %6 = and i32 %2, %1
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %121, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 3, i32 noundef 6) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %11 = ptrtoint ptr %9 to i32
  br i1 %10, label %121, label %12

12:                                               ; preds = %8
  %13 = and i32 %11, -2
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 3
  tail call void @down_write(ptr noundef %15) #9
  %16 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  br i1 %4, label %22, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %113

22:                                               ; preds = %18, %17
  br i1 %5, label %31, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = insertvalue [1 x i32] poison, i32 %2, 0
  %29 = tail call i32 @in_group_p([1 x i32] %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %113, label %31

31:                                               ; preds = %27, %23, %22, %12
  br i1 %4, label %109, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %109, label %36

36:                                               ; preds = %32
  %37 = insertvalue [1 x i32] poison, i32 %1, 0
  %38 = tail call ptr @key_user_lookup([1 x i32] %37) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %113, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 14
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %91, label %45

45:                                               ; preds = %40
  %46 = icmp eq i32 %1, 0
  %47 = load i32, ptr @key_quota_root_maxkeys, align 4
  %48 = load i32, ptr @key_quota_maxkeys, align 4
  %49 = select i1 %46, i32 %47, i32 %48
  %50 = load i32, ptr @key_quota_root_maxbytes, align 4
  %51 = load i32, ptr @key_quota_maxbytes, align 4
  %52 = getelementptr inbounds %struct.key_user, ptr %38, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %52) #9
  %53 = getelementptr inbounds %struct.key_user, ptr %38, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  %56 = icmp ugt i32 %55, %49
  br i1 %56, label %118, label %57

57:                                               ; preds = %45
  %58 = select i1 %46, i32 %50, i32 %51
  %59 = getelementptr inbounds %struct.key_user, ptr %38, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 11
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  %64 = add i32 %60, %63
  %65 = icmp ugt i32 %64, %58
  %66 = icmp slt i32 %64, %60
  %67 = or i1 %65, %66
  br i1 %67, label %118, label %68

68:                                               ; preds = %57
  store i32 %55, ptr %53, align 4
  %69 = load i16, ptr %61, align 4
  %70 = zext i16 %69 to i32
  %71 = add i32 %60, %70
  store i32 %71, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %72 = load i16, ptr %52, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  %74 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.key_user, ptr %75, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %76) #9
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr inbounds %struct.key_user, ptr %77, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  %81 = load i16, ptr %61, align 4
  %82 = zext i16 %81 to i32
  %83 = load ptr, ptr %74, align 4
  %84 = getelementptr inbounds %struct.key_user, ptr %83, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 %85, %82
  store i32 %86, ptr %84, align 4
  %87 = load ptr, ptr %74, align 4
  %88 = getelementptr inbounds %struct.key_user, ptr %87, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %89 = load i16, ptr %88, align 4
  %90 = add i16 %89, 1
  store i16 %90, ptr %88, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %91

91:                                               ; preds = %68, %40
  %92 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.key_user, ptr %93, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #9, !srcloc !21
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #9, !srcloc !22
  %96 = getelementptr inbounds %struct.key_user, ptr %38, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #9, !srcloc !21
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #9, !srcloc !23
  %98 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 13
  %99 = load i16, ptr %98, align 8
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %91
  %102 = load ptr, ptr %92, align 4
  %103 = getelementptr inbounds %struct.key_user, ptr %102, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #9, !srcloc !21
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #9, !srcloc !22
  %105 = getelementptr inbounds %struct.key_user, ptr %38, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #9, !srcloc !21
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #9, !srcloc !23
  br label %107

107:                                              ; preds = %101, %91
  %108 = load ptr, ptr %92, align 4
  store ptr %38, ptr %92, align 4
  store i32 %1, ptr %33, align 8
  br label %109

109:                                              ; preds = %107, %32, %31
  %110 = phi ptr [ null, %32 ], [ %108, %107 ], [ null, %31 ]
  br i1 %5, label %113, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 9
  store i32 %2, ptr %112, align 4
  br label %113

113:                                              ; preds = %118, %111, %109, %36, %27, %18
  %114 = phi i32 [ -122, %118 ], [ -12, %36 ], [ -13, %27 ], [ -13, %18 ], [ 0, %111 ], [ 0, %109 ]
  %115 = phi ptr [ %38, %118 ], [ null, %36 ], [ null, %27 ], [ null, %18 ], [ %110, %111 ], [ %110, %109 ]
  tail call void @up_write(ptr noundef %15) #9
  tail call void @key_put(ptr noundef %14) #9
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  tail call void @key_user_put(ptr noundef nonnull %115) #9
  br label %121

118:                                              ; preds = %57, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %119 = load i16, ptr %52, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %113

121:                                              ; preds = %117, %113, %8, %3
  %122 = phi i32 [ 0, %3 ], [ %114, %117 ], [ %114, %113 ], [ %11, %8 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_user_lookup([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_user_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_setperm_key(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -1061109568
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 3, i32 noundef 6) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %6 to i32
  br i1 %7, label %27, label %9

9:                                                ; preds = %5
  %10 = and i32 %8, -2
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 3
  tail call void @down_write(ptr noundef %12) #9
  %13 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 8
  %16 = tail call ptr @llvm.thread.pointer() #9
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 83
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %15, align 8
  %22 = icmp eq i32 %21, %20
  br i1 %22, label %23, label %25

23:                                               ; preds = %14, %9
  %24 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 10
  store i32 %1, ptr %24, align 8
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i32 [ 0, %23 ], [ -13, %14 ]
  tail call void @up_write(ptr noundef %12) #9
  tail call void @key_put(ptr noundef %11) #9
  br label %27

27:                                               ; preds = %25, %5, %2
  %28 = phi i32 [ -22, %2 ], [ %26, %25 ], [ %8, %5 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_instantiate_key(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.iovec, align 8
  %6 = alloca %struct.iov_iter, align 8
  %7 = icmp ne ptr %1, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !8
  %11 = call i32 @import_single_range(i32 noundef 1, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !10

13:                                               ; preds = %10
  %14 = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %0, ptr noundef nonnull %6, i32 noundef %3)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %14, %13 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %19

17:                                               ; preds = %4
  %18 = tail call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %0, ptr noundef null, i32 noundef %3)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_instantiate_key_common(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #9
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp ugt i32 %10, 1048575
  br i1 %13, label %84, label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi ptr [ %1, %12 ], [ null, %8 ], [ null, %3 ]
  %16 = phi i32 [ %10, %12 ], [ 0, %8 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.request_key_auth, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %0
  br i1 %27, label %28, label %84

28:                                               ; preds = %20
  %29 = icmp eq ptr %15, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = tail call noalias ptr @kvmalloc_node(i32 noundef %16, i32 noundef 3264, i32 noundef -1) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %84, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @_copy_from_iter(ptr noundef nonnull %31, i32 noundef %16, ptr noundef nonnull %15) #9
  %35 = icmp eq i32 %34, %16
  br i1 %35, label %37, label %36, !prof !10

36:                                               ; preds = %33
  tail call void @iov_iter_revert(ptr noundef nonnull %15, i32 noundef %34) #9
  br label %81

37:                                               ; preds = %33, %28
  %38 = phi ptr [ null, %28 ], [ %31, %33 ]
  %39 = icmp eq i32 %2, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %37
  %41 = icmp sgt i32 %2, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = tail call ptr @lookup_user_key(i32 noundef %2, i32 noundef 1, i32 noundef 3) #9
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %45 = ptrtoint ptr %43 to i32
  br i1 %44, label %67, label %46

46:                                               ; preds = %42
  %47 = and i32 %45, -2
  %48 = inttoptr i32 %47 to ptr
  br label %69

49:                                               ; preds = %40
  %50 = icmp eq i32 %2, -7
  br i1 %50, label %81, label %51

51:                                               ; preds = %49
  %52 = icmp ugt i32 %2, -9
  br i1 %52, label %53, label %81

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.request_key_auth, ptr %22, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %55) #9, !srcloc !21
  %58 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %55, ptr nonnull %55, i32 1, ptr nonnull elementtype(i32) %55) #9, !srcloc !24
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61, !prof !14

61:                                               ; preds = %57
  %62 = add i32 %59, 1
  %63 = or i32 %62, %59
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %69, label %65, !prof !10

65:                                               ; preds = %61, %57
  %66 = phi i32 [ 2, %57 ], [ 1, %61 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %55, i32 noundef %66) #9
  br label %69

67:                                               ; preds = %42
  %68 = icmp slt ptr %43, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %67, %65, %61, %53, %46, %37
  %70 = phi ptr [ null, %67 ], [ %55, %65 ], [ %55, %61 ], [ null, %53 ], [ %48, %46 ], [ null, %37 ]
  %71 = load ptr, ptr %23, align 4
  %72 = tail call i32 @key_instantiate_and_link(ptr noundef %71, ptr noundef %38, i32 noundef %16, ptr noundef %70, ptr noundef nonnull %18) #9
  tail call void @key_put(ptr noundef %70) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = tail call ptr @prepare_creds() #9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 19
  %79 = load ptr, ptr %78, align 4
  tail call void @key_put(ptr noundef %79) #9
  store ptr null, ptr %78, align 4
  %80 = tail call i32 @commit_creds(ptr noundef nonnull %75) #9
  br label %81

81:                                               ; preds = %77, %74, %69, %67, %51, %49, %36
  %82 = phi ptr [ %38, %67 ], [ %38, %69 ], [ %31, %36 ], [ %38, %74 ], [ %38, %77 ], [ %38, %49 ], [ %38, %51 ]
  %83 = phi i32 [ %45, %67 ], [ %72, %69 ], [ -14, %36 ], [ 0, %74 ], [ 0, %77 ], [ -22, %49 ], [ -126, %51 ]
  tail call void @kvfree_sensitive(ptr noundef %82, i32 noundef %16) #9
  br label %84

84:                                               ; preds = %81, %30, %20, %14, %12
  %85 = phi i32 [ -22, %12 ], [ -1, %20 ], [ %83, %81 ], [ -12, %30 ], [ -1, %14 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_instantiate_key_iov(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [8 x %struct.iovec], align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !8
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, i32 0, i32 %2
  %10 = call i32 @import_iovec(i32 noundef 1, ptr noundef %1, i32 noundef %9, i32 noundef 8, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %0, ptr noundef nonnull %7, i32 noundef %3)
  %14 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %14) #9
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %13, %12 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_negate_key(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @keyctl_reject_key(i32 noundef %0, i32 noundef %1, i32 noundef 126, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_reject_key(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = add i32 %2, -4095
  %9 = icmp ult i32 %8, -4094
  br i1 %9, label %68, label %10

10:                                               ; preds = %4
  %11 = add i32 %2, -512
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %63, label %13

13:                                               ; preds = %63, %10
  %14 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 19
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.request_key_auth, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %25, label %68

25:                                               ; preds = %17
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %25
  %28 = icmp sgt i32 %3, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = tail call ptr @lookup_user_key(i32 noundef %3, i32 noundef 1, i32 noundef 3) #9
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %30 to i32
  br i1 %31, label %54, label %33

33:                                               ; preds = %29
  %34 = and i32 %32, -2
  %35 = inttoptr i32 %34 to ptr
  br label %56

36:                                               ; preds = %27
  %37 = icmp eq i32 %3, -7
  br i1 %37, label %68, label %38

38:                                               ; preds = %36
  %39 = icmp ugt i32 %3, -9
  br i1 %39, label %40, label %68

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.request_key_auth, ptr %19, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %42) #9, !srcloc !21
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %42, ptr nonnull %42, i32 1, ptr nonnull elementtype(i32) %42) #9, !srcloc !24
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !14

48:                                               ; preds = %44
  %49 = add i32 %46, 1
  %50 = or i32 %49, %46
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %56, label %52, !prof !10

52:                                               ; preds = %48, %44
  %53 = phi i32 [ 2, %44 ], [ 1, %48 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %42, i32 noundef %53) #9
  br label %56

54:                                               ; preds = %29
  %55 = icmp slt ptr %30, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %54, %52, %48, %40, %33, %25
  %57 = phi ptr [ null, %54 ], [ %42, %52 ], [ %42, %48 ], [ null, %40 ], [ %35, %33 ], [ null, %25 ]
  %58 = load ptr, ptr %20, align 4
  %59 = tail call i32 @key_reject_and_link(ptr noundef %58, i32 noundef %1, i32 noundef %2, ptr noundef %57, ptr noundef nonnull %15) #9
  tail call void @key_put(ptr noundef %57) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = tail call fastcc i32 @keyctl_change_reqkey_auth(ptr noundef null)
  br label %68

63:                                               ; preds = %10
  %64 = trunc i32 %11 to i8
  %65 = lshr i8 23, %64
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %13, label %68

68:                                               ; preds = %63, %61, %56, %54, %38, %36, %17, %13, %4
  %69 = phi i32 [ -22, %4 ], [ -1, %17 ], [ %32, %54 ], [ 0, %61 ], [ %59, %56 ], [ -1, %13 ], [ -126, %38 ], [ -22, %36 ], [ -22, %63 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_reject_and_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_change_reqkey_auth(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @prepare_creds() #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  tail call void @key_put(ptr noundef %6) #9
  %7 = icmp eq ptr %0, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !21
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !24
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !14

12:                                               ; preds = %8
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !10

16:                                               ; preds = %12, %8
  %17 = phi i32 [ 2, %8 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %17) #9
  br label %18

18:                                               ; preds = %16, %12, %4
  store ptr %0, ptr %5, align 4
  %19 = tail call i32 @commit_creds(ptr noundef nonnull %2) #9
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ -12, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_set_reqkey_keyring(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 15
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %0, -1
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @prepare_creds() #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  switch i32 %0, label %23 [
    i32 1, label %13
    i32 2, label %16
    i32 0, label %19
    i32 3, label %19
    i32 4, label %19
    i32 5, label %19
    i32 7, label %19
  ]

13:                                               ; preds = %12
  %14 = tail call i32 @install_thread_keyring_to_cred(ptr noundef nonnull %10) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %19

16:                                               ; preds = %12
  %17 = tail call i32 @install_process_keyring_to_cred(ptr noundef nonnull %10) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %13, %12, %12, %12, %12, %12
  %20 = trunc i32 %0 to i8
  %21 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 15
  store i8 %20, ptr %21, align 4
  %22 = tail call i32 @commit_creds(ptr noundef nonnull %10) #9
  br label %25

23:                                               ; preds = %16, %13, %12
  %24 = phi i32 [ %17, %16 ], [ %14, %13 ], [ -22, %12 ]
  tail call void @abort_creds(ptr noundef nonnull %10) #9
  br label %25

25:                                               ; preds = %23, %19, %9, %1
  %26 = phi i32 [ %24, %23 ], [ %7, %19 ], [ %7, %1 ], [ -12, %9 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_thread_keyring_to_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_process_keyring_to_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_set_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 3, i32 noundef 6) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, inttoptr (i32 -13 to ptr)
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = tail call ptr @key_get_instantiation_authkey(i32 noundef %0) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  tail call void @key_put(ptr noundef %8) #9
  %11 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 2, i32 noundef 9) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %7, %5
  %14 = phi ptr [ inttoptr (i32 -13 to ptr), %7 ], [ %11, %10 ], [ %3, %5 ]
  %15 = ptrtoint ptr %14 to i32
  br label %28

16:                                               ; preds = %10, %2
  %17 = phi ptr [ %11, %10 ], [ %3, %2 ]
  %18 = ptrtoint ptr %17 to i32
  %19 = and i32 %18, -2
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 14
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @key_set_timeout(ptr noundef %20, i32 noundef %1) #9
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ 0, %25 ], [ -1, %16 ]
  tail call void @key_put(ptr noundef %20) #9
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %15, %13 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_set_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_assume_authority(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = tail call ptr @prepare_creds() #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  tail call void @key_put(ptr noundef %10) #9
  store ptr null, ptr %9, align 4
  %11 = tail call i32 @commit_creds(ptr noundef nonnull %6) #9
  br label %42

12:                                               ; preds = %3
  %13 = tail call ptr @key_get_instantiation_authkey(i32 noundef %0) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  br label %42

17:                                               ; preds = %12
  %18 = tail call ptr @prepare_creds() #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  tail call void @key_put(ptr noundef %22) #9
  %23 = icmp eq ptr %13, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #9, !srcloc !21
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #9, !srcloc !24
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !14

28:                                               ; preds = %24
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %28, %24
  %33 = phi i32 [ 2, %24 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %33) #9
  br label %34

34:                                               ; preds = %32, %28, %20
  store ptr %13, ptr %21, align 4
  %35 = tail call i32 @commit_creds(ptr noundef nonnull %18) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %34, %17
  %41 = phi i32 [ %39, %37 ], [ %35, %34 ], [ -12, %17 ]
  tail call void @key_put(ptr noundef %13) #9
  br label %42

42:                                               ; preds = %40, %15, %8, %5, %1
  %43 = phi i32 [ -22, %1 ], [ %16, %15 ], [ %41, %40 ], [ %11, %8 ], [ -12, %5 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_get_security(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 2, i32 noundef 1) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  %8 = icmp eq ptr %4, inttoptr (i32 -13 to ptr)
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = tail call ptr @key_get_instantiation_authkey(i32 noundef %0) #9
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %42

14:                                               ; preds = %9
  tail call void @key_put(ptr noundef %10) #9
  %15 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 2, i32 noundef 9) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %42

19:                                               ; preds = %14, %3
  %20 = phi ptr [ %15, %14 ], [ %4, %3 ]
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, -2
  %23 = icmp ne ptr %1, null
  %24 = icmp ne i32 %2, 0
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 1, i32 -1090519040) #11, !srcloc !15
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #9
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #12, !srcloc !11
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %36 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 1) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 -14
  br label %39

39:                                               ; preds = %30, %26, %19
  %40 = phi i32 [ 1, %19 ], [ -14, %26 ], [ %38, %30 ]
  %41 = inttoptr i32 %22 to ptr
  tail call void @key_put(ptr noundef %41) #9
  br label %42

42:                                               ; preds = %39, %17, %12, %6
  %43 = phi i32 [ %13, %12 ], [ %18, %17 ], [ %40, %39 ], [ %7, %6 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_session_to_parent() local_unnamed_addr #0 {
  %1 = tail call ptr @lookup_user_key(i32 noundef -3, i32 noundef 0, i32 noundef 5) #9
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %108

5:                                                ; preds = %0
  %6 = tail call ptr @cred_alloc_blank() #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %104, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 24
  %10 = ptrtoint ptr %1 to i32
  %11 = and i32 %10, -2
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 16
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 24, i32 0, i32 1
  store ptr @key_change_session_keyring, ptr %14, align 4
  %15 = tail call ptr @llvm.thread.pointer() #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #9
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 55
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %84, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 37
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %84, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 64
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %84

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 83
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 82
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %84, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %84, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 1
  %43 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 5
  %44 = load i32, ptr %42, align 4
  %45 = load i32, ptr %43, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %44
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %44
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 2
  %57 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 6
  %58 = load i32, ptr %56, align 4
  %59 = load i32, ptr %57, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %58
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %58
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = icmp eq ptr %39, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.key, ptr %39, i32 0, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, %44
  br i1 %74, label %75, label %84

75:                                               ; preds = %71, %69
  %76 = getelementptr inbounds %struct.key, ptr %37, i32 0, i32 8
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, %44
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = tail call ptr @task_work_cancel(ptr noundef %17, ptr noundef nonnull @key_change_session_keyring) #9
  %81 = tail call i32 @task_work_add(ptr noundef %17, ptr noundef %9, i32 noundef 1) #9
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, ptr null, ptr %9
  br label %84

84:                                               ; preds = %79, %75, %71, %65, %61, %55, %51, %47, %41, %35, %29, %25, %21, %8
  %85 = phi i32 [ -1, %8 ], [ -1, %75 ], [ -1, %71 ], [ -1, %65 ], [ -1, %61 ], [ -1, %55 ], [ -1, %51 ], [ -1, %47 ], [ -1, %41 ], [ -1, %25 ], [ -1, %21 ], [ 0, %35 ], [ 0, %29 ], [ %81, %79 ]
  %86 = phi ptr [ null, %8 ], [ null, %75 ], [ null, %71 ], [ null, %65 ], [ null, %61 ], [ null, %55 ], [ null, %51 ], [ null, %47 ], [ null, %41 ], [ null, %25 ], [ null, %21 ], [ null, %35 ], [ null, %29 ], [ %80, %79 ]
  %87 = phi ptr [ %9, %8 ], [ %9, %75 ], [ %9, %71 ], [ %9, %65 ], [ %9, %61 ], [ %9, %55 ], [ %9, %51 ], [ %9, %47 ], [ %9, %41 ], [ %9, %25 ], [ %9, %21 ], [ %9, %35 ], [ %9, %29 ], [ %83, %79 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @tasklist_lock, i32 0) #9, !srcloc !27
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !19
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  %88 = icmp eq ptr %86, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = getelementptr i8, ptr %86, i32 -116
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %90) #9, !srcloc !21
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %90, ptr nonnull %90, i32 1, ptr nonnull elementtype(i32) %90) #9, !srcloc !32
  %94 = extractvalue { i32, i32 } %93, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void @__put_cred(ptr noundef nonnull %90) #9
  br label %97

97:                                               ; preds = %96, %92, %89, %84
  %98 = icmp eq ptr %87, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #9, !srcloc !21
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #9, !srcloc !32
  %101 = extractvalue { i32, i32 } %100, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  tail call void @__put_cred(ptr noundef nonnull %6) #9
  br label %108

104:                                              ; preds = %5
  %105 = ptrtoint ptr %1 to i32
  %106 = and i32 %105, -2
  %107 = inttoptr i32 %106 to ptr
  tail call void @key_put(ptr noundef %107) #9
  br label %108

108:                                              ; preds = %104, %103, %99, %97, %3
  %109 = phi i32 [ %4, %3 ], [ -12, %104 ], [ %85, %97 ], [ %85, %99 ], [ %85, %103 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cred_alloc_blank() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_change_session_keyring(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_work_cancel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_restrict_keyring(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = tail call ptr @lookup_user_key(i32 noundef %0, i32 noundef 0, i32 noundef 6) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i32
  br label %38

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %2, null
  br i1 %10, label %28, label %12

12:                                               ; preds = %9
  br i1 %11, label %33, label %13

13:                                               ; preds = %12
  %14 = call i32 @strncpy_from_user(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef 32) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %14, -32
  %18 = icmp ult i32 %17, -31
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %4, align 1
  %21 = icmp eq i8 %20, 46
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %4, i32 31
  store i8 0, ptr %23, align 1
  %24 = call ptr @strndup_user(ptr noundef nonnull %2, i32 noundef 4096) #9
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = ptrtoint ptr %24 to i32
  br label %33

28:                                               ; preds = %9
  br i1 %11, label %29, label %33

29:                                               ; preds = %28, %22
  %30 = phi ptr [ null, %28 ], [ %4, %22 ]
  %31 = phi ptr [ null, %28 ], [ %24, %22 ]
  %32 = call i32 @keyring_restrict(ptr noundef %5, ptr noundef %30, ptr noundef %31) #9
  call void @kfree(ptr noundef %31) #9
  br label %33

33:                                               ; preds = %29, %28, %26, %19, %16, %13, %12
  %34 = phi i32 [ %27, %26 ], [ %32, %29 ], [ -22, %12 ], [ -22, %28 ], [ -1, %19 ], [ -22, %16 ], [ %14, %13 ]
  %35 = ptrtoint ptr %5 to i32
  %36 = and i32 %35, -2
  %37 = inttoptr i32 %36 to ptr
  call void @key_put(ptr noundef %37) #9
  br label %38

38:                                               ; preds = %33, %7
  %39 = phi i32 [ %8, %7 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyring_restrict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @keyctl_capabilities(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.umin.i32(i32 %1, i32 2)
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %5, i32 -1090519040) #11, !srcloc !15
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %4
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !11
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %15 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull @keyrings_capabilities, i32 noundef %5) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %9
  %18 = icmp ugt i32 %1, 2
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %0, i32 %5
  %21 = sub nuw i32 %1, %5
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 %21, i32 -1090519040) #11, !srcloc !34
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !11
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %29 = tail call i32 @arm_clear_user(ptr noundef %20, i32 noundef %21) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #9, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %17, %2
  br label %32

32:                                               ; preds = %31, %25, %19, %9, %4
  %33 = phi i32 [ 2, %31 ], [ -14, %9 ], [ -14, %25 ], [ -14, %4 ], [ -14, %19 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_keyctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [8 x %struct.iovec], align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.iov_iter, align 8
  %9 = alloca %struct.iovec, align 8
  %10 = alloca %struct.iov_iter, align 8
  switch i32 %0, label %221 [
    i32 0, label %11
    i32 1, label %22
    i32 2, label %39
    i32 3, label %42
    i32 6, label %65
    i32 7, label %68
    i32 8, label %70
    i32 9, label %94
    i32 10, label %96
    i32 11, label %100
    i32 4, label %103
    i32 5, label %105
    i32 12, label %130
    i32 13, label %144
    i32 14, label %146
    i32 15, label %170
    i32 16, label %172
    i32 17, label %174
    i32 18, label %177
    i32 19, label %179
    i32 20, label %181
    i32 21, label %192
    i32 31, label %218
    i32 30, label %216
    i32 29, label %194
    i32 24, label %198
    i32 25, label %204
    i32 26, label %204
    i32 27, label %204
    i32 28, label %210
  ]

11:                                               ; preds = %5
  %12 = icmp ne i32 %2, 0
  %13 = zext i1 %12 to i32
  %14 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef %13, i32 noundef 4) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %14 to i32
  br i1 %15, label %221, label %17

17:                                               ; preds = %11
  %18 = and i32 %16, -2
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  tail call void @key_put(ptr noundef %19) #9
  br label %221

22:                                               ; preds = %5
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %22
  %25 = inttoptr i32 %1 to ptr
  %26 = tail call ptr @strndup_user(ptr noundef nonnull %25, i32 noundef 4096) #9
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %26 to i32
  br label %221

30:                                               ; preds = %24
  %31 = load i8, ptr %26, align 1
  %32 = icmp eq i8 %31, 46
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %22
  %34 = phi ptr [ %26, %30 ], [ null, %22 ]
  %35 = tail call i32 @join_session_keyring(ptr noundef %34) #9
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %26, %30 ], [ %34, %33 ]
  %38 = phi i32 [ -1, %30 ], [ %35, %33 ]
  tail call void @kfree(ptr noundef %37) #9
  br label %221

39:                                               ; preds = %5
  %40 = inttoptr i32 %2 to ptr
  %41 = tail call i32 @keyctl_update_key(i32 noundef %1, ptr noundef %40, i32 noundef %3) #9
  br label %221

42:                                               ; preds = %5
  %43 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 0, i32 noundef 3) #9
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = ptrtoint ptr %43 to i32
  %47 = icmp eq ptr %43, inttoptr (i32 -13 to ptr)
  br i1 %47, label %48, label %221

48:                                               ; preds = %45
  %49 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 0, i32 noundef 6) #9
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = ptrtoint ptr %49 to i32
  br label %221

53:                                               ; preds = %48, %42
  %54 = phi ptr [ %49, %48 ], [ %43, %42 ]
  %55 = ptrtoint ptr %54 to i32
  %56 = and i32 %55, -2
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.key, ptr %57, i32 0, i32 14
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  tail call void @key_revoke(ptr noundef %57) #9
  br label %63

63:                                               ; preds = %62, %53
  %64 = phi i32 [ 0, %62 ], [ -1, %53 ]
  tail call void @key_put(ptr noundef %57) #9
  br label %221

65:                                               ; preds = %5
  %66 = inttoptr i32 %2 to ptr
  %67 = tail call i32 @keyctl_describe_key(i32 noundef %1, ptr noundef %66, i32 noundef %3) #9
  br label %221

68:                                               ; preds = %5
  %69 = tail call i32 @keyctl_keyring_clear(i32 noundef %1) #9
  br label %221

70:                                               ; preds = %5
  %71 = tail call ptr @lookup_user_key(i32 noundef %2, i32 noundef 1, i32 noundef 3) #9
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = ptrtoint ptr %71 to i32
  br label %221

75:                                               ; preds = %70
  %76 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 1, i32 noundef 5) #9
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = ptrtoint ptr %76 to i32
  %80 = ptrtoint ptr %71 to i32
  %81 = and i32 %80, -2
  %82 = inttoptr i32 %81 to ptr
  br label %91

83:                                               ; preds = %75
  %84 = ptrtoint ptr %71 to i32
  %85 = and i32 %84, -2
  %86 = inttoptr i32 %85 to ptr
  %87 = ptrtoint ptr %76 to i32
  %88 = and i32 %87, -2
  %89 = inttoptr i32 %88 to ptr
  %90 = tail call i32 @key_link(ptr noundef %86, ptr noundef %89) #9
  tail call void @key_put(ptr noundef %89) #9
  br label %91

91:                                               ; preds = %83, %78
  %92 = phi ptr [ %86, %83 ], [ %82, %78 ]
  %93 = phi i32 [ %90, %83 ], [ %79, %78 ]
  tail call void @key_put(ptr noundef %92) #9
  br label %221

94:                                               ; preds = %5
  %95 = tail call i32 @keyctl_keyring_unlink(i32 noundef %1, i32 noundef %2) #9
  br label %221

96:                                               ; preds = %5
  %97 = inttoptr i32 %2 to ptr
  %98 = inttoptr i32 %3 to ptr
  %99 = tail call i32 @keyctl_keyring_search(i32 noundef %1, ptr noundef %97, ptr noundef %98, i32 noundef %4) #9
  br label %221

100:                                              ; preds = %5
  %101 = inttoptr i32 %2 to ptr
  %102 = tail call i32 @keyctl_read_key(i32 noundef %1, ptr noundef %101, i32 noundef %3) #9
  br label %221

103:                                              ; preds = %5
  %104 = tail call i32 @keyctl_chown_key(i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  br label %221

105:                                              ; preds = %5
  %106 = and i32 %2, -1061109568
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %221

108:                                              ; preds = %105
  %109 = tail call ptr @lookup_user_key(i32 noundef %1, i32 noundef 3, i32 noundef 6) #9
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  %111 = ptrtoint ptr %109 to i32
  br i1 %110, label %221, label %112

112:                                              ; preds = %108
  %113 = and i32 %111, -2
  %114 = inttoptr i32 %113 to ptr
  %115 = getelementptr inbounds %struct.key, ptr %114, i32 0, i32 3
  tail call void @down_write(ptr noundef %115) #9
  %116 = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.key, ptr %114, i32 0, i32 8
  %119 = tail call ptr @llvm.thread.pointer() #9
  %120 = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 83
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 7
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %118, align 8
  %125 = icmp eq i32 %124, %123
  br i1 %125, label %126, label %128

126:                                              ; preds = %117, %112
  %127 = getelementptr inbounds %struct.key, ptr %114, i32 0, i32 10
  store i32 %2, ptr %127, align 8
  br label %128

128:                                              ; preds = %126, %117
  %129 = phi i32 [ 0, %126 ], [ -13, %117 ]
  tail call void @up_write(ptr noundef %115) #9
  tail call void @key_put(ptr noundef %114) #9
  br label %221

130:                                              ; preds = %5
  %131 = icmp ne i32 %2, 0
  %132 = icmp ne i32 %3, 0
  %133 = and i1 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 0, ptr %9, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i32 24, i1 false) #9, !annotation !8
  %136 = call i32 @import_single_range(i32 noundef 1, ptr noundef nonnull %135, i32 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140, !prof !10

138:                                              ; preds = %134
  %139 = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %1, ptr noundef nonnull %10, i32 noundef %4) #9
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi i32 [ %139, %138 ], [ %136, %134 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %221

142:                                              ; preds = %130
  %143 = tail call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %1, ptr noundef null, i32 noundef %4) #9
  br label %221

144:                                              ; preds = %5
  %145 = tail call i32 @keyctl_reject_key(i32 noundef %1, i32 noundef %2, i32 noundef 126, i32 noundef %3) #9
  br label %221

146:                                              ; preds = %5
  %147 = tail call ptr @llvm.thread.pointer() #9
  %148 = getelementptr inbounds %struct.task_struct, ptr %147, i32 0, i32 83
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.cred, ptr %149, i32 0, i32 15
  %151 = load i8, ptr %150, align 4
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %1, -1
  br i1 %153, label %221, label %154

154:                                              ; preds = %146
  %155 = tail call ptr @prepare_creds() #9
  %156 = icmp eq ptr %155, null
  br i1 %156, label %221, label %157

157:                                              ; preds = %154
  switch i32 %1, label %168 [
    i32 1, label %158
    i32 2, label %161
    i32 0, label %164
    i32 3, label %164
    i32 4, label %164
    i32 5, label %164
    i32 7, label %164
  ]

158:                                              ; preds = %157
  %159 = tail call i32 @install_thread_keyring_to_cred(ptr noundef nonnull %155) #9
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %168, label %164

161:                                              ; preds = %157
  %162 = tail call i32 @install_process_keyring_to_cred(ptr noundef nonnull %155) #9
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161, %158, %157, %157, %157, %157, %157
  %165 = trunc i32 %1 to i8
  %166 = getelementptr inbounds %struct.cred, ptr %155, i32 0, i32 15
  store i8 %165, ptr %166, align 4
  %167 = tail call i32 @commit_creds(ptr noundef nonnull %155) #9
  br label %221

168:                                              ; preds = %161, %158, %157
  %169 = phi i32 [ %162, %161 ], [ %159, %158 ], [ -22, %157 ]
  tail call void @abort_creds(ptr noundef nonnull %155) #9
  br label %221

170:                                              ; preds = %5
  %171 = tail call i32 @keyctl_set_timeout(i32 noundef %1, i32 noundef %2) #9
  br label %221

172:                                              ; preds = %5
  %173 = tail call i32 @keyctl_assume_authority(i32 noundef %1) #9
  br label %221

174:                                              ; preds = %5
  %175 = inttoptr i32 %2 to ptr
  %176 = tail call i32 @keyctl_get_security(i32 noundef %1, ptr noundef %175, i32 noundef %3) #9
  br label %221

177:                                              ; preds = %5
  %178 = tail call i32 @keyctl_session_to_parent() #9
  br label %221

179:                                              ; preds = %5
  %180 = tail call i32 @keyctl_reject_key(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %221

181:                                              ; preds = %5
  %182 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr %6, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false) #9, !annotation !8
  %183 = icmp eq i32 %2, 0
  %184 = select i1 %183, i32 0, i32 %3
  %185 = call i32 @import_iovec(i32 noundef 1, ptr noundef %182, i32 noundef %184, i32 noundef 8, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %181
  %188 = call fastcc i32 @keyctl_instantiate_key_common(i32 noundef %1, ptr noundef nonnull %8, i32 noundef %4) #9
  %189 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %189) #9
  br label %190

190:                                              ; preds = %187, %181
  %191 = phi i32 [ %188, %187 ], [ %185, %181 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %221

192:                                              ; preds = %5
  %193 = tail call i32 @keyctl_invalidate_key(i32 noundef %1) #9
  br label %221

194:                                              ; preds = %5
  %195 = inttoptr i32 %2 to ptr
  %196 = inttoptr i32 %3 to ptr
  %197 = tail call i32 @keyctl_restrict_keyring(i32 noundef %1, ptr noundef %195, ptr noundef %196) #9
  br label %221

198:                                              ; preds = %5
  %199 = icmp eq i32 %2, 0
  br i1 %199, label %200, label %221

200:                                              ; preds = %198
  %201 = inttoptr i32 %3 to ptr
  %202 = inttoptr i32 %4 to ptr
  %203 = tail call i32 @keyctl_pkey_query(i32 noundef %1, ptr noundef %201, ptr noundef %202) #9
  br label %221

204:                                              ; preds = %5, %5, %5
  %205 = inttoptr i32 %1 to ptr
  %206 = inttoptr i32 %2 to ptr
  %207 = inttoptr i32 %3 to ptr
  %208 = inttoptr i32 %4 to ptr
  %209 = tail call i32 @keyctl_pkey_e_d_s(i32 noundef %0, ptr noundef %205, ptr noundef %206, ptr noundef %207, ptr noundef %208) #9
  br label %221

210:                                              ; preds = %5
  %211 = inttoptr i32 %1 to ptr
  %212 = inttoptr i32 %2 to ptr
  %213 = inttoptr i32 %3 to ptr
  %214 = inttoptr i32 %4 to ptr
  %215 = tail call i32 @keyctl_pkey_verify(ptr noundef %211, ptr noundef %212, ptr noundef %213, ptr noundef %214) #9
  br label %221

216:                                              ; preds = %5
  %217 = tail call i32 @keyctl_keyring_move(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  br label %221

218:                                              ; preds = %5
  %219 = inttoptr i32 %1 to ptr
  %220 = tail call i32 @keyctl_capabilities(ptr noundef %219, i32 noundef %2) #9
  br label %221

221:                                              ; preds = %218, %216, %210, %204, %200, %198, %194, %192, %190, %179, %177, %174, %172, %170, %168, %164, %154, %146, %144, %142, %140, %128, %108, %105, %103, %100, %96, %94, %91, %73, %68, %65, %63, %51, %45, %39, %36, %28, %17, %11, %5
  %222 = phi i32 [ %220, %218 ], [ %217, %216 ], [ %215, %210 ], [ %209, %204 ], [ %203, %200 ], [ %197, %194 ], [ %193, %192 ], [ %191, %190 ], [ %180, %179 ], [ %178, %177 ], [ %176, %174 ], [ %173, %172 ], [ %171, %170 ], [ %145, %144 ], [ %104, %103 ], [ %102, %100 ], [ %99, %96 ], [ %95, %94 ], [ %69, %68 ], [ %67, %65 ], [ %41, %39 ], [ -22, %198 ], [ %21, %17 ], [ %16, %11 ], [ %29, %28 ], [ %38, %36 ], [ %46, %45 ], [ %52, %51 ], [ %64, %63 ], [ %74, %73 ], [ %93, %91 ], [ -22, %105 ], [ %129, %128 ], [ %111, %108 ], [ %141, %140 ], [ %143, %142 ], [ %169, %168 ], [ %152, %164 ], [ %152, %146 ], [ -12, %154 ], [ -95, %5 ]
  ret i32 %222
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_create_or_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_and_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_key_construction(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_pkey_query(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_pkey_e_d_s(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keyctl_pkey_verify(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!9 = !{i64 2149958489, i64 2149958514}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2454601}
!12 = !{i64 2454798}
!13 = !{i64 2149940077}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2149959067, i64 2149959092}
!16 = !{i64 2151302743}
!17 = !{i64 2149213680}
!18 = !{i64 2149209504}
!19 = !{i64 2149209579, i64 2149209606, i64 2149209653, i64 2149209675, i64 2149209703, i64 2149209723}
!20 = !{i64 2149236683}
!21 = !{i64 577951, i64 2148079517, i64 2148079543, i64 2148079590, i64 2148079612, i64 2148079640, i64 2148079660}
!22 = !{i64 2148145136, i64 2148145162, i64 2148145191, i64 2148145225, i64 2148145256, i64 2148145279}
!23 = !{i64 2148142779, i64 2148142805, i64 2148142834, i64 2148142868, i64 2148142899, i64 2148142922}
!24 = !{i64 2148144237, i64 2148144269, i64 2148144298, i64 2148144332, i64 2148144363, i64 2148144386}
!25 = !{i64 2148987481}
!26 = !{i64 2149220757}
!27 = !{i64 1723971}
!28 = !{i64 606943}
!29 = !{i64 2149262374}
!30 = !{i64 2148987698}
!31 = !{i64 2148243458}
!32 = !{i64 2148145820, i64 2148145852, i64 2148145881, i64 2148145915, i64 2148145946, i64 2148145969}
!33 = !{i64 2148243661}
!34 = !{i64 2149955779, i64 2149955804}
