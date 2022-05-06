; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intf_timing_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.intf_prog_fetch = type { i8, i32 }
%struct.intf_status = type { i8, i8, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"\013failed to create dpu_hw_intf %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"INTF_CONFIG2\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"INTF_DISPLAY_DATA_HCTL\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"INTF_HSYNC_CTL\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"INTF_VSYNC_PERIOD_F0\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"INTF_VSYNC_PULSE_WIDTH_F0\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"INTF_DISPLAY_HCTL\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"INTF_DISPLAY_V_START_F0\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"INTF_DISPLAY_V_END_F0\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"INTF_ACTIVE_HCTL\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"INTF_ACTIVE_V_START_F0\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"INTF_ACTIVE_V_END_F0\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"INTF_BORDER_COLOR\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"INTF_UNDERFLOW_COLOR\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"INTF_HSYNC_SKEW\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"INTF_POLARITY_CTL\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"INTF_FRAME_LINE_COUNT_EN\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"INTF_CONFIG\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"INTF_PANEL_FORMAT\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"INTF_PROG_FETCH_START\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"INTF_TIMING_ENGINE_EN\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"INTF_MUX\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_intf_init(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 60) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %24, %12
  %16 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %17 = getelementptr %struct.dpu_intf_cfg, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr %struct.dpu_intf_cfg, ptr %14, i32 %16, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %15
  %25 = add nuw i32 %16, 1
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %41, label %15

27:                                               ; preds = %20
  store ptr %1, ptr %8, align 8
  %28 = getelementptr %struct.dpu_intf_cfg, ptr %14, i32 %16, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 1, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr %struct.dpu_intf_cfg, ptr %14, i32 %16, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 1, i32 2
  store i32 %32, ptr %33, align 8
  %34 = load i32, ptr %2, align 4
  %35 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 1, i32 4
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 1, i32 5
  store i32 2, ptr %36, align 4
  %37 = getelementptr %struct.dpu_intf_cfg, ptr %14, i32 %16
  %38 = icmp eq ptr %37, null
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %27, %24, %7
  tail call void @kfree(ptr noundef nonnull %5) #5
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #6
  br label %58

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 2
  store i32 %0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 3
  store ptr %37, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 4
  store ptr %2, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5
  %48 = getelementptr %struct.dpu_intf_cfg, ptr %14, i32 %16, i32 4
  %49 = load i32, ptr %48, align 4
  store ptr @dpu_hw_intf_setup_timing_engine, ptr %47, align 4
  %50 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5, i32 1
  store ptr @dpu_hw_intf_setup_prg_fetch, ptr %50, align 8
  %51 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5, i32 3
  store ptr @dpu_hw_intf_get_status, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5, i32 2
  store ptr @dpu_hw_intf_enable_timing_engine, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5, i32 4
  store ptr @dpu_hw_intf_get_line_count, ptr %53, align 4
  %54 = and i32 %49, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.dpu_hw_intf, ptr %5, i32 0, i32 5, i32 5
  store ptr @dpu_hw_intf_bind_pingpong_blk, ptr %57, align 8
  br label %58

58:                                               ; preds = %56, %43, %41, %3
  %59 = phi ptr [ inttoptr (i32 -22 to ptr), %41 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %5, %43 ], [ %5, %56 ]
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_intf_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_intf_setup_timing_engine(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 4) #5
  %6 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = load i32, ptr %1, align 4
  %12 = add i32 %10, %11
  %13 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  %16 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %20, %15
  %26 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 14
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %11, %30
  %32 = add i32 %30, %10
  %33 = add i32 %32, -1
  %34 = select i1 %31, i32 0, i32 %33
  %35 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %22, %36
  %38 = mul i32 %36, %15
  %39 = add i32 %28, -1
  %40 = add i32 %39, %38
  %41 = select i1 %37, i32 0, i32 %40
  %42 = icmp eq i32 %34, 0
  %43 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %58, label %48

48:                                               ; preds = %3
  %49 = shl i32 %34, 16
  %50 = select i1 %31, i32 0, i32 %10
  %51 = or i32 %49, %50
  %52 = select i1 %42, i32 0, i32 %51
  %53 = select i1 %37, i32 0, i32 %28
  %54 = shl i32 %12, 16
  %55 = add i32 %54, -65536
  %56 = or i32 %55, %10
  %57 = icmp eq i32 %46, 10
  br i1 %57, label %58, label %63

58:                                               ; preds = %48, %3
  %59 = add i32 %28, %10
  %60 = shl i32 %32, 16
  %61 = add i32 %60, -65536
  %62 = or i32 %61, %10
  br label %63

63:                                               ; preds = %58, %48
  %64 = phi i32 [ %59, %58 ], [ %28, %48 ]
  %65 = phi i32 [ %28, %58 ], [ %53, %48 ]
  %66 = phi i32 [ %40, %58 ], [ %41, %48 ]
  %67 = phi i32 [ %62, %58 ], [ %52, %48 ]
  %68 = phi i32 [ %62, %58 ], [ %56, %48 ]
  switch i32 %46, label %77 [
    i32 3, label %69
    i32 10, label %72
  ]

69:                                               ; preds = %63
  %70 = icmp ult i32 %36, 720
  %71 = zext i1 %70 to i32
  br label %77

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 10
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %72, %69, %63
  %78 = phi i32 [ %71, %69 ], [ %74, %72 ], [ 0, %63 ]
  %79 = phi i32 [ %71, %69 ], [ %76, %72 ], [ 0, %63 ]
  %80 = getelementptr inbounds %struct.dpu_format, ptr %2, i32 0, i32 12
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.dpu_format, ptr %2, i32 0, i32 3
  %86 = load i8, ptr %85, align 4
  %87 = zext i8 %86 to i32
  %88 = getelementptr %struct.dpu_format, ptr %2, i32 0, i32 3, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 2
  %92 = getelementptr %struct.dpu_format, ptr %2, i32 0, i32 3, i32 2
  %93 = load i8, ptr %92, align 2
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 4
  %96 = or i32 %91, %87
  %97 = or i32 %96, %95
  %98 = or i32 %97, 8448
  br label %99

99:                                               ; preds = %84, %77
  %100 = phi i32 [ %98, %84 ], [ 8511, %77 ]
  %101 = getelementptr inbounds %struct.dpu_intf_cfg, ptr %44, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 96, i32 noundef 16, ptr noundef nonnull @.str.1) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 100, i32 noundef %68, ptr noundef nonnull @.str.2) #5
  br label %106

106:                                              ; preds = %105, %99
  %107 = icmp eq i32 %41, 0
  %108 = or i32 %5, 536870912
  %109 = select i1 %42, i32 %5, i32 %108
  %110 = or i32 %109, 1073741824
  %111 = select i1 %107, i32 %109, i32 %110
  %112 = shl i32 %79, 1
  %113 = or i32 %112, %78
  %114 = shl i32 %15, 16
  %115 = or i32 %114, %7
  %116 = add i32 %20, %22
  %117 = mul i32 %116, %15
  %118 = add i32 %27, -1
  %119 = add i32 %118, %117
  %120 = add i32 %116, %24
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 8, i32 noundef %115, ptr noundef nonnull @.str.3) #5
  %121 = mul i32 %120, %15
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 12, i32 noundef %121, ptr noundef nonnull @.str.4) #5
  %122 = load i32, ptr %16, align 4
  %123 = mul i32 %122, %15
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 20, i32 noundef %123, ptr noundef nonnull @.str.5) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 60, i32 noundef %68, ptr noundef nonnull @.str.6) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 28, i32 noundef %64, ptr noundef nonnull @.str.7) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 36, i32 noundef %119, ptr noundef nonnull @.str.8) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 64, i32 noundef %67, ptr noundef nonnull @.str.9) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 44, i32 noundef %65, ptr noundef nonnull @.str.10) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 52, i32 noundef %66, ptr noundef nonnull @.str.11) #5
  %124 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 12
  %125 = load i32, ptr %124, align 4
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 68, i32 noundef %125, ptr noundef nonnull @.str.12) #5
  %126 = getelementptr inbounds %struct.intf_timing_params, ptr %1, i32 0, i32 13
  %127 = load i32, ptr %126, align 4
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 72, i32 noundef %127, ptr noundef nonnull @.str.13) #5
  %128 = load i32, ptr %26, align 4
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 76, i32 noundef %128, ptr noundef nonnull @.str.14) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 80, i32 noundef %113, ptr noundef nonnull @.str.15) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 168, i32 noundef 3, ptr noundef nonnull @.str.16) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 4, i32 noundef %111, ptr noundef nonnull @.str.17) #5
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 144, i32 noundef %100, ptr noundef nonnull @.str.18) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_intf_setup_prg_fetch(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 1
  %4 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 4) #5
  %5 = load i8, ptr %1, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = or i32 %4, -2147483648
  %9 = getelementptr inbounds %struct.intf_prog_fetch, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 368, i32 noundef %10, ptr noundef nonnull @.str.19) #5
  br label %13

11:                                               ; preds = %2
  %12 = and i32 %4, 2147483647
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 4, i32 noundef %14, ptr noundef nonnull @.str.17) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_intf_get_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 1
  %4 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 0) #5
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %1, align 4
  %6 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 4) #5
  %7 = lshr i32 %6, 31
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.intf_status, ptr %1, i32 0, i32 1
  store i8 %8, ptr %9, align 1
  %10 = load i8, ptr %1, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 172) #5
  %14 = getelementptr inbounds %struct.intf_status, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 176) #5
  br label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.intf_status, ptr %1, i32 0, i32 2
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ 0, %16 ], [ %15, %12 ]
  %20 = getelementptr inbounds %struct.intf_status, ptr %1, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_intf_enable_timing_engine(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 1
  %4 = icmp ne i8 %1, 0
  %5 = zext i1 %4 to i32
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 0, i32 noundef %5, ptr noundef nonnull @.str.20) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_intf_get_line_count(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 176) #5
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_intf_bind_pingpong_blk(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dpu_hw_intf, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 604) #5
  br i1 %1, label %6, label %11

6:                                                ; preds = %3
  %7 = and i32 %5, -16
  %8 = add i32 %2, 7
  %9 = and i32 %8, 7
  %10 = or i32 %7, %9
  br label %13

11:                                               ; preds = %3
  %12 = or i32 %5, 15
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %10, %6 ], [ %12, %11 ]
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 604, i32 noundef %14, ptr noundef nonnull @.str.21) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
