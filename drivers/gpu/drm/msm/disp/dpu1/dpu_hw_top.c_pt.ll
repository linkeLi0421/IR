; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.split_pipe_cfg = type { i8, i32, i32, i8 }
%struct.dpu_danger_safe_status = type { i8, [15 x i8] }
%struct.dpu_vsync_source_cfg = type { i32, i32, [8 x i32], i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [11 x i8] c"SSPP_SPARE\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SPLIT_DISPLAY_LOWER_PIPE_CTRL\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SPLIT_DISPLAY_UPPER_PIPE_CTRL\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SPLIT_DISPLAY_EN\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"reg_off\00", align 1
@dpu_hw_setup_vsync_source.pp_offset = internal unnamed_addr constant [8 x i32] [i32 12, i32 8, i32 4, i32 19, i32 24, i32 0, i32 0, i32 0], align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"MDP_VSYNC_SEL\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"wd_load_value\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"wd_ctl\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"wd_ctl2\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"HDMI_DP_CORE_SELECT\00", align 1
@switch.table.dpu_hw_setup_vsync_source = private unnamed_addr constant [4 x i32] [i32 1096, i32 1080, i32 1064, i32 920], align 4
@switch.table.dpu_hw_setup_vsync_source.10 = private unnamed_addr constant [4 x i32] [i32 1088, i32 1072, i32 1056, i32 912], align 4
@switch.table.dpu_hw_setup_vsync_source.11 = private unnamed_addr constant [4 x i32] [i32 1092, i32 1076, i32 1060, i32 916], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_mdptop_init(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %53

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 60) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 1
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %26, %18
  %22 = phi i32 [ 0, %18 ], [ %27, %26 ]
  %23 = getelementptr %struct.dpu_mdp_cfg, ptr %20, i32 %22, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = add nuw i32 %22, 1
  %28 = icmp eq i32 %27, %16
  br i1 %28, label %43, label %21

29:                                               ; preds = %21
  store ptr %1, ptr %12, align 8
  %30 = getelementptr %struct.dpu_mdp_cfg, ptr %20, i32 %22, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 1, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.dpu_mdp_cfg, ptr %20, i32 %22, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 1, i32 2
  store i32 %34, ptr %35, align 8
  %36 = load i32, ptr %2, align 4
  %37 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 1, i32 4
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 1, i32 5
  store i32 128, ptr %38, align 4
  %39 = getelementptr %struct.dpu_mdp_cfg, ptr %20, i32 %22
  %40 = icmp eq ptr %39, null
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29, %26, %14, %11
  tail call void @kfree(ptr noundef nonnull %9) #4
  br label %53

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 2
  store i32 %0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 3
  store ptr %39, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 4
  store ptr @dpu_hw_setup_split_pipe, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 4, i32 2
  store ptr @dpu_hw_setup_clk_force_ctrl, ptr %48, align 8
  %49 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 4, i32 3
  store ptr @dpu_hw_get_danger_status, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 4, i32 4
  store ptr @dpu_hw_setup_vsync_source, ptr %50, align 8
  %51 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 4, i32 5
  store ptr @dpu_hw_get_safe_status, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %9, i32 0, i32 4, i32 6
  store ptr @dpu_hw_intf_audio_select, ptr %52, align 8
  br label %53

53:                                               ; preds = %44, %43, %7, %3
  %54 = phi ptr [ inttoptr (i32 -22 to ptr), %43 ], [ %9, %44 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_mdp_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_setup_split_pipe(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %1, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.split_pipe_cfg, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds %struct.split_pipe_cfg, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %13, label %17, label %19

17:                                               ; preds = %10
  %18 = select i1 %16, i32 18, i32 258
  br label %22

19:                                               ; preds = %10
  %20 = select i1 %16, i32 256, i32 16
  %21 = select i1 %16, i32 16, i32 256
  br label %22

22:                                               ; preds = %19, %17, %6
  %23 = phi i32 [ %18, %17 ], [ 0, %6 ], [ %20, %19 ]
  %24 = phi i32 [ %18, %17 ], [ 0, %6 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.split_pipe_cfg, ptr %1, i32 0, i32 3
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = zext i8 %26 to i32
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 40, i32 noundef %27, ptr noundef nonnull @.str) #4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 1008, i32 noundef %24, ptr noundef nonnull @.str.1) #4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 760, i32 noundef %23, ptr noundef nonnull @.str.2) #4
  %28 = load i8, ptr %1, align 4, !range !8
  %29 = zext i8 %28 to i32
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 756, i32 noundef %29, ptr noundef nonnull @.str.3) #4
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dpu_hw_setup_clk_force_ctrl(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = add i32 %1, -16
  %6 = icmp ult i32 %5, -15
  %7 = or i1 %4, %6
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.dpu_mdp_cfg, ptr %11, i32 0, i32 7, i32 %1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.dpu_mdp_cfg, ptr %11, i32 0, i32 7, i32 %1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @dpu_reg_read(ptr noundef %9, i32 noundef %13) #4
  %17 = shl nuw i32 1, %15
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = or i32 %16, %17
  %21 = select i1 %2, i32 %20, i32 %19
  tail call void @dpu_reg_write(ptr noundef %9, i32 noundef %13, i32 noundef %21, ptr noundef nonnull @.str.4) #4
  %22 = and i32 %16, %17
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i1 [ %23, %8 ], [ false, %3 ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_get_danger_status(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %63

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 1
  %8 = tail call i32 @dpu_reg_read(ptr noundef %7, i32 noundef 864) #4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 3
  store i8 %10, ptr %1, align 1
  %11 = lshr i8 %9, 4
  %12 = and i8 %11, 3
  %13 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 1
  store i8 %12, ptr %13, align 1
  %14 = lshr i8 %9, 6
  %15 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 2
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %8, 8
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 3
  %19 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 3
  store i8 %18, ptr %19, align 1
  %20 = lshr i32 %8, 10
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 3
  %23 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 4
  store i8 %22, ptr %23, align 1
  %24 = lshr i32 %8, 12
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 3
  %27 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 5
  store i8 %26, ptr %27, align 1
  %28 = lshr i32 %8, 14
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 3
  %31 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 6
  store i8 %30, ptr %31, align 1
  %32 = lshr i32 %8, 16
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 3
  %35 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 7
  store i8 %34, ptr %35, align 1
  %36 = lshr i32 %8, 18
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 3
  %39 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 8
  store i8 %38, ptr %39, align 1
  %40 = lshr i32 %8, 20
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 3
  %43 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 9
  store i8 %42, ptr %43, align 1
  %44 = lshr i32 %8, 22
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 3
  %47 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 10
  store i8 %46, ptr %47, align 1
  %48 = lshr i32 %8, 28
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 3
  %51 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 11
  store i8 %50, ptr %51, align 1
  %52 = lshr i32 %8, 30
  %53 = trunc i32 %52 to i8
  %54 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 12
  store i8 %53, ptr %54, align 1
  %55 = lshr i32 %8, 24
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 3
  %58 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 13
  store i8 %57, ptr %58, align 1
  %59 = lshr i32 %8, 26
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 3
  %62 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 14
  store i8 %61, ptr %62, align 1
  br label %63

63:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_setup_vsync_source(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %63

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = icmp ugt i32 %7, 8
  br i1 %8, label %63, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 1
  %11 = tail call i32 @dpu_reg_read(ptr noundef %10, i32 noundef 1044) #4
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %1, i32 0, i32 3
  br label %16

16:                                               ; preds = %33, %14
  %17 = phi i32 [ 0, %14 ], [ %35, %33 ]
  %18 = phi i32 [ %11, %14 ], [ %34, %33 ]
  %19 = getelementptr %struct.dpu_vsync_source_cfg, ptr %1, i32 0, i32 2, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp ugt i32 %21, 7
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = getelementptr [8 x i32], ptr @dpu_hw_setup_vsync_source.pp_offset, i32 0, i32 %21
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 15, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %18, %27
  %29 = load i32, ptr %15, align 4
  %30 = and i32 %29, 15
  %31 = shl i32 %30, %25
  %32 = or i32 %31, %28
  br label %33

33:                                               ; preds = %23, %16
  %34 = phi i32 [ %32, %23 ], [ %18, %16 ]
  %35 = add nuw i32 %17, 1
  %36 = icmp eq i32 %35, %12
  br i1 %36, label %37, label %16

37:                                               ; preds = %33, %9
  %38 = phi i32 [ %11, %9 ], [ %34, %33 ]
  tail call void @dpu_reg_write(ptr noundef %10, i32 noundef 1044, i32 noundef %38, ptr noundef nonnull @.str.5) #4
  %39 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -11
  %42 = icmp ult i32 %41, 5
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = add i32 %40, -11
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_setup_vsync_source, i32 0, i32 %44
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_setup_vsync_source.10, i32 0, i32 %44
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_setup_vsync_source.11, i32 0, i32 %44
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %46, %43
  %54 = phi i32 [ %48, %46 ], [ 904, %43 ]
  %55 = phi i32 [ %50, %46 ], [ 896, %43 ]
  %56 = phi i32 [ %52, %46 ], [ 900, %43 ]
  %57 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 4
  %60 = udiv i32 19200000, %59
  tail call void @dpu_reg_write(ptr noundef %10, i32 noundef %54, i32 noundef %60, ptr noundef nonnull @.str.6) #4
  tail call void @dpu_reg_write(ptr noundef %10, i32 noundef %55, i32 noundef 1, ptr noundef nonnull @.str.7) #4
  %61 = tail call i32 @dpu_reg_read(ptr noundef %10, i32 noundef %56) #4
  %62 = or i32 %61, 257
  tail call void @dpu_reg_write(ptr noundef %10, i32 noundef %56, i32 noundef %62, ptr noundef nonnull @.str.8) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  br label %63

63:                                               ; preds = %53, %37, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_get_safe_status(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 1
  %8 = tail call i32 @dpu_reg_read(ptr noundef %7, i32 noundef 868) #4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, ptr %1, align 1
  %11 = lshr i8 %9, 4
  %12 = and i8 %11, 1
  %13 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 1
  store i8 %12, ptr %13, align 1
  %14 = lshr i8 %9, 6
  %15 = and i8 %14, 1
  %16 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 2
  store i8 %15, ptr %16, align 1
  %17 = lshr i32 %8, 8
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 3
  store i8 %19, ptr %20, align 1
  %21 = lshr i32 %8, 10
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 4
  store i8 %23, ptr %24, align 1
  %25 = lshr i32 %8, 12
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 5
  store i8 %27, ptr %28, align 1
  %29 = lshr i32 %8, 14
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 6
  store i8 %31, ptr %32, align 1
  %33 = lshr i32 %8, 16
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 7
  store i8 %35, ptr %36, align 1
  %37 = lshr i32 %8, 18
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 8
  store i8 %39, ptr %40, align 1
  %41 = lshr i32 %8, 20
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 9
  store i8 %43, ptr %44, align 1
  %45 = lshr i32 %8, 22
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 10
  store i8 %47, ptr %48, align 1
  %49 = lshr i32 %8, 28
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 11
  store i8 %51, ptr %52, align 1
  %53 = lshr i32 %8, 30
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 12
  store i8 %55, ptr %56, align 1
  %57 = lshr i32 %8, 24
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 13
  store i8 %59, ptr %60, align 1
  %61 = lshr i32 %8, 26
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = getelementptr %struct.dpu_danger_safe_status, ptr %1, i32 0, i32 1, i32 14
  store i8 %63, ptr %64, align 1
  br label %65

65:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_intf_audio_select(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 1032, i32 noundef 1, ptr noundef nonnull @.str.9) #4
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
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
!9 = !{i64 2155726355}
