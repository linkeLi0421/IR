; ModuleID = '/llk/IR/fs/lockd/clntproc.c_pt.bc'
source_filename = "../fs/lockd/clntproc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmclnt_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmclnt_proc\22\09\09\09\09\09"
module asm "__kstrtabns_nlmclnt_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_lock_operations = type { ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.123 }
%union.anon.123 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.138, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.138 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.nlmclnt_operations = type { ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.2, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.2 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }

@nlm_cookie = internal global %struct.atomic_t { i32 4660 }, align 4
@__kstrtab_nlmclnt_proc = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmclnt_proc = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmclnt_proc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmclnt_proc to i32), ptr @__kstrtab_nlmclnt_proc, ptr @__kstrtabns_nlmclnt_proc }, section "___ksymtab_gpl+nlmclnt_proc", align 4
@.str = private unnamed_addr constant [44 x i8] c"nlm_alloc_call: failed, waiting for memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"\014lockd: failed to reclaim lock for pid %d (errno %d, status %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%u@%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nlmclnt_release_lockargs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fs/lockd/clntproc.c\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\015lockd: unexpected status NLM_BLOCKED\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\015lockd: unexpected server status %d\0A\00", align 1
@nlmclnt_lock_ops = internal constant %struct.file_lock_operations { ptr @nlmclnt_locks_copy_lock, ptr @nlmclnt_locks_release_private }, align 4
@nsm_local_state = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"\014%s: VFS is out of sync with lock manager!\0A\00", align 1
@__func__.nlmclnt_lock = private unnamed_addr constant [13 x i8] c"nlmclnt_lock\00", align 1
@nlmclnt_unlock_ops = internal constant %struct.rpc_call_ops { ptr @nlmclnt_unlock_prepare, ptr @nlmclnt_unlock_callback, ptr null, ptr @nlmclnt_rpc_release }, align 4
@nlmclnt_cancel_ops = internal constant %struct.rpc_call_ops { ptr null, ptr @nlmclnt_cancel_callback, ptr null, ptr @nlmclnt_rpc_release }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"\015lockd: weird return %d for CANCEL call\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\014lockd: unexpected unlock status: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\014lockd: spurious grace period reject?!\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"lockd: unexpected unlock status: %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nlmclnt_proc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmclnt_next_cookie(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nlm_cookie) #10, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #10, !srcloc !10
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  store i32 %3, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nlm_cookie, ptr %0, i32 0, i32 1
  store i32 4, ptr %4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_proc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.rpc_task_setup, align 4
  %6 = alloca %struct.rpc_message, align 4
  %7 = alloca %struct.rpc_task_setup, align 4
  %8 = alloca %struct.rpc_message, align 4
  %9 = alloca %struct.rpc_task_setup, align 4
  %10 = alloca %struct.rpc_message, align 4
  %11 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @nlm_alloc_call(ptr noundef %0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %503, label %15

15:                                               ; preds = %4
  %16 = icmp eq ptr %12, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void %18(ptr noundef %3) #10
  br label %21

21:                                               ; preds = %20, %17, %15
  %22 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 19
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 19
  br label %27

27:                                               ; preds = %31, %21
  %28 = phi ptr [ %26, %21 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nlm_lockowner, ptr %29, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %24
  br i1 %34, label %35, label %27

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nlm_lockowner, ptr %29, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #10, !srcloc !9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #10, !srcloc !12
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !13

40:                                               ; preds = %35
  %41 = add i32 %38, 1
  %42 = or i32 %41, %38
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %46, label %44, !prof !14

44:                                               ; preds = %40, %35
  %45 = phi i32 [ 2, %35 ], [ 1, %40 ]
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef %45) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = icmp eq ptr %29, null
  br i1 %47, label %48, label %100

48:                                               ; preds = %46, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %49 = load i16, ptr %25, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 24) #11
  tail call void @_raw_spin_lock(ptr noundef %25) #10
  br label %53

53:                                               ; preds = %57, %48
  %54 = phi ptr [ %26, %48 ], [ %55, %57 ]
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %26
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nlm_lockowner, ptr %55, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %24
  br i1 %60, label %61, label %53

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nlm_lockowner, ptr %55, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #10, !srcloc !9
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #10, !srcloc !12
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !13

66:                                               ; preds = %61
  %67 = add i32 %64, 1
  %68 = or i32 %67, %64
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %72, label %70, !prof !14

70:                                               ; preds = %66, %61
  %71 = phi i32 [ 2, %61 ], [ 1, %66 ]
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef %71) #10
  br label %72

72:                                               ; preds = %70, %66, %53
  %73 = phi ptr [ %55, %66 ], [ %55, %70 ], [ null, %53 ]
  %74 = icmp eq ptr %73, null
  %75 = icmp ne ptr %52, null
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.nlm_lockowner, ptr %52, i32 0, i32 1
  store volatile i32 1, ptr %78, align 8
  %79 = getelementptr inbounds %struct.nlm_lockowner, ptr %52, i32 0, i32 3
  store ptr %24, ptr %79, align 8
  %80 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 14
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %89, %77
  %83 = phi i32 [ %81, %77 ], [ %84, %89 ]
  %84 = add i32 %83, 1
  store i32 %84, ptr %80, align 4
  br label %85

85:                                               ; preds = %89, %82
  %86 = phi ptr [ %26, %82 ], [ %87, %89 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %26
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.nlm_lockowner, ptr %87, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, %83
  br i1 %92, label %82, label %85

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.nlm_lockowner, ptr %52, i32 0, i32 4
  store i32 %83, ptr %94, align 4
  %95 = tail call ptr @nlm_get_host(ptr noundef %0) #10
  %96 = getelementptr inbounds %struct.nlm_lockowner, ptr %52, i32 0, i32 2
  store ptr %95, ptr %96, align 4
  %97 = load ptr, ptr %26, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %52, ptr %98, align 4
  store ptr %97, ptr %52, align 8
  %99 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %26, ptr %99, align 4
  store volatile ptr %52, ptr %26, align 4
  br label %100

100:                                              ; preds = %93, %72, %46
  %101 = phi ptr [ %52, %93 ], [ %73, %72 ], [ %29, %46 ]
  %102 = phi ptr [ null, %93 ], [ %52, %72 ], [ null, %46 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %103 = load i16, ptr %25, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  tail call void @kfree(ptr noundef %102) #10
  %105 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 19, i32 0, i32 1
  store ptr %101, ptr %105, align 4
  %106 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 19, i32 0, i32 2
  store volatile ptr %106, ptr %106, align 4
  %107 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 19, i32 0, i32 2, i32 1
  store ptr %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 17
  store ptr @nlmclnt_lock_ops, ptr %108, align 4
  %109 = icmp eq ptr %101, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  tail call void @nlmclnt_release_call(ptr noundef nonnull %13)
  br label %503

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3
  %113 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1
  %114 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 2
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nlm_host, ptr %115, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.rpc_clnt, ptr %117, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nlm_cookie) #10, !srcloc !9
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #10, !srcloc !10
  %120 = extractvalue { i32, i32 } %119, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  store i32 %120, ptr %112, align 4
  %121 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 0, i32 1
  store i32 4, ptr %121, align 4
  %122 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 2
  %123 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.file, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr i8, ptr %126, i32 -288
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(130) %122, ptr noundef align 2 dereferenceable(130) %127, i32 130, i1 false) #10
  store ptr %118, ptr %113, align 8
  %128 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 7
  %129 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 3
  %130 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 3, i32 1
  store ptr %128, ptr %130, align 4
  %131 = load ptr, ptr %105, align 4
  %132 = getelementptr inbounds %struct.nlm_lockowner, ptr %131, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %128, i32 noundef 74, ptr noundef nonnull @.str.2, i32 noundef %133, ptr noundef %118) #10
  store i32 %134, ptr %129, align 4
  %135 = load ptr, ptr %105, align 4
  %136 = getelementptr inbounds %struct.nlm_lockowner, ptr %135, i32 0, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 4
  store i32 %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 12
  %140 = load i64, ptr %139, align 8
  %141 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 5, i32 12
  store i64 %140, ptr %141, align 8
  %142 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 13
  %143 = load i64, ptr %142, align 8
  %144 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 5, i32 13
  store i64 %143, ptr %144, align 8
  %145 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 7
  %146 = load i8, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 1, i32 5, i32 7
  store i8 %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 8
  store ptr %3, ptr %148, align 4
  %149 = icmp eq i32 %1, 7
  %150 = icmp eq i32 %1, 14
  switch i32 %1, label %498 [
    i32 14, label %151
    i32 13, label %151
    i32 7, label %151
    i32 6, label %151
    i32 12, label %454
    i32 5, label %454
  ]

151:                                              ; preds = %111, %111, %111, %111
  %152 = load i8, ptr %145, align 4
  %153 = icmp eq i8 %152, 2
  br i1 %153, label %384, label %154

154:                                              ; preds = %151
  %155 = or i1 %149, %150
  %156 = zext i1 %155 to i32
  %157 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 2
  store i32 %156, ptr %157, align 8
  %158 = load ptr, ptr %123, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.file, ptr %158, i32 0, i32 15
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.nfs_open_context, ptr %162, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %160, %154
  %168 = phi ptr [ %166, %164 ], [ null, %154 ], [ null, %160 ]
  %169 = load ptr, ptr %114, align 8
  %170 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %171 = load i32, ptr %170, align 8
  %172 = tail call i32 @nsm_monitor(ptr noundef %169) #10
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %353, label %174

174:                                              ; preds = %167
  %175 = load i32, ptr @nsm_local_state, align 4
  %176 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 3, i32 4
  store i32 %175, ptr %176, align 8
  %177 = load i32, ptr %170, align 8
  %178 = or i32 %177, 8
  store i32 %178, ptr %170, align 8
  %179 = load ptr, ptr %123, align 4
  %180 = getelementptr inbounds %struct.file, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 8
  %182 = tail call i32 @locks_lock_inode_wait(ptr noundef %181, ptr noundef %2) #10
  %183 = and i32 %171, 255
  store i32 %183, ptr %170, align 8
  %184 = icmp slt i32 %182, 0
  br i1 %184, label %353, label %185

185:                                              ; preds = %174
  %186 = tail call ptr @nlmclnt_prepare_block(ptr noundef %169, ptr noundef %2) #10
  %187 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 1
  %188 = getelementptr inbounds %struct.nlm_host, ptr %169, i32 0, i32 12
  %189 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 1
  %190 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 2
  %191 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 3
  %192 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 4
  %193 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 5
  %194 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 6
  %195 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 8
  %196 = getelementptr inbounds %struct.rpc_task_setup, ptr %9, i32 0, i32 1
  %197 = getelementptr inbounds %struct.nlm_host, ptr %169, i32 0, i32 11
  br label %198

198:                                              ; preds = %317, %185
  store i32 50331648, ptr %187, align 4
  %199 = load i32, ptr %188, align 4
  store i32 %199, ptr %22, align 4
  %200 = call fastcc i32 @nlmclnt_call(ptr noundef %168, ptr noundef %13, i32 noundef 2) #10
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %211, %198
  %203 = phi i32 [ %213, %211 ], [ %200, %198 ]
  %204 = load i32, ptr %187, align 4
  switch i32 %204, label %306 [
    i32 67108864, label %211
    i32 50331648, label %205
  ]

205:                                              ; preds = %202
  %206 = call i32 @nlmclnt_block(ptr noundef %186, ptr noundef %13, i32 noundef 3000) #10
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %205
  %209 = load i32, ptr %187, align 4
  %210 = icmp eq i32 %209, 50331648
  br i1 %210, label %211, label %306

211:                                              ; preds = %208, %202
  %212 = load i32, ptr %188, align 4
  store i32 %212, ptr %22, align 4
  %213 = call fastcc i32 @nlmclnt_call(ptr noundef %168, ptr noundef %13, i32 noundef 2) #10
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %202

215:                                              ; preds = %211, %205, %198
  %216 = phi i32 [ %200, %198 ], [ %213, %211 ], [ %206, %205 ]
  %217 = load i32, ptr %187, align 4
  %218 = icmp eq i32 %217, 50331648
  br i1 %218, label %219, label %309

219:                                              ; preds = %215
  %220 = load i32, ptr %157, align 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %355, label %222

222:                                              ; preds = %219
  %223 = call ptr @nlm_alloc_call(ptr noundef %169) #10
  %224 = icmp eq ptr %223, null
  br i1 %224, label %306, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 1
  store i32 1, ptr %226, align 4
  %227 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3
  %228 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1
  %229 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 2
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds %struct.nlm_host, ptr %230, i32 0, i32 5
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.rpc_clnt, ptr %232, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nlm_cookie) #10, !srcloc !9
  %234 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #10, !srcloc !10
  %235 = extractvalue { i32, i32 } %234, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  store i32 %235, ptr %227, align 4
  %236 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 0, i32 1
  store i32 4, ptr %236, align 4
  %237 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 2
  %238 = load ptr, ptr %123, align 4
  %239 = getelementptr inbounds %struct.file, ptr %238, i32 0, i32 2
  %240 = load ptr, ptr %239, align 8
  %241 = getelementptr i8, ptr %240, i32 -288
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(130) %237, ptr noundef align 2 dereferenceable(130) %241, i32 130, i1 false) #10
  store ptr %233, ptr %228, align 8
  %242 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 7
  %243 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 3
  %244 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 3, i32 1
  store ptr %242, ptr %244, align 4
  %245 = load ptr, ptr %105, align 4
  %246 = getelementptr inbounds %struct.nlm_lockowner, ptr %245, i32 0, i32 4
  %247 = load i32, ptr %246, align 4
  %248 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %242, i32 noundef 74, ptr noundef nonnull @.str.2, i32 noundef %247, ptr noundef %233) #10
  store i32 %248, ptr %243, align 4
  %249 = load ptr, ptr %105, align 4
  %250 = getelementptr inbounds %struct.nlm_lockowner, ptr %249, i32 0, i32 4
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 4
  store i32 %251, ptr %252, align 4
  %253 = load i64, ptr %139, align 8
  %254 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 5, i32 12
  store i64 %253, ptr %254, align 8
  %255 = load i64, ptr %142, align 8
  %256 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 5, i32 13
  store i64 %255, ptr %256, align 8
  %257 = load i8, ptr %145, align 4
  %258 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 1, i32 5, i32 7
  store i8 %257, ptr %258, align 4
  %259 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 3, i32 2
  store i32 %220, ptr %259, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %223) #10, !srcloc !9
  %260 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %223, ptr nonnull %223, i32 1, ptr nonnull elementtype(i32) %223) #10, !srcloc !12
  %261 = extractvalue { i32, i32, i32 } %260, 0
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263, !prof !13

263:                                              ; preds = %225
  %264 = add i32 %261, 1
  %265 = or i32 %264, %261
  %266 = icmp sgt i32 %265, -1
  br i1 %266, label %269, label %267, !prof !14

267:                                              ; preds = %263, %225
  %268 = phi i32 [ 2, %225 ], [ 1, %263 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %223, i32 noundef %268) #10
  br label %269

269:                                              ; preds = %267, %263
  %270 = load ptr, ptr %123, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %279, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.file, ptr %270, i32 0, i32 15
  %274 = load ptr, ptr %273, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.nfs_open_context, ptr %274, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  br label %279

279:                                              ; preds = %276, %272, %269
  %280 = phi ptr [ %278, %276 ], [ null, %269 ], [ null, %272 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4
  store ptr %227, ptr %189, align 4
  %281 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 4
  store ptr %281, ptr %190, align 4
  store ptr %280, ptr %191, align 4
  %282 = load ptr, ptr %229, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %9, i8 0, i64 36, i1 false) #10
  store ptr %10, ptr %192, align 4
  store ptr @nlmclnt_cancel_ops, ptr %193, align 4
  store ptr %223, ptr %194, align 4
  store i16 1, ptr %195, align 4
  %283 = call ptr @nlm_bind_host(ptr noundef %282) #10
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %279
  call void @nlmclnt_release_call(ptr noundef nonnull %223) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #10
  br label %292

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.rpc_clnt, ptr %283, i32 0, i32 7
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr %struct.rpc_procinfo, ptr %288, i32 3
  store ptr %289, ptr %10, align 4
  store ptr %283, ptr %196, align 4
  %290 = call ptr @rpc_run_task(ptr noundef nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #10
  %291 = icmp ugt ptr %290, inttoptr (i32 -4096 to ptr)
  br i1 %291, label %292, label %295

292:                                              ; preds = %286, %285
  %293 = phi ptr [ inttoptr (i32 -37 to ptr), %285 ], [ %290, %286 ]
  %294 = ptrtoint ptr %293 to i32
  br label %297

295:                                              ; preds = %286
  %296 = call i32 @__rpc_wait_for_completion_task(ptr noundef %290, ptr noundef null) #10
  call void @rpc_put_task(ptr noundef %290) #10
  br label %297

297:                                              ; preds = %295, %292
  %298 = phi i32 [ %294, %292 ], [ %296, %295 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.nlm_rqst, ptr %223, i32 0, i32 4, i32 1
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 16777216
  br i1 %303, label %304, label %305

304:                                              ; preds = %300, %297
  call void @nlmclnt_release_call(ptr noundef nonnull %223) #10
  br label %306

305:                                              ; preds = %300
  call void @nlmclnt_release_call(ptr noundef nonnull %223) #10
  br label %351

306:                                              ; preds = %304, %222, %208, %202
  %307 = phi i32 [ %216, %304 ], [ %216, %222 ], [ %206, %208 ], [ %203, %202 ]
  %308 = load i32, ptr %187, align 4
  br label %309

309:                                              ; preds = %306, %215
  %310 = phi i32 [ %308, %306 ], [ %217, %215 ]
  %311 = phi i32 [ %307, %306 ], [ %216, %215 ]
  %312 = icmp eq i32 %310, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %309
  call void @down_read(ptr noundef %197) #10
  %314 = load i32, ptr %22, align 4
  %315 = load i32, ptr %188, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void @up_read(ptr noundef %197) #10
  br label %198

318:                                              ; preds = %313
  %319 = load i32, ptr %170, align 8
  %320 = or i32 %319, 128
  store i32 %320, ptr %170, align 8
  %321 = load ptr, ptr %123, align 4
  %322 = getelementptr inbounds %struct.file, ptr %321, i32 0, i32 2
  %323 = load ptr, ptr %322, align 8
  %324 = call i32 @locks_lock_inode_wait(ptr noundef %323, ptr noundef %2) #10
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %318
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.nlmclnt_lock) #12
  br label %328

328:                                              ; preds = %326, %318
  call void @up_read(ptr noundef %197) #10
  store i32 %183, ptr %170, align 8
  %329 = load i32, ptr %187, align 4
  br label %332

330:                                              ; preds = %309
  %331 = icmp slt i32 %311, 0
  br i1 %331, label %355, label %332

332:                                              ; preds = %330, %328
  %333 = phi i32 [ %329, %328 ], [ %310, %330 ]
  %334 = icmp ne i32 %333, 16777216
  %335 = and i32 %171, 128
  %336 = icmp eq i32 %335, 0
  %337 = select i1 %334, i1 true, i1 %336
  br i1 %337, label %338, label %351

338:                                              ; preds = %332
  %339 = call i32 @llvm.bswap.i32(i32 %333) #10
  switch i32 %339, label %349 [
    i32 0, label %351
    i32 1, label %340
    i32 2, label %341
    i32 4, label %341
    i32 3, label %342
    i32 5, label %344
    i32 6, label %345
    i32 7, label %346
    i32 8, label %347
    i32 9, label %348
  ]

340:                                              ; preds = %338
  br label %351

341:                                              ; preds = %338, %338
  br label %351

342:                                              ; preds = %338
  %343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %351

344:                                              ; preds = %338
  br label %351

345:                                              ; preds = %338
  br label %351

346:                                              ; preds = %338
  br label %351

347:                                              ; preds = %338
  br label %351

348:                                              ; preds = %338
  br label %351

349:                                              ; preds = %338
  %350 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %339) #12
  br label %351

351:                                              ; preds = %349, %348, %347, %346, %345, %344, %342, %341, %340, %338, %332, %305
  %352 = phi i32 [ %216, %305 ], [ -37, %332 ], [ -37, %349 ], [ -37, %348 ], [ -75, %347 ], [ -116, %346 ], [ -30, %345 ], [ -35, %344 ], [ -37, %342 ], [ -37, %341 ], [ -11, %340 ], [ %339, %338 ]
  call void @nlmclnt_finish_block(ptr noundef %186) #10
  br label %353

353:                                              ; preds = %351, %174, %167
  %354 = phi i32 [ -37, %167 ], [ %182, %174 ], [ %352, %351 ]
  call void @nlmclnt_release_call(ptr noundef %13) #10
  br label %498

355:                                              ; preds = %330, %219
  %356 = phi i32 [ %311, %330 ], [ %216, %219 ]
  call void @nlmclnt_finish_block(ptr noundef %186) #10
  %357 = load i8, ptr %145, align 4
  store i8 2, ptr %145, align 4
  call void @down_read(ptr noundef %197) #10
  %358 = load ptr, ptr %123, align 4
  %359 = getelementptr inbounds %struct.file, ptr %358, i32 0, i32 2
  %360 = load ptr, ptr %359, align 8
  %361 = call i32 @locks_lock_inode_wait(ptr noundef %360, ptr noundef %2) #10
  call void @up_read(ptr noundef %197) #10
  store i8 %357, ptr %145, align 4
  store i32 %183, ptr %170, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %362 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  store i32 0, ptr %8, align 4
  store ptr %112, ptr %362, align 4
  %363 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  %364 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4
  store ptr %364, ptr %363, align 4
  %365 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 3
  store ptr %168, ptr %365, align 4
  %366 = load ptr, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #10
  %367 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i64 36, i1 false) #10
  store ptr %8, ptr %367, align 4
  %368 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 5
  store ptr @nlmclnt_unlock_ops, ptr %368, align 4
  %369 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 6
  store ptr %13, ptr %369, align 4
  %370 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 8
  store i16 1, ptr %370, align 4
  %371 = call ptr @nlm_bind_host(ptr noundef %366) #10
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %355
  call void @nlmclnt_release_call(ptr noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #10
  br label %383

374:                                              ; preds = %355
  %375 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 1
  %376 = getelementptr inbounds %struct.rpc_clnt, ptr %371, i32 0, i32 7
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr %struct.rpc_procinfo, ptr %377, i32 4
  store ptr %378, ptr %8, align 4
  store ptr %371, ptr %375, align 4
  %379 = call ptr @rpc_run_task(ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #10
  %380 = icmp ugt ptr %379, inttoptr (i32 -4096 to ptr)
  br i1 %380, label %383, label %381

381:                                              ; preds = %374
  %382 = call i32 @__rpc_wait_for_completion_task(ptr noundef %379, ptr noundef null) #10
  call void @rpc_put_task(ptr noundef %379) #10
  br label %383

383:                                              ; preds = %381, %374, %373
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  br label %498

384:                                              ; preds = %151
  %385 = load ptr, ptr %114, align 8
  %386 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 6
  %387 = load i32, ptr %386, align 8
  %388 = or i32 %387, 16
  store i32 %388, ptr %386, align 8
  %389 = getelementptr inbounds %struct.nlm_host, ptr %385, i32 0, i32 11
  tail call void @down_read(ptr noundef %389) #10
  %390 = load ptr, ptr %123, align 4
  %391 = getelementptr inbounds %struct.file, ptr %390, i32 0, i32 2
  %392 = load ptr, ptr %391, align 8
  %393 = tail call i32 @locks_lock_inode_wait(ptr noundef %392, ptr noundef %2) #10
  tail call void @up_read(ptr noundef %389) #10
  %394 = and i32 %387, 255
  store i32 %394, ptr %386, align 8
  %395 = icmp eq i32 %393, -2
  br i1 %395, label %452, label %396

396:                                              ; preds = %384
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %397 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !12
  %398 = extractvalue { i32, i32, i32 } %397, 0
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %404, label %400, !prof !13

400:                                              ; preds = %396
  %401 = add i32 %398, 1
  %402 = or i32 %401, %398
  %403 = icmp sgt i32 %402, -1
  br i1 %403, label %406, label %404, !prof !14

404:                                              ; preds = %400, %396
  %405 = phi i32 [ 2, %396 ], [ 1, %400 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %405) #10
  br label %406

406:                                              ; preds = %404, %400
  %407 = load ptr, ptr %123, align 4
  %408 = icmp eq ptr %407, null
  br i1 %408, label %416, label %409

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.file, ptr %407, i32 0, i32 15
  %411 = load ptr, ptr %410, align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %416, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.nfs_open_context, ptr %411, i32 0, i32 3
  %415 = load ptr, ptr %414, align 4
  br label %416

416:                                              ; preds = %413, %409, %406
  %417 = phi ptr [ %415, %413 ], [ null, %406 ], [ null, %409 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %418 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 1
  store i32 0, ptr %6, align 4
  store ptr %112, ptr %418, align 4
  %419 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 2
  %420 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4
  store ptr %420, ptr %419, align 4
  %421 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 3
  store ptr %417, ptr %421, align 4
  %422 = load ptr, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #10
  %423 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false) #10
  store ptr %6, ptr %423, align 4
  %424 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 5
  store ptr @nlmclnt_unlock_ops, ptr %424, align 4
  %425 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 6
  store ptr %13, ptr %425, align 4
  %426 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 8
  store i16 1, ptr %426, align 4
  %427 = call ptr @nlm_bind_host(ptr noundef %422) #10
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %430

429:                                              ; preds = %416
  call void @nlmclnt_release_call(ptr noundef %13) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #10
  br label %437

430:                                              ; preds = %416
  %431 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 1
  %432 = getelementptr inbounds %struct.rpc_clnt, ptr %427, i32 0, i32 7
  %433 = load ptr, ptr %432, align 4
  %434 = getelementptr %struct.rpc_procinfo, ptr %433, i32 4
  store ptr %434, ptr %6, align 4
  store ptr %427, ptr %431, align 4
  %435 = call ptr @rpc_run_task(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #10
  %436 = icmp ugt ptr %435, inttoptr (i32 -4096 to ptr)
  br i1 %436, label %437, label %440

437:                                              ; preds = %430, %429
  %438 = phi ptr [ inttoptr (i32 -37 to ptr), %429 ], [ %435, %430 ]
  %439 = ptrtoint ptr %438 to i32
  br label %442

440:                                              ; preds = %430
  %441 = call i32 @__rpc_wait_for_completion_task(ptr noundef %435, ptr noundef null) #10
  call void @rpc_put_task(ptr noundef %435) #10
  br label %442

442:                                              ; preds = %440, %437
  %443 = phi i32 [ %439, %437 ], [ %441, %440 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %452, label %445

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 1
  %447 = load i32, ptr %446, align 4
  switch i32 %447, label %448 [
    i32 0, label %452
    i32 33554432, label %451
  ]

448:                                              ; preds = %445
  %449 = call i32 @llvm.bswap.i32(i32 %447) #10
  %450 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %449) #12
  br label %451

451:                                              ; preds = %448, %445
  br label %452

452:                                              ; preds = %451, %445, %442, %384
  %453 = phi i32 [ %443, %442 ], [ %443, %445 ], [ -37, %451 ], [ 0, %384 ]
  call void @nlmclnt_release_call(ptr noundef %13) #10
  br label %498

454:                                              ; preds = %111, %111
  %455 = load ptr, ptr %123, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %464, label %457

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.file, ptr %455, i32 0, i32 15
  %459 = load ptr, ptr %458, align 8
  %460 = icmp eq ptr %459, null
  br i1 %460, label %464, label %461

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.nfs_open_context, ptr %459, i32 0, i32 3
  %463 = load ptr, ptr %462, align 4
  br label %464

464:                                              ; preds = %461, %457, %454
  %465 = phi ptr [ %463, %461 ], [ null, %454 ], [ null, %457 ]
  %466 = tail call fastcc i32 @nlmclnt_call(ptr noundef %465, ptr noundef %13, i32 noundef 1) #10
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %496, label %468

468:                                              ; preds = %464
  %469 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 1
  %470 = load i32, ptr %469, align 4
  switch i32 %470, label %483 [
    i32 0, label %471
    i32 16777216, label %472
  ]

471:                                              ; preds = %468
  store i8 2, ptr %145, align 4
  br label %496

472:                                              ; preds = %468
  %473 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 2, i32 5, i32 12
  %474 = load i64, ptr %473, align 8
  store i64 %474, ptr %139, align 8
  %475 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 2, i32 5, i32 13
  %476 = load i64, ptr %475, align 8
  store i64 %476, ptr %142, align 8
  %477 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 2, i32 5, i32 7
  %478 = load i8, ptr %477, align 4
  store i8 %478, ptr %145, align 4
  %479 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4, i32 2, i32 5, i32 8
  %480 = load i32, ptr %479, align 8
  %481 = sub i32 0, %480
  %482 = getelementptr inbounds %struct.file_lock, ptr %2, i32 0, i32 8
  store i32 %481, ptr %482, align 8
  br label %496

483:                                              ; preds = %468
  %484 = tail call i32 @llvm.bswap.i32(i32 %470) #10
  switch i32 %484, label %494 [
    i32 0, label %496
    i32 1, label %485
    i32 2, label %486
    i32 4, label %486
    i32 3, label %487
    i32 5, label %489
    i32 6, label %490
    i32 7, label %491
    i32 8, label %492
    i32 9, label %493
  ]

485:                                              ; preds = %483
  br label %496

486:                                              ; preds = %483, %483
  br label %496

487:                                              ; preds = %483
  %488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %496

489:                                              ; preds = %483
  br label %496

490:                                              ; preds = %483
  br label %496

491:                                              ; preds = %483
  br label %496

492:                                              ; preds = %483
  br label %496

493:                                              ; preds = %483
  br label %496

494:                                              ; preds = %483
  %495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %484) #12
  br label %496

496:                                              ; preds = %494, %493, %492, %491, %490, %489, %487, %486, %485, %483, %472, %471, %464
  %497 = phi i32 [ %466, %464 ], [ %466, %472 ], [ %466, %471 ], [ -37, %494 ], [ -37, %493 ], [ -75, %492 ], [ -116, %491 ], [ -30, %490 ], [ -35, %489 ], [ -37, %487 ], [ -37, %486 ], [ -11, %485 ], [ %484, %483 ]
  tail call void @nlmclnt_release_call(ptr noundef %13) #10
  br label %498

498:                                              ; preds = %496, %452, %383, %353, %111
  %499 = phi i32 [ %453, %452 ], [ %497, %496 ], [ -22, %111 ], [ %354, %353 ], [ %356, %383 ]
  %500 = load ptr, ptr %108, align 4
  %501 = getelementptr inbounds %struct.file_lock_operations, ptr %500, i32 0, i32 1
  %502 = load ptr, ptr %501, align 4
  call void %502(ptr noundef %2) #10
  store ptr null, ptr %108, align 4
  br label %503

503:                                              ; preds = %498, %110, %4
  %504 = phi i32 [ %499, %498 ], [ -12, %110 ], [ -12, %4 ]
  ret i32 %504
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlm_alloc_call(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #10
  br label %13

7:                                                ; preds = %21, %1
  %8 = phi ptr [ %3, %1 ], [ %25, %21 ]
  store volatile i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nlm_rqst, ptr %8, i32 0, i32 3, i32 1, i32 5
  tail call void @locks_init_lock(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.nlm_rqst, ptr %8, i32 0, i32 4, i32 2, i32 5
  tail call void @locks_init_lock(ptr noundef %10) #10
  %11 = tail call ptr @nlm_get_host(ptr noundef %0) #10
  %12 = getelementptr inbounds %struct.nlm_rqst, ptr %8, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  br label %27

13:                                               ; preds = %21, %5
  %14 = load volatile i32, ptr %6, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27, !prof !14

17:                                               ; preds = %13
  %18 = load volatile i32, ptr %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %23 = tail call i32 @schedule_timeout_interruptible(i32 noundef 500) #10
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 768) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %13, label %7

27:                                               ; preds = %17, %13, %7
  %28 = phi ptr [ %8, %7 ], [ null, %17 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmclnt_release_call(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nlm_host, ptr %3, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !20
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %31, label %11, !prof !14

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %31

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  %13 = icmp eq ptr %5, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.nlmclnt_operations, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void %16(ptr noundef %20) #10
  br label %21

21:                                               ; preds = %18, %14, %12
  %22 = load ptr, ptr %2, align 8
  tail call void @nlmclnt_release_host(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 3, i32 1, i32 5, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %24, null
  %26 = load i1, ptr @nlmclnt_release_lockargs.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !13

29:                                               ; preds = %21
  store i1 true, ptr @nlmclnt_release_lockargs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 147, i32 noundef 9, ptr noundef null) #10
  br label %30

30:                                               ; preds = %29, %21
  tail call void @kfree(ptr noundef %0) #10
  br label %31

31:                                               ; preds = %30, %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_get_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_release_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlm_async_call(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rpc_task_setup, align 4
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 4
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  %13 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false) #10
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 6
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  store i16 1, ptr %16, align 4
  %17 = call ptr @nlm_bind_host(ptr noundef %12) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.rpc_call_ops, ptr %2, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  call void %21(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  br label %29

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.rpc_clnt, ptr %17, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.rpc_procinfo, ptr %25, i32 %1
  store ptr %26, ptr %5, align 4
  store ptr %17, ptr %23, align 4
  %27 = call ptr @rpc_run_task(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %19
  %30 = phi ptr [ inttoptr (i32 -37 to ptr), %19 ], [ %27, %22 ]
  %31 = ptrtoint ptr %30 to i32
  br label %33

32:                                               ; preds = %22
  call void @rpc_put_task(ptr noundef %27) #10
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %34
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlm_async_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rpc_task_setup, align 4
  %5 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 4
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  %12 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false) #10
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 6
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  store i16 1, ptr %15, align 4
  %16 = call ptr @nlm_bind_host(ptr noundef %11) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.rpc_call_ops, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  call void %20(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.rpc_clnt, ptr %16, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.rpc_procinfo, ptr %24, i32 %1
  store ptr %25, ptr %5, align 4
  store ptr %16, ptr %22, align 4
  %26 = call ptr @rpc_run_task(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %18
  %29 = phi ptr [ inttoptr (i32 -37 to ptr), %18 ], [ %26, %21 ]
  %30 = ptrtoint ptr %29 to i32
  br label %32

31:                                               ; preds = %21
  call void @rpc_put_task(ptr noundef %26) #10
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_reclaim(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(768) %2, i8 0, i32 768, i1 false)
  %4 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5
  tail call void @locks_init_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 4, i32 2, i32 5
  tail call void @locks_init_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 2
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3
  %8 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1
  %9 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_clnt, ptr %10, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nlm_cookie) #10, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nlm_cookie, ptr nonnull @nlm_cookie, i32 1, ptr nonnull elementtype(i32) @nlm_cookie) #10, !srcloc !10
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  store i32 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 2
  %16 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 -288
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(130) %15, ptr noundef align 2 dereferenceable(130) %20, i32 130, i1 false) #10
  store ptr %11, ptr %8, align 8
  %21 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 7
  %22 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 3
  %23 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 3, i32 1
  store ptr %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nlm_lockowner, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 74, ptr noundef nonnull @.str.2, i32 noundef %27, ptr noundef %11) #10
  store i32 %28, ptr %22, align 4
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.nlm_lockowner, ptr %29, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 12
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 12
  store i64 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 13
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 13
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 7
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 1, i32 5, i32 7
  store i8 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 3, i32 3
  store i32 1, ptr %42, align 4
  %43 = load ptr, ptr %16, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 15
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nfs_open_context, ptr %47, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45, %3
  %53 = phi ptr [ %51, %49 ], [ null, %3 ], [ null, %45 ]
  %54 = tail call fastcc i32 @nlmclnt_call(ptr noundef %53, ptr noundef %2, i32 noundef 2)
  %55 = icmp sgt i32 %54, -1
  %56 = getelementptr inbounds %struct.nlm_rqst, ptr %2, i32 0, i32 4, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %55, i1 %58, i1 false
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 8
  %62 = load i32, ptr %61, align 8
  %63 = tail call i32 @llvm.bswap.i32(i32 %57)
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %62, i32 noundef %54, i32 noundef %63) #12
  br label %65

65:                                               ; preds = %60, %52
  %66 = phi i32 [ -37, %60 ], [ 0, %52 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmclnt_call(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca %struct.rpc_message, align 4
  %6 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 3
  %9 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %10 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 2
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_message, ptr %5, i32 0, i32 3
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nlm_host, ptr %7, i32 0, i32 9
  %14 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 3, i32 3
  %15 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 4, i32 1
  %16 = getelementptr inbounds %struct.nlm_host, ptr %7, i32 0, i32 10
  %17 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  br label %21

21:                                               ; preds = %86, %3
  %22 = load i8, ptr %13, align 2
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %14, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %25, %21
  %29 = call ptr @nlm_bind_host(ptr noundef %7) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %87, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.rpc_clnt, ptr %29, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.rpc_procinfo, ptr %33, i32 %2
  store ptr %34, ptr %5, align 4
  %35 = call i32 @rpc_call_sync(ptr noundef nonnull %29, ptr noundef nonnull %5, i32 noundef 0) #10
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  switch i32 %35, label %87 [
    i32 -93, label %38
    i32 -111, label %39
    i32 -110, label %39
    i32 -107, label %39
    i32 -512, label %40
  ]

38:                                               ; preds = %37
  br label %87

39:                                               ; preds = %37, %37, %37
  call void @nlm_rebind_host(ptr noundef %7) #10
  br label %87

40:                                               ; preds = %37
  %41 = tail call ptr @llvm.thread.pointer() #10
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %87, !prof !14

45:                                               ; preds = %40
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 -512, i32 -4
  br label %87

50:                                               ; preds = %31
  %51 = load i32, ptr %15, align 4
  %52 = icmp eq i32 %51, 67108864
  %53 = load i32, ptr %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %52, label %55, label %58

55:                                               ; preds = %50
  br i1 %54, label %60, label %56

56:                                               ; preds = %55
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %87

58:                                               ; preds = %50
  br i1 %54, label %59, label %87

59:                                               ; preds = %58
  call void @__wake_up(ptr noundef %16, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %87

60:                                               ; preds = %55, %25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  %61 = tail call ptr @llvm.thread.pointer() #10
  store i32 0, ptr %4, align 4
  store ptr %61, ptr %17, align 4
  store ptr @autoremove_wake_function, ptr %18, align 4
  store ptr %19, ptr %19, align 4
  store ptr %19, ptr %20, align 4
  call void @prepare_to_wait(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #10
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 256
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %85, !prof !14

65:                                               ; preds = %60
  %66 = load volatile i32, ptr %61, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = call i32 @schedule_timeout(i32 noundef 500) #10
  %71 = load volatile i32, ptr @system_freezing_cnt, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73, !prof !14

73:                                               ; preds = %69
  %74 = call zeroext i1 @freezing_slow_path(ptr noundef %61) #10
  br i1 %74, label %75, label %77, !prof !13

75:                                               ; preds = %73
  %76 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #10
  br label %77

77:                                               ; preds = %75, %73, %69
  %78 = load volatile i32, ptr %61, align 4
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85, !prof !14

81:                                               ; preds = %77
  %82 = load volatile i32, ptr %61, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81, %77, %65, %60
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %87

86:                                               ; preds = %81
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %21

87:                                               ; preds = %85, %59, %58, %56, %45, %40, %39, %38, %37, %28
  %88 = phi i32 [ -37, %56 ], [ 0, %58 ], [ 0, %59 ], [ %35, %37 ], [ -11, %39 ], [ -22, %38 ], [ -4, %85 ], [ -4, %40 ], [ %49, %45 ], [ -37, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret i32 %88
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_bind_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmclnt_locks_copy_lock(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 19
  %4 = getelementptr inbounds %struct.file_lock, ptr %1, i32 0, i32 19, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nlm_lockowner, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nlm_host, ptr %7, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %8) #10
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.nlm_lockowner, ptr %11, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !12
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !13

16:                                               ; preds = %2
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !14

20:                                               ; preds = %16, %2
  %21 = phi i32 [ 2, %2 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #10
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19, i32 0, i32 1
  store ptr %11, ptr %23, align 4
  %24 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19, i32 0, i32 2
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.nlm_lockowner, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nlm_host, ptr %27, i32 0, i32 21
  %29 = getelementptr inbounds %struct.nlm_host, ptr %27, i32 0, i32 21, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %24, ptr %29, align 4
  store ptr %28, ptr %24, align 4
  %31 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19, i32 0, i32 2, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %24, ptr %30, align 4
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.nlm_lockowner, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nlm_host, ptr %34, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmclnt_locks_release_private(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nlm_lockowner, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nlm_host, ptr %5, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19, i32 0, i32 2
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 19, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nlm_lockowner, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nlm_host, ptr %14, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nlm_lockowner, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nlm_lockowner, ptr %18, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nlm_host, ptr %21, i32 0, i32 20
  %23 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %19, ptr noundef %22) #10
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.nlm_host, ptr %29, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %33 = load ptr, ptr %20, align 4
  tail call void @nlmclnt_release_host(ptr noundef %33) #10
  tail call void @kfree(ptr noundef %18) #10
  br label %34

34:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsm_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmclnt_prepare_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_finish_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmclnt_cancel_callback(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  switch i32 %5, label %15 [
    i32 0, label %26
    i32 4, label %26
    i32 1, label %26
    i32 2, label %17
  ]

15:                                               ; preds = %14
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %5) #12
  br label %26

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = icmp ugt i32 %19, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  tail call void @nlm_rebind_host(ptr noundef %24) #10
  %25 = tail call i32 @rpc_restart_call(ptr noundef %0) #10
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 3000) #10
  br label %26

26:                                               ; preds = %22, %17, %15, %14, %14, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmclnt_rpc_release(ptr noundef %0) #0 {
  tail call void @nlmclnt_release_call(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_rebind_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmclnt_unlock_prepare(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nlm_host, ptr %4, i32 0, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nlmclnt_operations, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 %10(ptr noundef %0, ptr noundef %14) #10
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %8, %2
  tail call void @rpc_call_start(ptr noundef %0) #10
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmclnt_unlock_callback(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  switch i32 %12, label %19 [
    i32 -13, label %24
    i32 -5, label %24
  ]

15:                                               ; preds = %10
  switch i32 %4, label %17 [
    i32 67108864, label %16
    i32 0, label %24
  ]

16:                                               ; preds = %15
  tail call void @rpc_delay(ptr noundef %0, i32 noundef 500) #10
  br label %22

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %5) #12
  br label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  tail call void @nlm_rebind_host(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %19, %16
  %23 = tail call i32 @rpc_restart_call(ptr noundef %0) #10
  br label %24

24:                                               ; preds = %22, %17, %15, %14, %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_call_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2148161171}
!9 = !{i64 561939, i64 2148051910, i64 2148051936, i64 2148051983, i64 2148052005, i64 2148052033, i64 2148052053}
!10 = !{i64 2148064009, i64 2148064041, i64 2148064070, i64 2148064104, i64 2148064135, i64 2148064158}
!11 = !{i64 2148161374}
!12 = !{i64 2148064783, i64 2148064815, i64 2148064844, i64 2148064878, i64 2148064909, i64 2148064932}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148946464}
!16 = !{i64 2148942288}
!17 = !{i64 2148942363, i64 2148942390, i64 2148942437, i64 2148942459, i64 2148942487, i64 2148942507}
!18 = !{i64 2148969467}
!19 = !{i64 2148165005}
!20 = !{i64 2148067140, i64 2148067172, i64 2148067201, i64 2148067235, i64 2148067266, i64 2148067289}
!21 = !{i64 2149014452}
