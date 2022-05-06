; ModuleID = '/llk/IR/net/nfc/llcp_commands.c_pt.bc'
source_filename = "../net/nfc/llcp_commands.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfc_llcp_sdp_tlv = type { ptr, i8, ptr, i8, i8, i32, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.nfc_llcp_sock = type { %struct.sock, ptr, ptr, i32, i32, i8, i8, ptr, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }

@llcp_tlv_length = internal unnamed_addr constant [10 x i8] c"\00\01\02\02\01\01\00\01\00\02", align 1
@nfc_llcp_build_sdreq_tlv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"net/nfc/llcp_commands.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [39 x i8] c"\013llcp: %s: Invalid gt tlv value 0x%x\0A\00", align 1
@__func__.nfc_llcp_parse_gb_tlv = private unnamed_addr constant [22 x i8] c"nfc_llcp_parse_gb_tlv\00", align 1
@__func__.nfc_llcp_parse_connection_tlv = private unnamed_addr constant [30 x i8] c"nfc_llcp_parse_connection_tlv\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\013llcp: %s: error %d\0A\00", align 1
@__func__.nfc_llcp_send_connect = private unnamed_addr constant [22 x i8] c"nfc_llcp_send_connect\00", align 1
@__func__.nfc_llcp_send_cc = private unnamed_addr constant [17 x i8] c"nfc_llcp_send_cc\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\013llcp: %s: Pending queue is full %d frames\0A\00", align 1
@__func__.nfc_llcp_send_i_frame = private unnamed_addr constant [22 x i8] c"nfc_llcp_send_i_frame\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013llcp: %s: Tx queue is full %d frames\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\013llcp: %s: Could not allocate PDU (error=%d)\0A\00", align 1
@__func__.nfc_llcp_send_ui_frame = private unnamed_addr constant [23 x i8] c"nfc_llcp_send_ui_frame\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\013llcp: %s: Could not allocate PDU\0A\00", align 1
@__func__.llcp_allocate_pdu = private unnamed_addr constant [18 x i8] c"llcp_allocate_pdu\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_build_tlv(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp ugt i8 %0, 9
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = zext i8 %0 to i32
  %8 = lshr i32 321, %7
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i8 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr [10 x i8], ptr @llcp_tlv_length, i32 0, i32 %7
  %15 = load i8, ptr %14, align 1
  %16 = select i1 %10, i8 %2, i8 %15
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, 2
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %3, align 1
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  store i8 %0, ptr %20, align 64
  %23 = getelementptr i8, ptr %20, i32 1
  store i8 %16, ptr %23, align 1
  %24 = getelementptr i8, ptr %20, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %24, ptr align 1 %1, i32 %17, i1 false)
  br label %25

25:                                               ; preds = %22, %13, %6, %4
  %26 = phi ptr [ %20, %22 ], [ null, %4 ], [ null, %6 ], [ null, %13 ]
  ret ptr %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_build_sdres_tlv(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %4, i32 0, i32 1
  store i8 4, ptr %7, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store ptr null, ptr %4, align 8
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %20

12:                                               ; preds = %6
  store i8 9, ptr %9, align 8
  %13 = getelementptr i8, ptr %9, i32 1
  store i8 2, ptr %13, align 1
  %14 = getelementptr i8, ptr %9, i32 2
  store i8 %0, ptr %14, align 2
  %15 = getelementptr i8, ptr %9, i32 3
  store i8 %1, ptr %15, align 1
  store ptr %9, ptr %4, align 8
  %16 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %4, i32 0, i32 3
  store i8 %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %4, i32 0, i32 4
  store i8 %1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %4, i32 0, i32 6
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %4, i32 0, i32 6, i32 1
  store ptr null, ptr %19, align 8
  br label %20

20:                                               ; preds = %12, %11, %2
  %21 = phi ptr [ null, %11 ], [ %4, %12 ], [ null, %2 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_build_sdreq_tlv(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 251
  %5 = load i1, ptr @nfc_llcp_build_sdreq_tlv.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  store i1 true, ptr @nfc_llcp_build_sdreq_tlv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #10
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %42, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 28) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = trunc i32 %2 to i8
  %16 = add nuw i8 %15, 3
  %17 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %12, i32 0, i32 1
  store i8 %16, ptr %17, align 4
  %18 = add nsw i32 %2, -1
  %19 = getelementptr i8, ptr %1, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = add nuw i8 %15, 2
  store i8 %23, ptr %17, align 4
  br label %24

24:                                               ; preds = %22, %14
  %25 = phi i8 [ %23, %22 ], [ %16, %14 ]
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %26, 1
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #8
  store ptr %28, ptr %12, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %12) #10
  br label %42

31:                                               ; preds = %24
  store i8 8, ptr %28, align 64
  %32 = add i8 %25, -2
  %33 = getelementptr i8, ptr %28, i32 1
  store i8 %32, ptr %33, align 1
  %34 = getelementptr i8, ptr %28, i32 2
  store i8 %0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %12, i32 0, i32 3
  store i8 %0, ptr %35, align 4
  %36 = getelementptr i8, ptr %28, i32 3
  %37 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %12, i32 0, i32 2
  store ptr %36, ptr %37, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %1, i32 %2, i1 false)
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %12, i32 0, i32 5
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %12, i32 0, i32 6
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %12, i32 0, i32 6, i32 1
  store ptr null, ptr %41, align 8
  br label %42

42:                                               ; preds = %31, %30, %10, %9
  %43 = phi ptr [ null, %30 ], [ %12, %31 ], [ null, %9 ], [ null, %10 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_free_sdp_tlv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %2) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_free_sdp_tlv_list(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -20
  %5 = icmp eq ptr %4, null
  %6 = or i1 %3, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %16, %1
  %8 = phi ptr [ %18, %16 ], [ %4, %1 ]
  %9 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %8, i32 0, i32 6, i32 1
  %12 = load ptr, ptr %11, align 4
  store volatile ptr %10, ptr %12, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  store volatile ptr %12, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %7
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %17 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %17) #10
  tail call void @kfree(ptr noundef nonnull %8) #10
  %18 = getelementptr i8, ptr %10, i32 -20
  %19 = icmp eq ptr %18, null
  %20 = or i1 %13, %19
  br i1 %20, label %21, label %7

21:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_parse_gb_tlv(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = icmp eq i16 %2, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 27
  %10 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 26
  %11 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 28
  %12 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 25
  %13 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 24
  br label %14

14:                                               ; preds = %64, %8
  %15 = phi i32 [ 0, %8 ], [ %69, %64 ]
  %16 = phi ptr [ %1, %8 ], [ %68, %64 ]
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %16, i32 1
  %19 = load i8, ptr %18, align 1
  switch i8 %17, label %61 [
    i8 1, label %20
    i8 2, label %27
    i8 3, label %37
    i8 4, label %45
    i8 7, label %54
  ]

20:                                               ; preds = %14
  %21 = icmp eq i8 %19, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %16, i32 2
  %24 = load i8, ptr %23, align 1
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i8 [ %24, %22 ], [ 0, %20 ]
  store i8 %26, ptr %13, align 2
  br label %64

27:                                               ; preds = %14
  %28 = icmp eq i8 %19, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %16, i32 2
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, -249
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i16 [ %33, %29 ], [ 0, %27 ]
  %36 = add nsw i16 %35, 128
  store i16 %36, ptr %12, align 4
  br label %64

37:                                               ; preds = %14
  %38 = icmp eq i8 %19, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %16, i32 2
  %41 = load i16, ptr %40, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #10
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i16 [ %42, %39 ], [ 0, %37 ]
  store i16 %44, ptr %11, align 2
  br label %64

45:                                               ; preds = %14
  %46 = icmp eq i8 %19, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = getelementptr i8, ptr %16, i32 2
  %49 = load i8, ptr %48, align 1
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i8 [ %49, %47 ], [ 0, %45 ]
  %52 = zext i8 %51 to i16
  %53 = mul nuw nsw i16 %52, 10
  store i16 %53, ptr %10, align 2
  br label %64

54:                                               ; preds = %14
  %55 = icmp eq i8 %19, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = getelementptr i8, ptr %16, i32 2
  %58 = load i8, ptr %57, align 1
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i8 [ %58, %56 ], [ 0, %54 ]
  store i8 %60, ptr %9, align 4
  br label %64

61:                                               ; preds = %14
  %62 = zext i8 %17 to i32
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nfc_llcp_parse_gb_tlv, i32 noundef %62) #11
  br label %64

64:                                               ; preds = %61, %59, %50, %43, %34, %25
  %65 = zext i8 %19 to i32
  %66 = add nuw nsw i32 %65, 2
  %67 = add nuw nsw i32 %66, %15
  %68 = getelementptr i8, ptr %16, i32 %66
  %69 = and i32 %67, 255
  %70 = icmp ult i32 %69, %6
  br i1 %70, label %14, label %71

71:                                               ; preds = %64, %5, %3
  %72 = phi i32 [ -19, %3 ], [ 0, %5 ], [ 0, %64 ]
  ret i32 %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_parse_connection_tlv(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = icmp eq i16 %2, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 11
  %10 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 12
  br label %11

11:                                               ; preds = %38, %8
  %12 = phi i32 [ 0, %8 ], [ %43, %38 ]
  %13 = phi ptr [ %1, %8 ], [ %42, %38 ]
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %13, i32 1
  %16 = load i8, ptr %15, align 1
  switch i8 %14, label %35 [
    i8 2, label %17
    i8 5, label %27
    i8 6, label %38
  ]

17:                                               ; preds = %11
  %18 = icmp eq i8 %16, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %13, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, -249
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #10
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i16 [ %23, %19 ], [ 0, %17 ]
  %26 = add nsw i16 %25, 128
  store i16 %26, ptr %10, align 2
  br label %38

27:                                               ; preds = %11
  %28 = icmp eq i8 %16, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %13, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 15
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i8 [ %32, %29 ], [ 0, %27 ]
  store i8 %34, ptr %9, align 8
  br label %38

35:                                               ; preds = %11
  %36 = zext i8 %14 to i32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nfc_llcp_parse_connection_tlv, i32 noundef %36) #11
  br label %38

38:                                               ; preds = %35, %33, %24, %11
  %39 = zext i8 %16 to i32
  %40 = add nuw nsw i32 %39, 2
  %41 = add nuw nsw i32 %40, %12
  %42 = getelementptr i8, ptr %13, i32 %40
  %43 = and i32 %41, 255
  %44 = icmp ult i32 %43, %6
  br i1 %44, label %11, label %45

45:                                               ; preds = %38, %5, %3
  %46 = phi i32 [ -107, %3 ], [ 0, %5 ], [ 0, %38 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_disconnect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = call ptr @nfc_alloc_send_skb(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 64, i32 noundef 2, ptr noundef nonnull %2) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.llcp_allocate_pdu) #11
  br label %19

19:                                               ; preds = %17, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %30

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = load i8, ptr %11, align 8
  %24 = shl i8 %22, 2
  %25 = or i8 %24, 1
  %26 = or i8 %23, 64
  %27 = call ptr @skb_put(ptr noundef nonnull %15, i32 noundef 2) #10
  store i8 %25, ptr %27, align 1
  %28 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 %26, ptr %28, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %29 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 5
  call void @skb_queue_tail(ptr noundef %29, ptr noundef nonnull %15) #10
  br label %30

30:                                               ; preds = %20, %19, %6, %1
  %31 = phi i32 [ 0, %20 ], [ -19, %1 ], [ -19, %6 ], [ -12, %19 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_symm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @nfc_llcp_find_local(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, 3
  %10 = add i32 %9, %8
  %11 = and i32 %10, 65535
  %12 = tail call ptr @__alloc_skb(i32 noundef %11, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 8
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 %16
  store ptr %22, ptr %20, align 8
  %23 = tail call ptr @skb_put(ptr noundef nonnull %12, i32 noundef 2) #10
  store i8 0, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 0, ptr %24, align 1
  %25 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  %26 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  tail call void @nfc_llcp_send_to_raw_sock(ptr noundef nonnull %2, ptr noundef nonnull %12, i8 noundef zeroext 1) #10
  %27 = getelementptr inbounds %struct.nfc_llcp_local, ptr %2, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @nfc_data_exchange(ptr noundef %0, i32 noundef %28, ptr noundef nonnull %12, ptr noundef nonnull @nfc_llcp_recv, ptr noundef nonnull %2) #10
  br label %30

30:                                               ; preds = %14, %4, %1
  %31 = phi i32 [ %29, %14 ], [ -19, %1 ], [ -12, %4 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_find_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_send_to_raw_sock(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_data_exchange(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_recv(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_connect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %95, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %85, label %15

15:                                               ; preds = %10
  %16 = and i32 %12, 255
  %17 = add nuw nsw i32 %16, 2
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %85, label %20

20:                                               ; preds = %15
  store i8 6, ptr %18, align 64
  %21 = getelementptr i8, ptr %18, i32 1
  store i8 %13, ptr %21, align 1
  %22 = getelementptr i8, ptr %18, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %22, ptr nonnull align 1 %8, i32 %16, i1 false) #10
  %23 = and i32 %17, 255
  %24 = add nuw nsw i32 %23, 9
  br label %25

25:                                               ; preds = %20, %6
  %26 = phi i32 [ 0, %6 ], [ %23, %20 ]
  %27 = phi ptr [ null, %6 ], [ %18, %20 ]
  %28 = phi i32 [ 9, %6 ], [ %24, %20 ]
  %29 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 10
  %30 = load i16, ptr %29, align 2
  %31 = and i16 %30, 248
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 15
  %35 = load i16, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi i16 [ %35, %33 ], [ %30, %25 ]
  %38 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 9
  %39 = load i8, ptr %38, align 4
  %40 = icmp ugt i8 %39, 15
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 14
  %43 = load i8, ptr %42, align 1
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i8 [ %43, %41 ], [ %39, %36 ]
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 4) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %85, label %49

49:                                               ; preds = %44
  store i8 2, ptr %47, align 8
  %50 = getelementptr i8, ptr %47, i32 1
  store i8 2, ptr %50, align 1
  %51 = getelementptr i8, ptr %47, i32 2
  store i16 %37, ptr %51, align 2
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 3) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %85, label %55

55:                                               ; preds = %49
  store i8 5, ptr %53, align 8
  %56 = getelementptr i8, ptr %53, i32 1
  store i8 1, ptr %56, align 1
  %57 = getelementptr i8, ptr %53, i32 2
  store i8 %45, ptr %57, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !9
  %58 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 5
  %59 = load i8, ptr %58, align 8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = call ptr @nfc_alloc_send_skb(ptr noundef %63, ptr noundef %0, i32 noundef 64, i32 noundef %28, ptr noundef nonnull %2) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.llcp_allocate_pdu) #11
  br label %68

68:                                               ; preds = %66, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %85

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = load i8, ptr %58, align 8
  %73 = shl i8 %71, 2
  %74 = or i8 %73, 1
  %75 = call ptr @skb_put(ptr noundef nonnull %64, i32 noundef 2) #10
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds i8, ptr %75, i32 1
  store i8 %72, ptr %76, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %77 = icmp eq ptr %27, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = call ptr @skb_put(ptr noundef nonnull %64, i32 noundef %26) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %79, ptr nonnull align 64 %27, i32 %26, i1 false) #10
  br label %80

80:                                               ; preds = %78, %69
  %81 = call ptr @skb_put(ptr noundef nonnull %64, i32 noundef 4) #10
  %82 = load i32, ptr %47, align 8
  store i32 %82, ptr %81, align 1
  %83 = call ptr @skb_put(ptr noundef nonnull %64, i32 noundef 3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %83, ptr noundef nonnull align 8 dereferenceable(3) %53, i32 3, i1 false) #10
  %84 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 5
  call void @skb_queue_tail(ptr noundef %84, ptr noundef nonnull %64) #10
  br label %90

85:                                               ; preds = %68, %49, %44, %15, %10
  %86 = phi ptr [ %27, %68 ], [ null, %10 ], [ null, %15 ], [ %27, %44 ], [ %27, %49 ]
  %87 = phi ptr [ %47, %68 ], [ null, %10 ], [ null, %15 ], [ null, %44 ], [ %47, %49 ]
  %88 = phi ptr [ %53, %68 ], [ null, %10 ], [ null, %15 ], [ null, %44 ], [ null, %49 ]
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nfc_llcp_send_connect, i32 noundef -12) #11
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ -12, %85 ], [ 0, %80 ]
  %92 = phi ptr [ %88, %85 ], [ %53, %80 ]
  %93 = phi ptr [ %87, %85 ], [ %47, %80 ]
  %94 = phi ptr [ %86, %85 ], [ %27, %80 ]
  call void @kfree(ptr noundef %94) #10
  call void @kfree(ptr noundef %93) #10
  call void @kfree(ptr noundef %92) #10
  br label %95

95:                                               ; preds = %90, %1
  %96 = phi i32 [ %91, %90 ], [ -19, %1 ]
  ret i32 %96
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_cc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 10
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 248
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 15
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i16 [ %13, %11 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 4
  %18 = icmp ugt i8 %17, 15
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 14
  %21 = load i8, ptr %20, align 1
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i8 [ %21, %19 ], [ %17, %14 ]
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 4) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %22
  store i8 2, ptr %25, align 8
  %28 = getelementptr i8, ptr %25, i32 1
  store i8 2, ptr %28, align 1
  %29 = getelementptr i8, ptr %25, i32 2
  store i16 %15, ptr %29, align 2
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 3) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %27
  store i8 5, ptr %31, align 8
  %34 = getelementptr i8, ptr %31, i32 1
  store i8 1, ptr %34, align 1
  %35 = getelementptr i8, ptr %31, i32 2
  store i8 %23, ptr %35, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !9
  %36 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 5
  %37 = load i8, ptr %36, align 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = call ptr @nfc_alloc_send_skb(ptr noundef %41, ptr noundef %0, i32 noundef 64, i32 noundef 9, ptr noundef nonnull %2) #10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.llcp_allocate_pdu) #11
  br label %46

46:                                               ; preds = %44, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %60

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 6
  %49 = load i8, ptr %48, align 1
  %50 = load i8, ptr %36, align 8
  %51 = shl i8 %49, 2
  %52 = or i8 %51, 1
  %53 = or i8 %50, -128
  %54 = call ptr @skb_put(ptr noundef nonnull %42, i32 noundef 2) #10
  store i8 %52, ptr %54, align 1
  %55 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 %53, ptr %55, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %56 = call ptr @skb_put(ptr noundef nonnull %42, i32 noundef 4) #10
  %57 = load i32, ptr %25, align 8
  store i32 %57, ptr %56, align 1
  %58 = call ptr @skb_put(ptr noundef nonnull %42, i32 noundef 3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %58, ptr noundef nonnull align 8 dereferenceable(3) %31, i32 3, i1 false) #10
  %59 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 5
  call void @skb_queue_tail(ptr noundef %59, ptr noundef nonnull %42) #10
  br label %63

60:                                               ; preds = %46, %27, %22
  %61 = phi ptr [ %31, %46 ], [ null, %22 ], [ null, %27 ]
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nfc_llcp_send_cc, i32 noundef -12) #11
  br label %63

63:                                               ; preds = %60, %47
  %64 = phi i32 [ -12, %60 ], [ 0, %47 ]
  %65 = phi ptr [ %61, %60 ], [ %31, %47 ]
  call void @kfree(ptr noundef %25) #10
  call void @kfree(ptr noundef %65) #10
  br label %66

66:                                               ; preds = %63, %1
  %67 = phi i32 [ %64, %63 ], [ -19, %1 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_snl_sdres(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 15
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %2, 3
  %15 = add i32 %14, %11
  %16 = add i32 %15, %13
  %17 = and i32 %16, 65535
  %18 = tail call ptr @__alloc_skb(i32 noundef %17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr %10, align 8
  %22 = add i32 %21, 1
  %23 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  store ptr %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 %22
  store ptr %28, ptr %26, align 8
  %29 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef 2) #10
  store i8 6, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 65, ptr %30, align 1
  %31 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %20, %9, %5, %3
  %33 = phi ptr [ %18, %20 ], [ inttoptr (i32 -12 to ptr), %9 ], [ inttoptr (i32 -19 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %3 ]
  %34 = ptrtoint ptr %33 to i32
  br label %64

35:                                               ; preds = %20
  %36 = load ptr, ptr %1, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -20
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %62, label %41

41:                                               ; preds = %56, %35
  %42 = phi ptr [ %59, %56 ], [ %38, %35 ]
  %43 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %42, i32 0, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %48) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %45, i32 %48, i1 false) #10
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %42, i32 0, i32 6, i32 1
  %52 = load ptr, ptr %51, align 4
  store volatile ptr %50, ptr %52, align 4
  %53 = icmp eq ptr %50, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  store volatile ptr %52, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %41
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  %57 = load ptr, ptr %42, align 4
  tail call void @kfree(ptr noundef %57) #10
  tail call void @kfree(ptr noundef nonnull %42) #10
  %58 = icmp eq ptr %44, null
  %59 = getelementptr i8, ptr %44, i32 -20
  %60 = icmp eq ptr %59, null
  %61 = or i1 %58, %60
  br i1 %61, label %62, label %41

62:                                               ; preds = %56, %35
  %63 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %63, ptr noundef nonnull %18) #10
  br label %64

64:                                               ; preds = %62, %32
  %65 = phi i32 [ %34, %32 ], [ 0, %62 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_snl_sdreq(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 15
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %2, 3
  %15 = add i32 %14, %11
  %16 = add i32 %15, %13
  %17 = and i32 %16, 65535
  %18 = tail call ptr @__alloc_skb(i32 noundef %17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr %10, align 8
  %22 = add i32 %21, 1
  %23 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  store ptr %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 %22
  store ptr %28, ptr %26, align 8
  %29 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef 2) #10
  store i8 6, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 65, ptr %30, align 1
  %31 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %20, %9, %5, %3
  %33 = phi ptr [ %18, %20 ], [ inttoptr (i32 -12 to ptr), %9 ], [ inttoptr (i32 -19 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %3 ]
  %34 = ptrtoint ptr %33 to i32
  br label %83

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 29
  tail call void @mutex_lock(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 30
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 31
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 26
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = mul nuw nsw i32 %45, 3
  %47 = tail call i32 @__msecs_to_jiffies(i32 noundef %46) #10
  %48 = add i32 %47, %42
  %49 = tail call i32 @mod_timer(ptr noundef %41, i32 noundef %48) #10
  br label %50

50:                                               ; preds = %40, %35
  %51 = load ptr, ptr %1, align 4
  %52 = icmp eq ptr %51, null
  %53 = getelementptr i8, ptr %51, i32 -20
  %54 = icmp eq ptr %53, null
  %55 = or i1 %52, %54
  br i1 %55, label %81, label %56

56:                                               ; preds = %76, %50
  %57 = phi ptr [ %78, %76 ], [ %53, %50 ]
  %58 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %57, i32 0, i32 1
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef %63) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %64, ptr align 1 %60, i32 %63, i1 false) #10
  %65 = load ptr, ptr %58, align 4
  %66 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, ptr %57, i32 0, i32 6, i32 1
  %67 = load ptr, ptr %66, align 4
  store volatile ptr %65, ptr %67, align 4
  %68 = icmp eq ptr %65, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  store volatile ptr %67, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %56
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  %72 = load ptr, ptr %37, align 4
  store volatile ptr %72, ptr %58, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.hlist_node, ptr %72, i32 0, i32 1
  store volatile ptr %58, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %71
  store volatile ptr %58, ptr %37, align 4
  store volatile ptr %37, ptr %66, align 4
  %77 = icmp eq ptr %59, null
  %78 = getelementptr i8, ptr %59, i32 -20
  %79 = icmp eq ptr %78, null
  %80 = or i1 %77, %79
  br i1 %80, label %81, label %56

81:                                               ; preds = %76, %50
  tail call void @mutex_unlock(ptr noundef %36) #10
  %82 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 5
  tail call void @skb_queue_tail(ptr noundef %82, ptr noundef nonnull %18) #10
  br label %83

83:                                               ; preds = %81, %32
  %84 = phi i32 [ %34, %32 ], [ 0, %81 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_dm(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 15
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, 4
  %16 = add i32 %15, %14
  %17 = and i32 %16, 65535
  %18 = tail call ptr @__alloc_skb(i32 noundef %17, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %10
  %21 = load i32, ptr %11, align 8
  %22 = add i32 %21, 1
  %23 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %22
  store ptr %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i32 %22
  store ptr %28, ptr %26, align 8
  %29 = shl i8 %2, 2
  %30 = or i8 %29, 1
  %31 = or i8 %1, -64
  %32 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef 2) #10
  store i8 %30, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 %31, ptr %33, align 1
  %34 = tail call ptr @skb_put(ptr noundef nonnull %18, i32 noundef 1) #10
  store i8 %3, ptr %34, align 1
  %35 = getelementptr inbounds %struct.nfc_llcp_local, ptr %0, i32 0, i32 5
  tail call void @skb_queue_head(ptr noundef %35, ptr noundef nonnull %18) #10
  br label %36

36:                                               ; preds = %20, %10, %6, %4
  %37 = phi i32 [ 0, %20 ], [ -19, %4 ], [ -19, %6 ], [ -12, %10 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_i_frame(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %94, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 17
  %10 = load i8, ptr %9, align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 20, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 11
  %16 = load i8, ptr %15, align 8
  %17 = zext i8 %16 to i32
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 19, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl nuw nsw i32 %17, 1
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nfc_llcp_send_i_frame, i32 noundef %14) #11
  br label %94

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 19, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 11
  %30 = load i8, ptr %29, align 8
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 1
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nfc_llcp_send_i_frame, i32 noundef %28) #11
  br label %94

36:                                               ; preds = %26, %19, %12
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 1060032) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %94, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %41 = icmp slt i32 %2, 0
  %42 = load i1, ptr @check_copy_size.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %39
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %49

46:                                               ; preds = %39
  br i1 %41, label %49, label %47, !prof !8

47:                                               ; preds = %46
  %48 = tail call i32 @_copy_from_iter(ptr noundef nonnull %37, i32 noundef %2, ptr noundef %40) #10
  br label %49

49:                                               ; preds = %47, %46, %45
  %50 = phi i32 [ %48, %47 ], [ 0, %46 ], [ 0, %45 ]
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %52, label %58, !prof !10

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 12
  %54 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 5
  %55 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %56 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 6
  %57 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 19
  br label %59

58:                                               ; preds = %49
  tail call void @iov_iter_revert(ptr noundef %40, i32 noundef %50) #10
  tail call void @kfree(ptr noundef nonnull %37) #10
  br label %94

59:                                               ; preds = %88, %52
  %60 = phi ptr [ %91, %88 ], [ %37, %52 ]
  %61 = phi i32 [ %90, %88 ], [ %2, %52 ]
  %62 = load i16, ptr %53, align 2
  %63 = icmp ugt i16 %62, 2175
  %64 = select i1 %63, i16 128, i16 %62
  %65 = zext i16 %64 to i32
  %66 = call i32 @llvm.umin.i32(i32 %61, i32 %65)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %67 = load i8, ptr %54, align 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %59
  %70 = load ptr, ptr %55, align 8
  %71 = add nuw nsw i32 %66, 3
  %72 = call ptr @nfc_alloc_send_skb(ptr noundef %70, ptr noundef %0, i32 noundef 64, i32 noundef %71, ptr noundef nonnull %4) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.llcp_allocate_pdu) #11
  br label %76

76:                                               ; preds = %74, %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @kfree(ptr noundef nonnull %37) #10
  br label %94

77:                                               ; preds = %69
  %78 = load i8, ptr %56, align 1
  %79 = load i8, ptr %54, align 8
  %80 = shl i8 %78, 2
  %81 = or i8 %80, 3
  %82 = call ptr @skb_put(ptr noundef nonnull %72, i32 noundef 2) #10
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 %79, ptr %83, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %84 = call ptr @skb_put(ptr noundef nonnull %72, i32 noundef 1) #10
  %85 = icmp eq i32 %66, 0
  br i1 %85, label %88, label %86, !prof !8

86:                                               ; preds = %77
  %87 = call ptr @skb_put(ptr noundef nonnull %72, i32 noundef %66) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %87, ptr align 1 %60, i32 %66, i1 false) #10
  br label %88

88:                                               ; preds = %86, %77
  call void @skb_queue_tail(ptr noundef %57, ptr noundef nonnull %72) #10
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #10
  %89 = call i32 @nfc_llcp_queue_i_frames(ptr noundef %0) #10
  call void @release_sock(ptr noundef %0) #10
  %90 = sub i32 %61, %66
  %91 = getelementptr i8, ptr %60, i32 %66
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %93, label %59

93:                                               ; preds = %88
  call void @kfree(ptr noundef nonnull %37) #10
  br label %94

94:                                               ; preds = %93, %76, %58, %36, %34, %24, %3
  %95 = phi i32 [ -105, %24 ], [ -14, %58 ], [ -12, %76 ], [ %2, %93 ], [ -105, %34 ], [ -19, %3 ], [ -12, %36 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_queue_i_frames(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_ui_frame(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %68, label %10

10:                                               ; preds = %5
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 1060032) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  %15 = icmp slt i32 %4, 0
  %16 = load i1, ptr @check_copy_size.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %23

20:                                               ; preds = %13
  br i1 %15, label %23, label %21, !prof !8

21:                                               ; preds = %20
  %22 = tail call i32 @_copy_from_iter(ptr noundef nonnull %11, i32 noundef %4, ptr noundef %14) #10
  br label %23

23:                                               ; preds = %21, %20, %19
  %24 = phi i32 [ %22, %21 ], [ 0, %20 ], [ 0, %19 ]
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %26, label %33, !prof !10

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 12
  %28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %29 = getelementptr inbounds %struct.nfc_llcp_local, ptr %8, i32 0, i32 25
  %30 = shl i8 %2, 2
  %31 = or i8 %1, -64
  %32 = getelementptr inbounds %struct.nfc_llcp_local, ptr %8, i32 0, i32 5
  br label %34

33:                                               ; preds = %23
  tail call void @iov_iter_revert(ptr noundef %14, i32 noundef %24) #10
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %68

34:                                               ; preds = %62, %26
  %35 = phi ptr [ %64, %62 ], [ %11, %26 ]
  %36 = phi i32 [ %63, %62 ], [ %4, %26 ]
  %37 = load i16, ptr %27, align 2
  %38 = icmp ugt i16 %37, 2175
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i16, ptr %29, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i16 [ %40, %39 ], [ %37, %34 ]
  %43 = zext i16 %42 to i32
  %44 = call i32 @llvm.umin.i32(i32 %36, i32 %43)
  %45 = load ptr, ptr %28, align 8
  %46 = add nuw nsw i32 %44, 2
  %47 = call ptr @nfc_alloc_send_skb(ptr noundef %45, ptr noundef %0, i32 noundef 0, i32 noundef %46, ptr noundef nonnull %6) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load i32, ptr %6, align 4
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.nfc_llcp_send_ui_frame, i32 noundef %50) #11
  %52 = sub i32 %4, %36
  %53 = icmp eq i32 %36, %4
  %54 = load i32, ptr %6, align 4
  %55 = select i1 %53, i32 %54, i32 %52
  br label %66

56:                                               ; preds = %41
  %57 = call ptr @skb_put(ptr noundef nonnull %47, i32 noundef 2) #10
  store i8 %30, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %57, i32 1
  store i8 %31, ptr %58, align 1
  %59 = icmp eq i32 %44, 0
  br i1 %59, label %62, label %60, !prof !8

60:                                               ; preds = %56
  %61 = call ptr @skb_put(ptr noundef nonnull %47, i32 noundef %44) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %61, ptr align 1 %35, i32 %44, i1 false) #10
  br label %62

62:                                               ; preds = %60, %56
  call void @skb_queue_tail(ptr noundef %32, ptr noundef nonnull %47) #10
  %63 = sub i32 %36, %44
  %64 = getelementptr i8, ptr %35, i32 %44
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %34

66:                                               ; preds = %62, %49
  %67 = phi i32 [ %55, %49 ], [ %4, %62 ]
  call void @kfree(ptr noundef nonnull %11) #10
  br label %68

68:                                               ; preds = %66, %33, %10, %5
  %69 = phi i32 [ -14, %33 ], [ %67, %66 ], [ -19, %5 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_send_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_send_rr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @nfc_alloc_send_skb(ptr noundef %12, ptr noundef %0, i32 noundef 64, i32 noundef 3, ptr noundef nonnull %2) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.llcp_allocate_pdu) #11
  br label %17

17:                                               ; preds = %15, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %34

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 1
  %21 = load i8, ptr %7, align 8
  %22 = shl i8 %20, 2
  %23 = or i8 %22, 3
  %24 = or i8 %21, 64
  %25 = call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 2) #10
  store i8 %23, ptr %25, align 1
  %26 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 %24, ptr %26, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %27 = call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 1) #10
  %28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 15
  %29 = load i8, ptr %28, align 2
  %30 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 2
  store i8 %29, ptr %32, align 1
  %33 = getelementptr inbounds %struct.nfc_llcp_local, ptr %4, i32 0, i32 5
  call void @skb_queue_head(ptr noundef %33, ptr noundef nonnull %13) #10
  br label %34

34:                                               ; preds = %18, %17, %1
  %35 = phi i32 [ 0, %18 ], [ -19, %1 ], [ -12, %17 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
