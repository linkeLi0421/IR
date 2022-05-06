; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/hwif.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/hwif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_hwif_entry = type { i8, i8, i8, i32, i32, %struct.stmmac_regs_off, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_regs_off = type { i32, i32 }
%struct.stmmac_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_hwtimestamp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_tc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_priv = type { [8 x i32], [8 x i32], [8 x i32], i32, i8, i8, i32, i32, i32, i32, i32, [8 x i32], i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, [56 x i8], [8 x %struct.stmmac_rx_queue], i32, [60 x i8], [8 x %struct.stmmac_tx_queue], i32, [60 x i8], [8 x %struct.stmmac_channel], i32, i32, i32, ptr, %struct.phylink_config, ptr, [20 x i8], %struct.stmmac_extra_stats, %struct.stmmac_safety_stats, ptr, %struct.dma_features, %struct.stmmac_counters, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.mutex, ptr, ptr, [128 x i32], i32, i32, [8 x i32], [8 x i32], [25 x i8], [25 x i8], [25 x i8], [26 x i8], [26 x i8], [8 x [30 x i8]], [8 x [34 x i8]], ptr, i32, ptr, %struct.work_struct, i32, ptr, %struct.work_struct, [20 x i8], i32, i32, ptr, i32, ptr, [3 x i32], [3 x i32], i32, ptr, [4 x %struct.stmmac_pps_cfg], %struct.stmmac_rss, ptr, ptr, [12 x i8] }
%struct.stmmac_rx_queue = type { i32, i32, [56 x i8], %struct.xdp_rxq_info, ptr, ptr, ptr, ptr, ptr, [44 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.114, [20 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.anon.114 = type { ptr, i32, i32 }
%struct.stmmac_tx_queue = type { i32, i32, %struct.hrtimer, i32, ptr, ptr, ptr, ptr, %union.anon.115, ptr, ptr, i32, i32, i32, i32, i32, i32, [16 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.115 = type { ptr }
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
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_rss = type { i32, [40 x i8], [256 x i32] }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.mac_device_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], i32, i8, i8 }
%struct.mii_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mac_link = type { i32, i32, i32, i32, i32, i32, %struct.anon.110, %struct.anon.111 }
%struct.anon.110 = type { i32, i32, i32 }
%struct.anon.111 = type { i32, i32, i32, i32 }

@stmmac_hw = internal unnamed_addr constant [8 x %struct.stmmac_hwif_entry] [%struct.stmmac_hwif_entry { i8 0, i8 0, i8 0, i32 0, i32 0, %struct.stmmac_regs_off { i32 1792, i32 256 }, ptr null, ptr @dwmac100_dma_ops, ptr @dwmac100_ops, ptr @stmmac_ptp, ptr null, ptr null, ptr @dwmac_mmc_ops, ptr @dwmac100_setup, ptr @stmmac_dwmac1_quirks }, %struct.stmmac_hwif_entry { i8 1, i8 0, i8 0, i32 0, i32 0, %struct.stmmac_regs_off { i32 1792, i32 256 }, ptr null, ptr @dwmac1000_dma_ops, ptr @dwmac1000_ops, ptr @stmmac_ptp, ptr null, ptr null, ptr @dwmac_mmc_ops, ptr @dwmac1000_setup, ptr @stmmac_dwmac1_quirks }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 0, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac4_dma_ops, ptr @dwmac4_ops, ptr @stmmac_ptp, ptr null, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr @stmmac_dwmac4_quirks }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 64, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac4_dma_ops, ptr @dwmac410_ops, ptr @stmmac_ptp, ptr @dwmac4_ring_mode_ops, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 65, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac410_dma_ops, ptr @dwmac410_ops, ptr @stmmac_ptp, ptr @dwmac4_ring_mode_ops, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 1, i8 0, i32 81, i32 0, %struct.stmmac_regs_off { i32 2816, i32 1792 }, ptr @dwmac4_desc_ops, ptr @dwmac410_dma_ops, ptr @dwmac510_ops, ptr @stmmac_ptp, ptr @dwmac4_ring_mode_ops, ptr @dwmac510_tc_ops, ptr @dwmac_mmc_ops, ptr @dwmac4_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 0, i8 1, i32 33, i32 118, %struct.stmmac_regs_off { i32 3328, i32 2048 }, ptr @dwxgmac210_desc_ops, ptr @dwxgmac210_dma_ops, ptr @dwxgmac210_ops, ptr @stmmac_ptp, ptr null, ptr @dwmac510_tc_ops, ptr @dwxgmac_mmc_ops, ptr @dwxgmac2_setup, ptr null }, %struct.stmmac_hwif_entry { i8 0, i8 0, i8 1, i32 32, i32 39, %struct.stmmac_regs_off { i32 3328, i32 2048 }, ptr @dwxgmac210_desc_ops, ptr @dwxgmac210_dma_ops, ptr @dwxlgmac2_ops, ptr @stmmac_ptp, ptr null, ptr @dwmac510_tc_ops, ptr @dwxgmac_mmc_ops, ptr @dwxlgmac2_setup, ptr @stmmac_dwxlgmac_quirks }], align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to find HW IF (id=0x%x, gmac=%d/%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Version ID not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"User ID: 0x%x, Synopsys ID: 0x%x\0A\00", align 1
@dwmac100_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac100_ops = external dso_local constant %struct.stmmac_ops, align 4
@stmmac_ptp = external dso_local constant %struct.stmmac_hwtimestamp, align 4
@dwmac_mmc_ops = external dso_local constant %struct.stmmac_mmc_ops, align 4
@dwmac1000_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac1000_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwmac4_desc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@dwmac4_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac4_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwmac510_tc_ops = external dso_local constant %struct.stmmac_tc_ops, align 4
@dwmac410_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwmac4_ring_mode_ops = external dso_local constant %struct.stmmac_mode_ops, align 4
@dwmac410_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwmac510_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwxgmac210_desc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@dwxgmac210_dma_ops = external dso_local constant %struct.stmmac_dma_ops, align 4
@dwxgmac210_ops = external dso_local constant %struct.stmmac_ops, align 4
@dwxgmac_mmc_ops = external dso_local constant %struct.stmmac_mmc_ops, align 4
@dwxlgmac2_ops = external dso_local constant %struct.stmmac_ops, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Enhanced/Alternate descriptors\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Enabled extended descriptors\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Extended descriptors not supported\0A\00", align 1
@enh_desc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Normal descriptors\0A\00", align 1
@ndesc_ops = external dso_local constant %struct.stmmac_desc_ops, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Chain mode enabled\0A\00", align 1
@chain_mode_ops = external dso_local constant %struct.stmmac_mode_ops, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Ring mode enabled\0A\00", align 1
@ring_mode_ops = external dso_local constant %struct.stmmac_mode_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmmac_hwif_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 64
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 58
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %3, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %15 = load ptr, ptr %14, align 32
  %16 = getelementptr i8, ptr %15, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 8
  br i1 %18, label %21, label %22

21:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.1) #5
  br label %53

22:                                               ; preds = %13
  %23 = lshr i32 %17, 8
  %24 = and i32 %23, 255
  %25 = and i32 %17, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef %24, i32 noundef %25) #5
  br label %53

26:                                               ; preds = %1
  %27 = select i1 %9, i1 true, i1 %6
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %30 = load ptr, ptr %29, align 32
  %31 = getelementptr i8, ptr %30, i32 272
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %35 = load ptr, ptr %34, align 8
  br i1 %33, label %36, label %37

36:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.1) #5
  br label %41

37:                                               ; preds = %28
  %38 = lshr i32 %32, 8
  %39 = and i32 %38, 255
  %40 = and i32 %32, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %39, i32 noundef %40) #5
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ %40, %37 ], [ 0, %36 ]
  br i1 %6, label %43, label %53

43:                                               ; preds = %41
  %44 = load ptr, ptr %29, align 32
  %45 = getelementptr i8, ptr %44, i32 272
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.1) #5
  br label %53

50:                                               ; preds = %43
  %51 = lshr i32 %46, 8
  %52 = and i32 %51, 255
  br label %53

53:                                               ; preds = %50, %48, %41, %26, %22, %21
  %54 = phi i32 [ %42, %41 ], [ 0, %26 ], [ %25, %22 ], [ 0, %21 ], [ %42, %48 ], [ %42, %50 ]
  %55 = phi i32 [ 0, %41 ], [ 0, %26 ], [ 0, %22 ], [ 0, %21 ], [ 0, %48 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 40
  store i32 %54, ptr %56, align 8
  %57 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 13
  %58 = load ptr, ptr %57, align 32
  %59 = select i1 %9, i32 2816, i32 1792
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 68
  store ptr %60, ptr %61, align 8
  %62 = select i1 %9, i32 1792, i32 256
  %63 = getelementptr i8, ptr %58, i32 %62
  %64 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 67
  store ptr %63, ptr %64, align 4
  %65 = load ptr, ptr %2, align 64
  %66 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %65, i32 0, i32 42
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %53
  %70 = tail call ptr %67(ptr noundef %0) #4
  br label %75

71:                                               ; preds = %53
  %72 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noalias ptr @devm_kmalloc(ptr noundef %73, i32 noundef 292, i32 noundef 3520) #4
  br label %75

75:                                               ; preds = %71, %69
  %76 = phi ptr [ %70, %69 ], [ %74, %71 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %182, label %78

78:                                               ; preds = %75
  br i1 %12, label %175, label %79

79:                                               ; preds = %78
  br i1 %9, label %164, label %80

80:                                               ; preds = %79
  br i1 %6, label %81, label %86

81:                                               ; preds = %80
  %82 = load i32, ptr %56, align 8
  %83 = icmp ult i32 %82, 32
  br i1 %83, label %177, label %84

84:                                               ; preds = %81
  %85 = icmp eq i32 %55, 39
  br i1 %85, label %86, label %160

86:                                               ; preds = %175, %171, %168, %165, %160, %84, %80
  %87 = phi i32 [ 7, %84 ], [ 5, %165 ], [ 4, %168 ], [ 0, %80 ], [ 6, %160 ], [ %174, %171 ], [ 1, %175 ]
  %88 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 6
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %93, %91 ], [ %89, %86 ]
  store ptr %95, ptr %88, align 4
  %96 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 7
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi ptr [ %101, %99 ], [ %97, %94 ]
  store ptr %103, ptr %96, align 4
  %104 = load ptr, ptr %76, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 8
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi ptr [ %108, %106 ], [ %104, %102 ]
  store ptr %110, ptr %76, align 4
  %111 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 9
  %116 = load ptr, ptr %115, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = phi ptr [ %116, %114 ], [ %112, %109 ]
  store ptr %118, ptr %111, align 4
  %119 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 10
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi ptr [ %124, %122 ], [ %120, %117 ]
  store ptr %126, ptr %119, align 4
  %127 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 11
  %132 = load ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi ptr [ %132, %130 ], [ %128, %125 ]
  store ptr %134, ptr %127, align 4
  %135 = getelementptr inbounds %struct.mac_device_info, ptr %76, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 12
  %140 = load ptr, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = phi ptr [ %140, %138 ], [ %136, %133 ]
  store ptr %142, ptr %135, align 4
  %143 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  store ptr %76, ptr %143, align 4
  %144 = load ptr, ptr %57, align 32
  %145 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr i8, ptr %144, i32 %146
  store ptr %147, ptr %61, align 8
  %148 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 5, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %144, i32 %149
  store ptr %150, ptr %64, align 4
  br i1 %68, label %151, label %156

151:                                              ; preds = %141
  %152 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 13
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 %153(ptr noundef %0) #4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %151, %141
  %157 = getelementptr [8 x %struct.stmmac_hwif_entry], ptr @stmmac_hw, i32 0, i32 %87, i32 14
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 17
  store ptr %158, ptr %159, align 16
  br label %182

160:                                              ; preds = %84
  %161 = icmp ugt i32 %82, 32
  %162 = icmp eq i32 %55, 118
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %86, label %177

164:                                              ; preds = %79
  br i1 %6, label %177, label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %56, align 8
  %167 = icmp ult i32 %166, 81
  br i1 %167, label %168, label %86

168:                                              ; preds = %165
  %169 = load i32, ptr %56, align 8
  %170 = icmp ult i32 %169, 65
  br i1 %170, label %171, label %86

171:                                              ; preds = %168
  %172 = load i32, ptr %56, align 8
  %173 = icmp ult i32 %172, 64
  %174 = select i1 %173, i32 2, i32 3
  br label %86

175:                                              ; preds = %78
  %176 = select i1 %9, i1 true, i1 %6
  br i1 %176, label %177, label %86

177:                                              ; preds = %175, %164, %160, %81
  %178 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %179 = load ptr, ptr %178, align 8
  %180 = zext i1 %12 to i32
  %181 = zext i1 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str, i32 noundef %54, i32 noundef %180, i32 noundef %181) #5
  br label %182

182:                                              ; preds = %177, %156, %151, %75
  %183 = phi i32 [ 0, %156 ], [ -22, %177 ], [ -12, %75 ], [ %154, %151 ]
  ret i32 %183
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac100_setup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_dwmac1_quirks(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 36
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  br i1 %8, label %19, label %11

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.3) #5
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 40
  %13 = load i32, ptr %12, align 8
  %14 = icmp sgt i32 %13, 52
  %15 = load ptr, ptr %9, align 8
  br i1 %14, label %16, label %18

16:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.4) #5
  %17 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 55
  store i32 1, ptr %17, align 4
  br label %20

18:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.5) #5
  br label %20

19:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.6) #5
  br label %20

20:                                               ; preds = %19, %18, %16
  %21 = phi ptr [ @ndesc_ops, %19 ], [ @enh_desc_ops, %18 ], [ @enh_desc_ops, %16 ]
  %22 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 54
  %25 = load i32, ptr %24, align 32
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %28 = load ptr, ptr %27, align 8
  %29 = select i1 %26, ptr @.str.8, ptr @.str.7
  %30 = select i1 %26, i32 2, i32 1
  %31 = select i1 %26, ptr @ring_mode_ops, ptr @chain_mode_ops
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull %29) #5
  %32 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  store i32 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mac_device_info, ptr %23, i32 0, i32 3
  store ptr %31, ptr %33, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac1000_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwmac4_setup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmmac_dwmac4_quirks(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 54
  %5 = load i32, ptr %4, align 32
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @.str.8, ptr @.str.7
  %10 = select i1 %6, i32 2, i32 1
  %11 = select i1 %6, ptr @ring_mode_ops, ptr @chain_mode_ops
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull %9) #5
  %12 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 53
  store i32 %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 3
  store ptr %11, ptr %13, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwxgmac2_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwxlgmac2_setup(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stmmac_dwxlgmac_quirks(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.stmmac_priv, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mac_device_info, ptr %3, i32 0, i32 18
  store i32 1, ptr %4, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 4808163}
!9 = !{i64 2155985833}
!10 = !{i64 2155989513}
