; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/ring_mode.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/ring_mode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_desc = type { i32, i32, i32, i32 }
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

@ring_mode_ops = dso_local local_unnamed_addr constant %struct.stmmac_mode_ops { ptr null, ptr @is_jumbo_frm, ptr @jumbo_frm, ptr @set_16kib_bfsize, ptr @init_desc3, ptr @refill_desc3, ptr @clean_desc3 }, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @is_jumbo_frm(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %0, 4095
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jumbo_frm(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stmmac_priv, ptr %10, i32 0, i32 55
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr %struct.dma_extended_desc, ptr %18, i32 %12
  br label %24

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr %struct.dma_desc, ptr %22, i32 %12
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi ptr [ %19, %16 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.stmmac_priv, ptr %10, i32 0, i32 36
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %27, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 2048, i32 8188
  %32 = sub i32 %8, %31
  %33 = icmp ugt i32 %8, 8188
  %34 = getelementptr inbounds %struct.stmmac_priv, ptr %10, i32 0, i32 15
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %37) #5
  %39 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %33, label %42, label %159

42:                                               ; preds = %24
  br i1 %41, label %43, label %52, !prof !8

43:                                               ; preds = %42
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %44 = tail call ptr @dev_driver_string(ptr noundef %35) #5
  %45 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %35, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %46, %43 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %44, ptr noundef %51) #5
  br label %52

52:                                               ; preds = %50, %42
  br i1 %38, label %53, label %55

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.dma_desc, ptr %25, i32 0, i32 2
  store i32 -1, ptr %54, align 4
  br label %208

55:                                               ; preds = %52
  %56 = load ptr, ptr @mem_map, align 4
  %57 = ptrtoint ptr %37 to i32
  %58 = add i32 %57, 1073741824
  %59 = lshr i32 %58, 12
  %60 = getelementptr %struct.page, ptr %56, i32 %59
  %61 = and i32 %57, 4095
  %62 = tail call i32 @dma_map_page_attrs(ptr noundef %35, ptr noundef %60, i32 noundef %61, i32 noundef %31, i32 noundef 1, i32 noundef 0) #5
  %63 = getelementptr inbounds %struct.dma_desc, ptr %25, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %208, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 9
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr %struct.stmmac_tx_info, ptr %67, i32 %12
  store i32 %62, ptr %68, align 4
  %69 = load ptr, ptr %66, align 16
  %70 = getelementptr %struct.stmmac_tx_info, ptr %69, i32 %12, i32 2
  store i32 %31, ptr %70, align 4
  %71 = load ptr, ptr %66, align 16
  %72 = getelementptr %struct.stmmac_tx_info, ptr %71, i32 %12, i32 4
  store i8 1, ptr %72, align 1
  %73 = add i32 %62, 4096
  %74 = getelementptr inbounds %struct.dma_desc, ptr %25, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.stmmac_priv, ptr %10, i32 0, i32 16
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %78, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = icmp ne i32 %2, 0
  %86 = load i32, ptr %4, align 8
  tail call void %82(ptr noundef %25, i32 noundef 1, i32 noundef %31, i1 noundef zeroext %85, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %86) #5
  br label %87

87:                                               ; preds = %84, %80, %65
  %88 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr ptr, ptr %89, i32 %12
  store ptr null, ptr %90, align 4
  %91 = add i32 %12, 1
  %92 = getelementptr inbounds %struct.stmmac_priv, ptr %10, i32 0, i32 24
  %93 = load i32, ptr %92, align 64
  %94 = add i32 %93, -1
  %95 = and i32 %94, %91
  %96 = load i32, ptr %13, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 5
  %100 = load ptr, ptr %99, align 64
  %101 = getelementptr %struct.dma_extended_desc, ptr %100, i32 %95
  br label %106

102:                                              ; preds = %87
  %103 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 7
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr %struct.dma_desc, ptr %104, i32 %95
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi ptr [ %101, %98 ], [ %105, %102 ]
  %108 = load ptr, ptr %34, align 8
  %109 = load ptr, ptr %36, align 4
  %110 = getelementptr i8, ptr %109, i32 %31
  %111 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %110) #5
  %112 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %113 = xor i1 %112, true
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %124, !prof !8

115:                                              ; preds = %106
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %116 = tail call ptr @dev_driver_string(ptr noundef %108) #5
  %117 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load ptr, ptr %108, align 4
  br label %122

122:                                              ; preds = %120, %115
  %123 = phi ptr [ %121, %120 ], [ %118, %115 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %116, ptr noundef %123) #5
  br label %124

124:                                              ; preds = %122, %106
  br i1 %111, label %125, label %127

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.dma_desc, ptr %107, i32 0, i32 2
  store i32 -1, ptr %126, align 4
  br label %208

127:                                              ; preds = %124
  %128 = load ptr, ptr @mem_map, align 4
  %129 = ptrtoint ptr %110 to i32
  %130 = add i32 %129, 1073741824
  %131 = lshr i32 %130, 12
  %132 = getelementptr %struct.page, ptr %128, i32 %131
  %133 = and i32 %129, 4095
  %134 = tail call i32 @dma_map_page_attrs(ptr noundef %108, ptr noundef %132, i32 noundef %133, i32 noundef %32, i32 noundef 1, i32 noundef 0) #5
  %135 = getelementptr inbounds %struct.dma_desc, ptr %107, i32 0, i32 2
  store i32 %134, ptr %135, align 4
  %136 = icmp eq i32 %134, -1
  br i1 %136, label %208, label %137

137:                                              ; preds = %127
  %138 = load ptr, ptr %66, align 16
  %139 = getelementptr %struct.stmmac_tx_info, ptr %138, i32 %95
  store i32 %134, ptr %139, align 4
  %140 = load ptr, ptr %66, align 16
  %141 = getelementptr %struct.stmmac_tx_info, ptr %140, i32 %95, i32 2
  store i32 %32, ptr %141, align 4
  %142 = load ptr, ptr %66, align 16
  %143 = getelementptr %struct.stmmac_tx_info, ptr %142, i32 %95, i32 4
  store i8 1, ptr %143, align 1
  %144 = add i32 %134, 4096
  %145 = getelementptr inbounds %struct.dma_desc, ptr %107, i32 0, i32 3
  store i32 %144, ptr %145, align 4
  %146 = load ptr, ptr %75, align 4
  %147 = getelementptr inbounds %struct.mac_device_info, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %206, label %150

150:                                              ; preds = %137
  %151 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %148, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %206, label %154

154:                                              ; preds = %150
  %155 = icmp ne i32 %2, 0
  %156 = load i32, ptr %6, align 4
  %157 = icmp eq i32 %156, 0
  %158 = load i32, ptr %4, align 8
  tail call void %152(ptr noundef %107, i32 noundef 0, i32 noundef %32, i1 noundef zeroext %155, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext %157, i32 noundef %158) #5
  br label %206

159:                                              ; preds = %24
  br i1 %41, label %160, label %169, !prof !8

160:                                              ; preds = %159
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %161 = tail call ptr @dev_driver_string(ptr noundef %35) #5
  %162 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load ptr, ptr %35, align 4
  br label %167

167:                                              ; preds = %165, %160
  %168 = phi ptr [ %166, %165 ], [ %163, %160 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %161, ptr noundef %168) #5
  br label %169

169:                                              ; preds = %167, %159
  br i1 %38, label %170, label %172

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.dma_desc, ptr %25, i32 0, i32 2
  store i32 -1, ptr %171, align 4
  br label %208

172:                                              ; preds = %169
  %173 = load ptr, ptr @mem_map, align 4
  %174 = ptrtoint ptr %37 to i32
  %175 = add i32 %174, 1073741824
  %176 = lshr i32 %175, 12
  %177 = getelementptr %struct.page, ptr %173, i32 %176
  %178 = and i32 %174, 4095
  %179 = tail call i32 @dma_map_page_attrs(ptr noundef %35, ptr noundef %177, i32 noundef %178, i32 noundef %8, i32 noundef 1, i32 noundef 0) #5
  %180 = getelementptr inbounds %struct.dma_desc, ptr %25, i32 0, i32 2
  store i32 %179, ptr %180, align 4
  %181 = icmp eq i32 %179, -1
  br i1 %181, label %208, label %182

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.stmmac_tx_queue, ptr %0, i32 0, i32 9
  %184 = load ptr, ptr %183, align 16
  %185 = getelementptr %struct.stmmac_tx_info, ptr %184, i32 %12
  store i32 %179, ptr %185, align 4
  %186 = load ptr, ptr %183, align 16
  %187 = getelementptr %struct.stmmac_tx_info, ptr %186, i32 %12, i32 2
  store i32 %8, ptr %187, align 4
  %188 = load ptr, ptr %183, align 16
  %189 = getelementptr %struct.stmmac_tx_info, ptr %188, i32 %12, i32 4
  store i8 1, ptr %189, align 1
  %190 = add i32 %179, 4096
  %191 = getelementptr inbounds %struct.dma_desc, ptr %25, i32 0, i32 3
  store i32 %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.stmmac_priv, ptr %10, i32 0, i32 16
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.mac_device_info, ptr %193, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %206, label %197

197:                                              ; preds = %182
  %198 = getelementptr inbounds %struct.stmmac_desc_ops, ptr %195, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = icmp ne i32 %2, 0
  %203 = load i32, ptr %6, align 4
  %204 = icmp eq i32 %203, 0
  %205 = load i32, ptr %4, align 8
  tail call void %199(ptr noundef %25, i32 noundef 1, i32 noundef %8, i1 noundef zeroext %202, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext %204, i32 noundef %205) #5
  br label %206

206:                                              ; preds = %201, %197, %182, %154, %150, %137
  %207 = phi i32 [ %95, %154 ], [ %95, %150 ], [ %95, %137 ], [ %12, %201 ], [ %12, %197 ], [ %12, %182 ]
  store i32 %207, ptr %11, align 4
  br label %208

208:                                              ; preds = %206, %172, %170, %127, %125, %55, %53
  %209 = phi i32 [ %207, %206 ], [ -1, %55 ], [ -1, %53 ], [ -1, %127 ], [ -1, %125 ], [ -1, %172 ], [ -1, %170 ]
  ret i32 %209
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @set_16kib_bfsize(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 8188
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ 16368, %3 ], [ 0, %1 ]
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @init_desc3(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 8188
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  store i32 %4, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @refill_desc3(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.stmmac_rx_queue, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 16368
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 8188
  %12 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %2
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
  %9 = getelementptr %struct.stmmac_tx_info, ptr %8, i32 %6, i32 4
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24, !prof !10

12:                                               ; preds = %2
  %13 = getelementptr %struct.stmmac_tx_info, ptr %8, i32 %6, i32 3
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 55
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.stmmac_priv, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !10

24:                                               ; preds = %20, %2
  %25 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 3
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %20, %16, %12
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!10 = !{!"branch_weights", i32 2000, i32 1}
