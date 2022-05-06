; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_dp_link_caps = type { i8, i8, i8, i8, i8 }
%struct.drm_dp_link = type { i8, i32, i32, %struct.drm_dp_link_caps, %struct.anon, i8, i32, i32, [8 x i32], i32, ptr, ptr, %struct.drm_dp_link_train }
%struct.anon = type { i32, i32 }
%struct.drm_dp_link_train = type { %struct.drm_dp_link_train_set, %struct.drm_dp_link_train_set, i32, i8, i8 }
%struct.drm_dp_link_train_set = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_dp_link_ops = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }

@.str = private unnamed_addr constant [31 x i8] c"unsupported eDP version: %02x\0A\00", align 1
@drm_dp_edp_revisions = internal unnamed_addr constant [4 x i8] c"\11\12\13\14", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"AUX interval %u out of range (max. 4)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to configure DP link: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"using %u lanes at %u kHz (%lu/%lu kbps)\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"training parameters not available\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"fast link training not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"full link training failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to read link status: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"failed to apply link training: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"failed to set training parameters: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"failed to set post-cursor: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"failed to set training pattern: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"failed to disable link training: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"full-training link: %u lane%s at %u MHz\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"clock recovery failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"clock recovery failed, downgrading link\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"clock recovery succeeded\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"channel equalization failed: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"channel equalization failed, downgrading link\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"channel equalization succeeded\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"failed to recover clock: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"failed to equalize channel: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"clock recovery lost while equalizing channel\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @drm_dp_link_caps_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !range !8
  store i8 %3, ptr %0, align 1
  %4 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %0, i32 0, i32 1
  store i8 %5, ptr %6, align 1
  %7 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %1, i32 0, i32 2
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %0, i32 0, i32 2
  store i8 %8, ptr %9, align 1
  %10 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %0, i32 0, i32 3
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %1, i32 0, i32 4
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = getelementptr inbounds %struct.drm_dp_link_caps, ptr %0, i32 0, i32 4
  store i8 %14, ptr %15, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_add_rate(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %5 [
    i32 8, label %34
    i32 0, label %13
  ]

5:                                                ; preds = %10, %2
  %6 = phi i32 [ %11, %10 ], [ 0, %2 ]
  %7 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = add nuw i32 %6, 1
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %29, label %5

13:                                               ; preds = %5, %2
  %14 = phi i32 [ %4, %2 ], [ %6, %5 ]
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %34, label %20

20:                                               ; preds = %16, %13
  %21 = icmp ugt i32 %4, %14
  br i1 %21, label %22, label %29

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %24, %22 ], [ %4, %20 ]
  %24 = add i32 %23, -1
  %25 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %23
  store i32 %26, ptr %27, align 4
  %28 = icmp ugt i32 %24, %14
  br i1 %28, label %22, label %29

29:                                               ; preds = %22, %20, %10
  %30 = phi i32 [ %14, %20 ], [ %14, %22 ], [ %4, %10 ]
  %31 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %30
  store i32 %1, ptr %31, align 4
  %32 = load i32, ptr %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %3, align 4
  br label %34

34:                                               ; preds = %29, %16, %2
  %35 = phi i32 [ 0, %29 ], [ -28, %2 ], [ -17, %16 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_remove_rate(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw i32 %7, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %28, label %6

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %7, %6 ]
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = add i32 %4, -1
  store i32 %18, ptr %3, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %22, %20 ], [ %15, %17 ]
  %22 = add nuw i32 %21, 1
  %23 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %21
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %20, label %28

28:                                               ; preds = %20, %17, %14, %11
  %29 = phi i32 [ -22, %14 ], [ 0, %17 ], [ 0, %20 ], [ -22, %11 ]
  ret i32 %29
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_link_update_rates(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %7

5:                                                ; preds = %18
  %6 = icmp ult i32 %20, %19
  br i1 %6, label %23, label %29

7:                                                ; preds = %18, %1
  %8 = phi i32 [ %19, %18 ], [ %3, %1 ]
  %9 = phi i32 [ %20, %18 ], [ 0, %1 ]
  %10 = phi i32 [ %21, %18 ], [ 0, %1 ]
  %11 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = add i32 %9, 1
  %16 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %9
  store i32 %12, ptr %16, align 4
  %17 = load i32, ptr %2, align 4
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %17, %14 ], [ %8, %7 ]
  %20 = phi i32 [ %15, %14 ], [ %9, %7 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %7, label %5

23:                                               ; preds = %23, %5
  %24 = phi i32 [ %26, %23 ], [ %20, %5 ]
  %25 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 8, i32 %24
  store i32 0, ptr %25, align 4
  %26 = add nuw i32 %24, 1
  %27 = load i32, ptr %2, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %23, label %29

29:                                               ; preds = %23, %5, %1
  %30 = phi i32 [ %20, %5 ], [ 0, %1 ], [ %20, %23 ]
  store i32 %30, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca [15 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %3, i8 0, i32 15, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  store i8 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 4, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 5
  store i8 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %8, i8 0, i64 13, i1 false) #8
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %12, i8 0, i64 44, i1 false) #8
  br label %13

13:                                               ; preds = %7, %2
  %14 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 15) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %149, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %3, align 1
  store i8 %17, ptr %1, align 4
  %18 = getelementptr inbounds i8, ptr %3, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %19) #8
  %21 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %3, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 31
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = load i8, ptr %3, align 1
  %28 = icmp ugt i8 %27, 16
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = lshr i8 %23, 7
  %31 = icmp ne i8 %27, 17
  %32 = and i8 %23, 64
  %33 = icmp ne i8 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds i8, ptr %3, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 64
  %39 = icmp ne i8 %38, 0
  br label %40

40:                                               ; preds = %29, %16
  %41 = phi i8 [ %30, %29 ], [ 0, %16 ]
  %42 = phi i8 [ %35, %29 ], [ 0, %16 ]
  %43 = phi i1 [ %39, %29 ], [ false, %16 ]
  %44 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3
  store i8 %41, ptr %44, align 4
  %45 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3, i32 1
  store i8 %42, ptr %45, align 1
  %46 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3, i32 2
  %47 = zext i1 %43 to i8
  store i8 %47, ptr %46, align 2
  %48 = getelementptr inbounds i8, ptr %3, i32 6
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3, i32 3
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %3, i32 13
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3, i32 4
  store i8 1, ptr %57, align 4
  %58 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1792, ptr noundef nonnull %4, i32 noundef 1) #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %149, label %60

60:                                               ; preds = %56
  %61 = load i8, ptr %4, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ugt i8 %61, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %62) #8
  br label %69

65:                                               ; preds = %60
  %66 = getelementptr [4 x i8], ptr @drm_dp_edp_revisions, i32 0, i32 %62
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 5
  store i8 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %65, %64, %40
  %70 = getelementptr inbounds [15 x i8], ptr %3, i32 0, i32 14
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 127
  %73 = icmp ugt i8 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = zext i8 %72 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %75) #8
  br label %78

76:                                               ; preds = %69
  %77 = icmp eq i8 %72, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %76, %74
  %79 = load i8, ptr %1, align 4
  %80 = icmp ugt i8 %79, 19
  br i1 %80, label %84, label %86

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 4
  store i32 100, ptr %82, align 4
  %83 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 4, i32 1
  store i32 400, ptr %83, align 4
  br label %86

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 4
  store i32 100, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %81, %78
  %87 = load i32, ptr %21, align 4
  %88 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 6
  store i32 %87, ptr %88, align 4
  %89 = load i32, ptr %26, align 4
  %90 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 7
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 5
  %92 = load i8, ptr %91, align 4
  %93 = icmp ugt i8 %92, 19
  br i1 %93, label %94, label %149

94:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  %95 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %5, i32 noundef 16) #8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %148, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 9
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %143, %97
  %101 = phi i32 [ %99, %97 ], [ %144, %143 ]
  %102 = phi i32 [ 0, %97 ], [ %145, %143 ]
  %103 = shl nuw nsw i32 %102, 1
  %104 = or i32 %103, 1
  %105 = getelementptr [16 x i8], ptr %5, i32 0, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 8
  %109 = getelementptr [16 x i8], ptr %5, i32 0, i32 %103
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %108, %111
  %113 = mul nuw nsw i32 %112, 200
  switch i32 %101, label %114 [
    i32 8, label %143
    i32 0, label %122
  ]

114:                                              ; preds = %119, %100
  %115 = phi i32 [ %120, %119 ], [ 0, %100 ]
  %116 = getelementptr %struct.drm_dp_link, ptr %1, i32 0, i32 8, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %117, %113
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = add nuw i32 %115, 1
  %121 = icmp eq i32 %120, %101
  br i1 %121, label %138, label %114

122:                                              ; preds = %114, %100
  %123 = phi i32 [ %101, %100 ], [ %115, %114 ]
  %124 = icmp eq i32 %123, %101
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr %struct.drm_dp_link, ptr %1, i32 0, i32 8, i32 %123
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, %113
  br i1 %128, label %143, label %129

129:                                              ; preds = %125, %122
  %130 = icmp ugt i32 %101, %123
  br i1 %130, label %131, label %138

131:                                              ; preds = %131, %129
  %132 = phi i32 [ %133, %131 ], [ %101, %129 ]
  %133 = add i32 %132, -1
  %134 = getelementptr %struct.drm_dp_link, ptr %1, i32 0, i32 8, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr %struct.drm_dp_link, ptr %1, i32 0, i32 8, i32 %132
  store i32 %135, ptr %136, align 4
  %137 = icmp ugt i32 %133, %123
  br i1 %137, label %131, label %138

138:                                              ; preds = %131, %129, %119
  %139 = phi i32 [ %123, %129 ], [ %123, %131 ], [ %101, %119 ]
  %140 = getelementptr %struct.drm_dp_link, ptr %1, i32 0, i32 8, i32 %139
  store i32 %113, ptr %140, align 4
  %141 = load i32, ptr %98, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %98, align 4
  br label %143

143:                                              ; preds = %138, %125, %100
  %144 = phi i32 [ %101, %100 ], [ %101, %125 ], [ %142, %138 ]
  %145 = add nuw nsw i32 %102, 1
  %146 = icmp eq i32 %145, 8
  br i1 %146, label %147, label %100

147:                                              ; preds = %143
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %149

148:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  br label %149

149:                                              ; preds = %148, %147, %86, %56, %13
  %150 = phi i32 [ %14, %13 ], [ %58, %56 ], [ %95, %148 ], [ 0, %147 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #8
  ret i32 %150
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_power_up(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = load i8, ptr %1, align 4
  %6 = icmp ult i8 %5, 17
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1536, ptr noundef nonnull %4, i32 noundef 1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %4, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 1
  store i8 %13, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %13, ptr %3, align 1
  %14 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1536, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %16, %10, %7, %2
  %18 = phi i32 [ 0, %16 ], [ 0, %2 ], [ %8, %7 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_power_down(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = load i8, ptr %1, align 4
  %6 = icmp ult i8 %5, 17
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1536, ptr noundef nonnull %4, i32 noundef 1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %4, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %13, ptr %3, align 1
  %14 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1536, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %10, %7, %2
  %17 = phi i32 [ 0, %2 ], [ %8, %7 ], [ %15, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_configure(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_dp_link_ops, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %1) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %14) #8
  br label %46

17:                                               ; preds = %13, %9, %2
  %18 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %19) #8
  store i8 %20, ptr %5, align 2
  %21 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = or i8 %23, -128
  store i8 %29, ptr %24, align 1
  br label %30

30:                                               ; preds = %28, %17
  %31 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %5, i32 noundef 2) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3, i32 3
  %35 = load i8, ptr %34, align 1, !range !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %35, ptr %4, align 1
  %36 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 264, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.drm_dp_link, ptr %1, i32 0, i32 3, i32 4
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 1, ptr %3, align 1
  %43 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 266, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %42, %33, %30, %16
  %47 = phi i32 [ %14, %16 ], [ 0, %45 ], [ %31, %30 ], [ %36, %33 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_choose(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.drm_display_info, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = mul i32 %6, 3
  %10 = mul i32 %9, %8
  %11 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %3
  %15 = icmp ult i32 %5, 162000
  br i1 %15, label %57, label %24

16:                                               ; preds = %24
  %17 = icmp ult i32 %5, 270000
  br i1 %17, label %32, label %18

18:                                               ; preds = %16
  %19 = icmp ugt i32 %10, 2160000
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = icmp ult i32 %5, 540000
  %22 = icmp ugt i32 %10, 4320000
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %32, label %26

24:                                               ; preds = %14
  %25 = icmp ugt i32 %10, 1296000
  br i1 %25, label %16, label %26

26:                                               ; preds = %53, %51, %47, %40, %38, %34, %24, %20, %18
  %27 = phi i32 [ 1, %24 ], [ 1, %18 ], [ 2, %34 ], [ 2, %38 ], [ 4, %47 ], [ 4, %51 ], [ 1, %20 ], [ 2, %40 ], [ 4, %53 ]
  %28 = phi i32 [ 162000, %24 ], [ 270000, %18 ], [ 162000, %34 ], [ 270000, %38 ], [ 162000, %47 ], [ 270000, %51 ], [ 540000, %20 ], [ 540000, %40 ], [ 540000, %53 ]
  %29 = phi i32 [ 1296000, %24 ], [ 2160000, %18 ], [ 2592000, %34 ], [ 4320000, %38 ], [ 5184000, %47 ], [ 8640000, %51 ], [ 4320000, %20 ], [ 8640000, %40 ], [ 17280000, %53 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %27, i32 noundef %28, i32 noundef %10, i32 noundef %29) #8
  %30 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 7
  store i32 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 6
  store i32 %28, ptr %31, align 4
  br label %57

32:                                               ; preds = %20, %16
  %33 = icmp ult i32 %12, 2
  br i1 %33, label %57, label %34

34:                                               ; preds = %32
  %35 = icmp ugt i32 %10, 2592000
  br i1 %35, label %36, label %26

36:                                               ; preds = %34
  %37 = icmp ult i32 %5, 270000
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = icmp ugt i32 %10, 4320000
  br i1 %39, label %40, label %26

40:                                               ; preds = %38
  %41 = icmp ult i32 %5, 540000
  %42 = icmp ugt i32 %10, 8640000
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %26

44:                                               ; preds = %40, %36
  %45 = icmp ult i32 %12, 4
  %46 = select i1 %45, i1 true, i1 %15
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = icmp ugt i32 %10, 5184000
  br i1 %48, label %49, label %26

49:                                               ; preds = %47
  %50 = icmp ult i32 %5, 270000
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  %52 = icmp ugt i32 %10, 8640000
  br i1 %52, label %53, label %26

53:                                               ; preds = %51
  %54 = icmp ult i32 %5, 540000
  %55 = icmp ugt i32 %10, 17280000
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %26

57:                                               ; preds = %53, %49, %44, %32, %26, %14, %3
  %58 = phi i32 [ 0, %26 ], [ -34, %49 ], [ -34, %53 ], [ -34, %44 ], [ -34, %32 ], [ -34, %3 ], [ -34, %14 ]
  ret i32 %58
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @drm_dp_link_train_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #6 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(102) %0, i8 0, i64 102, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_link_train(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(102) %4, i8 0, i64 102, i1 false) #8
  %5 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 3, i32 2
  %6 = load i8, ptr %5, align 2, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr @.str.6, ptr @.str.5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %8) #8
  %9 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %9, align 4
  %12 = icmp ugt i32 %11, 1
  %13 = select i1 %12, ptr @.str.9, ptr @.str.10
  %14 = load i32, ptr %10, align 4
  %15 = udiv i32 %14, 100
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %11, ptr noundef nonnull %13, i32 noundef %15) #8
  %16 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @drm_dp_link_configure(ptr noundef %17, ptr noundef %0) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 2
  %22 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 4, i32 1
  %23 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 1
  %25 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 3
  %26 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 3, i32 1
  %27 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 4
  br label %30

28:                                               ; preds = %87, %1
  %29 = phi i32 [ %18, %1 ], [ %94, %87 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %29) #8
  br label %166

30:                                               ; preds = %87, %20
  store i32 1, ptr %21, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = phi i32 [ 1, %30 ], [ %75, %74 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #8, !annotation !9
  %33 = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %0) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %77, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %21, align 4
  switch i32 %36, label %44 [
    i32 1, label %38
    i32 2, label %37
    i32 3, label %37
  ]

37:                                               ; preds = %35, %35
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi ptr [ %22, %37 ], [ %23, %35 ]
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = shl i32 %40, 1
  call void @usleep_range_state(i32 noundef %40, i32 noundef %43, i32 noundef 2) #8
  br label %44

44:                                               ; preds = %42, %38, %35
  %45 = load ptr, ptr %16, align 4
  %46 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %45, ptr noundef nonnull %3) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %46) #8
  br label %77

49:                                               ; preds = %44
  %50 = load i32, ptr %9, align 4
  %51 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %3, i32 noundef %50) #8
  br i1 %51, label %70, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ %67, %55 ], [ 0, %52 ]
  %57 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %3, i32 noundef %56) #8
  %58 = zext i8 %57 to i32
  %59 = getelementptr [4 x i32], ptr %24, i32 0, i32 %56
  store i32 %58, ptr %59, align 4
  %60 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %3, i32 noundef %56) #8
  %61 = lshr i8 %60, 3
  %62 = zext i8 %61 to i32
  %63 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 1, i32 1, i32 %56
  store i32 %62, ptr %63, align 4
  %64 = call zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr noundef nonnull %3, i32 noundef %56) #8
  %65 = zext i8 %64 to i32
  %66 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 1, i32 2, i32 %56
  store i32 %65, ptr %66, align 4
  %67 = add nuw i32 %56, 1
  %68 = load i32, ptr %9, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %55, label %71

70:                                               ; preds = %49
  store i8 1, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  br label %96

71:                                               ; preds = %55, %52
  %72 = load i8, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  call fastcc void @drm_dp_link_train_adjust(ptr noundef %4) #8
  %75 = add nuw nsw i32 %32, 1
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %79, label %31

77:                                               ; preds = %48, %31
  %78 = phi i32 [ %46, %48 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %78) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %78) #8
  br label %159

79:                                               ; preds = %74
  %80 = load i8, ptr %25, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #8
  %83 = load i32, ptr %10, align 4
  switch i32 %83, label %87 [
    i32 162000, label %159
    i32 270000, label %85
    i32 540000, label %84
  ]

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %157, %155, %84, %82
  %86 = phi i32 [ 270000, %157 ], [ 270000, %84 ], [ 162000, %155 ], [ 162000, %82 ]
  store i32 %86, ptr %10, align 4
  br label %87

87:                                               ; preds = %155, %85, %82
  %88 = phi i32 [ %156, %155 ], [ %83, %82 ], [ %86, %85 ]
  %89 = load i32, ptr %9, align 4
  %90 = icmp ugt i32 %89, 1
  %91 = select i1 %90, ptr @.str.9, ptr @.str.10
  %92 = udiv i32 %88, 100
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %89, ptr noundef nonnull %91, i32 noundef %92) #8
  %93 = load ptr, ptr %16, align 4
  %94 = call i32 @drm_dp_link_configure(ptr noundef %93, ptr noundef %0) #8
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %28, label %30

96:                                               ; preds = %79, %71, %70
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22) #8
  %97 = load i8, ptr %26, align 1, !range !8
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, i32 2, i32 3
  store i32 %99, ptr %21, align 4
  br label %100

100:                                              ; preds = %147, %96
  %101 = phi i32 [ 1, %96 ], [ %148, %147 ]
  %102 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #8, !annotation !9
  %103 = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %0) #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %150, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %21, align 4
  switch i32 %106, label %114 [
    i32 1, label %108
    i32 2, label %107
    i32 3, label %107
  ]

107:                                              ; preds = %105, %105
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi ptr [ %22, %107 ], [ %23, %105 ]
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = shl i32 %110, 1
  call void @usleep_range_state(i32 noundef %110, i32 noundef %113, i32 noundef 2) #8
  br label %114

114:                                              ; preds = %112, %108, %105
  %115 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %102, ptr noundef nonnull %2) #8
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %115) #8
  br label %150

118:                                              ; preds = %114
  %119 = load i32, ptr %9, align 4
  %120 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %2, i32 noundef %119) #8
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #8
  store i8 0, ptr %25, align 4
  br label %144

122:                                              ; preds = %118
  %123 = load i32, ptr %9, align 4
  %124 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %2, i32 noundef %123) #8
  br i1 %124, label %143, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %9, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %128, %125
  %129 = phi i32 [ %140, %128 ], [ 0, %125 ]
  %130 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef nonnull %2, i32 noundef %129) #8
  %131 = zext i8 %130 to i32
  %132 = getelementptr [4 x i32], ptr %24, i32 0, i32 %129
  store i32 %131, ptr %132, align 4
  %133 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef nonnull %2, i32 noundef %129) #8
  %134 = lshr i8 %133, 3
  %135 = zext i8 %134 to i32
  %136 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 1, i32 1, i32 %129
  store i32 %135, ptr %136, align 4
  %137 = call zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr noundef nonnull %2, i32 noundef %129) #8
  %138 = zext i8 %137 to i32
  %139 = getelementptr %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 1, i32 2, i32 %129
  store i32 %138, ptr %139, align 4
  %140 = add nuw i32 %129, 1
  %141 = load i32, ptr %9, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %128, label %144

143:                                              ; preds = %122
  store i8 1, ptr %27, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #8
  br label %158

144:                                              ; preds = %128, %125, %121
  %145 = load i8, ptr %27, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  call fastcc void @drm_dp_link_train_adjust(ptr noundef %4) #8
  %148 = add nuw nsw i32 %101, 1
  %149 = icmp eq i32 %148, 5
  br i1 %149, label %152, label %100

150:                                              ; preds = %117, %100
  %151 = phi i32 [ %115, %117 ], [ %103, %100 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %151) #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %151) #8
  br label %159

152:                                              ; preds = %147
  %153 = load i8, ptr %27, align 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #8
  %156 = load i32, ptr %10, align 4
  switch i32 %156, label %87 [
    i32 162000, label %159
    i32 270000, label %85
    i32 540000, label %157
  ]

157:                                              ; preds = %155
  br label %85

158:                                              ; preds = %152, %144, %143
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25) #8
  br label %159

159:                                              ; preds = %158, %155, %150, %82, %77
  %160 = phi i32 [ %78, %77 ], [ %151, %150 ], [ 0, %158 ], [ -22, %82 ], [ -22, %155 ]
  store i32 0, ptr %21, align 4
  %161 = call fastcc i32 @drm_dp_link_apply_training(ptr noundef %0) #8
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %161) #8
  br label %164

164:                                              ; preds = %163, %159
  %165 = icmp slt i32 %160, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %164, %28
  %167 = phi i32 [ %29, %28 ], [ %160, %164 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %167) #8
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %167, %166 ], [ 0, %164 ]
  ret i32 %169
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_dp_link_apply_training(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca i8, align 1
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %12) #8
  br label %75

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %18 = icmp eq i32 %6, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %19, %15
  %20 = phi i32 [ %29, %19 ], [ 0, %15 ]
  %21 = getelementptr i32, ptr %4, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i32, ptr %16, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 3
  %26 = or i32 %25, %22
  %27 = trunc i32 %26 to i8
  %28 = getelementptr [4 x i8], ptr %3, i32 0, i32 %20
  store i8 %27, ptr %28, align 1
  %29 = add nuw i32 %20, 1
  %30 = icmp eq i32 %29, %6
  br i1 %30, label %31, label %19

31:                                               ; preds = %19, %15
  %32 = call i32 @drm_dp_dpcd_write(ptr noundef %8, i32 noundef 259, ptr noundef nonnull %3, i32 noundef %6) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %32) #8
  br label %75

35:                                               ; preds = %31
  %36 = load i8, ptr %0, align 4
  %37 = icmp ugt i8 %36, 17
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 540000
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %43, align 1
  store i8 0, ptr %3, align 4
  br i1 %18, label %59, label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ %57, %44 ], [ 0, %42 ]
  %46 = getelementptr i32, ptr %17, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 %45, 2
  %50 = and i32 %49, 4
  %51 = shl nuw nsw i32 %48, %50
  %52 = lshr i32 %45, 1
  %53 = getelementptr [4 x i8], ptr %3, i32 0, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = trunc i32 %51 to i8
  %56 = or i8 %54, %55
  store i8 %56, ptr %53, align 1
  %57 = add nuw i32 %45, 1
  %58 = icmp eq i32 %57, %6
  br i1 %58, label %59, label %44

59:                                               ; preds = %44, %42
  %60 = add i32 %6, 1
  %61 = lshr i32 %60, 1
  %62 = call i32 @drm_dp_dpcd_write(ptr noundef %8, i32 noundef 271, ptr noundef nonnull %3, i32 noundef %61) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %62) #8
  br label %75

65:                                               ; preds = %59, %38, %35
  %66 = getelementptr inbounds %struct.drm_dp_link, ptr %0, i32 0, i32 12, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 32
  %70 = or i32 %69, %67
  %71 = trunc i32 %70 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %71, ptr %2, align 1
  %72 = call i32 @drm_dp_dpcd_write(ptr noundef %8, i32 noundef 258, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %72) #8
  br label %75

75:                                               ; preds = %74, %65, %64, %34, %14
  %76 = phi i32 [ %12, %14 ], [ %32, %34 ], [ %62, %64 ], [ %72, %74 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_dp_link_train_adjust(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.drm_dp_link_train, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 %4, ptr %0, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store i32 %11, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr [4 x i32], ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 %18, ptr %15, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 %25, ptr %22, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 1, i32 0
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 1, i32 0
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 %32, ptr %29, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 1, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 %39, ptr %36, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 1, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 1, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 %46, ptr %43, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 1, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 1, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 %53, ptr %50, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 2, i32 0
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 2, i32 0
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 %60, ptr %57, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 2, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 2, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 %67, ptr %64, align 4
  br label %70

70:                                               ; preds = %69, %63
  %71 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 2, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 2, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  store i32 %74, ptr %71, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = getelementptr %struct.drm_dp_link_train_set, ptr %0, i32 0, i32 2, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr %struct.drm_dp_link_train, ptr %0, i32 0, i32 1, i32 2, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  store i32 %81, ptr %78, align 4
  br label %84

84:                                               ; preds = %83, %77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!9 = !{!"auto-init"}
