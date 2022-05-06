; ModuleID = '/llk/IR/fs/lockd/clntlock.c_pt.bc'
source_filename = "../fs/lockd/clntlock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmclnt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmclnt_init\22\09\09\09\09\09"
module asm "__kstrtabns_nlmclnt_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmclnt_done:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmclnt_done\22\09\09\09\09\09"
module asm "__kstrtabns_nlmclnt_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nlmclnt_initdata = type { ptr, ptr, i32, i16, i32, i32, ptr, ptr, ptr }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nlm_wait = type { %struct.list_head, %struct.wait_queue_head, ptr, ptr, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.123 }
%union.anon.123 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.58 }
%union.anon.58 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab_nlmclnt_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmclnt_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmclnt_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmclnt_init to i32), ptr @__kstrtab_nlmclnt_init, ptr @__kstrtabns_nlmclnt_init }, section "___ksymtab_gpl+nlmclnt_init", align 4
@__kstrtab_nlmclnt_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmclnt_done = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmclnt_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmclnt_done to i32), ptr @__kstrtab_nlmclnt_done, ptr @__kstrtabns_nlmclnt_done }, section "___ksymtab_gpl+nlmclnt_done", align 4
@nlmclnt_prepare_block.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&block->b_wait\00", align 1
@nlm_blocked_lock = internal global %struct.spinlock zeroinitializer, align 4
@nlm_blocked = internal global %struct.list_head { ptr @nlm_blocked, ptr @nlm_blocked }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s-reclaim\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"\013lockd: unable to spawn reclaimer thread. Locks for %s won't be reclaimed! (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nlmclnt_done, ptr @__ksymtab_nlmclnt_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlmclnt_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @lockd_up(ptr noundef %5, ptr noundef %7) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = inttoptr i32 %8 to ptr
  br label %42

12:                                               ; preds = %1
  %13 = icmp eq i32 %3, 2
  %14 = select i1 %13, i32 1, i32 4
  %15 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 3
  %20 = load i16, ptr %19, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = load ptr, ptr %6, align 4
  %26 = tail call ptr @nlmclnt_lookup_host(ptr noundef %16, i32 noundef %18, i16 noundef zeroext %20, i32 noundef %14, ptr noundef %21, i32 noundef %23, ptr noundef %24, ptr noundef %25) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.nlm_host, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = tail call ptr @nlm_bind_host(ptr noundef nonnull %26) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.nlmclnt_initdata, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nlm_host, ptr %26, i32 0, i32 28
  store ptr %37, ptr %38, align 4
  br label %42

39:                                               ; preds = %32
  tail call void @nlmclnt_release_host(ptr noundef nonnull %26) #8
  br label %40

40:                                               ; preds = %39, %12
  %41 = load ptr, ptr %4, align 4
  tail call void @lockd_down(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %40, %35, %10
  %43 = phi ptr [ %11, %10 ], [ inttoptr (i32 -37 to ptr), %40 ], [ %26, %35 ]
  ret ptr %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockd_up(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmclnt_lookup_host(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_bind_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockd_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmclnt_done(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  tail call void @nlmclnt_release_host(ptr noundef %0) #8
  tail call void @lockd_down(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nlmclnt_prepare_block(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 36) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nlm_wait, ptr %4, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nlm_wait, ptr %4, i32 0, i32 3
  store ptr %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nlm_wait, ptr %4, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @nlmclnt_prepare_block.__key) #8
  %10 = getelementptr inbounds %struct.nlm_wait, ptr %4, i32 0, i32 5
  store i32 50331648, ptr %10, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %11 = load ptr, ptr @nlm_blocked, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %4, ptr %12, align 4
  store ptr %11, ptr %4, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr @nlm_blocked, ptr %13, align 4
  store volatile ptr %4, ptr @nlm_blocked, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %14 = load i16, ptr @nlm_blocked_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  br label %16

16:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmclnt_finish_block(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %8 = load i16, ptr @nlm_blocked_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_block(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nlm_wait, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 50331648
  %10 = icmp eq i32 %2, 0
  %11 = and i1 %10, %9
  %12 = select i1 %11, i32 1, i32 %2
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %9, i1 true, i1 %13
  br i1 %14, label %43, label %15

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #8
  %16 = getelementptr inbounds %struct.nlm_wait, ptr %0, i32 0, i32 1
  %17 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #8
  %18 = load i32, ptr %7, align 4
  %19 = icmp ne i32 %18, 50331648
  %20 = and i1 %19, %10
  %21 = select i1 %20, i32 1, i32 %2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %19, i1 true, i1 %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %28, %15
  %25 = phi i32 [ %36, %28 ], [ %21, %15 ]
  %26 = phi i32 [ %30, %28 ], [ %17, %15 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = call i32 @schedule_timeout(i32 noundef %25) #8
  %30 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #8
  %31 = load i32, ptr %7, align 4
  %32 = icmp ne i32 %31, 50331648
  %33 = xor i1 %32, true
  %34 = icmp ne i32 %29, 0
  %35 = select i1 %33, i1 true, i1 %34
  %36 = select i1 %35, i32 %29, i32 1
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %32, i1 true, i1 %37
  br i1 %38, label %39, label %24

39:                                               ; preds = %28, %15
  %40 = phi i32 [ %21, %15 ], [ %36, %28 ]
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %4) #8
  br label %41

41:                                               ; preds = %39, %24
  %42 = phi i32 [ %40, %39 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  br label %43

43:                                               ; preds = %41, %6
  %44 = phi i32 [ %12, %6 ], [ %42, %41 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %7, align 4
  %48 = icmp eq i32 %47, 67108864
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 50331648, ptr %7, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ 50331648, %49 ], [ %47, %46 ]
  %52 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 4, i32 1
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %43, %3
  %54 = phi i32 [ 0, %50 ], [ -11, %3 ], [ -512, %43 ]
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmclnt_grant(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %4 = load ptr, ptr @nlm_blocked, align 4
  %5 = icmp eq ptr %4, @nlm_blocked
  br i1 %5, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 12
  %8 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 13
  %9 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %11 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  %13 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 2, i32 1
  br label %17

17:                                               ; preds = %98, %6
  %18 = phi ptr [ %4, %6 ], [ %100, %98 ]
  %19 = phi i32 [ 16777216, %6 ], [ %99, %98 ]
  %20 = getelementptr inbounds %struct.nlm_wait, ptr %18, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file_lock, ptr %21, i32 0, i32 12
  %23 = load i64, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.file_lock, ptr %21, i32 0, i32 13
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %8, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.file_lock, ptr %21, i32 0, i32 19, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nlm_lockowner, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.nlm_wait, ptr %18, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nlm_host, ptr %40, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = load i16, ptr %0, align 2
  %44 = icmp eq i16 %42, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %38
  switch i16 %42, label %98 [
    i16 2, label %46
    i16 10, label %48
  ]

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.nlm_host, ptr %40, i32 0, i32 1, i32 0, i32 1
  br label %75

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.nlm_host, ptr %40, i32 0, i32 1, i32 0, i32 1, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %10, align 4
  %52 = xor i32 %51, %50
  %53 = getelementptr %struct.nlm_host, ptr %40, i32 0, i32 1, i32 0, i32 1, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %11, align 4
  %56 = xor i32 %55, %54
  %57 = or i32 %56, %52
  %58 = getelementptr %struct.nlm_host, ptr %40, i32 0, i32 1, i32 0, i32 1, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %12, align 4
  %61 = xor i32 %60, %59
  %62 = or i32 %57, %61
  %63 = getelementptr %struct.nlm_host, ptr %40, i32 0, i32 1, i32 0, i32 1, i32 16
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %13, align 4
  %66 = xor i32 %65, %64
  %67 = or i32 %62, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %48
  %70 = tail call i32 @__ipv6_addr_type(ptr noundef %49) #8
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nlm_host, ptr %40, i32 0, i32 1, i32 0, i32 1, i32 20
  br label %75

75:                                               ; preds = %73, %46
  %76 = phi ptr [ %14, %73 ], [ %15, %46 ]
  %77 = phi ptr [ %74, %73 ], [ %47, %46 ]
  %78 = load i32, ptr %77, align 4
  %79 = load i32, ptr %76, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75, %69
  %82 = getelementptr inbounds %struct.file_lock, ptr %21, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.file, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr i8, ptr %85, i32 -288
  %87 = load i16, ptr %86, align 2
  %88 = load i16, ptr %3, align 2
  %89 = icmp eq i16 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = zext i16 %87 to i32
  %92 = getelementptr i8, ptr %85, i32 -286
  %93 = tail call i32 @bcmp(ptr %92, ptr %16, i32 %91) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.nlm_wait, ptr %18, i32 0, i32 5
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.nlm_wait, ptr %18, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %97, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %98

98:                                               ; preds = %95, %90, %81, %75, %48, %45, %38, %31, %26, %17
  %99 = phi i32 [ 0, %95 ], [ %19, %17 ], [ %19, %26 ], [ %19, %31 ], [ %19, %75 ], [ %19, %90 ], [ %19, %45 ], [ %19, %38 ], [ %19, %48 ], [ %19, %81 ]
  %100 = load ptr, ptr %18, align 4
  %101 = icmp eq ptr %100, @nlm_blocked
  br i1 %101, label %102, label %17

102:                                              ; preds = %98, %2
  %103 = phi i32 [ 16777216, %2 ], [ %99, %98 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %104 = load i16, ptr @nlm_blocked_lock, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmclnt_recovery(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  %5 = xor i8 %3, 1
  store i8 %5, ptr %2, align 2
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = tail call ptr @nlm_get_host(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @reclaimer, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.1, ptr noundef %10) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @wake_up_process(ptr noundef %11) #8
  br label %19

15:                                               ; preds = %7
  %16 = load ptr, ptr %9, align 4
  %17 = ptrtoint ptr %11 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %16, i32 noundef %17) #10
  br label %19

19:                                               ; preds = %15, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_get_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reclaimer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 768) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %1
  tail call void @kernel_sigaction(i32 noundef 9, ptr noundef nonnull inttoptr (i32 2 to ptr)) #8
  %8 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %8) #8
  %9 = tail call i32 @lockd_up(ptr noundef %3, ptr noundef null) #8
  %10 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 17
  %12 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 21
  %13 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 22
  %14 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 21, i32 1
  %15 = load i32, ptr %10, align 4
  br label %16

16:                                               ; preds = %47, %7
  %17 = phi i32 [ %15, %7 ], [ %49, %47 ]
  %18 = load volatile i32, ptr @jiffies, align 64
  store i32 %18, ptr %11, align 4
  tail call void @nlm_rebind_host(ptr noundef %0) #8
  %19 = load volatile ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %13, align 4
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %13, ptr %24, align 4
  store ptr %19, ptr %13, align 4
  store ptr %22, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %14, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load ptr, ptr %13, align 4
  %28 = icmp eq ptr %27, %13
  br i1 %28, label %53, label %29

29:                                               ; preds = %51, %26
  %30 = phi ptr [ %32, %51 ], [ %27, %26 ]
  %31 = getelementptr i8, ptr %30, i32 -116
  %32 = load ptr, ptr %30, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %33, align 4
  %36 = tail call ptr @llvm.thread.pointer() #8
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51, !prof !13

40:                                               ; preds = %29
  %41 = load volatile i32, ptr %36, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = tail call i32 @nlmclnt_reclaim(ptr noundef %0, ptr noundef %31, ptr noundef nonnull %5) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load ptr, ptr %14, align 4
  store ptr %30, ptr %14, align 4
  store ptr %12, ptr %30, align 4
  store ptr %48, ptr %33, align 4
  store volatile ptr %30, ptr %48, align 4
  %49 = load i32, ptr %10, align 4
  %50 = icmp eq i32 %49, %17
  br i1 %50, label %51, label %16

51:                                               ; preds = %47, %44, %40, %29
  %52 = icmp eq ptr %32, %13
  br i1 %52, label %53, label %29

53:                                               ; preds = %51, %26
  %54 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %55 = load i8, ptr %54, align 2
  %56 = and i8 %55, -2
  store i8 %56, ptr %54, align 2
  tail call void @up_write(ptr noundef %8) #8
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %57 = load ptr, ptr @nlm_blocked, align 4
  %58 = icmp eq ptr %57, @nlm_blocked
  br i1 %58, label %70, label %59

59:                                               ; preds = %67, %53
  %60 = phi ptr [ %68, %67 ], [ %57, %53 ]
  %61 = getelementptr inbounds %struct.nlm_wait, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.nlm_wait, ptr %60, i32 0, i32 5
  store i32 67108864, ptr %65, align 4
  %66 = getelementptr inbounds %struct.nlm_wait, ptr %60, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %66, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load ptr, ptr %60, align 4
  %69 = icmp eq ptr %68, @nlm_blocked
  br i1 %69, label %70, label %59

70:                                               ; preds = %67, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %71 = load i16, ptr @nlm_blocked_lock, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  tail call void @nlmclnt_release_host(ptr noundef %0) #8
  tail call void @lockd_down(ptr noundef %3) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %73

73:                                               ; preds = %70, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_rebind_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_reclaim(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2148931971}
!9 = !{i64 2148927795}
!10 = !{i64 2148927870, i64 2148927897, i64 2148927944, i64 2148927966, i64 2148927994, i64 2148928014}
!11 = !{i64 2148954974}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
