; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac4_descs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmmac_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }

@dwmac4_desc_ops = dso_local local_unnamed_addr constant %struct.stmmac_desc_ops { ptr @dwmac4_rd_init_rx_desc, ptr @dwmac4_rd_init_tx_desc, ptr @dwmac4_rd_prepare_tx_desc, ptr @dwmac4_rd_prepare_tso_tx_desc, ptr @dwmac4_set_tx_owner, ptr @dwmac4_get_tx_owner, ptr @dwmac4_release_tx_desc, ptr @dwmac4_rd_set_tx_ic, ptr @dwmac4_get_tx_ls, ptr @dwmac4_wrback_get_tx_status, ptr @dwmac4_rd_get_tx_len, ptr @dwmac4_set_rx_owner, ptr @dwmac4_wrback_get_rx_frame_len, ptr @dwmac4_wrback_get_rx_status, ptr null, ptr @dwmac4_rd_enable_tx_timestamp, ptr @dwmac4_wrback_get_tx_timestamp_status, ptr @dwmac4_get_timestamp, ptr @dwmac4_wrback_get_rx_timestamp_status, ptr @dwmac4_display_ring, ptr @dwmac4_set_mss_ctxt, ptr @dwmac4_get_addr, ptr @dwmac4_set_addr, ptr @dwmac4_clear, ptr null, ptr @dwmac4_get_rx_header_len, ptr @dwmac4_set_sec_addr, ptr @dwmac4_set_sarc, ptr @dwmac4_set_vlan_tag, ptr @dwmac4_set_vlan, ptr @dwmac4_set_tbs }, align 4
@dwmac4_ring_mode_ops = dso_local local_unnamed_addr constant %struct.stmmac_mode_ops { ptr null, ptr null, ptr null, ptr @set_16kib_bfsize, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [23 x i8] c"\016%s descriptor ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\013unsupported descriptor!\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_rd_init_rx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 -1056964608, i32 -2130706432
  %10 = or i32 %7, %9
  store i32 %10, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_rd_init_tx_desc(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #1 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rd_prepare_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) #2 {
  %9 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %2, 16383
  %12 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = and i32 %7, 32767
  %16 = icmp eq i32 %1, 0
  %17 = and i32 %10, -536870913
  %18 = select i1 %16, i32 0, i32 536870912
  %19 = or i32 %15, %18
  %20 = or i32 %19, %17
  br i1 %3, label %21, label %23, !prof !8

21:                                               ; preds = %8
  %22 = or i32 %20, 196608
  br label %25

23:                                               ; preds = %8
  %24 = and i32 %20, -196609
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = xor i1 %5, true
  %28 = or i1 %16, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #10, !srcloc !9
  br label %30

30:                                               ; preds = %29, %25
  %31 = and i32 %26, -268435457
  %32 = select i1 %6, i32 268435456, i32 0
  %33 = or i32 %31, %32
  %34 = or i32 %33, -2147483648
  %35 = select i1 %5, i32 %34, i32 %33
  store i32 %35, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_rd_prepare_tso_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = and i32 %2, 16383
  %14 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = shl i32 %3, 16
  %21 = and i32 %20, 1073676288
  %22 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %19, %17
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = and i32 %10, -536870913
  br label %39

29:                                               ; preds = %25
  %30 = shl i32 %6, 19
  %31 = and i32 %30, 7864320
  %32 = and i32 %7, 262143
  %33 = or i32 %32, %31
  %34 = or i32 %33, %10
  %35 = or i32 %34, 537133056
  %36 = xor i1 %4, true
  %37 = or i1 %26, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #10, !srcloc !10
  br label %39

39:                                               ; preds = %38, %29, %27
  %40 = phi i32 [ %28, %27 ], [ %35, %29 ], [ %35, %38 ]
  %41 = and i32 %40, -268435457
  %42 = select i1 %5, i32 268435456, i32 0
  %43 = or i32 %41, %42
  %44 = or i32 %43, -2147483648
  %45 = select i1 %4, i32 %44, i32 %43
  store i32 %45, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_set_tx_owner(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_get_tx_owner(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 31
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_release_tx_desc(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_rd_set_tx_ic(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_get_tx_ls(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 28
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_tx_status(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %93, !prof !8

8:                                                ; preds = %4
  %9 = and i32 %6, 268435456
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %93, label %11, !prof !8

11:                                               ; preds = %8
  %12 = and i32 %6, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %85, label %14, !prof !8

14:                                               ; preds = %11
  %15 = and i32 %6, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !8

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = and i32 %6, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !8

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %21
  %29 = and i32 %6, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31, !prof !8

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = and i32 %6, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41, !prof !8

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = and i32 %6, 768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51, !prof !8

51:                                               ; preds = %48
  %52 = lshr i32 %6, 4
  %53 = and i32 %52, 15
  %54 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 9
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = and i32 %6, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60, !prof !8

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 4
  %62 = load i32, ptr %61, align 16
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 16
  br label %64

64:                                               ; preds = %60, %57
  %65 = and i32 %6, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67, !prof !8

67:                                               ; preds = %64
  %68 = load i32, ptr %1, align 64
  %69 = add i32 %68, 1
  store i32 %69, ptr %1, align 64
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i32 [ 10, %67 ], [ 2, %64 ]
  %72 = and i32 %6, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74, !prof !8

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 9
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = and i32 %6, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !8

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 8
  %83 = load i32, ptr %82, align 32
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 32
  br label %85

85:                                               ; preds = %81, %78, %11
  %86 = phi i32 [ %71, %81 ], [ %71, %78 ], [ 0, %11 ]
  %87 = and i32 %6, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89, !prof !8

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 4
  %91 = load i32, ptr %90, align 16
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 16
  br label %93

93:                                               ; preds = %89, %85, %8, %4
  %94 = phi i32 [ 4, %4 ], [ 1, %8 ], [ %86, %89 ], [ %86, %85 ]
  ret i32 %94
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_rd_get_tx_len(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16383
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_set_rx_owner(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 -1056964608, i32 -2130706432
  %7 = or i32 %4, %6
  store i32 %7, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_rx_frame_len(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32767
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_rx_status(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %199, !prof !8

11:                                               ; preds = %3
  %12 = and i32 %9, 1073741824
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %199, !prof !8

14:                                               ; preds = %11
  %15 = and i32 %9, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %199, label %17, !prof !8

17:                                               ; preds = %14
  %18 = and i32 %9, 32768
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %65, label %20, !prof !8

20:                                               ; preds = %17
  %21 = and i32 %9, 8388608
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !8

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = and i32 %9, 2097152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !8

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 20
  %32 = load i32, ptr %31, align 16
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 16
  br label %34

34:                                               ; preds = %30, %27
  %35 = and i32 %9, 4194304
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !8

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 21
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = and i32 %9, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !8

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 18
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = and i32 %9, 16777216
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51, !prof !8

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = and i32 %9, 524288
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61, !prof !8

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 16
  %63 = load i32, ptr %62, align 64
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 64
  br label %65

65:                                               ; preds = %61, %58, %17
  %66 = phi i32 [ 0, %17 ], [ 1, %61 ], [ 1, %58 ]
  %67 = lshr i32 %5, 8
  %68 = and i32 %67, 15
  %69 = and i32 %5, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 56
  %73 = load i32, ptr %72, align 32
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 32
  br label %75

75:                                               ; preds = %71, %65
  %76 = and i32 %5, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 58
  %80 = load i32, ptr %79, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = and i32 %5, 16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 59
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = and i32 %5, 32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 60
  %94 = load i32, ptr %93, align 16
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 16
  br label %96

96:                                               ; preds = %92, %89
  switch i32 %68, label %141 [
    i32 0, label %97
    i32 1, label %101
    i32 2, label %105
    i32 3, label %109
    i32 4, label %113
    i32 5, label %117
    i32 6, label %121
    i32 7, label %125
    i32 8, label %129
    i32 9, label %133
    i32 15, label %137
  ]

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 61
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  br label %141

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 62
  %103 = load i32, ptr %102, align 8
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 8
  br label %141

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 63
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 4
  br label %141

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 64
  %111 = load i32, ptr %110, align 64
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 64
  br label %141

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 65
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  br label %141

117:                                              ; preds = %96
  %118 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 66
  %119 = load i32, ptr %118, align 8
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 8
  br label %141

121:                                              ; preds = %96
  %122 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 67
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  br label %141

125:                                              ; preds = %96
  %126 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 68
  %127 = load i32, ptr %126, align 16
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 16
  br label %141

129:                                              ; preds = %96
  %130 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 69
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 4
  br label %141

133:                                              ; preds = %96
  %134 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 70
  %135 = load i32, ptr %134, align 8
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 8
  br label %141

137:                                              ; preds = %96
  %138 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 71
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %96
  %142 = and i32 %5, 4096
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 72
  %146 = load i32, ptr %145, align 32
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 32
  br label %148

148:                                              ; preds = %144, %141
  %149 = and i32 %5, 8192
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 73
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %151, %148
  %156 = and i32 %5, 32768
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 74
  %160 = load i32, ptr %159, align 8
  %161 = add i32 %160, 1
  store i32 %161, ptr %159, align 8
  br label %162

162:                                              ; preds = %158, %155
  %163 = and i32 %7, 65536
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165, !prof !8

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 23
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 4
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i32 [ 1, %165 ], [ %66, %162 ]
  %171 = and i32 %7, 131072
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173, !prof !8

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 22
  %175 = load i32, ptr %174, align 8
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = phi i32 [ 1, %173 ], [ %170, %169 ]
  %179 = and i32 %7, 134217728
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 78
  %183 = load i32, ptr %182, align 8
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 8
  br label %185

185:                                              ; preds = %181, %177
  %186 = and i32 %7, 268435456
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 79
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, 1
  store i32 %191, ptr %189, align 4
  br label %192

192:                                              ; preds = %188, %185
  %193 = and i32 %7, 201326592
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 80
  %197 = load i32, ptr %196, align 64
  %198 = add i32 %197, 1
  store i32 %198, ptr %196, align 64
  br label %199

199:                                              ; preds = %195, %192, %14, %11, %3
  %200 = phi i32 [ 8, %3 ], [ 1, %11 ], [ 16, %14 ], [ %178, %195 ], [ %178, %192 ]
  ret i32 %200
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_rd_enable_tx_timestamp(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 1073741824
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwmac4_wrback_get_tx_timestamp_status(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1073741824
  %5 = icmp eq i32 %4, 0
  %6 = lshr i32 %3, 17
  %7 = and i32 %6, 1
  %8 = select i1 %5, i32 %7, i32 0
  ret i32 %8
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_get_timestamp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = load i32, ptr %0, align 4
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = mul nuw nsw i64 %8, 1000000000
  %10 = add nuw nsw i64 %9, %5
  store i64 %10, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @dwmac4_wrback_get_rx_timestamp_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8, !prof !11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13, !prof !11

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -1073741824
  %17 = icmp eq i32 %16, 1073741824
  br i1 %17, label %18, label %25, !prof !8

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, -1
  %23 = icmp eq i32 %20, -1
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %27, label %25

25:                                               ; preds = %18, %13
  %26 = zext i1 %17 to i32
  br label %27

27:                                               ; preds = %25, %18, %8, %3
  %28 = phi i32 [ 0, %8 ], [ 0, %3 ], [ 0, %18 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac4_display_ring(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = select i1 %2, ptr @.str.1, ptr @.str.2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %7) #11
  switch i32 %4, label %53 [
    i32 16, label %11
    i32 32, label %9
  ]

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %55, label %29

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %27, %13 ], [ 0, %11 ]
  %15 = phi ptr [ %26, %13 ], [ %0, %11 ]
  %16 = shl i32 %14, 4
  %17 = add i32 %16, %3
  store i32 %17, ptr %6, align 4
  %18 = load i32, ptr %15, align 4
  %19 = getelementptr inbounds %struct.dma_desc, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_desc, ptr %15, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_desc, ptr %15, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %14, ptr noundef nonnull %6, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #11
  %26 = getelementptr %struct.dma_desc, ptr %15, i32 1
  %27 = add nuw i32 %14, 1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %55, label %13

29:                                               ; preds = %29, %9
  %30 = phi i32 [ %51, %29 ], [ 0, %9 ]
  %31 = phi ptr [ %50, %29 ], [ %0, %9 ]
  %32 = shl i32 %30, 5
  %33 = add i32 %32, %3
  store i32 %33, ptr %6, align 4
  %34 = load i32, ptr %31, align 4
  %35 = getelementptr inbounds %struct.dma_desc, ptr %31, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_desc, ptr %31, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_desc, ptr %31, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dma_extended_desc, ptr %31, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dma_extended_desc, ptr %31, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dma_extended_desc, ptr %31, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dma_extended_desc, ptr %31, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %30, ptr noundef nonnull %6, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #11
  %50 = getelementptr %struct.dma_extended_desc, ptr %31, i32 1
  %51 = add nuw i32 %30, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %55, label %29

53:                                               ; preds = %5
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %55

55:                                               ; preds = %53, %29, %13, %11, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_set_mss_ctxt(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  store i32 0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  store i32 1140850688, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_get_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load i32, ptr %0, align 4
  store i32 %3, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_set_addr(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  store i32 %1, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_clear(ptr nocapture noundef writeonly %0) #1 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_get_rx_header_len(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  store i32 %5, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_set_sec_addr(ptr nocapture noundef writeonly %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %6 = select i1 %2, i32 33554432, i32 0
  store i32 %6, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_set_sarc(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 23
  %4 = and i32 %3, 58720256
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_set_vlan_tag(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %8 = zext i16 %2 to i32
  %9 = shl nuw i32 %8, 16
  store i32 %9, ptr %7, align 4
  %10 = shl i32 %3, 18
  %11 = and i32 %10, 786432
  %12 = or i32 %11, 131072
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i32 [ %12, %6 ], [ 0, %4 ]
  %15 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %16 = zext i16 %1 to i32
  %17 = or i32 %14, %16
  %18 = or i32 %17, 1073807360
  store i32 %18, ptr %15, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwmac4_set_vlan(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 14
  %4 = and i32 %3, 49152
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwmac4_set_tbs(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = and i32 %1, 255
  %5 = or i32 %4, -2147483648
  store i32 %5, ptr %0, align 4
  %6 = and i32 %2, -256
  %7 = getelementptr inbounds %struct.dma_edesc, ptr %0, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dma_edesc, ptr %0, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dma_edesc, ptr %0, i32 0, i32 3
  store i32 0, ptr %9, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @set_16kib_bfsize(i32 noundef %0) #6 {
  %2 = icmp sgt i32 %0, 8187
  br i1 %2, label %3, label %4, !prof !11

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i32 [ 16368, %3 ], [ 0, %1 ]
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2155243034}
!10 = !{i64 2155247164}
!11 = !{!"branch_weights", i32 1, i32 2000}
