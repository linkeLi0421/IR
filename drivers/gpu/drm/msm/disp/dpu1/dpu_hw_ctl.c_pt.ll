; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_ctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_hw_stage_cfg = type { [12 x [2 x i32]], [12 x [2 x i32]] }

@.str = private unnamed_addr constant [34 x i8] c"\013failed to create dpu_hw_ctl %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CTL_MERGE_3D_FLUSH\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CTL_INTF_FLUSH\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CTL_FLUSH\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CTL_TOP\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CTL_INTF_ACTIVE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"CTL_MERGE_3D_ACTIVE\00", align 1
@__tracepoint_dpu_hw_ctl_trigger_pending_flush = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"\013unknown interface type %d\0A\00", align 1
@__tracepoint_dpu_hw_ctl_clear_pending_flush = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_hw_ctl_update_pending_flush = external dso_local global %struct.tracepoint, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"CTL_START\00", align 1
@__tracepoint_dpu_hw_ctl_trigger_start = external dso_local global %struct.tracepoint, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"CTL_PREPARE\00", align 1
@__tracepoint_dpu_hw_ctl_trigger_prepare = external dso_local global %struct.tracepoint, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"CTL_SW_RESET\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"\013hw recovery is not complete for ctl:%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"CTL_LAYER(mixer_id)\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"CTL_LAYER_EXT(mixer_id)\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"CTL_LAYER_EXT2(mixer_id)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"CTL_LAYER_EXT3(mixer_id)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"CTL_FETCH_PIPE_ACTIVE\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"CTL_LAYER(lm)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"CTL_LAYER_EXT(lm)\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"CTL_LAYER_EXT2(lm)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"CTL_LAYER_EXT3(lm)\00", align 1
@fetch_tbl = internal unnamed_addr constant [15 x i32] [i32 65535, i32 16, i32 17, i32 18, i32 19, i32 65535, i32 65535, i32 65535, i32 65535, i32 0, i32 1, i32 2, i32 3, i32 65535, i32 65535], align 4
@switch.table.dpu_hw_ctl_update_pending_flush_intf = private unnamed_addr constant [4 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456], align 4
@switch.table.dpu_hw_ctl_get_bitmask_sspp = private unnamed_addr constant [14 x i32] [i32 1, i32 2, i32 4, i32 262144, i32 8, i32 16, i32 32, i32 524288, i32 2048, i32 4096, i32 16777216, i32 33554432, i32 4194304, i32 8388608], align 4
@switch.table.dpu_hw_ctl_get_bitmask_mixer = private unnamed_addr constant [6 x i32] [i32 131136, i32 131200, i32 131328, i32 131584, i32 132096, i32 1179648], align 4
@switch.table.dpu_hw_ctl_get_bitmask_dspp = private unnamed_addr constant [4 x i32] [i32 8192, i32 16384, i32 32768, i32 2097152], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_ctl_init(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 124) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr %struct.dpu_ctl_cfg, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %37, label %15

23:                                               ; preds = %15
  store ptr %1, ptr %8, align 8
  %24 = getelementptr %struct.dpu_ctl_cfg, ptr %14, i32 %16, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.dpu_ctl_cfg, ptr %14, i32 %16, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 1, i32 2
  store i32 %28, ptr %29, align 8
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 1, i32 4
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 1, i32 5
  store i32 8, ptr %32, align 4
  %33 = getelementptr %struct.dpu_ctl_cfg, ptr %14, i32 %16
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23, %20, %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #11
  br label %79

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 3
  store ptr %33, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9
  %42 = getelementptr %struct.dpu_ctl_cfg, ptr %14, i32 %16, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 6
  store ptr @dpu_hw_ctl_update_pending_flush_merge_3d_v1, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi ptr [ @dpu_hw_ctl_trigger_flush_v1, %46 ], [ @dpu_hw_ctl_trigger_flush, %39 ]
  %50 = phi ptr [ @dpu_hw_ctl_intf_cfg_v1, %46 ], [ @dpu_hw_ctl_intf_cfg, %39 ]
  %51 = phi ptr [ @dpu_hw_ctl_update_pending_flush_intf_v1, %46 ], [ @dpu_hw_ctl_update_pending_flush_intf, %39 ]
  %52 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 7
  store ptr %49, ptr %52, align 8
  %53 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 9
  store ptr %50, ptr %53, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 5
  store ptr %51, ptr %54, align 8
  %55 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 2
  store ptr @dpu_hw_ctl_clear_pending_flush, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 4
  store ptr @dpu_hw_ctl_update_pending_flush, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 3
  store ptr @dpu_hw_ctl_get_pending_flush, ptr %57, align 8
  %58 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 8
  store ptr @dpu_hw_ctl_get_flush_register, ptr %58, align 4
  store ptr @dpu_hw_ctl_trigger_start, ptr %41, align 4
  %59 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 1
  store ptr @dpu_hw_ctl_trigger_pending, ptr %59, align 8
  %60 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 10
  store ptr @dpu_hw_ctl_reset_control, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 11
  store ptr @dpu_hw_ctl_wait_reset_status, ptr %61, align 8
  %62 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 15
  store ptr @dpu_hw_ctl_clear_all_blendstages, ptr %62, align 8
  %63 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 16
  store ptr @dpu_hw_ctl_setup_blendstage, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 12
  store ptr @dpu_hw_ctl_get_bitmask_sspp, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 13
  store ptr @dpu_hw_ctl_get_bitmask_mixer, ptr %65, align 8
  %66 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 14
  store ptr @dpu_hw_ctl_get_bitmask_dspp, ptr %66, align 4
  %67 = and i32 %43, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 17
  store ptr @dpu_hw_ctl_set_fetch_pipe_active, ptr %70, align 8
  br label %71

71:                                               ; preds = %69, %48
  %72 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 2
  store i32 %0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 4
  store i32 %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 9
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 5
  store ptr %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %71, %37, %3
  %80 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ %5, %71 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_ctl_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_flush_v1(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  tail call void @dpu_reg_write(ptr noundef %7, i32 noundef 256, i32 noundef %9, ptr noundef nonnull @.str.1) #10
  %10 = load i32, ptr %2, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ %3, %1 ]
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  tail call void @dpu_reg_write(ptr noundef %15, i32 noundef 272, i32 noundef %17, ptr noundef nonnull @.str.2) #10
  %18 = load i32, ptr %2, align 4
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i32 [ %18, %14 ], [ %12, %11 ]
  %21 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %21, i32 noundef 24, i32 noundef %20, ptr noundef nonnull @.str.3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_intf_cfg_v1(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpu_ctl_cfg, ptr %5, i32 0, i32 4
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 -268435456
  %11 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = or i32 %10, 131072
  %15 = select i1 %13, i32 %14, i32 %10
  %16 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 244) #10
  %17 = load i32, ptr %1, align 4
  %18 = add i32 %17, -1
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %16
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 20, i32 noundef %15, ptr noundef nonnull @.str.4) #10
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 244, i32 noundef %20, ptr noundef nonnull @.str.5) #10
  %21 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = add i32 %22, -1
  %26 = shl nuw i32 1, %25
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 228, i32 noundef %26, ptr noundef nonnull @.str.6) #10
  br label %27

27:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush_intf_v1(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, -2147483648
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush_merge_3d_v1(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 8388608
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_flush(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 24) #10
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %20 = tail call i32 @__traceiter_dpu_hw_ctl_trigger_pending_flush(ptr noundef null, i32 noundef %3, i32 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %21

21:                                               ; preds = %19, %8, %1
  %22 = load i32, ptr %2, align 4
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 24, i32 noundef %22, ptr noundef nonnull @.str.3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_intf_cfg(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %1, align 4
  %5 = shl i32 %4, 4
  %6 = and i32 %5, 240
  %7 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = shl i32 %8, 20
  %11 = add i32 %10, -1048576
  %12 = or i32 %11, %6
  %13 = or i32 %12, 524288
  %14 = select i1 %9, i32 %6, i32 %13
  %15 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %24 [
    i32 0, label %26
    i32 1, label %17
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.dpu_hw_intf_cfg, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 15
  %21 = and i32 %20, 98304
  %22 = or i32 %14, %21
  %23 = or i32 %22, 131072
  br label %26

24:                                               ; preds = %2
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %16) #11
  br label %28

26:                                               ; preds = %17, %2
  %27 = phi i32 [ %23, %17 ], [ %14, %2 ]
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 20, i32 noundef %27, ptr noundef nonnull @.str.4) #10
  br label %28

28:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush_intf(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_ctl_update_pending_flush_intf, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_clear_pending_flush(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 24) #10
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %20 = tail call i32 @__traceiter_dpu_hw_ctl_clear_pending_flush(ptr noundef null, i32 noundef %3, i32 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %21

21:                                               ; preds = %19, %8, %1
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_update_pending_flush(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %19 = tail call i32 @__traceiter_dpu_hw_ctl_update_pending_flush(ptr noundef null, i32 noundef %1, i32 noundef %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %20 = load i32, ptr %3, align 4
  br label %21

21:                                               ; preds = %18, %7, %2
  %22 = phi i32 [ %4, %2 ], [ %4, %7 ], [ %20, %18 ]
  %23 = or i32 %22, %1
  store i32 %23, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_pending_flush(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_ctl_get_flush_register(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %3 = tail call i32 @dpu_reg_read(ptr noundef %2, i32 noundef 24) #10
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_start(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 24) #10
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_start, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %20 = tail call i32 @__traceiter_dpu_hw_ctl_trigger_start(ptr noundef null, i32 noundef %3, i32 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %21

21:                                               ; preds = %19, %8, %1
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 28, i32 noundef 1, ptr noundef nonnull @.str.9) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_trigger_pending(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %5 = tail call i32 @dpu_reg_read(ptr noundef %4, i32 noundef 24) #10
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %20 = tail call i32 @__traceiter_dpu_hw_ctl_trigger_prepare(ptr noundef null, i32 noundef %3, i32 noundef %5) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %21

21:                                               ; preds = %19, %8, %1
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 208, i32 noundef 1, ptr noundef nonnull @.str.10) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_ctl_reset_control(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %2, i32 noundef 48, i32 noundef 1, ptr noundef nonnull @.str.11) #10
  %3 = tail call i64 @ktime_get() #10
  %4 = sub i64 -2000000, %3
  br label %5

5:                                                ; preds = %9, %1
  %6 = tail call i32 @dpu_reg_read(ptr noundef %2, i32 noundef 48) #10
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #10
  %10 = tail call i64 @ktime_get() #10
  %11 = add i64 %4, %10
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ -22, %9 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_ctl_wait_reset_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %3 = tail call i32 @dpu_reg_read(ptr noundef %2, i32 noundef 48) #10
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @ktime_get() #10
  %8 = sub i64 -2000000, %7
  br label %9

9:                                                ; preds = %13, %6
  %10 = tail call i32 @dpu_reg_read(ptr noundef %2, i32 noundef 48) #10
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 50, i32 noundef 2) #10
  %14 = tail call i64 @ktime_get() #10
  %15 = add i64 %8, %14
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %9, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %19) #11
  br label %21

21:                                               ; preds = %17, %9, %1
  %22 = phi i32 [ -22, %17 ], [ 0, %1 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_clear_all_blendstages(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %20, %8 ]
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr %struct.dpu_lm_cfg, ptr %10, i32 %9, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 6
  %14 = shl i32 %12, 2
  %15 = add i32 %14, -4
  %16 = select i1 %13, i32 36, i32 %15
  tail call void @dpu_reg_write(ptr noundef %2, i32 noundef %16, i32 noundef 0, ptr noundef nonnull @.str.13) #10
  %17 = add i32 %14, 60
  tail call void @dpu_reg_write(ptr noundef %2, i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.14) #10
  %18 = add i32 %14, 108
  tail call void @dpu_reg_write(ptr noundef %2, i32 noundef %18, i32 noundef 0, ptr noundef nonnull @.str.15) #10
  %19 = add i32 %14, 156
  tail call void @dpu_reg_write(ptr noundef %2, i32 noundef %19, i32 noundef 0, ptr noundef nonnull @.str.16) #10
  %20 = add nuw nsw i32 %9, 1
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %8, label %23

23:                                               ; preds = %8, %1
  tail call void @dpu_reg_write(ptr noundef %2, i32 noundef 252, i32 noundef 0, ptr noundef nonnull @.str.17) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_setup_blendstage(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %178

10:                                               ; preds = %15, %3
  %11 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %12 = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %11, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %178, label %10

18:                                               ; preds = %10
  %19 = getelementptr %struct.dpu_lm_cfg, ptr %6, i32 %11, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %178, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %6, i32 0, i32 4
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 1, i32 2
  %30 = icmp eq ptr %2, null
  br i1 %30, label %166, label %33

31:                                               ; preds = %158
  %32 = icmp sgt i32 %39, %22
  br i1 %32, label %166, label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %39, %31 ], [ 0, %24 ]
  %35 = phi i32 [ %163, %31 ], [ 0, %24 ]
  %36 = phi i32 [ %162, %31 ], [ 0, %24 ]
  %37 = phi i32 [ %160, %31 ], [ 0, %24 ]
  %38 = phi i32 [ %159, %31 ], [ 16777216, %24 ]
  %39 = add i32 %34, 1
  %40 = and i32 %39, 7
  %41 = icmp sgt i32 %34, 6
  %42 = zext i1 %41 to i32
  %43 = shl i32 %39, 26
  %44 = and i32 %43, 1006632960
  %45 = shl i32 %39, 20
  %46 = and i32 %45, 15728640
  %47 = and i32 %39, 15
  %48 = shl i32 %39, 16
  %49 = and i32 %48, 983040
  %50 = select i1 %41, i32 262144, i32 0
  %51 = shl i32 %39, 12
  %52 = and i32 %51, 61440
  %53 = select i1 %41, i32 65536, i32 0
  %54 = shl i32 %39, 8
  %55 = and i32 %54, 3840
  %56 = select i1 %41, i32 16384, i32 0
  %57 = select i1 %41, i32 4096, i32 0
  %58 = select i1 %41, i32 1024, i32 0
  %59 = select i1 %41, i32 256, i32 0
  %60 = select i1 %41, i32 64, i32 0
  %61 = select i1 %41, i32 16, i32 0
  %62 = select i1 %41, i32 4, i32 0
  %63 = shl i32 %39, 4
  %64 = and i32 %63, 240
  br label %65

65:                                               ; preds = %158, %33
  %66 = phi i32 [ 0, %33 ], [ %164, %158 ]
  %67 = phi i32 [ %35, %33 ], [ %163, %158 ]
  %68 = phi i32 [ %36, %33 ], [ %162, %158 ]
  %69 = phi i32 [ %40, %33 ], [ %161, %158 ]
  %70 = phi i32 [ %37, %33 ], [ %160, %158 ]
  %71 = phi i32 [ %38, %33 ], [ %159, %158 ]
  %72 = getelementptr %struct.dpu_hw_stage_cfg, ptr %2, i32 0, i32 1, i32 %34, i32 %66
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr [12 x [2 x i32]], ptr %2, i32 0, i32 %34, i32 %66
  %75 = load i32, ptr %74, align 4
  switch i32 %75, label %158 [
    i32 1, label %76
    i32 2, label %83
    i32 3, label %91
    i32 4, label %99
    i32 5, label %107
    i32 6, label %111
    i32 7, label %115
    i32 8, label %119
    i32 9, label %123
    i32 10, label %131
    i32 11, label %139
    i32 12, label %146
    i32 13, label %154
    i32 14, label %156
  ]

76:                                               ; preds = %65
  %77 = icmp eq i32 %73, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = or i32 %67, %47
  br label %158

80:                                               ; preds = %76
  %81 = or i32 %69, %71
  %82 = or i32 %70, %42
  br label %158

83:                                               ; preds = %65
  %84 = icmp eq i32 %73, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %83
  %86 = or i32 %67, %64
  br label %158

87:                                               ; preds = %83
  %88 = shl i32 %69, 3
  %89 = or i32 %88, %71
  %90 = or i32 %70, %62
  br label %158

91:                                               ; preds = %65
  %92 = icmp eq i32 %73, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = or i32 %67, %55
  br label %158

95:                                               ; preds = %91
  %96 = shl i32 %69, 6
  %97 = or i32 %96, %71
  %98 = or i32 %70, %61
  br label %158

99:                                               ; preds = %65
  %100 = icmp eq i32 %73, 2
  br i1 %100, label %101, label %103

101:                                              ; preds = %99
  %102 = or i32 %67, %52
  br label %158

103:                                              ; preds = %99
  %104 = shl i32 %69, 26
  %105 = or i32 %104, %71
  %106 = or i32 %70, %60
  br label %158

107:                                              ; preds = %65
  %108 = shl i32 %69, 9
  %109 = or i32 %108, %71
  %110 = or i32 %70, %59
  br label %158

111:                                              ; preds = %65
  %112 = shl i32 %69, 12
  %113 = or i32 %112, %71
  %114 = or i32 %70, %58
  br label %158

115:                                              ; preds = %65
  %116 = shl i32 %69, 15
  %117 = or i32 %116, %71
  %118 = or i32 %70, %57
  br label %158

119:                                              ; preds = %65
  %120 = shl i32 %69, 29
  %121 = or i32 %120, %71
  %122 = or i32 %70, %56
  br label %158

123:                                              ; preds = %65
  %124 = icmp eq i32 %73, 2
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = or i32 %68, %55
  br label %158

127:                                              ; preds = %123
  %128 = shl i32 %69, 18
  %129 = or i32 %128, %71
  %130 = or i32 %70, %53
  br label %158

131:                                              ; preds = %65
  %132 = icmp eq i32 %73, 2
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = or i32 %68, %52
  br label %158

135:                                              ; preds = %131
  %136 = shl i32 %69, 21
  %137 = or i32 %136, %71
  %138 = or i32 %70, %50
  br label %158

139:                                              ; preds = %65
  %140 = icmp eq i32 %73, 2
  br i1 %140, label %141, label %143

141:                                              ; preds = %139
  %142 = or i32 %68, %49
  br label %158

143:                                              ; preds = %139
  %144 = or i32 %69, %47
  %145 = or i32 %68, %144
  br label %158

146:                                              ; preds = %65
  %147 = icmp eq i32 %73, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  %149 = or i32 %68, %46
  br label %158

150:                                              ; preds = %146
  %151 = or i32 %69, %47
  %152 = shl i32 %151, 4
  %153 = or i32 %152, %68
  br label %158

154:                                              ; preds = %65
  %155 = or i32 %70, %46
  br label %158

156:                                              ; preds = %65
  %157 = or i32 %70, %44
  br label %158

158:                                              ; preds = %156, %154, %150, %148, %143, %141, %135, %133, %127, %125, %119, %115, %111, %107, %103, %101, %95, %93, %87, %85, %80, %78, %65
  %159 = phi i32 [ %71, %65 ], [ %71, %156 ], [ %71, %154 ], [ %71, %148 ], [ %71, %150 ], [ %71, %141 ], [ %71, %143 ], [ %71, %133 ], [ %137, %135 ], [ %71, %125 ], [ %129, %127 ], [ %121, %119 ], [ %117, %115 ], [ %113, %111 ], [ %109, %107 ], [ %71, %101 ], [ %105, %103 ], [ %71, %93 ], [ %97, %95 ], [ %71, %85 ], [ %89, %87 ], [ %71, %78 ], [ %81, %80 ]
  %160 = phi i32 [ %70, %65 ], [ %157, %156 ], [ %155, %154 ], [ %70, %148 ], [ %70, %150 ], [ %70, %141 ], [ %70, %143 ], [ %70, %133 ], [ %138, %135 ], [ %70, %125 ], [ %130, %127 ], [ %122, %119 ], [ %118, %115 ], [ %114, %111 ], [ %110, %107 ], [ %70, %101 ], [ %106, %103 ], [ %70, %93 ], [ %98, %95 ], [ %70, %85 ], [ %90, %87 ], [ %70, %78 ], [ %82, %80 ]
  %161 = phi i32 [ %69, %65 ], [ %69, %156 ], [ %69, %154 ], [ %69, %148 ], [ %151, %150 ], [ %69, %141 ], [ %144, %143 ], [ %69, %133 ], [ %69, %135 ], [ %69, %125 ], [ %69, %127 ], [ %69, %119 ], [ %69, %115 ], [ %69, %111 ], [ %69, %107 ], [ %69, %101 ], [ %69, %103 ], [ %69, %93 ], [ %69, %95 ], [ %69, %85 ], [ %69, %87 ], [ %69, %78 ], [ %69, %80 ]
  %162 = phi i32 [ %68, %65 ], [ %68, %156 ], [ %68, %154 ], [ %149, %148 ], [ %153, %150 ], [ %142, %141 ], [ %145, %143 ], [ %134, %133 ], [ %68, %135 ], [ %126, %125 ], [ %68, %127 ], [ %68, %119 ], [ %68, %115 ], [ %68, %111 ], [ %68, %107 ], [ %68, %101 ], [ %68, %103 ], [ %68, %93 ], [ %68, %95 ], [ %68, %85 ], [ %68, %87 ], [ %68, %78 ], [ %68, %80 ]
  %163 = phi i32 [ %67, %65 ], [ %67, %156 ], [ %67, %154 ], [ %67, %148 ], [ %67, %150 ], [ %67, %141 ], [ %67, %143 ], [ %67, %133 ], [ %67, %135 ], [ %67, %125 ], [ %67, %127 ], [ %67, %119 ], [ %67, %115 ], [ %67, %111 ], [ %67, %107 ], [ %102, %101 ], [ %67, %103 ], [ %94, %93 ], [ %67, %95 ], [ %86, %85 ], [ %67, %87 ], [ %79, %78 ], [ %67, %80 ]
  %164 = add nuw nsw i32 %66, 1
  %165 = icmp eq i32 %164, %29
  br i1 %165, label %31, label %65

166:                                              ; preds = %31, %24
  %167 = phi i32 [ 16777216, %24 ], [ %159, %31 ]
  %168 = phi i32 [ 0, %24 ], [ %160, %31 ]
  %169 = phi i32 [ 0, %24 ], [ %162, %31 ]
  %170 = phi i32 [ 0, %24 ], [ %163, %31 ]
  %171 = icmp eq i32 %1, 6
  %172 = shl i32 %1, 2
  %173 = add i32 %172, -4
  %174 = select i1 %171, i32 36, i32 %173
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef %174, i32 noundef %167, ptr noundef nonnull @.str.18) #10
  %175 = add i32 %172, 60
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef %175, i32 noundef %168, ptr noundef nonnull @.str.19) #10
  %176 = add i32 %172, 108
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef %176, i32 noundef %169, ptr noundef nonnull @.str.20) #10
  %177 = add i32 %172, 156
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef %177, i32 noundef %170, ptr noundef nonnull @.str.21) #10
  br label %178

178:                                              ; preds = %166, %18, %15, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_bitmask_sspp(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 14
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [14 x i32], ptr @switch.table.dpu_hw_ctl_get_bitmask_sspp, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %5 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_bitmask_mixer(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 6
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [6 x i32], ptr @switch.table.dpu_hw_ctl_get_bitmask_mixer, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dpu_hw_ctl_get_bitmask_dspp(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_hw_ctl_get_bitmask_dspp, i32 0, i32 %3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_ctl_set_fetch_pipe_active(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %22, %2
  %5 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %6 = phi i32 [ %24, %22 ], [ 0, %2 ]
  %7 = lshr i32 %6, 5
  %8 = getelementptr i32, ptr %1, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = shl nuw i32 1, %6
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = lshr i32 25057, %6
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr [15 x i32], ptr @fetch_tbl, i32 0, i32 %6
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %5
  br label %22

22:                                               ; preds = %17, %13, %4
  %23 = phi i32 [ %21, %17 ], [ %5, %13 ], [ %5, %4 ]
  %24 = add nuw nsw i32 %6, 1
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %4

26:                                               ; preds = %22, %2
  %27 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %28, i32 noundef 252, i32 noundef %27, ptr noundef nonnull @.str.17) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_trigger_pending_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_clear_pending_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_update_pending_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_trigger_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_hw_ctl_trigger_prepare(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{i64 2156820431}
!9 = !{i64 2156820653}
!10 = !{i64 2156806111}
!11 = !{i64 2156806329}
!12 = !{i64 2156787762}
!13 = !{i64 2156787980}
!14 = !{i64 2156848447}
!15 = !{i64 2156848653}
!16 = !{i64 2156834615}
!17 = !{i64 2156834825}
