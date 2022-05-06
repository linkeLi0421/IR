; ModuleID = '/llk/IR/net/bluetooth/mgmt_util.c_pt.bc'
source_filename = "../net/bluetooth/mgmt_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.114, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.114 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mgmt_hdr = type { i16, i16, i16 }
%struct.mgmt_ev_cmd_status = type <{ i16, i8 }>
%struct.hci_mon_hdr = type { i16, i16, i16 }
%struct.mgmt_ev_cmd_complete = type <{ i16, i8, [0 x i8] }>
%struct.mgmt_pending_cmd = type { %struct.list_head, i16, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.95, [0 x i32], %union.anon.96, i16, i16, %union.anon.97, %struct.refcount_struct, [0 x i32], %union.anon.98 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.53 }
%union.anon.53 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { i32 }
%union.anon.96 = type { %struct.hlist_node }
%union.anon.97 = type { i32 }
%union.anon.98 = type { i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mgmt_alloc_skb(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, 6
  %5 = tail call ptr @__alloc_skb(i32 noundef %4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 6
  store ptr %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 6
  store ptr %13, ptr %11, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 8
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  store i16 %1, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_send_event_skb(i16 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %11, ptr %12, align 8
  %13 = icmp eq i16 %0, 3
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %7, align 8
  %20 = trunc i32 %19 to i16
  tail call void @hci_send_monitor_ctrl_event(ptr noundef %10, i16 noundef zeroext %16, ptr noundef %18, i16 noundef zeroext %20, i64 noundef %11, i32 noundef %2, ptr noundef %3) #5
  br label %21

21:                                               ; preds = %14, %6
  %22 = tail call ptr @skb_push(ptr noundef nonnull %1, i32 noundef 6) #5
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %24 = load i16, ptr %23, align 4
  store i16 %24, ptr %22, align 1
  %25 = icmp eq ptr %10, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i16 [ %28, %26 ], [ -1, %21 ]
  %31 = getelementptr inbounds %struct.mgmt_hdr, ptr %22, i32 0, i32 1
  store i16 %30, ptr %31, align 1
  %32 = trunc i32 %8 to i16
  %33 = getelementptr inbounds %struct.mgmt_hdr, ptr %22, i32 0, i32 2
  store i16 %32, ptr %33, align 1
  tail call void @hci_send_to_channel(i16 noundef zeroext %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %1, i32 noundef 0) #5
  br label %34

34:                                               ; preds = %29, %4
  %35 = phi i32 [ 0, %29 ], [ -22, %4 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_monitor_ctrl_event(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_to_channel(i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_send_event(i16 noundef zeroext %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef readonly %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = zext i16 %4 to i32
  %9 = add nuw nsw i32 %8, 6
  %10 = tail call ptr @__alloc_skb(i32 noundef %9, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 6
  store ptr %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %17, i32 6
  store ptr %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 8
  store ptr %1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 12
  store i16 %0, ptr %20, align 4
  %21 = icmp eq ptr %3, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = tail call ptr @skb_put(ptr noundef nonnull %10, i32 noundef %8) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr nonnull align 1 %3, i32 %8, i1 false) #5
  br label %24

24:                                               ; preds = %22, %12
  %25 = tail call i32 @mgmt_send_event_skb(i16 noundef zeroext %2, ptr noundef nonnull %10, i32 noundef %5, ptr noundef %6)
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi i32 [ %25, %24 ], [ -12, %7 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call ptr @__alloc_skb(i32 noundef 9, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @skb_put(ptr noundef nonnull %5, i32 noundef 6) #5
  store i16 2, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mgmt_hdr, ptr %8, i32 0, i32 1
  store i16 %1, ptr %9, align 1
  %10 = getelementptr inbounds %struct.mgmt_hdr, ptr %8, i32 0, i32 2
  store i16 3, ptr %10, align 1
  %11 = tail call ptr @skb_put(ptr noundef nonnull %5, i32 noundef 3) #5
  %12 = getelementptr inbounds %struct.mgmt_ev_cmd_status, ptr %11, i32 0, i32 1
  store i8 %3, ptr %12, align 1
  store i16 %2, ptr %11, align 1
  %13 = load i16, ptr %9, align 1
  %14 = tail call i32 @hci_sock_get_cookie(ptr noundef %0) #5
  %15 = tail call fastcc ptr @create_monitor_ctrl_event(i16 noundef zeroext %13, i32 noundef %14, i16 noundef zeroext 2, i16 noundef zeroext 3, ptr noundef %11)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  br label %22

20:                                               ; preds = %7
  %21 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #5
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i64 [ %21, %20 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 2
  store i64 %23, ptr %24, align 8
  %25 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %5) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %28

28:                                               ; preds = %27, %22
  br i1 %16, label %30, label %29

29:                                               ; preds = %28
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0, ptr noundef null) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #5
  br label %30

30:                                               ; preds = %29, %28, %4
  %31 = phi i32 [ -12, %4 ], [ %25, %29 ], [ %25, %28 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_ctrl_event(i16 noundef zeroext %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = zext i16 %3 to i32
  %7 = add nuw nsw i32 %6, 14
  %8 = tail call ptr @__alloc_skb(i32 noundef %7, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 8
  store ptr %16, ptr %14, align 8
  %17 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef 4) #5
  store i32 %1, ptr %17, align 1
  %18 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef 2) #5
  store i16 %2, ptr %18, align 1
  %19 = icmp eq ptr %4, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef %6) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr nonnull align 1 %4, i32 %6, i1 false) #5
  br label %22

22:                                               ; preds = %20, %10
  %23 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #5
  %24 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 2
  store i64 %23, ptr %24, align 8
  %25 = tail call ptr @skb_push(ptr noundef nonnull %8, i32 noundef 6) #5
  store i16 17, ptr %25, align 1
  %26 = getelementptr inbounds %struct.hci_mon_hdr, ptr %25, i32 0, i32 1
  store i16 %0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i16
  %30 = add i16 %29, -6
  %31 = getelementptr inbounds %struct.hci_mon_hdr, ptr %25, i32 0, i32 2
  store i16 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %22, %5
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_sock_get_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = add i32 %5, 9
  %8 = tail call ptr @__alloc_skb(i32 noundef %7, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef 6) #5
  store i16 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.mgmt_hdr, ptr %11, i32 0, i32 1
  store i16 %1, ptr %12, align 1
  %13 = add i32 %5, 3
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.mgmt_hdr, ptr %11, i32 0, i32 2
  store i16 %14, ptr %15, align 1
  %16 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef %13) #5
  store i16 %2, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mgmt_ev_cmd_complete, ptr %16, i32 0, i32 1
  store i8 %3, ptr %17, align 1
  %18 = icmp eq ptr %4, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mgmt_ev_cmd_complete, ptr %16, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr nonnull align 1 %4, i32 %5, i1 false)
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i16, ptr %12, align 1
  %23 = tail call i32 @hci_sock_get_cookie(ptr noundef %0) #5
  %24 = tail call fastcc ptr @create_monitor_ctrl_event(i16 noundef zeroext %22, i32 noundef %23, i16 noundef zeroext 1, i16 noundef zeroext %14, ptr noundef %16)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  br label %31

29:                                               ; preds = %21
  %30 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #5
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i64 [ %30, %29 ], [ %28, %26 ]
  %33 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 2
  store i64 %32, ptr %33, align 8
  %34 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %8) #5
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #5
  br label %37

37:                                               ; preds = %36, %31
  br i1 %25, label %39, label %38

38:                                               ; preds = %37
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0, ptr noundef null) #5
  tail call void @kfree_skb_reason(ptr noundef nonnull %24, i32 noundef 0) #5
  br label %39

39:                                               ; preds = %38, %37, %6
  %40 = phi i32 [ -12, %6 ], [ %34, %38 ], [ %34, %37 ]
  ret i32 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_find(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 184
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %3
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i16 @hci_sock_get_channel(ptr noundef %10) #5
  %12 = icmp eq i16 %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %8, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %7
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %13, %3
  %21 = phi ptr [ null, %3 ], [ null, %17 ], [ %8, %13 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hci_sock_get_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_find_data(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef readonly %2, ptr noundef readnone %3) local_unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 184
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %17, %4
  %9 = phi ptr [ %18, %17 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %13, %4
  %21 = phi ptr [ null, %4 ], [ null, %17 ], [ %9, %13 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_pending_foreach(i16 noundef zeroext %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 184
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = icmp eq i16 %0, 0
  br label %10

10:                                               ; preds = %18, %8
  %11 = phi ptr [ %6, %8 ], [ %12, %18 ]
  %12 = load ptr, ptr %11, align 4
  br i1 %9, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %11, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = icmp eq i16 %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10
  tail call void %2(ptr noundef %11, ptr noundef %3) #5
  br label %18

18:                                               ; preds = %17, %13
  %19 = icmp eq ptr %12, %5
  br i1 %19, label %20, label %10

20:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 40) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %7, i32 0, i32 1
  store i16 %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %7, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = zext i16 %4 to i32
  %16 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef %15, i32 noundef 3264) #5
  %17 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %7, i32 0, i32 3
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #5
  br label %33

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %7, i32 0, i32 4
  store i32 %15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %7, i32 0, i32 5
  store ptr %0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #5, !srcloc !8
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #5, !srcloc !9
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !10

27:                                               ; preds = %20
  %28 = add i32 %25, 1
  %29 = or i32 %28, %25
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31, !prof !11

31:                                               ; preds = %27, %20
  %32 = phi i32 [ 2, %20 ], [ 1, %27 ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %32) #5
  br label %33

33:                                               ; preds = %31, %27, %19, %5
  %34 = phi ptr [ null, %19 ], [ null, %5 ], [ %7, %27 ], [ %7, %31 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 184
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %6, ptr %11, align 4
  store ptr %10, ptr %6, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  store volatile ptr %6, ptr %9, align 4
  br label %13

13:                                               ; preds = %8, %5
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_pending_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #5, !srcloc !8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #5, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #5
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void @sk_free(ptr noundef %3) #5
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_pending_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %6 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #5, !srcloc !8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #5, !srcloc !13
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #5
  br label %16

15:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void @sk_free(ptr noundef %7) #5
  br label %16

16:                                               ; preds = %15, %14, %12
  %17 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 473932, i64 2147963903, i64 2147963929, i64 2147963976, i64 2147963998, i64 2147964026, i64 2147964046}
!9 = !{i64 2147976776, i64 2147976808, i64 2147976837, i64 2147976871, i64 2147976902, i64 2147976925}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148076974}
!13 = !{i64 2147979133, i64 2147979165, i64 2147979194, i64 2147979228, i64 2147979259, i64 2147979282}
!14 = !{i64 2149840269}
