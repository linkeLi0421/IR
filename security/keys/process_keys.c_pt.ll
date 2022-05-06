; ModuleID = '/llk/IR/security/keys/process_keys.c_pt.bc'
source_filename = "../security/keys/process_keys.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_user_key:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_user_key\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_user_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.78, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.78 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.1, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.94, ptr }
%union.anon.1 = type { %struct.rb_node }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.keyring_index_key }
%union.anon.94 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }

@root_key_user = dso_local global %struct.key_user { %struct.rb_node zeroinitializer, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @root_key_user, i64 24), ptr getelementptr (i8, ptr @root_key_user, i64 24) } }, %struct.spinlock zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 3 } }, %struct.atomic_t { i32 2 }, %struct.atomic_t { i32 2 }, %struct.kuid_t zeroinitializer, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"_uid.%u\00", align 1
@key_type_keyring = external dso_local global %struct.key_type, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"_uid_ses.%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_tid\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_pid\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_ses\00", align 1
@key_type_request_key_auth = external dso_local global %struct.key_type, align 4
@__const.lookup_user_key.ctx = private unnamed_addr constant { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, [3 x i8], ptr, [4 x i8], i64 } { %struct.keyring_index_key zeroinitializer, ptr null, %struct.key_match_data { ptr @lookup_user_key_possessed, ptr null, ptr null, i32 0 }, i32 65, ptr null, i32 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@__kstrtab_lookup_user_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_user_key = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_user_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_user_key to i32), ptr @__kstrtab_lookup_user_key, ptr @__kstrtabns_lookup_user_key }, section "___ksymtab+lookup_user_key", align 4
@key_session_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @key_session_mutex, i64 12), ptr getelementptr (i8, ptr @key_session_mutex, i64 12) } }, align 4
@key_change_session_keyring.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"security/keys/process_keys.c\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"In %s get_ucounts failed\0A\00", align 1
@__func__.key_change_session_keyring = private unnamed_addr constant [27 x i8] c"key_change_session_keyring\00", align 1
@__initcall__kmod_process_keys__278_965_init_root_keyring7 = internal global ptr @init_root_keyring, section ".initcall7.init", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c".user_reg\00", align 1
@init_cred = external dso_local global %struct.cred, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_process_keys__278_965_init_root_keyring7, ptr @__ksymtab_lookup_user_key], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @look_up_user_keyrings(ptr noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [20 x i8], align 1
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.user_struct, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 11), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  tail call void @down_write(ptr noundef getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 12)) #10
  %14 = load ptr, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 11), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 5), align 4
  %18 = insertvalue [1 x i32] undef, i32 %17, 0
  %19 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.7, [1 x i32] %18, [1 x i32] [i32 -1], ptr noundef nonnull @init_cred, i32 noundef 201523200, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  store volatile ptr %19, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 11), align 4
  br label %22

22:                                               ; preds = %21, %16, %13
  %23 = phi ptr [ %14, %13 ], [ %19, %16 ], [ %19, %21 ]
  tail call void @up_write(ptr noundef getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 12)) #10
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi ptr [ %23, %22 ], [ %11, %2 ]
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %92

29:                                               ; preds = %24
  tail call void @down_write(ptr noundef getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 12)) #10
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 20, ptr noundef nonnull @.str, i32 noundef %10)
  %31 = ptrtoint ptr %25 to i32
  %32 = or i32 %31, 1
  %33 = inttoptr i32 %32 to ptr
  %34 = call ptr @keyring_search(ptr noundef nonnull %33, ptr noundef nonnull @key_type_keyring, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  %35 = icmp eq ptr %34, inttoptr (i32 -11 to ptr)
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr inbounds %struct.user_struct, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = insertvalue [1 x i32] undef, i32 %39, 0
  %41 = call ptr @keyring_alloc(ptr noundef nonnull %3, [1 x i32] %40, [1 x i32] [i32 -1], ptr noundef %6, i32 noundef 524222464, i32 noundef 16, ptr noundef null, ptr noundef %25) #10
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = ptrtoint ptr %41 to i32
  br label %90

45:                                               ; preds = %29
  %46 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %47 = ptrtoint ptr %34 to i32
  br i1 %46, label %90, label %48

48:                                               ; preds = %45
  %49 = and i32 %47, -2
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %48, %36
  %52 = phi ptr [ %41, %36 ], [ %50, %48 ]
  %53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %10)
  %54 = call ptr @keyring_search(ptr noundef nonnull %33, ptr noundef nonnull @key_type_keyring, ptr noundef nonnull %3, i1 noundef zeroext false) #10
  %55 = icmp eq ptr %54, inttoptr (i32 -11 to ptr)
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.user_struct, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 8
  %60 = insertvalue [1 x i32] undef, i32 %59, 0
  %61 = call ptr @keyring_alloc(ptr noundef nonnull %3, [1 x i32] %60, [1 x i32] [i32 -1], ptr noundef %6, i32 noundef 524222464, i32 noundef 16, ptr noundef null, ptr noundef null) #10
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = ptrtoint ptr %61 to i32
  br label %88

65:                                               ; preds = %56
  %66 = call i32 @key_link(ptr noundef %61, ptr noundef %52) #10
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = call i32 @key_link(ptr noundef %25, ptr noundef %61) #10
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %86, label %77

71:                                               ; preds = %51
  %72 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %73 = ptrtoint ptr %54 to i32
  br i1 %72, label %88, label %74

74:                                               ; preds = %71
  %75 = and i32 %73, -2
  %76 = inttoptr i32 %75 to ptr
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi ptr [ %61, %68 ], [ %76, %74 ]
  call void @up_write(ptr noundef getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 12)) #10
  %79 = icmp eq ptr %1, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store ptr %78, ptr %1, align 4
  br label %82

81:                                               ; preds = %77
  call void @key_put(ptr noundef %78) #10
  br label %82

82:                                               ; preds = %81, %80
  %83 = icmp eq ptr %0, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  store ptr %52, ptr %0, align 4
  br label %92

85:                                               ; preds = %82
  call void @key_put(ptr noundef %52) #10
  br label %92

86:                                               ; preds = %68, %65
  %87 = phi i32 [ %66, %65 ], [ %69, %68 ]
  call void @key_put(ptr noundef %61) #10
  br label %88

88:                                               ; preds = %86, %71, %63
  %89 = phi i32 [ %64, %63 ], [ %87, %86 ], [ %73, %71 ]
  call void @key_put(ptr noundef %52) #10
  br label %90

90:                                               ; preds = %88, %45, %43
  %91 = phi i32 [ %44, %43 ], [ %89, %88 ], [ %47, %45 ]
  call void @up_write(ptr noundef getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 12)) #10
  br label %92

92:                                               ; preds = %90, %85, %84, %27
  %93 = phi i32 [ %28, %27 ], [ %91, %90 ], [ 0, %85 ], [ 0, %84 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  ret i32 %93
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_user_session_keyring_rcu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 1
  %3 = alloca %struct.keyring_search_context, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.user_namespace, ptr %5, i32 0, i32 11
  %7 = load volatile ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %8 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store ptr @key_type_keyring, ptr %8, align 8
  %9 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 4
  store ptr %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2
  store ptr @key_default_cmp, ptr %11, align 8
  %12 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 3
  store i32 2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 5
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 7
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 8
  store i64 0, ptr %17, align 8
  %18 = icmp eq ptr %7, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.user_struct, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %24)
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %20, align 4
  %27 = ptrtoint ptr %7 to i32
  %28 = or i32 %27, 1
  %29 = inttoptr i32 %28 to ptr
  %30 = call ptr @keyring_search_rcu(ptr noundef nonnull %29, ptr noundef nonnull %3) #10
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = ptrtoint ptr %30 to i32
  %34 = and i32 %33, -2
  %35 = inttoptr i32 %34 to ptr
  br label %36

36:                                               ; preds = %32, %19, %1
  %37 = phi ptr [ %35, %32 ], [ null, %1 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_search_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @install_thread_keyring_to_cred(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %6, align 4
  %9 = insertvalue [1 x i32] undef, i32 %8, 0
  %10 = load i32, ptr %7, align 4
  %11 = insertvalue [1 x i32] undef, i32 %10, 0
  %12 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.2, [1 x i32] %9, [1 x i32] %11, ptr noundef %0, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #10
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = ptrtoint ptr %12 to i32
  br label %17

16:                                               ; preds = %5
  store ptr %12, ptr %2, align 4
  br label %17

17:                                               ; preds = %16, %14, %1
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @install_process_keyring_to_cred(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %6, align 4
  %9 = insertvalue [1 x i32] undef, i32 %8, 0
  %10 = load i32, ptr %7, align 4
  %11 = insertvalue [1 x i32] undef, i32 %10, 0
  %12 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.3, [1 x i32] %9, [1 x i32] %11, ptr noundef %0, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #10
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = ptrtoint ptr %12 to i32
  br label %17

16:                                               ; preds = %5
  store ptr %12, ptr %2, align 4
  br label %17

17:                                               ; preds = %16, %14, %1
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @install_session_keyring_to_cred(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %9, align 4
  %12 = insertvalue [1 x i32] undef, i32 %11, 0
  %13 = load i32, ptr %10, align 4
  %14 = insertvalue [1 x i32] undef, i32 %13, 0
  %15 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.4, [1 x i32] %12, [1 x i32] %14, ptr noundef %0, i32 noundef 1057161216, i32 noundef %8, ptr noundef null, ptr noundef null) #10
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = ptrtoint ptr %15 to i32
  br label %35

19:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #10, !srcloc !10
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #10, !srcloc !11
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !12

23:                                               ; preds = %19
  %24 = add i32 %21, 1
  %25 = or i32 %24, %21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %29, label %27, !prof !13

27:                                               ; preds = %23, %19
  %28 = phi i32 [ 2, %19 ], [ 1, %23 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %28) #10
  br label %29

29:                                               ; preds = %27, %23, %4
  %30 = phi ptr [ %15, %4 ], [ %1, %23 ], [ %1, %27 ]
  %31 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  store ptr %30, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @key_put(ptr noundef nonnull %32) #10
  br label %35

35:                                               ; preds = %34, %29, %17
  %36 = phi i32 [ %18, %17 ], [ 0, %34 ], [ 0, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_fsuid_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 3
  tail call void @down_write(ptr noundef %6) #10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 8
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 3
  tail call void @up_write(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_fsgid_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 3
  tail call void @down_write(ptr noundef %6) #10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.cred, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 3
  tail call void @up_write(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @search_cred_keyrings_rcu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i8], align 1
  %3 = alloca %struct.keyring_search_context, align 8
  %4 = getelementptr inbounds %struct.keyring_search_context, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  %11 = or i32 %10, 1
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %12, ptr noundef %0) #10
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %100

15:                                               ; preds = %9
  %16 = ptrtoint ptr %13 to i32
  switch i32 %16, label %17 [
    i32 -11, label %18
    i32 -126, label %18
  ]

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %15, %15, %1
  %19 = phi ptr [ null, %17 ], [ null, %1 ], [ %13, %15 ], [ %13, %15 ]
  %20 = phi ptr [ %13, %17 ], [ inttoptr (i32 -11 to ptr), %1 ], [ inttoptr (i32 -11 to ptr), %15 ], [ inttoptr (i32 -11 to ptr), %15 ]
  %21 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %18
  %25 = ptrtoint ptr %22 to i32
  %26 = or i32 %25, 1
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %27, ptr noundef %0) #10
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %100

30:                                               ; preds = %24
  %31 = ptrtoint ptr %28 to i32
  switch i32 %31, label %35 [
    i32 -11, label %32
    i32 -126, label %34
  ]

32:                                               ; preds = %30
  %33 = icmp eq ptr %19, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %32, %30, %18
  %36 = phi ptr [ %28, %34 ], [ %19, %32 ], [ %19, %18 ], [ %19, %30 ]
  %37 = phi ptr [ %20, %34 ], [ %20, %32 ], [ %20, %18 ], [ %28, %30 ]
  %38 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = ptrtoint ptr %39 to i32
  %43 = or i32 %42, 1
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call ptr @keyring_search_rcu(ptr noundef nonnull %44, ptr noundef %0) #10
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %100

47:                                               ; preds = %41
  %48 = ptrtoint ptr %45 to i32
  switch i32 %48, label %95 [
    i32 -11, label %49
    i32 -126, label %51
  ]

49:                                               ; preds = %47
  %50 = icmp eq ptr %36, null
  br i1 %50, label %51, label %95

51:                                               ; preds = %49, %47
  br label %95

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 21
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.user_namespace, ptr %54, i32 0, i32 11
  %56 = load volatile ptr, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %2, i8 0, i32 20, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %57 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false) #10
  store ptr @key_type_keyring, ptr %57, align 8
  %58 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 4
  store ptr %2, ptr %58, align 8
  %59 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 1
  store ptr %5, ptr %59, align 4
  %60 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2
  store ptr @key_default_cmp, ptr %60, align 8
  %61 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 2, i32 1
  store ptr %2, ptr %61, align 4
  %62 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 3
  store i32 2, ptr %62, align 8
  %63 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 7
  store ptr null, ptr %63, align 8
  %64 = getelementptr inbounds %struct.keyring_search_context, ptr %3, i32 0, i32 8
  store i64 0, ptr %64, align 8
  %65 = icmp eq ptr %56, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.keyring_index_key, ptr %3, i32 0, i32 1
  %68 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 20
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.user_struct, ptr %69, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 20, ptr noundef nonnull @.str.1, i32 noundef %71) #10
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %67, align 4
  %74 = ptrtoint ptr %56 to i32
  %75 = or i32 %74, 1
  %76 = inttoptr i32 %75 to ptr
  %77 = call ptr @keyring_search_rcu(ptr noundef nonnull %76, ptr noundef nonnull %3) #10
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %80

79:                                               ; preds = %66, %52
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %95

80:                                               ; preds = %66
  %81 = ptrtoint ptr %77 to i32
  %82 = and i32 %81, -2
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = inttoptr i32 %82 to ptr
  %86 = or i32 %81, 1
  %87 = inttoptr i32 %86 to ptr
  %88 = call ptr @keyring_search_rcu(ptr noundef nonnull %87, ptr noundef %0) #10
  call void @key_put(ptr noundef nonnull %85) #10
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = ptrtoint ptr %88 to i32
  switch i32 %91, label %95 [
    i32 -11, label %92
    i32 -126, label %94
  ]

92:                                               ; preds = %90
  %93 = icmp eq ptr %36, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %92, %90
  br label %95

95:                                               ; preds = %94, %92, %90, %80, %79, %51, %49, %47
  %96 = phi ptr [ %45, %51 ], [ %36, %49 ], [ %88, %94 ], [ %36, %92 ], [ %36, %80 ], [ %36, %47 ], [ %36, %90 ], [ %36, %79 ]
  %97 = phi ptr [ %37, %51 ], [ %37, %49 ], [ %37, %94 ], [ %37, %92 ], [ %37, %80 ], [ %45, %47 ], [ %88, %90 ], [ %37, %79 ]
  %98 = icmp eq ptr %96, null
  %99 = select i1 %98, ptr %97, ptr %96
  br label %100

100:                                              ; preds = %95, %84, %41, %24, %9
  %101 = phi ptr [ %99, %95 ], [ %45, %41 ], [ %88, %84 ], [ %28, %24 ], [ %13, %9 ]
  ret ptr %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @search_process_keyrings_rcu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @search_cred_keyrings_rcu(ptr noundef %0)
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %40

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.keyring_search_context, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 83
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %6, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.keyring_index_key, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, @key_type_request_key_auth
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @key_validate(ptr noundef nonnull %8) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.key, ptr %25, i32 0, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.request_key_auth, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %5, align 4
  %30 = tail call ptr @search_cred_keyrings_rcu(ptr noundef %0)
  store ptr %6, ptr %5, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %40

32:                                               ; preds = %22, %19, %15, %10, %4
  %33 = phi ptr [ inttoptr (i32 -13 to ptr), %15 ], [ inttoptr (i32 -13 to ptr), %10 ], [ inttoptr (i32 -13 to ptr), %4 ], [ inttoptr (i32 -13 to ptr), %19 ], [ %30, %22 ]
  %34 = icmp eq ptr %2, inttoptr (i32 -126 to ptr)
  %35 = icmp eq ptr %33, inttoptr (i32 -126 to ptr)
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp eq ptr %2, inttoptr (i32 -13 to ptr)
  %39 = select i1 %38, ptr %33, ptr %2
  br label %40

40:                                               ; preds = %37, %32, %22, %1
  %41 = phi ptr [ %2, %1 ], [ %39, %37 ], [ %30, %22 ], [ inttoptr (i32 -126 to ptr), %32 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @lookup_user_key_possessed(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.key_match_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_user_key(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.keyring_search_context, align 8
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) @__const.lookup_user_key.ctx, i32 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !8
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %9 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 1
  %10 = and i32 %1, 1
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %338, %3
  %13 = load ptr, ptr %8, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 24
  store i32 0, ptr %16, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #10, !srcloc !10
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !14
  br label %18

18:                                               ; preds = %15, %12
  store ptr %13, ptr %9, align 4
  switch i32 %0, label %238 [
    i32 -1, label %19
    i32 -2, label %68
    i32 -3, label %117
    i32 -4, label %167
    i32 -5, label %175
    i32 -6, label %321
    i32 -7, label %183
    i32 -8, label %202
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  br i1 %11, label %318, label %24

24:                                               ; preds = %23
  %25 = call ptr @prepare_creds() #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 18
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 1
  %33 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 2
  %34 = load i32, ptr %32, align 4
  %35 = insertvalue [1 x i32] undef, i32 %34, 0
  %36 = load i32, ptr %33, align 4
  %37 = insertvalue [1 x i32] undef, i32 %36, 0
  %38 = call ptr @keyring_alloc(ptr noundef nonnull @.str.2, [1 x i32] %35, [1 x i32] %37, ptr noundef nonnull %25, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #10
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store ptr %38, ptr %28, align 4
  br label %45

41:                                               ; preds = %31
  %42 = icmp slt ptr %38, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = ptrtoint ptr %38 to i32
  call void @abort_creds(ptr noundef nonnull %25) #10
  br label %47

45:                                               ; preds = %41, %40, %27
  %46 = call i32 @commit_creds(ptr noundef nonnull %25) #10
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %337

50:                                               ; preds = %47, %24
  %51 = phi i32 [ %48, %47 ], [ -12, %24 ]
  %52 = inttoptr i32 %51 to ptr
  br label %318

53:                                               ; preds = %19
  store ptr %21, ptr %5, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %21) #10, !srcloc !10
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #10, !srcloc !11
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !12

57:                                               ; preds = %53
  %58 = add i32 %55, 1
  %59 = or i32 %58, %55
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %63, label %61, !prof !13

61:                                               ; preds = %57, %53
  %62 = phi i32 [ 2, %53 ], [ 1, %57 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef %62) #10
  br label %63

63:                                               ; preds = %61, %57
  %64 = load ptr, ptr %5, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = or i32 %65, 1
  %67 = inttoptr i32 %66 to ptr
  br label %287

68:                                               ; preds = %18
  %69 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  br i1 %11, label %318, label %73

73:                                               ; preds = %72
  %74 = call ptr @prepare_creds() #10
  %75 = icmp eq ptr %74, null
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.cred, ptr %74, i32 0, i32 17
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.cred, ptr %74, i32 0, i32 1
  %82 = getelementptr inbounds %struct.cred, ptr %74, i32 0, i32 2
  %83 = load i32, ptr %81, align 4
  %84 = insertvalue [1 x i32] undef, i32 %83, 0
  %85 = load i32, ptr %82, align 4
  %86 = insertvalue [1 x i32] undef, i32 %85, 0
  %87 = call ptr @keyring_alloc(ptr noundef nonnull @.str.3, [1 x i32] %84, [1 x i32] %86, ptr noundef nonnull %74, i32 noundef 1057030144, i32 noundef 1, ptr noundef null, ptr noundef null) #10
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store ptr %87, ptr %77, align 4
  br label %94

90:                                               ; preds = %80
  %91 = icmp slt ptr %87, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %90
  %93 = ptrtoint ptr %87 to i32
  call void @abort_creds(ptr noundef nonnull %74) #10
  br label %96

94:                                               ; preds = %90, %89, %76
  %95 = call i32 @commit_creds(ptr noundef nonnull %74) #10
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %337

99:                                               ; preds = %96, %73
  %100 = phi i32 [ %97, %96 ], [ -12, %73 ]
  %101 = inttoptr i32 %100 to ptr
  br label %318

102:                                              ; preds = %68
  store ptr %70, ptr %5, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %70) #10, !srcloc !10
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %70, ptr nonnull %70, i32 1, ptr nonnull elementtype(i32) %70) #10, !srcloc !11
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106, !prof !12

106:                                              ; preds = %102
  %107 = add i32 %104, 1
  %108 = or i32 %107, %104
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %112, label %110, !prof !13

110:                                              ; preds = %106, %102
  %111 = phi i32 [ 2, %102 ], [ 1, %106 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %70, i32 noundef %111) #10
  br label %112

112:                                              ; preds = %110, %106
  %113 = load ptr, ptr %5, align 4
  %114 = ptrtoint ptr %113 to i32
  %115 = or i32 %114, 1
  %116 = inttoptr i32 %115 to ptr
  br label %287

117:                                              ; preds = %18
  %118 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 16
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %6)
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %318, label %124

124:                                              ; preds = %121
  br i1 %11, label %127, label %125

125:                                              ; preds = %124
  %126 = call i32 @join_session_keyring(ptr noundef null)
  br label %139

127:                                              ; preds = %124
  %128 = load ptr, ptr %6, align 4
  %129 = call ptr @prepare_creds() #10
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = call i32 @install_session_keyring_to_cred(ptr noundef nonnull %129, ptr noundef %128) #10
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void @abort_creds(ptr noundef nonnull %129) #10
  br label %137

135:                                              ; preds = %131
  %136 = call i32 @commit_creds(ptr noundef nonnull %129) #10
  br label %139

137:                                              ; preds = %134, %127
  %138 = load ptr, ptr %6, align 4
  call void @key_put(ptr noundef %138) #10
  br label %318

139:                                              ; preds = %135, %125
  %140 = phi i32 [ %126, %125 ], [ %136, %135 ]
  %141 = load ptr, ptr %6, align 4
  call void @key_put(ptr noundef %141) #10
  %142 = icmp slt i32 %140, 0
  br i1 %142, label %318, label %337

143:                                              ; preds = %117
  %144 = getelementptr inbounds %struct.key, ptr %119, i32 0, i32 14
  %145 = load volatile i32, ptr %144, align 4
  %146 = and i32 %145, 512
  %147 = icmp eq i32 %146, 0
  %148 = or i1 %11, %147
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = call i32 @join_session_keyring(ptr noundef null)
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %318, label %337

152:                                              ; preds = %143
  store ptr %119, ptr %5, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %119) #10, !srcloc !10
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %119, ptr nonnull %119, i32 1, ptr nonnull elementtype(i32) %119) #10, !srcloc !11
  %154 = extractvalue { i32, i32, i32 } %153, 0
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156, !prof !12

156:                                              ; preds = %152
  %157 = add i32 %154, 1
  %158 = or i32 %157, %154
  %159 = icmp sgt i32 %158, -1
  br i1 %159, label %162, label %160, !prof !13

160:                                              ; preds = %156, %152
  %161 = phi i32 [ 2, %152 ], [ 1, %156 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %119, i32 noundef %161) #10
  br label %162

162:                                              ; preds = %160, %156
  %163 = load ptr, ptr %5, align 4
  %164 = ptrtoint ptr %163 to i32
  %165 = or i32 %164, 1
  %166 = inttoptr i32 %165 to ptr
  br label %287

167:                                              ; preds = %18
  %168 = call i32 @look_up_user_keyrings(ptr noundef nonnull %5, ptr noundef null)
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %318, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %5, align 4
  %172 = ptrtoint ptr %171 to i32
  %173 = or i32 %172, 1
  %174 = inttoptr i32 %173 to ptr
  br label %287

175:                                              ; preds = %18
  %176 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %5)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %318, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %5, align 4
  %180 = ptrtoint ptr %179 to i32
  %181 = or i32 %180, 1
  %182 = inttoptr i32 %181 to ptr
  br label %287

183:                                              ; preds = %18
  %184 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 19
  %185 = load ptr, ptr %184, align 4
  store ptr %185, ptr %5, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %318, label %187

187:                                              ; preds = %183
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %185) #10, !srcloc !10
  %188 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %185, ptr nonnull %185, i32 1, ptr nonnull elementtype(i32) %185) #10, !srcloc !11
  %189 = extractvalue { i32, i32, i32 } %188, 0
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191, !prof !12

191:                                              ; preds = %187
  %192 = add i32 %189, 1
  %193 = or i32 %192, %189
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %197, label %195, !prof !13

195:                                              ; preds = %191, %187
  %196 = phi i32 [ 2, %187 ], [ 1, %191 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %185, i32 noundef %196) #10
  br label %197

197:                                              ; preds = %195, %191
  %198 = load ptr, ptr %5, align 4
  %199 = ptrtoint ptr %198 to i32
  %200 = or i32 %199, 1
  %201 = inttoptr i32 %200 to ptr
  br label %287

202:                                              ; preds = %18
  %203 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 19
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %321, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.key, ptr %204, i32 0, i32 3
  call void @down_read(ptr noundef %207) #10
  %208 = load ptr, ptr %203, align 4
  %209 = getelementptr inbounds %struct.key, ptr %208, i32 0, i32 14
  %210 = load volatile i32, ptr %209, align 4
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %206
  store ptr null, ptr %5, align 4
  br label %228

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.key, ptr %208, i32 0, i32 16
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.request_key_auth, ptr %216, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  store ptr %218, ptr %5, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %218) #10, !srcloc !10
  %219 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %218, ptr %218, i32 1, ptr elementtype(i32) %218) #10, !srcloc !11
  %220 = extractvalue { i32, i32, i32 } %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %226, label %222, !prof !12

222:                                              ; preds = %214
  %223 = add i32 %220, 1
  %224 = or i32 %223, %220
  %225 = icmp sgt i32 %224, -1
  br i1 %225, label %228, label %226, !prof !13

226:                                              ; preds = %222, %214
  %227 = phi i32 [ 2, %214 ], [ 1, %222 ]
  call void @refcount_warn_saturate(ptr noundef %218, i32 noundef %227) #10
  br label %228

228:                                              ; preds = %226, %222, %213
  %229 = phi ptr [ inttoptr (i32 -128 to ptr), %213 ], [ inttoptr (i32 -126 to ptr), %222 ], [ inttoptr (i32 -126 to ptr), %226 ]
  %230 = load ptr, ptr %203, align 4
  %231 = getelementptr inbounds %struct.key, ptr %230, i32 0, i32 3
  call void @up_read(ptr noundef %231) #10
  %232 = load ptr, ptr %5, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %318, label %234

234:                                              ; preds = %228
  %235 = ptrtoint ptr %232 to i32
  %236 = or i32 %235, 1
  %237 = inttoptr i32 %236 to ptr
  br label %287

238:                                              ; preds = %18
  %239 = icmp slt i32 %0, 1
  br i1 %239, label %321, label %240

240:                                              ; preds = %238
  %241 = call ptr @key_lookup(i32 noundef %0) #10
  store ptr %241, ptr %5, align 4
  %242 = icmp ugt ptr %241, inttoptr (i32 -4096 to ptr)
  br i1 %242, label %318, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.key, ptr %241, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef align 8 dereferenceable(20) %244, i32 20, i1 false)
  %245 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2, i32 1
  store ptr %241, ptr %245, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %246 = call ptr @search_cred_keyrings_rcu(ptr noundef nonnull %4) #10
  %247 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  br i1 %247, label %248, label %282

248:                                              ; preds = %243
  %249 = load ptr, ptr %9, align 4
  %250 = getelementptr inbounds %struct.cred, ptr %249, i32 0, i32 19
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %273, label %253

253:                                              ; preds = %248
  %254 = load ptr, ptr %8, align 8
  %255 = icmp ne ptr %249, %254
  %256 = getelementptr inbounds %struct.keyring_index_key, ptr %4, i32 0, i32 2
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, @key_type_request_key_auth
  %259 = select i1 %255, i1 true, i1 %258
  br i1 %259, label %273, label %260

260:                                              ; preds = %253
  %261 = call i32 @key_validate(ptr noundef nonnull %251) #10
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load ptr, ptr %9, align 4
  %265 = getelementptr inbounds %struct.cred, ptr %264, i32 0, i32 19
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.key, ptr %266, i32 0, i32 16
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.request_key_auth, ptr %268, i32 0, i32 3
  %270 = load ptr, ptr %269, align 4
  store ptr %270, ptr %9, align 4
  %271 = call ptr @search_cred_keyrings_rcu(ptr noundef nonnull %4) #10
  store ptr %249, ptr %9, align 4
  %272 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  br i1 %272, label %273, label %282

273:                                              ; preds = %263, %260, %253, %248
  %274 = phi ptr [ inttoptr (i32 -13 to ptr), %253 ], [ inttoptr (i32 -13 to ptr), %248 ], [ inttoptr (i32 -13 to ptr), %260 ], [ %271, %263 ]
  %275 = icmp eq ptr %246, inttoptr (i32 -126 to ptr)
  %276 = icmp eq ptr %274, inttoptr (i32 -126 to ptr)
  %277 = select i1 %275, i1 true, i1 %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %273
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %287

279:                                              ; preds = %273
  %280 = icmp eq ptr %246, inttoptr (i32 -13 to ptr)
  %281 = select i1 %280, ptr %274, ptr %246
  br label %282

282:                                              ; preds = %279, %263, %243
  %283 = phi ptr [ %246, %243 ], [ %281, %279 ], [ %271, %263 ]
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %284 = icmp ugt ptr %283, inttoptr (i32 -4096 to ptr)
  br i1 %284, label %287, label %285

285:                                              ; preds = %282
  %286 = load ptr, ptr %5, align 4
  call void @key_put(ptr noundef %286) #10
  br label %287

287:                                              ; preds = %285, %282, %278, %234, %197, %178, %170, %162, %112, %63
  %288 = phi ptr [ %241, %282 ], [ %283, %285 ], [ %237, %234 ], [ %201, %197 ], [ %182, %178 ], [ %174, %170 ], [ %166, %162 ], [ %116, %112 ], [ %67, %63 ], [ %241, %278 ]
  %289 = icmp eq i32 %2, 7
  br i1 %289, label %310, label %290

290:                                              ; preds = %287
  %291 = and i32 %1, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load ptr, ptr %5, align 4
  %295 = call i32 @wait_for_key_construction(ptr noundef %294, i1 noundef zeroext true) #10
  switch i32 %295, label %296 [
    i32 -512, label %331
    i32 0, label %305
  ]

296:                                              ; preds = %293
  %297 = add i32 %2, -11
  %298 = icmp ult i32 %297, -2
  br i1 %298, label %331, label %305

299:                                              ; preds = %290
  %300 = icmp eq i32 %2, 10
  br i1 %300, label %310, label %301

301:                                              ; preds = %299
  %302 = load ptr, ptr %5, align 4
  %303 = call i32 @key_validate(ptr noundef %302) #10
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %331, label %310

305:                                              ; preds = %296, %293
  %306 = load ptr, ptr %5, align 4
  %307 = getelementptr inbounds %struct.key, ptr %306, i32 0, i32 13
  %308 = load volatile i16, ptr %307, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %331, label %310

310:                                              ; preds = %305, %301, %299, %287
  %311 = load ptr, ptr %9, align 4
  %312 = call i32 @key_task_permission(ptr noundef %288, ptr noundef %311, i32 noundef %2) #10
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %331, label %314

314:                                              ; preds = %310
  %315 = call i64 @ktime_get_real_seconds() #10
  %316 = load ptr, ptr %5, align 4
  %317 = getelementptr inbounds %struct.key, ptr %316, i32 0, i32 7
  store i64 %315, ptr %317, align 8
  br label %318

318:                                              ; preds = %331, %314, %240, %228, %183, %175, %167, %149, %139, %137, %121, %99, %72, %50, %23
  %319 = phi ptr [ %241, %240 ], [ inttoptr (i32 -126 to ptr), %137 ], [ %52, %50 ], [ %101, %99 ], [ inttoptr (i32 -126 to ptr), %167 ], [ inttoptr (i32 -126 to ptr), %175 ], [ inttoptr (i32 -126 to ptr), %183 ], [ %229, %228 ], [ %288, %314 ], [ %336, %331 ], [ inttoptr (i32 -126 to ptr), %149 ], [ inttoptr (i32 -126 to ptr), %139 ], [ inttoptr (i32 -126 to ptr), %121 ], [ inttoptr (i32 -126 to ptr), %72 ], [ inttoptr (i32 -126 to ptr), %23 ]
  %320 = load ptr, ptr %9, align 4
  br label %321

321:                                              ; preds = %318, %238, %202, %18
  %322 = phi ptr [ %320, %318 ], [ %13, %238 ], [ %13, %202 ], [ %13, %18 ]
  %323 = phi ptr [ %319, %318 ], [ inttoptr (i32 -22 to ptr), %238 ], [ inttoptr (i32 -126 to ptr), %202 ], [ inttoptr (i32 -22 to ptr), %18 ]
  %324 = icmp eq ptr %322, null
  br i1 %324, label %330, label %325

325:                                              ; preds = %321
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %322) #10, !srcloc !10
  %326 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %322, ptr nonnull %322, i32 1, ptr nonnull elementtype(i32) %322) #10, !srcloc !19
  %327 = extractvalue { i32, i32 } %326, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  call void @__put_cred(ptr noundef nonnull %322) #10
  br label %330

330:                                              ; preds = %329, %325, %321
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  ret ptr %323

331:                                              ; preds = %310, %305, %301, %296, %293
  %332 = phi i32 [ %303, %301 ], [ %312, %310 ], [ -5, %305 ], [ %295, %296 ], [ %295, %293 ]
  %333 = ptrtoint ptr %288 to i32
  %334 = and i32 %333, -2
  %335 = inttoptr i32 %334 to ptr
  call void @key_put(ptr noundef %335) #10
  %336 = inttoptr i32 %332 to ptr
  br label %318

337:                                              ; preds = %149, %139, %96, %47
  br i1 %14, label %338, label %339

338:                                              ; preds = %343, %339, %337
  br label %12

339:                                              ; preds = %337
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #10, !srcloc !10
  %340 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !19
  %341 = extractvalue { i32, i32 } %340, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %338

343:                                              ; preds = %339
  call void @__put_cred(ptr noundef nonnull %13) #10
  br label %338
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @join_session_keyring(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @prepare_creds() #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %72, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %14, align 4
  %17 = insertvalue [1 x i32] undef, i32 %16, 0
  %18 = load i32, ptr %15, align 4
  %19 = insertvalue [1 x i32] undef, i32 %18, 0
  %20 = tail call ptr @keyring_alloc(ptr noundef nonnull @.str.4, [1 x i32] %17, [1 x i32] %19, ptr noundef nonnull %2, i32 noundef 1057161216, i32 noundef %13, ptr noundef null, ptr noundef null) #10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %26, label %22

22:                                               ; preds = %9
  %23 = load ptr, ptr %10, align 4
  store ptr %20, ptr %10, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void @key_put(ptr noundef nonnull %23) #10
  br label %29

26:                                               ; preds = %9
  %27 = ptrtoint ptr %20 to i32
  %28 = icmp slt ptr %20, null
  br i1 %28, label %70, label %29

29:                                               ; preds = %26, %25, %22
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr inbounds %struct.key, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @commit_creds(ptr noundef nonnull %2) #10
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 %32, i32 %33
  br label %72

36:                                               ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @key_session_mutex) #10
  %37 = tail call ptr @find_keyring_by_name(ptr noundef nonnull %0, i1 noundef zeroext false) #10
  %38 = icmp eq ptr %37, inttoptr (i32 -126 to ptr)
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 1
  %41 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 2
  %42 = load i32, ptr %40, align 4
  %43 = insertvalue [1 x i32] undef, i32 %42, 0
  %44 = load i32, ptr %41, align 4
  %45 = insertvalue [1 x i32] undef, i32 %44, 0
  %46 = tail call ptr @keyring_alloc(ptr noundef nonnull %0, [1 x i32] %43, [1 x i32] %45, ptr noundef %7, i32 noundef 1058209792, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = ptrtoint ptr %46 to i32
  br label %68

50:                                               ; preds = %36
  %51 = ptrtoint ptr %37 to i32
  %52 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 16
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %37, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53, %39
  %58 = phi ptr [ %46, %39 ], [ %37, %53 ]
  %59 = tail call i32 @install_session_keyring_to_cred(ptr noundef nonnull %2, ptr noundef %58)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @commit_creds(ptr noundef nonnull %2) #10
  tail call void @mutex_unlock(ptr noundef nonnull @key_session_mutex) #10
  %63 = getelementptr inbounds %struct.key, ptr %58, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  tail call void @key_put(ptr noundef %58) #10
  br label %72

65:                                               ; preds = %57, %53
  %66 = phi ptr [ %58, %57 ], [ %37, %53 ]
  %67 = phi i32 [ %59, %57 ], [ 0, %53 ]
  tail call void @key_put(ptr noundef %66) #10
  br label %68

68:                                               ; preds = %65, %50, %48
  %69 = phi i32 [ %49, %48 ], [ %67, %65 ], [ %51, %50 ]
  tail call void @mutex_unlock(ptr noundef nonnull @key_session_mutex) #10
  br label %70

70:                                               ; preds = %68, %26
  %71 = phi i32 [ %69, %68 ], [ %27, %26 ]
  tail call void @abort_creds(ptr noundef nonnull %2) #10
  br label %72

72:                                               ; preds = %70, %61, %29, %1
  %73 = phi i32 [ %71, %70 ], [ -12, %1 ], [ %64, %61 ], [ %35, %29 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_key_construction(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !19
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @__put_cred(ptr noundef nonnull %0) #10
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_keyring_by_name(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @key_change_session_keyring(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -116
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !13

10:                                               ; preds = %1
  tail call fastcc void @put_cred(ptr noundef %5)
  br label %117

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 22
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @get_ucounts(ptr noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20, !prof !12

16:                                               ; preds = %11
  %17 = load i1, ptr @key_change_session_keyring.__already_done, align 1
  br i1 %17, label %19, label %18, !prof !13

18:                                               ; preds = %16
  store i1 true, ptr @key_change_session_keyring.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 923, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.key_change_session_keyring) #10
  br label %19

19:                                               ; preds = %18, %16
  tail call fastcc void @put_cred(ptr noundef %5)
  br label %117

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %0, i32 -112
  %22 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %21, align 4
  %24 = getelementptr i8, ptr %0, i32 -96
  %25 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %24, align 4
  %27 = getelementptr i8, ptr %0, i32 -104
  %28 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %27, align 4
  %30 = getelementptr i8, ptr %0, i32 -88
  %31 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 4
  %33 = getelementptr i8, ptr %0, i32 -108
  %34 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = getelementptr i8, ptr %0, i32 -92
  %37 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %36, align 4
  %39 = getelementptr i8, ptr %0, i32 -100
  %40 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %39, align 4
  %42 = getelementptr i8, ptr %0, i32 -84
  %43 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 20
  %46 = load ptr, ptr %45, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #10, !srcloc !10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #10, !srcloc !11
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50, !prof !12

50:                                               ; preds = %20
  %51 = add i32 %48, 1
  %52 = or i32 %51, %48
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %56, label %54, !prof !13

54:                                               ; preds = %50, %20
  %55 = phi i32 [ 2, %20 ], [ 1, %50 ]
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef %55) #10
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr i8, ptr %0, i32 -16
  store ptr %46, ptr %57, align 4
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr i8, ptr %0, i32 -8
  store ptr %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %0, i32 -12
  store ptr @init_user_ns, ptr %60, align 4
  %61 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 23
  %62 = load ptr, ptr %61, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #10, !srcloc !10
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #10, !srcloc !14
  %64 = getelementptr i8, ptr %0, i32 -4
  store ptr %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i8, ptr %0, i32 -80
  store i32 %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %0, i32 -76
  %69 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 10
  %70 = load i64, ptr %69, align 4
  store i64 %70, ptr %68, align 4
  %71 = getelementptr i8, ptr %0, i32 -68
  %72 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 11
  %73 = load i64, ptr %72, align 4
  store i64 %73, ptr %71, align 4
  %74 = getelementptr i8, ptr %0, i32 -60
  %75 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 12
  %76 = load i64, ptr %75, align 4
  store i64 %76, ptr %74, align 4
  %77 = getelementptr i8, ptr %0, i32 -44
  %78 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 14
  %79 = load i64, ptr %78, align 4
  store i64 %79, ptr %77, align 4
  %80 = getelementptr i8, ptr %0, i32 -52
  %81 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 13
  %82 = load i64, ptr %81, align 4
  store i64 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 15
  %84 = load i8, ptr %83, align 4
  %85 = getelementptr i8, ptr %0, i32 -36
  store i8 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 18
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %56
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %87) #10, !srcloc !10
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %87, ptr nonnull %87, i32 1, ptr nonnull elementtype(i32) %87) #10, !srcloc !11
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93, !prof !12

93:                                               ; preds = %89
  %94 = add i32 %91, 1
  %95 = or i32 %94, %91
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %99, label %97, !prof !13

97:                                               ; preds = %93, %89
  %98 = phi i32 [ 2, %89 ], [ 1, %93 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %87, i32 noundef %98) #10
  br label %99

99:                                               ; preds = %97, %93, %56
  %100 = getelementptr i8, ptr %0, i32 -24
  store ptr %87, ptr %100, align 4
  %101 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 17
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %102) #10, !srcloc !10
  %105 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %102, ptr nonnull %102, i32 1, ptr nonnull elementtype(i32) %102) #10, !srcloc !11
  %106 = extractvalue { i32, i32, i32 } %105, 0
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108, !prof !12

108:                                              ; preds = %104
  %109 = add i32 %106, 1
  %110 = or i32 %109, %106
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %114, label %112, !prof !13

112:                                              ; preds = %108, %104
  %113 = phi i32 [ 2, %104 ], [ 1, %108 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %102, i32 noundef %113) #10
  br label %114

114:                                              ; preds = %112, %108, %99
  %115 = getelementptr i8, ptr %0, i32 -28
  store ptr %102, ptr %115, align 4
  %116 = tail call i32 @commit_creds(ptr noundef %5) #10
  br label %117

117:                                              ; preds = %114, %19, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_root_keyring() #8 section ".init.text" {
  %1 = tail call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef null)
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }

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
!9 = !{i64 2154003345}
!10 = !{i64 551527, i64 2148053093, i64 2148053119, i64 2148053166, i64 2148053188, i64 2148053216, i64 2148053236}
!11 = !{i64 2148117813, i64 2148117845, i64 2148117874, i64 2148117908, i64 2148117939, i64 2148117962}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148116355, i64 2148116381, i64 2148116410, i64 2148116444, i64 2148116475, i64 2148116498}
!15 = !{i64 2148961057}
!16 = !{i64 2148961274}
!17 = !{i64 2151091467}
!18 = !{i64 2148217034}
!19 = !{i64 2148119396, i64 2148119428, i64 2148119457, i64 2148119491, i64 2148119522, i64 2148119545}
!20 = !{i64 2148217237}
