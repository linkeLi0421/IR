; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_rm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_merge_3d_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_global_state = type { %struct.drm_private_state, [7 x i32], [7 x i32], [6 x i32], [7 x i32], [4 x i32] }
%struct.drm_private_state = type { ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dpu_rm_requirements = type { %struct.msm_display_topology, %struct.dpu_encoder_hw_resources }
%struct.msm_display_topology = type { i32, i32, i32, i32 }
%struct.dpu_encoder_hw_resources = type { [8 x i32] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, ptr, %struct.dpu_hw_lm_ops, %struct.dpu_hw_mixer_cfg }
%struct.dpu_hw_lm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mixer_cfg = type { i32, i32, i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"\013[drm:%s] [dpu error]invalid kms\0A\00", align 1
@__func__.dpu_rm_init = private unnamed_addr constant [12 x i8] c"dpu_rm_init\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"skip mixer %d without pingpong\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\013[drm:%s] [dpu error]skip mixer %d with invalid id\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\013[drm:%s] [dpu error]failed lm object creation: err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\013[drm:%s] [dpu error]unsupported: lm maxwidth differs\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\013[drm:%s] [dpu error]skip merge_3d %d with invalid id\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\013[drm:%s] [dpu error]failed merge_3d object creation: err %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\013[drm:%s] [dpu error]skip pingpong %d with invalid id\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"\013[drm:%s] [dpu error]failed pingpong object creation: err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"skip intf %d with type none\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"\013[drm:%s] [dpu error]skip intf %d with invalid id\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"\013[drm:%s] [dpu error]failed intf object creation: err %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"\013[drm:%s] [dpu error]skip ctl %d with invalid id\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"\013[drm:%s] [dpu error]failed ctl object creation: err %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"\013[drm:%s] [dpu error]skip dspp %d with invalid id\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"\013[drm:%s] [dpu error]failed dspp object creation: err %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"\013[drm:%s] [dpu error]failed to global state\0A\00", align 1
@__func__.dpu_rm_reserve = private unnamed_addr constant [15 x i8] c"dpu_rm_reserve\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"reserving hw for enc %d crtc %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"\013[drm:%s] [dpu error]failed to reserve hw resources: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\013[drm:%s] [dpu error]blk type %d not managed by rm\0A\00", align 1
@__func__.dpu_rm_get_assigned_resources = private unnamed_addr constant [30 x i8] c"dpu_rm_get_assigned_resources\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"\013[drm:%s] [dpu error]More than %d resources assigned to enc %d\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [37 x i8] c"num_lm: %d num_enc: %d num_intf: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"\013[drm:%s] [dpu error]unable to find appropriate mixers\0A\00", align 1
@__func__._dpu_rm_make_reservation = private unnamed_addr constant [25 x i8] c"_dpu_rm_make_reservation\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"\013[drm:%s] [dpu error]unable to find appropriate CTL\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"\013[drm:%s] [dpu error]invalid number of lm: %d\0A\00", align 1
@__func__._dpu_rm_reserve_lms = private unnamed_addr constant [20 x i8] c"_dpu_rm_reserve_lms\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"lm %d not peer of lm %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"unable to find appropriate mixers\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"lm %d already reserved\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"\013[drm:%s] [dpu error]failed to get pp on lm %d\0A\00", align 1
@__func__._dpu_rm_check_lm_and_get_connected_blks = private unnamed_addr constant [40 x i8] c"_dpu_rm_check_lm_and_get_connected_blks\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"lm %d pp %d already reserved\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"\013[drm:%s] [dpu error]failed to get dspp on lm %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"lm %d dspp %d already reserved\0A\00", align 1
@__tracepoint_dpu_rm_reserve_lms = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.34 = private unnamed_addr constant [19 x i8] c"ctl %d caps 0x%lX\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ctl %d match\0A\00", align 1
@__tracepoint_dpu_rm_reserve_ctls = external dso_local global %struct.tracepoint, align 4
@.str.36 = private unnamed_addr constant [42 x i8] c"\013[drm:%s] [dpu error]invalid intf id: %d\00", align 1
@__func__._dpu_rm_reserve_intf = private unnamed_addr constant [21 x i8] c"_dpu_rm_reserve_intf\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"\013[drm:%s] [dpu error]couldn't find intf id %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"\013[drm:%s] [dpu error]intf id %d already reserved\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_destroy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %2) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr [7 x ptr], ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %7) #8
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr [7 x ptr], ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %12) #8
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr [7 x ptr], ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %17) #8
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr [7 x ptr], ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %22) #8
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr [7 x ptr], ptr %0, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %27) #8
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr [7 x ptr], ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @dpu_hw_pingpong_destroy(ptr noundef nonnull %32) #8
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 5, i32 0
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @dpu_hw_merge_3d_destroy(ptr noundef nonnull %37) #8
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 5, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @dpu_hw_merge_3d_destroy(ptr noundef nonnull %42) #8
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 5, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @dpu_hw_merge_3d_destroy(ptr noundef nonnull %47) #8
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 0
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %52) #8
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %57) #8
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %62) #8
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %67) #8
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %72) #8
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %77) #8
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @dpu_hw_lm_destroy(ptr noundef nonnull %82) #8
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 0
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %87) #8
  br label %90

90:                                               ; preds = %89, %85
  %91 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %92) #8
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %97) #8
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %102) #8
  br label %105

105:                                              ; preds = %104, %100
  %106 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %107) #8
  br label %110

110:                                              ; preds = %109, %105
  %111 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @dpu_hw_ctl_destroy(ptr noundef nonnull %112) #8
  br label %115

115:                                              ; preds = %114, %110
  %116 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 0
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %117) #8
  br label %120

120:                                              ; preds = %119, %115
  %121 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %122) #8
  br label %125

125:                                              ; preds = %124, %120
  %126 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %127) #8
  br label %130

130:                                              ; preds = %129, %125
  %131 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %132) #8
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %137) #8
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %142) #8
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 6
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  tail call void @dpu_hw_intf_destroy(ptr noundef nonnull %147) #8
  br label %150

150:                                              ; preds = %149, %145
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_pingpong_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_merge_3d_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_lm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_ctl_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_intf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_rm_init) #9
  br label %247

11:                                               ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %0, i8 0, i32 140, i1 false)
  %12 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 9
  %17 = getelementptr inbounds %struct.dpu_rm, ptr %0, i32 0, i32 6
  br label %24

18:                                               ; preds = %71, %11
  %19 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 13
  br label %81

24:                                               ; preds = %71, %15
  %25 = phi i32 [ 0, %15 ], [ %72, %71 ]
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr %struct.dpu_lm_cfg, ptr %26, i32 %25, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, ptr @__drm_debug, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.dpu_lm_cfg, ptr %26, i32 %25, i32 1
  %36 = load i32, ptr %35, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %36) #8
  br label %71

37:                                               ; preds = %24
  %38 = getelementptr %struct.dpu_lm_cfg, ptr %26, i32 %25, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -8
  %41 = icmp ult i32 %40, -7
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %39) #9
  br label %71

44:                                               ; preds = %37
  %45 = tail call ptr @dpu_hw_lm_init(i32 noundef %39, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %46 = icmp eq ptr %45, null
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %48 = or i1 %46, %47
  br i1 %48, label %68, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr %38, align 4
  %51 = add i32 %50, -1
  %52 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 %51
  store ptr %45, ptr %52, align 4
  %53 = load i32, ptr %17, align 4
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr %struct.dpu_lm_cfg, ptr %26, i32 %25, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  br i1 %54, label %58, label %59

58:                                               ; preds = %49
  store i32 %57, ptr %17, align 4
  br label %71

59:                                               ; preds = %49
  %60 = icmp eq i32 %53, %57
  br i1 %60, label %71, label %61

61:                                               ; preds = %59
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dpu_rm_init) #9
  %63 = load i32, ptr %17, align 4
  %64 = load ptr, ptr %55, align 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  store i32 %65, ptr %17, align 4
  br label %71

68:                                               ; preds = %44
  %69 = ptrtoint ptr %45 to i32
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %69) #9
  br label %242

71:                                               ; preds = %67, %61, %59, %58, %42, %34, %30
  %72 = add nuw i32 %25, 1
  %73 = load i32, ptr %12, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %24, label %18

75:                                               ; preds = %102, %18
  %76 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 11
  br label %112

81:                                               ; preds = %102, %22
  %82 = phi i32 [ 0, %22 ], [ %103, %102 ]
  %83 = load ptr, ptr %23, align 4
  %84 = getelementptr %struct.dpu_merge_3d_cfg, ptr %83, i32 %82, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, -4
  %87 = icmp ult i32 %86, -3
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %85) #9
  br label %102

90:                                               ; preds = %81
  %91 = tail call ptr @dpu_hw_merge_3d_init(i32 noundef %85, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %92 = icmp eq ptr %91, null
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  %94 = or i1 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %84, align 4
  %97 = add i32 %96, -1
  %98 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 5, i32 %97
  store ptr %91, ptr %98, align 4
  br label %102

99:                                               ; preds = %90
  %100 = ptrtoint ptr %91 to i32
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %100) #9
  br label %242

102:                                              ; preds = %95, %88
  %103 = add nuw i32 %82, 1
  %104 = load i32, ptr %19, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %81, label %75

106:                                              ; preds = %142, %75
  %107 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 14
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %146, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 15
  br label %152

112:                                              ; preds = %142, %79
  %113 = phi i32 [ 0, %79 ], [ %143, %142 ]
  %114 = load ptr, ptr %80, align 4
  %115 = getelementptr %struct.dpu_pingpong_cfg, ptr %114, i32 %113, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -8
  %118 = icmp ult i32 %117, -7
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %116) #9
  br label %142

121:                                              ; preds = %112
  %122 = tail call ptr @dpu_hw_pingpong_init(i32 noundef %116, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %123 = icmp eq ptr %122, null
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  %125 = or i1 %123, %124
  br i1 %125, label %139, label %126

126:                                              ; preds = %121
  %127 = getelementptr %struct.dpu_pingpong_cfg, ptr %114, i32 %113, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = add i32 %128, -1
  %130 = icmp ult i32 %129, 3
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 5, i32 %129
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %122, i32 0, i32 4
  store ptr %133, ptr %134, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, ptr %115, align 4
  %137 = add i32 %136, -1
  %138 = getelementptr [7 x ptr], ptr %0, i32 0, i32 %137
  store ptr %122, ptr %138, align 4
  br label %142

139:                                              ; preds = %121
  %140 = ptrtoint ptr %122 to i32
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %140) #9
  br label %242

142:                                              ; preds = %135, %119
  %143 = add nuw i32 %113, 1
  %144 = load i32, ptr %76, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %112, label %106

146:                                              ; preds = %182, %106
  %147 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %186, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 5
  br label %192

152:                                              ; preds = %182, %110
  %153 = phi i32 [ 0, %110 ], [ %183, %182 ]
  %154 = load ptr, ptr %111, align 4
  %155 = getelementptr %struct.dpu_intf_cfg, ptr %154, i32 %153, i32 5
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load i32, ptr @__drm_debug, align 4
  %160 = and i32 %159, 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %158
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %153) #8
  br label %182

163:                                              ; preds = %152
  %164 = getelementptr %struct.dpu_intf_cfg, ptr %154, i32 %153, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, -8
  %167 = icmp ult i32 %166, -7
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %165) #9
  br label %182

170:                                              ; preds = %163
  %171 = tail call ptr @dpu_hw_intf_init(i32 noundef %165, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %172 = icmp eq ptr %171, null
  %173 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  %174 = or i1 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load i32, ptr %164, align 4
  %177 = add i32 %176, -1
  %178 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 %177
  store ptr %171, ptr %178, align 4
  br label %182

179:                                              ; preds = %170
  %180 = ptrtoint ptr %171 to i32
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %180) #9
  br label %242

182:                                              ; preds = %175, %168, %162, %158
  %183 = add nuw i32 %153, 1
  %184 = load i32, ptr %107, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %152, label %146

186:                                              ; preds = %213, %146
  %187 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 21
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %247, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 22
  br label %217

192:                                              ; preds = %213, %150
  %193 = phi i32 [ 0, %150 ], [ %214, %213 ]
  %194 = load ptr, ptr %151, align 4
  %195 = getelementptr %struct.dpu_ctl_cfg, ptr %194, i32 %193, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, -7
  %198 = icmp ult i32 %197, -6
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %196) #9
  br label %213

201:                                              ; preds = %192
  %202 = tail call ptr @dpu_hw_ctl_init(i32 noundef %196, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %203 = icmp eq ptr %202, null
  %204 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  %205 = or i1 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32, ptr %195, align 4
  %208 = add i32 %207, -1
  %209 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 %208
  store ptr %202, ptr %209, align 4
  br label %213

210:                                              ; preds = %201
  %211 = ptrtoint ptr %202 to i32
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %211) #9
  br label %242

213:                                              ; preds = %206, %199
  %214 = add nuw i32 %193, 1
  %215 = load i32, ptr %147, align 4
  %216 = icmp ult i32 %214, %215
  br i1 %216, label %192, label %186

217:                                              ; preds = %238, %190
  %218 = phi i32 [ 0, %190 ], [ %239, %238 ]
  %219 = load ptr, ptr %191, align 4
  %220 = getelementptr %struct.dpu_dspp_cfg, ptr %219, i32 %218, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, -5
  %223 = icmp ult i32 %222, -4
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %221) #9
  br label %238

226:                                              ; preds = %217
  %227 = tail call ptr @dpu_hw_dspp_init(i32 noundef %221, ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %228 = icmp eq ptr %227, null
  %229 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  %230 = or i1 %228, %229
  br i1 %230, label %235, label %231

231:                                              ; preds = %226
  %232 = load i32, ptr %220, align 4
  %233 = add i32 %232, -1
  %234 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 4, i32 %233
  store ptr %227, ptr %234, align 4
  br label %238

235:                                              ; preds = %226
  %236 = ptrtoint ptr %227 to i32
  %237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_rm_init, i32 noundef %236) #9
  br label %242

238:                                              ; preds = %231, %224
  %239 = add nuw i32 %218, 1
  %240 = load i32, ptr %187, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %217, label %247

242:                                              ; preds = %235, %210, %179, %139, %99, %68
  %243 = phi i32 [ %69, %68 ], [ %100, %99 ], [ %140, %139 ], [ %180, %179 ], [ %211, %210 ], [ %236, %235 ]
  %244 = tail call i32 @dpu_rm_destroy(ptr noundef nonnull %0)
  %245 = icmp eq i32 %243, 0
  %246 = select i1 %245, i32 -14, i32 %243
  br label %247

247:                                              ; preds = %242, %238, %186, %9
  %248 = phi i32 [ %246, %242 ], [ -22, %9 ], [ 0, %186 ], [ 0, %238 ]
  ret i32 %248
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_lm_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_merge_3d_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_pingpong_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_intf_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_ctl_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_dspp_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_rm_release(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.dpu_global_state, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, %5
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %5
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 1, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 1, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %5
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 1, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, ptr %30, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 1, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %5
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, ptr %35, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.dpu_global_state, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %4, align 4
  %42 = load i32, ptr %40, align 4
  %43 = icmp eq i32 %42, %41
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, ptr %40, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 2, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %41
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, ptr %46, align 4
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 2, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %41
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, ptr %51, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 2, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %41
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, ptr %56, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 2, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %41
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, ptr %61, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 2, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %41
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, ptr %66, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 2, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %41
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, ptr %71, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr inbounds %struct.dpu_global_state, ptr %0, i32 0, i32 3
  %77 = load i32, ptr %4, align 4
  %78 = load i32, ptr %76, align 4
  %79 = icmp eq i32 %78, %77
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, ptr %76, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 3, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, %77
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, ptr %82, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 3, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %77
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, ptr %87, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 3, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, %77
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, ptr %92, align 4
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 3, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %77
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 0, ptr %97, align 4
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 3, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, %77
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, ptr %102, align 4
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.dpu_global_state, ptr %0, i32 0, i32 4
  %108 = load i32, ptr %4, align 4
  %109 = load i32, ptr %107, align 4
  %110 = icmp eq i32 %109, %108
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, ptr %107, align 4
  br label %112

112:                                              ; preds = %111, %106
  %113 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 4, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %108
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 0, ptr %113, align 4
  br label %117

117:                                              ; preds = %116, %112
  %118 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 4, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, %108
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 0, ptr %118, align 4
  br label %122

122:                                              ; preds = %121, %117
  %123 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 4, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, %108
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, ptr %123, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 4, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, %108
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 0, ptr %128, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 4, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, %108
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 0, ptr %133, align 4
  br label %137

137:                                              ; preds = %136, %132
  %138 = getelementptr %struct.dpu_global_state, ptr %0, i32 0, i32 4, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, %108
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i32 0, ptr %138, align 4
  br label %142

142:                                              ; preds = %141, %137
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_reserve(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, [4 x i32] %4) local_unnamed_addr #0 {
  %6 = alloca [12 x i32], align 4
  %7 = alloca [12 x i32], align 4
  %8 = alloca [12 x i32], align 4
  %9 = alloca [12 x i32], align 4
  %10 = alloca %struct.dpu_rm_requirements, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %10, i8 0, i32 48, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %346, label %15

15:                                               ; preds = %5
  %16 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dpu_rm_reserve) #9
  %19 = ptrtoint ptr %1 to i32
  br label %346

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_encoder, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %22, i32 noundef %25) #8
  %26 = extractvalue [4 x i32] %4, 0
  %27 = extractvalue [4 x i32] %4, 1
  %28 = extractvalue [4 x i32] %4, 2
  %29 = extractvalue [4 x i32] %4, 3
  %30 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1
  call void @dpu_encoder_get_hw_resources(ptr noundef %2, ptr noundef %30) #8
  store i32 %26, ptr %10, align 4
  %31 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 %27, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %10, i32 8
  store i32 %28, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %10, i32 12
  store i32 %29, ptr %33, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %26, i32 noundef %27, i32 noundef %28) #8
  %34 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %7, i8 0, i32 48, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 48, i1 false) #8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %9, i8 0, i32 48, i1 false) #8
  %35 = load i32, ptr %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__._dpu_rm_reserve_lms, i32 noundef 0) #9
  br label %146

39:                                               ; preds = %96, %20
  %40 = phi i32 [ %97, %96 ], [ 0, %20 ]
  %41 = phi i32 [ %98, %96 ], [ 0, %20 ]
  %42 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %96, label %45

45:                                               ; preds = %39
  store i32 %41, ptr %7, align 4
  %46 = call fastcc zeroext i1 @_dpu_rm_check_lm_and_get_connected_blks(ptr noundef %0, ptr noundef %1, i32 noundef %34, i32 noundef %41, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  br i1 %46, label %47, label %96

47:                                               ; preds = %45
  %48 = add nuw nsw i32 %41, 1
  %49 = icmp ult i32 %41, 6
  br i1 %49, label %50, label %96

50:                                               ; preds = %92, %47
  %51 = phi i32 [ %94, %92 ], [ %48, %47 ]
  %52 = phi i32 [ %93, %92 ], [ 1, %47 ]
  %53 = load i32, ptr %10, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %50
  %56 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 %51
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %92, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %42, align 4
  %61 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %57, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %62, i32 0, i32 8
  %68 = lshr i32 %66, 5
  %69 = getelementptr i32, ptr %67, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %66, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %59
  %76 = load i32, ptr @__drm_debug, align 4
  %77 = and i32 %76, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %75
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %66, i32 noundef %66) #8
  %80 = load i32, ptr @__drm_debug, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = add nuw nsw i32 %51, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26, i32 noundef %84, i32 noundef %48) #8
  br label %92

85:                                               ; preds = %59
  %86 = getelementptr [12 x i32], ptr %8, i32 0, i32 %52
  %87 = getelementptr [12 x i32], ptr %9, i32 0, i32 %52
  %88 = call fastcc zeroext i1 @_dpu_rm_check_lm_and_get_connected_blks(ptr noundef %0, ptr noundef %1, i32 noundef %34, i32 noundef %51, ptr noundef %86, ptr noundef %87, ptr noundef nonnull %10) #8
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr [12 x i32], ptr %7, i32 0, i32 %52
  store i32 %51, ptr %90, align 4
  %91 = add nuw i32 %52, 1
  br label %92

92:                                               ; preds = %89, %85, %83, %79, %75, %55
  %93 = phi i32 [ %91, %89 ], [ %52, %85 ], [ %52, %83 ], [ %52, %55 ], [ %52, %79 ], [ %52, %75 ]
  %94 = add nuw nsw i32 %51, 1
  %95 = icmp eq i32 %94, 7
  br i1 %95, label %96, label %50

96:                                               ; preds = %92, %50, %47, %45, %39
  %97 = phi i32 [ 0, %45 ], [ %40, %39 ], [ 1, %47 ], [ %93, %92 ], [ %52, %50 ]
  %98 = add nuw nsw i32 %41, 1
  %99 = icmp ne i32 %98, 7
  %100 = load i32, ptr %10, align 4
  %101 = icmp ult i32 %97, %100
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %39, label %103

103:                                              ; preds = %96
  %104 = icmp eq i32 %97, %100
  br i1 %104, label %105, label %107

105:                                              ; preds = %103
  %106 = icmp sgt i32 %97, 0
  br i1 %106, label %112, label %149

107:                                              ; preds = %103
  %108 = load i32, ptr @__drm_debug, align 4
  %109 = and i32 %108, 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %146, label %111

111:                                              ; preds = %107
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #8
  br label %146

112:                                              ; preds = %143, %105
  %113 = phi i32 [ %144, %143 ], [ 0, %105 ]
  %114 = getelementptr [12 x i32], ptr %7, i32 0, i32 %113
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 2, i32 %115
  store i32 %34, ptr %116, align 4
  %117 = getelementptr [12 x i32], ptr %8, i32 0, i32 %113
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 1, i32 %118
  store i32 %34, ptr %119, align 4
  %120 = load i32, ptr %33, align 4
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 0, i32 %34
  %123 = getelementptr [12 x i32], ptr %9, i32 0, i32 %113
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 5, i32 %124
  store i32 %122, ptr %125, align 4
  %126 = add i32 %115, 1
  %127 = add i32 %118, 1
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_lms, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %112
  %131 = tail call ptr @llvm.thread.pointer() #8
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = lshr i32 %133, 5
  %135 = getelementptr i32, ptr @__cpu_online_mask, i32 %134
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %133, 31
  %138 = shl nuw i32 1, %137
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %142 = call i32 @__traceiter_dpu_rm_reserve_lms(ptr noundef null, i32 noundef %126, i32 noundef %34, i32 noundef %127) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  br label %143

143:                                              ; preds = %141, %130, %112
  %144 = add nuw nsw i32 %113, 1
  %145 = icmp eq i32 %144, %97
  br i1 %145, label %149, label %112

146:                                              ; preds = %111, %107, %37
  %147 = phi i32 [ -119, %111 ], [ -119, %107 ], [ -22, %37 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__._dpu_rm_make_reservation) #9
  br label %343

149:                                              ; preds = %143, %105
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  %150 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i32 48, i1 false) #8, !annotation !8
  %151 = load i32, ptr %32, align 4
  %152 = icmp ugt i32 %151, 1
  %153 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 3
  br label %154

154:                                              ; preds = %190, %149
  %155 = phi i32 [ 0, %149 ], [ %191, %190 ]
  %156 = phi i32 [ 0, %149 ], [ %192, %190 ]
  %157 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 2, i32 %156
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %190, label %160

160:                                              ; preds = %154
  %161 = getelementptr i32, ptr %153, i32 %156
  %162 = load i32, ptr %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = icmp ne i32 %162, %150
  %165 = and i1 %163, %164
  br i1 %165, label %190, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %158, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.dpu_ctl_cfg, ptr %168, i32 0, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr @__drm_debug, align 4
  %172 = and i32 %171, 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %166
  %175 = add nuw nsw i32 %156, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %175, i32 noundef %170) #8
  br label %176

176:                                              ; preds = %174, %166
  %177 = and i32 %170, 2
  %178 = icmp eq i32 %177, 0
  %179 = xor i1 %152, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = getelementptr [12 x i32], ptr %6, i32 0, i32 %155
  store i32 %156, ptr %181, align 4
  %182 = load i32, ptr @__drm_debug, align 4
  %183 = and i32 %182, 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %180
  %186 = add nuw nsw i32 %156, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %186) #8
  br label %187

187:                                              ; preds = %185, %180
  %188 = add i32 %155, 1
  %189 = icmp eq i32 %188, %151
  br i1 %189, label %196, label %190

190:                                              ; preds = %187, %176, %160, %154
  %191 = phi i32 [ %188, %187 ], [ %155, %154 ], [ %155, %160 ], [ %155, %176 ]
  %192 = add nuw nsw i32 %156, 1
  %193 = icmp eq i32 %192, 6
  br i1 %193, label %194, label %154

194:                                              ; preds = %190
  %195 = icmp eq i32 %191, %151
  br i1 %195, label %196, label %224

196:                                              ; preds = %194, %187
  %197 = icmp sgt i32 %151, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %196
  %199 = add nsw i32 %151, -1
  %200 = call i32 @llvm.umin.i32(i32 %199, i32 11) #8
  br label %201

201:                                              ; preds = %222, %198
  %202 = phi i32 [ %206, %222 ], [ 0, %198 ]
  %203 = getelementptr [12 x i32], ptr %6, i32 0, i32 %202
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 3, i32 %204
  store i32 %150, ptr %205, align 4
  %206 = add nuw nsw i32 %202, 1
  %207 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_ctls, i32 0, i32 1), align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %201
  %210 = tail call ptr @llvm.thread.pointer() #8
  %211 = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 2
  %212 = load i32, ptr %211, align 8
  %213 = lshr i32 %212, 5
  %214 = getelementptr i32, ptr @__cpu_online_mask, i32 %213
  %215 = load volatile i32, ptr %214, align 4
  %216 = and i32 %212, 31
  %217 = shl nuw i32 1, %216
  %218 = and i32 %217, %215
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %209
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  %221 = call i32 @__traceiter_dpu_rm_reserve_ctls(ptr noundef null, i32 noundef %206, i32 noundef %150) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  br label %222

222:                                              ; preds = %220, %209, %201
  %223 = icmp eq i32 %202, %200
  br i1 %223, label %226, label %201

224:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #8
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__._dpu_rm_make_reservation) #9
  br label %343

226:                                              ; preds = %222, %196
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #8
  %227 = load i32, ptr %21, align 4
  %228 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4
  %229 = load i32, ptr %30, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %249, label %233

231:                                              ; preds = %339
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._dpu_rm_reserve_intf, i32 noundef 8) #9
  br label %343

233:                                              ; preds = %226
  %234 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 0
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %328, %313, %298, %283, %268, %253, %233
  %238 = phi i32 [ 1, %233 ], [ 2, %253 ], [ 3, %268 ], [ 4, %283 ], [ 5, %298 ], [ 6, %313 ], [ 7, %328 ]
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__._dpu_rm_reserve_intf, i32 noundef %238) #9
  br label %343

240:                                              ; preds = %233
  %241 = load i32, ptr %228, align 4
  %242 = icmp ne i32 %241, 0
  %243 = icmp ne i32 %241, %227
  %244 = and i1 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %332, %317, %302, %287, %272, %257, %240
  %246 = phi i32 [ 1, %240 ], [ 2, %257 ], [ 3, %272 ], [ 4, %287 ], [ 5, %302 ], [ 6, %317 ], [ 7, %332 ]
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__._dpu_rm_reserve_intf, i32 noundef %246) #9
  br label %343

248:                                              ; preds = %240
  store i32 %227, ptr %228, align 4
  br label %249

249:                                              ; preds = %248, %226
  %250 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %249
  %254 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %237, label %257

257:                                              ; preds = %253
  %258 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = icmp ne i32 %259, 0
  %261 = icmp ne i32 %259, %227
  %262 = and i1 %260, %261
  br i1 %262, label %245, label %263

263:                                              ; preds = %257
  store i32 %227, ptr %258, align 4
  br label %264

264:                                              ; preds = %263, %249
  %265 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %279, label %268

268:                                              ; preds = %264
  %269 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 2
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %237, label %272

272:                                              ; preds = %268
  %273 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4, i32 2
  %274 = load i32, ptr %273, align 4
  %275 = icmp ne i32 %274, 0
  %276 = icmp ne i32 %274, %227
  %277 = and i1 %275, %276
  br i1 %277, label %245, label %278

278:                                              ; preds = %272
  store i32 %227, ptr %273, align 4
  br label %279

279:                                              ; preds = %278, %264
  %280 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 3
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %279
  %284 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 3
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %237, label %287

287:                                              ; preds = %283
  %288 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4, i32 3
  %289 = load i32, ptr %288, align 4
  %290 = icmp ne i32 %289, 0
  %291 = icmp ne i32 %289, %227
  %292 = and i1 %290, %291
  br i1 %292, label %245, label %293

293:                                              ; preds = %287
  store i32 %227, ptr %288, align 4
  br label %294

294:                                              ; preds = %293, %279
  %295 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 4
  %296 = load i32, ptr %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %309, label %298

298:                                              ; preds = %294
  %299 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 4
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %237, label %302

302:                                              ; preds = %298
  %303 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4, i32 4
  %304 = load i32, ptr %303, align 4
  %305 = icmp ne i32 %304, 0
  %306 = icmp ne i32 %304, %227
  %307 = and i1 %305, %306
  br i1 %307, label %245, label %308

308:                                              ; preds = %302
  store i32 %227, ptr %303, align 4
  br label %309

309:                                              ; preds = %308, %294
  %310 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 5
  %311 = load i32, ptr %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %324, label %313

313:                                              ; preds = %309
  %314 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 5
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %237, label %317

317:                                              ; preds = %313
  %318 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4, i32 5
  %319 = load i32, ptr %318, align 4
  %320 = icmp ne i32 %319, 0
  %321 = icmp ne i32 %319, %227
  %322 = and i1 %320, %321
  br i1 %322, label %245, label %323

323:                                              ; preds = %317
  store i32 %227, ptr %318, align 4
  br label %324

324:                                              ; preds = %323, %309
  %325 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 6
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %339, label %328

328:                                              ; preds = %324
  %329 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 3, i32 6
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %237, label %332

332:                                              ; preds = %328
  %333 = getelementptr %struct.dpu_global_state, ptr %1, i32 0, i32 4, i32 6
  %334 = load i32, ptr %333, align 4
  %335 = icmp ne i32 %334, 0
  %336 = icmp ne i32 %334, %227
  %337 = and i1 %335, %336
  br i1 %337, label %245, label %338

338:                                              ; preds = %332
  store i32 %227, ptr %333, align 4
  br label %339

339:                                              ; preds = %338, %324
  %340 = getelementptr inbounds %struct.dpu_rm_requirements, ptr %10, i32 0, i32 1, i32 0, i32 7
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %346, label %231

343:                                              ; preds = %245, %237, %231, %224, %146
  %344 = phi i32 [ -22, %231 ], [ -119, %245 ], [ -22, %237 ], [ -119, %224 ], [ %147, %146 ]
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.dpu_rm_reserve, i32 noundef %344) #9
  br label %346

346:                                              ; preds = %343, %339, %17, %5
  %347 = phi i32 [ %19, %17 ], [ 0, %5 ], [ %344, %343 ], [ 0, %339 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #8
  ret i32 %347
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_rm_get_assigned_resources(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 {
  switch i32 %3, label %21 [
    i32 4, label %7
    i32 2, label %9
    i32 3, label %12
    i32 5, label %15
    i32 7, label %18
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 1
  br label %23

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.dpu_rm, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 2
  br label %23

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.dpu_rm, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 3
  br label %23

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.dpu_rm, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 4
  br label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.dpu_rm, ptr %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 5
  br label %23

21:                                               ; preds = %6
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dpu_rm_get_assigned_resources, i32 noundef %3) #9
  br label %110

23:                                               ; preds = %18, %15, %12, %9, %7
  %24 = phi ptr [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ %8, %7 ]
  %25 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %12 ], [ false, %9 ], [ false, %7 ]
  %26 = phi i1 [ false, %18 ], [ false, %15 ], [ true, %12 ], [ false, %9 ], [ false, %7 ]
  %27 = phi ptr [ %19, %18 ], [ %16, %15 ], [ %13, %12 ], [ %10, %9 ], [ %0, %7 ]
  %28 = load i32, ptr %24, align 4
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = icmp eq i32 %5, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %103, %90, %78, %65, %53, %41, %30
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dpu_rm_get_assigned_resources, i32 noundef %5, i32 noundef %2) #9
  br label %110

34:                                               ; preds = %30
  %35 = load ptr, ptr %27, align 4
  store ptr %35, ptr %4, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = phi i32 [ 0, %23 ], [ 1, %34 ]
  %38 = getelementptr i32, ptr %24, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = icmp eq i32 %37, %5
  br i1 %42, label %32, label %43

43:                                               ; preds = %41
  %44 = getelementptr ptr, ptr %27, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = add nuw nsw i32 %37, 1
  %47 = getelementptr ptr, ptr %4, i32 %37
  store ptr %45, ptr %47, align 4
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi i32 [ %37, %36 ], [ %46, %43 ]
  %50 = getelementptr i32, ptr %24, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = icmp eq i32 %49, %5
  br i1 %54, label %32, label %55

55:                                               ; preds = %53
  %56 = getelementptr ptr, ptr %27, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = add nsw i32 %49, 1
  %59 = getelementptr ptr, ptr %4, i32 %49
  store ptr %57, ptr %59, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi i32 [ %49, %48 ], [ %58, %55 ]
  %62 = getelementptr i32, ptr %24, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %2
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = icmp eq i32 %61, %5
  br i1 %66, label %32, label %67

67:                                               ; preds = %65
  %68 = getelementptr ptr, ptr %27, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = add nsw i32 %61, 1
  %71 = getelementptr ptr, ptr %4, i32 %61
  store ptr %69, ptr %71, align 4
  br label %72

72:                                               ; preds = %67, %60
  %73 = phi i32 [ %61, %60 ], [ %70, %67 ]
  br i1 %25, label %110, label %74

74:                                               ; preds = %72
  %75 = getelementptr i32, ptr %24, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %2
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = icmp eq i32 %73, %5
  br i1 %79, label %32, label %80

80:                                               ; preds = %78
  %81 = getelementptr ptr, ptr %27, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = add i32 %73, 1
  %84 = getelementptr ptr, ptr %4, i32 %73
  store ptr %82, ptr %84, align 4
  br label %85

85:                                               ; preds = %80, %74
  %86 = phi i32 [ %73, %74 ], [ %83, %80 ]
  %87 = getelementptr i32, ptr %24, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %2
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = icmp eq i32 %86, %5
  br i1 %91, label %32, label %92

92:                                               ; preds = %90
  %93 = getelementptr ptr, ptr %27, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = add i32 %86, 1
  %96 = getelementptr ptr, ptr %4, i32 %86
  store ptr %94, ptr %96, align 4
  br label %97

97:                                               ; preds = %92, %85
  %98 = phi i32 [ %86, %85 ], [ %95, %92 ]
  br i1 %26, label %110, label %99

99:                                               ; preds = %97
  %100 = getelementptr i32, ptr %24, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = icmp eq i32 %98, %5
  br i1 %104, label %32, label %105

105:                                              ; preds = %103
  %106 = getelementptr ptr, ptr %27, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = add i32 %98, 1
  %109 = getelementptr ptr, ptr %4, i32 %98
  store ptr %107, ptr %109, align 4
  br label %110

110:                                              ; preds = %105, %99, %97, %72, %32, %21
  %111 = phi i32 [ 0, %21 ], [ %5, %32 ], [ %73, %72 ], [ %98, %97 ], [ %98, %99 ], [ %108, %105 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_get_hw_resources(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_dpu_rm_check_lm_and_get_connected_blks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 2
  %9 = getelementptr i32, ptr %8, i32 %3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp ne i32 %10, %2
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  %15 = load i32, ptr @__drm_debug, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %71, label %18

18:                                               ; preds = %14
  %19 = add i32 %3, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.28, i32 noundef %19) #8
  br label %71

20:                                               ; preds = %7
  %21 = getelementptr %struct.dpu_rm, ptr %0, i32 0, i32 1, i32 %3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = icmp ugt i32 %27, 6
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__._dpu_rm_check_lm_and_get_connected_blks, i32 noundef %26) #9
  br label %71

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 1
  %33 = getelementptr i32, ptr %32, i32 %27
  %34 = load i32, ptr %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = icmp ne i32 %34, %2
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, ptr @__drm_debug, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %24, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef %44, i32 noundef %26) #8
  br label %71

45:                                               ; preds = %31
  store i32 %27, ptr %4, align 4
  %46 = getelementptr inbounds %struct.msm_display_topology, ptr %6, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %24, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._dpu_rm_check_lm_and_get_connected_blks, i32 noundef %51) #9
  br label %71

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.dpu_global_state, ptr %1, i32 0, i32 5
  %58 = getelementptr i32, ptr %57, i32 %52
  %59 = load i32, ptr %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = icmp ne i32 %59, %2
  %62 = and i1 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32, ptr @__drm_debug, align 4
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %24, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %69, i32 noundef %51) #8
  br label %71

70:                                               ; preds = %56
  store i32 %52, ptr %5, align 4
  br label %71

71:                                               ; preds = %70, %67, %63, %54, %45, %42, %38, %29, %18, %14
  %72 = phi i1 [ false, %29 ], [ false, %54 ], [ true, %70 ], [ false, %14 ], [ false, %18 ], [ false, %38 ], [ false, %42 ], [ true, %45 ], [ false, %63 ], [ false, %67 ]
  ret i1 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_rm_reserve_lms(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_rm_reserve_ctls(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2156702417}
!10 = !{i64 2156702599}
!11 = !{i64 2156684972}
!12 = !{i64 2156685142}
