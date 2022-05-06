; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_pingpong.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_hw_tear_check = type { i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_hw_pp_vsync_info = type { i32, i32, i32, i32 }
%struct.dpu_pingpong_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_hw_dither_cfg = type { i64, i32, i32, i32, i32, i32, [16 x i32] }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [21 x i8] c"PP_SYNC_CONFIG_VSYNC\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"PP_SYNC_CONFIG_HEIGHT\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"PP_VSYNC_INIT_VAL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PP_RD_PTR_IRQ\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"PP_START_POS\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"PP_SYNC_THRESH\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PP_SYNC_WRCOUNT\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"PP_TEAR_CHECK_EN\00", align 1
@__tracepoint_dpu_pp_connect_ext_te = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"PP_AUTOREFRESH_CONFIG\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"base + PP_DITHER_EN\00", align 1
@dither_depth_map = internal unnamed_addr constant [9 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2], align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"base + PP_DITHER_BITDEPTH\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"base + PP_DITHER_MATRIX + i\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_pingpong_init(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 72) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %18 = getelementptr %struct.dpu_pingpong_cfg, ptr %15, i32 %17, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = add nuw i32 %17, 1
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %38, label %16

24:                                               ; preds = %16
  store ptr %1, ptr %9, align 8
  %25 = getelementptr %struct.dpu_pingpong_cfg, ptr %15, i32 %17, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr %struct.dpu_pingpong_cfg, ptr %15, i32 %17, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 1, i32 2
  store i32 %29, ptr %30, align 8
  %31 = load i32, ptr %2, align 4
  %32 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 1, i32 4
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 1, i32 5
  store i32 16, ptr %33, align 4
  %34 = getelementptr %struct.dpu_pingpong_cfg, ptr %15, i32 %17
  %35 = icmp eq ptr %34, null
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24, %21, %8
  tail call void @kfree(ptr noundef nonnull %6) #6
  br label %58

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 2
  store i32 %0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 3
  store ptr %34, ptr %41, align 4
  %42 = getelementptr %struct.dpu_pingpong_cfg, ptr %15, i32 %17, i32 4
  %43 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %43, ptr %4, align 4
  %44 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5
  store ptr @dpu_hw_pp_setup_te_config, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 1
  store ptr @dpu_hw_pp_enable_te, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 2
  store ptr @dpu_hw_pp_connect_external_te, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 3
  store ptr @dpu_hw_pp_get_vsync_info, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 4
  store ptr @dpu_hw_pp_setup_autorefresh_config, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 5
  store ptr @dpu_hw_pp_get_autorefresh_config, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 6
  store ptr @dpu_hw_pp_poll_timeout_wr_ptr, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 7
  store ptr @dpu_hw_pp_get_line_count, ptr %51, align 8
  %52 = load volatile i32, ptr %4, align 4
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %6, i32 0, i32 5, i32 8
  store ptr @dpu_hw_pp_setup_dither, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %58

58:                                               ; preds = %57, %38, %3
  %59 = phi ptr [ inttoptr (i32 -22 to ptr), %38 ], [ %6, %57 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_pingpong_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_setup_te_config(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 524288, i32 1572864
  %12 = load i32, ptr %1, align 4
  %13 = or i32 %11, %12
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 4, i32 noundef %13, ptr noundef nonnull @.str) #6
  %14 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 8, i32 noundef %15, ptr noundef nonnull @.str.1) #6
  %16 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 16, i32 noundef %17, ptr noundef nonnull @.str.2) #6
  %18 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 32, i32 noundef %19, ptr noundef nonnull @.str.3) #6
  %20 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 28, i32 noundef %21, ptr noundef nonnull @.str.4) #6
  %22 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 16
  %25 = getelementptr inbounds %struct.dpu_hw_tear_check, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %24, %26
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 24, i32 noundef %27, ptr noundef nonnull @.str.5) #6
  %28 = load i32, ptr %20, align 4
  %29 = load i32, ptr %25, align 4
  %30 = add i32 %28, 1
  %31 = add i32 %30, %29
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 12, i32 noundef %31, ptr noundef nonnull @.str.6) #6
  br label %32

32:                                               ; preds = %6, %2
  %33 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_enable_te(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %6 = zext i1 %1 to i32
  tail call void @dpu_reg_write(ptr noundef %5, i32 noundef 0, i32 noundef %6, ptr noundef nonnull @.str.7) #6
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_connect_external_te(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %6 = tail call i32 @dpu_reg_read(ptr noundef %5, i32 noundef 4) #6
  %7 = lshr i32 %6, 20
  %8 = and i32 %7, 1
  %9 = and i32 %6, -1048577
  %10 = select i1 %1, i32 1048576, i32 0
  %11 = or i32 %9, %10
  tail call void @dpu_reg_write(ptr noundef %5, i32 noundef 4, i32 noundef %11, ptr noundef nonnull @.str) #6
  %12 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_pp_connect_ext_te, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = tail call ptr @llvm.thread.pointer() #6
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %29 = tail call i32 @__traceiter_dpu_pp_connect_ext_te(ptr noundef null, i32 noundef %14, i32 noundef %11) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  br label %30

30:                                               ; preds = %28, %17, %4, %2
  %31 = phi i32 [ -22, %2 ], [ %8, %4 ], [ %8, %17 ], [ %8, %28 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_get_vsync_info(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %8 = tail call i32 @dpu_reg_read(ptr noundef %7, i32 noundef 16) #6
  %9 = and i32 %8, 65535
  store i32 %9, ptr %1, align 4
  %10 = tail call i32 @dpu_reg_read(ptr noundef %7, i32 noundef 20) #6
  %11 = lshr i32 %10, 16
  %12 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = and i32 %10, 65535
  %14 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = tail call i32 @dpu_reg_read(ptr noundef %7, i32 noundef 44) #6
  %16 = and i32 %15, 65535
  %17 = getelementptr inbounds %struct.dpu_hw_pp_vsync_info, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %6, %2
  %19 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_pp_setup_autorefresh_config(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %5 = or i32 %1, -2147483648
  %6 = select i1 %2, i32 %5, i32 0
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 48, i32 noundef %6, ptr noundef nonnull @.str.9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dpu_hw_pp_get_autorefresh_config(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %4 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 48) #6
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = and i32 %4, 65535
  store i32 %7, ptr %1, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp slt i32 %4, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_poll_timeout_wr_ptr(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %6 = zext i32 %1 to i64
  %7 = tail call i64 @ktime_get() #6
  %8 = mul nuw nsw i64 %6, 1000
  %9 = add i64 %7, %8
  %10 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %5, align 4
  %12 = load i32, ptr %10, align 4
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 44
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = icmp eq i32 %1, 0
  br label %20

20:                                               ; preds = %24, %18
  br i1 %19, label %24, label %21

21:                                               ; preds = %20
  %22 = tail call i64 @ktime_get() #6
  %23 = icmp sgt i64 %22, %9
  br i1 %23, label %32, label %24

24:                                               ; preds = %21, %20
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %25 = load ptr, ptr %5, align 4
  %26 = load i32, ptr %10, align 4
  %27 = getelementptr i8, ptr %25, i32 44
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %20, label %41

32:                                               ; preds = %21
  %33 = load ptr, ptr %5, align 4
  %34 = load i32, ptr %10, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = getelementptr i8, ptr %35, i32 44
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 -110, i32 0
  br label %41

41:                                               ; preds = %32, %24, %4, %2
  %42 = phi i32 [ -22, %2 ], [ 0, %4 ], [ %40, %32 ], [ 0, %24 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_pp_get_line_count(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 16) #6
  %6 = and i32 %5, 65535
  %7 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 8) #6
  %8 = and i32 %7, 65535
  %9 = icmp ult i32 %8, %6
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 20) #6
  %12 = and i32 %11, 65535
  %13 = icmp ult i32 %12, %6
  %14 = xor i32 %6, 65535
  %15 = sub nsw i32 0, %6
  %16 = select i1 %13, i32 %14, i32 %15
  %17 = add nsw i32 %16, %12
  br label %18

18:                                               ; preds = %10, %3, %1
  %19 = phi i32 [ %17, %10 ], [ 0, %1 ], [ 65535, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_pp_setup_dither(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpu_pingpong_cfg, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dpu_pingpong_sub_blks, ptr %7, i32 0, i32 2, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %120, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = shl i32 %20, 2
  %22 = and i32 %21, 12
  %23 = or i32 %22, %16
  %24 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 4
  %29 = and i32 %28, 48
  %30 = or i32 %23, %29
  %31 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr [9 x i32], ptr @dither_depth_map, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 6
  %36 = and i32 %35, 192
  %37 = or i32 %30, %36
  %38 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 256
  %42 = or i32 %37, %41
  %43 = add i32 %9, 4
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef %43, i32 noundef %42, ptr noundef nonnull @.str.11) #6
  %44 = add i32 %9, 8
  %45 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 0
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 15
  %48 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 4
  %51 = and i32 %50, 240
  %52 = or i32 %51, %47
  %53 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 8
  %56 = and i32 %55, 3840
  %57 = or i32 %52, %56
  %58 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 12
  %61 = and i32 %60, 61440
  %62 = or i32 %57, %61
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef %44, i32 noundef %62, ptr noundef nonnull @.str.12) #6
  %63 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 15
  %66 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = shl i32 %67, 4
  %69 = and i32 %68, 240
  %70 = or i32 %69, %65
  %71 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %72, 8
  %74 = and i32 %73, 3840
  %75 = or i32 %70, %74
  %76 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %77, 12
  %79 = and i32 %78, 61440
  %80 = or i32 %75, %79
  %81 = add i32 %9, 12
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef %81, i32 noundef %80, ptr noundef nonnull @.str.12) #6
  %82 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 15
  %85 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 9
  %86 = load i32, ptr %85, align 4
  %87 = shl i32 %86, 4
  %88 = and i32 %87, 240
  %89 = or i32 %88, %84
  %90 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = shl i32 %91, 8
  %93 = and i32 %92, 3840
  %94 = or i32 %89, %93
  %95 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 11
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 12
  %98 = and i32 %97, 61440
  %99 = or i32 %94, %98
  %100 = add i32 %9, 16
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef %100, i32 noundef %99, ptr noundef nonnull @.str.12) #6
  %101 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 12
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 15
  %104 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 13
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %105, 4
  %107 = and i32 %106, 240
  %108 = or i32 %107, %103
  %109 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 14
  %110 = load i32, ptr %109, align 4
  %111 = shl i32 %110, 8
  %112 = and i32 %111, 3840
  %113 = or i32 %108, %112
  %114 = getelementptr %struct.dpu_hw_dither_cfg, ptr %1, i32 0, i32 6, i32 15
  %115 = load i32, ptr %114, align 4
  %116 = shl i32 %115, 12
  %117 = and i32 %116, 61440
  %118 = or i32 %113, %117
  %119 = add i32 %9, 20
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef %119, i32 noundef %118, ptr noundef nonnull @.str.12) #6
  br label %120

120:                                              ; preds = %11, %2
  %121 = phi i32 [ 1, %11 ], [ 0, %2 ]
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef %9, i32 noundef %121, ptr noundef nonnull @.str.10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_pp_connect_ext_te(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
!8 = !{i64 2156726731}
!9 = !{i64 2156726899}
!10 = !{i64 2396546}
!11 = !{i64 2156866990}
!12 = !{i64 2156867369}
