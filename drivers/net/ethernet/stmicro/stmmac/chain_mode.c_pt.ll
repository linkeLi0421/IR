; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/chain_mode.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/chain_mode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.92, %union.anon.93, [48 x i8], %union.anon.94, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.96, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, ptr }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.98, i32, i32, i32, i16, i16, %union.anon.100, %union.anon.101, %union.anon.102, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.98 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.113, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.113 = type { ptr }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.119, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.119 = type { ptr, i32, i32 }
%struct.stmmac_channel = type { %struct.napi_struct, [40 x i8], %struct.napi_struct, [40 x i8], %struct.napi_struct, ptr, %struct.spinlock, i32, [28 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.stmmac_safety_stats = type { [32 x i32], [32 x i32], [32 x i32] }
%struct.dma_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.7, %union.anon.76, %struct.atomic_t }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.stmmac_tx_info = type { i32, i8, i32, i8, i8, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.115, %struct.anon.116 }
%struct.anon.115 = type { i32, i32, i32 }
%struct.anon.116 = type { i32, i32, i32, i32 }
%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@chain_mode_ops = dso_local local_unnamed_addr constant %struct.stmmac_mode_ops { ptr @init_dma_chain, ptr @is_jumbo_frm, ptr @jumbo_frm, ptr null, ptr null, ptr @refill_desc3, ptr @clean_desc3 }, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal void @init_dma_chain(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  %6 = add i32 %2, -1
  %7 = icmp eq i32 %6, 0
  br i1 %5, label %9, label %8

8:                                                ; preds = %4
  br i1 %7, label %28, label %10

9:                                                ; preds = %4
  br i1 %7, label %28, label %19

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %16, %10 ], [ %0, %8 ]
  %12 = phi i32 [ %14, %10 ], [ %1, %8 ]
  %13 = phi i32 [ %17, %10 ], [ 0, %8 ]
  %14 = add i32 %12, 32
  %15 = getelementptr inbounds %struct.dma_desc, ptr %11, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr %struct.dma_extended_desc, ptr %11, i32 1
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %28, label %10

19:                                               ; preds = %19, %9
  %20 = phi ptr [ %25, %19 ], [ %0, %9 ]
  %21 = phi i32 [ %23, %19 ], [ %1, %9 ]
  %22 = phi i32 [ %26, %19 ], [ 0, %9 ]
  %23 = add i32 %21, 16
  %24 = getelementptr inbounds %struct.dma_desc, ptr %20, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr %struct.dma_desc, ptr %20, i32 1
  %26 = add nuw i32 %22, 1
  %27 = icmp eq i32 %26, %6
  br i1 %27, label %28, label %19

28:                                               ; preds = %19, %10, %9, %8
  %29 = phi ptr [ %0, %8 ], [ %0, %9 ], [ %25, %19 ], [ %16, %10 ]
  %30 = getelementptr inbounds %struct.dma_desc, ptr %29, i32 0, i32 3
  store i32 %1, ptr %30, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @is_jumbo_frm(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp ne i32 %1, 0
  %4 = icmp sgt i32 %0, 8188
  %5 = and i1 %4, %3
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = icmp sgt i32 %0, 2048
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 1, %10 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jumbo_frm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.dma_desc, ptr %13, i32 %11
  %15 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 36
  %16 = load ptr, ptr %15, align 64
  %17 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %16, i32 0, i32 14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 -2048, i32 -8188
  %21 = select i1 %19, i32 2048, i32 8188
  %22 = sub i32 %5, %7
  %23 = add i32 %22, %20
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %27) #5
  %29 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %41, !prof !8

32:                                               ; preds = %3
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %33 = tail call ptr @dev_driver_string(ptr noundef %25) #5
  %34 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load ptr, ptr %25, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi ptr [ %38, %37 ], [ %35, %32 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %33, ptr noundef %40) #5
  br label %41

41:                                               ; preds = %39, %3
  br i1 %28, label %42, label %44

42:                                               ; preds = %41
  %43 = getelementptr %struct.dma_desc, ptr %13, i32 %11, i32 2
  store i32 -1, ptr %43, align 4
  br label %181

44:                                               ; preds = %41
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %27 to i32
  %47 = add i32 %46, 1073741824
  %48 = lshr i32 %47, 12
  %49 = getelementptr %struct.page, ptr %45, i32 %48
  %50 = and i32 %46, 4095
  %51 = tail call i32 @dma_map_page_attrs(ptr noundef %25, ptr noundef %49, i32 noundef %50, i32 noundef %21, i32 noundef 1, i32 noundef 0) #5
  %52 = getelementptr %struct.dma_desc, ptr %13, i32 %11, i32 2
  store i32 %51, ptr %52, align 4
  %53 = icmp eq i32 %51, -1
  br i1 %53, label %181, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 9
  %56 = load ptr, ptr %55, align 16
  %57 = getelementptr %struct.stmmac_tx_info, ptr %56, i32 %11
  store i32 %51, ptr %57, align 4
  %58 = load ptr, ptr %55, align 16
  %59 = getelementptr %struct.stmmac_tx_info, ptr %58, i32 %11, i32 2
  store i32 %21, ptr %59, align 4
  %60 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 16
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mac_device_info, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %63, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = icmp ne i32 %2, 0
  %71 = load i32, ptr %4, align 8
  tail call void %67(ptr noundef %14, i32 noundef 1, i32 noundef %21, i1 noundef zeroext %70, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %71) #5
  br label %72

72:                                               ; preds = %69, %65, %54
  %73 = icmp eq i32 %23, 0
  br i1 %73, label %179, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 8
  %76 = getelementptr inbounds %struct.stmmac_priv, ptr %9, i32 0, i32 24
  %77 = icmp ne i32 %2, 0
  br label %78

78:                                               ; preds = %175, %74
  %79 = phi i32 [ %23, %74 ], [ %176, %175 ]
  %80 = phi i32 [ 1, %74 ], [ %177, %175 ]
  %81 = phi i32 [ %11, %74 ], [ %87, %175 ]
  %82 = load ptr, ptr %75, align 4
  %83 = getelementptr ptr, ptr %82, i32 %81
  store ptr null, ptr %83, align 4
  %84 = add i32 %81, 1
  %85 = load i32, ptr %76, align 64
  %86 = add i32 %85, -1
  %87 = and i32 %86, %84
  %88 = load ptr, ptr %12, align 8
  %89 = getelementptr %struct.dma_desc, ptr %88, i32 %87
  %90 = icmp ugt i32 %79, %21
  %91 = load ptr, ptr %24, align 8
  %92 = load ptr, ptr %26, align 4
  %93 = mul i32 %80, %21
  %94 = getelementptr i8, ptr %92, i32 %93
  %95 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %94) #5
  %96 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %90, label %99, label %137

99:                                               ; preds = %78
  br i1 %98, label %100, label %109, !prof !8

100:                                              ; preds = %99
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %101 = tail call ptr @dev_driver_string(ptr noundef %91) #5
  %102 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load ptr, ptr %91, align 4
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi ptr [ %106, %105 ], [ %103, %100 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %101, ptr noundef %108) #5
  br label %109

109:                                              ; preds = %107, %99
  br i1 %95, label %110, label %112

110:                                              ; preds = %109
  %111 = getelementptr %struct.dma_desc, ptr %88, i32 %87, i32 2
  store i32 -1, ptr %111, align 4
  br label %181

112:                                              ; preds = %109
  %113 = load ptr, ptr @mem_map, align 4
  %114 = ptrtoint ptr %94 to i32
  %115 = add i32 %114, 1073741824
  %116 = lshr i32 %115, 12
  %117 = getelementptr %struct.page, ptr %113, i32 %116
  %118 = and i32 %114, 4095
  %119 = tail call i32 @dma_map_page_attrs(ptr noundef %91, ptr noundef %117, i32 noundef %118, i32 noundef %21, i32 noundef 1, i32 noundef 0) #5
  %120 = getelementptr %struct.dma_desc, ptr %88, i32 %87, i32 2
  store i32 %119, ptr %120, align 4
  %121 = icmp eq i32 %119, -1
  br i1 %121, label %181, label %122

122:                                              ; preds = %112
  %123 = load ptr, ptr %55, align 16
  %124 = getelementptr %struct.stmmac_tx_info, ptr %123, i32 %87
  store i32 %119, ptr %124, align 4
  %125 = load ptr, ptr %55, align 16
  %126 = getelementptr %struct.stmmac_tx_info, ptr %125, i32 %87, i32 2
  store i32 %21, ptr %126, align 4
  %127 = load ptr, ptr %60, align 4
  %128 = getelementptr inbounds %struct.mac_device_info, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %175, label %131

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %129, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %175, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %4, align 8
  tail call void %133(ptr noundef %89, i32 noundef 0, i32 noundef %21, i1 noundef zeroext %77, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %136) #5
  br label %175

137:                                              ; preds = %78
  br i1 %98, label %138, label %147, !prof !8

138:                                              ; preds = %137
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %139 = tail call ptr @dev_driver_string(ptr noundef %91) #5
  %140 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load ptr, ptr %91, align 4
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi ptr [ %144, %143 ], [ %141, %138 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %139, ptr noundef %146) #5
  br label %147

147:                                              ; preds = %145, %137
  br i1 %95, label %148, label %150

148:                                              ; preds = %147
  %149 = getelementptr %struct.dma_desc, ptr %88, i32 %87, i32 2
  store i32 -1, ptr %149, align 4
  br label %181

150:                                              ; preds = %147
  %151 = load ptr, ptr @mem_map, align 4
  %152 = ptrtoint ptr %94 to i32
  %153 = add i32 %152, 1073741824
  %154 = lshr i32 %153, 12
  %155 = getelementptr %struct.page, ptr %151, i32 %154
  %156 = and i32 %152, 4095
  %157 = tail call i32 @dma_map_page_attrs(ptr noundef %91, ptr noundef %155, i32 noundef %156, i32 noundef %79, i32 noundef 1, i32 noundef 0) #5
  %158 = getelementptr %struct.dma_desc, ptr %88, i32 %87, i32 2
  store i32 %157, ptr %158, align 4
  %159 = icmp eq i32 %157, -1
  br i1 %159, label %181, label %160

160:                                              ; preds = %150
  %161 = load ptr, ptr %55, align 16
  %162 = getelementptr %struct.stmmac_tx_info, ptr %161, i32 %87
  store i32 %157, ptr %162, align 4
  %163 = load ptr, ptr %55, align 16
  %164 = getelementptr %struct.stmmac_tx_info, ptr %163, i32 %87, i32 2
  store i32 %79, ptr %164, align 4
  %165 = load ptr, ptr %60, align 4
  %166 = getelementptr inbounds %struct.mac_device_info, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %179, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %167, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %179, label %173

173:                                              ; preds = %169
  %174 = load i32, ptr %4, align 8
  tail call void %171(ptr noundef %89, i32 noundef 0, i32 noundef %79, i1 noundef zeroext %77, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %174) #5
  br label %179

175:                                              ; preds = %135, %131, %122
  %176 = sub i32 %79, %21
  %177 = add i32 %80, 1
  %178 = icmp eq i32 %176, 0
  br i1 %178, label %179, label %78

179:                                              ; preds = %175, %173, %169, %160, %72
  %180 = phi i32 [ %11, %72 ], [ %87, %173 ], [ %87, %169 ], [ %87, %160 ], [ %87, %175 ]
  store i32 %180, ptr %10, align 4
  br label %181

181:                                              ; preds = %179, %150, %148, %112, %110, %44, %42
  %182 = phi i32 [ %180, %179 ], [ -1, %44 ], [ -1, %42 ], [ -1, %110 ], [ -1, %148 ], [ -1, %150 ], [ -1, %112 ]
  ret i32 %182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @refill_desc3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.stmmac_rx_queue, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 55
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stmmac_rx_queue, ptr %0, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stmmac_rx_queue, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 21
  %19 = load i32, ptr %18, align 64
  %20 = urem i32 %17, %19
  %21 = shl i32 %20, 4
  %22 = add i32 %21, %14
  %23 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @clean_desc3(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 32
  %7 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr %struct.stmmac_tx_info, ptr %8, i32 %6, i32 3
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 55
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 3
  %18 = load i32, ptr %17, align 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 14
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %6, 1
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 24
  %25 = load i32, ptr %24, align 64
  %26 = urem i32 %23, %25
  %27 = add i32 %26, %22
  %28 = shl i32 %27, 4
  %29 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %20, %16, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
!9 = !{i8 0, i8 2}
