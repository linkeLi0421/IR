; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwxgmac2_descs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_desc = type { i32, i32, i32, i32 }
%struct.dma_edesc = type { i32, i32, i32, i32, %struct.dma_desc }

@dwxgmac210_desc_ops = dso_local local_unnamed_addr constant %struct.stmmac_desc_ops { ptr @dwxgmac2_init_rx_desc, ptr @dwxgmac2_init_tx_desc, ptr @dwxgmac2_prepare_tx_desc, ptr @dwxgmac2_prepare_tso_tx_desc, ptr @dwxgmac2_set_tx_owner, ptr @dwxgmac2_get_tx_owner, ptr @dwxgmac2_release_tx_desc, ptr @dwxgmac2_set_tx_ic, ptr @dwxgmac2_get_tx_ls, ptr @dwxgmac2_get_tx_status, ptr @dwxgmac2_get_tx_len, ptr @dwxgmac2_set_rx_owner, ptr @dwxgmac2_get_rx_frame_len, ptr @dwxgmac2_get_rx_status, ptr null, ptr @dwxgmac2_enable_tx_timestamp, ptr @dwxgmac2_get_tx_timestamp_status, ptr @dwxgmac2_get_timestamp, ptr @dwxgmac2_get_rx_timestamp_status, ptr null, ptr @dwxgmac2_set_mss, ptr @dwxgmac2_get_addr, ptr @dwxgmac2_set_addr, ptr @dwxgmac2_clear, ptr @dwxgmac2_get_rx_hash, ptr @dwxgmac2_get_rx_header_len, ptr @dwxgmac2_set_sec_addr, ptr @dwxgmac2_set_sarc, ptr @dwxgmac2_set_vlan_tag, ptr @dwxgmac2_set_vlan, ptr @dwxgmac2_set_tbs }, align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_init_rx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 -1073741824, i32 -2147483648
  %10 = or i32 %7, %9
  store i32 %10, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_init_tx_desc(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #1 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_prepare_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef %7) #2 {
  %9 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %2, 16383
  %12 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %1, 0
  %16 = xor i1 %5, true
  %17 = or i1 %15, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %8
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #7, !srcloc !8
  br label %19

19:                                               ; preds = %18, %8
  %20 = and i32 %10, -805502977
  %21 = and i32 %7, 32767
  %22 = select i1 %15, i32 0, i32 536870912
  %23 = select i1 %3, i32 196608, i32 0
  %24 = select i1 %6, i32 268435456, i32 0
  %25 = or i32 %23, %22
  %26 = or i32 %25, %24
  %27 = or i32 %26, %21
  %28 = or i32 %27, %20
  %29 = or i32 %28, -2147483648
  %30 = select i1 %5, i32 %29, i32 %28
  store i32 %30, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac2_prepare_tso_tx_desc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #2 {
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
  %33 = or i32 %31, %32
  %34 = or i32 %33, %10
  %35 = or i32 %34, 537133056
  %36 = xor i1 %4, true
  %37 = or i1 %26, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void asm sideeffect "dmb oshst", "~{memory}"() #7, !srcloc !9
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
define internal void @dwxgmac2_set_tx_owner(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_owner(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 31
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_release_tx_desc(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_tx_ic(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, -2147483648
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_ls(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 28
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_status(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, -1
  %8 = lshr i32 %6, 28
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = select i1 %7, i32 %10, i32 4, !prof !10
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_len(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16383
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_rx_owner(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, i32 -1073741824, i32 -2147483648
  %7 = or i32 %4, %6
  store i32 %7, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_rx_frame_len(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16383
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_rx_status(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %17, !prof !10

7:                                                ; preds = %3
  %8 = and i32 %5, 1073741824
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !10

10:                                               ; preds = %7
  %11 = and i32 %5, 268435456
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !10

13:                                               ; preds = %10
  %14 = and i32 %5, 268468224
  %15 = icmp eq i32 %14, 268468224
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %13, %10, %7, %3
  %18 = phi i32 [ 8, %3 ], [ 1, %7 ], [ 16, %10 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_enable_tx_timestamp(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 1073741824
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_tx_timestamp_status(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_get_timestamp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = mul nuw nsw i64 %6, 1000000000
  %8 = load i32, ptr %0, align 4
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %7, %9
  store i64 %10, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwxgmac2_get_rx_timestamp_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 134217728
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8, !prof !11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dmb osh", "~{memory}"() #7, !srcloc !12
  %11 = and i32 %10, -1073741744
  %12 = icmp eq i32 %11, 1073741840
  br i1 %12, label %13, label %21, !prof !10

13:                                               ; preds = %8
  %14 = load i32, ptr %1, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dma_desc, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %13
  br label %21

21:                                               ; preds = %20, %16, %8, %3
  %22 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 0, %16 ], [ 1, %20 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_mss(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
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
define internal void @dwxgmac2_get_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load i32, ptr %0, align 4
  store i32 %3, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_addr(ptr nocapture noundef writeonly %0, i32 noundef %1) #1 {
  store i32 %1, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_clear(ptr nocapture noundef writeonly %0) #1 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dwxgmac2_get_rx_hash(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 15
  %11 = add nsw i32 %10, -1
  %12 = and i32 %11, -10
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 3, i32 2
  store i32 %14, ptr %2, align 4
  %15 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %1, align 4
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ 0, %8 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_get_rx_header_len(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  store i32 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_sec_addr(ptr nocapture noundef writeonly %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_sarc(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 23
  %4 = and i32 %3, 58720256
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwxgmac2_set_vlan_tag(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
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
define internal void @dwxgmac2_set_vlan(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 14
  %4 = and i32 %3, 49152
  %5 = getelementptr inbounds %struct.dma_desc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @dwxgmac2_set_tbs(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #1 {
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!8 = !{i64 2155226416}
!9 = !{i64 2155230536}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2155222887}
