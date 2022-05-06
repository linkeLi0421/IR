; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_vbif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_vbif_set_ot_params = type { i32, i32, i32, i32, i32, i8, i8, i32, i32 }
%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_vbif_ops }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_vbif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.dpu_vbif_dynamic_ot_cfg = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_vbif_set_qos_params = type { i32, i32, i32, i32, i8 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }

@.str = private unnamed_addr constant [34 x i8] c"invalid arguments vbif %d mdp %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\013[drm:%s:%d] [dpu error]invalid arguments\0A\00", align 1
@__func__.dpu_vbif_set_qos_remap = private unnamed_addr constant [23 x i8] c"dpu_vbif_set_qos_remap\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013[drm:%s:%d] [dpu error]invalid vbif %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"qos remap not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"qos tbl not defined\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vbif:%d xin:%d lvl:%d/%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"VBIF %d: pnd 0x%X, src 0x%X\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vbif\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"xin_halt_timeout\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"default_rd_ot_limit\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"default_wr_ot_limit\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"dynamic_ot_rd_%d_pps\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"dynamic_ot_rd_%d_ot_limit\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"dynamic_ot_wr_%d_pps\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"dynamic_ot_wr_%d_ot_limit\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"\013[drm:%s:%d] [dpu error]invalid arguments vbif %d\0A\00", align 1
@__func__._dpu_vbif_get_ot_limit = private unnamed_addr constant [23 x i8] c"_dpu_vbif_get_ot_limit\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"vbif:%d xin:%d ot_lim:%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"vbif:%d xin:%d w:%d h:%d fps:%d pps:%llu ot:%u\0A\00", align 1
@__tracepoint_dpu_perf_set_ot = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__func__._dpu_vbif_wait_for_xin_halt = private unnamed_addr constant [28 x i8] c"_dpu_vbif_wait_for_xin_halt\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"\013[drm:%s:%d] [dpu error]VBIF %d client %d not halting. TIMEDOUT.\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"VBIF %d client %d is halted\0A\00", align 1
@__tracepoint_dpu_vbif_wait_xin_halt_fail = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_vbif_set_ot_limit(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 7
  %6 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 0
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %11, %12
  %14 = select i1 %13, ptr %7, ptr null
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi ptr [ null, %2 ], [ %14, %9 ]
  %17 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %18, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %22, %23
  %25 = select i1 %24, ptr %18, ptr %16
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi ptr [ %16, %15 ], [ %25, %20 ]
  %28 = icmp ne ptr %27, null
  %29 = icmp ne ptr %4, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = zext i1 %28 to i32
  %33 = zext i1 %29 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %32, i32 noundef %33) #7
  br label %242

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %4, i32 0, i32 4, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %242, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %242, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 3, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %242, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 3, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 5
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, ptr %1, align 4
  tail call void %48(ptr noundef nonnull %27, i32 noundef %55) #7
  br label %56

56:                                               ; preds = %54, %50, %46
  %57 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._dpu_vbif_get_ot_limit, i32 noundef 109, i32 noundef 1) #8
  br label %145

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %58, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 5
  %68 = load i8, ptr %67, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66, %62
  %71 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %58, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %138, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 5
  %76 = load i8, ptr %75, align 4, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %138, label %78

78:                                               ; preds = %74, %66
  %79 = phi i1 [ false, %74 ], [ true, %66 ]
  %80 = phi i32 [ %72, %74 ], [ %64, %66 ]
  %81 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %58, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %125, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 6
  %87 = load i8, ptr %86, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %125, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = zext i32 %94 to i64
  %96 = mul nuw i64 %95, %92
  %97 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = zext i32 %98 to i64
  %100 = mul i64 %96, %99
  %101 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %58, i32 0, i32 8
  %102 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %58, i32 0, i32 9
  %103 = select i1 %79, ptr %102, ptr %101
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.dpu_vbif_dynamic_ot_tbl, ptr %103, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %117, %106
  %110 = phi i32 [ 0, %106 ], [ %118, %117 ]
  %111 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %108, i32 %110
  %112 = load i64, ptr %111, align 8
  %113 = icmp ugt i64 %100, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %108, i32 %110, i32 1
  %116 = load i32, ptr %115, align 8
  br label %120

117:                                              ; preds = %109
  %118 = add nuw i32 %110, 1
  %119 = icmp eq i32 %118, %104
  br i1 %119, label %120, label %109

120:                                              ; preds = %117, %114, %89
  %121 = phi i32 [ %80, %89 ], [ %116, %114 ], [ %80, %117 ]
  %122 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %123, i32 noundef %124, i32 noundef %94, i32 noundef %98, i32 noundef %91, i64 noundef %100, i32 noundef %121) #7
  br label %125

125:                                              ; preds = %120, %85, %78
  %126 = phi i32 [ %80, %78 ], [ %80, %85 ], [ %121, %120 ]
  %127 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 3, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %1, align 4
  %132 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 5
  %133 = load i8, ptr %132, align 4, !range !8
  %134 = icmp ne i8 %133, 0
  %135 = tail call i32 %128(ptr noundef nonnull %27, i32 noundef %131, i1 noundef zeroext %134) #7
  %136 = icmp eq i32 %135, %126
  %137 = select i1 %136, i32 0, i32 %126
  br label %138

138:                                              ; preds = %130, %125, %74, %70
  %139 = phi i32 [ %126, %125 ], [ 0, %70 ], [ 0, %74 ], [ %137, %130 ]
  %140 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %141, i32 noundef %142, i32 noundef %139) #7
  %143 = and i32 %139, 255
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %242, label %145

145:                                              ; preds = %138, %60
  %146 = phi i32 [ 234, %60 ], [ %143, %138 ]
  %147 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %1, align 4
  %150 = load i32, ptr %5, align 4
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_ot, i32 0, i32 1), align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %145
  %154 = tail call ptr @llvm.thread.pointer() #7
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 5
  %158 = getelementptr i32, ptr @__cpu_online_mask, i32 %157
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %156, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %153
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %165 = tail call i32 @__traceiter_dpu_perf_set_ot(ptr noundef null, i32 noundef %148, i32 noundef %149, i32 noundef %146, i32 noundef %150) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  br label %166

166:                                              ; preds = %164, %153, %145
  %167 = load ptr, ptr %35, align 4
  %168 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 8
  %169 = load i32, ptr %168, align 4
  %170 = tail call zeroext i1 %167(ptr noundef nonnull %4, i32 noundef %169, i1 noundef zeroext true) #7
  %171 = load ptr, ptr %39, align 4
  %172 = load i32, ptr %1, align 4
  %173 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, ptr %1, i32 0, i32 5
  %174 = load i8, ptr %173, align 4, !range !8
  %175 = icmp ne i8 %174, 0
  tail call void %171(ptr noundef nonnull %27, i32 noundef %172, i1 noundef zeroext %175, i32 noundef %146) #7
  %176 = load ptr, ptr %43, align 4
  %177 = load i32, ptr %1, align 4
  tail call void %176(ptr noundef nonnull %27, i32 noundef %177, i1 noundef zeroext true) #7
  %178 = load i32, ptr %1, align 4
  %179 = load ptr, ptr %57, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %166
  %182 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 3, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %181, %166
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._dpu_vbif_wait_for_xin_halt, i32 noundef 27, i32 noundef 1) #8
  br label %216

187:                                              ; preds = %181
  %188 = tail call i64 @ktime_get() #7
  %189 = load ptr, ptr %57, align 4
  %190 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %189, i32 0, i32 7
  %191 = load i32, ptr %190, align 4
  %192 = zext i32 %191 to i64
  %193 = mul nuw nsw i64 %192, 1000
  %194 = add i64 %193, %188
  %195 = load ptr, ptr %182, align 4
  %196 = tail call zeroext i1 %195(ptr noundef nonnull %27, i32 noundef %178) #7
  br i1 %196, label %213, label %197

197:                                              ; preds = %203, %187
  %198 = tail call i64 @ktime_get() #7
  %199 = sub i64 %198, %194
  %200 = icmp sgt i64 %199, -1
  %201 = icmp ne i64 %198, %194
  %202 = and i1 %201, %200
  br i1 %202, label %206, label %203

203:                                              ; preds = %197
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 1000, i32 noundef 2) #7
  %204 = load ptr, ptr %182, align 4
  %205 = tail call zeroext i1 %204(ptr noundef nonnull %27, i32 noundef %178) #7
  br i1 %205, label %213, label %197

206:                                              ; preds = %197
  %207 = load ptr, ptr %182, align 4
  %208 = tail call zeroext i1 %207(ptr noundef nonnull %27, i32 noundef %178) #7
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__._dpu_vbif_wait_for_xin_halt, i32 noundef 46, i32 noundef %211, i32 noundef %178) #8
  br label %216

213:                                              ; preds = %206, %203, %187
  %214 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %215, i32 noundef %178) #7
  br label %235

216:                                              ; preds = %209, %185
  %217 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %27, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = load i32, ptr %1, align 4
  %220 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, i32 0, i32 1), align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %216
  %223 = tail call ptr @llvm.thread.pointer() #7
  %224 = getelementptr inbounds %struct.thread_info, ptr %223, i32 0, i32 2
  %225 = load i32, ptr %224, align 8
  %226 = lshr i32 %225, 5
  %227 = getelementptr i32, ptr @__cpu_online_mask, i32 %226
  %228 = load volatile i32, ptr %227, align 4
  %229 = and i32 %225, 31
  %230 = shl nuw i32 1, %229
  %231 = and i32 %230, %228
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %222
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %234 = tail call i32 @__traceiter_dpu_vbif_wait_xin_halt_fail(ptr noundef null, i32 noundef %218, i32 noundef %219) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %235

235:                                              ; preds = %233, %222, %216, %213
  %236 = load ptr, ptr %43, align 4
  %237 = load i32, ptr %1, align 4
  tail call void %236(ptr noundef nonnull %27, i32 noundef %237, i1 noundef zeroext false) #7
  br i1 %170, label %238, label %242

238:                                              ; preds = %235
  %239 = load ptr, ptr %35, align 4
  %240 = load i32, ptr %168, align 4
  %241 = tail call zeroext i1 %239(ptr noundef nonnull %4, i32 noundef %240, i1 noundef zeroext false) #7
  br label %242

242:                                              ; preds = %238, %235, %138, %42, %38, %34, %31
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_vbif_set_qos_remap(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %14

12:                                               ; preds = %4, %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_vbif_set_qos_remap, i32 noundef 214) #8
  br label %90

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %10, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %30, label %19

19:                                               ; preds = %14, %8
  %20 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, ptr %1, align 4
  br label %36

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %21, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %14
  %31 = phi i32 [ %16, %14 ], [ %27, %25 ]
  %32 = phi ptr [ %10, %14 ], [ %21, %25 ]
  %33 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25, %23
  %37 = phi i32 [ %31, %30 ], [ %24, %23 ], [ %28, %25 ]
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dpu_vbif_set_qos_remap, i32 noundef 228, i32 noundef %37) #8
  br label %90

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %32, i32 0, i32 3, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %6, i32 0, i32 4, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %90

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %1, i32 0, i32 4
  %50 = load i8, ptr %49, align 4, !range !8
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %34, i32 0, i32 10
  %53 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %34, i32 0, i32 11
  %54 = select i1 %51, ptr %53, ptr %52
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.dpu_vbif_qos_tbl, ptr %54, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %48
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4) #7
  br label %90

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %1, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = tail call zeroext i1 %45(ptr noundef nonnull %6, i32 noundef %64, i1 noundef zeroext true) #7
  %66 = load i32, ptr %54, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, ptr %1, i32 0, i32 1
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i32 [ 0, %68 ], [ %82, %70 ]
  %72 = load i32, ptr %1, align 4
  %73 = load i32, ptr %69, align 4
  %74 = load ptr, ptr %58, align 4
  %75 = getelementptr i32, ptr %74, i32 %71
  %76 = load i32, ptr %75, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %72, i32 noundef %73, i32 noundef %71, i32 noundef %76) #7
  %77 = load ptr, ptr %40, align 4
  %78 = load i32, ptr %69, align 4
  %79 = load ptr, ptr %58, align 4
  %80 = getelementptr i32, ptr %79, i32 %71
  %81 = load i32, ptr %80, align 4
  tail call void %77(ptr noundef nonnull %32, i32 noundef %78, i32 noundef %71, i32 noundef %81) #7
  %82 = add nuw i32 %71, 1
  %83 = load i32, ptr %54, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %70, label %85

85:                                               ; preds = %70, %62
  br i1 %65, label %86, label %90

86:                                               ; preds = %85
  %87 = load ptr, ptr %44, align 4
  %88 = load i32, ptr %63, align 4
  %89 = tail call zeroext i1 %87(ptr noundef nonnull %6, i32 noundef %88, i1 noundef zeroext false) #7
  br label %90

90:                                               ; preds = %86, %85, %61, %47, %36, %12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_vbif_clear_errors(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !13
  %4 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %5, i32 0, i32 3, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  call void %9(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %12 = load i32, ptr %2, align 4
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %12, i32 noundef %14) #7
  br label %20

20:                                               ; preds = %17, %11, %7, %1
  %21 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %22, i32 0, i32 3, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  call void %26(ptr noundef nonnull %22, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %29 = load i32, ptr %2, align 4
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %22, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %36, i32 noundef %29, i32 noundef %31) #7
  br label %37

37:                                               ; preds = %34, %28, %24, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_vbif_init_memtypes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %3, i32 0, i32 3, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %7, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.dpu_vbif_cfg, ptr %7, i32 0, i32 13, i32 0
  %19 = load i32, ptr %18, align 4
  tail call void %11(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %19) #7
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %20, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %35

24:                                               ; preds = %24, %17
  %25 = phi ptr [ %31, %24 ], [ %20, %17 ]
  %26 = phi i32 [ %30, %24 ], [ 1, %17 ]
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr %struct.dpu_vbif_cfg, ptr %25, i32 0, i32 13, i32 %26
  %29 = load i32, ptr %28, align 4
  tail call void %27(ptr noundef nonnull %3, i32 noundef %26, i32 noundef %29) #7
  %30 = add nuw i32 %26, 1
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %31, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %24, label %35

35:                                               ; preds = %24, %17, %13, %9, %5, %1
  %36 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %37, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %37, i32 0, i32 3, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %41, i32 0, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.dpu_vbif_cfg, ptr %41, i32 0, i32 13, i32 0
  %53 = load i32, ptr %52, align 4
  tail call void %45(ptr noundef nonnull %37, i32 noundef 0, i32 noundef %53) #7
  %54 = load ptr, ptr %40, align 4
  %55 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %54, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %58, label %69

58:                                               ; preds = %58, %51
  %59 = phi ptr [ %65, %58 ], [ %54, %51 ]
  %60 = phi i32 [ %64, %58 ], [ 1, %51 ]
  %61 = load ptr, ptr %44, align 4
  %62 = getelementptr %struct.dpu_vbif_cfg, ptr %59, i32 0, i32 13, i32 %60
  %63 = load i32, ptr %62, align 4
  tail call void %61(ptr noundef nonnull %37, i32 noundef %60, i32 noundef %63) #7
  %64 = add nuw i32 %60, 1
  %65 = load ptr, ptr %40, align 4
  %66 = getelementptr inbounds %struct.dpu_vbif_cfg, ptr %65, i32 0, i32 12
  %67 = load i32, ptr %66, align 4
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %58, label %69

69:                                               ; preds = %58, %51, %47, %43, %39, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_vbif_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !13
  %4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef %1) #7
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %6, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %54, %2
  %11 = phi ptr [ %56, %54 ], [ %6, %2 ]
  %12 = phi i32 [ %55, %54 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %11, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %16)
  %18 = call ptr @debugfs_create_dir(ptr noundef nonnull %3, ptr noundef %4) #7
  %19 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %18, ptr noundef %19) #7
  %20 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %20) #7
  %21 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 5
  call void @debugfs_create_u32(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %21) #7
  %22 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %22) #7
  %23 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %10
  %27 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 8, i32 1
  br label %34

28:                                               ; preds = %34, %10
  %29 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %12, i32 9, i32 1
  br label %44

34:                                               ; preds = %34, %26
  %35 = phi i32 [ 0, %26 ], [ %41, %34 ]
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %36, i32 %35
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %35)
  call void @debugfs_create_u64(ptr noundef nonnull %3, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %37) #7
  %39 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %35)
  %40 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %36, i32 %35, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull %3, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %40) #7
  %41 = add nuw i32 %35, 1
  %42 = load i32, ptr %23, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %34, label %28

44:                                               ; preds = %44, %32
  %45 = phi i32 [ 0, %32 ], [ %51, %44 ]
  %46 = load ptr, ptr %33, align 4
  %47 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %46, i32 %45
  %48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %45)
  call void @debugfs_create_u64(ptr noundef nonnull %3, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %47) #7
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %45)
  %50 = getelementptr %struct.dpu_vbif_dynamic_ot_cfg, ptr %46, i32 %45, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull %3, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %50) #7
  %51 = add nuw i32 %45, 1
  %52 = load i32, ptr %29, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %44, label %54

54:                                               ; preds = %44, %28
  %55 = add nuw i32 %12, 1
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %56, i32 0, i32 16
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %10, label %60

60:                                               ; preds = %54, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_perf_set_ot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_vbif_wait_xin_halt_fail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2155885319}
!10 = !{i64 2155885521}
!11 = !{i64 2156710705}
!12 = !{i64 2156710897}
!13 = !{!"auto-init"}
