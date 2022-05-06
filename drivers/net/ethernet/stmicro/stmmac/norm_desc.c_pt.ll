; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/norm_desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/norm_desc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@ndesc_ops = dso_local local_unnamed_addr constant %struct.stmmac_desc_ops { ptr @ndesc_init_rx_desc, ptr @ndesc_init_tx_desc, ptr @ndesc_prepare_tx_desc, ptr null, ptr @ndesc_set_tx_owner, ptr @ndesc_get_tx_owner, ptr @ndesc_release_tx_desc, ptr @ndesc_set_tx_ic, ptr @ndesc_get_tx_ls, ptr @ndesc_get_tx_status, ptr @ndesc_get_tx_len, ptr @ndesc_set_rx_owner, ptr @ndesc_get_rx_frame_len, ptr @ndesc_get_rx_status, ptr null, ptr @ndesc_enable_tx_timestamp, ptr @ndesc_get_tx_timestamp_status, ptr @ndesc_get_timestamp, ptr @ndesc_get_rx_timestamp_status, ptr @ndesc_display_ring, ptr null, ptr @ndesc_get_addr, ptr @ndesc_set_addr, ptr @ndesc_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [23 x i8] c"\016%s descriptor ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016%03d [%pad]: 0x%x 0x%x 0x%x 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\016\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_init_rx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %0, align 4
  %7 = or i32 %6, -2147483648
  store i32 %7, ptr %0, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %4, i32 2047)
  %9 = and i32 %8, 2047
  %10 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, %9
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %2, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = or i32 %12, 16777216
  br label %29

16:                                               ; preds = %5
  %17 = icmp sgt i32 %4, 2047
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = tail call i32 @llvm.smin.i32(i32 %4, i32 4094) #8
  %20 = shl nuw nsw i32 %19, 11
  %21 = add nuw nsw i32 %20, 2048
  %22 = and i32 %21, 4192256
  %23 = or i32 %12, %22
  store i32 %23, ptr %10, align 4
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ %12, %16 ]
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = or i32 %25, 33554432
  br label %29

29:                                               ; preds = %27, %14
  %30 = phi i32 [ %28, %27 ], [ %15, %14 ]
  store i32 %30, ptr %10, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi i32 [ %25, %24 ], [ %30, %29 ]
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = or i32 %32, -2147483648
  store i32 %35, ptr %10, align 4
  br label %36

36:                                               ; preds = %34, %31
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_init_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, 2147483647
  store i32 %5, ptr %0, align 4
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 16777216
  store i32 %10, ptr %8, align 4
  br label %18

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -33554433
  %16 = select i1 %12, i32 0, i32 33554432
  %17 = or i32 %15, %16
  store i32 %17, ptr %13, align 4
  br label %18

18:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_prepare_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) #1 {
  %9 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %1, 0
  %12 = and i32 %10, -536870913
  %13 = select i1 %11, i32 0, i32 536870912
  %14 = or i32 %12, %13
  br i1 %3, label %15, label %17, !prof !8

15:                                               ; preds = %8
  %16 = or i32 %14, 402653184
  br label %19

17:                                               ; preds = %8
  %18 = and i32 %14, -402653185
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = or i32 %20, 1073741824
  %22 = select i1 %6, i32 %21, i32 %20
  %23 = icmp eq i32 %4, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = and i32 %2, 2047
  %26 = or i32 %22, %25
  br label %38

27:                                               ; preds = %19
  %28 = icmp sgt i32 %2, 2048
  br i1 %28, label %29, label %35, !prof !9

29:                                               ; preds = %27
  %30 = shl i32 %2, 11
  %31 = add i32 %30, 2048
  %32 = and i32 %31, 4192256
  %33 = or i32 %32, %22
  %34 = or i32 %33, 2047
  br label %38

35:                                               ; preds = %27
  %36 = and i32 %2, 2047
  %37 = or i32 %22, %36
  br label %38

38:                                               ; preds = %35, %29, %24
  %39 = phi i32 [ %37, %35 ], [ %34, %29 ], [ %26, %24 ]
  store i32 %39, ptr %9, align 4
  br i1 %5, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, ptr %0, align 4
  %42 = or i32 %41, -2147483648
  store i32 %42, ptr %0, align 4
  br label %43

43:                                               ; preds = %40, %38
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_set_tx_owner(ptr nocapture noundef %0) #1 {
  %2 = load i32, ptr %0, align 4
  %3 = or i32 %2, -2147483648
  store i32 %3, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_owner(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 31
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_release_tx_desc(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  store i64 0, ptr %0, align 4
  %5 = icmp eq i32 %1, 1
  %6 = and i32 %4, 33554432
  %7 = select i1 %5, i32 16777216, i32 %6
  store i32 %7, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_set_tx_ic(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_ls(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 30
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_status(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #1 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %68, !prof !8

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %68, label %12, !prof !8

12:                                               ; preds = %7
  %13 = and i32 %5, 32768
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %53, label %15, !prof !8

15:                                               ; preds = %12
  %16 = and i32 %5, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !8

18:                                               ; preds = %15
  %19 = load i32, ptr %1, align 64
  %20 = add i32 %19, 1
  store i32 %20, ptr %1, align 64
  %21 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 18
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = and i32 %5, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27, !prof !8

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = and i32 %5, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37, !prof !8

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = and i32 %5, 772
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47, !prof !10

47:                                               ; preds = %44
  %48 = lshr i32 %5, 3
  %49 = and i32 %48, 15
  %50 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %47, %44, %12
  %54 = phi i32 [ 0, %12 ], [ 2, %47 ], [ 2, %44 ]
  %55 = and i32 %5, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = and i32 %5, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !8

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 4
  %66 = load i32, ptr %65, align 16
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 16
  br label %68

68:                                               ; preds = %64, %61, %7, %4
  %69 = phi i32 [ 4, %4 ], [ 1, %7 ], [ %54, %64 ], [ %54, %61 ]
  ret i32 %69
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_len(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2047
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_set_rx_owner(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_rx_frame_len(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 -2, i32 0
  %5 = load i32, ptr %0, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 16383
  %8 = add nsw i32 %7, %4
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_rx_status(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %87, !prof !8

6:                                                ; preds = %3
  %7 = and i32 %4, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13, !prof !9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %87

13:                                               ; preds = %6
  %14 = and i32 %4, 32768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %64, label %16, !prof !8

16:                                               ; preds = %13
  %17 = and i32 %4, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 10
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = and i32 %4, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %4, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33, !prof !8

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 12
  %35 = load i32, ptr %34, align 16
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 16
  br label %37

37:                                               ; preds = %33, %30
  %38 = and i32 %4, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40, !prof !8

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = and i32 %4, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47, !prof !8

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 14
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = and i32 %4, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57, !prof !8

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  %61 = getelementptr inbounds %struct.net_device_stats, ptr %0, i32 0, i32 12
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %57, %54, %13
  %65 = phi i32 [ 0, %13 ], [ 1, %57 ], [ 1, %54 ]
  %66 = and i32 %4, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !8

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 16
  %70 = load i32, ptr %69, align 64
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 64
  br label %72

72:                                               ; preds = %68, %64
  %73 = and i32 %4, 4096
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75, !prof !8

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i32 [ 1, %75 ], [ %65, %72 ]
  %81 = and i32 %4, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !8

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %1, i32 0, i32 18
  %85 = load i32, ptr %84, align 8
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %83, %79, %9, %3
  %88 = phi i32 [ 1, %9 ], [ 8, %3 ], [ 1, %83 ], [ %80, %79 ]
  ret i32 %88
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_enable_tx_timestamp(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 4194304
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_tx_timestamp_status(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr %0, align 4
  %3 = lshr i32 %2, 17
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_get_timestamp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 1000000000
  %11 = add nuw nsw i64 %10, %6
  store i64 %11, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndesc_get_rx_timestamp_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 1, %11 ], [ 0, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ndesc_display_ring(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !11
  %7 = select i1 %2, ptr @.str.1, ptr @.str.2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %7) #9
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %24, %10 ], [ %0, %5 ]
  %12 = phi i32 [ %25, %10 ], [ 0, %5 ]
  %13 = shl i32 %12, 4
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
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %12, ptr noundef nonnull %6, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #9
  %24 = getelementptr %struct.dma_desc, ptr %11, i32 1
  %25 = add nuw i32 %12, 1
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %10

27:                                               ; preds = %10, %5
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ndesc_get_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ndesc_set_addr(ptr nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @ndesc_clear(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 -294967296, i32 6003000}
!11 = !{!"auto-init"}
