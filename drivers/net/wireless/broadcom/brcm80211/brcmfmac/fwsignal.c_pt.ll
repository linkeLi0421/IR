; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff_head = type { %union.anon.92, i32, %struct.spinlock }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.116, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.116 = type { i64, i64, i8 }
%struct.brcmf_ampdu_rx_reorder = type { ptr, i8, i8, i8, i8, i8 }
%struct.brcmf_fws_info = type { ptr, %struct.spinlock, i32, %struct.brcmf_fws_stats, %struct.brcmf_fws_hanger, i32, i8, i8, %struct.brcmf_fws_macdesc_table, ptr, %struct.work_struct, [6 x i32], [6 x i32], [6 x i32], [4 x [4 x i32]], [6 x i32], i32, i32, i32, i8, i8, i8, i8 }
%struct.brcmf_fws_stats = type { i32, i32, i32, i32, i32, [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_fws_hanger = type { i32, i32, i32, i32, i32, i32, [3072 x %struct.brcmf_fws_hanger_item] }
%struct.brcmf_fws_hanger_item = type { i32, ptr }
%struct.brcmf_fws_macdesc_table = type { [32 x %struct.brcmf_fws_mac_descriptor], [16 x %struct.brcmf_fws_mac_descriptor], %struct.brcmf_fws_mac_descriptor }
%struct.brcmf_fws_mac_descriptor = type { [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], %struct.pktq, i32, i32, i8, i8, i8 }
%struct.pktq = type { i16, i16, i16, i16, [16 x %struct.pktq_prec] }
%struct.pktq_prec = type { %struct.sk_buff_head, i16 }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.40 }
%union.anon.40 = type { [4 x i32] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.121 }
%union.anon.121 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_event_msg = type { i16, i16, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, i8 }

@.str = private unnamed_addr constant [43 x i8] c"%s: invalid flags...so ignore this packet\0A\00", align 1
@__func__.brcmf_fws_rxreorder = private unnamed_addr constant [20 x i8] c"brcmf_fws_rxreorder\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: failed to alloc buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwsignal.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: no hanger slot available\0A\00", align 1
@__func__.brcmf_fws_process_skb = private unnamed_addr constant [22 x i8] c"brcmf_fws_process_skb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"brcmf_fws_wq\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: workqueue creation failed\0A\00", align 1
@__func__.brcmf_fws_attach = private unnamed_addr constant [17 x i8] c"brcmf_fws_attach\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%s: register credit map handler failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: register bcmc credit handler failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tlv\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: failed to set bdcv2 tlv signaling\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ampdu_hostreorder\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"wlfc_mode\00", align 1
@__func__.brcmf_fws_hanger_get_free_slot = private unnamed_addr constant [31 x i8] c"brcmf_fws_hanger_get_free_slot\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"all slots occupied\0A\00", align 1
@__func__.brcmf_fws_hanger_pushpkt = private unnamed_addr constant [25 x i8] c"brcmf_fws_hanger_pushpkt\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"slot is not free\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"%s: no mac descriptor found for skb %p\0A\00", align 1
@__func__.brcmf_fws_enq = private unnamed_addr constant [14 x i8] c"brcmf_fws_enq\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"MAC-OTHER\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"MAC-%d:%d\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"MACIF:%d\00", align 1
@__func__.brcmf_fws_hanger_poppkt = private unnamed_addr constant [24 x i8] c"brcmf_fws_hanger_poppkt\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"entry not in use\0A\00", align 1
@__func__.brcmf_fws_macdesc_use_req_credit = private unnamed_addr constant [33 x i8] c"brcmf_fws_macdesc_use_req_credit\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"requested credit set while mac not closed!\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"requested packet set while mac not closed!\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"%s: %s queue %d full\0A\00", align 1
@__func__.brcmf_fws_rollback_toq = private unnamed_addr constant [23 x i8] c"brcmf_fws_rollback_toq\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"%s: %s entry removed\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"%s: event payload too small (%d)\0A\00", align 1
@__func__.brcmf_fws_notify_credit_map = private unnamed_addr constant [28 x i8] c"brcmf_fws_notify_credit_map\00", align 1
@brcmf_fws_notify_credit_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"fifo_credit[%d] is negative(%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"%s: unexpected txstatus\0A\00", align 1
@__func__.brcmf_fws_txs_process = private unnamed_addr constant [22 x i8] c"brcmf_fws_txs_process\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"%s: no packet in hanger slot: hslot=%d\0A\00", align 1
@__func__.brcmf_fws_hanger_mark_suppressed = private unnamed_addr constant [33 x i8] c"brcmf_fws_hanger_mark_suppressed\00", align 1
@switch.table.brcmf_fws_hdrpull = private unnamed_addr constant [19 x i32] [i32 1, i32 1, i32 2, i32 4, i32 4, i32 8, i32 8, i32 1, i32 1, i32 1, i32 6, i32 2, i32 3, i32 10, i32 1, i32 1, i32 1, i32 6, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_rxreorder(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sk_buff_head, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = tail call i32 @net_ratelimit() #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.brcmf_fws_rxreorder) #15
  br label %19

19:                                               ; preds = %15, %12
  tail call void @brcmf_netif_rx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #14
  br label %355

20:                                               ; preds = %3
  %21 = load i8, ptr %7, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.brcmf_pub, ptr %5, i32 0, i32 15, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = and i32 %10, 1
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq ptr %24, null
  br i1 %26, label %73, label %28

28:                                               ; preds = %20
  br i1 %27, label %29, label %30

29:                                               ; preds = %28
  tail call void @brcmf_netif_rx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #14
  br label %355

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %24, i32 0, i32 3
  %32 = load i8, ptr %31, align 2
  store ptr %4, ptr %4, align 4
  %33 = getelementptr inbounds %struct.anon.93, ptr %4, i32 0, i32 1
  store ptr %4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %24, i32 0, i32 5
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %66, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %24, i32 0, i32 4
  br label %40

40:                                               ; preds = %54, %38
  %41 = phi i8 [ %58, %54 ], [ %32, %38 ]
  %42 = load ptr, ptr %24, align 4
  %43 = zext i8 %41 to i32
  %44 = getelementptr ptr, ptr %42, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load ptr, ptr %33, align 4
  store volatile ptr %4, ptr %45, align 8
  %49 = getelementptr inbounds %struct.anon.42, ptr %45, i32 0, i32 1
  store volatile ptr %48, ptr %49, align 4
  store volatile ptr %45, ptr %33, align 4
  store volatile ptr %45, ptr %48, align 4
  %50 = load i32, ptr %34, align 4
  %51 = add i32 %50, 1
  store volatile i32 %51, ptr %34, align 4
  %52 = load ptr, ptr %24, align 4
  %53 = getelementptr ptr, ptr %52, i32 %43
  store ptr null, ptr %53, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = add i8 %41, 1
  %56 = load i8, ptr %39, align 1
  %57 = icmp ugt i8 %55, %56
  %58 = select i1 %57, i8 0, i8 %55
  %59 = icmp eq i8 %58, %32
  br i1 %59, label %60, label %40

60:                                               ; preds = %54
  %61 = load i32, ptr %34, align 4
  %62 = load i8, ptr %35, align 4
  %63 = trunc i32 %61 to i8
  %64 = sub i8 %62, %63
  store i8 %64, ptr %35, align 4
  %65 = load ptr, ptr %33, align 4
  br label %66

66:                                               ; preds = %60, %30
  %67 = phi ptr [ %4, %30 ], [ %65, %60 ]
  store volatile ptr %4, ptr %1, align 8
  %68 = getelementptr inbounds %struct.anon.42, ptr %1, i32 0, i32 1
  store volatile ptr %67, ptr %68, align 4
  store volatile ptr %1, ptr %33, align 4
  store volatile ptr %1, ptr %67, align 4
  %69 = load i32, ptr %34, align 4
  %70 = add i32 %69, 1
  store volatile i32 %70, ptr %34, align 4
  call void @kfree(ptr noundef nonnull %24) #14
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr %struct.brcmf_pub, ptr %71, i32 0, i32 15, i32 %22
  store ptr null, ptr %72, align 4
  br label %340

73:                                               ; preds = %20
  br i1 %27, label %74, label %95

74:                                               ; preds = %73
  %75 = getelementptr i8, ptr %7, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 2
  %79 = add nuw nsw i32 %78, 16
  %80 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %79, i32 noundef 2848) #16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = tail call i32 @net_ratelimit() #14
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_fws_rxreorder) #15
  br label %89

89:                                               ; preds = %85, %82
  tail call void @brcmf_netif_rx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #14
  br label %355

90:                                               ; preds = %74
  %91 = load ptr, ptr %0, align 4
  %92 = getelementptr %struct.brcmf_pub, ptr %91, i32 0, i32 15, i32 %22
  store ptr %80, ptr %92, align 4
  %93 = getelementptr %struct.brcmf_ampdu_rx_reorder, ptr %80, i32 1
  store ptr %93, ptr %80, align 64
  %94 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %80, i32 0, i32 4
  store i8 %76, ptr %94, align 1
  br label %95

95:                                               ; preds = %90, %73
  %96 = phi ptr [ %80, %90 ], [ %24, %73 ]
  %97 = and i32 %10, 16
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %157, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 5
  %101 = load i8, ptr %100, align 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %139, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 3
  %105 = load i8, ptr %104, align 2
  store ptr %4, ptr %4, align 4
  %106 = getelementptr inbounds %struct.anon.93, ptr %4, i32 0, i32 1
  store ptr %4, ptr %106, align 4
  %107 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %107, align 4
  %108 = load i8, ptr %100, align 4
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 4
  br label %112

112:                                              ; preds = %126, %110
  %113 = phi i8 [ %130, %126 ], [ %105, %110 ]
  %114 = load ptr, ptr %96, align 4
  %115 = zext i8 %113 to i32
  %116 = getelementptr ptr, ptr %114, i32 %115
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %112
  %120 = load ptr, ptr %106, align 4
  store volatile ptr %4, ptr %117, align 8
  %121 = getelementptr inbounds %struct.anon.42, ptr %117, i32 0, i32 1
  store volatile ptr %120, ptr %121, align 4
  store volatile ptr %117, ptr %106, align 4
  store volatile ptr %117, ptr %120, align 4
  %122 = load i32, ptr %107, align 4
  %123 = add i32 %122, 1
  store volatile i32 %123, ptr %107, align 4
  %124 = load ptr, ptr %96, align 4
  %125 = getelementptr ptr, ptr %124, i32 %115
  store ptr null, ptr %125, align 4
  br label %126

126:                                              ; preds = %119, %112
  %127 = add i8 %113, 1
  %128 = load i8, ptr %111, align 1
  %129 = icmp ugt i8 %127, %128
  %130 = select i1 %129, i8 0, i8 %127
  %131 = icmp eq i8 %130, %105
  br i1 %131, label %132, label %112

132:                                              ; preds = %126
  %133 = load i32, ptr %107, align 4
  %134 = load i8, ptr %100, align 4
  %135 = trunc i32 %133 to i8
  %136 = sub i8 %134, %135
  store i8 %136, ptr %100, align 4
  %137 = icmp eq i8 %134, %135
  br i1 %137, label %142, label %138, !prof !9

138:                                              ; preds = %132
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1735, i32 noundef 9, ptr noundef null) #14
  br label %142

139:                                              ; preds = %99
  store ptr %4, ptr %4, align 4
  %140 = getelementptr inbounds %struct.anon.93, ptr %4, i32 0, i32 1
  store ptr %4, ptr %140, align 4
  %141 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %141, align 4
  br label %142

142:                                              ; preds = %139, %138, %132, %103
  %143 = getelementptr i8, ptr %7, i32 6
  %144 = load i8, ptr %143, align 1
  %145 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 2
  store i8 %144, ptr %145, align 1
  %146 = getelementptr i8, ptr %7, i32 8
  %147 = load i8, ptr %146, align 1
  %148 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 3
  store i8 %147, ptr %148, align 2
  %149 = getelementptr i8, ptr %7, i32 2
  %150 = load i8, ptr %149, align 1
  %151 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 4
  store i8 %150, ptr %151, align 1
  %152 = load ptr, ptr %96, align 4
  %153 = zext i8 %144 to i32
  %154 = getelementptr ptr, ptr %152, i32 %153
  store ptr %1, ptr %154, align 4
  %155 = load i8, ptr %100, align 4
  %156 = add i8 %155, 1
  store i8 %156, ptr %100, align 4
  br label %340

157:                                              ; preds = %95
  %158 = and i32 %10, 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %293, label %160

160:                                              ; preds = %157
  %161 = getelementptr i8, ptr %7, i32 6
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr i8, ptr %7, i32 8
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 3
  %167 = load i8, ptr %166, align 2
  %168 = icmp ne i8 %164, %167
  %169 = zext i8 %162 to i32
  %170 = icmp eq i8 %162, %164
  %171 = select i1 %168, i1 true, i1 %170
  br i1 %171, label %188, label %172

172:                                              ; preds = %160
  %173 = load ptr, ptr %96, align 4
  %174 = getelementptr ptr, ptr %173, i32 %169
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %175) #14
  %178 = load ptr, ptr %96, align 4
  %179 = getelementptr ptr, ptr %178, i32 %169
  store ptr null, ptr %179, align 4
  %180 = load ptr, ptr %96, align 4
  br label %181

181:                                              ; preds = %177, %172
  %182 = phi ptr [ %180, %177 ], [ %173, %172 ]
  %183 = getelementptr ptr, ptr %182, i32 %169
  store ptr %1, ptr %183, align 4
  %184 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 5
  %185 = load i8, ptr %184, align 4
  %186 = add i8 %185, 1
  store i8 %186, ptr %184, align 4
  %187 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 2
  store i8 %162, ptr %187, align 1
  br label %355

188:                                              ; preds = %160
  %189 = icmp eq i8 %167, %162
  br i1 %189, label %190, label %237

190:                                              ; preds = %188
  %191 = load ptr, ptr %96, align 4
  %192 = getelementptr ptr, ptr %191, i32 %169
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %190
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %193) #14
  %196 = load ptr, ptr %96, align 4
  %197 = getelementptr ptr, ptr %196, i32 %169
  store ptr null, ptr %197, align 4
  %198 = load ptr, ptr %96, align 4
  br label %199

199:                                              ; preds = %195, %190
  %200 = phi ptr [ %198, %195 ], [ %191, %190 ]
  %201 = getelementptr ptr, ptr %200, i32 %169
  store ptr %1, ptr %201, align 4
  %202 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 5
  %203 = load i8, ptr %202, align 4
  %204 = add i8 %203, 1
  store i8 %204, ptr %202, align 4
  %205 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 2
  store i8 %162, ptr %205, align 1
  store i8 %164, ptr %166, align 2
  store ptr %4, ptr %4, align 4
  %206 = getelementptr inbounds %struct.anon.93, ptr %4, i32 0, i32 1
  store ptr %4, ptr %206, align 4
  %207 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %207, align 4
  %208 = load i8, ptr %202, align 4
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %340, label %210

210:                                              ; preds = %199
  %211 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 4
  br label %212

212:                                              ; preds = %226, %210
  %213 = phi i8 [ %230, %226 ], [ %162, %210 ]
  %214 = load ptr, ptr %96, align 4
  %215 = zext i8 %213 to i32
  %216 = getelementptr ptr, ptr %214, i32 %215
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %226, label %219

219:                                              ; preds = %212
  %220 = load ptr, ptr %206, align 4
  store volatile ptr %4, ptr %217, align 8
  %221 = getelementptr inbounds %struct.anon.42, ptr %217, i32 0, i32 1
  store volatile ptr %220, ptr %221, align 4
  store volatile ptr %217, ptr %206, align 4
  store volatile ptr %217, ptr %220, align 4
  %222 = load i32, ptr %207, align 4
  %223 = add i32 %222, 1
  store volatile i32 %223, ptr %207, align 4
  %224 = load ptr, ptr %96, align 4
  %225 = getelementptr ptr, ptr %224, i32 %215
  store ptr null, ptr %225, align 4
  br label %226

226:                                              ; preds = %219, %212
  %227 = add i8 %213, 1
  %228 = load i8, ptr %211, align 1
  %229 = icmp ugt i8 %227, %228
  %230 = select i1 %229, i8 0, i8 %227
  %231 = icmp eq i8 %230, %164
  br i1 %231, label %232, label %212

232:                                              ; preds = %226
  %233 = load i32, ptr %207, align 4
  %234 = load i8, ptr %202, align 4
  %235 = trunc i32 %233 to i8
  %236 = sub i8 %234, %235
  store i8 %236, ptr %202, align 4
  br label %340

237:                                              ; preds = %188
  %238 = and i32 %10, 2
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, i8 %164, i8 %167
  store ptr %4, ptr %4, align 4
  %241 = getelementptr inbounds %struct.anon.93, ptr %4, i32 0, i32 1
  store ptr %4, ptr %241, align 4
  %242 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %242, align 4
  %243 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 5
  %244 = load i8, ptr %243, align 4
  %245 = icmp eq i8 %244, 0
  %246 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 4
  br i1 %245, label %247, label %249

247:                                              ; preds = %237
  %248 = load i8, ptr %246, align 1
  br label %274

249:                                              ; preds = %263, %237
  %250 = phi i8 [ %267, %263 ], [ %167, %237 ]
  %251 = load ptr, ptr %96, align 4
  %252 = zext i8 %250 to i32
  %253 = getelementptr ptr, ptr %251, i32 %252
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %263, label %256

256:                                              ; preds = %249
  %257 = load ptr, ptr %241, align 4
  store volatile ptr %4, ptr %254, align 8
  %258 = getelementptr inbounds %struct.anon.42, ptr %254, i32 0, i32 1
  store volatile ptr %257, ptr %258, align 4
  store volatile ptr %254, ptr %241, align 4
  store volatile ptr %254, ptr %257, align 4
  %259 = load i32, ptr %242, align 4
  %260 = add i32 %259, 1
  store volatile i32 %260, ptr %242, align 4
  %261 = load ptr, ptr %96, align 4
  %262 = getelementptr ptr, ptr %261, i32 %252
  store ptr null, ptr %262, align 4
  br label %263

263:                                              ; preds = %256, %249
  %264 = add i8 %250, 1
  %265 = load i8, ptr %246, align 1
  %266 = icmp ugt i8 %264, %265
  %267 = select i1 %266, i8 0, i8 %264
  %268 = icmp eq i8 %267, %240
  br i1 %268, label %269, label %249

269:                                              ; preds = %263
  %270 = load i32, ptr %242, align 4
  %271 = load i8, ptr %243, align 4
  %272 = trunc i32 %270 to i8
  %273 = sub i8 %271, %272
  store i8 %273, ptr %243, align 4
  br label %274

274:                                              ; preds = %269, %247
  %275 = phi i8 [ %248, %247 ], [ %265, %269 ]
  %276 = add nuw nsw i32 %169, 1
  %277 = zext i8 %275 to i32
  %278 = add nuw nsw i32 %277, 1
  %279 = urem i32 %276, %278
  %280 = icmp eq i32 %279, %165
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = load ptr, ptr %241, align 4
  store volatile ptr %4, ptr %1, align 8
  %283 = getelementptr inbounds %struct.anon.42, ptr %1, i32 0, i32 1
  store volatile ptr %282, ptr %283, align 4
  store volatile ptr %1, ptr %241, align 4
  store volatile ptr %1, ptr %282, align 4
  %284 = load i32, ptr %242, align 4
  %285 = add i32 %284, 1
  store volatile i32 %285, ptr %242, align 4
  br label %291

286:                                              ; preds = %274
  %287 = load ptr, ptr %96, align 4
  %288 = getelementptr ptr, ptr %287, i32 %169
  store ptr %1, ptr %288, align 4
  %289 = load i8, ptr %243, align 4
  %290 = add i8 %289, 1
  store i8 %290, ptr %243, align 4
  br label %291

291:                                              ; preds = %286, %281
  store i8 %164, ptr %166, align 2
  %292 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 2
  store i8 %162, ptr %292, align 1
  br label %340

293:                                              ; preds = %157
  %294 = getelementptr i8, ptr %7, i32 8
  %295 = load i8, ptr %294, align 1
  %296 = and i32 %10, 2
  %297 = icmp eq i32 %296, 0
  %298 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 3
  %299 = load i8, ptr %298, align 2
  %300 = select i1 %297, i8 %295, i8 %299
  %301 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 3
  store ptr %4, ptr %4, align 4
  %302 = getelementptr inbounds %struct.anon.93, ptr %4, i32 0, i32 1
  store ptr %4, ptr %302, align 4
  %303 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %303, align 4
  %304 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 5
  %305 = load i8, ptr %304, align 4
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %335, label %307

307:                                              ; preds = %293
  %308 = getelementptr inbounds %struct.brcmf_ampdu_rx_reorder, ptr %96, i32 0, i32 4
  br label %309

309:                                              ; preds = %323, %307
  %310 = phi i8 [ %327, %323 ], [ %299, %307 ]
  %311 = load ptr, ptr %96, align 4
  %312 = zext i8 %310 to i32
  %313 = getelementptr ptr, ptr %311, i32 %312
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %323, label %316

316:                                              ; preds = %309
  %317 = load ptr, ptr %302, align 4
  store volatile ptr %4, ptr %314, align 8
  %318 = getelementptr inbounds %struct.anon.42, ptr %314, i32 0, i32 1
  store volatile ptr %317, ptr %318, align 4
  store volatile ptr %314, ptr %302, align 4
  store volatile ptr %314, ptr %317, align 4
  %319 = load i32, ptr %303, align 4
  %320 = add i32 %319, 1
  store volatile i32 %320, ptr %303, align 4
  %321 = load ptr, ptr %96, align 4
  %322 = getelementptr ptr, ptr %321, i32 %312
  store ptr null, ptr %322, align 4
  br label %323

323:                                              ; preds = %316, %309
  %324 = add i8 %310, 1
  %325 = load i8, ptr %308, align 1
  %326 = icmp ugt i8 %324, %325
  %327 = select i1 %326, i8 0, i8 %324
  %328 = icmp eq i8 %327, %300
  br i1 %328, label %329, label %309

329:                                              ; preds = %323
  %330 = load i32, ptr %303, align 4
  %331 = load i8, ptr %304, align 4
  %332 = trunc i32 %330 to i8
  %333 = sub i8 %331, %332
  store i8 %333, ptr %304, align 4
  %334 = load ptr, ptr %302, align 4
  br label %335

335:                                              ; preds = %329, %293
  %336 = phi ptr [ %4, %293 ], [ %334, %329 ]
  store volatile ptr %4, ptr %1, align 8
  %337 = getelementptr inbounds %struct.anon.42, ptr %1, i32 0, i32 1
  store volatile ptr %336, ptr %337, align 4
  store volatile ptr %1, ptr %302, align 4
  store volatile ptr %1, ptr %336, align 4
  %338 = load i32, ptr %303, align 4
  %339 = add i32 %338, 1
  store volatile i32 %339, ptr %303, align 4
  store i8 %295, ptr %301, align 2
  br label %340

340:                                              ; preds = %335, %291, %232, %199, %142, %66
  %341 = load ptr, ptr %4, align 4
  %342 = icmp eq ptr %341, %4
  br i1 %342, label %355, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.sk_buff_head, ptr %4, i32 0, i32 1
  br label %345

345:                                              ; preds = %345, %343
  %346 = phi ptr [ %341, %343 ], [ %347, %345 ]
  %347 = load ptr, ptr %346, align 8
  %348 = load i32, ptr %344, align 4
  %349 = add i32 %348, -1
  store volatile i32 %349, ptr %344, align 4
  %350 = load ptr, ptr %346, align 8
  %351 = getelementptr inbounds %struct.anon.42, ptr %346, i32 0, i32 1
  %352 = load ptr, ptr %351, align 4
  store ptr null, ptr %351, align 4
  store ptr null, ptr %346, align 8
  %353 = getelementptr inbounds %struct.anon.42, ptr %350, i32 0, i32 1
  store volatile ptr %352, ptr %353, align 4
  store volatile ptr %350, ptr %352, align 8
  call void @brcmf_netif_rx(ptr noundef %0, ptr noundef %346, i1 noundef zeroext %2) #14
  %354 = icmp eq ptr %347, %4
  br i1 %354, label %355, label %345

355:                                              ; preds = %345, %340, %181, %89, %29, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_netif_rx(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pkt_buf_free_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_hdrpull(ptr nocapture noundef readonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call ptr @drvr_to_fws(ptr noundef %4) #14
  %6 = sext i16 %1 to i32
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, %6
  br i1 %9, label %10, label %12, !prof !10

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1855, i32 noundef 9, ptr noundef null) #14
  %11 = load i32, ptr %7, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ %8, %3 ]
  %14 = icmp ult i32 %13, %6
  %15 = trunc i32 %13 to i16
  %16 = select i1 %14, i16 %15, i16 %1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %438, label %18

18:                                               ; preds = %12
  %19 = icmp eq ptr %5, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 6
  %22 = load i8, ptr %21, align 4, !range !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %18
  %25 = sext i16 %16 to i32
  %26 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef %25) #14
  br label %438

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3
  %29 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = icmp sgt i16 %16, 0
  br i1 %32, label %33, label %398

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 1
  %37 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 5
  %38 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 1
  %39 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 2
  %40 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 16
  %41 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 12, i32 0
  %42 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 13, i32 0
  %43 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 12, i32 4
  %44 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 13, i32 4
  %45 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 12, i32 5
  %46 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 13, i32 5
  %47 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 21
  %48 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 17
  %49 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 8
  %50 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 11
  %51 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 12
  %52 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 10
  %53 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 9
  %54 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 8, i32 2
  %55 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 8
  %56 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  br label %57

57:                                               ; preds = %385, %33
  %58 = phi i32 [ 0, %33 ], [ %386, %385 ]
  %59 = phi i16 [ %16, %33 ], [ %389, %385 ]
  %60 = phi ptr [ %35, %33 ], [ %387, %385 ]
  br label %61

61:                                               ; preds = %66, %57
  %62 = phi i16 [ %59, %57 ], [ %68, %66 ]
  %63 = phi ptr [ %60, %57 ], [ %67, %66 ]
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %63, i32 1
  %68 = add i16 %62, -1
  %69 = icmp sgt i16 %68, 0
  br i1 %69, label %61, label %391

70:                                               ; preds = %61
  %71 = zext i16 %62 to i32
  %72 = getelementptr i8, ptr %63, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr i8, ptr %63, i32 2
  %75 = zext i8 %73 to i32
  %76 = add nuw nsw i32 %75, 2
  %77 = icmp ugt i32 %76, %71
  br i1 %77, label %398, label %78

78:                                               ; preds = %70
  %79 = add i8 %64, -1
  %80 = icmp ult i8 %79, 19
  br i1 %80, label %84, label %81

81:                                               ; preds = %84, %78
  %82 = load i32, ptr %36, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %36, align 4
  br label %94

84:                                               ; preds = %78
  %85 = zext i8 %79 to i32
  %86 = lshr i32 409599, %85
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %81, label %89

89:                                               ; preds = %84
  %90 = sext i8 %79 to i32
  %91 = getelementptr inbounds [19 x i32], ptr @switch.table.brcmf_fws_hdrpull, i32 0, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %92, %75
  br i1 %93, label %398, label %94

94:                                               ; preds = %89, %81
  switch i8 %64, label %375 [
    i8 14, label %95
    i8 6, label %96
    i8 7, label %96
    i8 1, label %202
    i8 2, label %202
    i8 9, label %253
    i8 10, label %253
    i8 3, label %272
    i8 13, label %272
    i8 4, label %300
    i8 19, label %300
    i8 11, label %328
    i8 8, label %385
    i8 18, label %385
  ]

95:                                               ; preds = %94
  store ptr %74, ptr %56, align 4
  br label %385

96:                                               ; preds = %94, %94
  %97 = getelementptr i8, ptr %63, i32 3
  %98 = load i8, ptr %74, align 1
  %99 = getelementptr i8, ptr %63, i32 4
  %100 = load i8, ptr %97, align 1
  %101 = and i8 %98, 31
  %102 = zext i8 %101 to i32
  %103 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102
  %104 = icmp eq i8 %64, 7
  br i1 %104, label %105, label %118

105:                                              ; preds = %96
  %106 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 1
  %107 = load i8, ptr %106, align 4
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %110, ptr %39, align 4
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef %5, ptr noundef %103, i32 noundef -1) #14
  store i8 0, ptr %106, align 4
  %111 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 4
  store i8 2, ptr %111, align 1
  %112 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 8
  store i8 0, ptr %112, align 1
  %113 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 9
  store i8 0, ptr %113, align 4
  %114 = load i32, ptr %39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %114) #14
  br label %385

115:                                              ; preds = %105
  %116 = load i32, ptr %55, align 4
  %117 = add i32 %116, 1
  store i32 %117, ptr %55, align 4
  br label %385

118:                                              ; preds = %96
  %119 = icmp eq ptr %99, null
  br i1 %119, label %137, label %120

120:                                              ; preds = %130, %118
  %121 = phi i32 [ %132, %130 ], [ 0, %118 ]
  %122 = phi ptr [ %131, %130 ], [ %49, %118 ]
  %123 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %122, i32 0, i32 1
  %124 = load i8, ptr %123, align 4
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %122, i32 0, i32 10
  %128 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %127, ptr noundef nonnull dereferenceable(6) %99, i32 6) #14
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126, %120
  %131 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %122, i32 1
  %132 = add nuw nsw i32 %121, 1
  %133 = icmp eq i32 %132, 32
  br i1 %133, label %137, label %120

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %122, i32 0, i32 1
  %136 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %170

137:                                              ; preds = %134, %130, %118
  %138 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 1
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  %142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %142, ptr %39, align 4
  %143 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 2
  store i8 %98, ptr %143, align 1
  store i8 1, ptr %138, align 4
  %144 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 4
  store i8 1, ptr %144, align 1
  %145 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 8
  store i8 0, ptr %145, align 1
  %146 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 9
  store i8 0, ptr %146, align 4
  %147 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 3
  store i8 %100, ptr %147, align 2
  %148 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 7
  store i8 -1, ptr %148, align 2
  br i1 %119, label %151, label %149

149:                                              ; preds = %141
  %150 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %150, ptr noundef nonnull align 1 dereferenceable(6) %99, i32 6, i1 false) #14
  br label %151

151:                                              ; preds = %149, %141
  %152 = icmp eq ptr %54, %103
  br i1 %152, label %153, label %155

153:                                              ; preds = %151
  %154 = tail call i32 @strlcpy(ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef 16) #14
  br label %164

155:                                              ; preds = %151
  %156 = icmp eq i8 %98, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %155
  %158 = zext i8 %98 to i32
  %159 = zext i8 %100 to i32
  %160 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %103, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %158, i32 noundef %159) #14
  br label %164

161:                                              ; preds = %155
  %162 = zext i8 %100 to i32
  %163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %103, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %162) #14
  br label %164

164:                                              ; preds = %161, %157, %153
  %165 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 12
  tail call void @brcmu_pktq_init(ptr noundef %165, i32 noundef 14, i32 noundef 256) #14
  %166 = load i32, ptr %39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %166) #14
  br label %385

167:                                              ; preds = %137
  %168 = load i32, ptr %55, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %55, align 4
  br label %385

170:                                              ; preds = %134
  %171 = icmp eq ptr %103, %122
  br i1 %171, label %197, label %172

172:                                              ; preds = %170
  %173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %173, ptr %39, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %103, ptr noundef align 4 dereferenceable(40) %122, i32 40, i1 false) #14
  %174 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 2
  store i8 %98, ptr %174, align 1
  store i8 0, ptr %135, align 4
  %175 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %122, i32 0, i32 4
  store i8 2, ptr %175, align 1
  %176 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %122, i32 0, i32 8
  store i8 0, ptr %176, align 1
  %177 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %122, i32 0, i32 9
  store i8 0, ptr %177, align 4
  %178 = icmp eq ptr %54, %103
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = tail call i32 @strlcpy(ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef 16) #14
  br label %195

181:                                              ; preds = %172
  %182 = load i8, ptr %174, align 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = zext i8 %182 to i32
  %186 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 3
  %187 = load i8, ptr %186, align 2
  %188 = zext i8 %187 to i32
  %189 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %103, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %185, i32 noundef %188) #14
  br label %195

190:                                              ; preds = %181
  %191 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 3
  %192 = load i8, ptr %191, align 2
  %193 = zext i8 %192 to i32
  %194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %103, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %193) #14
  br label %195

195:                                              ; preds = %190, %184, %179
  %196 = load i32, ptr %39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %196) #14
  br label %385

197:                                              ; preds = %170
  %198 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %102, i32 2
  %199 = load i8, ptr %198, align 1
  %200 = icmp eq i8 %199, %98
  br i1 %200, label %385, label %201, !prof !9

201:                                              ; preds = %197
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1039, i32 noundef 9, ptr noundef null) #14
  br label %385

202:                                              ; preds = %94, %94
  %203 = load i8, ptr %74, align 1
  %204 = and i8 %203, 31
  %205 = zext i8 %204 to i32
  %206 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205
  %207 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 1
  %208 = load i8, ptr %207, align 4
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load i32, ptr %53, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %53, align 4
  br label %385

213:                                              ; preds = %202
  %214 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %214, ptr %39, align 4
  %215 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 8
  store i8 0, ptr %215, align 1
  %216 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 9
  store i8 0, ptr %216, align 4
  %217 = icmp eq i8 %64, 1
  %218 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 4
  br i1 %217, label %219, label %220

219:                                              ; preds = %213
  store i8 1, ptr %218, align 1
  br label %378

220:                                              ; preds = %213
  store i8 2, ptr %218, align 1
  %221 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 12
  %222 = tail call i32 @brcmu_pktq_mlen(ptr noundef %221, i32 noundef 3) #14
  %223 = icmp ne i32 %222, 0
  %224 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 16
  %225 = load i8, ptr %224, align 1
  %226 = and i8 %225, -2
  %227 = zext i1 %223 to i8
  %228 = or i8 %226, %227
  store i8 %228, ptr %224, align 1
  %229 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 15
  %230 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %205, i32 17
  %231 = load i8, ptr %230, align 2
  %232 = icmp ne i8 %231, %228
  %233 = zext i1 %232 to i8
  store i8 %233, ptr %229, align 4
  %234 = tail call i32 @brcmu_pktq_mlen(ptr noundef %221, i32 noundef 12) #14
  %235 = icmp eq i32 %234, 0
  %236 = load i8, ptr %224, align 1
  %237 = and i8 %236, -3
  %238 = select i1 %235, i8 0, i8 2
  %239 = or i8 %237, %238
  store i8 %239, ptr %224, align 1
  %240 = load i8, ptr %230, align 2
  %241 = icmp ne i8 %240, %239
  %242 = zext i1 %241 to i8
  store i8 %242, ptr %229, align 4
  %243 = tail call i32 @brcmu_pktq_mlen(ptr noundef %221, i32 noundef 48) #14
  %244 = icmp eq i32 %243, 0
  %245 = load i8, ptr %224, align 1
  %246 = and i8 %245, -5
  %247 = select i1 %244, i8 0, i8 4
  %248 = or i8 %246, %247
  store i8 %248, ptr %224, align 1
  %249 = load i8, ptr %230, align 2
  %250 = icmp ne i8 %249, %248
  %251 = zext i1 %250 to i8
  store i8 %251, ptr %229, align 4
  tail call fastcc void @brcmf_fws_tim_update(ptr noundef %5, ptr noundef %206, i32 noundef 3, i1 noundef zeroext true) #14
  %252 = load i32, ptr %39, align 4
  br label %378

253:                                              ; preds = %94, %94
  %254 = load i8, ptr %74, align 1
  %255 = icmp ugt i8 %254, 15
  br i1 %255, label %269, label %256

256:                                              ; preds = %253
  %257 = zext i8 %254 to i32
  %258 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 8, i32 1, i32 %257, i32 1
  %259 = load i8, ptr %258, align 4
  %260 = icmp eq i8 %259, 0
  br i1 %260, label %269, label %261

261:                                              ; preds = %256
  %262 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %262, ptr %39, align 4
  switch i8 %64, label %264 [
    i8 9, label %265
    i8 10, label %263
  ]

263:                                              ; preds = %261
  br label %265

264:                                              ; preds = %261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %262) #14
  br label %269

265:                                              ; preds = %263, %261
  %266 = phi i8 [ 2, %263 ], [ 1, %261 ]
  %267 = phi i32 [ 0, %263 ], [ 1, %261 ]
  %268 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 8, i32 1, i32 %257, i32 4
  store i8 %266, ptr %268, align 1
  br label %378

269:                                              ; preds = %264, %256, %253
  %270 = load i32, ptr %52, align 4
  %271 = add i32 %270, 1
  store i32 %271, ptr %52, align 4
  br label %385

272:                                              ; preds = %94, %94
  %273 = getelementptr i8, ptr %63, i32 3
  %274 = load i8, ptr %273, align 1
  %275 = and i8 %274, 31
  %276 = zext i8 %275 to i32
  %277 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %276, i32 1
  %278 = load i8, ptr %277, align 4
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %272
  %281 = icmp eq i8 %64, 3
  br i1 %281, label %282, label %285

282:                                              ; preds = %280
  %283 = load i32, ptr %51, align 4
  %284 = add i32 %283, 1
  store i32 %284, ptr %51, align 4
  br label %385

285:                                              ; preds = %280
  %286 = load i32, ptr %50, align 4
  %287 = add i32 %286, 1
  store i32 %287, ptr %50, align 4
  br label %385

288:                                              ; preds = %272
  %289 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %289, ptr %39, align 4
  %290 = icmp eq i8 %64, 3
  %291 = load i8, ptr %74, align 1
  br i1 %290, label %292, label %294

292:                                              ; preds = %288
  %293 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %276, i32 8
  store i8 %291, ptr %293, align 1
  br label %296

294:                                              ; preds = %288
  %295 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %276, i32 9
  store i8 %291, ptr %295, align 4
  br label %296

296:                                              ; preds = %294, %292
  %297 = getelementptr i8, ptr %63, i32 4
  %298 = load i8, ptr %297, align 1
  %299 = getelementptr [32 x %struct.brcmf_fws_mac_descriptor], ptr %49, i32 0, i32 %276, i32 7
  store i8 %298, ptr %299, align 2
  br label %382

300:                                              ; preds = %94, %94
  %301 = load i32, ptr %74, align 1
  %302 = load i8, ptr %47, align 2
  %303 = and i8 %302, 8
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %300
  %306 = getelementptr i8, ptr %63, i32 6
  %307 = load i16, ptr %306, align 1
  br label %308

308:                                              ; preds = %305, %300
  %309 = phi i16 [ %307, %305 ], [ 0, %300 ]
  %310 = phi i32 [ 6, %305 ], [ 4, %300 ]
  %311 = icmp eq i8 %64, 19
  br i1 %311, label %312, label %315

312:                                              ; preds = %308
  %313 = getelementptr i8, ptr %74, i32 %310
  %314 = load i8, ptr %313, align 1
  br label %315

315:                                              ; preds = %312, %308
  %316 = phi i8 [ %314, %312 ], [ 1, %308 ]
  %317 = lshr i32 %301, 31
  %318 = lshr i32 %301, 8
  %319 = and i32 %318, 65535
  %320 = lshr i32 %301, 27
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 15
  %323 = zext i8 %316 to i32
  %324 = load i32, ptr %48, align 4
  %325 = add i32 %324, %323
  store i32 %325, ptr %48, align 4
  %326 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %326, ptr %39, align 4
  tail call fastcc void @brcmf_fws_txs_process(ptr noundef %5, i8 noundef zeroext %322, i32 noundef %319, i32 noundef %317, i16 noundef zeroext %309, i8 noundef zeroext %316) #14
  %327 = load i32, ptr %39, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %327) #14
  br label %385

328:                                              ; preds = %94
  %329 = load i32, ptr %37, align 4
  %330 = icmp eq i32 %329, 2
  br i1 %330, label %331, label %385

331:                                              ; preds = %328
  %332 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #14
  store i32 %332, ptr %39, align 4
  %333 = load i8, ptr %74, align 1
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %331
  %336 = load i32, ptr %40, align 4
  %337 = or i32 %336, 1
  store i32 %337, ptr %40, align 4
  %338 = zext i8 %333 to i32
  %339 = load i32, ptr %41, align 4
  %340 = add i32 %339, %338
  %341 = load i32, ptr %42, align 4
  %342 = tail call i32 @llvm.smin.i32(i32 %340, i32 %341)
  store i32 %342, ptr %41, align 4
  br label %343

343:                                              ; preds = %335, %331
  %344 = getelementptr i8, ptr %63, i32 3
  %345 = load i8, ptr %344, align 1
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext %345) #14
  %346 = getelementptr i8, ptr %63, i32 4
  %347 = load i8, ptr %346, align 1
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext %347) #14
  %348 = getelementptr i8, ptr %63, i32 5
  %349 = load i8, ptr %348, align 1
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %5, i8 noundef zeroext 3, i8 noundef zeroext %349) #14
  %350 = getelementptr i8, ptr %63, i32 6
  %351 = load i8, ptr %350, align 1
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %361, label %353

353:                                              ; preds = %343
  %354 = load i32, ptr %40, align 4
  %355 = or i32 %354, 16
  store i32 %355, ptr %40, align 4
  %356 = zext i8 %351 to i32
  %357 = load i32, ptr %43, align 4
  %358 = add i32 %357, %356
  %359 = load i32, ptr %44, align 4
  %360 = tail call i32 @llvm.smin.i32(i32 %358, i32 %359)
  store i32 %360, ptr %43, align 4
  br label %361

361:                                              ; preds = %353, %343
  %362 = getelementptr i8, ptr %63, i32 7
  %363 = load i8, ptr %362, align 1
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %361
  %366 = load i32, ptr %40, align 4
  %367 = or i32 %366, 32
  store i32 %367, ptr %40, align 4
  %368 = zext i8 %363 to i32
  %369 = load i32, ptr %45, align 4
  %370 = add i32 %369, %368
  %371 = load i32, ptr %46, align 4
  %372 = tail call i32 @llvm.smin.i32(i32 %370, i32 %371)
  store i32 %372, ptr %45, align 4
  br label %373

373:                                              ; preds = %365, %361
  %374 = load i32, ptr %39, align 4
  br label %382

375:                                              ; preds = %94
  %376 = load i32, ptr %36, align 4
  %377 = add i32 %376, 1
  store i32 %377, ptr %36, align 4
  br label %385

378:                                              ; preds = %265, %220, %219
  %379 = phi i32 [ %262, %265 ], [ %214, %219 ], [ %252, %220 ]
  %380 = phi i32 [ %267, %265 ], [ 1, %219 ], [ 0, %220 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %379) #14
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %384, label %385

382:                                              ; preds = %373, %296
  %383 = phi i32 [ %374, %373 ], [ %289, %296 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %383) #14
  br label %384

384:                                              ; preds = %382, %378
  br label %385

385:                                              ; preds = %384, %378, %375, %328, %315, %285, %282, %269, %210, %201, %197, %195, %167, %164, %115, %109, %95, %94, %94
  %386 = phi i32 [ 1, %384 ], [ %58, %378 ], [ %58, %375 ], [ %58, %315 ], [ %58, %95 ], [ %58, %109 ], [ %58, %115 ], [ %58, %164 ], [ %58, %167 ], [ %58, %195 ], [ %58, %197 ], [ %58, %201 ], [ %58, %210 ], [ %58, %269 ], [ %58, %285 ], [ %58, %282 ], [ %58, %328 ], [ %58, %94 ], [ %58, %94 ]
  %387 = getelementptr i8, ptr %63, i32 %76
  %388 = trunc i32 %76 to i16
  %389 = sub i16 %62, %388
  %390 = icmp sgt i16 %389, 0
  br i1 %390, label %57, label %394

391:                                              ; preds = %66
  %392 = call i16 @llvm.smin.i16(i16 %59, i16 1)
  %393 = add nsw i16 %392, -1
  br label %394

394:                                              ; preds = %391, %385
  %395 = phi i32 [ %58, %391 ], [ %386, %385 ]
  %396 = phi i16 [ %393, %391 ], [ %389, %385 ]
  %397 = icmp eq i16 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %394, %89, %70, %27
  %399 = phi i32 [ %395, %394 ], [ 0, %27 ], [ %58, %89 ], [ %58, %70 ]
  %400 = load i32, ptr %28, align 4
  %401 = add i32 %400, 1
  store i32 %401, ptr %28, align 4
  br label %402

402:                                              ; preds = %398, %394
  %403 = phi i32 [ %399, %398 ], [ %395, %394 ]
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %429

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 16
  %407 = load i32, ptr %406, align 4
  %408 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 17
  %409 = load i32, ptr %408, align 4
  %410 = and i32 %409, %407
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %424

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 20
  %414 = load i8, ptr %413, align 1, !range !11
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %422, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 5
  %418 = load i32, ptr %417, align 4
  %419 = icmp ne i32 %418, 0
  %420 = icmp eq i32 %409, 0
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %429, label %424

422:                                              ; preds = %412
  %423 = icmp eq i32 %409, 0
  br i1 %423, label %429, label %424

424:                                              ; preds = %422, %416, %405
  %425 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 9
  %426 = load ptr, ptr %425, align 4
  %427 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 10
  %428 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %426, ptr noundef %427) #14
  br label %429

429:                                              ; preds = %424, %422, %416, %402
  %430 = sext i16 %16 to i32
  %431 = tail call ptr @skb_pull(ptr noundef %2, i32 noundef %430) #14
  %432 = load i32, ptr %7, align 8
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 3, i32 2
  %436 = load i32, ptr %435, align 4
  %437 = add i32 %436, 1
  store i32 %437, ptr %435, align 4
  br label %438

438:                                              ; preds = %434, %429, %24, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drvr_to_fws(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fws_process_skb(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @drvr_to_fws(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 2
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = and i16 %14, 15
  store i16 %15, ptr %10, align 2
  br i1 %9, label %16, label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = trunc i32 %20 to i8
  %22 = tail call zeroext i8 @brcmf_map_prio_to_aci(ptr noundef %18, i8 noundef zeroext %21) #14
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %16, %2
  %25 = phi i32 [ 4, %2 ], [ %23, %16 ]
  %26 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 1
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #14
  %28 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = icmp ne i32 %25, 1
  %30 = icmp ult i32 %25, 4
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %33, 10
  %35 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 18
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = load i32, ptr %6, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %40, %36
  %45 = icmp eq ptr %6, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 8
  br label %48

48:                                               ; preds = %58, %46
  %49 = phi i32 [ 0, %46 ], [ %60, %58 ]
  %50 = phi ptr [ %47, %46 ], [ %59, %58 ]
  %51 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %50, i32 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %50, i32 0, i32 10
  %56 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %55, ptr noundef nonnull dereferenceable(6) %6, i32 6) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54, %48
  %59 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %50, i32 1
  %60 = add nuw nsw i32 %49, 1
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %64, label %48

62:                                               ; preds = %54
  %63 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %67

64:                                               ; preds = %62, %58, %44
  %65 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %62, %40
  %68 = phi ptr [ %66, %64 ], [ %50, %62 ], [ %42, %40 ]
  %69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  store i16 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 4
  %73 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 4, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  %76 = urem i32 %75, 3072
  %77 = icmp eq i32 %76, %74
  br i1 %77, label %89, label %78

78:                                               ; preds = %84, %67
  %79 = phi i32 [ %87, %84 ], [ %76, %67 ]
  %80 = getelementptr %struct.brcmf_fws_info, ptr %4, i32 0, i32 4, i32 6, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 %79, ptr %73, align 4
  br label %97

84:                                               ; preds = %78
  %85 = add i32 %79, 1
  %86 = icmp eq i32 %85, 3072
  %87 = select i1 %86, i32 0, i32 %85
  %88 = icmp eq i32 %87, %74
  br i1 %88, label %89, label %78

89:                                               ; preds = %84, %67
  %90 = tail call i32 @net_ratelimit() #14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_get_free_slot, ptr noundef nonnull @.str.14) #14
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 4, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  br label %97

97:                                               ; preds = %93, %83
  %98 = phi i32 [ %79, %83 ], [ 3072, %93 ]
  %99 = shl i32 %98, 8
  %100 = and i32 %99, 16776960
  %101 = load i32, ptr %70, align 4
  %102 = and i32 %101, -16776961
  %103 = or i32 %102, %100
  store i32 %103, ptr %70, align 4
  %104 = load ptr, ptr %69, align 4
  %105 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %104, i32 0, i32 11, i32 %25
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %103, -117440768
  %109 = shl nuw i32 %25, 24
  %110 = and i32 %109, 117440512
  %111 = or i32 %108, %110
  %112 = or i32 %111, %107
  store i32 %112, ptr %70, align 4
  %113 = icmp ugt i32 %98, 3071
  br i1 %113, label %158, label %114

114:                                              ; preds = %97
  %115 = getelementptr %struct.brcmf_fws_info, ptr %4, i32 0, i32 4, i32 6, i32 %98
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = tail call i32 @net_ratelimit() #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_pushpkt, ptr noundef nonnull @.str.15) #14
  br label %122

122:                                              ; preds = %121, %118
  %123 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 4, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  br label %158

126:                                              ; preds = %114
  store i32 2, ptr %115, align 4
  %127 = getelementptr %struct.brcmf_fws_info, ptr %4, i32 0, i32 4, i32 6, i32 %98, i32 1
  store ptr %1, ptr %127, align 4
  %128 = load i32, ptr %72, align 4
  %129 = add i32 %128, 1
  store i32 %129, ptr %72, align 4
  %130 = load ptr, ptr %69, align 4
  %131 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %130, i32 0, i32 11, i32 %25
  %132 = load i8, ptr %131, align 1
  %133 = add i8 %132, 1
  store i8 %133, ptr %131, align 1
  %134 = tail call fastcc i32 @brcmf_fws_enq(ptr noundef %4, i32 noundef 1, i32 noundef %25, ptr noundef %1)
  %135 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 16
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 17
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %126
  %142 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 20
  %143 = load i8, ptr %142, align 1, !range !11
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = icmp ne i32 %147, 0
  %149 = icmp eq i32 %138, 0
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %168, label %153

151:                                              ; preds = %141
  %152 = icmp eq i32 %138, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %151, %145, %126
  %154 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 9
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 10
  %157 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %155, ptr noundef %156) #14
  br label %168

158:                                              ; preds = %122, %97
  %159 = getelementptr inbounds %struct.brcmf_fws_info, ptr %4, i32 0, i32 3, i32 7
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr %159, align 4
  %162 = tail call i32 @net_ratelimit() #14
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.wiphy, ptr %166, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.brcmf_fws_process_skb) #15
  br label %168

168:                                              ; preds = %164, %158, %153, %151, %145
  %169 = phi i32 [ -12, %164 ], [ -12, %158 ], [ 0, %145 ], [ 0, %151 ], [ 0, %153 ]
  %170 = load i32, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %170) #14
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @brcmf_map_prio_to_aci(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fws_enq(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = shl i32 %2, 1
  %7 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 15
  %8 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = tail call i32 @net_ratelimit() #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %133, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_fws_enq, ptr noundef %3) #15
  br label %133

18:                                               ; preds = %4
  %19 = icmp eq i32 %1, 2
  br i1 %19, label %20, label %112

20:                                               ; preds = %18
  %21 = or i32 %6, 1
  %22 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 16
  %23 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12, i32 3
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = icmp ult i16 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12, i32 4, i32 %21, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12, i32 4, i32 %21, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %28, %20
  %36 = load i32, ptr %22, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %22, align 4
  br label %133

38:                                               ; preds = %28
  %39 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12, i32 4, i32 %21
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  %42 = select i1 %41, ptr null, ptr %40
  %43 = getelementptr inbounds %struct.anon.93, ptr %39, i32 0, i32 1
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %39
  %46 = select i1 %45, ptr null, ptr %44
  %47 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %66, %38
  %51 = phi ptr [ %46, %38 ], [ %68, %66 ]
  %52 = icmp eq ptr %42, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 255
  %57 = icmp ugt i32 %49, %56
  %58 = sub nsw i32 %49, %56
  %59 = icmp ult i32 %58, 128
  %60 = and i1 %57, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %53
  %62 = icmp ult i32 %49, %56
  %63 = sub nsw i32 %56, %49
  %64 = icmp ugt i32 %63, 128
  %65 = and i1 %62, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.anon.42, ptr %51, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %39
  br i1 %69, label %70, label %50, !prof !10

70:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1682, 0\0A.popsection", ""() #14, !srcloc !12
  unreachable

71:                                               ; preds = %61, %53, %50
  %72 = phi ptr [ %51, %61 ], [ %51, %53 ], [ %42, %50 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  store volatile ptr %39, ptr %3, align 8
  %75 = getelementptr inbounds %struct.anon.42, ptr %3, i32 0, i32 1
  store volatile ptr %44, ptr %75, align 4
  br label %97

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 3, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 255
  %80 = icmp ugt i32 %49, %79
  %81 = sub nsw i32 %49, %79
  %82 = icmp ult i32 %81, 128
  %83 = and i1 %80, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = icmp ult i32 %49, %79
  %86 = sub nsw i32 %79, %49
  %87 = icmp ugt i32 %86, 128
  %88 = and i1 %85, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84, %76
  %90 = load ptr, ptr %72, align 4
  store volatile ptr %90, ptr %3, align 8
  %91 = getelementptr inbounds %struct.anon.42, ptr %3, i32 0, i32 1
  store volatile ptr %72, ptr %91, align 4
  %92 = getelementptr inbounds %struct.sk_buff_list, ptr %90, i32 0, i32 1
  br label %97

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.anon.42, ptr %72, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  store volatile ptr %72, ptr %3, align 8
  %96 = getelementptr inbounds %struct.anon.42, ptr %3, i32 0, i32 1
  store volatile ptr %95, ptr %96, align 4
  br label %97

97:                                               ; preds = %93, %89, %74
  %98 = phi ptr [ %92, %89 ], [ %94, %93 ], [ %43, %74 ]
  %99 = phi ptr [ %72, %89 ], [ %95, %93 ], [ %44, %74 ]
  store volatile ptr %3, ptr %98, align 4
  store volatile ptr %3, ptr %99, align 4
  %100 = getelementptr inbounds %struct.sk_buff_head, ptr %39, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, 1
  store volatile i32 %102, ptr %100, align 4
  %103 = load i16, ptr %23, align 2
  %104 = add i16 %103, 1
  store i16 %104, ptr %23, align 2
  %105 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12, i32 1
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp sgt i32 %21, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %97
  %110 = trunc i32 %21 to i16
  %111 = and i16 %110, 255
  store i16 %111, ptr %105, align 2
  br label %119

112:                                              ; preds = %18
  %113 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12
  %114 = tail call ptr @brcmu_pktq_penq(ptr noundef %113, i32 noundef %6, ptr noundef %3) #14
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, ptr %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %7, align 4
  br label %133

119:                                              ; preds = %112, %109, %97
  %120 = shl nuw i32 1, %2
  %121 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 17
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, ptr %121, align 4
  %124 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 11, i32 %2
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 4
  %127 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 12
  store i32 %1, ptr %127, align 4
  tail call fastcc void @brcmf_fws_tim_update(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %2, i1 noundef zeroext true)
  %128 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %9, i32 0, i32 12
  %129 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 2
  %130 = load i16, ptr %129, align 2
  %131 = trunc i16 %130 to i8
  %132 = and i8 %131, 15
  tail call fastcc void @brcmf_fws_flow_control_check(ptr noundef %0, ptr noundef %128, i8 noundef zeroext %132)
  br label %133

133:                                              ; preds = %119, %116, %35, %14, %11
  %134 = phi i32 [ -23, %35 ], [ 0, %119 ], [ -23, %116 ], [ -2, %14 ], [ -2, %11 ]
  ret i32 %134
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_fws_reset_interface(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 1
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 4
  store i8 1, ptr %11, align 1
  %12 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 8
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 9
  store i8 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 3
  store i8 %9, ptr %14, align 2
  %15 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 7
  store i8 -1, ptr %15, align 2
  %16 = icmp eq ptr %6, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %18, ptr noundef nonnull align 1 dereferenceable(6) %6, i32 6, i1 false) #14
  br label %19

19:                                               ; preds = %17, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_add_interface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @drvr_to_fws(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 22
  %9 = load i8, ptr %8, align 1, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13
  %15 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 5
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 8
  %17 = trunc i32 %13 to i8
  %18 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 1
  store i8 1, ptr %18, align 4
  %19 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 4
  store i8 1, ptr %19, align 1
  %20 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 8
  store i8 0, ptr %20, align 1
  %21 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 9
  store i8 0, ptr %21, align 4
  %22 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 3
  store i8 %17, ptr %22, align 2
  %23 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 7
  store i8 -1, ptr %23, align 2
  %24 = icmp eq ptr %16, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %11
  %26 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %26, ptr noundef nonnull align 1 dereferenceable(6) %16, i32 6, i1 false) #14
  br label %27

27:                                               ; preds = %25, %11
  %28 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 @strlcpy(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef 16) #14
  br label %43

32:                                               ; preds = %27
  %33 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = zext i8 %34 to i32
  %38 = and i32 %13, 255
  %39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %37, i32 noundef %38) #14
  br label %43

40:                                               ; preds = %32
  %41 = and i32 %13, 255
  %42 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %41) #14
  br label %43

43:                                               ; preds = %40, %36, %30
  %44 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 1, i32 %13, i32 12
  tail call void @brcmu_pktq_init(ptr noundef %44, i32 noundef 14, i32 noundef 256) #14
  br label %45

45:                                               ; preds = %43, %7, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_fws_queue_skbs(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 1, !range !11
  %4 = icmp eq i8 %3, 0
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_pktq_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_del_interface(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call ptr @drvr_to_fws(ptr noundef %4) #14
  %6 = icmp eq ptr %3, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  store ptr null, ptr %2, align 4
  %11 = getelementptr inbounds %struct.brcmf_if, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 8, i32 1, i32 %12
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef %5, ptr noundef %13, i32 noundef %12)
  %14 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 1
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 4
  store i8 2, ptr %15, align 1
  %16 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 8
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %3, i32 0, i32 9
  store i8 0, ptr %17, align 4
  %18 = load i32, ptr %11, align 4
  tail call fastcc void @brcmf_fws_cleanup(ptr noundef %5, i32 noundef %18)
  %19 = load i32, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %19) #14
  br label %20

20:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_macdesc_cleanup(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, -1
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %59

15:                                               ; preds = %10, %8
  %16 = phi ptr [ @brcmf_fws_ifidx_match, %10 ], [ null, %8 ]
  %17 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %2, ptr %4, align 4
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 3
  br label %22

22:                                               ; preds = %49, %20
  %23 = phi i32 [ 0, %20 ], [ %50, %49 ]
  %24 = call ptr @brcmu_pktq_pdeq_match(ptr noundef %17, i32 noundef %23, ptr noundef %16, ptr noundef nonnull %4) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %46, %22
  %27 = phi ptr [ %47, %46 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 3, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 65535
  %32 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %31
  %33 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %31, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %27, %34
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %26
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 637, i32 noundef 9, ptr noundef null) #14
  br label %37

37:                                               ; preds = %36, %26
  store i32 1, ptr %32, align 4
  %38 = icmp ugt i32 %31, 3071
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = call i32 @net_ratelimit() #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.20) #14
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, ptr %21, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %21, align 4
  br label %46

46:                                               ; preds = %43, %37
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %27) #14
  %47 = call ptr @brcmu_pktq_pdeq_match(ptr noundef %17, i32 noundef %23, ptr noundef %16, ptr noundef nonnull %4) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %26

49:                                               ; preds = %46, %22
  %50 = add nuw nsw i32 %23, 1
  %51 = load i16, ptr %17, align 4
  %52 = zext i16 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %22, label %54

54:                                               ; preds = %49, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %55 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = icmp ne i16 %56, 0
  %58 = zext i1 %57 to i8
  store i8 %58, ptr %5, align 4
  br label %59

59:                                               ; preds = %54, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_cleanup(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %75, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, -1
  %8 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 8
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ 0, %6 ], [ %12, %9 ]
  %11 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %8, i32 %10
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef nonnull %0, ptr noundef %11, i32 noundef %1)
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %9

14:                                               ; preds = %9
  %15 = select i1 %7, ptr null, ptr @brcmf_fws_ifidx_match
  %16 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 8, i32 2
  tail call fastcc void @brcmf_fws_macdesc_cleanup(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %1, ptr %4, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_bus, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.brcmf_bus_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.brcmf_bus, ptr %18, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr %22(ptr noundef %26) #14
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = load i16, ptr %27, align 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %50, %29
  %33 = phi i32 [ %51, %50 ], [ 0, %29 ]
  %34 = call ptr @brcmu_pktq_pdeq_match(ptr noundef %27, i32 noundef %33, ptr noundef %15, ptr noundef nonnull %4) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %47, %32
  %37 = phi ptr [ %48, %47 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 3, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 8
  %41 = and i32 %40, 65535
  %42 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %41
  %43 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %41, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %37, %44
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 827, i32 noundef 9, ptr noundef null) #14
  br label %47

47:                                               ; preds = %46, %36
  store i32 1, ptr %42, align 4
  call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %37) #14
  %48 = call ptr @brcmu_pktq_pdeq_match(ptr noundef %27, i32 noundef %33, ptr noundef %15, ptr noundef nonnull %4) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36

50:                                               ; preds = %47, %32
  %51 = add nuw nsw i32 %33, 1
  %52 = load i16, ptr %27, align 4
  %53 = zext i16 %52 to i32
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %32, label %55

55:                                               ; preds = %50, %29, %24, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %1, ptr %3, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = phi i32 [ 0, %55 ], [ %72, %71 ]
  %58 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 2
  %61 = and i32 %59, -2
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %57, i32 1
  %65 = load ptr, ptr %64, align 4
  br i1 %7, label %68, label %66

66:                                               ; preds = %63
  %67 = call zeroext i1 %15(ptr noundef %65, ptr noundef nonnull %3) #14, !callees !13
  br i1 %67, label %68, label %71

68:                                               ; preds = %66, %63
  br i1 %60, label %69, label %70

69:                                               ; preds = %68
  call void @brcmu_pkt_buf_free_skb(ptr noundef %65) #14
  br label %70

70:                                               ; preds = %69, %68
  store i32 1, ptr %58, align 4
  br label %71

71:                                               ; preds = %70, %66, %56
  %72 = add nuw nsw i32 %57, 1
  %73 = icmp eq i32 %72, 3072
  br i1 %73, label %74, label %56

74:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %75

75:                                               ; preds = %74, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_fws_attach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 43568, i32 noundef 3520, i32 noundef 4) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %113, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  store ptr %0, ptr %3, align 4096
  %7 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_mp_device, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 5
  store i32 %10, ptr %11, align 8
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.brcmf_bus, ptr %12, i32 0, i32 9
  %14 = load i8, ptr %13, align 4, !range !11
  %15 = icmp eq i8 %14, 0
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 22
  store i8 1, ptr %19, align 1
  br label %116

20:                                               ; preds = %5
  %21 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.5) #14
  %22 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 9
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call i32 @net_ratelimit() #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %104, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.brcmf_fws_attach) #15
  br label %104

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 10
  store i32 -32, ptr %32, align 16
  %33 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 10, i32 1
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 10, i32 1, i32 1
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 10, i32 2
  store ptr @brcmf_fws_dequeue_worker, ptr %35, align 4
  %36 = load i32, ptr %11, align 8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 79
  %39 = tail call i32 @brcmf_fweh_register(ptr noundef %0, i32 noundef 74, ptr noundef nonnull @brcmf_fws_notify_credit_map) #14
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = tail call i32 @net_ratelimit() #14
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %104, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcmf_fws_attach) #15
  br label %104

48:                                               ; preds = %31
  %49 = tail call i32 @brcmf_fweh_register(ptr noundef %0, i32 noundef 127, ptr noundef nonnull @brcmf_fws_notify_bcmc_credit_support) #14
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = tail call i32 @net_ratelimit() #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.brcmf_fws_attach) #15
  br label %58

58:                                               ; preds = %54, %51
  tail call void @brcmf_fweh_unregister(ptr noundef %0, i32 noundef 74) #14
  br label %104

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 6
  store i8 1, ptr %60, align 4
  %61 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef 0) #14
  %62 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %61, ptr noundef nonnull @.str.9, i32 noundef %38) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @net_ratelimit() #14
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.brcmf_fws_attach) #15
  br label %71

71:                                               ; preds = %67, %64
  store i32 0, ptr %11, align 8
  store i8 0, ptr %60, align 4
  br label %72

72:                                               ; preds = %71, %59
  %73 = tail call i32 @brcmf_fil_iovar_int_set(ptr noundef %61, ptr noundef nonnull @.str.11, i32 noundef 1) #14
  %74 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %61, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, ptr %2, align 4
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  store i32 8, ptr %2, align 4
  %81 = call i32 @brcmf_fil_iovar_int_set(ptr noundef %61, ptr noundef nonnull @.str.12, i32 noundef 8) #14
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 21
  %85 = load i8, ptr %84, align 2
  %86 = or i8 %85, 8
  store i8 %86, ptr %84, align 2
  br label %87

87:                                               ; preds = %83, %80, %76, %72
  %88 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 16 dereferenceable(24600) %88, i8 0, i32 24600, i1 false) #14
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ 0, %87 ], [ %92, %89 ]
  %91 = getelementptr %struct.brcmf_fws_info, ptr %3, i32 0, i32 4, i32 6, i32 %90
  store i32 1, ptr %91, align 8
  %92 = add nuw nsw i32 %90, 1
  %93 = icmp eq i32 %92, 3072
  br i1 %93, label %94, label %89

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2
  %96 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 1
  store i8 1, ptr %96, align 2048
  %97 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 4
  store i8 1, ptr %97, align 1
  %98 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 8
  store i8 0, ptr %98, align 1
  %99 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 9
  store i8 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 3
  store i8 0, ptr %100, align 2
  %101 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 7
  store i8 -1, ptr %101, align 2
  %102 = call i32 @strlcpy(ptr noundef %95, ptr noundef nonnull @.str.17, i32 noundef 16) #14
  %103 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 8, i32 2, i32 12
  call void @brcmu_pktq_init(ptr noundef %103, i32 noundef 14, i32 noundef 256) #14
  br label %116

104:                                              ; preds = %58, %44, %41, %27, %24
  %105 = phi i32 [ -9, %24 ], [ -9, %27 ], [ %49, %58 ], [ %39, %41 ], [ %39, %44 ]
  %106 = load ptr, ptr %22, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @destroy_workqueue(ptr noundef nonnull %106) #14
  br label %109

109:                                              ; preds = %108, %104
  %110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %111 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 2
  store i32 %110, ptr %111, align 8
  tail call fastcc void @brcmf_fws_cleanup(ptr noundef nonnull %3, i32 noundef -1) #14
  %112 = load i32, ptr %111, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %112) #14
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %113

113:                                              ; preds = %109, %1
  %114 = phi i32 [ %105, %109 ], [ -12, %1 ]
  %115 = inttoptr i32 %114 to ptr
  br label %116

116:                                              ; preds = %113, %94, %18
  %117 = phi ptr [ %115, %113 ], [ %3, %94 ], [ %3, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret ptr %117
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_fws_dequeue_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -43376
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -43372
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr i8, ptr %0, i32 -43368
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 188
  %8 = getelementptr i8, ptr %0, i32 189
  %9 = getelementptr i8, ptr %0, i32 -18632
  %10 = getelementptr i8, ptr %0, i32 40
  %11 = getelementptr i8, ptr %0, i32 -18627
  %12 = getelementptr i8, ptr %0, i32 176
  %13 = getelementptr i8, ptr %0, i32 -43232
  %14 = getelementptr i8, ptr %0, i32 -43228
  %15 = getelementptr i8, ptr %0, i32 -43220
  %16 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 1
  br label %17

17:                                               ; preds = %146, %1
  %18 = phi i32 [ 4, %1 ], [ %147, %146 ]
  %19 = load i8, ptr %7, align 4, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %149

21:                                               ; preds = %17
  %22 = load i8, ptr %8, align 1, !range !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %25, %21
  br label %31

25:                                               ; preds = %21
  %26 = load i32, ptr %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %24, label %28

28:                                               ; preds = %25
  %29 = getelementptr [6 x i32], ptr %10, i32 0, i32 %18
  %30 = icmp eq i32 %18, 4
  br label %74

31:                                               ; preds = %71, %24
  %32 = tail call fastcc ptr @brcmf_fws_deq(ptr noundef %2, i32 noundef %18)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %144, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 65535
  %39 = icmp ugt i32 %38, 3071
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = getelementptr %struct.brcmf_fws_hanger, ptr %13, i32 0, i32 6, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = tail call i32 @net_ratelimit() #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.20) #14
  br label %51

48:                                               ; preds = %40
  %49 = getelementptr %struct.brcmf_fws_hanger, ptr %13, i32 0, i32 6, i32 %38, i32 1
  %50 = load ptr, ptr %49, align 4
  store i32 1, ptr %41, align 4
  store ptr null, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %47, %44
  %52 = phi ptr [ %50, %48 ], [ %32, %47 ], [ %32, %44 ]
  %53 = phi ptr [ %14, %48 ], [ %15, %47 ], [ %15, %44 ]
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %51, %34
  %57 = phi ptr [ %32, %34 ], [ %52, %51 ]
  %58 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 2
  %59 = load i16, ptr %58, align 2
  %60 = and i16 %59, 15
  %61 = zext i16 %60 to i32
  %62 = load i32, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %62) #14
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr inbounds %struct.brcmf_proto, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %3, i32 noundef %61, i8 noundef zeroext 0, ptr noundef %57) #14
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  store i32 %67, ptr %6, align 4
  %68 = icmp slt i32 %66, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = tail call ptr @brcmf_get_ifp(ptr noundef %3, i32 noundef %61) #14
  tail call void @brcmf_txfinalize(ptr noundef %70, ptr noundef %57, i1 noundef zeroext false) #14
  br label %71

71:                                               ; preds = %69, %56
  %72 = load i8, ptr %7, align 4, !range !11
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %31, label %144

74:                                               ; preds = %89, %28
  %75 = load i32, ptr %29, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8, ptr %11, align 1, !range !11
  %79 = icmp eq i8 %78, 0
  %80 = select i1 %79, i1 %30, i1 false
  br i1 %80, label %81, label %92

81:                                               ; preds = %77, %74
  %82 = tail call fastcc ptr @brcmf_fws_deq(ptr noundef %2, i32 noundef %18)
  %83 = icmp eq ptr %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %29, align 4
  %86 = add i32 %85, -1
  store i32 %86, ptr %29, align 4
  %87 = tail call fastcc i32 @brcmf_fws_commit_skb(ptr noundef %2, i32 noundef %18, ptr noundef nonnull %82)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8, ptr %7, align 4, !range !11
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %74, label %92

92:                                               ; preds = %89, %84, %81, %77
  %93 = add nsw i32 %18, -1
  %94 = icmp ult i32 %93, 3
  br i1 %94, label %95, label %146

95:                                               ; preds = %92
  %96 = load i32, ptr %29, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %146

98:                                               ; preds = %95
  %99 = load i8, ptr %7, align 4, !range !11
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %98
  %102 = shl nuw nsw i32 1, %18
  br label %103

103:                                              ; preds = %125, %101
  %104 = phi i32 [ 0, %101 ], [ %126, %125 ]
  %105 = getelementptr %struct.brcmf_fws_info, ptr %2, i32 0, i32 12, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = getelementptr %struct.brcmf_fws_info, ptr %2, i32 0, i32 14, i32 %18, i32 %104
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  %112 = load i32, ptr %105, align 4
  %113 = add i32 %112, -1
  store i32 %113, ptr %105, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = load i32, ptr %12, align 4
  br label %131

117:                                              ; preds = %108
  %118 = shl nuw i32 1, %104
  %119 = xor i32 %118, -1
  %120 = load i32, ptr %12, align 4
  %121 = and i32 %120, %119
  br label %131

122:                                              ; preds = %103
  %123 = add nuw nsw i32 %104, 1
  %124 = icmp slt i32 %104, %93
  br i1 %124, label %125, label %127

125:                                              ; preds = %141, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %141 ]
  br label %103

127:                                              ; preds = %122
  %128 = xor i32 %102, -1
  %129 = load i32, ptr %12, align 4
  %130 = and i32 %129, %128
  store i32 %130, ptr %12, align 4
  br label %146

131:                                              ; preds = %117, %115
  %132 = phi i32 [ %116, %115 ], [ %121, %117 ]
  %133 = or i32 %132, %102
  store i32 %133, ptr %12, align 4
  %134 = tail call fastcc ptr @brcmf_fws_deq(ptr noundef %2, i32 noundef %18)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = trunc i32 %18 to i8
  tail call fastcc void @brcmf_fws_return_credits(ptr noundef %2, i8 noundef zeroext %137, i8 noundef zeroext 1)
  br label %146

138:                                              ; preds = %131
  %139 = tail call fastcc i32 @brcmf_fws_commit_skb(ptr noundef %2, i32 noundef %18, ptr noundef nonnull %134)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i8, ptr %7, align 4, !range !11
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %125, label %146

144:                                              ; preds = %71, %31
  %145 = add nsw i32 %18, -1
  br label %146

146:                                              ; preds = %144, %141, %138, %136, %127, %98, %95, %92
  %147 = phi i32 [ %145, %144 ], [ %93, %127 ], [ %93, %92 ], [ %93, %95 ], [ %93, %98 ], [ %93, %136 ], [ %93, %138 ], [ %93, %141 ]
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %17, label %149

149:                                              ; preds = %146, %17
  %150 = load i32, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %150) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fweh_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_fws_notify_credit_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call ptr @drvr_to_fws(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.brcmf_event_msg, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = tail call i32 @net_ratelimit() #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %80, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  %16 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.brcmf_fws_notify_credit_map, i32 noundef %16) #15
  br label %80

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 20
  store i8 1, ptr %18, align 1
  %19 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 1
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #14
  %21 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 16
  br label %23

23:                                               ; preds = %53, %17
  %24 = phi i32 [ 0, %17 ], [ %54, %53 ]
  %25 = getelementptr i8, ptr %2, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 13, i32 %24
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = getelementptr %struct.brcmf_fws_info, ptr %5, i32 0, i32 12, i32 %24
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  store i32 %33, ptr %31, align 4
  %34 = load i8, ptr %25, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, ptr %28, align 4
  %36 = icmp sgt i32 %33, 0
  %37 = shl nuw nsw i32 1, %24
  br i1 %36, label %38, label %41

38:                                               ; preds = %23
  %39 = load i32, ptr %22, align 4
  %40 = or i32 %39, %37
  br label %45

41:                                               ; preds = %23
  %42 = xor i32 %37, -1
  %43 = load i32, ptr %22, align 4
  %44 = and i32 %43, %42
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i32 [ %44, %41 ], [ %40, %38 ]
  store i32 %46, ptr %22, align 4
  %47 = load i32, ptr %31, align 4
  %48 = icmp slt i32 %47, 0
  %49 = load i1, ptr @brcmf_fws_notify_credit_map.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !10

52:                                               ; preds = %45
  store i1 true, ptr @brcmf_fws_notify_credit_map.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1622, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %24, i32 noundef %47) #14
  br label %53

53:                                               ; preds = %52, %45
  %54 = add nuw nsw i32 %24, 1
  %55 = icmp eq i32 %54, 6
  br i1 %55, label %56, label %23

56:                                               ; preds = %53
  %57 = load i32, ptr %22, align 4
  %58 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i8, ptr %18, align 1, !range !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = icmp eq i32 %59, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %78, label %73

71:                                               ; preds = %62
  %72 = icmp eq i32 %59, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %71, %65, %56
  %74 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 10
  %77 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %75, ptr noundef %76) #14
  br label %78

78:                                               ; preds = %73, %71, %65
  %79 = load i32, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %79) #14
  br label %80

80:                                               ; preds = %78, %12, %9
  %81 = phi i32 [ 0, %78 ], [ -22, %12 ], [ -22, %9 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmf_fws_notify_bcmc_credit_support(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = tail call ptr @drvr_to_fws(ptr noundef %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.brcmf_fws_info, ptr %5, i32 0, i32 7
  store i8 1, ptr %11, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #14
  br label %12

12:                                               ; preds = %7, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_fweh_unregister(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_detach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @destroy_workqueue(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %11 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  tail call fastcc void @brcmf_fws_cleanup(ptr noundef nonnull %0, i32 noundef -1)
  %12 = load i32, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %12) #14
  tail call void @kfree(ptr noundef nonnull %0) #14
  br label %13

13:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_fws_debugfs_create(ptr nocapture noundef %0) local_unnamed_addr #8 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_fws_fc_active(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 20
  %3 = load i8, ptr %2, align 1, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ %8, %5 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_bustxfail(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef %1) #14
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 1
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #14
  %10 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 8
  %14 = and i32 %13, 65535
  tail call fastcc void @brcmf_fws_txs_process(ptr noundef %0, i8 noundef zeroext 6, i32 noundef %14, i32 noundef 0, i16 noundef zeroext 0, i8 noundef zeroext 1)
  %15 = load i32, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %15) #14
  br label %16

16:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_txs_process(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4, !annotation !8
  switch i8 %1, label %44 [
    i8 0, label %9
    i8 1, label %14
    i8 2, label %19
    i8 3, label %24
    i8 4, label %29
    i8 5, label %34
    i8 6, label %39
  ]

9:                                                ; preds = %6
  %10 = zext i8 %5 to i32
  %11 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  store i32 %13, ptr %11, align 4
  br label %51

14:                                               ; preds = %6
  %15 = zext i8 %5 to i32
  %16 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 19
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  store i32 %18, ptr %16, align 4
  br label %51

19:                                               ; preds = %6
  %20 = zext i8 %5 to i32
  %21 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  br label %51

24:                                               ; preds = %6
  %25 = zext i8 %5 to i32
  %26 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  store i32 %28, ptr %26, align 4
  br label %51

29:                                               ; preds = %6
  %30 = zext i8 %5 to i32
  %31 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 18
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  store i32 %33, ptr %31, align 4
  br label %51

34:                                               ; preds = %6
  %35 = zext i8 %5 to i32
  %36 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %35
  store i32 %38, ptr %36, align 4
  br label %51

39:                                               ; preds = %6
  %40 = zext i8 %5 to i32
  %41 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  store i32 %43, ptr %41, align 4
  br label %51

44:                                               ; preds = %6
  %45 = tail call i32 @net_ratelimit() #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.wiphy, ptr %49, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.brcmf_fws_txs_process) #15
  br label %51

51:                                               ; preds = %47, %44, %39, %34, %29, %24, %19, %14, %9
  %52 = phi i1 [ true, %9 ], [ false, %14 ], [ false, %19 ], [ true, %24 ], [ true, %29 ], [ true, %34 ], [ true, %39 ], [ true, %47 ], [ true, %44 ]
  %53 = icmp eq i8 %5, 0
  br i1 %53, label %234, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 1
  %56 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 5
  %57 = icmp eq i8 %1, 6
  %58 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 16
  %59 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 17
  %60 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 20
  %61 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 9
  %62 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 10
  %63 = trunc i32 %3 to i8
  %64 = shl i32 %3, 31
  %65 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 3
  %66 = getelementptr inbounds %struct.brcmf_pub, ptr %8, i32 0, i32 2
  %67 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 21
  br label %68

68:                                               ; preds = %223, %54
  %69 = phi i32 [ %2, %54 ], [ %225, %223 ]
  %70 = phi i16 [ %4, %54 ], [ %231, %223 ]
  %71 = phi i8 [ 0, %54 ], [ %232, %223 ]
  %72 = icmp ugt i32 %69, 3071
  br i1 %72, label %90, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %69
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 @net_ratelimit() #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.20) #14
  br label %87

81:                                               ; preds = %73
  %82 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %69, i32 1
  %83 = load ptr, ptr %82, align 4
  br i1 %52, label %84, label %96

84:                                               ; preds = %81
  store i32 1, ptr %74, align 4
  store ptr null, ptr %82, align 4
  %85 = load i32, ptr %55, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %55, align 4
  br label %96

87:                                               ; preds = %80, %77
  %88 = load i32, ptr %65, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %65, align 4
  br label %90

90:                                               ; preds = %87, %68
  %91 = call i32 @net_ratelimit() #14
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %223, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %66, align 4
  %95 = getelementptr inbounds %struct.wiphy, ptr %94, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.brcmf_fws_txs_process, i32 noundef %69) #15
  br label %223

96:                                               ; preds = %84, %81
  %97 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 16
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %101, !prof !10

100:                                              ; preds = %96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1481, i32 noundef 9, ptr noundef null) #14
  call void @brcmu_pkt_buf_free_skb(ptr noundef %83) #14
  br label %223

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %98, i32 0, i32 13
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, -1
  store i32 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %98, i32 0, i32 5
  %106 = load i8, ptr %105, align 4, !range !11
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %98, i32 0, i32 14
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = add i32 %110, -1
  store i32 %113, ptr %109, align 4
  br label %114

114:                                              ; preds = %112, %108, %101
  %115 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 24
  %118 = and i32 %117, 7
  %119 = load i32, ptr %56, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %127, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 2
  %123 = load i16, ptr %122, align 2
  %124 = and i16 %123, 256
  %125 = icmp ne i16 %124, 0
  %126 = or i1 %57, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121, %114
  %128 = trunc i32 %118 to i8
  call fastcc void @brcmf_fws_return_credits(ptr noundef %0, i8 noundef zeroext %128, i8 noundef zeroext 1)
  %129 = load i32, ptr %58, align 4
  %130 = load i32, ptr %59, align 4
  %131 = and i32 %130, %129
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i8, ptr %60, align 1, !range !11
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %56, align 4
  %138 = icmp ne i32 %137, 0
  %139 = icmp eq i32 %130, 0
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %146, label %143

141:                                              ; preds = %133
  %142 = icmp eq i32 %130, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %141, %136, %127
  %144 = load ptr, ptr %61, align 4
  %145 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %144, ptr noundef %62) #14
  br label %146

146:                                              ; preds = %143, %141, %136, %121
  %147 = load ptr, ptr %97, align 8
  %148 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 2
  %149 = load i16, ptr %148, align 2
  %150 = and i16 %149, 256
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %147, i32 0, i32 4
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 2
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %147, i32 0, i32 8
  %158 = load i8, ptr %157, align 1
  %159 = add i8 %158, 1
  store i8 %159, ptr %157, align 1
  br label %160

160:                                              ; preds = %156, %152, %146
  %161 = load ptr, ptr %0, align 4
  store ptr null, ptr %7, align 4
  %162 = getelementptr inbounds %struct.brcmf_pub, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = load ptr, ptr %163, align 4
  %165 = call i32 %164(ptr noundef %161, i1 noundef zeroext false, ptr noundef %83, ptr noundef nonnull %7) #14
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  call void @brcmu_pkt_buf_free_skb(ptr noundef %83) #14
  br label %223

168:                                              ; preds = %160
  br i1 %52, label %221, label %169

169:                                              ; preds = %168
  %170 = load ptr, ptr %97, align 8
  %171 = load i32, ptr %115, align 4
  %172 = lshr i32 %171, 8
  %173 = and i32 %172, 65535
  %174 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %170, i32 0, i32 5
  %175 = load i8, ptr %174, align 4, !range !11
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %169
  store i8 1, ptr %174, align 4
  %178 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %170, i32 0, i32 13
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %170, i32 0, i32 14
  store i32 %179, ptr %180, align 4
  br label %181

181:                                              ; preds = %177, %169
  %182 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %170, i32 0, i32 6
  store i8 %63, ptr %182, align 1
  %183 = load i32, ptr %115, align 4
  %184 = and i32 %183, 2147483647
  %185 = or i32 %184, %64
  store i32 %185, ptr %115, align 4
  %186 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 3, i32 8
  %187 = and i16 %70, 8192
  %188 = icmp eq i16 %187, 0
  %189 = and i16 %70, -12289
  %190 = or i16 %189, 4096
  %191 = and i16 %70, -4097
  %192 = select i1 %188, i16 %191, i16 %190
  store i16 %192, ptr %186, align 2
  %193 = call fastcc i32 @brcmf_fws_enq(ptr noundef %0, i32 noundef 2, i32 noundef %118, ptr noundef %83) #14
  %194 = icmp eq i32 %193, 0
  %195 = icmp ugt i32 %173, 3071
  br i1 %194, label %211, label %196

196:                                              ; preds = %181
  br i1 %195, label %221, label %197

197:                                              ; preds = %196
  %198 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %173
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = call i32 @net_ratelimit() #14
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_poppkt, ptr noundef nonnull @.str.20) #14
  br label %207

205:                                              ; preds = %197
  %206 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %173, i32 1
  store i32 1, ptr %198, align 4
  store ptr null, ptr %206, align 4
  br label %207

207:                                              ; preds = %205, %204, %201
  %208 = phi ptr [ %55, %205 ], [ %65, %204 ], [ %65, %201 ]
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %208, align 4
  br label %221

211:                                              ; preds = %181
  br i1 %195, label %223, label %212

212:                                              ; preds = %211
  %213 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 4, i32 6, i32 %173
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = call i32 @net_ratelimit() #14
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_hanger_mark_suppressed, ptr noundef nonnull @.str.20) #14
  br label %223

220:                                              ; preds = %212
  store i32 3, ptr %213, align 4
  br label %223

221:                                              ; preds = %207, %196, %168
  %222 = load ptr, ptr %7, align 4
  call void @brcmf_txfinalize(ptr noundef %222, ptr noundef %83, i1 noundef zeroext true) #14
  br label %223

223:                                              ; preds = %221, %220, %219, %216, %211, %167, %100, %93, %90
  %224 = add i32 %69, 1
  %225 = and i32 %224, 65535
  %226 = load i8, ptr %67, align 2
  %227 = and i8 %226, 8
  %228 = icmp eq i8 %227, 0
  %229 = add i16 %70, 1
  %230 = and i16 %229, 4095
  %231 = select i1 %228, i16 %70, i16 %230
  %232 = add nuw i8 %71, 1
  %233 = icmp ult i8 %232, %5
  br i1 %233, label %68, label %234

234:                                              ; preds = %223, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fws_bus_blocked(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @drvr_to_fws(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 22
  %5 = load i8, ptr %4, align 1, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %2
  %8 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %9 = getelementptr %struct.brcmf_pub, ptr %0, i32 0, i32 9, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.brcmf_if, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @brcmf_txflowblock_if(ptr noundef nonnull %10, i32 noundef 2, i1 noundef zeroext %1) #14
  br label %17

17:                                               ; preds = %16, %12, %7
  %18 = add nuw nsw i32 %8, 1
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %51, label %7

20:                                               ; preds = %2
  %21 = zext i1 %1 to i8
  %22 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 19
  store i8 %21, ptr %22, align 4
  br i1 %1, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 17
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 20
  %32 = load i8, ptr %31, align 1, !range !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = icmp eq i32 %27, 0
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %51, label %42

40:                                               ; preds = %30
  %41 = icmp eq i32 %27, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %40, %34, %23
  %43 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 10
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %45) #14
  br label %51

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.brcmf_fws_info, ptr %3, i32 0, i32 3, i32 23
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %42, %40, %34, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txflowblock_if(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_tim_update(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 12
  %6 = shl i32 %2, 1
  %7 = shl i32 3, %6
  %8 = tail call i32 @brcmu_pktq_mlen(ptr noundef %5, i32 noundef %7) #14
  %9 = icmp eq i32 %8, 0
  %10 = shl nuw i32 1, %2
  %11 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 16
  %12 = load i8, ptr %11, align 1
  %13 = trunc i32 %10 to i8
  %14 = or i8 %12, %13
  %15 = xor i8 %13, -1
  %16 = and i8 %12, %15
  %17 = select i1 %9, i8 %16, i8 %14
  store i8 %17, ptr %11, align 1
  %18 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 15
  %19 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 17
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, %17
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %18, align 4
  %24 = xor i1 %3, true
  %25 = select i1 %24, i1 true, i1 %21
  br i1 %25, label %60, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %1, i32 0, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 2
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.brcmf_pub, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 16
  %35 = tail call ptr @brcmu_pkt_buf_get_skb(i32 noundef %34) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %30
  %38 = tail call ptr @skb_pull(ptr noundef nonnull %35, i32 noundef %34) #14
  %39 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 16
  store ptr %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 12
  store i32 3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 4
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 8
  store i16 0, ptr %42, align 4
  %43 = tail call fastcc zeroext i8 @brcmf_fws_hdrpush(ptr noundef %0, ptr noundef nonnull %35)
  %44 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 2
  %45 = load i16, ptr %44, align 2
  %46 = and i16 %45, 15
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 1
  %49 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %50) #14
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.brcmf_pub, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmf_proto, ptr %53, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %51, i32 noundef %47, i8 noundef zeroext %43, ptr noundef nonnull %35) #14
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #14
  store i32 %57, ptr %49, align 4
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %37
  tail call void @brcmu_pkt_buf_free_skb(ptr noundef nonnull %35) #14
  br label %60

60:                                               ; preds = %59, %37, %30, %26, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmu_pktq_mlen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pkt_buf_get_skb(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @brcmf_fws_hdrpush(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %8 = load i16, ptr %7, align 8
  %9 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %4, i32 0, i32 15
  %10 = load i8, ptr %9, align 4, !range !11
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i16 0, i16 4
  %13 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 21
  %14 = load i8, ptr %13, align 2
  %15 = lshr i8 %14, 2
  %16 = and i8 %15, 2
  %17 = zext i8 %16 to i16
  %18 = or i16 %12, %17
  %19 = add nuw nsw i16 %18, 6
  %20 = add nuw nsw i16 %18, 5
  %21 = or i16 %20, 3
  %22 = sub nuw nsw i16 -5, %18
  %23 = add nsw i16 %22, %21
  %24 = trunc i16 %23 to i8
  %25 = and i16 %23, 254
  %26 = zext i16 %25 to i32
  %27 = add nuw nsw i16 %25, %19
  %28 = zext i16 %27 to i32
  %29 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %28) #14
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  store i8 5, ptr %31, align 1
  %32 = getelementptr i8, ptr %31, i32 1
  store i8 4, ptr %32, align 1
  %33 = getelementptr i8, ptr %31, i32 2
  store i32 %6, ptr %33, align 1
  %34 = load i8, ptr %13, align 2
  %35 = and i8 %34, 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  store i8 6, ptr %32, align 1
  %38 = getelementptr i8, ptr %31, i32 6
  store i16 %8, ptr %38, align 1
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi i32 [ 8, %37 ], [ 6, %2 ]
  %41 = getelementptr i8, ptr %31, i32 %40
  %42 = load i8, ptr %9, align 4, !range !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  store i8 0, ptr %9, align 4
  store i8 12, ptr %41, align 1
  %45 = getelementptr i8, ptr %41, i32 1
  store i8 2, ptr %45, align 1
  %46 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %4, i32 0, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr i8, ptr %41, i32 2
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %4, i32 0, i32 16
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr i8, ptr %41, i32 3
  store i8 %50, ptr %51, align 1
  %52 = getelementptr i8, ptr %41, i32 4
  %53 = load i8, ptr %49, align 1
  %54 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %4, i32 0, i32 17
  store i8 %53, ptr %54, align 2
  br label %55

55:                                               ; preds = %44, %39
  %56 = phi ptr [ %52, %44 ], [ %41, %39 ]
  %57 = icmp eq i8 %24, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @llvm.memset.p0.i32(ptr align 1 %56, i8 -1, i32 %26, i1 false)
  br label %59

59:                                               ; preds = %58, %55
  %60 = lshr i16 %27, 2
  %61 = trunc i16 %60 to i8
  ret i8 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_return_credits(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #10 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  %6 = zext i8 %1 to i32
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  store i32 %10, ptr %8, align 4
  %11 = add i8 %1, -1
  %12 = icmp ult i8 %11, 3
  br i1 %12, label %13, label %90

13:                                               ; preds = %5
  %14 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 14, i32 %6, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = or i32 %10, 8
  store i32 %18, ptr %8, align 4
  %19 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 3
  %20 = zext i8 %2 to i32
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %73, %57, %41, %17
  %23 = phi ptr [ %14, %17 ], [ %38, %41 ], [ %54, %57 ], [ %70, %73 ]
  %24 = phi ptr [ %19, %17 ], [ %43, %41 ], [ %60, %57 ], [ %76, %73 ]
  %25 = phi i32 [ %15, %17 ], [ %44, %41 ], [ %55, %57 ], [ %71, %73 ]
  %26 = phi i32 [ %20, %17 ], [ %45, %41 ], [ %61, %57 ], [ %77, %73 ]
  %27 = sub i32 %25, %26
  store i32 %27, ptr %23, align 4
  %28 = load i32, ptr %24, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %24, align 4
  br label %103

30:                                               ; preds = %17
  %31 = trunc i32 %15 to i8
  %32 = sub i8 %2, %31
  %33 = load i32, ptr %19, align 4
  %34 = add i32 %33, %15
  store i32 %34, ptr %19, align 4
  store i32 0, ptr %14, align 4
  br label %35

35:                                               ; preds = %30, %13
  %36 = phi i32 [ %18, %30 ], [ %10, %13 ]
  %37 = phi i8 [ %32, %30 ], [ %2, %13 ]
  %38 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 14, i32 %6, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = or i32 %36, 4
  store i32 %42, ptr %8, align 4
  %43 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 2
  %44 = load i32, ptr %38, align 4
  %45 = zext i8 %37 to i32
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %22

47:                                               ; preds = %41
  %48 = trunc i32 %44 to i8
  %49 = sub i8 %37, %48
  %50 = load i32, ptr %43, align 4
  %51 = add i32 %50, %44
  store i32 %51, ptr %43, align 4
  store i32 0, ptr %38, align 4
  br label %52

52:                                               ; preds = %47, %35
  %53 = phi i8 [ %49, %47 ], [ %37, %35 ]
  %54 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 14, i32 %6, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %8, align 4
  %59 = or i32 %58, 2
  store i32 %59, ptr %8, align 4
  %60 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 1
  %61 = zext i8 %53 to i32
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %22

63:                                               ; preds = %57
  %64 = trunc i32 %55 to i8
  %65 = sub i8 %53, %64
  %66 = load i32, ptr %60, align 4
  %67 = add i32 %66, %55
  store i32 %67, ptr %60, align 4
  store i32 0, ptr %54, align 4
  br label %68

68:                                               ; preds = %63, %52
  %69 = phi i8 [ %65, %63 ], [ %53, %52 ]
  %70 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 14, i32 %6, i32 0
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %8, align 4
  %75 = or i32 %74, 1
  store i32 %75, ptr %8, align 4
  %76 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 0
  %77 = zext i8 %69 to i32
  %78 = icmp slt i32 %71, %77
  br i1 %78, label %79, label %22

79:                                               ; preds = %73
  %80 = trunc i32 %71 to i8
  %81 = sub i8 %69, %80
  %82 = load i32, ptr %76, align 4
  %83 = add i32 %82, %71
  store i32 %83, ptr %76, align 4
  store i32 0, ptr %70, align 4
  br label %84

84:                                               ; preds = %79, %68
  %85 = phi i8 [ %81, %79 ], [ %69, %68 ]
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 %6
  %89 = load i32, ptr %88, align 4
  br label %96

90:                                               ; preds = %84, %5
  %91 = phi i8 [ %85, %84 ], [ %2, %5 ]
  %92 = zext i8 %91 to i32
  %93 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 %6
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, %92
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %90, %87
  %97 = phi i32 [ %89, %87 ], [ %95, %90 ]
  %98 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 13, i32 %6
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 12, i32 %6
  store i32 %99, ptr %102, align 4
  br label %103

103:                                              ; preds = %101, %96, %22, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_penq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @brcmf_fws_flow_control_check(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = zext i8 %2 to i32
  %6 = tail call ptr @brcmf_get_ifp(ptr noundef %4, i32 noundef %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 964, i32 noundef 9, ptr noundef null) #14
  br label %32

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.brcmf_if, ptr %6, i32 0, i32 9
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.pktq, ptr %1, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = icmp ult i16 %16, 65
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  tail call void @brcmf_txflowblock_if(ptr noundef nonnull %6, i32 noundef 1, i1 noundef zeroext false) #14
  %19 = load i8, ptr %10, align 2
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = phi i8 [ %19, %18 ], [ %11, %14 ], [ %11, %9 ]
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pktq, ptr %1, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = icmp ugt i16 %26, 127
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 24
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void @brcmf_txflowblock_if(ptr noundef nonnull %6, i32 noundef 1, i1 noundef zeroext true) #14
  br label %32

32:                                               ; preds = %28, %24, %20, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @brcmf_fws_ifidx_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 2
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 15
  %6 = zext i16 %5 to i32
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %7, %6
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_pdeq_match(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @brcmf_fws_deq(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 8
  %5 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 15, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %1
  %8 = shl i32 %1, 1
  %9 = shl nuw i32 1, %8
  br label %10

10:                                               ; preds = %132, %2
  %11 = phi i32 [ 0, %2 ], [ %133, %132 ]
  %12 = add i32 %11, %6
  %13 = srem i32 %12, 49
  %14 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %132, label %17

17:                                               ; preds = %10
  %18 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 8, i32 1, i32 %24, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %132, label %28

28:                                               ; preds = %21, %17
  %29 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 9
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %132, label %40

40:                                               ; preds = %36, %32, %28
  %41 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 7
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = and i32 %7, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %132, label %46

46:                                               ; preds = %40
  %47 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 5
  %48 = load i8, ptr %47, align 4, !range !11
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 3, i32 2
  %51 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 12
  %52 = shl i32 %50, %8
  %53 = call ptr @brcmu_pktq_mdeq(ptr noundef %51, i32 noundef %52, ptr noundef nonnull %3) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %46
  %56 = load i8, ptr %47, align 4, !range !11
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %132, label %58

58:                                               ; preds = %55
  %59 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %132

62:                                               ; preds = %58
  store i8 0, ptr %47, align 4
  %63 = call ptr @brcmu_pktq_mdeq(ptr noundef %51, i32 noundef %9, ptr noundef nonnull %3) #14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %132, label %65

65:                                               ; preds = %62, %46
  %66 = phi ptr [ %63, %62 ], [ %53, %46 ]
  %67 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 8
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = add i8 %68, -1
  store i8 %71, ptr %67, align 1
  %72 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 3, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = or i16 %73, 2304
  store i16 %74, ptr %72, align 2
  %75 = load i8, ptr %29, align 1
  %76 = icmp eq i8 %75, 2
  br i1 %76, label %101, label %77

77:                                               ; preds = %70
  %78 = call i32 @net_ratelimit() #14
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %77
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_macdesc_use_req_credit, ptr noundef nonnull @.str.21) #14
  br label %101

81:                                               ; preds = %65
  %82 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 9
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = add i8 %83, -1
  store i8 %86, ptr %82, align 4
  %87 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 3, i32 2
  %88 = load i16, ptr %87, align 2
  %89 = and i16 %88, -2305
  %90 = or i16 %89, 2048
  store i16 %90, ptr %87, align 2
  %91 = load i8, ptr %29, align 1
  %92 = icmp eq i8 %91, 2
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = call i32 @net_ratelimit() #14
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fws_macdesc_use_req_credit, ptr noundef nonnull @.str.22) #14
  br label %101

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 3, i32 2
  %99 = load i16, ptr %98, align 2
  %100 = and i16 %99, -2305
  store i16 %100, ptr %98, align 2
  br label %101

101:                                              ; preds = %97, %96, %93, %85, %80, %77, %70
  %102 = add i32 %12, 1
  %103 = srem i32 %102, 49
  store i32 %103, ptr %5, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %66, i32 0, i32 3, i32 2
  %105 = load i16, ptr %104, align 2
  %106 = trunc i16 %105 to i8
  %107 = and i8 %106, 15
  call fastcc void @brcmf_fws_flow_control_check(ptr noundef %0, ptr noundef %51, i8 noundef zeroext %107)
  %108 = shl i32 3, %8
  %109 = call i32 @brcmu_pktq_mlen(ptr noundef %51, i32 noundef %108) #14
  %110 = icmp eq i32 %109, 0
  %111 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 16
  %112 = load i8, ptr %111, align 1
  %113 = trunc i32 %7 to i8
  %114 = or i8 %112, %113
  %115 = xor i8 %113, -1
  %116 = and i8 %112, %115
  %117 = select i1 %110, i8 %116, i8 %114
  store i8 %117, ptr %111, align 1
  %118 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 15
  %119 = getelementptr %struct.brcmf_fws_mac_descriptor, ptr %4, i32 %13, i32 17
  %120 = load i8, ptr %119, align 2
  %121 = icmp ne i8 %120, %117
  %122 = zext i1 %121 to i8
  store i8 %122, ptr %118, align 4
  %123 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 11, i32 %1
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  store i32 %125, ptr %123, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %101
  %128 = xor i32 %7, -1
  %129 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 17
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, %128
  store i32 %131, ptr %129, align 4
  br label %135

132:                                              ; preds = %62, %58, %55, %40, %36, %21, %10
  %133 = add nuw nsw i32 %11, 1
  %134 = icmp eq i32 %133, 49
  br i1 %134, label %135, label %10

135:                                              ; preds = %132, %127, %101
  %136 = phi ptr [ %66, %127 ], [ %66, %101 ], [ null, %132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_txfinalize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fws_commit_skb(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = ptrtoint ptr %6 to i32
  br label %142

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  %14 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  br i1 %13, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, ptr %14, align 4
  br label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %6, i32 0, i32 6
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 31
  %22 = load i32, ptr %14, align 4
  %23 = and i32 %22, 2147483647
  %24 = or i32 %23, %21
  br label %25

25:                                               ; preds = %17, %15
  %26 = phi i32 [ %16, %15 ], [ %24, %17 ]
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 2048
  %30 = icmp eq i16 %29, 0
  %31 = select i1 %30, i32 134217728, i32 402653184
  %32 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %33 = and i32 %26, -2013265921
  %34 = or i32 %31, %33
  store i32 %34, ptr %32, align 4
  %35 = tail call fastcc zeroext i8 @brcmf_fws_hdrpush(ptr noundef %0, ptr noundef %2) #14
  %36 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %6, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %6, i32 0, i32 5
  %40 = load i8, ptr %39, align 4, !range !11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %6, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %25
  %47 = load i16, ptr %27, align 2
  %48 = and i16 %47, 15
  %49 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 1
  %50 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %51) #14
  %52 = load ptr, ptr %0, align 4
  %53 = zext i16 %48 to i32
  %54 = getelementptr inbounds %struct.brcmf_pub, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.brcmf_proto, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %52, i32 noundef %53, i8 noundef zeroext %35, ptr noundef %2) #14
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #14
  store i32 %59, ptr %50, align 4
  %60 = icmp slt i32 %58, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %46
  %62 = load i32, ptr %36, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %36, align 4
  %64 = load i8, ptr %39, align 4, !range !11
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %6, i32 0, i32 14
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4
  %72 = getelementptr inbounds %struct.brcmf_pub, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %71, i1 noundef zeroext false, ptr noundef %2, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %76 = load ptr, ptr %0, align 4
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %77, i32 0, i32 1
  %79 = load i8, ptr %78, align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %70
  %82 = shl i32 %1, 1
  %83 = load i32, ptr %11, align 4
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i32
  %86 = or i32 %82, %85
  %87 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %77, i32 0, i32 12
  %88 = call ptr @brcmu_pktq_penq_head(ptr noundef %87, i32 noundef %86, ptr noundef %2) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %81
  %91 = call i32 @net_ratelimit() #14
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.brcmf_pub, ptr %76, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.brcmf_fws_rollback_toq, ptr noundef %77, i32 noundef %86) #15
  br label %104

97:                                               ; preds = %70
  %98 = call i32 @net_ratelimit() #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.brcmf_pub, ptr %76, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.wiphy, ptr %102, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.brcmf_fws_rollback_toq, ptr noundef %77) #15
  br label %104

104:                                              ; preds = %100, %97, %93, %90
  %105 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 14
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = load i32, ptr %32, align 4
  %109 = lshr i32 %108, 8
  %110 = and i32 %109, 65535
  call fastcc void @brcmf_fws_txs_process(ptr noundef %0, i8 noundef zeroext 6, i32 noundef %110, i32 noundef 0, i16 noundef zeroext 0, i8 noundef zeroext 1) #14
  br label %142

111:                                              ; preds = %81
  %112 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 13
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 4
  %115 = trunc i32 %1 to i8
  call fastcc void @brcmf_fws_return_credits(ptr noundef %0, i8 noundef zeroext %115, i8 noundef zeroext 1) #14
  %116 = load ptr, ptr %5, align 8
  %117 = load i16, ptr %27, align 2
  %118 = and i16 %117, 256
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %116, i32 0, i32 4
  %122 = load i8, ptr %121, align 1
  %123 = icmp eq i8 %122, 2
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.brcmf_fws_mac_descriptor, ptr %116, i32 0, i32 8
  %126 = load i8, ptr %125, align 1
  %127 = add i8 %126, 1
  store i8 %127, ptr %125, align 1
  br label %142

128:                                              ; preds = %46
  %129 = getelementptr inbounds %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  %132 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 5, i32 %1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  %135 = load i16, ptr %27, align 2
  %136 = and i16 %135, 2048
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %128
  %139 = getelementptr %struct.brcmf_fws_info, ptr %0, i32 0, i32 3, i32 6, i32 %1
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  br label %142

142:                                              ; preds = %138, %128, %124, %120, %111, %104, %8
  %143 = phi i32 [ %9, %8 ], [ %58, %138 ], [ %58, %128 ], [ %58, %104 ], [ %58, %111 ], [ %58, %120 ], [ %58, %124 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_mdeq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmu_pktq_penq_head(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 2153295141, i64 2153295629, i64 2153295178, i64 2153295234, i64 2153295268, i64 2153295292, i64 2153295333, i64 2153295354, i64 2153295382, i64 2153295416}
!13 = !{ptr @brcmf_fws_ifidx_match}
