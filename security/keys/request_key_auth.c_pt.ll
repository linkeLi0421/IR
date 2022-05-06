; ModuleID = '/llk/IR/security/keys/request_key_auth.c_pt.bc'
source_filename = "../security/keys/request_key_auth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.65, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.65 = type { %union.key_payload }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9 }
%struct.llist_node = type { ptr }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.34 = type { %struct.callback_head }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [18 x i8] c".request_key_auth\00", align 1
@key_type_request_key_auth = dso_local global %struct.key_type { ptr @.str, i32 40, i32 0, ptr null, ptr @request_key_auth_preparse, ptr @request_key_auth_free_preparse, ptr @request_key_auth_instantiate, ptr null, ptr null, ptr null, ptr @request_key_auth_revoke, ptr @request_key_auth_destroy, ptr @request_key_auth_describe, ptr @request_key_auth_read, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key:\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" pid:%d ci:%zu\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @request_key_auth_preparse(ptr nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @request_key_auth_free_preparse(ptr nocapture noundef %0) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @request_key_auth_instantiate(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.key_preparsed_payload, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  store volatile ptr %4, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @request_key_auth_revoke(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  store volatile ptr null, ptr %2, align 4
  tail call void @call_rcu(ptr noundef %3, ptr noundef nonnull @request_key_auth_rcu_disposal) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @request_key_auth_destroy(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store volatile ptr null, ptr %2, align 4
  tail call void @call_rcu(ptr noundef nonnull %3, ptr noundef nonnull @request_key_auth_rcu_disposal) #12
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @request_key_auth_describe(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  %7 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 15, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  tail call void @seq_puts(ptr noundef %1, ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %10 = load volatile i16, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.request_key_auth, ptr %4, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.request_key_auth, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %12, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @request_key_auth_read(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.request_key_auth, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne ptr %1, null
  %11 = icmp ne i32 %2, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call i32 @llvm.umin.i32(i32 %9, i32 %2)
  %15 = getelementptr inbounds %struct.request_key_auth, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %1, ptr align 1 %16, i32 %14, i1 false)
  br label %17

17:                                               ; preds = %13, %7, %3
  %18 = phi i32 [ -128, %3 ], [ %9, %13 ], [ %9, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @request_key_auth_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca [20 x i8], align 1
  %7 = tail call ptr @llvm.thread.pointer() #12
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !10
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 40) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #12
  %15 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 4
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %103, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 5
  store i32 %3, ptr %18, align 8
  %19 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 7
  %20 = tail call i32 @strlcpy(ptr noundef %19, ptr noundef %1, i32 noundef 8) #12
  %21 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.key, ptr %22, i32 0, i32 3
  tail call void @down_read(ptr noundef %25) #12
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr inbounds %struct.key, ptr %26, i32 0, i32 14
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.key, ptr %26, i32 0, i32 3
  tail call void @up_read(ptr noundef %32) #12
  br label %103

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.key, ptr %26, i32 0, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.request_key_auth, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 24
  store i32 0, ptr %40, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %37) #12, !srcloc !11
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %37, ptr nonnull %37, i32 1, ptr nonnull elementtype(i32) %37) #12, !srcloc !12
  br label %42

42:                                               ; preds = %39, %33
  %43 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 3
  store ptr %37, ptr %43, align 8
  %44 = getelementptr inbounds %struct.request_key_auth, ptr %35, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %21, align 4
  %48 = getelementptr inbounds %struct.key, ptr %47, i32 0, i32 3
  tail call void @up_read(ptr noundef %48) #12
  br label %59

49:                                               ; preds = %17
  %50 = icmp eq ptr %9, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 24
  store i32 0, ptr %52, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #12, !srcloc !11
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #12, !srcloc !12
  br label %54

54:                                               ; preds = %51, %49
  %55 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 3
  store ptr %9, ptr %55, align 8
  %56 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 52
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %42
  %60 = icmp eq ptr %0, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #12, !srcloc !11
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #12, !srcloc !13
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65, !prof !14

65:                                               ; preds = %61
  %66 = add i32 %63, 1
  %67 = or i32 %66, %63
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %71, label %69, !prof !15

69:                                               ; preds = %65, %61
  %70 = phi i32 [ 2, %61 ], [ 1, %65 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %70) #12
  br label %71

71:                                               ; preds = %69, %65, %59
  %72 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 1
  store ptr %0, ptr %72, align 8
  %73 = icmp eq ptr %4, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #12, !srcloc !11
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #12, !srcloc !13
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78, !prof !14

78:                                               ; preds = %74
  %79 = add i32 %76, 1
  %80 = or i32 %79, %76
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %84, label %82, !prof !15

82:                                               ; preds = %78, %74
  %83 = phi i32 [ 2, %74 ], [ 1, %78 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef %83) #12
  br label %84

84:                                               ; preds = %82, %78, %71
  %85 = getelementptr inbounds %struct.request_key_auth, ptr %11, i32 0, i32 2
  store ptr %4, ptr %85, align 4
  %86 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef %87)
  %89 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 7
  %90 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 8
  %91 = load i32, ptr %89, align 4
  %92 = insertvalue [1 x i32] undef, i32 %91, 0
  %93 = load i32, ptr %90, align 4
  %94 = insertvalue [1 x i32] undef, i32 %93, 0
  %95 = call ptr @key_alloc(ptr noundef nonnull @key_type_request_key_auth, ptr noundef nonnull %6, [1 x i32] %92, [1 x i32] %94, ptr noundef %9, i32 noundef 453050368, i32 noundef 2, ptr noundef null) #12
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = ptrtoint ptr %95 to i32
  br label %103

99:                                               ; preds = %84
  %100 = call i32 @key_instantiate_and_link(ptr noundef %95, ptr noundef nonnull %11, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  call void @key_put(ptr noundef %95) #12
  br label %103

103:                                              ; preds = %102, %97, %31, %13
  %104 = phi i32 [ -128, %31 ], [ %98, %97 ], [ %100, %102 ], [ -12, %13 ]
  call fastcc void @free_request_key_auth(ptr noundef nonnull %11)
  br label %105

105:                                              ; preds = %103, %5
  %106 = phi i32 [ %104, %103 ], [ -12, %5 ]
  %107 = inttoptr i32 %106 to ptr
  br label %108

108:                                              ; preds = %105, %99
  %109 = phi ptr [ %107, %105 ], [ %95, %99 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  ret ptr %109
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_instantiate_and_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_request_key_auth(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.request_key_auth, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @key_put(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.request_key_auth, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @key_put(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.request_key_auth, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #12, !srcloc !11
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #12, !srcloc !17
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @__put_cred(ptr noundef nonnull %9) #12
  br label %16

16:                                               ; preds = %15, %11, %3
  %17 = getelementptr inbounds %struct.request_key_auth, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #12
  tail call void @kfree(ptr noundef nonnull %0) #12
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @key_get_instantiation_authkey(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.keyring_search_context, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store ptr @key_type_request_key_auth, ptr %5, align 8
  %6 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 4
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 1
  %8 = tail call ptr @llvm.thread.pointer() #12
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2
  store ptr @key_default_cmp, ptr %11, align 8
  %12 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 3
  store i32 66, ptr %14, align 8
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 5
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 7
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 8
  store i64 0, ptr %17, align 8
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef %0)
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %4, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %20 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %3) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = icmp eq ptr %20, inttoptr (i32 -11 to ptr)
  %24 = select i1 %23, ptr inttoptr (i32 -126 to ptr), ptr %20
  br label %34

25:                                               ; preds = %1
  %26 = ptrtoint ptr %20 to i32
  %27 = and i32 %26, -2
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.key, ptr %28, i32 0, i32 14
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  call void @key_put(ptr noundef %28) #12
  br label %34

34:                                               ; preds = %33, %25, %22
  %35 = phi ptr [ inttoptr (i32 -128 to ptr), %33 ], [ %28, %25 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_process_keyrings_rcu(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @request_key_auth_rcu_disposal(ptr noundef %0) #1 {
  tail call fastcc void @free_request_key_auth(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 2152217846}
!9 = !{i64 2151071169}
!10 = !{!"auto-init"}
!11 = !{i64 522134, i64 2148023700, i64 2148023726, i64 2148023773, i64 2148023795, i64 2148023823, i64 2148023843}
!12 = !{i64 2148086962, i64 2148086988, i64 2148087017, i64 2148087051, i64 2148087082, i64 2148087105}
!13 = !{i64 2148088420, i64 2148088452, i64 2148088481, i64 2148088515, i64 2148088546, i64 2148088569}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148187641}
!17 = !{i64 2148090003, i64 2148090035, i64 2148090064, i64 2148090098, i64 2148090129, i64 2148090152}
!18 = !{i64 2148187844}
!19 = !{i64 2148944148}
!20 = !{i64 2148944365}
