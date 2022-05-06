; ModuleID = '/llk/IR/security/keys/request_key.c_pt.bc'
source_filename = "../security/keys/request_key.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_complete_request_key:\09\09\09\09\09"
module asm "\09.asciz \09\22complete_request_key\22\09\09\09\09\09"
module asm "__kstrtabns_complete_request_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_key_construction:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_key_construction\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_key_construction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_key_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22request_key_tag\22\09\09\09\09\09"
module asm "__kstrtabns_request_key_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_key_with_auxdata:\09\09\09\09\09"
module asm "\09.asciz \09\22request_key_with_auxdata\22\09\09\09\09\09"
module asm "__kstrtabns_request_key_with_auxdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_request_key_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22request_key_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_request_key_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.92, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.92 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.request_key_auth = type { %struct.callback_head, ptr, ptr, ptr, ptr, i32, i32, [8 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@__kstrtab_complete_request_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_complete_request_key = external dso_local constant [0 x i8], align 1
@__ksymtab_complete_request_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @complete_request_key to i32), ptr @__kstrtab_complete_request_key, ptr @__kstrtabns_complete_request_key }, section "___ksymtab+complete_request_key", align 4
@__kstrtab_wait_for_key_construction = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_key_construction = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_key_construction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_key_construction to i32), ptr @__kstrtab_wait_for_key_construction, ptr @__kstrtabns_wait_for_key_construction }, section "___ksymtab+wait_for_key_construction", align 4
@__kstrtab_request_key_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_key_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_request_key_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_key_tag to i32), ptr @__kstrtab_request_key_tag, ptr @__kstrtabns_request_key_tag }, section "___ksymtab+request_key_tag", align 4
@__kstrtab_request_key_with_auxdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_key_with_auxdata = external dso_local constant [0 x i8], align 1
@__ksymtab_request_key_with_auxdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_key_with_auxdata to i32), ptr @__kstrtab_request_key_with_auxdata, ptr @__kstrtabns_request_key_with_auxdata }, section "___ksymtab+request_key_with_auxdata", align 4
@__kstrtab_request_key_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_request_key_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_request_key_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @request_key_rcu to i32), ptr @__kstrtab_request_key_rcu, ptr @__kstrtabns_request_key_rcu }, section "___ksymtab+request_key_rcu", align 4
@key_type_keyring = external dso_local global %struct.key_type, align 4
@key_construction_mutex = external dso_local global %struct.mutex, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"security/keys/request_key.c\00", align 1
@call_sbin_request_key.request_key = internal constant [18 x i8] c"/sbin/request-key\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"_req.%u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"HOME=/\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_complete_request_key, ptr @__ksymtab_request_key_rcu, ptr @__ksymtab_request_key_tag, ptr @__ksymtab_request_key_with_auxdata, ptr @__ksymtab_wait_for_key_construction], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @complete_request_key(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.request_key_auth, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @key_reject_and_link(ptr noundef %8, i32 noundef 60, i32 noundef 126, ptr noundef null, ptr noundef %0) #7
  br label %11

10:                                               ; preds = %2
  tail call void @key_revoke(ptr noundef %0) #7
  br label %11

11:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @request_key_and_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.keyring_search_context, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #7
  %12 = getelementptr inbounds %struct.keyring_index_key, ptr %11, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false)
  %13 = tail call i32 @strlen(ptr noundef %1)
  %14 = trunc i32 %13 to i16
  store i16 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.keyring_index_key, ptr %11, i32 0, i32 2
  store ptr %0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_index_key, ptr %11, i32 0, i32 3
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.keyring_index_key, ptr %11, i32 0, i32 4
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 1
  %19 = tail call ptr @llvm.thread.pointer() #7
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 83
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 2
  store ptr @key_default_cmp, ptr %22, align 8
  %23 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 2, i32 1
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 2, i32 3
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 3
  store i32 98, ptr %25, align 8
  %26 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 5
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 7
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds %struct.keyring_search_context, ptr %11, i32 0, i32 8
  store i64 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %8
  %33 = call i32 %30(ptr noundef %22) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = inttoptr i32 %33 to ptr
  br label %292

37:                                               ; preds = %32, %8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %38 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %11) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  %41 = icmp eq ptr %6, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = ptrtoint ptr %38 to i32
  %44 = and i32 %43, -2
  %45 = inttoptr i32 %44 to ptr
  br label %286

46:                                               ; preds = %40
  %47 = load ptr, ptr %20, align 8
  %48 = call i32 @key_task_permission(ptr noundef %38, ptr noundef %47, i32 noundef 5) #7
  %49 = icmp slt i32 %48, 0
  %50 = ptrtoint ptr %38 to i32
  %51 = and i32 %50, -2
  %52 = inttoptr i32 %51 to ptr
  br i1 %49, label %53, label %55

53:                                               ; preds = %46
  call void @key_put(ptr noundef %52) #7
  %54 = inttoptr i32 %48 to ptr
  br label %286

55:                                               ; preds = %46
  %56 = call i32 @key_link(ptr noundef nonnull %6, ptr noundef %52) #7
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %286

58:                                               ; preds = %55
  call void @key_put(ptr noundef %52) #7
  %59 = inttoptr i32 %56 to ptr
  br label %286

60:                                               ; preds = %37
  %61 = icmp eq ptr %38, inttoptr (i32 -11 to ptr)
  br i1 %61, label %62, label %286

62:                                               ; preds = %60
  %63 = icmp eq ptr %3, null
  br i1 %63, label %286, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %15, align 8
  %66 = icmp eq ptr %65, @key_type_keyring
  br i1 %66, label %286, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store ptr %6, ptr %10, align 4
  %69 = icmp eq ptr %6, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #7, !srcloc !10
  %71 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #7, !srcloc !11
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74, !prof !12

74:                                               ; preds = %70
  %75 = add i32 %72, 1
  %76 = or i32 %75, %72
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %179, label %78, !prof !13

78:                                               ; preds = %74, %70
  %79 = phi i32 [ 2, %70 ], [ 1, %74 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef %79) #7
  br label %179

80:                                               ; preds = %67
  %81 = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 15
  %82 = load i8, ptr %81, align 4
  switch i8 %82, label %163 [
    i8 0, label %83
    i8 7, label %83
    i8 1, label %111
    i8 2, label %126
    i8 3, label %141
    i8 5, label %157
    i8 4, label %160
  ]

83:                                               ; preds = %80, %80
  %84 = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 19
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.key, ptr %85, i32 0, i32 3
  call void @down_read(ptr noundef %88) #7
  %89 = getelementptr inbounds %struct.key, ptr %85, i32 0, i32 16
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.key, ptr %85, i32 0, i32 14
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.request_key_auth, ptr %90, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %95
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %97) #7, !srcloc !10
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %97, ptr nonnull %97, i32 1, ptr nonnull elementtype(i32) %97) #7, !srcloc !11
  %101 = extractvalue { i32, i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103, !prof !12

103:                                              ; preds = %99
  %104 = add i32 %101, 1
  %105 = or i32 %104, %101
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %109, label %107, !prof !13

107:                                              ; preds = %103, %99
  %108 = phi i32 [ 2, %99 ], [ 1, %103 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %97, i32 noundef %108) #7
  br label %109

109:                                              ; preds = %107, %103
  call void @up_read(ptr noundef %88) #7
  br label %179

110:                                              ; preds = %95, %87
  call void @up_read(ptr noundef %88) #7
  br label %111

111:                                              ; preds = %110, %83, %80
  %112 = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 18
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %113) #7, !srcloc !10
  %116 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %113, ptr nonnull %113, i32 1, ptr nonnull elementtype(i32) %113) #7, !srcloc !11
  %117 = extractvalue { i32, i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119, !prof !12

119:                                              ; preds = %115
  %120 = add i32 %117, 1
  %121 = or i32 %120, %117
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %125, label %123, !prof !13

123:                                              ; preds = %119, %115
  %124 = phi i32 [ 2, %115 ], [ 1, %119 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %113, i32 noundef %124) #7
  br label %125

125:                                              ; preds = %123, %119
  store ptr %113, ptr %10, align 4
  br label %167

126:                                              ; preds = %111, %80
  %127 = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 17
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %141, label %130

130:                                              ; preds = %126
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %128) #7, !srcloc !10
  %131 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %128, ptr nonnull %128, i32 1, ptr nonnull elementtype(i32) %128) #7, !srcloc !11
  %132 = extractvalue { i32, i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134, !prof !12

134:                                              ; preds = %130
  %135 = add i32 %132, 1
  %136 = or i32 %135, %132
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %140, label %138, !prof !13

138:                                              ; preds = %134, %130
  %139 = phi i32 [ 2, %130 ], [ 1, %134 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %128, i32 noundef %139) #7
  br label %140

140:                                              ; preds = %138, %134
  store ptr %128, ptr %10, align 4
  br label %167

141:                                              ; preds = %126, %80
  %142 = getelementptr inbounds %struct.cred, ptr %68, i32 0, i32 16
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %156, label %145

145:                                              ; preds = %141
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %143) #7, !srcloc !10
  %146 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %143, ptr nonnull %143, i32 1, ptr nonnull elementtype(i32) %143) #7, !srcloc !11
  %147 = extractvalue { i32, i32, i32 } %146, 0
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149, !prof !12

149:                                              ; preds = %145
  %150 = add i32 %147, 1
  %151 = or i32 %150, %147
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %155, label %153, !prof !13

153:                                              ; preds = %149, %145
  %154 = phi i32 [ 2, %145 ], [ 1, %149 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %143, i32 noundef %154) #7
  br label %155

155:                                              ; preds = %153, %149
  store ptr %143, ptr %10, align 4
  br label %167

156:                                              ; preds = %141
  store ptr null, ptr %10, align 4
  br label %157

157:                                              ; preds = %156, %80
  %158 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %10) #7
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %177, label %164

160:                                              ; preds = %80
  %161 = call i32 @look_up_user_keyrings(ptr noundef nonnull %10, ptr noundef null) #7
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %177, label %164

163:                                              ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/request_key.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #7, !srcloc !14
  unreachable

164:                                              ; preds = %160, %157
  %165 = load ptr, ptr %10, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %179, label %167

167:                                              ; preds = %164, %155, %140, %125
  %168 = phi ptr [ %165, %164 ], [ %113, %125 ], [ %128, %140 ], [ %143, %155 ]
  %169 = ptrtoint ptr %168 to i32
  %170 = or i32 %169, 1
  %171 = inttoptr i32 %170 to ptr
  %172 = load ptr, ptr %20, align 8
  %173 = call i32 @key_task_permission(ptr noundef nonnull %171, ptr noundef %172, i32 noundef 3) #7
  %174 = icmp eq i32 %173, 0
  %175 = load ptr, ptr %10, align 4
  br i1 %174, label %179, label %176

176:                                              ; preds = %167
  call void @key_put(ptr noundef %175) #7
  br label %177

177:                                              ; preds = %176, %160, %157
  %178 = phi i32 [ %173, %176 ], [ %158, %157 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %283

179:                                              ; preds = %167, %164, %109, %78, %74
  %180 = phi ptr [ %175, %167 ], [ %97, %109 ], [ %6, %74 ], [ %6, %78 ], [ null, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  %181 = load ptr, ptr %20, align 8
  %182 = getelementptr inbounds %struct.cred, ptr %181, i32 0, i32 7
  %183 = load i32, ptr %182, align 4
  %184 = insertvalue [1 x i32] poison, i32 %183, 0
  %185 = call ptr @key_user_lookup([1 x i32] %184) #7
  %186 = icmp eq ptr %185, null
  br i1 %186, label %281, label %187

187:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store ptr null, ptr %9, align 4
  %188 = getelementptr inbounds %struct.key_user, ptr %185, i32 0, i32 1
  call void @mutex_lock(ptr noundef %188) #7
  %189 = load ptr, ptr %15, align 8
  %190 = getelementptr inbounds %struct.key_type, ptr %189, i32 0, i32 13
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  %193 = select i1 %192, i32 956366848, i32 989921280
  %194 = icmp eq ptr %189, @key_type_keyring
  br i1 %194, label %199, label %195

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.key_type, ptr %189, i32 0, i32 7
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %195, %187
  %200 = or i32 %193, 67108864
  br label %201

201:                                              ; preds = %199, %195
  %202 = phi i32 [ %200, %199 ], [ %193, %195 ]
  %203 = load ptr, ptr %17, align 8
  %204 = load ptr, ptr %18, align 4
  %205 = getelementptr inbounds %struct.cred, ptr %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.cred, ptr %204, i32 0, i32 8
  %207 = load i32, ptr %205, align 4
  %208 = insertvalue [1 x i32] undef, i32 %207, 0
  %209 = load i32, ptr %206, align 4
  %210 = insertvalue [1 x i32] undef, i32 %209, 0
  %211 = call ptr @key_alloc(ptr noundef %189, ptr noundef %203, [1 x i32] %208, [1 x i32] %210, ptr noundef %204, i32 noundef %202, i32 noundef %7, ptr noundef null) #7
  %212 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  br i1 %212, label %248, label %213

213:                                              ; preds = %201
  %214 = getelementptr inbounds %struct.key, ptr %211, i32 0, i32 14
  call void @_set_bit(i32 noundef 3, ptr noundef %214) #7
  %215 = icmp eq ptr %180, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = call i32 @__key_link_lock(ptr noundef nonnull %180, ptr noundef nonnull %11) #7
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %246, label %219

219:                                              ; preds = %216
  %220 = call i32 @__key_link_begin(ptr noundef nonnull %180, ptr noundef nonnull %11, ptr noundef nonnull %9) #7
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %244, label %222

222:                                              ; preds = %219, %213
  call void @mutex_lock(ptr noundef nonnull @key_construction_mutex) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %223 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %11) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %224 = icmp ugt ptr %223, inttoptr (i32 -4096 to ptr)
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  br i1 %215, label %228, label %226

226:                                              ; preds = %225
  call void @__key_link(ptr noundef nonnull %180, ptr noundef %211, ptr noundef nonnull %9) #7
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #7
  %227 = load ptr, ptr %9, align 4
  call void @__key_link_end(ptr noundef nonnull %180, ptr noundef nonnull %11, ptr noundef %227) #7
  br label %229

228:                                              ; preds = %225
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #7
  br label %229

229:                                              ; preds = %228, %226
  call void @mutex_unlock(ptr noundef %188) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @key_user_put(ptr noundef nonnull %185) #7
  br label %252

230:                                              ; preds = %222
  call void @key_put(ptr noundef %211) #7
  call void @mutex_unlock(ptr noundef nonnull @key_construction_mutex) #7
  %231 = ptrtoint ptr %223 to i32
  %232 = and i32 %231, -2
  %233 = inttoptr i32 %232 to ptr
  br i1 %215, label %242, label %234

234:                                              ; preds = %230
  %235 = call i32 @__key_link_check_live_key(ptr noundef nonnull %180, ptr noundef %233) #7
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  call void @__key_link(ptr noundef nonnull %180, ptr noundef %233, ptr noundef nonnull %9) #7
  %238 = load ptr, ptr %9, align 4
  call void @__key_link_end(ptr noundef nonnull %180, ptr noundef nonnull %11, ptr noundef %238) #7
  br label %242

239:                                              ; preds = %234
  %240 = load ptr, ptr %9, align 4
  call void @__key_link_end(ptr noundef nonnull %180, ptr noundef nonnull %11, ptr noundef %240) #7
  %241 = icmp slt i32 %235, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %239, %237, %230
  call void @mutex_unlock(ptr noundef %188) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @key_user_put(ptr noundef nonnull %185) #7
  br label %279

243:                                              ; preds = %239
  call void @mutex_unlock(ptr noundef %188) #7
  call void @key_put(ptr noundef %233) #7
  br label %250

244:                                              ; preds = %219
  %245 = load ptr, ptr %9, align 4
  call void @__key_link_end(ptr noundef nonnull %180, ptr noundef nonnull %11, ptr noundef %245) #7
  br label %246

246:                                              ; preds = %244, %216
  %247 = phi i32 [ %217, %216 ], [ %220, %244 ]
  call void @mutex_unlock(ptr noundef %188) #7
  call void @key_put(ptr noundef %211) #7
  br label %250

248:                                              ; preds = %201
  call void @mutex_unlock(ptr noundef %188) #7
  %249 = ptrtoint ptr %211 to i32
  br label %250

250:                                              ; preds = %248, %246, %243
  %251 = phi i32 [ %249, %248 ], [ %247, %246 ], [ %235, %243 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @key_user_put(ptr noundef nonnull %185) #7
  switch i32 %251, label %281 [
    i32 0, label %252
    i32 -115, label %279
  ]

252:                                              ; preds = %250, %229
  %253 = phi ptr [ %211, %229 ], [ null, %250 ]
  %254 = call ptr @request_key_auth_new(ptr noundef %253, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %180) #7
  %255 = icmp ugt ptr %254, inttoptr (i32 -4096 to ptr)
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = ptrtoint ptr %254 to i32
  br label %274

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.key, ptr %253, i32 0, i32 15, i32 0, i32 2
  %260 = load ptr, ptr %259, align 8
  %261 = getelementptr inbounds %struct.key_type, ptr %260, i32 0, i32 14
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  %264 = select i1 %263, ptr @call_sbin_request_key, ptr %262
  %265 = call i32 %264(ptr noundef %254, ptr noundef %5) #7
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %258
  %268 = getelementptr inbounds %struct.key, ptr %254, i32 0, i32 14
  %269 = load volatile i32, ptr %268, align 4
  %270 = and i32 %269, 32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %273, !prof !12

272:                                              ; preds = %267
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 9, ptr noundef null) #7
  br label %273

273:                                              ; preds = %272, %267, %258
  call void @key_put(ptr noundef %254) #7
  br label %274

274:                                              ; preds = %273, %256
  %275 = phi i32 [ %257, %256 ], [ %265, %273 ]
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = call i32 @key_reject_and_link(ptr noundef %253, i32 noundef 60, i32 noundef 126, ptr noundef null, ptr noundef null) #7
  call void @key_put(ptr noundef %253) #7
  br label %281

279:                                              ; preds = %274, %250, %242
  %280 = phi ptr [ null, %250 ], [ %253, %274 ], [ %233, %242 ]
  call void @key_put(ptr noundef %180) #7
  br label %286

281:                                              ; preds = %277, %250, %179
  %282 = phi i32 [ %275, %277 ], [ -12, %179 ], [ %251, %250 ]
  call void @key_put(ptr noundef %180) #7
  br label %283

283:                                              ; preds = %281, %177
  %284 = phi i32 [ %178, %177 ], [ %282, %281 ]
  %285 = inttoptr i32 %284 to ptr
  br label %286

286:                                              ; preds = %283, %279, %64, %62, %60, %58, %55, %53, %42
  %287 = phi ptr [ inttoptr (i32 -126 to ptr), %62 ], [ %54, %53 ], [ %59, %58 ], [ %45, %42 ], [ %52, %55 ], [ %38, %60 ], [ %285, %283 ], [ %280, %279 ], [ inttoptr (i32 -1 to ptr), %64 ]
  %288 = getelementptr inbounds %struct.key_type, ptr %0, i32 0, i32 9
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %286
  call void %289(ptr noundef %22) #7
  br label %292

292:                                              ; preds = %291, %286, %35
  %293 = phi ptr [ %36, %35 ], [ %287, %291 ], [ %287, %286 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #7
  ret ptr %293
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @key_default_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_process_keyrings_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_key_construction(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 14
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = select i1 %1, i32 1, i32 2
  %9 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %3, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef %8) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13
  %13 = load volatile i16, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %14 = icmp slt i16 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = sext i16 %13 to i32
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 @key_validate(ptr noundef %0) #7
  br label %19

19:                                               ; preds = %17, %15, %7
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], [ -512, %7 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @request_key_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @strlen(ptr noundef nonnull %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %10 = tail call ptr @request_key_and_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %9, ptr noundef null, ptr noundef null, i32 noundef 0)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 14
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %13, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17, %12
  %21 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 13
  %22 = load volatile i16, ptr %21, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %23 = icmp slt i16 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = sext i16 %22 to i32
  br label %29

26:                                               ; preds = %20
  %27 = tail call i32 @key_validate(ptr noundef %10) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %24, %17
  %30 = phi i32 [ %27, %26 ], [ -512, %17 ], [ %25, %24 ]
  tail call void @key_put(ptr noundef %10) #7
  %31 = inttoptr i32 %30 to ptr
  br label %32

32:                                               ; preds = %29, %26, %8
  %33 = phi ptr [ %31, %29 ], [ %10, %26 ], [ %10, %8 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @request_key_with_auxdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = tail call ptr @request_key_and_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef null, i32 noundef 0)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %29, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 14
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %10, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %9
  %18 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 13
  %19 = load volatile i16, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %20 = icmp slt i16 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = sext i16 %19 to i32
  br label %26

23:                                               ; preds = %17
  %24 = tail call i32 @key_validate(ptr noundef %7) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %21, %14
  %27 = phi i32 [ %24, %23 ], [ -512, %14 ], [ %22, %21 ]
  tail call void @key_put(ptr noundef %7) #7
  %28 = inttoptr i32 %27 to ptr
  br label %29

29:                                               ; preds = %26, %23, %6
  %30 = phi ptr [ %28, %26 ], [ %7, %23 ], [ %7, %6 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @request_key_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.keyring_search_context, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.keyring_index_key, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %6 = tail call i32 @strlen(ptr noundef %1)
  %7 = trunc i32 %6 to i16
  store i16 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.keyring_index_key, ptr %4, i32 0, i32 2
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.keyring_index_key, ptr %4, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.keyring_index_key, ptr %4, i32 0, i32 4
  store ptr %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 1
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 83
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %11, align 4
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2
  store ptr @key_default_cmp, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2, i32 1
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 3
  store i32 34, ptr %18, align 8
  %19 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 5
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 7
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 8
  store i64 0, ptr %21, align 8
  %22 = call ptr @search_process_keyrings_rcu(ptr noundef nonnull %4) #7
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %24 = ptrtoint ptr %22 to i32
  %25 = and i32 %24, -2
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp eq ptr %22, inttoptr (i32 -11 to ptr)
  %28 = select i1 %27, ptr inttoptr (i32 -126 to ptr), ptr %22
  %29 = select i1 %23, ptr %28, ptr %26
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_reject_and_link(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_user_lookup([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_user_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_user_keyrings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @key_alloc(ptr noundef, ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__key_link_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__key_link_check_live_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_auth_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_sbin_request_key(ptr noundef %0, ptr nocapture noundef readnone %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [9 x ptr], align 4
  %5 = alloca [3 x ptr], align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca [12 x i8], align 1
  %8 = alloca [12 x i8], align 1
  %9 = alloca [3 x [12 x i8]], align 1
  %10 = alloca [20 x i8], align 1
  %11 = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.request_key_auth, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %8, i8 0, i32 12, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(36) %9, i8 0, i32 36, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !16
  %15 = call i32 @look_up_user_keyrings(ptr noundef null, ptr noundef nonnull %3) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %126, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.2, i32 noundef %19)
  %21 = tail call ptr @llvm.thread.pointer() #7
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 83
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 24
  store i32 0, ptr %26, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #7, !srcloc !10
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #7, !srcloc !17
  br label %28

28:                                               ; preds = %25, %17
  %29 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 7
  %30 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 8
  %31 = load i32, ptr %29, align 4
  %32 = insertvalue [1 x i32] undef, i32 %31, 0
  %33 = load i32, ptr %30, align 4
  %34 = insertvalue [1 x i32] undef, i32 %33, 0
  %35 = call ptr @keyring_alloc(ptr noundef nonnull %10, [1 x i32] %32, [1 x i32] %34, ptr noundef %23, i32 noundef 1057161216, i32 noundef 1, ptr noundef null, ptr noundef null) #7
  br i1 %24, label %41, label %36

36:                                               ; preds = %28
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #7, !srcloc !10
  %37 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #7, !srcloc !19
  %38 = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @__put_cred(ptr noundef nonnull %23) #7
  br label %41

41:                                               ; preds = %40, %36, %28
  %42 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = ptrtoint ptr %35 to i32
  br label %122

45:                                               ; preds = %41
  %46 = call i32 @key_link(ptr noundef %35, ptr noundef %0) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %120, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %29, align 4
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, i32 noundef %49)
  %51 = load i32, ptr %30, align 4
  %52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef %51)
  %53 = load i32, ptr %18, align 4
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.3, i32 noundef %53)
  %55 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.key, ptr %56, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %48
  %62 = phi i32 [ %60, %58 ], [ 0, %48 ]
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %9, ptr noundef nonnull @.str.3, i32 noundef %62)
  %64 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 17
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.key, ptr %65, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i32 [ %69, %67 ], [ 0, %61 ]
  %72 = getelementptr inbounds [3 x [12 x i8]], ptr %9, i32 0, i32 1
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %72, ptr noundef nonnull @.str.3, i32 noundef %71)
  %74 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr %3, align 4
  %78 = select i1 %76, ptr %77, ptr %75
  %79 = getelementptr inbounds %struct.key, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds [3 x [12 x i8]], ptr %9, i32 0, i32 2
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %81, ptr noundef nonnull @.str.3, i32 noundef %80)
  store ptr @.str.4, ptr %5, align 4
  %83 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 1
  store ptr @.str.5, ptr %83, align 4
  %84 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 2
  store ptr null, ptr %84, align 4
  store ptr @call_sbin_request_key.request_key, ptr %4, align 4
  %85 = getelementptr inbounds %struct.request_key_auth, ptr %12, i32 0, i32 7
  %86 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 1
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 2
  store ptr %8, ptr %87, align 4
  %88 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 3
  store ptr %6, ptr %88, align 4
  %89 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 4
  store ptr %7, ptr %89, align 4
  %90 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 5
  store ptr %9, ptr %90, align 4
  %91 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 6
  store ptr %72, ptr %91, align 4
  %92 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 7
  store ptr %81, ptr %92, align 4
  %93 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 8
  store ptr null, ptr %93, align 4
  %94 = call ptr @call_usermodehelper_setup(ptr noundef nonnull @call_sbin_request_key.request_key, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 3264, ptr noundef nonnull @umh_keys_init, ptr noundef nonnull @umh_keys_cleanup, ptr noundef %35) #7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %120, label %96

96:                                               ; preds = %70
  %97 = icmp eq ptr %35, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %96
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %35) #7, !srcloc !10
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %35, ptr nonnull %35, i32 1, ptr nonnull elementtype(i32) %35) #7, !srcloc !11
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102, !prof !12

102:                                              ; preds = %98
  %103 = add i32 %100, 1
  %104 = or i32 %103, %100
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %108, label %106, !prof !13

106:                                              ; preds = %102, %98
  %107 = phi i32 [ 2, %98 ], [ 1, %102 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %35, i32 noundef %107) #7
  br label %108

108:                                              ; preds = %106, %102, %96
  %109 = call i32 @call_usermodehelper_exec(ptr noundef nonnull %94, i32 noundef 2) #7
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 14
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = call i32 @key_validate(ptr noundef %14) #7
  %118 = icmp slt i32 %117, 0
  %119 = select i1 %118, i32 -126, i32 0
  br label %120

120:                                              ; preds = %116, %111, %108, %70, %45
  %121 = phi i32 [ %46, %45 ], [ %109, %108 ], [ -126, %111 ], [ %119, %116 ], [ -12, %70 ]
  call void @key_put(ptr noundef %35) #7
  br label %122

122:                                              ; preds = %120, %43
  %123 = phi i32 [ %44, %43 ], [ %121, %120 ]
  %124 = load ptr, ptr %3, align 4
  call void @key_put(ptr noundef %124) #7
  %125 = icmp slt i32 %123, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122, %2
  %127 = phi i32 [ %123, %122 ], [ %15, %2 ]
  %128 = load ptr, ptr %11, align 4
  %129 = getelementptr inbounds %struct.request_key_auth, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 @key_reject_and_link(ptr noundef %130, i32 noundef 60, i32 noundef 126, ptr noundef null, ptr noundef %0) #7
  br label %133

132:                                              ; preds = %122
  call void @key_revoke(ptr noundef %0) #7
  br label %133

133:                                              ; preds = %132, %126
  %134 = phi i32 [ %127, %126 ], [ %123, %132 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @keyring_alloc(ptr noundef, [1 x i32], [1 x i32], ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @umh_keys_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @install_session_keyring_to_cred(ptr noundef %1, ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @umh_keys_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @key_put(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_session_keyring_to_cred(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }

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
!8 = !{i64 2148958715}
!9 = !{i64 2148958932}
!10 = !{i64 542071, i64 2148043637, i64 2148043663, i64 2148043710, i64 2148043732, i64 2148043760, i64 2148043780}
!11 = !{i64 2148108357, i64 2148108389, i64 2148108418, i64 2148108452, i64 2148108483, i64 2148108506}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153650723, i64 2153651215, i64 2153650760, i64 2153650816, i64 2153650850, i64 2153650874, i64 2153650915, i64 2153650936, i64 2153650964, i64 2153650998}
!15 = !{i64 2151670429}
!16 = !{!"auto-init"}
!17 = !{i64 2148106899, i64 2148106925, i64 2148106954, i64 2148106988, i64 2148107019, i64 2148107042}
!18 = !{i64 2148207578}
!19 = !{i64 2148109940, i64 2148109972, i64 2148110001, i64 2148110035, i64 2148110066, i64 2148110089}
!20 = !{i64 2148207781}
