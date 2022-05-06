; ModuleID = '/llk/IR/drivers/dma/ste_dma40_ll.c_pt.bc'
source_filename = "../drivers/dma/ste_dma40_ll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stedma40_chan_cfg = type { i32, i8, i8, i32, i32, i32, %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info, i8, i32 }
%struct.stedma40_half_channel_info = type { i8, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.d40_phy_lli = type { i32, i32, i32, i32 }
%struct.d40_log_lli = type { i32, i32 }
%struct.d40_log_lli_full = type { i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @d40_log_cfg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, -3
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 4096, i32 0
  switch i32 %4, label %10 [
    i32 1, label %8
    i32 3, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = or i32 %7, 32768
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ %7, %3 ]
  %12 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 7, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 7, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %18 [
    i32 1, label %19
    i32 2, label %16
    i32 8, label %17
  ]

16:                                               ; preds = %10
  br label %19

17:                                               ; preds = %10
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %17, %16, %10
  %20 = phi i32 [ 256, %16 ], [ 768, %17 ], [ 512, %18 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 6, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 6, i32 1
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %27 [
    i32 1, label %28
    i32 2, label %25
    i32 8, label %26
  ]

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %26, %25, %19
  %29 = phi i32 [ 256, %25 ], [ 768, %26 ], [ 512, %27 ], [ 0, %19 ]
  %30 = and i32 %4, -2
  %31 = icmp eq i32 %30, 2
  %32 = icmp ult i32 %4, 2
  %33 = select i1 %32, i32 4096, i32 0
  %34 = or i32 %33, 32768
  %35 = select i1 %31, i32 %34, i32 %33
  %36 = shl i32 %22, 10
  %37 = shl i32 %13, 10
  %38 = or i32 %11, %37
  %39 = or i32 %38, %20
  %40 = or i32 %39, 8192
  %41 = or i32 %35, %36
  %42 = or i32 %41, %29
  %43 = or i32 %42, 8192
  store i32 %43, ptr %1, align 4
  store i32 %40, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @d40_phy_cfg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = srem i32 %9, 16
  %11 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 6, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = or i32 %10, 32784
  br label %18

16:                                               ; preds = %7
  %17 = or i32 %10, 32816
  br label %18

18:                                               ; preds = %16, %14, %3
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ 0, %3 ]
  switch i32 %4, label %31 [
    i32 1, label %20
    i32 3, label %20
  ]

20:                                               ; preds = %18, %18
  %21 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = srem i32 %22, 16
  %24 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 7, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = or i32 %23, 32784
  br label %31

29:                                               ; preds = %20
  %30 = or i32 %23, 32816
  br label %31

31:                                               ; preds = %29, %27, %18
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ], [ 0, %18 ]
  %33 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 6, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 7, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 6, i32 1
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %41 [
    i32 1, label %42
    i32 2, label %39
    i32 8, label %40
  ]

39:                                               ; preds = %31
  br label %42

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %40, %39, %31
  %43 = phi i32 [ 256, %39 ], [ 768, %40 ], [ 512, %41 ], [ 0, %31 ]
  %44 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 7, i32 1
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %48 [
    i32 1, label %49
    i32 2, label %46
    i32 8, label %47
  ]

46:                                               ; preds = %42
  br label %49

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %47, %46, %42
  %50 = phi i32 [ 256, %46 ], [ 768, %47 ], [ 512, %48 ], [ 0, %42 ]
  %51 = icmp eq i32 %34, 4
  %52 = or i32 %19, 8192
  %53 = shl i32 %34, 10
  %54 = or i32 %19, %53
  %55 = or i32 %54, 12288
  %56 = select i1 %51, i32 %52, i32 %55
  %57 = or i32 %43, %56
  %58 = icmp eq i32 %36, 4
  %59 = or i32 %32, 24576
  %60 = shl i32 %36, 10
  %61 = or i32 %32, %60
  %62 = or i32 %61, 28672
  %63 = select i1 %58, i32 %59, i32 %62
  %64 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 7
  %65 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 6
  %66 = or i32 %50, %63
  %67 = getelementptr inbounds %struct.stedma40_chan_cfg, ptr %0, i32 0, i32 1
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = or i32 %57, 128
  %71 = or i32 %66, 128
  %72 = select i1 %69, i32 %57, i32 %70
  %73 = select i1 %69, i32 %66, i32 %71
  %74 = load i8, ptr %65, align 4, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = or i32 %72, 64
  %77 = select i1 %75, i32 %72, i32 %76
  %78 = load i8, ptr %64, align 4, !range !8
  %79 = icmp eq i8 %78, 0
  %80 = or i32 %73, 64
  %81 = select i1 %79, i32 %73, i32 %80
  store i32 %77, ptr %1, align 4
  store i32 %81, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @d40_phy_sg_to_lli(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8) local_unnamed_addr #1 {
  %10 = icmp eq i32 %2, 0
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %117

12:                                               ; preds = %9
  %13 = zext i1 %10 to i32
  %14 = or i32 %13, %8
  %15 = add nsw i32 %1, -1
  %16 = ptrtoint ptr %3 to i32
  %17 = sub i32 15, %16
  %18 = add i32 %17, %4
  %19 = getelementptr inbounds %struct.stedma40_half_channel_info, ptr %6, i32 0, i32 1
  %20 = getelementptr inbounds %struct.stedma40_half_channel_info, ptr %7, i32 0, i32 1
  %21 = getelementptr inbounds %struct.stedma40_half_channel_info, ptr %6, i32 0, i32 2
  %22 = and i32 %5, -16385
  br label %23

23:                                               ; preds = %113, %12
  %24 = phi ptr [ %3, %12 ], [ %108, %113 ]
  %25 = phi ptr [ %0, %12 ], [ %115, %113 ]
  %26 = phi i32 [ 0, %12 ], [ %114, %113 ]
  %27 = phi i32 [ 0, %12 ], [ %34, %113 ]
  %28 = phi i32 [ %14, %12 ], [ %37, %113 ]
  %29 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = select i1 %10, i32 %30, i32 %2
  %34 = add i32 %32, %27
  %35 = icmp eq i32 %26, %15
  %36 = or i32 %28, 10
  %37 = select i1 %35, i32 %36, i32 %28
  %38 = ptrtoint ptr %24 to i32
  %39 = add i32 %18, %38
  %40 = and i32 %39, -16
  %41 = and i32 %37, 8
  %42 = icmp ne i32 %41, 0
  %43 = and i32 %37, 1
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %37, 4
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %37, -3
  %48 = select i1 %46, i32 0, i32 %4
  br label %49

49:                                               ; preds = %86, %23
  %50 = phi i32 [ %33, %23 ], [ %110, %86 ]
  %51 = phi ptr [ %24, %23 ], [ %108, %86 ]
  %52 = phi i32 [ %40, %23 ], [ %91, %86 ]
  %53 = phi i32 [ %32, %23 ], [ %87, %86 ]
  %54 = load i32, ptr %19, align 4
  %55 = load i32, ptr %20, align 4
  %56 = tail call i32 @llvm.smax.i32(i32 %54, i32 %55) #4
  %57 = tail call i32 @llvm.smin.i32(i32 %54, i32 %55) #4
  %58 = mul i32 %57, 65535
  %59 = add i32 %56, -1
  %60 = add i32 %58, %59
  %61 = sub i32 0, %56
  %62 = and i32 %60, %61
  %63 = icmp ugt i32 %62, 65535
  %64 = select i1 %63, i32 %56, i32 0
  %65 = sub i32 %62, %64
  %66 = icmp ult i32 %65, %53
  br i1 %66, label %67, label %74

67:                                               ; preds = %49
  %68 = shl i32 %65, 1
  %69 = icmp ult i32 %68, %53
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = sdiv i32 %53, 2
  %72 = add i32 %59, %71
  %73 = and i32 %72, %61
  br label %74

74:                                               ; preds = %70, %67, %49
  %75 = phi i32 [ %73, %70 ], [ %53, %49 ], [ %65, %67 ]
  %76 = load i32, ptr %21, align 4
  %77 = icmp eq i32 %76, 4
  %78 = shl i32 2, %76
  %79 = select i1 %77, i32 1, i32 %78
  %80 = add i32 %54, -1
  %81 = and i32 %80, %50
  %82 = icmp ne i32 %81, 0
  %83 = mul i32 %79, %54
  %84 = icmp ugt i32 %83, %75
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %117, label %86

86:                                               ; preds = %74
  %87 = sub i32 %53, %75
  %88 = icmp eq i32 %87, 0
  %89 = and i1 %42, %88
  %90 = add i32 %52, 31
  %91 = and i32 %90, -16
  %92 = select i1 %89, i32 %48, i32 %91
  %93 = select i1 %88, i32 %37, i32 %47
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  %96 = udiv i32 %75, %54
  %97 = shl i32 %96, 16
  %98 = getelementptr inbounds %struct.d40_phy_lli, ptr %51, i32 0, i32 1
  %99 = select i1 %95, i32 0, i32 %54
  %100 = or i32 %97, %99
  store i32 %100, ptr %98, align 4
  %101 = getelementptr inbounds %struct.d40_phy_lli, ptr %51, i32 0, i32 2
  store i32 %50, ptr %101, align 4
  %102 = icmp eq i32 %92, 0
  %103 = select i1 %102, i32 1, i32 %92
  %104 = getelementptr inbounds %struct.d40_phy_lli, ptr %51, i32 0, i32 3
  store i32 %103, ptr %104, align 4
  %105 = shl i32 %93, 13
  %106 = and i32 %105, 16384
  %107 = or i32 %106, %22
  store i32 %107, ptr %51, align 4
  %108 = getelementptr %struct.d40_phy_lli, ptr %51, i32 1
  %109 = select i1 %44, i32 0, i32 %75
  %110 = add i32 %109, %50
  br i1 %88, label %111, label %49

111:                                              ; preds = %86
  %112 = icmp eq ptr %108, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %111
  %114 = add nuw nsw i32 %26, 1
  %115 = tail call ptr @sg_next(ptr noundef %25) #4
  %116 = icmp eq i32 %114, %1
  br i1 %116, label %117, label %23

117:                                              ; preds = %113, %111, %74, %9
  %118 = phi i32 [ 0, %9 ], [ -22, %74 ], [ -22, %111 ], [ %34, %113 ]
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d40_log_lli_lcpa_write(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = and i32 %4, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.d40_log_lli, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 16385
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %5
  %13 = icmp eq i32 %3, -22
  %14 = shl i32 %3, 2
  %15 = or i32 %14, 2
  %16 = select i1 %13, i32 0, i32 %15
  %17 = select i1 %13, i32 0, i32 %14
  %18 = getelementptr inbounds %struct.d40_log_lli, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -255
  %21 = or i32 %20, %17
  store i32 %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.d40_log_lli, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -255
  %25 = or i32 %24, %16
  store i32 %25, ptr %22, align 4
  %26 = load i32, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %26) #4, !srcloc !9
  %27 = load i32, ptr %18, align 4
  %28 = getelementptr inbounds %struct.d40_log_lli_full, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #4, !srcloc !9
  %29 = load i32, ptr %1, align 4
  %30 = getelementptr inbounds %struct.d40_log_lli_full, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #4, !srcloc !9
  %31 = load i32, ptr %22, align 4
  %32 = getelementptr inbounds %struct.d40_log_lli_full, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d40_log_lli_lcla_write(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
  %6 = and i32 %4, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.d40_log_lli, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 16385
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %5
  %13 = icmp eq i32 %3, -22
  %14 = shl i32 %3, 2
  %15 = or i32 %14, 2
  %16 = select i1 %13, i32 0, i32 %15
  %17 = select i1 %13, i32 0, i32 %14
  %18 = getelementptr inbounds %struct.d40_log_lli, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -255
  %21 = or i32 %20, %17
  store i32 %21, ptr %18, align 4
  %22 = getelementptr inbounds %struct.d40_log_lli, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -255
  %25 = or i32 %24, %16
  store i32 %25, ptr %22, align 4
  %26 = load i32, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %26) #4, !srcloc !9
  %27 = load i32, ptr %18, align 4
  %28 = getelementptr inbounds %struct.d40_log_lli, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #4, !srcloc !9
  %29 = load i32, ptr %1, align 4
  %30 = getelementptr %struct.d40_log_lli, ptr %0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #4, !srcloc !9
  %31 = load i32, ptr %22, align 4
  %32 = getelementptr %struct.d40_log_lli, ptr %0, i32 1, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @d40_log_sg_to_lli(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = icmp eq i32 %2, 0
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %67

10:                                               ; preds = %7
  %11 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) #4
  %12 = tail call i32 @llvm.smin.i32(i32 %5, i32 %6) #4
  %13 = mul i32 %12, 65535
  %14 = add i32 %11, -1
  %15 = add i32 %13, %14
  %16 = sub i32 0, %11
  %17 = and i32 %15, %16
  %18 = icmp ugt i32 %17, 65535
  %19 = select i1 %18, i32 %11, i32 0
  %20 = sub i32 %17, %19
  %21 = shl i32 %20, 1
  %22 = select i1 %8, i32 4096, i32 0
  %23 = or i32 %22, %4
  br label %24

24:                                               ; preds = %63, %10
  %25 = phi i32 [ 0, %10 ], [ %34, %63 ]
  %26 = phi ptr [ %0, %10 ], [ %65, %63 ]
  %27 = phi i32 [ 0, %10 ], [ %64, %63 ]
  %28 = phi ptr [ %3, %10 ], [ %61, %63 ]
  %29 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = select i1 %8, i32 %30, i32 %2
  %34 = add i32 %32, %25
  br label %35

35:                                               ; preds = %53, %24
  %36 = phi i32 [ %33, %24 ], [ %60, %53 ]
  %37 = phi ptr [ %28, %24 ], [ %61, %53 ]
  %38 = phi i32 [ %32, %24 ], [ %54, %53 ]
  %39 = icmp ult i32 %20, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = icmp ult i32 %21, %38
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = sdiv i32 %38, 2
  %44 = add i32 %43, %14
  %45 = and i32 %44, %16
  br label %46

46:                                               ; preds = %42, %40, %35
  %47 = phi i32 [ %45, %42 ], [ %38, %35 ], [ %20, %40 ]
  %48 = getelementptr inbounds %struct.d40_log_lli, ptr %37, i32 0, i32 1
  store i32 %4, ptr %48, align 4
  %49 = udiv i32 %47, %5
  %50 = shl i32 %49, 16
  store i32 %50, ptr %37, align 4
  %51 = icmp ugt i32 %49, 65535
  br i1 %51, label %52, label %53, !prof !10

52:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ste_dma40_ll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

53:                                               ; preds = %46
  %54 = sub i32 %38, %47
  %55 = and i32 %36, 65535
  %56 = or i32 %50, %55
  store i32 %56, ptr %37, align 4
  %57 = and i32 %36, -65536
  %58 = or i32 %23, %57
  store i32 %58, ptr %48, align 4
  %59 = select i1 %8, i32 %47, i32 0
  %60 = add i32 %59, %36
  %61 = getelementptr %struct.d40_log_lli, ptr %37, i32 1
  %62 = icmp eq i32 %54, 0
  br i1 %62, label %63, label %35

63:                                               ; preds = %53
  %64 = add nuw nsw i32 %27, 1
  %65 = tail call ptr @sg_next(ptr noundef %26) #4
  %66 = icmp eq i32 %64, %1
  br i1 %66, label %67, label %24

67:                                               ; preds = %63, %7
  %68 = phi i32 [ 0, %7 ], [ %34, %63 ]
  ret i32 %68
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 5018832}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152886140, i64 2152886631, i64 2152886177, i64 2152886233, i64 2152886267, i64 2152886291, i64 2152886332, i64 2152886353, i64 2152886381, i64 2152886415}
