; ModuleID = '/llk/IR/net/nfc/hci/llc_shdlc.c_pt.bc'
source_filename = "../net/nfc/hci/llc_shdlc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfc_llc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.llc_shdlc = type { ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, i32, i32, %struct.timer_list, i8, i8, %struct.timer_list, i8, %struct.timer_list, i8, i32, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.sk_buff_head, %struct.work_struct, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.84, i32, %struct.spinlock }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon.64, %union.anon.67, %union.anon.68, [48 x i8], %union.anon.69, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.71, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr, %union.anon.66 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, ptr }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.73, i32, i32, i32, i16, i16, %union.anon.75, %union.anon.76, %union.anon.77, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.73 = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@.str = private unnamed_addr constant [6 x i8] c"shdlc\00", align 1
@llc_shdlc_ops = internal constant %struct.nfc_llc_ops { ptr @llc_shdlc_init, ptr @llc_shdlc_deinit, ptr @llc_shdlc_start, ptr @llc_shdlc_stop, ptr @llc_shdlc_rcv_from_drv, ptr @llc_shdlc_xmit_from_hci }, align 4
@llc_shdlc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"&shdlc->state_mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.2 = private unnamed_addr constant [33 x i8] c"\013shdlc: %s: UNKNOWN Control=%d\0A\00", align 1
@__func__.llc_shdlc_handle_rcv_queue = private unnamed_addr constant [27 x i8] c"llc_shdlc_handle_rcv_queue\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"shdlc: \00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\013shdlc: %s: NULL Frame -> link is dead\0A\00", align 1
@__func__.llc_shdlc_recv_frame = private unnamed_addr constant [21 x i8] c"llc_shdlc_recv_frame\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_shdlc_register() local_unnamed_addr #0 {
  %1 = tail call i32 @nfc_llc_register(ptr noundef nonnull @.str, ptr noundef nonnull @llc_shdlc_ops) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @llc_shdlc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef %7) #0 {
  store i32 2, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 216) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @llc_shdlc_init.__key) #6
  %14 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 4
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 9
  tail call void @init_timer_key(ptr noundef %15, ptr noundef nonnull @llc_shdlc_connect_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %16 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %16, ptr noundef nonnull @llc_shdlc_t1_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %17 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 14
  tail call void @init_timer_key(ptr noundef %17, ptr noundef nonnull @llc_shdlc_t2_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  %18 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 10
  store i8 4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 11
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 19
  %21 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 19, i32 2
  store i32 0, ptr %21, align 4
  store ptr %20, ptr %20, align 8
  %22 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 19, i32 0, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 19, i32 1
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 20
  %25 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 20, i32 2
  store i32 0, ptr %25, align 4
  store ptr %24, ptr %24, align 8
  %26 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 20, i32 0, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 20, i32 1
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 22
  %29 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 22, i32 2
  store i32 0, ptr %29, align 8
  store ptr %28, ptr %28, align 4
  %30 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 22, i32 0, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  %31 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 22, i32 1
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 23
  store i32 -32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 23, i32 1
  store volatile ptr %33, ptr %33, align 8
  %34 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 23, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 23, i32 2
  store ptr @llc_shdlc_sm_work, ptr %35, align 8
  store ptr %0, ptr %10, align 8
  %36 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 2
  store ptr %2, ptr %37, align 8
  %38 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 24
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 25
  store i32 %4, ptr %39, align 8
  %40 = getelementptr inbounds %struct.llc_shdlc, ptr %10, i32 0, i32 26
  store ptr %7, ptr %40, align 4
  br label %41

41:                                               ; preds = %12, %8
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_shdlc_deinit(ptr noundef %0) #0 {
  %2 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.llc_shdlc, ptr %2, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.llc_shdlc, ptr %2, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.llc_shdlc, ptr %2, i32 0, i32 22
  tail call void @skb_queue_purge(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llc_shdlc_start(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_head, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %5 = getelementptr inbounds %struct.wait_queue_head, ptr %2, i32 0, i32 1
  store i32 0, ptr %2, align 4
  store ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_head, ptr %2, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.llc_shdlc, ptr %4, i32 0, i32 3
  call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.llc_shdlc, ptr %4, i32 0, i32 4
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.llc_shdlc, ptr %4, i32 0, i32 6
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.llc_shdlc, ptr %4, i32 0, i32 7
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.llc_shdlc, ptr %4, i32 0, i32 8
  store i32 1, ptr %11, align 4
  call void @mutex_unlock(ptr noundef %7) #6
  %12 = getelementptr inbounds %struct.llc_shdlc, ptr %4, i32 0, i32 23
  %13 = load ptr, ptr @system_wq, align 4
  %14 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12) #6
  %15 = load i32, ptr %11, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #6, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #6
  %18 = call i32 @prepare_to_wait_event(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2) #6
  %19 = load i32, ptr %11, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %21, %17
  call void @schedule() #6
  %22 = call i32 @prepare_to_wait_event(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2) #6
  %23 = load i32, ptr %11, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %21, label %25

25:                                               ; preds = %21, %17
  call void @finish_wait(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  %26 = load i32, ptr %11, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %15, %1 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llc_shdlc_stop(ptr noundef %0) #0 {
  %2 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.llc_shdlc, ptr %2, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.llc_shdlc, ptr %2, i32 0, i32 4
  store i32 0, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.llc_shdlc, ptr %2, i32 0, i32 23
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_shdlc_rcv_from_drv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #6
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.llc_shdlc_recv_frame) #8
  %7 = getelementptr inbounds %struct.llc_shdlc, ptr %3, i32 0, i32 5
  store i32 -121, ptr %7, align 4
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %10, i32 noundef %12, i1 noundef zeroext false) #6
  %13 = getelementptr inbounds %struct.llc_shdlc, ptr %3, i32 0, i32 19
  tail call void @skb_queue_tail(ptr noundef %13, ptr noundef nonnull %1) #6
  br label %14

14:                                               ; preds = %8, %5
  %15 = getelementptr inbounds %struct.llc_shdlc, ptr %3, i32 0, i32 23
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %15) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llc_shdlc_xmit_from_hci(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @nfc_llc_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.llc_shdlc, ptr %3, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %4, ptr noundef %1) #6
  %5 = getelementptr inbounds %struct.llc_shdlc, ptr %3, i32 0, i32 23
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_shdlc_connect_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 136
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_shdlc_t1_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 112
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_shdlc_t2_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 88
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llc_shdlc_sm_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -188
  %3 = getelementptr i8, ptr %0, i32 -176
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr i8, ptr %0, i32 -156
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %150 [
    i32 0, label %6
    i32 1, label %10
    i32 2, label %63
    i32 3, label %80
    i32 4, label %80
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -52
  tail call void @skb_queue_purge(ptr noundef %7) #6
  %8 = getelementptr i8, ptr %0, i32 -36
  tail call void @skb_queue_purge(ptr noundef %8) #6
  %9 = getelementptr i8, ptr %0, i32 -16
  tail call void @skb_queue_purge(ptr noundef %9) #6
  br label %150

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -152
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 -136
  %16 = tail call i32 @del_timer_sync(ptr noundef %15) #6
  store i32 0, ptr %4, align 4
  %17 = getelementptr i8, ptr %0, i32 -140
  store i32 %12, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 -148
  %19 = load ptr, ptr %18, align 4
  tail call void @__wake_up(ptr noundef %19, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %150

20:                                               ; preds = %10
  %21 = getelementptr i8, ptr %0, i32 -144
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = icmp slt i32 %22, 5
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %27, 4
  %31 = add i32 %30, %29
  %32 = tail call ptr @__alloc_skb(i32 noundef %31, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %26, align 4
  %36 = add i32 %35, 2
  %37 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  store ptr %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 14
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 %36
  store ptr %42, ptr %40, align 8
  %43 = tail call ptr @skb_put(ptr noundef nonnull %32, i32 noundef 1) #6
  store i8 4, ptr %43, align 1
  %44 = tail call ptr @skb_put(ptr noundef nonnull %32, i32 noundef 1) #6
  store i8 0, ptr %44, align 1
  %45 = tail call ptr @skb_push(ptr noundef nonnull %32, i32 noundef 1) #6
  store i8 -7, ptr %45, align 1
  %46 = getelementptr i8, ptr %0, i32 -184
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %2, align 4
  %49 = tail call i32 %47(ptr noundef %48, ptr noundef nonnull %32) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %34, %25, %20
  %52 = phi i32 [ %49, %34 ], [ -12, %25 ], [ -62, %20 ]
  %53 = getelementptr i8, ptr %0, i32 -136
  %54 = tail call i32 @del_timer_sync(ptr noundef %53) #6
  store i32 0, ptr %4, align 4
  %55 = getelementptr i8, ptr %0, i32 -140
  store i32 %52, ptr %55, align 4
  %56 = getelementptr i8, ptr %0, i32 -148
  %57 = load ptr, ptr %56, align 4
  tail call void @__wake_up(ptr noundef %57, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %150

58:                                               ; preds = %34
  %59 = getelementptr i8, ptr %0, i32 -136
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = add i32 %60, 1
  %62 = tail call i32 @mod_timer(ptr noundef %59, i32 noundef %61) #6
  store i32 2, ptr %4, align 4
  br label %150

63:                                               ; preds = %1
  %64 = getelementptr i8, ptr %0, i32 -132
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  store i32 1, ptr %4, align 4
  %68 = load ptr, ptr @system_wq, align 4
  %69 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %68, ptr noundef %0) #6
  br label %70

70:                                               ; preds = %67, %63
  tail call fastcc void @llc_shdlc_handle_rcv_queue(ptr noundef %2)
  %71 = getelementptr i8, ptr %0, i32 -152
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %150, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %0, i32 -136
  %76 = tail call i32 @del_timer_sync(ptr noundef %75) #6
  store i32 0, ptr %4, align 4
  %77 = getelementptr i8, ptr %0, i32 -140
  store i32 %72, ptr %77, align 4
  %78 = getelementptr i8, ptr %0, i32 -148
  %79 = load ptr, ptr %78, align 4
  tail call void @__wake_up(ptr noundef %79, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %150

80:                                               ; preds = %1, %1
  tail call fastcc void @llc_shdlc_handle_rcv_queue(ptr noundef %2)
  tail call fastcc void @llc_shdlc_handle_send_queue(ptr noundef %2)
  %81 = getelementptr i8, ptr %0, i32 -92
  %82 = load i8, ptr %81, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %119, label %84

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %0, i32 -108
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %119

88:                                               ; preds = %84
  store i8 0, ptr %81, align 4
  %89 = getelementptr i8, ptr %0, i32 -60
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i8, ptr %0, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i8, ptr %0, i32 20
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %92, 2
  %96 = add i32 %95, %94
  %97 = tail call ptr @__alloc_skb(i32 noundef %96, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %98 = icmp eq ptr %97, null
  br i1 %98, label %116, label %99

99:                                               ; preds = %88
  %100 = load i32, ptr %91, align 4
  %101 = add i32 %100, 2
  %102 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr i8, ptr %103, i32 %101
  store ptr %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.sk_buff, ptr %97, i32 0, i32 14
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr i8, ptr %106, i32 %101
  store ptr %107, ptr %105, align 8
  %108 = trunc i32 %90 to i8
  %109 = or i8 %108, -64
  %110 = tail call ptr @skb_push(ptr noundef nonnull %97, i32 noundef 1) #6
  store i8 %109, ptr %110, align 1
  %111 = getelementptr i8, ptr %0, i32 -184
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %2, align 4
  %114 = tail call i32 %112(ptr noundef %113, ptr noundef nonnull %97) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %97, i32 noundef 0) #6
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %99, %88
  %117 = phi i32 [ %114, %99 ], [ -12, %88 ]
  %118 = getelementptr i8, ptr %0, i32 -152
  store i32 %117, ptr %118, align 4
  br label %119

119:                                              ; preds = %116, %99, %84, %80
  %120 = getelementptr i8, ptr %0, i32 -68
  %121 = load i8, ptr %120, align 4, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %142, label %123

123:                                              ; preds = %119
  %124 = getelementptr i8, ptr %0, i32 -84
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  store i8 0, ptr %120, align 4
  %128 = getelementptr i8, ptr %0, i32 -16
  %129 = tail call ptr @skb_dequeue_tail(ptr noundef %128) #6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %127
  %132 = getelementptr i8, ptr %0, i32 -36
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi ptr [ %129, %131 ], [ %136, %133 ]
  %135 = tail call ptr @skb_pull(ptr noundef nonnull %134, i32 noundef 1) #6
  tail call void @skb_queue_head(ptr noundef %132, ptr noundef nonnull %134) #6
  %136 = tail call ptr @skb_dequeue_tail(ptr noundef %128) #6
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %133

138:                                              ; preds = %133, %127
  %139 = getelementptr i8, ptr %0, i32 -56
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i8, ptr %0, i32 -64
  store i32 %140, ptr %141, align 4
  tail call fastcc void @llc_shdlc_handle_send_queue(ptr noundef %2)
  br label %142

142:                                              ; preds = %138, %123, %119
  %143 = getelementptr i8, ptr %0, i32 -152
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %0, i32 24
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %2, align 4
  tail call void %148(ptr noundef %149, i32 noundef %144) #6
  br label %150

150:                                              ; preds = %146, %142, %74, %70, %58, %51, %14, %6, %1
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_handle_rcv_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 19
  %3 = tail call ptr @skb_dequeue(ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %265, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 9
  %9 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 16
  %10 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 17
  %11 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 18
  %12 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 10
  %16 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 11
  %17 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 24
  %18 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 25
  %19 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 1
  %20 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 21
  %21 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 15
  %22 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 14
  %23 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 22
  %24 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 20
  %25 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 20, i32 1
  %26 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 13
  %27 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 12
  %28 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 2
  br label %29

29:                                               ; preds = %262, %5
  %30 = phi ptr [ %3, %5 ], [ %263, %262 ]
  %31 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 1
  %34 = tail call ptr @skb_pull(ptr noundef nonnull %30, i32 noundef 1) #6
  %35 = zext i8 %33 to i32
  %36 = and i32 %35, 224
  %37 = add nsw i32 %36, -128
  %38 = lshr exact i32 %37, 5
  switch i32 %38, label %260 [
    i32 0, label %39
    i32 1, label %39
    i32 2, label %129
    i32 3, label %199
  ]

39:                                               ; preds = %29, %29
  %40 = load i32, ptr %6, align 4
  switch i32 %40, label %127 [
    i32 3, label %41
    i32 4, label %42
  ]

41:                                               ; preds = %39
  store i32 4, ptr %6, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = lshr i32 %35, 3
  %44 = and i32 %43, 7
  %45 = and i32 %35, 7
  %46 = load i32, ptr %10, align 4
  %47 = icmp eq i32 %46, %44
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %17, align 4
  %50 = load i32, ptr %18, align 4
  %51 = add i32 %49, 2
  %52 = add i32 %51, %50
  %53 = tail call ptr @__alloc_skb(i32 noundef %52, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %127, label %55

55:                                               ; preds = %48
  %56 = load i32, ptr %17, align 4
  %57 = add i32 %56, 2
  %58 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %57
  store ptr %60, ptr %58, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 14
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr i8, ptr %62, i32 %57
  store ptr %63, ptr %61, align 8
  %64 = trunc i32 %46 to i8
  %65 = or i8 %64, -56
  %66 = tail call ptr @skb_push(ptr noundef nonnull %53, i32 noundef 1) #6
  store i8 %65, ptr %66, align 1
  %67 = load ptr, ptr %19, align 4
  %68 = load ptr, ptr %0, align 4
  %69 = tail call i32 %67(ptr noundef %68, ptr noundef nonnull %53) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %53, i32 noundef 0) #6
  br label %127

70:                                               ; preds = %42
  %71 = load i8, ptr %26, align 4, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  store i8 1, ptr %26, align 4
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = load i8, ptr %15, align 4
  %76 = zext i8 %75 to i32
  %77 = mul nuw nsw i32 %76, 5
  %78 = lshr i32 %77, 2
  %79 = tail call i32 @__msecs_to_jiffies(i32 noundef %78) #6
  %80 = add i32 %79, %74
  %81 = tail call i32 @mod_timer(ptr noundef %27, i32 noundef %80) #6
  br label %82

82:                                               ; preds = %73, %70
  %83 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %28, align 4
  %88 = load ptr, ptr %0, align 4
  tail call void %87(ptr noundef %88, ptr noundef nonnull %30) #6
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi ptr [ null, %86 ], [ %30, %82 ]
  %91 = load i32, ptr %10, align 4
  %92 = add i32 %91, 1
  %93 = srem i32 %92, 8
  store i32 %93, ptr %10, align 4
  %94 = load i32, ptr %11, align 4
  %95 = load i32, ptr %9, align 4
  %96 = icmp slt i32 %94, %95
  %97 = icmp slt i32 %94, %45
  %98 = icmp sge i32 %95, %45
  br i1 %96, label %99, label %101

99:                                               ; preds = %89
  %100 = and i1 %97, %98
  br i1 %100, label %103, label %127

101:                                              ; preds = %89
  %102 = or i1 %97, %98
  br i1 %102, label %103, label %127

103:                                              ; preds = %101, %99
  %104 = icmp eq i32 %94, %45
  br i1 %104, label %111, label %105

105:                                              ; preds = %105, %103
  %106 = phi i32 [ %109, %105 ], [ %94, %103 ]
  %107 = tail call ptr @skb_dequeue(ptr noundef %23) #6
  tail call void @kfree_skb_reason(ptr noundef %107, i32 noundef 0) #6
  %108 = add i32 %106, 1
  %109 = srem i32 %108, 8
  %110 = icmp eq i32 %109, %45
  br i1 %110, label %111, label %105

111:                                              ; preds = %105, %103
  %112 = load ptr, ptr %23, align 4
  %113 = icmp eq ptr %112, %23
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i8, ptr %21, align 4, !range !9
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = tail call i32 @del_timer_sync(ptr noundef %22) #6
  br label %124

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 3
  %121 = load i32, ptr %120, align 8
  %122 = add i32 %121, 30
  %123 = tail call i32 @mod_timer(ptr noundef %22, i32 noundef %122) #6
  br label %124

124:                                              ; preds = %119, %117
  %125 = phi i8 [ 1, %119 ], [ 0, %117 ]
  store i8 %125, ptr %21, align 4
  br label %126

126:                                              ; preds = %124, %114
  store i32 %45, ptr %11, align 4
  br label %127

127:                                              ; preds = %126, %101, %99, %55, %48, %39
  %128 = phi ptr [ %90, %126 ], [ %90, %101 ], [ %30, %48 ], [ %30, %55 ], [ %90, %99 ], [ %30, %39 ]
  tail call void @kfree_skb_reason(ptr noundef %128, i32 noundef 0) #6
  br label %262

129:                                              ; preds = %29
  %130 = load i32, ptr %6, align 4
  switch i32 %130, label %198 [
    i32 3, label %131
    i32 4, label %132
  ]

131:                                              ; preds = %129
  store i32 4, ptr %6, align 4
  br label %132

132:                                              ; preds = %131, %129
  %133 = lshr i32 %35, 3
  %134 = and i32 %133, 3
  %135 = and i32 %35, 7
  switch i32 %134, label %198 [
    i32 0, label %136
    i32 1, label %158
    i32 2, label %197
  ]

136:                                              ; preds = %132
  tail call fastcc void @llc_shdlc_rcv_ack(ptr noundef %0, i32 noundef %135) #6
  %137 = load i8, ptr %20, align 4, !range !9
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %198, label %139

139:                                              ; preds = %136
  store i8 0, ptr %20, align 4
  %140 = load i32, ptr %25, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %198

142:                                              ; preds = %139
  %143 = load i32, ptr %17, align 4
  %144 = load i32, ptr %18, align 4
  %145 = add i32 %143, 2
  %146 = add i32 %145, %144
  %147 = tail call ptr @__alloc_skb(i32 noundef %146, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %148 = icmp eq ptr %147, null
  br i1 %148, label %198, label %149

149:                                              ; preds = %142
  %150 = load i32, ptr %17, align 4
  %151 = add i32 %150, 2
  %152 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 17
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 %151
  store ptr %154, ptr %152, align 4
  %155 = getelementptr inbounds %struct.sk_buff, ptr %147, i32 0, i32 14
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr i8, ptr %156, i32 %151
  store ptr %157, ptr %155, align 8
  tail call void @skb_queue_tail(ptr noundef %24, ptr noundef nonnull %147) #6
  br label %198

158:                                              ; preds = %132
  %159 = load i32, ptr %11, align 4
  %160 = load i32, ptr %9, align 4
  %161 = icmp sgt i32 %159, %160
  %162 = icmp sle i32 %159, %135
  %163 = icmp sgt i32 %160, %135
  br i1 %161, label %166, label %164

164:                                              ; preds = %158
  %165 = and i1 %162, %163
  br i1 %165, label %168, label %198

166:                                              ; preds = %158
  %167 = or i1 %162, %163
  br i1 %167, label %168, label %198

168:                                              ; preds = %166, %164
  %169 = load i8, ptr %21, align 4, !range !9
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = tail call i32 @del_timer_sync(ptr noundef %22) #6
  store i8 0, ptr %21, align 4
  %173 = load i32, ptr %11, align 4
  br label %174

174:                                              ; preds = %171, %168
  %175 = phi i32 [ %173, %171 ], [ %159, %168 ]
  %176 = icmp eq i32 %175, %135
  br i1 %176, label %187, label %177

177:                                              ; preds = %174
  %178 = add i32 %175, 1
  %179 = srem i32 %178, 8
  store i32 %179, ptr %11, align 4
  %180 = icmp eq i32 %179, %135
  br i1 %180, label %187, label %181

181:                                              ; preds = %181, %177
  %182 = tail call ptr @skb_dequeue(ptr noundef %23) #6
  tail call void @kfree_skb_reason(ptr noundef %182, i32 noundef 0) #6
  %183 = load i32, ptr %11, align 4
  %184 = add i32 %183, 1
  %185 = srem i32 %184, 8
  store i32 %185, ptr %11, align 4
  %186 = icmp eq i32 %185, %135
  br i1 %186, label %187, label %181

187:                                              ; preds = %181, %177, %174
  %188 = tail call ptr @skb_dequeue_tail(ptr noundef %23) #6
  %189 = icmp eq ptr %188, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %190, %187
  %191 = phi ptr [ %193, %190 ], [ %188, %187 ]
  %192 = tail call ptr @skb_pull(ptr noundef nonnull %191, i32 noundef 1) #6
  tail call void @skb_queue_head(ptr noundef %24, ptr noundef nonnull %191) #6
  %193 = tail call ptr @skb_dequeue_tail(ptr noundef %23) #6
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %190

195:                                              ; preds = %190, %187
  %196 = load i32, ptr %11, align 4
  store i32 %196, ptr %9, align 4
  br label %198

197:                                              ; preds = %132
  tail call fastcc void @llc_shdlc_rcv_ack(ptr noundef %0, i32 noundef %135) #6
  store i8 1, ptr %20, align 4
  br label %198

198:                                              ; preds = %197, %195, %166, %164, %149, %142, %139, %136, %132, %129
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #6
  br label %262

199:                                              ; preds = %29
  %200 = and i32 %35, 31
  switch i32 %200, label %259 [
    i32 25, label %201
    i32 6, label %251
  ]

201:                                              ; preds = %199
  %202 = load i32, ptr %6, align 4
  switch i32 %202, label %259 [
    i32 2, label %203
    i32 1, label %203
    i32 4, label %250
  ]

203:                                              ; preds = %201, %201
  %204 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %205 = load i32, ptr %204, align 8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %31, align 4
  %209 = load i8, ptr %208, align 1
  %210 = icmp eq i32 %205, 1
  br i1 %210, label %216, label %211

211:                                              ; preds = %207
  %212 = getelementptr i8, ptr %208, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = and i8 %213, 1
  %215 = icmp ne i8 %214, 0
  br label %216

216:                                              ; preds = %211, %207, %203
  %217 = phi i8 [ %209, %211 ], [ %209, %207 ], [ 4, %203 ]
  %218 = phi i1 [ %215, %211 ], [ false, %207 ], [ false, %203 ]
  %219 = icmp ugt i8 %217, 4
  %220 = select i1 %219, i1 true, i1 %218
  br i1 %220, label %259, label %221

221:                                              ; preds = %216
  store i8 %217, ptr %15, align 4
  store i8 0, ptr %16, align 1
  %222 = load i32, ptr %17, align 4
  %223 = load i32, ptr %18, align 4
  %224 = add i32 %222, 2
  %225 = add i32 %224, %223
  %226 = tail call ptr @__alloc_skb(i32 noundef %225, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = tail call i32 @del_timer_sync(ptr noundef %8) #6
  br label %246

230:                                              ; preds = %221
  %231 = load i32, ptr %17, align 4
  %232 = add i32 %231, 2
  %233 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 17
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr i8, ptr %234, i32 %232
  store ptr %235, ptr %233, align 4
  %236 = getelementptr inbounds %struct.sk_buff, ptr %226, i32 0, i32 14
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr i8, ptr %237, i32 %232
  store ptr %238, ptr %236, align 8
  %239 = tail call ptr @skb_push(ptr noundef nonnull %226, i32 noundef 1) #6
  store i8 -26, ptr %239, align 1
  %240 = load ptr, ptr %19, align 4
  %241 = load ptr, ptr %0, align 4
  %242 = tail call i32 %240(ptr noundef %241, ptr noundef nonnull %226) #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %226, i32 noundef 0) #6
  %243 = tail call i32 @del_timer_sync(ptr noundef %8) #6
  %244 = icmp eq i32 %242, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %230
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  br label %246

246:                                              ; preds = %245, %230, %228
  %247 = phi i32 [ 0, %245 ], [ %242, %230 ], [ -12, %228 ]
  %248 = phi i32 [ 3, %245 ], [ 0, %230 ], [ 0, %228 ]
  store i32 %248, ptr %6, align 4
  store i32 %247, ptr %12, align 4
  %249 = load ptr, ptr %13, align 4
  tail call void @__wake_up(ptr noundef %249, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %259

250:                                              ; preds = %201
  store i32 -104, ptr %14, align 4
  br label %259

251:                                              ; preds = %199
  %252 = load i32, ptr %6, align 4
  switch i32 %252, label %259 [
    i32 1, label %253
    i32 2, label %256
  ]

253:                                              ; preds = %251
  %254 = load i32, ptr %7, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %251
  %257 = tail call i32 @del_timer_sync(ptr noundef %8) #6
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 3, ptr %6, align 4
  store i32 0, ptr %12, align 4
  %258 = load ptr, ptr %13, align 4
  tail call void @__wake_up(ptr noundef %258, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  store i32 4, ptr %6, align 4
  br label %259

259:                                              ; preds = %256, %253, %251, %250, %246, %216, %201, %199
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #6
  br label %262

260:                                              ; preds = %29
  %261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.llc_shdlc_handle_rcv_queue, i32 noundef %35) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #6
  br label %262

262:                                              ; preds = %260, %259, %198, %127
  %263 = tail call ptr @skb_dequeue(ptr noundef %2) #6
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %29

265:                                              ; preds = %262, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_handle_send_queue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 20
  %3 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 20, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 22
  %8 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 22, i32 1
  %9 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 10
  %10 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 13
  %12 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 12
  %13 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 15
  %17 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 14
  br label %18

18:                                               ; preds = %61, %6
  %19 = load i32, ptr %8, align 4
  %20 = load i8, ptr %9, align 4
  %21 = zext i8 %20 to i32
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  %24 = load i8, ptr %10, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load i8, ptr %11, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @del_timer_sync(ptr noundef %12) #6
  store i8 0, ptr %11, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = tail call ptr @skb_dequeue(ptr noundef %2) #6
  %33 = load i32, ptr %13, align 4
  %34 = shl i32 %33, 3
  %35 = load i32, ptr %14, align 4
  %36 = or i32 %34, %35
  %37 = trunc i32 %36 to i8
  %38 = or i8 %37, -128
  %39 = tail call ptr @skb_push(ptr noundef %32, i32 noundef 1) #6
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %41, i32 noundef %43, i1 noundef zeroext false) #6
  %44 = load ptr, ptr %15, align 4
  %45 = load ptr, ptr %0, align 4
  %46 = tail call i32 %44(ptr noundef %45, ptr noundef %32) #6
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 5
  store i32 %46, ptr %49, align 4
  br label %64

50:                                               ; preds = %31
  %51 = load i32, ptr %13, align 4
  %52 = add i32 %51, 1
  %53 = srem i32 %52, 8
  store i32 %53, ptr %13, align 4
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3
  store i32 %54, ptr %55, align 8
  tail call void @skb_queue_tail(ptr noundef %7, ptr noundef %32) #6
  %56 = load i8, ptr %16, align 4, !range !9
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  store i8 1, ptr %16, align 4
  %59 = add i32 %54, 30
  %60 = tail call i32 @mod_timer(ptr noundef %17, i32 noundef %59) #6
  br label %61

61:                                               ; preds = %58, %50
  %62 = load i32, ptr %3, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %18

64:                                               ; preds = %61, %48, %23, %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @llc_shdlc_rcv_ack(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  %8 = icmp slt i32 %4, %1
  %9 = icmp sge i32 %6, %1
  br i1 %7, label %10, label %12

10:                                               ; preds = %2
  %11 = and i1 %8, %9
  br i1 %11, label %14, label %43

12:                                               ; preds = %2
  %13 = or i1 %8, %9
  br i1 %13, label %14, label %43

14:                                               ; preds = %12, %10
  %15 = icmp eq i32 %4, %1
  br i1 %15, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 22
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %4, %16 ], [ %22, %18 ]
  %20 = tail call ptr @skb_dequeue(ptr noundef %17) #6
  tail call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #6
  %21 = add i32 %19, 1
  %22 = srem i32 %21, 8
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 22
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 15
  %30 = load i8, ptr %29, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 14
  %34 = tail call i32 @del_timer_sync(ptr noundef %33) #6
  store i8 0, ptr %29, align 4
  br label %42

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 14
  %37 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 30
  %40 = tail call i32 @mod_timer(ptr noundef %36, i32 noundef %39) #6
  %41 = getelementptr inbounds %struct.llc_shdlc, ptr %0, i32 0, i32 15
  store i8 1, ptr %41, align 4
  br label %42

42:                                               ; preds = %35, %32, %28
  store i32 %1, ptr %3, align 4
  br label %43

43:                                               ; preds = %42, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue_tail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llc_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
