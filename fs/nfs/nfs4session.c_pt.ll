; ModuleID = '/llk/IR/fs/nfs/nfs4session.c_pt.bc'
source_filename = "../fs/nfs/nfs4session.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_init_ds_session:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_init_ds_session\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_init_ds_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs4_slot = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.1 }
%union.anon.1 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.141, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.141 = type { %struct.work_struct }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.2, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.2 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.nfs4_sequence_args = type { ptr, i8 }

@.str = private unnamed_addr constant [23 x i8] c"ForeChannel Slot table\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"BackChannel Slot table\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_nfs4_init_ds_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_init_ds_session = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_init_ds_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_init_ds_session to i32), ptr @__kstrtab_nfs4_init_ds_session, ptr @__kstrtabns_nfs4_init_ds_session }, section "___ksymtab_gpl+nfs4_init_ds_session", align 4
@nfs4_init_slot_table.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&tbl->slot_waitq\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfs4_init_ds_session], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_slot_tbl_drain_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 15
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 14
  tail call void @complete(ptr noundef %7) #8
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_free_slot(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_slot, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 2
  %6 = and i32 %4, 31
  %7 = shl nuw i32 1, %6
  %8 = lshr i32 %4, 5
  %9 = getelementptr i32, ptr %5, i32 %8
  %10 = xor i32 %7, -1
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, %10
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %4, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = tail call i32 @_find_last_bit(ptr noundef %5, i32 noundef %4) #8
  %18 = icmp ult i32 %17, %4
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 %17, ptr %13, align 4
  br label %27

20:                                               ; preds = %16
  store i32 -1, ptr %13, align 4
  %21 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 15
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 14
  tail call void @complete(ptr noundef %26) #8
  br label %27

27:                                               ; preds = %25, %20, %19, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfs4_try_to_lock_slot(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.nfs4_slot, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 2
  %6 = lshr i32 %4, 5
  %7 = getelementptr i32, ptr %5, i32 %6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %4, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = or i32 %10, %8
  store i32 %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %4, %16
  %18 = icmp eq i32 %16, -1
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 %4, ptr %15, align 4
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs4_slot, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %2
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_lookup_slot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %31, %6
  %10 = phi ptr [ %7, %6 ], [ %32, %31 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, ptr %8, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2304, i32 noundef 32) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  store ptr %0, ptr %16, align 8
  %19 = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 3
  store i32 %14, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 4
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 6
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.nfs4_slot, ptr %16, i32 0, i32 5
  store i32 -1, ptr %22, align 4
  store ptr %16, ptr %10, align 4
  %23 = load i32, ptr %8, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %8, align 4
  %25 = load ptr, ptr %10, align 4
  br label %26

26:                                               ; preds = %18, %9
  %27 = phi ptr [ %25, %18 ], [ %11, %9 ]
  %28 = getelementptr inbounds %struct.nfs4_slot, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nfs4_slot, ptr %27, i32 0, i32 1
  br label %9

33:                                               ; preds = %13
  store ptr null, ptr %10, align 4
  br label %34

34:                                               ; preds = %33, %26, %2
  %35 = phi ptr [ inttoptr (i32 -12 to ptr), %33 ], [ inttoptr (i32 -7 to ptr), %2 ], [ %27, %26 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_slot_wait_on_seqid(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = tail call fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %7 = xor i1 %6, true
  %8 = icmp ne i32 %3, 0
  %9 = or i1 %8, %6
  %10 = select i1 %9, i32 %3, i32 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %7, i1 true, i1 %11
  br i1 %12, label %35, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #8
  %14 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 5
  %15 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 2) #8
  %16 = call fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %17 = xor i1 %16, true
  %18 = or i1 %16, %8
  %19 = select i1 %18, i32 %3, i32 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %17, i1 true, i1 %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %22, %13
  %23 = phi i32 [ %30, %22 ], [ %19, %13 ]
  %24 = call i32 @schedule_timeout(i32 noundef %23) #8
  %25 = call i32 @prepare_to_wait_event(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 2) #8
  %26 = call fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %27 = xor i1 %26, true
  %28 = icmp ne i32 %24, 0
  %29 = select i1 %26, i1 true, i1 %28
  %30 = select i1 %29, i32 %24, i32 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %27, i1 true, i1 %31
  br i1 %32, label %33, label %22

33:                                               ; preds = %22, %13
  %34 = phi i32 [ %19, %13 ], [ %30, %22 ]
  call void @finish_wait(ptr noundef %14, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  br label %35

35:                                               ; preds = %33, %4
  %36 = phi i32 [ %10, %4 ], [ %34, %33 ]
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 -110, i32 0
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nfs4_slot_seqid_in_use(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %33, %8
  %12 = phi ptr [ %9, %8 ], [ %34, %33 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32, ptr %10, align 4
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2304, i32 noundef 32) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  store ptr %0, ptr %18, align 8
  %21 = getelementptr inbounds %struct.nfs4_slot, ptr %18, i32 0, i32 3
  store i32 %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfs4_slot, ptr %18, i32 0, i32 4
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nfs4_slot, ptr %18, i32 0, i32 6
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs4_slot, ptr %18, i32 0, i32 5
  store i32 -1, ptr %24, align 4
  store ptr %18, ptr %12, align 4
  %25 = load i32, ptr %10, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %10, align 4
  %27 = load ptr, ptr %12, align 4
  br label %28

28:                                               ; preds = %20, %11
  %29 = phi ptr [ %27, %20 ], [ %13, %11 ]
  %30 = getelementptr inbounds %struct.nfs4_slot, ptr %29, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nfs4_slot, ptr %29, i32 0, i32 1
  br label %11

35:                                               ; preds = %15
  store ptr null, ptr %12, align 4
  br label %51

36:                                               ; preds = %28
  %37 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %51, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.nfs4_slot, ptr %29, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 2
  %44 = lshr i32 %1, 5
  %45 = getelementptr i32, ptr %43, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %1, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %42, %38, %36, %35, %3
  %52 = phi i1 [ false, %38 ], [ %50, %42 ], [ false, %36 ], [ false, %35 ], [ false, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %53 = load i16, ptr %4, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  ret i1 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_alloc_slot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  %6 = tail call i32 @_find_first_zero_bit_le(ptr noundef %2, i32 noundef %5) #8
  %7 = load i32, ptr %3, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %56, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 6
  br label %12

12:                                               ; preds = %34, %9
  %13 = phi ptr [ %10, %9 ], [ %35, %34 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, ptr %11, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2304, i32 noundef 32) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  store ptr %0, ptr %19, align 8
  %22 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 3
  store i32 %17, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 4
  store i32 1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 6
  store i32 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 5
  store i32 0, ptr %25, align 4
  store ptr %19, ptr %13, align 4
  %26 = load i32, ptr %11, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %11, align 4
  %28 = load ptr, ptr %13, align 4
  br label %29

29:                                               ; preds = %21, %12
  %30 = phi ptr [ %28, %21 ], [ %14, %12 ]
  %31 = getelementptr inbounds %struct.nfs4_slot, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %6
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.nfs4_slot, ptr %30, i32 0, i32 1
  br label %12

36:                                               ; preds = %16
  store ptr null, ptr %13, align 4
  br label %56

37:                                               ; preds = %29
  %38 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %56, label %39

39:                                               ; preds = %37
  %40 = and i32 %6, 31
  %41 = shl nuw i32 1, %40
  %42 = lshr i32 %6, 5
  %43 = getelementptr i32, ptr %2, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %41, %44
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %6, %47
  %49 = icmp eq i32 %47, -1
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 %6, ptr %46, align 4
  br label %52

52:                                               ; preds = %51, %39
  %53 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nfs4_slot, ptr %30, i32 0, i32 2
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %37, %36, %1
  %57 = phi ptr [ %30, %37 ], [ %30, %52 ], [ inttoptr (i32 -16 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %36 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_shutdown_slot_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %15, %9 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.nfs4_slot, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %10) #8
  %13 = load i32, ptr %2, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %2, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %5, %1
  %18 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 4
  tail call void @rpc_destroy_wait_queue(ptr noundef %18) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_setup_slot_table(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 4
  tail call void @rpc_init_priority_wait_queue(ptr noundef %6, ptr noundef %2) #8
  %7 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs4_init_slot_table.__key) #8
  %8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 14
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %10 = tail call fastcc i32 @nfs4_realloc_slot_table(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nfs4_realloc_slot_table(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 1024)
  %5 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %4
  %8 = add nsw i32 %4, -1
  br i1 %7, label %9, label %40

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %11 = add i32 %2, -1
  br label %12

12:                                               ; preds = %35, %9
  %13 = phi i32 [ %6, %9 ], [ %30, %35 ]
  %14 = phi ptr [ %10, %9 ], [ %36, %35 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3392, i32 noundef 32) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  store ptr %0, ptr %19, align 8
  %22 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 3
  store i32 %13, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 4
  store i32 %2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 6
  store i32 %2, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nfs4_slot, ptr %19, i32 0, i32 5
  store i32 %11, ptr %25, align 4
  store ptr %19, ptr %14, align 4
  %26 = load i32, ptr %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %5, align 4
  %28 = load ptr, ptr %14, align 4
  br label %29

29:                                               ; preds = %21, %12
  %30 = phi i32 [ %27, %21 ], [ %13, %12 ]
  %31 = phi ptr [ %28, %21 ], [ %15, %12 ]
  %32 = getelementptr inbounds %struct.nfs4_slot, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %8
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nfs4_slot, ptr %31, i32 0, i32 1
  br label %12

37:                                               ; preds = %17
  store ptr null, ptr %14, align 4
  br label %93

38:                                               ; preds = %29
  %39 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %93, label %40

40:                                               ; preds = %38, %3
  %41 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %41) #8
  %42 = load i32, ptr %5, align 4
  %43 = icmp ugt i32 %42, %4
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %46 = icmp eq i32 %4, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %51, %44
  %48 = phi ptr [ %45, %44 ], [ %56, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %58

51:                                               ; preds = %51, %44
  %52 = phi i32 [ %54, %51 ], [ %4, %44 ]
  %53 = phi ptr [ %56, %51 ], [ %45, %44 ]
  %54 = add nsw i32 %52, -1
  %55 = load ptr, ptr %53, align 4
  %56 = getelementptr inbounds %struct.nfs4_slot, ptr %55, i32 0, i32 1
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %47, label %51

58:                                               ; preds = %58, %47
  %59 = phi ptr [ %64, %58 ], [ %49, %47 ]
  %60 = getelementptr inbounds %struct.nfs4_slot, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %48, align 4
  tail call void @kfree(ptr noundef nonnull %59) #8
  %62 = load i32, ptr %5, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %5, align 4
  %64 = load ptr, ptr %48, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58

66:                                               ; preds = %58, %47, %40
  %67 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = add i32 %2, -1
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi ptr [ %68, %70 ], [ %82, %72 ]
  %74 = phi ptr [ %67, %70 ], [ %81, %72 ]
  %75 = getelementptr inbounds %struct.nfs4_slot, ptr %73, i32 0, i32 4
  store i32 %2, ptr %75, align 4
  %76 = load ptr, ptr %74, align 4
  %77 = getelementptr inbounds %struct.nfs4_slot, ptr %76, i32 0, i32 6
  store i32 %2, ptr %77, align 4
  %78 = load ptr, ptr %74, align 4
  %79 = getelementptr inbounds %struct.nfs4_slot, ptr %78, i32 0, i32 5
  store i32 %71, ptr %79, align 4
  %80 = load ptr, ptr %74, align 4
  %81 = getelementptr inbounds %struct.nfs4_slot, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72

84:                                               ; preds = %72, %66
  %85 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  store i32 -1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 9
  store i32 %8, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 10
  store i32 %8, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 11
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 12
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  store i32 %8, ptr %90, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %91 = load i16, ptr %41, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  br label %93

93:                                               ; preds = %84, %38, %37
  %94 = phi i32 [ 0, %84 ], [ -12, %38 ], [ -12, %37 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs41_wake_and_assign_slot(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_slot, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %4, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 4
  %10 = tail call ptr @rpc_wake_up_first(ptr noundef %9, ptr noundef nonnull @nfs41_assign_slot, ptr noundef %1) #8
  %11 = icmp ne ptr %10, null
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ %11, %8 ], [ false, %2 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs41_wake_slot_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 4
  br label %3

3:                                                ; preds = %6, %1
  %4 = tail call ptr @nfs4_alloc_slot(ptr noundef %0) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @rpc_wake_up_first(ptr noundef %2, ptr noundef nonnull @nfs41_assign_slot, ptr noundef %4) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfs4_slot, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 2
  %13 = and i32 %11, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %11, 5
  %16 = getelementptr i32, ptr %12, i32 %15
  %17 = xor i32 %14, -1
  %18 = load i32, ptr %16, align 4
  %19 = and i32 %18, %17
  store i32 %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %11, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %9
  %24 = tail call i32 @_find_last_bit(ptr noundef %12, i32 noundef %11) #8
  %25 = icmp ult i32 %24, %11
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 %24, ptr %20, align 4
  br label %34

27:                                               ; preds = %23
  store i32 -1, ptr %20, align 4
  %28 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 15
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 14
  tail call void @complete(ptr noundef %33) #8
  br label %34

34:                                               ; preds = %32, %27, %26, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs41_set_target_slotid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  store i32 %1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 11
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 12
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %1, i32 %15) #8
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 1023) #8
  %18 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  store i32 %17, ptr %18, align 4
  tail call void @nfs41_wake_slot_table(ptr noundef %0) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs41_update_target_slotid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %2, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 1023)
  %7 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 1023)
  %10 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %6, %12
  %14 = icmp eq i32 %6, %12
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = add i32 %13, -1
  %19 = ashr i32 %18, 1
  br label %23

20:                                               ; preds = %15
  %21 = add nuw i32 %13, 1
  %22 = ashr i32 %21, 1
  br label %23

23:                                               ; preds = %20, %17, %3
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ], [ 0, %3 ]
  %25 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = icmp eq i32 %24, %26
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = icmp slt i32 %27, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = add i32 %27, -1
  %33 = ashr i32 %32, 1
  br label %37

34:                                               ; preds = %29
  %35 = add nuw i32 %27, 1
  %36 = ashr i32 %35, 1
  br label %37

37:                                               ; preds = %34, %31, %23
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ], [ 0, %23 ]
  %39 = icmp ne i32 %24, 0
  %40 = icmp ne i32 %26, 0
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = ashr i32 %24, 31
  %44 = icmp slt i32 %24, 1
  %45 = select i1 %44, i32 %43, i32 1
  %46 = ashr i32 %26, 31
  %47 = icmp slt i32 %26, 1
  %48 = select i1 %47, i32 %46, i32 1
  %49 = icmp ne i32 %45, %48
  br label %50

50:                                               ; preds = %42, %37
  %51 = phi i1 [ %49, %42 ], [ false, %37 ]
  %52 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 12
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %38, 0
  %55 = icmp ne i32 %53, 0
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = ashr i32 %38, 31
  %59 = icmp slt i32 %38, 1
  %60 = select i1 %59, i32 %58, i32 1
  %61 = ashr i32 %53, 31
  %62 = icmp slt i32 %53, 1
  %63 = select i1 %62, i32 %61, i32 1
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %50
  store i32 %24, ptr %25, align 4
  store i32 %38, ptr %52, align 4
  br i1 %14, label %72, label %68

66:                                               ; preds = %57
  store i32 %24, ptr %25, align 4
  store i32 %38, ptr %52, align 4
  %67 = select i1 %51, i1 true, i1 %14
  br i1 %67, label %72, label %68

68:                                               ; preds = %66, %65
  store i32 %6, ptr %11, align 4
  %69 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 13
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %66, %65
  %73 = phi i32 [ %12, %66 ], [ %6, %68 ], [ %6, %65 ]
  %74 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nfs4_slot, ptr %1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  %79 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  br i1 %78, label %81, label %116

81:                                               ; preds = %72
  %82 = icmp eq i32 %80, %9
  br i1 %82, label %116, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, %9
  br i1 %86, label %116, label %87

87:                                               ; preds = %83
  %88 = add nuw nsw i32 %9, 1
  %89 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %90, %88
  br i1 %91, label %92, label %114

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 1
  br label %97

94:                                               ; preds = %97
  %95 = load ptr, ptr %102, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %114, label %104

97:                                               ; preds = %97, %92
  %98 = phi i32 [ %100, %97 ], [ %88, %92 ]
  %99 = phi ptr [ %102, %97 ], [ %93, %92 ]
  %100 = add nsw i32 %98, -1
  %101 = load ptr, ptr %99, align 4
  %102 = getelementptr inbounds %struct.nfs4_slot, ptr %101, i32 0, i32 1
  %103 = icmp eq i32 %100, 0
  br i1 %103, label %94, label %97

104:                                              ; preds = %104, %94
  %105 = phi ptr [ %110, %104 ], [ %95, %94 ]
  %106 = getelementptr inbounds %struct.nfs4_slot, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  store ptr %107, ptr %102, align 4
  tail call void @kfree(ptr noundef nonnull %105) #8
  %108 = load i32, ptr %89, align 4
  %109 = add i32 %108, -1
  store i32 %109, ptr %89, align 4
  %110 = load ptr, ptr %102, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %104

112:                                              ; preds = %104
  %113 = load i32, ptr %11, align 4
  br label %114

114:                                              ; preds = %112, %94, %87
  %115 = phi i32 [ %113, %112 ], [ %73, %94 ], [ %73, %87 ]
  store i32 %9, ptr %79, align 4
  br label %116

116:                                              ; preds = %114, %83, %81, %72
  %117 = phi i32 [ %115, %114 ], [ %73, %83 ], [ %73, %81 ], [ %73, %72 ]
  %118 = phi i32 [ %9, %114 ], [ %80, %83 ], [ %9, %81 ], [ %80, %72 ]
  %119 = tail call i32 @llvm.umin.i32(i32 %6, i32 %118) #8
  %120 = tail call i32 @llvm.umin.i32(i32 %119, i32 %117) #8
  %121 = tail call i32 @llvm.umin.i32(i32 %120, i32 1023) #8
  %122 = getelementptr inbounds %struct.nfs4_slot_table, ptr %0, i32 0, i32 7
  store i32 %121, ptr %122, align 4
  tail call void @nfs41_wake_slot_table(ptr noundef %0) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %123 = load i16, ptr %10, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_setup_session_slot_tables(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 6
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 5, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call fastcc i32 @nfs4_realloc_slot_table(ptr noundef %2, i32 noundef %4, i32 noundef 1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %53

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 8
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 7, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call fastcc i32 @nfs4_realloc_slot_table(ptr noundef %13, i32 noundef %15, i32 noundef 0)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 8, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 6, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 6, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %36, %30 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.nfs4_slot, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr %27, align 4
  tail call void @kfree(ptr noundef nonnull %31) #8
  %34 = load i32, ptr %23, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %23, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %26, %22
  %39 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 8, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %19, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %51, %45 ], [ %43, %42 ]
  %47 = getelementptr inbounds %struct.nfs4_slot, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  store ptr %48, ptr %19, align 4
  tail call void @kfree(ptr noundef nonnull %46) #8
  %49 = load i32, ptr %39, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %39, align 4
  %51 = load ptr, ptr %19, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %42, %38, %18, %12, %7, %1
  %54 = phi i32 [ 0, %7 ], [ %5, %1 ], [ %16, %18 ], [ 0, %12 ], [ %16, %38 ], [ %16, %42 ], [ %16, %45 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_alloc_session(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 692) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 8
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 4
  tail call void @rpc_init_priority_wait_queue(ptr noundef %8, ptr noundef nonnull @.str) #8
  %9 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs4_init_slot_table.__key) #8
  %10 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 14
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 6, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %12 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 8
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 3
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 4
  tail call void @rpc_init_priority_wait_queue(ptr noundef %14, ptr noundef nonnull @.str.1) #8
  %15 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs4_init_slot_table.__key) #8
  %16 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 14
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 8, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %18 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 2
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 9
  store ptr %0, ptr %19, align 8
  br label %20

20:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_destroy_session(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nfs4_get_clid_cred(ptr noundef %3) #8
  %5 = tail call i32 @nfs4_proc_destroy_session(ptr noundef %0, ptr noundef %4) #8
  %6 = icmp eq ptr %4, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #8, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #8, !srcloc !15
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @__put_cred(ptr noundef nonnull %4) #8
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rpc_clnt, ptr %15, i32 0, i32 6
  %17 = load volatile ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  tail call void @xprt_destroy_backchannel(ptr noundef %17, i32 noundef 1) #8
  %18 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 6, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %21
  %26 = phi ptr [ %31, %25 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.nfs4_slot, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %26) #8
  %29 = load i32, ptr %18, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %18, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %21, %12
  %34 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 6, i32 4
  tail call void @rpc_destroy_wait_queue(ptr noundef %34) #8
  %35 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 8, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 8, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %42, %38
  %43 = phi ptr [ %48, %42 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.nfs4_slot, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  store ptr %45, ptr %39, align 4
  tail call void @kfree(ptr noundef nonnull %43) #8
  %46 = load i32, ptr %35, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %35, align 4
  %48 = load ptr, ptr %39, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %38, %33
  %51 = getelementptr inbounds %struct.nfs4_session, ptr %0, i32 0, i32 8, i32 4
  tail call void @rpc_destroy_wait_queue(ptr noundef %51) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_clid_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_destroy_session(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_destroy_backchannel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_init_session(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs4_session, ptr %3, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call i32 @nfs4_client_recover_expired_lease(ptr noundef %0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 8
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %14, %13 ], [ %8, %5 ]
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  br label %19

19:                                               ; preds = %18, %15, %10, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %18 ], [ %11, %10 ], [ -93, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_init_ds_session(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.nfs4_session, ptr %4, i32 0, i32 2
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 24
  store i32 %1, ptr %10, align 8
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 25
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %14 = load i16, ptr %5, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  %16 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = tail call i32 @nfs4_client_recover_expired_lease(ptr noundef %0) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, ptr %16, align 8
  br label %24

24:                                               ; preds = %22, %13
  %25 = phi i32 [ %23, %22 ], [ %17, %13 ]
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  %28 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 35
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 -19, i32 0
  br label %33

33:                                               ; preds = %27, %24, %19
  %34 = phi i32 [ %32, %27 ], [ -93, %24 ], [ %20, %19 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_priority_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_wake_up_first(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nfs41_assign_slot(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.nfs4_slot_table, ptr %7, i32 0, i32 15
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.nfs4_sequence_args, ptr %4, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %2
  %18 = getelementptr inbounds %struct.nfs4_slot_table, ptr %7, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs4_slot, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  store ptr %1, ptr %4, align 4
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %6, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  store ptr %1, ptr %6, align 4
  %23 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %6, i32 0, i32 3
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %6, i32 0, i32 2
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ true, %17 ], [ false, %12 ]
  ret i1 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_client_recover_expired_lease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2148939637}
!10 = !{i64 2148935461}
!11 = !{i64 2148935536, i64 2148935563, i64 2148935610, i64 2148935632, i64 2148935660, i64 2148935680}
!12 = !{i64 2148962640}
!13 = !{i64 2148028524}
!14 = !{i64 425686, i64 2147915657, i64 2147915683, i64 2147915730, i64 2147915752, i64 2147915780, i64 2147915800}
!15 = !{i64 2147930910, i64 2147930942, i64 2147930971, i64 2147931005, i64 2147931036, i64 2147931059}
!16 = !{i64 2148028727}
!17 = !{i64 2149338409}
!18 = !{i64 2149338626}
!19 = !{i64 2156211290}
