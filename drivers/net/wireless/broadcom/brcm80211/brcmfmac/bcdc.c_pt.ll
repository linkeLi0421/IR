; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcdc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_bcdc = type { i16, [80 x i8], %struct.brcmf_proto_bcdc_dcmd, [8192 x i8], ptr }
%struct.brcmf_proto_bcdc_dcmd = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.brcmf_proto_bcdc_header = type { i8, i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.115, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.possible_net_t = type {}
%struct.anon.115 = type { i64, i64, i8 }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1 = private unnamed_addr constant [46 x i8] c"%s: %s: non-BCDC packet received, flags 0x%x\0A\00", align 1
@__func__.brcmf_proto_bcdc_hdrpull = private unnamed_addr constant [25 x i8] c"brcmf_proto_bcdc_hdrpull\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: brcmf_proto_bcdc_msg failed w/status %d\0A\00", align 1
@__func__.brcmf_proto_bcdc_query_dcmd = private unnamed_addr constant [28 x i8] c"brcmf_proto_bcdc_query_dcmd\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: %s: unexpected request id %d (expected %d)\0A\00", align 1
@__func__.brcmf_proto_bcdc_set_dcmd = private unnamed_addr constant [26 x i8] c"brcmf_proto_bcdc_set_dcmd\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @drvr_to_fws(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_proto, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_bcdc, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_proto_bcdc_txflowblock(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @brcmf_fws_bus_blocked(ptr noundef %6, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_bus_blocked(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_proto_bcdc_txcomplete(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.brcmf_bus, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_proto, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.brcmf_bcdc, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @brcmf_fws_fc_active(ptr noundef %14) #9
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  br i1 %2, label %26, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %13, align 4
  tail call void @brcmf_fws_bustxfail(ptr noundef %18, ptr noundef %1) #9
  br label %26

19:                                               ; preds = %3
  %20 = load ptr, ptr %7, align 4
  %21 = call i32 @brcmf_proto_bcdc_hdrpull(ptr noundef %20, i1 noundef zeroext false, ptr noundef %1, ptr noundef nonnull %4)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #9
  br label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 4
  call void @brcmf_txfinalize(ptr noundef %25, ptr noundef %1, i1 noundef zeroext %2) #9
  br label %26

26:                                               ; preds = %24, %23, %17, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_fws_fc_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_bustxfail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_hdrpull(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 15
  %14 = zext i8 %13 to i32
  %15 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef %14) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %8
  %18 = load i8, ptr %10, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 240
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @net_ratelimit() #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  %29 = tail call ptr @brcmf_ifname(ptr noundef nonnull %15) #9
  %30 = load i8, ptr %10, align 1
  %31 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_proto_bcdc_hdrpull, ptr noundef %29, i32 noundef %31) #10
  br label %62

32:                                               ; preds = %17
  %33 = and i32 %19, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, -97
  %39 = or i16 %38, 32
  store i16 %39, ptr %36, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %10, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 7
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 5
  store i32 %44, ptr %45, align 8
  %46 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef 4) #9
  %47 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %10, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  br i1 %1, label %49, label %52

49:                                               ; preds = %40
  %50 = zext i8 %48 to i16
  %51 = shl nuw nsw i16 %50, 2
  tail call void @brcmf_fws_hdrpull(ptr noundef nonnull %15, i16 noundef signext %51, ptr noundef %2) #9
  br label %56

52:                                               ; preds = %40
  %53 = zext i8 %48 to i32
  %54 = shl nuw nsw i32 %53, 2
  %55 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef %54) #9
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, ptr %5, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = icmp eq ptr %3, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  store ptr %15, ptr %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %56, %25, %22, %8, %4
  %63 = phi i32 [ -52, %4 ], [ -52, %8 ], [ -52, %25 ], [ -52, %22 ], [ -61, %56 ], [ 0, %61 ], [ 0, %59 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txfinalize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_proto_bcdc_attach(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8296, i32 noundef 2848, i32 noundef 2) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr @brcmf_proto_bcdc_hdrpull, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.brcmf_proto, ptr %7, i32 0, i32 1
  store ptr @brcmf_proto_bcdc_query_dcmd, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.brcmf_proto, ptr %9, i32 0, i32 2
  store ptr @brcmf_proto_bcdc_set_dcmd, ptr %10, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.brcmf_proto, ptr %11, i32 0, i32 3
  store ptr @brcmf_proto_bcdc_tx_queue_data, ptr %12, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.brcmf_proto, ptr %13, i32 0, i32 4
  store ptr @brcmf_proto_bcdc_txdata, ptr %14, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.brcmf_proto, ptr %15, i32 0, i32 5
  store ptr @brcmf_proto_bcdc_configure_addr_mode, ptr %16, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.brcmf_proto, ptr %17, i32 0, i32 6
  store ptr @brcmf_proto_bcdc_delete_peer, ptr %18, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.brcmf_proto, ptr %19, i32 0, i32 7
  store ptr @brcmf_proto_bcdc_add_tdls_peer, ptr %20, align 4
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.brcmf_proto, ptr %21, i32 0, i32 8
  store ptr @brcmf_proto_bcdc_rxreorder, ptr %22, align 4
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.brcmf_proto, ptr %23, i32 0, i32 9
  store ptr @brcmf_proto_bcdc_add_if, ptr %24, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.brcmf_proto, ptr %25, i32 0, i32 10
  store ptr @brcmf_proto_bcdc_del_if, ptr %26, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.brcmf_proto, ptr %27, i32 0, i32 11
  store ptr @brcmf_proto_bcdc_reset_if, ptr %28, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.brcmf_proto, ptr %29, i32 0, i32 12
  store ptr @brcmf_proto_bcdc_init_done, ptr %30, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.brcmf_proto, ptr %31, i32 0, i32 13
  store ptr @brcmf_proto_bcdc_debugfs_create, ptr %32, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.brcmf_proto, ptr %33, i32 0, i32 14
  store ptr %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 16
  store i32 %37, ptr %35, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.brcmf_bus, ptr %38, i32 0, i32 6
  store i32 8208, ptr %39, align 4
  br label %41

40:                                               ; preds = %1
  tail call void @kfree(ptr noundef null) #9
  br label %41

41:                                               ; preds = %40, %4
  %42 = phi i32 [ -12, %40 ], [ 0, %4 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_query_dcmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_proto, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  store i32 0, ptr %5, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.brcmf_proto, ptr %11, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2, i32 3
  store i32 0, ptr %15, align 4
  store i32 %2, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2, i32 1
  store i32 %4, ptr %16, align 4
  %17 = load i16, ptr %13, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %13, align 4
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 %19, 16
  %21 = shl i32 %1, 12
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2, i32 2
  store i32 %22, ptr %23, align 4
  %24 = icmp eq ptr %3, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr nonnull align 1 %3, i32 %4, i1 false) #9
  br label %27

27:                                               ; preds = %25, %6
  %28 = add i32 %4, 16
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 1518) #9
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.brcmf_bus, ptr %30, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.brcmf_bus, ptr %30, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %34(ptr noundef %36, ptr noundef %14, i32 noundef %29) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.brcmf_bcdc, ptr %10, i32 0, i32 2, i32 2
  %41 = load i16, ptr %10, align 4
  %42 = zext i16 %41 to i32
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.brcmf_proto, ptr %43, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.brcmf_bcdc, ptr %45, i32 0, i32 2, i32 2
  %47 = getelementptr inbounds %struct.brcmf_bcdc, ptr %45, i32 0, i32 2
  br label %55

48:                                               ; preds = %27
  %49 = tail call i32 @net_ratelimit() #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %128, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.brcmf_proto_bcdc_query_dcmd, i32 noundef %37) #10
  br label %128

55:                                               ; preds = %65, %39
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.brcmf_bus, ptr %56, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.brcmf_bus, ptr %56, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %60(ptr noundef %62, ptr noundef %47, i32 noundef %28) #9
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %128, label %65

65:                                               ; preds = %55
  %66 = load i32, ptr %46, align 4
  %67 = lshr i32 %66, 16
  %68 = icmp eq i32 %67, %42
  br i1 %68, label %69, label %55

69:                                               ; preds = %65
  %70 = load i32, ptr %40, align 4
  %71 = lshr i32 %70, 16
  %72 = load i16, ptr %10, align 4
  %73 = zext i16 %72 to i32
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = zext i16 %72 to i32
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.brcmf_proto, ptr %77, i32 0, i32 14
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.brcmf_bcdc, ptr %79, i32 0, i32 2, i32 2
  %81 = getelementptr inbounds %struct.brcmf_bcdc, ptr %79, i32 0, i32 2
  br label %82

82:                                               ; preds = %92, %75
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.brcmf_bus, ptr %83, i32 0, i32 11
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.brcmf_bus, ptr %83, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 %87(ptr noundef %89, ptr noundef %81, i32 noundef %28) #9
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %128, label %92

92:                                               ; preds = %82
  %93 = load i32, ptr %80, align 4
  %94 = lshr i32 %93, 16
  %95 = icmp eq i32 %94, %76
  br i1 %95, label %96, label %82

96:                                               ; preds = %92
  %97 = load i32, ptr %40, align 4
  %98 = lshr i32 %97, 16
  %99 = load i16, ptr %10, align 4
  br label %100

100:                                              ; preds = %96, %69
  %101 = phi i32 [ %70, %69 ], [ %97, %96 ]
  %102 = phi i32 [ %71, %69 ], [ %98, %96 ]
  %103 = phi i16 [ %72, %69 ], [ %99, %96 ]
  %104 = phi i32 [ %63, %69 ], [ %90, %96 ]
  %105 = zext i16 %103 to i32
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %118, label %107

107:                                              ; preds = %100
  %108 = tail call i32 @net_ratelimit() #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.wiphy, ptr %112, i32 0, i32 56
  %114 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef %1) #9
  %115 = tail call ptr @brcmf_ifname(ptr noundef %114) #9
  %116 = load i16, ptr %10, align 4
  %117 = zext i16 %116 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_proto_bcdc_query_dcmd, ptr noundef %115, i32 noundef %102, i32 noundef %117) #10
  br label %128

118:                                              ; preds = %100
  br i1 %24, label %122, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.brcmf_bcdc, ptr %10, i32 0, i32 3
  %121 = tail call i32 @llvm.smin.i32(i32 %104, i32 %4)
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 1 %120, i32 %121, i1 false)
  br label %122

122:                                              ; preds = %119, %118
  %123 = and i32 %101, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.brcmf_bcdc, ptr %10, i32 0, i32 2, i32 3
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %5, align 4
  br label %128

128:                                              ; preds = %125, %122, %110, %107, %82, %55, %51, %48
  %129 = phi i32 [ %37, %51 ], [ %37, %48 ], [ 0, %125 ], [ 0, %122 ], [ -22, %110 ], [ -22, %107 ], [ %63, %55 ], [ %90, %82 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_set_dcmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #2 {
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_proto, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  store i32 0, ptr %5, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.brcmf_proto, ptr %11, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2, i32 3
  store i32 0, ptr %15, align 4
  store i32 %2, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2, i32 1
  store i32 %4, ptr %16, align 4
  %17 = load i16, ptr %13, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %13, align 4
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 %19, 16
  %21 = shl i32 %1, 12
  %22 = or i32 %21, %20
  %23 = or i32 %22, 2
  %24 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 2, i32 2
  store i32 %23, ptr %24, align 4
  %25 = icmp eq ptr %3, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.brcmf_bcdc, ptr %13, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %27, ptr nonnull align 1 %3, i32 %4, i1 false) #9
  br label %28

28:                                               ; preds = %26, %6
  %29 = add i32 %4, 16
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 1518) #9
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.brcmf_bus, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.brcmf_bus, ptr %31, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %35(ptr noundef %37, ptr noundef %14, i32 noundef %30) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %86, label %40

40:                                               ; preds = %28
  %41 = load i16, ptr %10, align 4
  %42 = zext i16 %41 to i32
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.brcmf_proto, ptr %43, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.brcmf_bcdc, ptr %45, i32 0, i32 2, i32 2
  %47 = getelementptr inbounds %struct.brcmf_bcdc, ptr %45, i32 0, i32 2
  br label %48

48:                                               ; preds = %58, %40
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.brcmf_bus, ptr %49, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmf_bus, ptr %49, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %53(ptr noundef %55, ptr noundef %47, i32 noundef %29) #9
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %46, align 4
  %60 = lshr i32 %59, 16
  %61 = icmp eq i32 %60, %42
  br i1 %61, label %62, label %48

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.brcmf_bcdc, ptr %10, i32 0, i32 2, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 16
  %66 = load i16, ptr %10, align 4
  %67 = zext i16 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %80, label %69

69:                                               ; preds = %62
  %70 = tail call i32 @net_ratelimit() #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 56
  %76 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef %1) #9
  %77 = tail call ptr @brcmf_ifname(ptr noundef %76) #9
  %78 = load i16, ptr %10, align 4
  %79 = zext i16 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_proto_bcdc_set_dcmd, ptr noundef %77, i32 noundef %65, i32 noundef %79) #10
  br label %86

80:                                               ; preds = %62
  %81 = and i32 %64, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.brcmf_bcdc, ptr %10, i32 0, i32 2, i32 3
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %5, align 4
  br label %86

86:                                               ; preds = %83, %80, %72, %69, %48, %28
  %87 = phi i32 [ %38, %28 ], [ 0, %83 ], [ 0, %80 ], [ -22, %72 ], [ -22, %69 ], [ %56, %48 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_tx_queue_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef %1) #9
  %5 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_proto, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_bcdc, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @brcmf_fws_queue_skbs(ptr noundef %10) #9
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.brcmf_proto, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, ptr noundef %2) #9
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @brcmf_fws_process_skb(ptr noundef %4, ptr noundef %2) #9
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %16, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_txdata(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3) #2 {
  %5 = tail call ptr @skb_push(ptr noundef %3, i32 noundef 4) #9
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  store i8 32, ptr %7, align 1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 96
  %11 = icmp eq i16 %10, 96
  %12 = select i1 %11, i8 40, i8 32
  store i8 %12, ptr %7, align 1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 7
  %17 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %7, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %7, i32 0, i32 2
  %19 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, ptr %7, i32 0, i32 3
  store i8 %2, ptr %19, align 1
  %20 = trunc i32 %1 to i8
  store i8 %20, ptr %18, align 1
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.brcmf_bus, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_bus, ptr %21, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %25(ptr noundef %27, ptr noundef %3) #9
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @brcmf_proto_bcdc_configure_addr_mode(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @brcmf_proto_bcdc_delete_peer(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @brcmf_proto_bcdc_add_tdls_peer(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_rxreorder(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  tail call void @brcmf_fws_rxreorder(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_add_if(ptr noundef %0) #2 {
  tail call void @brcmf_fws_add_interface(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_del_if(ptr noundef %0) #2 {
  tail call void @brcmf_fws_del_interface(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_reset_if(ptr noundef %0) #2 {
  tail call void @brcmf_fws_reset_interface(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_proto_bcdc_init_done(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_proto, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @brcmf_fws_attach(ptr noundef %0) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.brcmf_bcdc, ptr %5, i32 0, i32 4
  store ptr %6, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_proto_bcdc_debugfs_create(ptr noundef %0) #2 {
  tail call void @brcmf_fws_debugfs_create(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_proto_bcdc_detach(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_proto, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_bcdc, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @brcmf_fws_detach(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_ifname(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_hdrpull(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcmf_fws_queue_skbs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fws_process_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_rxreorder(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_add_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_del_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_reset_interface(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_fws_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fws_debugfs_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
