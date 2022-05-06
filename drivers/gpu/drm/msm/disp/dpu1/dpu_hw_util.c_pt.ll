; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_scaler3_cfg = type { i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_hw_scaler3_de_cfg, i32 }
%struct.dpu_hw_scaler3_de_cfg = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16] }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.dpu_csc_cfg = type { [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@dpu_hw_util_log_mask = internal global i32 1, align 4
@.str = private unnamed_addr constant [19 x i8] c"[%s:0x%X] <= 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"QSEED3_PHASE_INIT + scaler_offset\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"QSEED3_PHASE_INIT_Y_H + scaler_offset\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"QSEED3_PHASE_INIT_Y_V + scaler_offset\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"QSEED3_PHASE_INIT_UV_H + scaler_offset\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"QSEED3_PHASE_INIT_UV_V + scaler_offset\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"QSEED3_PHASE_STEP_Y_H + scaler_offset\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"QSEED3_PHASE_STEP_Y_V + scaler_offset\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"QSEED3_PHASE_STEP_UV_H + scaler_offset\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"QSEED3_PHASE_STEP_UV_V + scaler_offset\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"QSEED3_PRELOAD + scaler_offset\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"QSEED3_SRC_SIZE_Y_RGB_A + scaler_offset\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"QSEED3_SRC_SIZE_UV + scaler_offset\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"QSEED3_DST_SIZE + scaler_offset\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"QSEED3_OP_MODE + scaler_offset\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"csc_reg_off\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"csc_reg_off + 0x4\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"csc_reg_off + 0x8\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"csc_reg_off + 0xc\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x10\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x14\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x18\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x1c\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x20\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x24\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x28\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x2c\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x30\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x34\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x38\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x3c\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"csc_reg_off + 0x40\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [27 x i8] c"QSEED3_DE_SHARPEN + offset\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"QSEED3_DE_SHARPEN_CTL + offset\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"QSEED3_DE_SHAPE_CTL + offset\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"QSEED3_DE_THRESHOLD + offset\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"QSEED3_DE_ADJUST_DATA_0 + offset\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"QSEED3_DE_ADJUST_DATA_1 + offset\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"QSEED3_DE_ADJUST_DATA_2 + offset\00", align 1
@_dpu_hw_setup_scaler3_lut.off_tbl = internal unnamed_addr constant [5 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 18, i32 0], [2 x i32] [i32 12, i32 288], [2 x i32] [i32 12, i32 480], [2 x i32] [i32 8, i32 672]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 800], [2 x i32] [i32 3, i32 992], [2 x i32] [i32 3, i32 1088], [2 x i32] [i32 3, i32 1184]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 1280], [2 x i32] [i32 3, i32 1472], [2 x i32] [i32 3, i32 1568], [2 x i32] [i32 3, i32 1664]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 896], [2 x i32] [i32 3, i32 1040], [2 x i32] [i32 3, i32 1136], [2 x i32] [i32 3, i32 1232]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 1376], [2 x i32] [i32 3, i32 1520], [2 x i32] [i32 3, i32 1616], [2 x i32] [i32 3, i32 1712]]], align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"lut_addr\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"QSEED3_COEF_LUT_CTRL + offset\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"QSEED3LITE_DIR_FILTER_WEIGHT + offset\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %8 = and i32 %7, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr @__drm_debug, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %3, i32 noundef %17, i32 noundef %2) #5
  br label %18

18:                                               ; preds = %14, %10, %4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %2) #5, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dpu_hw_util_get_log_mask_ptr() local_unnamed_addr #3 {
  ret ptr @dpu_hw_util_log_mask
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_setup_scaler3(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x ptr], align 4
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %991, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 16
  %15 = and i32 %14, 196608
  %16 = or i32 %15, 1
  %17 = icmp eq ptr %4, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dpu_format, ptr %4, i32 0, i32 12
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 24
  %27 = and i32 %26, 50331648
  %28 = or i32 %15, %27
  %29 = or i32 %28, 4097
  br label %30

30:                                               ; preds = %23, %18, %11
  %31 = phi i32 [ %29, %23 ], [ %16, %18 ], [ %16, %11 ]
  %32 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = shl i32 %33, 31
  %35 = or i32 %34, %31
  %36 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 16
  %40 = or i32 %35, %39
  %41 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 127
  %44 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 8
  %47 = and i32 %46, 32512
  %48 = or i32 %47, %43
  %49 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 6, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %50, 16
  %52 = and i32 %51, 8323072
  %53 = or i32 %48, %52
  %54 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 7, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = shl i32 %55, 24
  %57 = and i32 %56, 2130706432
  %58 = or i32 %53, %57
  %59 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 131071
  %62 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %64, %61
  %66 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 8, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 131071
  %69 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 9, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %70, 16
  %72 = or i32 %71, %68
  %73 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 10
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 131071
  %76 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %77, 16
  %79 = or i32 %78, %75
  %80 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %300, label %83

83:                                               ; preds = %30
  %84 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 1
  %85 = load i16, ptr %84, align 4
  %86 = and i16 %85, 511
  %87 = zext i16 %86 to i32
  %88 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 2
  %89 = load i16, ptr %88, align 2
  %90 = and i16 %89, 511
  %91 = zext i16 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or i32 %92, %87
  %94 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 4
  %95 = load i16, ptr %94, align 2
  %96 = shl i16 %95, 9
  %97 = and i16 %96, 7680
  %98 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 9
  %99 = load i16, ptr %98, align 4
  %100 = shl i16 %99, 13
  %101 = or i16 %97, %100
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 3
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %104, 7
  %106 = zext i16 %105 to i32
  %107 = shl nuw nsw i32 %106, 16
  %108 = or i32 %107, %102
  %109 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 5
  %110 = load i16, ptr %109, align 4
  %111 = and i16 %110, 255
  %112 = zext i16 %111 to i32
  %113 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 6
  %114 = load i16, ptr %113, align 2
  %115 = and i16 %114, 1023
  %116 = zext i16 %115 to i32
  %117 = shl nuw nsw i32 %116, 16
  %118 = or i32 %117, %112
  %119 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 7
  %120 = load i16, ptr %119, align 4
  %121 = and i16 %120, 1023
  %122 = zext i16 %121 to i32
  %123 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 8
  %124 = load i16, ptr %123, align 2
  %125 = and i16 %124, 1023
  %126 = zext i16 %125 to i32
  %127 = shl nuw nsw i32 %126, 16
  %128 = or i32 %127, %122
  %129 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 10
  %130 = load i16, ptr %129, align 2
  %131 = and i16 %130, 1023
  %132 = zext i16 %131 to i32
  %133 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 10, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = and i16 %134, 1023
  %136 = zext i16 %135 to i32
  %137 = shl nuw nsw i32 %136, 10
  %138 = or i32 %137, %132
  %139 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 10, i32 2
  %140 = load i16, ptr %139, align 2
  %141 = and i16 %140, 1023
  %142 = zext i16 %141 to i32
  %143 = shl nuw nsw i32 %142, 20
  %144 = or i32 %138, %143
  %145 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 11
  %146 = load i16, ptr %145, align 4
  %147 = and i16 %146, 1023
  %148 = zext i16 %147 to i32
  %149 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 11, i32 1
  %150 = load i16, ptr %149, align 2
  %151 = and i16 %150, 1023
  %152 = zext i16 %151 to i32
  %153 = shl nuw nsw i32 %152, 10
  %154 = or i32 %153, %148
  %155 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 11, i32 2
  %156 = load i16, ptr %155, align 4
  %157 = and i16 %156, 1023
  %158 = zext i16 %157 to i32
  %159 = shl nuw nsw i32 %158, 20
  %160 = or i32 %154, %159
  %161 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 12
  %162 = load i16, ptr %161, align 2
  %163 = and i16 %162, 1023
  %164 = zext i16 %163 to i32
  %165 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 12, i32 1
  %166 = load i16, ptr %165, align 2
  %167 = and i16 %166, 1023
  %168 = zext i16 %167 to i32
  %169 = shl nuw nsw i32 %168, 10
  %170 = or i32 %169, %164
  %171 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 28, i32 12, i32 2
  %172 = load i16, ptr %171, align 2
  %173 = and i16 %172, 1023
  %174 = zext i16 %173 to i32
  %175 = shl nuw nsw i32 %174, 20
  %176 = or i32 %170, %175
  %177 = add i32 %2, 36
  %178 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %181 = and i32 %180, %179
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %83
  %184 = load i32, ptr @__drm_debug, align 4
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = add i32 %189, %177
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, i32 noundef %190, i32 noundef %93) #5
  br label %191

191:                                              ; preds = %187, %183, %83
  %192 = load ptr, ptr %0, align 4
  %193 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr i8, ptr %192, i32 %194
  %196 = getelementptr i8, ptr %195, i32 %177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %93) #5, !srcloc !8
  %197 = add i32 %2, 40
  %198 = load i32, ptr %178, align 4
  %199 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %200 = and i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %209, label %202

202:                                              ; preds = %191
  %203 = load i32, ptr @__drm_debug, align 4
  %204 = and i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %193, align 4
  %208 = add i32 %207, %197
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %208, i32 noundef %108) #5
  br label %209

209:                                              ; preds = %206, %202, %191
  %210 = load ptr, ptr %0, align 4
  %211 = load i32, ptr %193, align 4
  %212 = getelementptr i8, ptr %210, i32 %211
  %213 = getelementptr i8, ptr %212, i32 %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %108) #5, !srcloc !8
  %214 = add i32 %2, 44
  %215 = load i32, ptr %178, align 4
  %216 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %217 = and i32 %216, %215
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %209
  %220 = load i32, ptr @__drm_debug, align 4
  %221 = and i32 %220, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = load i32, ptr %193, align 4
  %225 = add i32 %224, %214
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34, i32 noundef %225, i32 noundef %118) #5
  br label %226

226:                                              ; preds = %223, %219, %209
  %227 = load ptr, ptr %0, align 4
  %228 = load i32, ptr %193, align 4
  %229 = getelementptr i8, ptr %227, i32 %228
  %230 = getelementptr i8, ptr %229, i32 %214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %118) #5, !srcloc !8
  %231 = add i32 %2, 48
  %232 = load i32, ptr %178, align 4
  %233 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %234 = and i32 %233, %232
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %226
  %237 = load i32, ptr @__drm_debug, align 4
  %238 = and i32 %237, 2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %193, align 4
  %242 = add i32 %241, %231
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.35, i32 noundef %242, i32 noundef %128) #5
  br label %243

243:                                              ; preds = %240, %236, %226
  %244 = load ptr, ptr %0, align 4
  %245 = load i32, ptr %193, align 4
  %246 = getelementptr i8, ptr %244, i32 %245
  %247 = getelementptr i8, ptr %246, i32 %231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %128) #5, !srcloc !8
  %248 = add i32 %2, 52
  %249 = load i32, ptr %178, align 4
  %250 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %251 = and i32 %250, %249
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %243
  %254 = load i32, ptr @__drm_debug, align 4
  %255 = and i32 %254, 2
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = load i32, ptr %193, align 4
  %259 = add i32 %258, %248
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36, i32 noundef %259, i32 noundef %144) #5
  br label %260

260:                                              ; preds = %257, %253, %243
  %261 = load ptr, ptr %0, align 4
  %262 = load i32, ptr %193, align 4
  %263 = getelementptr i8, ptr %261, i32 %262
  %264 = getelementptr i8, ptr %263, i32 %248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %144) #5, !srcloc !8
  %265 = add i32 %2, 56
  %266 = load i32, ptr %178, align 4
  %267 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %268 = and i32 %267, %266
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %260
  %271 = load i32, ptr @__drm_debug, align 4
  %272 = and i32 %271, 2
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = load i32, ptr %193, align 4
  %276 = add i32 %275, %265
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef %276, i32 noundef %160) #5
  br label %277

277:                                              ; preds = %274, %270, %260
  %278 = load ptr, ptr %0, align 4
  %279 = load i32, ptr %193, align 4
  %280 = getelementptr i8, ptr %278, i32 %279
  %281 = getelementptr i8, ptr %280, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %281, i32 %160) #5, !srcloc !8
  %282 = add i32 %2, 60
  %283 = load i32, ptr %178, align 4
  %284 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %285 = and i32 %284, %283
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %294, label %287

287:                                              ; preds = %277
  %288 = load i32, ptr @__drm_debug, align 4
  %289 = and i32 %288, 2
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %193, align 4
  %293 = add i32 %292, %282
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef %293, i32 noundef %176) #5
  br label %294

294:                                              ; preds = %291, %287, %277
  %295 = load ptr, ptr %0, align 4
  %296 = load i32, ptr %193, align 4
  %297 = getelementptr i8, ptr %295, i32 %296
  %298 = getelementptr i8, ptr %297, i32 %282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %176) #5, !srcloc !8
  %299 = or i32 %40, 256
  br label %300

300:                                              ; preds = %294, %30
  %301 = phi i32 [ %299, %294 ], [ %40, %30 ]
  %302 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 16
  %303 = load i32, ptr %302, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %714, label %305

305:                                              ; preds = %300
  %306 = icmp ult i32 %3, 8196
  br i1 %306, label %307, label %574

307:                                              ; preds = %305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #5
  store i32 %303, ptr %7, align 4
  %308 = load volatile i32, ptr %7, align 4
  %309 = and i32 %308, 2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %318, label %311

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 23
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 800
  br i1 %314, label %315, label %318

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 22
  %317 = load ptr, ptr %316, align 4
  store ptr %317, ptr %8, align 4
  br label %318

318:                                              ; preds = %315, %311, %307
  %319 = phi ptr [ %317, %315 ], [ null, %311 ], [ null, %307 ]
  %320 = phi i32 [ 1, %315 ], [ 0, %311 ], [ 0, %307 ]
  %321 = load volatile i32, ptr %7, align 4
  %322 = and i32 %321, 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %338, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 18
  %326 = load i32, ptr %325, align 4
  %327 = icmp ult i32 %326, 9
  br i1 %327, label %328, label %338

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 25
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, 2160
  br i1 %331, label %332, label %338

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 24
  %334 = load ptr, ptr %333, align 4
  %335 = mul nuw nsw i32 %326, 60
  %336 = getelementptr i32, ptr %334, i32 %335
  %337 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 1
  store ptr %336, ptr %337, align 4
  br label %338

338:                                              ; preds = %332, %328, %324, %318
  %339 = phi i32 [ 1, %332 ], [ %320, %328 ], [ %320, %324 ], [ %320, %318 ]
  %340 = load volatile i32, ptr %7, align 4
  %341 = and i32 %340, 8
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %357, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 19
  %345 = load i32, ptr %344, align 4
  %346 = icmp ult i32 %345, 9
  br i1 %346, label %347, label %357

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 25
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 2160
  br i1 %350, label %351, label %357

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 24
  %353 = load ptr, ptr %352, align 4
  %354 = mul nuw nsw i32 %345, 60
  %355 = getelementptr i32, ptr %353, i32 %354
  %356 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 2
  store ptr %355, ptr %356, align 4
  br label %357

357:                                              ; preds = %351, %347, %343, %338
  %358 = phi i32 [ 1, %351 ], [ %339, %347 ], [ %339, %343 ], [ %339, %338 ]
  %359 = load volatile i32, ptr %7, align 4
  %360 = and i32 %359, 16
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %376, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 20
  %364 = load i32, ptr %363, align 4
  %365 = icmp ult i32 %364, 10
  br i1 %365, label %366, label %376

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 27
  %368 = load i32, ptr %367, align 4
  %369 = icmp eq i32 %368, 2400
  br i1 %369, label %370, label %376

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 26
  %372 = load ptr, ptr %371, align 4
  %373 = mul nuw nsw i32 %364, 60
  %374 = getelementptr i32, ptr %372, i32 %373
  %375 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 3
  store ptr %374, ptr %375, align 4
  br label %376

376:                                              ; preds = %370, %366, %362, %357
  %377 = phi i32 [ 1, %370 ], [ %358, %366 ], [ %358, %362 ], [ %358, %357 ]
  %378 = load volatile i32, ptr %7, align 4
  %379 = and i32 %378, 32
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %395, label %381

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 21
  %383 = load i32, ptr %382, align 4
  %384 = icmp ult i32 %383, 10
  br i1 %384, label %385, label %395

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 27
  %387 = load i32, ptr %386, align 4
  %388 = icmp eq i32 %387, 2400
  br i1 %388, label %389, label %395

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 26
  %391 = load ptr, ptr %390, align 4
  %392 = mul nuw nsw i32 %383, 60
  %393 = getelementptr i32, ptr %391, i32 %392
  %394 = getelementptr inbounds [5 x ptr], ptr %8, i32 0, i32 4
  store ptr %393, ptr %394, align 4
  br label %397

395:                                              ; preds = %385, %381, %376
  %396 = icmp eq i32 %377, 0
  br i1 %396, label %548, label %397

397:                                              ; preds = %395, %389
  %398 = add i32 %2, 256
  %399 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %400 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  br label %401

401:                                              ; preds = %545, %397
  %402 = phi ptr [ %319, %397 ], [ %547, %545 ]
  %403 = phi i32 [ 0, %397 ], [ %543, %545 ]
  %404 = icmp eq ptr %402, null
  br i1 %404, label %542, label %405

405:                                              ; preds = %401
  %406 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 0
  %407 = load i32, ptr %406, align 4
  %408 = shl i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %438, label %410

410:                                              ; preds = %405
  %411 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 0, i32 1
  %412 = load i32, ptr %411, align 4
  %413 = add i32 %412, %398
  br label %414

414:                                              ; preds = %431, %410
  %415 = phi i32 [ %417, %431 ], [ 0, %410 ]
  %416 = phi i32 [ %436, %431 ], [ %413, %410 ]
  %417 = add nuw i32 %415, 1
  %418 = getelementptr i32, ptr %402, i32 %415
  %419 = load i32, ptr %418, align 4
  %420 = load i32, ptr %399, align 4
  %421 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %422 = and i32 %421, %420
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %431, label %424

424:                                              ; preds = %414
  %425 = load i32, ptr @__drm_debug, align 4
  %426 = and i32 %425, 2
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %424
  %429 = load i32, ptr %400, align 4
  %430 = add i32 %429, %416
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %430, i32 noundef %419) #5
  br label %431

431:                                              ; preds = %428, %424, %414
  %432 = load ptr, ptr %0, align 4
  %433 = load i32, ptr %400, align 4
  %434 = getelementptr i8, ptr %432, i32 %433
  %435 = getelementptr i8, ptr %434, i32 %416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 %419) #5, !srcloc !8
  %436 = add i32 %416, 4
  %437 = icmp eq i32 %417, %408
  br i1 %437, label %438, label %414

438:                                              ; preds = %431, %405
  %439 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 1
  %440 = load i32, ptr %439, align 4
  %441 = shl i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %472, label %443

443:                                              ; preds = %438
  %444 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 1, i32 1
  %445 = load i32, ptr %444, align 4
  %446 = add i32 %445, %398
  %447 = add i32 %441, %408
  br label %448

448:                                              ; preds = %465, %443
  %449 = phi i32 [ %451, %465 ], [ %408, %443 ]
  %450 = phi i32 [ %470, %465 ], [ %446, %443 ]
  %451 = add i32 %449, 1
  %452 = getelementptr i32, ptr %402, i32 %449
  %453 = load i32, ptr %452, align 4
  %454 = load i32, ptr %399, align 4
  %455 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %456 = and i32 %455, %454
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %465, label %458

458:                                              ; preds = %448
  %459 = load i32, ptr @__drm_debug, align 4
  %460 = and i32 %459, 2
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %458
  %463 = load i32, ptr %400, align 4
  %464 = add i32 %463, %450
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %464, i32 noundef %453) #5
  br label %465

465:                                              ; preds = %462, %458, %448
  %466 = load ptr, ptr %0, align 4
  %467 = load i32, ptr %400, align 4
  %468 = getelementptr i8, ptr %466, i32 %467
  %469 = getelementptr i8, ptr %468, i32 %450
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %469, i32 %453) #5, !srcloc !8
  %470 = add i32 %450, 4
  %471 = icmp eq i32 %451, %447
  br i1 %471, label %472, label %448

472:                                              ; preds = %465, %438
  %473 = phi i32 [ %408, %438 ], [ %447, %465 ]
  %474 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 2
  %475 = load i32, ptr %474, align 4
  %476 = shl i32 %475, 2
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %507, label %478

478:                                              ; preds = %472
  %479 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 2, i32 1
  %480 = load i32, ptr %479, align 4
  %481 = add i32 %480, %398
  %482 = add i32 %476, %473
  br label %483

483:                                              ; preds = %500, %478
  %484 = phi i32 [ %486, %500 ], [ %473, %478 ]
  %485 = phi i32 [ %505, %500 ], [ %481, %478 ]
  %486 = add i32 %484, 1
  %487 = getelementptr i32, ptr %402, i32 %484
  %488 = load i32, ptr %487, align 4
  %489 = load i32, ptr %399, align 4
  %490 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %491 = and i32 %490, %489
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %500, label %493

493:                                              ; preds = %483
  %494 = load i32, ptr @__drm_debug, align 4
  %495 = and i32 %494, 2
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %500, label %497

497:                                              ; preds = %493
  %498 = load i32, ptr %400, align 4
  %499 = add i32 %498, %485
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %499, i32 noundef %488) #5
  br label %500

500:                                              ; preds = %497, %493, %483
  %501 = load ptr, ptr %0, align 4
  %502 = load i32, ptr %400, align 4
  %503 = getelementptr i8, ptr %501, i32 %502
  %504 = getelementptr i8, ptr %503, i32 %485
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %504, i32 %488) #5, !srcloc !8
  %505 = add i32 %485, 4
  %506 = icmp eq i32 %486, %482
  br i1 %506, label %507, label %483

507:                                              ; preds = %500, %472
  %508 = phi i32 [ %473, %472 ], [ %482, %500 ]
  %509 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 3
  %510 = load i32, ptr %509, align 4
  %511 = shl i32 %510, 2
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %542, label %513

513:                                              ; preds = %507
  %514 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %403, i32 3, i32 1
  %515 = load i32, ptr %514, align 4
  %516 = add i32 %515, %398
  %517 = add i32 %511, %508
  br label %518

518:                                              ; preds = %535, %513
  %519 = phi i32 [ %521, %535 ], [ %508, %513 ]
  %520 = phi i32 [ %540, %535 ], [ %516, %513 ]
  %521 = add i32 %519, 1
  %522 = getelementptr i32, ptr %402, i32 %519
  %523 = load i32, ptr %522, align 4
  %524 = load i32, ptr %399, align 4
  %525 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %526 = and i32 %525, %524
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %535, label %528

528:                                              ; preds = %518
  %529 = load i32, ptr @__drm_debug, align 4
  %530 = and i32 %529, 2
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %528
  %533 = load i32, ptr %400, align 4
  %534 = add i32 %533, %520
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %534, i32 noundef %523) #5
  br label %535

535:                                              ; preds = %532, %528, %518
  %536 = load ptr, ptr %0, align 4
  %537 = load i32, ptr %400, align 4
  %538 = getelementptr i8, ptr %536, i32 %537
  %539 = getelementptr i8, ptr %538, i32 %520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %539, i32 %523) #5, !srcloc !8
  %540 = add i32 %520, 4
  %541 = icmp eq i32 %521, %517
  br i1 %541, label %542, label %518

542:                                              ; preds = %535, %507, %401
  %543 = add nuw nsw i32 %403, 1
  %544 = icmp eq i32 %543, 5
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = getelementptr [5 x ptr], ptr %8, i32 0, i32 %543
  %547 = load ptr, ptr %546, align 4
  br label %401

548:                                              ; preds = %542, %395
  %549 = load volatile i32, ptr %7, align 4
  %550 = and i32 %549, 1
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %573, label %552

552:                                              ; preds = %548
  %553 = add i32 %2, 76
  %554 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %555 = load i32, ptr %554, align 4
  %556 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %557 = and i32 %556, %555
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %567, label %559

559:                                              ; preds = %552
  %560 = load i32, ptr @__drm_debug, align 4
  %561 = and i32 %560, 2
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %567, label %563

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %565 = load i32, ptr %564, align 4
  %566 = add i32 %565, %553
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, i32 noundef %566, i32 noundef 1) #5
  br label %567

567:                                              ; preds = %563, %559, %552
  %568 = load ptr, ptr %0, align 4
  %569 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %570 = load i32, ptr %569, align 4
  %571 = getelementptr i8, ptr %568, i32 %570
  %572 = getelementptr i8, ptr %571, i32 %553
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %572, i32 1) #5, !srcloc !8
  br label %573

573:                                              ; preds = %567, %548
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %714

574:                                              ; preds = %305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %575 = add i32 %2, 96
  %576 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 29
  %577 = load i32, ptr %576, align 4
  %578 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %579 = load i32, ptr %578, align 4
  %580 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %581 = and i32 %580, %579
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %591, label %583

583:                                              ; preds = %574
  %584 = load i32, ptr @__drm_debug, align 4
  %585 = and i32 %584, 2
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %591, label %587

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %589 = load i32, ptr %588, align 4
  %590 = add i32 %589, %575
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, i32 noundef %590, i32 noundef %577) #5
  br label %591

591:                                              ; preds = %587, %583, %574
  %592 = load ptr, ptr %0, align 4
  %593 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %594 = load i32, ptr %593, align 4
  %595 = getelementptr i8, ptr %592, i32 %594
  %596 = getelementptr i8, ptr %595, i32 %575
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %596, i32 %577) #5, !srcloc !8
  %597 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 26
  %598 = load ptr, ptr %597, align 4
  %599 = icmp eq ptr %598, null
  br i1 %599, label %713, label %600

600:                                              ; preds = %591
  %601 = load i32, ptr %302, align 4
  store i32 %601, ptr %6, align 4
  %602 = load volatile i32, ptr %6, align 4
  %603 = and i32 %602, 16
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %616, label %605

605:                                              ; preds = %600
  %606 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 20
  %607 = load i32, ptr %606, align 4
  %608 = icmp ult i32 %607, 10
  br i1 %608, label %609, label %616

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 27
  %611 = load i32, ptr %610, align 4
  %612 = icmp eq i32 %611, 1320
  br i1 %612, label %613, label %616

613:                                              ; preds = %609
  %614 = mul nuw nsw i32 %607, 33
  %615 = getelementptr i32, ptr %598, i32 %614
  br label %616

616:                                              ; preds = %613, %609, %605, %600
  %617 = phi ptr [ null, %600 ], [ %615, %613 ], [ null, %609 ], [ null, %605 ]
  %618 = phi i1 [ true, %600 ], [ false, %613 ], [ true, %609 ], [ true, %605 ]
  %619 = load volatile i32, ptr %6, align 4
  %620 = and i32 %619, 32
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %633, label %622

622:                                              ; preds = %616
  %623 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 21
  %624 = load i32, ptr %623, align 4
  %625 = icmp ult i32 %624, 10
  br i1 %625, label %626, label %633

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 27
  %628 = load i32, ptr %627, align 4
  %629 = icmp eq i32 %628, 1320
  br i1 %629, label %630, label %633

630:                                              ; preds = %626
  %631 = mul nuw nsw i32 %624, 33
  %632 = getelementptr i32, ptr %598, i32 %631
  br label %634

633:                                              ; preds = %626, %622, %616
  br i1 %618, label %691, label %634

634:                                              ; preds = %633, %630
  %635 = phi ptr [ %632, %630 ], [ null, %633 ]
  %636 = icmp eq ptr %617, null
  br i1 %636, label %663, label %637

637:                                              ; preds = %634
  %638 = add i32 %2, 256
  br label %639

639:                                              ; preds = %656, %637
  %640 = phi i32 [ 0, %637 ], [ %642, %656 ]
  %641 = phi i32 [ %638, %637 ], [ %661, %656 ]
  %642 = add nuw nsw i32 %640, 1
  %643 = getelementptr i32, ptr %617, i32 %640
  %644 = load i32, ptr %643, align 4
  %645 = load i32, ptr %578, align 4
  %646 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %647 = and i32 %646, %645
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %656, label %649

649:                                              ; preds = %639
  %650 = load i32, ptr @__drm_debug, align 4
  %651 = and i32 %650, 2
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %656, label %653

653:                                              ; preds = %649
  %654 = load i32, ptr %593, align 4
  %655 = add i32 %654, %641
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %655, i32 noundef %644) #5
  br label %656

656:                                              ; preds = %653, %649, %639
  %657 = load ptr, ptr %0, align 4
  %658 = load i32, ptr %593, align 4
  %659 = getelementptr i8, ptr %657, i32 %658
  %660 = getelementptr i8, ptr %659, i32 %641
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %660, i32 %644) #5, !srcloc !8
  %661 = add i32 %641, 4
  %662 = icmp eq i32 %642, 33
  br i1 %662, label %663, label %639

663:                                              ; preds = %656, %634
  %664 = icmp eq ptr %635, null
  br i1 %664, label %691, label %665

665:                                              ; preds = %663
  %666 = add i32 %2, 768
  br label %667

667:                                              ; preds = %684, %665
  %668 = phi i32 [ 0, %665 ], [ %670, %684 ]
  %669 = phi i32 [ %666, %665 ], [ %689, %684 ]
  %670 = add nuw nsw i32 %668, 1
  %671 = getelementptr i32, ptr %635, i32 %668
  %672 = load i32, ptr %671, align 4
  %673 = load i32, ptr %578, align 4
  %674 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %675 = and i32 %674, %673
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %684, label %677

677:                                              ; preds = %667
  %678 = load i32, ptr @__drm_debug, align 4
  %679 = and i32 %678, 2
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %684, label %681

681:                                              ; preds = %677
  %682 = load i32, ptr %593, align 4
  %683 = add i32 %682, %669
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %683, i32 noundef %672) #5
  br label %684

684:                                              ; preds = %681, %677, %667
  %685 = load ptr, ptr %0, align 4
  %686 = load i32, ptr %593, align 4
  %687 = getelementptr i8, ptr %685, i32 %686
  %688 = getelementptr i8, ptr %687, i32 %669
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %688, i32 %672) #5, !srcloc !8
  %689 = add i32 %669, 4
  %690 = icmp eq i32 %670, 33
  br i1 %690, label %691, label %667

691:                                              ; preds = %684, %663, %633
  %692 = load volatile i32, ptr %6, align 4
  %693 = and i32 %692, 1
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %713, label %695

695:                                              ; preds = %691
  %696 = add i32 %2, 76
  %697 = load i32, ptr %578, align 4
  %698 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %699 = and i32 %698, %697
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %708, label %701

701:                                              ; preds = %695
  %702 = load i32, ptr @__drm_debug, align 4
  %703 = and i32 %702, 2
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %708, label %705

705:                                              ; preds = %701
  %706 = load i32, ptr %593, align 4
  %707 = add i32 %706, %696
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, i32 noundef %707, i32 noundef 1) #5
  br label %708

708:                                              ; preds = %705, %701, %695
  %709 = load ptr, ptr %0, align 4
  %710 = load i32, ptr %593, align 4
  %711 = getelementptr i8, ptr %709, i32 %710
  %712 = getelementptr i8, ptr %711, i32 %696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %712, i32 1) #5, !srcloc !8
  br label %713

713:                                              ; preds = %708, %691, %591
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %714

714:                                              ; preds = %713, %573, %300
  %715 = icmp eq i32 %3, 4098
  br i1 %715, label %716, label %755

716:                                              ; preds = %714
  %717 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 2
  %718 = load i32, ptr %717, align 4
  %719 = and i32 %718, 63
  %720 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 4
  %721 = load i32, ptr %720, align 4
  %722 = shl i32 %721, 8
  %723 = and i32 %722, 16128
  %724 = or i32 %723, %719
  %725 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 2, i32 1
  %726 = load i32, ptr %725, align 4
  %727 = shl i32 %726, 16
  %728 = and i32 %727, 4128768
  %729 = or i32 %724, %728
  %730 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 4, i32 1
  %731 = load i32, ptr %730, align 4
  %732 = shl i32 %731, 24
  %733 = and i32 %732, 1056964608
  %734 = or i32 %729, %733
  %735 = add i32 %2, 12
  %736 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %737 = load i32, ptr %736, align 4
  %738 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %739 = and i32 %738, %737
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %749, label %741

741:                                              ; preds = %716
  %742 = load i32, ptr @__drm_debug, align 4
  %743 = and i32 %742, 2
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %749, label %745

745:                                              ; preds = %741
  %746 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %747 = load i32, ptr %746, align 4
  %748 = add i32 %747, %735
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %748, i32 noundef %734) #5
  br label %749

749:                                              ; preds = %745, %741, %716
  %750 = load ptr, ptr %0, align 4
  %751 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %752 = load i32, ptr %751, align 4
  %753 = getelementptr i8, ptr %750, i32 %752
  %754 = getelementptr i8, ptr %753, i32 %735
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %754, i32 %734) #5, !srcloc !8
  br label %839

755:                                              ; preds = %714
  %756 = add i32 %2, 144
  %757 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 2
  %758 = load i32, ptr %757, align 4
  %759 = and i32 %758, 2097151
  %760 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %761 = load i32, ptr %760, align 4
  %762 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %763 = and i32 %762, %761
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %773, label %765

765:                                              ; preds = %755
  %766 = load i32, ptr @__drm_debug, align 4
  %767 = and i32 %766, 2
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %773, label %769

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %771 = load i32, ptr %770, align 4
  %772 = add i32 %771, %756
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %772, i32 noundef %759) #5
  br label %773

773:                                              ; preds = %769, %765, %755
  %774 = load ptr, ptr %0, align 4
  %775 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %776 = load i32, ptr %775, align 4
  %777 = getelementptr i8, ptr %774, i32 %776
  %778 = getelementptr i8, ptr %777, i32 %756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %778, i32 %759) #5, !srcloc !8
  %779 = add i32 %2, 148
  %780 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 4
  %781 = load i32, ptr %780, align 4
  %782 = and i32 %781, 2097151
  %783 = load i32, ptr %760, align 4
  %784 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %785 = and i32 %784, %783
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %794, label %787

787:                                              ; preds = %773
  %788 = load i32, ptr @__drm_debug, align 4
  %789 = and i32 %788, 2
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %794, label %791

791:                                              ; preds = %787
  %792 = load i32, ptr %775, align 4
  %793 = add i32 %792, %779
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %793, i32 noundef %782) #5
  br label %794

794:                                              ; preds = %791, %787, %773
  %795 = load ptr, ptr %0, align 4
  %796 = load i32, ptr %775, align 4
  %797 = getelementptr i8, ptr %795, i32 %796
  %798 = getelementptr i8, ptr %797, i32 %779
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %798, i32 %782) #5, !srcloc !8
  %799 = add i32 %2, 152
  %800 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 2, i32 1
  %801 = load i32, ptr %800, align 4
  %802 = and i32 %801, 2097151
  %803 = load i32, ptr %760, align 4
  %804 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %805 = and i32 %804, %803
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %814, label %807

807:                                              ; preds = %794
  %808 = load i32, ptr @__drm_debug, align 4
  %809 = and i32 %808, 2
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %814, label %811

811:                                              ; preds = %807
  %812 = load i32, ptr %775, align 4
  %813 = add i32 %812, %799
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef %813, i32 noundef %802) #5
  br label %814

814:                                              ; preds = %811, %807, %794
  %815 = load ptr, ptr %0, align 4
  %816 = load i32, ptr %775, align 4
  %817 = getelementptr i8, ptr %815, i32 %816
  %818 = getelementptr i8, ptr %817, i32 %799
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %818, i32 %802) #5, !srcloc !8
  %819 = add i32 %2, 156
  %820 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 4, i32 1
  %821 = load i32, ptr %820, align 4
  %822 = and i32 %821, 2097151
  %823 = load i32, ptr %760, align 4
  %824 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %825 = and i32 %824, %823
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %834, label %827

827:                                              ; preds = %814
  %828 = load i32, ptr @__drm_debug, align 4
  %829 = and i32 %828, 2
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %834, label %831

831:                                              ; preds = %827
  %832 = load i32, ptr %775, align 4
  %833 = add i32 %832, %819
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %833, i32 noundef %822) #5
  br label %834

834:                                              ; preds = %831, %827, %814
  %835 = load ptr, ptr %0, align 4
  %836 = load i32, ptr %775, align 4
  %837 = getelementptr i8, ptr %835, i32 %836
  %838 = getelementptr i8, ptr %837, i32 %819
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %838, i32 %822) #5, !srcloc !8
  br label %839

839:                                              ; preds = %834, %749
  %840 = add i32 %2, 16
  %841 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 3
  %842 = load i32, ptr %841, align 4
  %843 = and i32 %842, 16777215
  %844 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %845 = load i32, ptr %844, align 4
  %846 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %847 = and i32 %846, %845
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %857, label %849

849:                                              ; preds = %839
  %850 = load i32, ptr @__drm_debug, align 4
  %851 = and i32 %850, 2
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %857, label %853

853:                                              ; preds = %849
  %854 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %855 = load i32, ptr %854, align 4
  %856 = add i32 %855, %840
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %856, i32 noundef %843) #5
  br label %857

857:                                              ; preds = %853, %849, %839
  %858 = load ptr, ptr %0, align 4
  %859 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %860 = load i32, ptr %859, align 4
  %861 = getelementptr i8, ptr %858, i32 %860
  %862 = getelementptr i8, ptr %861, i32 %840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %862, i32 %843) #5, !srcloc !8
  %863 = add i32 %2, 20
  %864 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 5
  %865 = load i32, ptr %864, align 4
  %866 = and i32 %865, 16777215
  %867 = load i32, ptr %844, align 4
  %868 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %869 = and i32 %868, %867
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %878, label %871

871:                                              ; preds = %857
  %872 = load i32, ptr @__drm_debug, align 4
  %873 = and i32 %872, 2
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %878, label %875

875:                                              ; preds = %871
  %876 = load i32, ptr %859, align 4
  %877 = add i32 %876, %863
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %877, i32 noundef %866) #5
  br label %878

878:                                              ; preds = %875, %871, %857
  %879 = load ptr, ptr %0, align 4
  %880 = load i32, ptr %859, align 4
  %881 = getelementptr i8, ptr %879, i32 %880
  %882 = getelementptr i8, ptr %881, i32 %863
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %882, i32 %866) #5, !srcloc !8
  %883 = add i32 %2, 24
  %884 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 3, i32 1
  %885 = load i32, ptr %884, align 4
  %886 = and i32 %885, 16777215
  %887 = load i32, ptr %844, align 4
  %888 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %889 = and i32 %888, %887
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %898, label %891

891:                                              ; preds = %878
  %892 = load i32, ptr @__drm_debug, align 4
  %893 = and i32 %892, 2
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %898, label %895

895:                                              ; preds = %891
  %896 = load i32, ptr %859, align 4
  %897 = add i32 %896, %883
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %897, i32 noundef %886) #5
  br label %898

898:                                              ; preds = %895, %891, %878
  %899 = load ptr, ptr %0, align 4
  %900 = load i32, ptr %859, align 4
  %901 = getelementptr i8, ptr %899, i32 %900
  %902 = getelementptr i8, ptr %901, i32 %883
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %902, i32 %886) #5, !srcloc !8
  %903 = add i32 %2, 28
  %904 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 5, i32 1
  %905 = load i32, ptr %904, align 4
  %906 = and i32 %905, 16777215
  %907 = load i32, ptr %844, align 4
  %908 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %909 = and i32 %908, %907
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %918, label %911

911:                                              ; preds = %898
  %912 = load i32, ptr @__drm_debug, align 4
  %913 = and i32 %912, 2
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %918, label %915

915:                                              ; preds = %911
  %916 = load i32, ptr %859, align 4
  %917 = add i32 %916, %903
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %917, i32 noundef %906) #5
  br label %918

918:                                              ; preds = %915, %911, %898
  %919 = load ptr, ptr %0, align 4
  %920 = load i32, ptr %859, align 4
  %921 = getelementptr i8, ptr %919, i32 %920
  %922 = getelementptr i8, ptr %921, i32 %903
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %922, i32 %906) #5, !srcloc !8
  %923 = add i32 %2, 32
  %924 = load i32, ptr %844, align 4
  %925 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %926 = and i32 %925, %924
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %935, label %928

928:                                              ; preds = %918
  %929 = load i32, ptr @__drm_debug, align 4
  %930 = and i32 %929, 2
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %935, label %932

932:                                              ; preds = %928
  %933 = load i32, ptr %859, align 4
  %934 = add i32 %933, %923
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %934, i32 noundef %58) #5
  br label %935

935:                                              ; preds = %932, %928, %918
  %936 = load ptr, ptr %0, align 4
  %937 = load i32, ptr %859, align 4
  %938 = getelementptr i8, ptr %936, i32 %937
  %939 = getelementptr i8, ptr %938, i32 %923
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %939, i32 %58) #5, !srcloc !8
  %940 = add i32 %2, 64
  %941 = load i32, ptr %844, align 4
  %942 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %943 = and i32 %942, %941
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %952, label %945

945:                                              ; preds = %935
  %946 = load i32, ptr @__drm_debug, align 4
  %947 = and i32 %946, 2
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %952, label %949

949:                                              ; preds = %945
  %950 = load i32, ptr %859, align 4
  %951 = add i32 %950, %940
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %951, i32 noundef %65) #5
  br label %952

952:                                              ; preds = %949, %945, %935
  %953 = load ptr, ptr %0, align 4
  %954 = load i32, ptr %859, align 4
  %955 = getelementptr i8, ptr %953, i32 %954
  %956 = getelementptr i8, ptr %955, i32 %940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %956, i32 %65) #5, !srcloc !8
  %957 = add i32 %2, 68
  %958 = load i32, ptr %844, align 4
  %959 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %960 = and i32 %959, %958
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %969, label %962

962:                                              ; preds = %952
  %963 = load i32, ptr @__drm_debug, align 4
  %964 = and i32 %963, 2
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %969, label %966

966:                                              ; preds = %962
  %967 = load i32, ptr %859, align 4
  %968 = add i32 %967, %957
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %968, i32 noundef %72) #5
  br label %969

969:                                              ; preds = %966, %962, %952
  %970 = load ptr, ptr %0, align 4
  %971 = load i32, ptr %859, align 4
  %972 = getelementptr i8, ptr %970, i32 %971
  %973 = getelementptr i8, ptr %972, i32 %957
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %973, i32 %72) #5, !srcloc !8
  %974 = add i32 %2, 72
  %975 = load i32, ptr %844, align 4
  %976 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %977 = and i32 %976, %975
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %986, label %979

979:                                              ; preds = %969
  %980 = load i32, ptr @__drm_debug, align 4
  %981 = and i32 %980, 2
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %986, label %983

983:                                              ; preds = %979
  %984 = load i32, ptr %859, align 4
  %985 = add i32 %984, %974
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %985, i32 noundef %79) #5
  br label %986

986:                                              ; preds = %983, %979, %969
  %987 = load ptr, ptr %0, align 4
  %988 = load i32, ptr %859, align 4
  %989 = getelementptr i8, ptr %987, i32 %988
  %990 = getelementptr i8, ptr %989, i32 %974
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %990, i32 %79) #5, !srcloc !8
  br label %991

991:                                              ; preds = %986, %5
  %992 = phi i32 [ %301, %986 ], [ 0, %5 ]
  %993 = icmp eq ptr %4, null
  br i1 %993, label %1017, label %994

994:                                              ; preds = %991
  %995 = getelementptr inbounds %struct.dpu_format, ptr %4, i32 0, i32 12
  %996 = load volatile i32, ptr %995, align 4
  %997 = shl i32 %996, 13
  %998 = and i32 %997, 16384
  %999 = xor i32 %998, 16384
  %1000 = or i32 %999, %992
  %1001 = getelementptr inbounds %struct.dpu_format, ptr %4, i32 0, i32 9
  %1002 = load i8, ptr %1001, align 4
  %1003 = icmp eq i8 %1002, 0
  br i1 %1003, label %1017, label %1004

1004:                                             ; preds = %994
  %1005 = or i32 %1000, 1024
  %1006 = icmp eq i32 %3, 4098
  %1007 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %1, i32 0, i32 14
  %1008 = load i32, ptr %1007, align 4
  br i1 %1006, label %1009, label %1013

1009:                                             ; preds = %1004
  %1010 = shl i32 %1008, 30
  %1011 = and i32 %1010, 1073741824
  %1012 = or i32 %1011, %1005
  br label %1017

1013:                                             ; preds = %1004
  %1014 = shl i32 %1008, 29
  %1015 = and i32 %1014, 1610612736
  %1016 = or i32 %1015, %1005
  br label %1017

1017:                                             ; preds = %1013, %1009, %994, %991
  %1018 = phi i32 [ %1012, %1009 ], [ %1016, %1013 ], [ %1000, %994 ], [ %992, %991 ]
  %1019 = add i32 %2, 4
  %1020 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %1021 = load i32, ptr %1020, align 4
  %1022 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %1023 = and i32 %1022, %1021
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1033, label %1025

1025:                                             ; preds = %1017
  %1026 = load i32, ptr @__drm_debug, align 4
  %1027 = and i32 %1026, 2
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1025
  %1030 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %1031 = load i32, ptr %1030, align 4
  %1032 = add i32 %1031, %1019
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %1032, i32 noundef %1018) #5
  br label %1033

1033:                                             ; preds = %1029, %1025, %1017
  %1034 = load ptr, ptr %0, align 4
  %1035 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %1036 = load i32, ptr %1035, align 4
  %1037 = getelementptr i8, ptr %1034, i32 %1036
  %1038 = getelementptr i8, ptr %1037, i32 %1019
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1038, i32 %1018) #5, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_hw_get_scaler3_ver(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_csc_setup(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = select i1 %3, i32 16, i32 8
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %6, 7
  %8 = and i32 %7, 8191
  %9 = getelementptr [9 x i32], ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 9
  %12 = and i32 %11, 536805376
  %13 = or i32 %12, %8
  %14 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i32, ptr @__drm_debug, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %26, i32 noundef %13) #5
  br label %27

27:                                               ; preds = %23, %19, %4
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr i8, ptr %28, i32 %30
  %32 = getelementptr i8, ptr %31, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %13) #5, !srcloc !8
  %33 = getelementptr [9 x i32], ptr %2, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 7
  %36 = and i32 %35, 8191
  %37 = getelementptr [9 x i32], ptr %2, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 9
  %40 = and i32 %39, 536805376
  %41 = or i32 %40, %36
  %42 = add i32 %1, 4
  %43 = load i32, ptr %14, align 4
  %44 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %27
  %48 = load i32, ptr @__drm_debug, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %29, align 4
  %53 = add i32 %52, %42
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %53, i32 noundef %41) #5
  br label %54

54:                                               ; preds = %51, %47, %27
  %55 = load ptr, ptr %0, align 4
  %56 = load i32, ptr %29, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = getelementptr i8, ptr %57, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %41) #5, !srcloc !8
  %59 = getelementptr [9 x i32], ptr %2, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 7
  %62 = and i32 %61, 8191
  %63 = getelementptr [9 x i32], ptr %2, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 %64, 9
  %66 = and i32 %65, 536805376
  %67 = or i32 %66, %62
  %68 = add i32 %1, 8
  %69 = load i32, ptr %14, align 4
  %70 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %71 = and i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %54
  %74 = load i32, ptr @__drm_debug, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %29, align 4
  %79 = add i32 %78, %68
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %79, i32 noundef %67) #5
  br label %80

80:                                               ; preds = %77, %73, %54
  %81 = load ptr, ptr %0, align 4
  %82 = load i32, ptr %29, align 4
  %83 = getelementptr i8, ptr %81, i32 %82
  %84 = getelementptr i8, ptr %83, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %67) #5, !srcloc !8
  %85 = getelementptr [9 x i32], ptr %2, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 7
  %88 = and i32 %87, 8191
  %89 = getelementptr [9 x i32], ptr %2, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = shl i32 %90, 9
  %92 = and i32 %91, 536805376
  %93 = or i32 %92, %88
  %94 = add i32 %1, 12
  %95 = load i32, ptr %14, align 4
  %96 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %97 = and i32 %96, %95
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %80
  %100 = load i32, ptr @__drm_debug, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %29, align 4
  %105 = add i32 %104, %94
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef %105, i32 noundef %93) #5
  br label %106

106:                                              ; preds = %103, %99, %80
  %107 = load ptr, ptr %0, align 4
  %108 = load i32, ptr %29, align 4
  %109 = getelementptr i8, ptr %107, i32 %108
  %110 = getelementptr i8, ptr %109, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %93) #5, !srcloc !8
  %111 = getelementptr [9 x i32], ptr %2, i32 0, i32 8
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 7
  %114 = and i32 %113, 8191
  %115 = add i32 %1, 16
  %116 = load i32, ptr %14, align 4
  %117 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %118 = and i32 %117, %116
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %106
  %121 = load i32, ptr @__drm_debug, align 4
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %29, align 4
  %126 = add i32 %125, %115
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i32 noundef %126, i32 noundef %114) #5
  br label %127

127:                                              ; preds = %124, %120, %106
  %128 = load ptr, ptr %0, align 4
  %129 = load i32, ptr %29, align 4
  %130 = getelementptr i8, ptr %128, i32 %129
  %131 = getelementptr i8, ptr %130, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %114) #5, !srcloc !8
  %132 = getelementptr inbounds %struct.dpu_csc_cfg, ptr %2, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %133, %5
  %135 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 3, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %134, %136
  %138 = add i32 %1, 20
  %139 = load i32, ptr %14, align 4
  %140 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %141 = and i32 %140, %139
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %127
  %144 = load i32, ptr @__drm_debug, align 4
  %145 = and i32 %144, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr %29, align 4
  %149 = add i32 %148, %138
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %149, i32 noundef %137) #5
  br label %150

150:                                              ; preds = %147, %143, %127
  %151 = load ptr, ptr %0, align 4
  %152 = load i32, ptr %29, align 4
  %153 = getelementptr i8, ptr %151, i32 %152
  %154 = getelementptr i8, ptr %153, i32 %138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %137) #5, !srcloc !8
  %155 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 3, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = shl i32 %156, %5
  %158 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 3, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %157, %159
  %161 = add i32 %1, 24
  %162 = load i32, ptr %14, align 4
  %163 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %164 = and i32 %163, %162
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %150
  %167 = load i32, ptr @__drm_debug, align 4
  %168 = and i32 %167, 2
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i32, ptr %29, align 4
  %172 = add i32 %171, %161
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef %172, i32 noundef %160) #5
  br label %173

173:                                              ; preds = %170, %166, %150
  %174 = load ptr, ptr %0, align 4
  %175 = load i32, ptr %29, align 4
  %176 = getelementptr i8, ptr %174, i32 %175
  %177 = getelementptr i8, ptr %176, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %160) #5, !srcloc !8
  %178 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 3, i32 4
  %179 = load i32, ptr %178, align 4
  %180 = shl i32 %179, %5
  %181 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 3, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = or i32 %180, %182
  %184 = add i32 %1, 28
  %185 = load i32, ptr %14, align 4
  %186 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %187 = and i32 %186, %185
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %173
  %190 = load i32, ptr @__drm_debug, align 4
  %191 = and i32 %190, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = load i32, ptr %29, align 4
  %195 = add i32 %194, %184
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, i32 noundef %195, i32 noundef %183) #5
  br label %196

196:                                              ; preds = %193, %189, %173
  %197 = load ptr, ptr %0, align 4
  %198 = load i32, ptr %29, align 4
  %199 = getelementptr i8, ptr %197, i32 %198
  %200 = getelementptr i8, ptr %199, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %183) #5, !srcloc !8
  %201 = getelementptr inbounds %struct.dpu_csc_cfg, ptr %2, i32 0, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = shl i32 %202, %5
  %204 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 4, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = or i32 %203, %205
  %207 = add i32 %1, 32
  %208 = load i32, ptr %14, align 4
  %209 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %210 = and i32 %209, %208
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %196
  %213 = load i32, ptr @__drm_debug, align 4
  %214 = and i32 %213, 2
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load i32, ptr %29, align 4
  %218 = add i32 %217, %207
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, i32 noundef %218, i32 noundef %206) #5
  br label %219

219:                                              ; preds = %216, %212, %196
  %220 = load ptr, ptr %0, align 4
  %221 = load i32, ptr %29, align 4
  %222 = getelementptr i8, ptr %220, i32 %221
  %223 = getelementptr i8, ptr %222, i32 %207
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %206) #5, !srcloc !8
  %224 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 4, i32 2
  %225 = load i32, ptr %224, align 4
  %226 = shl i32 %225, %5
  %227 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 4, i32 3
  %228 = load i32, ptr %227, align 4
  %229 = or i32 %226, %228
  %230 = add i32 %1, 36
  %231 = load i32, ptr %14, align 4
  %232 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %233 = and i32 %232, %231
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %219
  %236 = load i32, ptr @__drm_debug, align 4
  %237 = and i32 %236, 2
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = load i32, ptr %29, align 4
  %241 = add i32 %240, %230
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, i32 noundef %241, i32 noundef %229) #5
  br label %242

242:                                              ; preds = %239, %235, %219
  %243 = load ptr, ptr %0, align 4
  %244 = load i32, ptr %29, align 4
  %245 = getelementptr i8, ptr %243, i32 %244
  %246 = getelementptr i8, ptr %245, i32 %230
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %229) #5, !srcloc !8
  %247 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 4, i32 4
  %248 = load i32, ptr %247, align 4
  %249 = shl i32 %248, %5
  %250 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 4, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = or i32 %249, %251
  %253 = add i32 %1, 40
  %254 = load i32, ptr %14, align 4
  %255 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %256 = and i32 %255, %254
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %242
  %259 = load i32, ptr @__drm_debug, align 4
  %260 = and i32 %259, 2
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %29, align 4
  %264 = add i32 %263, %253
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25, i32 noundef %264, i32 noundef %252) #5
  br label %265

265:                                              ; preds = %262, %258, %242
  %266 = load ptr, ptr %0, align 4
  %267 = load i32, ptr %29, align 4
  %268 = getelementptr i8, ptr %266, i32 %267
  %269 = getelementptr i8, ptr %268, i32 %253
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %252) #5, !srcloc !8
  %270 = add i32 %1, 44
  %271 = getelementptr inbounds %struct.dpu_csc_cfg, ptr %2, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %14, align 4
  %274 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %275 = and i32 %274, %273
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %265
  %278 = load i32, ptr @__drm_debug, align 4
  %279 = and i32 %278, 2
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = load i32, ptr %29, align 4
  %283 = add i32 %282, %270
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef %283, i32 noundef %272) #5
  br label %284

284:                                              ; preds = %281, %277, %265
  %285 = load ptr, ptr %0, align 4
  %286 = load i32, ptr %29, align 4
  %287 = getelementptr i8, ptr %285, i32 %286
  %288 = getelementptr i8, ptr %287, i32 %270
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %288, i32 %272) #5, !srcloc !8
  %289 = add i32 %1, 48
  %290 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 1, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = load i32, ptr %14, align 4
  %293 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %294 = and i32 %293, %292
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %284
  %297 = load i32, ptr @__drm_debug, align 4
  %298 = and i32 %297, 2
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %296
  %301 = load i32, ptr %29, align 4
  %302 = add i32 %301, %289
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef %302, i32 noundef %291) #5
  br label %303

303:                                              ; preds = %300, %296, %284
  %304 = load ptr, ptr %0, align 4
  %305 = load i32, ptr %29, align 4
  %306 = getelementptr i8, ptr %304, i32 %305
  %307 = getelementptr i8, ptr %306, i32 %289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %307, i32 %291) #5, !srcloc !8
  %308 = add i32 %1, 52
  %309 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 1, i32 2
  %310 = load i32, ptr %309, align 4
  %311 = load i32, ptr %14, align 4
  %312 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %313 = and i32 %312, %311
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %303
  %316 = load i32, ptr @__drm_debug, align 4
  %317 = and i32 %316, 2
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  %320 = load i32, ptr %29, align 4
  %321 = add i32 %320, %308
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28, i32 noundef %321, i32 noundef %310) #5
  br label %322

322:                                              ; preds = %319, %315, %303
  %323 = load ptr, ptr %0, align 4
  %324 = load i32, ptr %29, align 4
  %325 = getelementptr i8, ptr %323, i32 %324
  %326 = getelementptr i8, ptr %325, i32 %308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %310) #5, !srcloc !8
  %327 = add i32 %1, 56
  %328 = getelementptr inbounds %struct.dpu_csc_cfg, ptr %2, i32 0, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = load i32, ptr %14, align 4
  %331 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %332 = and i32 %331, %330
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %341, label %334

334:                                              ; preds = %322
  %335 = load i32, ptr @__drm_debug, align 4
  %336 = and i32 %335, 2
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = load i32, ptr %29, align 4
  %340 = add i32 %339, %327
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, i32 noundef %340, i32 noundef %329) #5
  br label %341

341:                                              ; preds = %338, %334, %322
  %342 = load ptr, ptr %0, align 4
  %343 = load i32, ptr %29, align 4
  %344 = getelementptr i8, ptr %342, i32 %343
  %345 = getelementptr i8, ptr %344, i32 %327
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %329) #5, !srcloc !8
  %346 = add i32 %1, 60
  %347 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 2, i32 1
  %348 = load i32, ptr %347, align 4
  %349 = load i32, ptr %14, align 4
  %350 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %351 = and i32 %350, %349
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %341
  %354 = load i32, ptr @__drm_debug, align 4
  %355 = and i32 %354, 2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %353
  %358 = load i32, ptr %29, align 4
  %359 = add i32 %358, %346
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, i32 noundef %359, i32 noundef %348) #5
  br label %360

360:                                              ; preds = %357, %353, %341
  %361 = load ptr, ptr %0, align 4
  %362 = load i32, ptr %29, align 4
  %363 = getelementptr i8, ptr %361, i32 %362
  %364 = getelementptr i8, ptr %363, i32 %346
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %364, i32 %348) #5, !srcloc !8
  %365 = add i32 %1, 64
  %366 = getelementptr %struct.dpu_csc_cfg, ptr %2, i32 0, i32 2, i32 2
  %367 = load i32, ptr %366, align 4
  %368 = load i32, ptr %14, align 4
  %369 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %370 = and i32 %369, %368
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %379, label %372

372:                                              ; preds = %360
  %373 = load i32, ptr @__drm_debug, align 4
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %372
  %377 = load i32, ptr %29, align 4
  %378 = add i32 %377, %365
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31, i32 noundef %378, i32 noundef %367) #5
  br label %379

379:                                              ; preds = %376, %372, %360
  %380 = load ptr, ptr %0, align 4
  %381 = load i32, ptr %29, align 4
  %382 = getelementptr i8, ptr %380, i32 %381
  %383 = getelementptr i8, ptr %382, i32 %365
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %383, i32 %367) #5, !srcloc !8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{i64 5402616}
!9 = !{i64 5403034}
