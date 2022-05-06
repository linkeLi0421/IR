; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/enh_desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/enh_desc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_extended_desc = type { %struct.dma_desc, i32, i32, i32, i32 }

@enh_desc_ops = dso_local local_unnamed_addr constant %struct.stmmac_desc_ops { ptr @enh_desc_init_rx_desc, ptr @enh_desc_init_tx_desc, ptr @enh_desc_prepare_tx_desc, ptr null, ptr @enh_desc_set_tx_owner, ptr @enh_desc_get_tx_owner, ptr @enh_desc_release_tx_desc, ptr @enh_desc_set_tx_ic, ptr @enh_desc_get_tx_ls, ptr @enh_desc_get_tx_status, ptr @enh_desc_get_tx_len, ptr @enh_desc_set_rx_owner, ptr @enh_desc_get_rx_frame_len, ptr @enh_desc_get_rx_status, ptr @enh_desc_get_ext_status, ptr @enh_desc_enable_tx_timestamp, ptr @enh_desc_get_tx_timestamp_status, ptr @enh_desc_get_timestamp, ptr @enh_desc_get_rx_timestamp_status, ptr @enh_desc_display_ring, ptr null, ptr @enh_desc_get_addr, ptr @enh_desc_set_addr, ptr @enh_desc_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [31 x i8] c"\013\09IPC Csum Error/Giant frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\016Extended %s descriptor ring:\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\016\0A\00", align 1
@switch.table.enh_desc_get_rx_status = private unnamed_addr constant [8 x i32] [i32 4, i32 1, i32 0, i32 1, i32 0, i32 2, i32 2, i32 2], align 4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_init_rx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %0, align 4
  %7 = or i32 %6, -2147483648
  store i32 %7, ptr %0, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %4, i32 8188)
  %9 = and i32 %8, 8191
  %10 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = or i32 %12, 16384
  br label %25

16:                                               ; preds = %5
  %17 = icmp eq i32 %4, 16368
  %18 = or i32 %12, 536608768
  %19 = select i1 %17, i32 %18, i32 %12
  %20 = icmp eq i32 %3, 0
  %21 = or i32 %19, 32768
  %22 = select i1 %20, i32 %19, i32 %21
  %23 = xor i1 %20, true
  %24 = or i1 %17, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %16, %14
  %26 = phi i32 [ %15, %14 ], [ %22, %16 ]
  store i32 %26, ptr %10, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %22, %16 ], [ %26, %25 ]
  %29 = icmp eq i32 %1, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = or i32 %28, -2147483648
  store i32 %31, ptr %10, align 4
  br label %32

32:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_init_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = and i32 %4, 2146435071
  %8 = or i32 %7, 1048576
  br label %14

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = and i32 %4, 2145386495
  %12 = select i1 %10, i32 0, i32 2097152
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i32 [ %13, %9 ], [ %8, %6 ]
  store i32 %15, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @enh_desc_prepare_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) #2 {
  %9 = load i32, ptr %0, align 4
  %10 = icmp eq i32 %4, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = and i32 %2, 8191
  %13 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 4
  br label %31

16:                                               ; preds = %8
  %17 = icmp sgt i32 %2, 4096
  br i1 %17, label %18, label %26, !prof !8

18:                                               ; preds = %16
  %19 = shl i32 %2, 16
  %20 = add i32 %19, 268435456
  %21 = and i32 %20, 536805376
  %22 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %21, %23
  %25 = or i32 %24, 4096
  store i32 %25, ptr %22, align 4
  br label %31

26:                                               ; preds = %16
  %27 = and i32 %2, 8191
  %28 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %26, %18, %11
  %32 = icmp eq i32 %1, 0
  %33 = and i32 %9, -268435457
  %34 = select i1 %32, i32 0, i32 268435456
  %35 = or i32 %33, %34
  br i1 %3, label %36, label %38, !prof !9

36:                                               ; preds = %31
  %37 = or i32 %35, 12582912
  br label %40

38:                                               ; preds = %31
  %39 = and i32 %35, -12582913
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = xor i1 %5, true
  %43 = or i1 %32, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #9, !srcloc !10
  br label %45

45:                                               ; preds = %44, %40
  %46 = or i32 %41, 536870912
  %47 = select i1 %6, i32 %46, i32 %41
  %48 = or i32 %47, -2147483648
  %49 = select i1 %5, i32 %48, i32 %47
  store i32 %49, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_set_tx_owner(ptr nocapture noundef %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = or i32 %2, -2147483648
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_owner(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 31
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_release_tx_desc(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  store i64 0, ptr %0, align 4
  %4 = icmp eq i32 %1, 1
  %5 = and i32 %3, 2097152
  %6 = select i1 %4, i32 1048576, i32 %5
  store i32 %6, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_set_tx_ic(ptr nocapture noundef %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = or i32 %2, 1073741824
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_ls(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 29
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enh_desc_get_tx_status(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #2 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %91, !prof !9

7:                                                ; preds = %4
  %8 = and i32 %5, 536870912
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10, !prof !9

10:                                               ; preds = %7
  %11 = and i32 %5, 32768
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %83, label %13, !prof !9

13:                                               ; preds = %10
  %14 = and i32 %5, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !9

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %13
  %21 = and i32 %5, 8192
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !9

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  tail call void @dwmac_dma_flush_tx_fifo(ptr noundef %3) #9
  br label %27

27:                                               ; preds = %23, %20
  %28 = and i32 %5, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30, !prof !9

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 17
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = and i32 %5, 1024
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40, !prof !9

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %40, %37
  %48 = and i32 %5, 768
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50, !prof !9

50:                                               ; preds = %47
  %51 = lshr i32 %5, 3
  %52 = and i32 %51, 15
  %53 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = and i32 %5, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !9

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 4
  %61 = load i32, ptr %60, align 16
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 16
  br label %63

63:                                               ; preds = %59, %56
  %64 = and i32 %5, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66, !prof !9

66:                                               ; preds = %63
  tail call void @dwmac_dma_flush_tx_fifo(ptr noundef %3) #9
  %67 = load i32, ptr %1, align 64
  %68 = add i32 %67, 1
  store i32 %68, ptr %1, align 64
  br label %69

69:                                               ; preds = %66, %63
  %70 = and i32 %5, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72, !prof !9

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = and i32 %5, 4096
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !9

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 8
  %81 = load i32, ptr %80, align 32
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 32
  tail call void @dwmac_dma_flush_tx_fifo(ptr noundef %3) #9
  br label %83

83:                                               ; preds = %79, %76, %10
  %84 = phi i32 [ 0, %10 ], [ 2, %79 ], [ 2, %76 ]
  %85 = and i32 %5, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !9

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 4
  %89 = load i32, ptr %88, align 16
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 16
  br label %91

91:                                               ; preds = %87, %83, %7, %4
  %92 = phi i32 [ 4, %4 ], [ 1, %7 ], [ %84, %87 ], [ %84, %83 ]
  ret i32 %92
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_len(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 8191
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_set_rx_owner(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_rx_frame_len(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 -2, i32 0
  %5 = load i32, ptr %0, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 16383
  %8 = add nsw i32 %7, %4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enh_desc_get_rx_status(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %110, !prof !9

6:                                                ; preds = %3
  %7 = and i32 %4, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !8

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 10
  br label %106

11:                                               ; preds = %6
  %12 = and i32 %4, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %67, label %14, !prof !9

14:                                               ; preds = %11
  %15 = and i32 %4, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17, !prof !9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = and i32 %4, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !9

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 20
  %29 = load i32, ptr %28, align 16
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 16
  br label %31

31:                                               ; preds = %27, %24
  %32 = and i32 %4, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !9

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %36

36:                                               ; preds = %34, %31
  %37 = and i32 %4, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !9

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %36
  %44 = and i32 %4, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46, !prof !9

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 21
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = and i32 %4, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !9

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 18
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = and i32 %4, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60, !prof !9

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 15
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  br label %77

67:                                               ; preds = %11
  %68 = lshr i32 %4, 6
  %69 = and i32 %68, 2
  %70 = and i32 %4, 1
  %71 = or i32 %69, %70
  %72 = lshr i32 %4, 3
  %73 = and i32 %72, 4
  %74 = or i32 %71, %73
  %75 = getelementptr inbounds [8 x i32], ptr @switch.table.enh_desc_get_rx_status, i32 0, i32 %74
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %67, %60, %57
  %78 = phi i32 [ 1, %57 ], [ 1, %60 ], [ %76, %67 ]
  %79 = and i32 %4, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !9

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 16
  %83 = load i32, ptr %82, align 64
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 64
  br label %85

85:                                               ; preds = %81, %77
  %86 = and i32 %4, 8192
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88, !prof !9

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 23
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i32 [ 1, %88 ], [ %78, %85 ]
  %94 = and i32 %4, 1073741824
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96, !prof !9

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 22
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 1, %96 ], [ %93, %92 ]
  %102 = and i32 %4, 4096
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104, !prof !9

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 17
  br label %106

106:                                              ; preds = %104, %9
  %107 = phi ptr [ %105, %104 ], [ %10, %9 ]
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %106, %100, %3
  %111 = phi i32 [ 8, %3 ], [ %101, %100 ], [ 1, %106 ]
  ret i32 %111
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_get_ext_status(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr %2, align 4
  %5 = getelementptr inbounds %struct.dma_extended_desc, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %154, label %9, !prof !9

9:                                                ; preds = %3
  %10 = lshr i32 %6, 8
  %11 = and i32 %10, 15
  %12 = and i32 %6, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 56
  %16 = load i32, ptr %15, align 32
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 32
  br label %18

18:                                               ; preds = %14, %9
  %19 = and i32 %6, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 57
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %18
  %26 = and i32 %6, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 58
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = and i32 %6, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 59
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = and i32 %6, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 60
  %44 = load i32, ptr %43, align 16
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 16
  br label %46

46:                                               ; preds = %42, %39
  switch i32 %11, label %91 [
    i32 0, label %47
    i32 1, label %51
    i32 2, label %55
    i32 3, label %59
    i32 4, label %63
    i32 5, label %67
    i32 6, label %71
    i32 7, label %75
    i32 8, label %79
    i32 9, label %83
    i32 15, label %87
  ]

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 61
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %91

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 62
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8
  br label %91

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 63
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  br label %91

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 64
  %61 = load i32, ptr %60, align 64
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 64
  br label %91

63:                                               ; preds = %46
  %64 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 65
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  br label %91

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 66
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8
  br label %91

71:                                               ; preds = %46
  %72 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 67
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  br label %91

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 68
  %77 = load i32, ptr %76, align 16
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 16
  br label %91

79:                                               ; preds = %46
  %80 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 69
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  br label %91

83:                                               ; preds = %46
  %84 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 70
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8
  br label %91

87:                                               ; preds = %46
  %88 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 71
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  br label %91

91:                                               ; preds = %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %46
  %92 = and i32 %6, 4096
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 72
  %96 = load i32, ptr %95, align 32
  %97 = add i32 %96, 1
  store i32 %97, ptr %95, align 32
  br label %98

98:                                               ; preds = %94, %91
  %99 = and i32 %6, 8192
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 73
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = and i32 %6, 16384
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 74
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 8
  br label %112

112:                                              ; preds = %108, %105
  %113 = and i32 %6, 65536
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 75
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, ptr %116, align 4
  br label %119

119:                                              ; preds = %115, %112
  %120 = and i32 %6, 131072
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 76
  %124 = load i32, ptr %123, align 16
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 16
  br label %126

126:                                              ; preds = %122, %119
  %127 = and i32 %6, 1835008
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 77
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 4
  br label %133

133:                                              ; preds = %129, %126
  %134 = and i32 %6, 16777216
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 78
  %138 = load i32, ptr %137, align 8
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %136, %133
  %141 = and i32 %6, 33554432
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 79
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = and i32 %6, 201326592
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 80
  %152 = load i32, ptr %151, align 64
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 64
  br label %154

154:                                              ; preds = %150, %147, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_enable_tx_timestamp(ptr nocapture noundef %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = or i32 %2, 33554432
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_tx_timestamp_status(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 17
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_get_timestamp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.dma_extended_desc, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.dma_extended_desc, ptr %0, i32 0, i32 4
  %9 = select i1 %4, ptr %6, ptr %8
  %10 = select i1 %4, ptr %5, ptr %7
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, ptr %9, align 4
  %14 = zext i32 %13 to i64
  %15 = mul nuw nsw i64 %14, 1000000000
  %16 = add nuw nsw i64 %15, %12
  store i64 %16, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @enh_desc_get_rx_timestamp_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4
  %7 = lshr i32 %6, 7
  %8 = and i32 %7, 1
  br label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9
  br label %18

18:                                               ; preds = %17, %13, %5
  %19 = phi i32 [ %8, %5 ], [ 1, %17 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @enh_desc_display_ring(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !11
  %7 = select i1 %2, ptr @.str.2, ptr @.str.3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %7) #10
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %24, %10 ], [ %0, %5 ]
  %12 = phi i32 [ %25, %10 ], [ 0, %5 ]
  %13 = shl i32 %12, 5
  %14 = add i32 %13, %3
  store i32 %14, ptr %6, align 4
  %15 = load i64, ptr %11, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.dma_desc, ptr %11, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_desc, ptr %11, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %12, ptr noundef nonnull %6, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #10
  %24 = getelementptr %struct.dma_extended_desc, ptr %11, i32 1
  %25 = add nuw i32 %12, 1
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %10

27:                                               ; preds = %10, %5
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @enh_desc_get_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @enh_desc_set_addr(ptr nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @enh_desc_clear(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwmac_dma_flush_tx_fifo(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155237970}
!11 = !{!"auto-init"}
