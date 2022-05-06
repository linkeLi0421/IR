; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-rds-gen.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-rds-gen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }

@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str = private unnamed_addr constant [8 x i8] c"%6d.%1d\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c" The Radio Data System can switch between different Radio Texts \00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"An example of Radio Text as transmitted by the Radio Data System\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_rds_generate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tm, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 9
  %6 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 4
  %7 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 3
  %8 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 5
  %9 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tm, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 10
  %13 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 4
  %14 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 7
  br label %17

17:                                               ; preds = %230, %1
  %18 = phi ptr [ %0, %1 ], [ %232, %230 ]
  %19 = phi i32 [ 0, %1 ], [ %231, %230 ]
  %20 = load i16, ptr %3, align 2
  %21 = trunc i16 %20 to i8
  store i8 %21, ptr %18, align 1
  %22 = load i16, ptr %3, align 2
  %23 = lshr i16 %22, 8
  %24 = trunc i16 %23 to i8
  %25 = getelementptr inbounds %struct.v4l2_rds_data, ptr %18, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.v4l2_rds_data, ptr %18, i32 0, i32 2
  store i8 0, ptr %26, align 1
  %27 = load i8, ptr %4, align 2
  %28 = shl i8 %27, 5
  %29 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 1
  store i8 %28, ptr %29, align 1
  %30 = load i8, ptr %4, align 2
  %31 = lshr i8 %30, 3
  %32 = load i8, ptr %5, align 2, !range !9
  %33 = shl nuw nsw i8 %32, 2
  %34 = or i8 %33, %31
  %35 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 1, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 1, i32 2
  store i8 9, ptr %36, align 1
  %37 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 3
  %38 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 3, i32 2
  store i8 27, ptr %38, align 1
  switch i32 %19, label %161 [
    i32 44, label %39
    i32 45, label %39
    i32 46, label %39
    i32 47, label %39
    i32 22, label %39
    i32 23, label %39
    i32 24, label %39
    i32 25, label %39
    i32 0, label %39
    i32 1, label %39
    i32 2, label %39
    i32 3, label %39
    i32 26, label %85
    i32 27, label %85
    i32 28, label %85
    i32 29, label %85
    i32 30, label %85
    i32 31, label %85
    i32 32, label %85
    i32 33, label %85
    i32 34, label %85
    i32 35, label %85
    i32 36, label %85
    i32 37, label %85
    i32 38, label %85
    i32 39, label %85
    i32 40, label %85
    i32 41, label %85
    i32 4, label %85
    i32 5, label %85
    i32 6, label %85
    i32 7, label %85
    i32 8, label %85
    i32 9, label %85
    i32 10, label %85
    i32 11, label %85
    i32 12, label %85
    i32 13, label %85
    i32 14, label %85
    i32 15, label %85
    i32 16, label %85
    i32 17, label %85
    i32 18, label %85
    i32 19, label %85
    i32 56, label %109
  ]

39:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %40 = trunc i32 %19 to i8
  %41 = urem i8 %40, 22
  %42 = and i8 %41, 3
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr %11, align 1, !range !9
  %45 = shl nuw nsw i8 %44, 4
  %46 = load i8, ptr %12, align 1, !range !9
  %47 = shl nuw nsw i8 %46, 3
  %48 = or i8 %45, %28
  %49 = or i8 %48, %47
  store i8 %49, ptr %29, align 1
  switch i32 %43, label %65 [
    i32 0, label %50
    i32 1, label %53
    i32 2, label %57
    i32 3, label %61
  ]

50:                                               ; preds = %39
  %51 = load i8, ptr %16, align 2, !range !9
  %52 = shl nuw nsw i8 %51, 2
  br label %66

53:                                               ; preds = %39
  %54 = load i8, ptr %15, align 1, !range !9
  %55 = shl nuw nsw i8 %54, 2
  %56 = or i8 %55, 1
  br label %66

57:                                               ; preds = %39
  %58 = load i8, ptr %14, align 2, !range !9
  %59 = shl nuw nsw i8 %58, 2
  %60 = or i8 %59, 2
  br label %66

61:                                               ; preds = %39
  %62 = load i8, ptr %13, align 1, !range !9
  %63 = shl nuw nsw i8 %62, 2
  %64 = or i8 %63, 3
  br label %66

65:                                               ; preds = %39
  unreachable

66:                                               ; preds = %61, %57, %53, %50
  %67 = phi i8 [ %64, %61 ], [ %60, %57 ], [ %56, %53 ], [ %52, %50 ]
  %68 = or i8 %67, %49
  store i8 %68, ptr %29, align 1
  %69 = or i8 %34, 8
  store i8 %69, ptr %35, align 1
  %70 = load i16, ptr %3, align 2
  %71 = trunc i16 %70 to i8
  %72 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2
  store i8 %71, ptr %72, align 1
  %73 = load i16, ptr %3, align 2
  %74 = lshr i16 %73, 8
  %75 = trunc i16 %74 to i8
  %76 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 1
  store i8 %75, ptr %76, align 1
  %77 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 2
  store i8 36, ptr %77, align 1
  %78 = shl nuw nsw i32 %43, 1
  %79 = or i32 %78, 1
  %80 = getelementptr %struct.vivid_rds_gen, ptr %0, i32 0, i32 11, i32 %79
  %81 = load i8, ptr %80, align 1
  store i8 %81, ptr %37, align 1
  %82 = getelementptr %struct.vivid_rds_gen, ptr %0, i32 0, i32 11, i32 %78
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 3, i32 1
  store i8 %83, ptr %84, align 1
  br label %230

85:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %86 = trunc i32 %19 to i8
  %87 = add nsw i8 %86, -4
  %88 = urem i8 %87, 22
  %89 = and i8 %88, 15
  %90 = or i8 %28, %89
  store i8 %90, ptr %29, align 1
  %91 = or i8 %34, 32
  store i8 %91, ptr %35, align 1
  %92 = shl nuw nsw i8 %89, 2
  %93 = zext i8 %92 to i32
  %94 = getelementptr %struct.vivid_rds_gen, ptr %0, i32 0, i32 12, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2
  %97 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 1
  store i8 %95, ptr %97, align 1
  %98 = or i32 %93, 1
  %99 = getelementptr %struct.vivid_rds_gen, ptr %0, i32 0, i32 12, i32 %98
  %100 = load i8, ptr %99, align 1
  store i8 %100, ptr %96, align 1
  %101 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 2
  store i8 18, ptr %101, align 1
  %102 = or i32 %93, 2
  %103 = getelementptr %struct.vivid_rds_gen, ptr %0, i32 0, i32 12, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 3, i32 1
  store i8 %104, ptr %105, align 1
  %106 = or i32 %93, 3
  %107 = getelementptr %struct.vivid_rds_gen, ptr %0, i32 0, i32 12, i32 %106
  %108 = load i8, ptr %107, align 1
  store i8 %108, ptr %37, align 1
  br label %230

109:                                              ; preds = %17
  %110 = call i64 @ktime_get_real_seconds() #6
  call void @time64_to_tm(i64 noundef %110, i32 noundef 0, ptr noundef nonnull %2) #6
  %111 = load i32, ptr %6, align 4
  %112 = icmp slt i32 %111, 2
  %113 = sext i1 %112 to i32
  %114 = load i32, ptr %7, align 4
  %115 = add i32 %114, 14956
  %116 = load i32, ptr %8, align 4
  %117 = add i32 %116, %113
  %118 = mul i32 %117, 1461
  %119 = sdiv i32 %118, 4
  %120 = add i32 %115, %119
  %121 = add i32 %111, 2
  %122 = select i1 %112, i32 12, i32 0
  %123 = add i32 %121, %122
  %124 = mul i32 %123, 306001
  %125 = sdiv i32 %124, 10000
  %126 = add i32 %120, %125
  %127 = load i32, ptr %9, align 4
  %128 = shl i32 %127, 12
  %129 = load i32, ptr %10, align 4
  %130 = shl i32 %129, 6
  %131 = or i32 %130, %128
  %132 = load i32, ptr @sys_tz, align 4
  %133 = lshr i32 %132, 26
  %134 = and i32 %133, 32
  %135 = or i32 %131, %134
  %136 = xor i32 %135, 32
  %137 = call i32 @llvm.abs.i32(i32 %132, i1 false)
  %138 = sdiv i32 %137, 30
  %139 = or i32 %136, %138
  %140 = load i8, ptr %29, align 1
  %141 = and i8 %140, -4
  %142 = lshr i32 %126, 15
  %143 = trunc i32 %142 to i8
  %144 = or i8 %141, %143
  store i8 %144, ptr %29, align 1
  %145 = load i8, ptr %35, align 1
  %146 = or i8 %145, 64
  store i8 %146, ptr %35, align 1
  %147 = shl i32 %126, 1
  %148 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2
  %149 = lshr i32 %139, 16
  %150 = and i32 %149, 1
  %151 = or i32 %150, %147
  %152 = trunc i32 %151 to i8
  store i8 %152, ptr %148, align 1
  %153 = lshr i32 %126, 7
  %154 = trunc i32 %153 to i8
  %155 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 1
  store i8 %154, ptr %155, align 1
  %156 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 2
  store i8 18, ptr %156, align 1
  %157 = trunc i32 %139 to i8
  store i8 %157, ptr %37, align 1
  %158 = lshr i32 %139, 8
  %159 = trunc i32 %158 to i8
  %160 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 3, i32 1
  store i8 %159, ptr %160, align 1
  br label %234

161:                                              ; preds = %17
  %162 = load i8, ptr %11, align 1, !range !9
  %163 = shl nuw nsw i8 %162, 4
  %164 = load i8, ptr %12, align 1, !range !9
  %165 = shl nuw nsw i8 %164, 3
  %166 = or i8 %163, %28
  %167 = or i8 %166, %165
  store i8 %167, ptr %29, align 1
  %168 = trunc i32 %19 to i8
  %169 = urem i8 %168, 22
  %170 = zext i8 %169 to i32
  switch i32 %170, label %186 [
    i32 0, label %171
    i32 1, label %174
    i32 2, label %178
    i32 3, label %182
  ]

171:                                              ; preds = %161
  %172 = load i8, ptr %16, align 2, !range !9
  %173 = shl nuw nsw i8 %172, 2
  br label %186

174:                                              ; preds = %161
  %175 = load i8, ptr %15, align 1, !range !9
  %176 = shl nuw nsw i8 %175, 2
  %177 = or i8 %176, 1
  br label %186

178:                                              ; preds = %161
  %179 = load i8, ptr %14, align 2, !range !9
  %180 = shl nuw nsw i8 %179, 2
  %181 = or i8 %180, 2
  br label %186

182:                                              ; preds = %161
  %183 = load i8, ptr %13, align 1, !range !9
  %184 = shl nuw nsw i8 %183, 2
  %185 = or i8 %184, 3
  br label %186

186:                                              ; preds = %182, %178, %174, %171, %161
  %187 = phi i8 [ %185, %182 ], [ %181, %178 ], [ %177, %174 ], [ %173, %171 ], [ 0, %161 ]
  %188 = or i8 %187, %167
  store i8 %188, ptr %29, align 1
  %189 = or i8 %34, -8
  store i8 %189, ptr %35, align 1
  %190 = load i16, ptr %3, align 2
  %191 = trunc i16 %190 to i8
  %192 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2
  store i8 %191, ptr %192, align 1
  %193 = load i16, ptr %3, align 2
  %194 = lshr i16 %193, 8
  %195 = trunc i16 %194 to i8
  %196 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 1
  store i8 %195, ptr %196, align 1
  %197 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 2, i32 2
  store i8 36, ptr %197, align 1
  %198 = load i8, ptr %4, align 2
  %199 = shl i8 %198, 5
  store i8 %199, ptr %37, align 1
  %200 = load i8, ptr %11, align 1, !range !9
  %201 = shl nuw nsw i8 %200, 4
  %202 = load i8, ptr %12, align 1, !range !9
  %203 = shl nuw nsw i8 %202, 3
  %204 = or i8 %201, %199
  %205 = or i8 %204, %203
  store i8 %205, ptr %37, align 1
  switch i32 %170, label %221 [
    i32 0, label %206
    i32 1, label %209
    i32 2, label %213
    i32 3, label %217
  ]

206:                                              ; preds = %186
  %207 = load i8, ptr %16, align 2, !range !9
  %208 = shl nuw nsw i8 %207, 2
  br label %221

209:                                              ; preds = %186
  %210 = load i8, ptr %15, align 1, !range !9
  %211 = shl nuw nsw i8 %210, 2
  %212 = or i8 %211, 1
  br label %221

213:                                              ; preds = %186
  %214 = load i8, ptr %14, align 2, !range !9
  %215 = shl nuw nsw i8 %214, 2
  %216 = or i8 %215, 2
  br label %221

217:                                              ; preds = %186
  %218 = load i8, ptr %13, align 1, !range !9
  %219 = shl nuw nsw i8 %218, 2
  %220 = or i8 %219, 3
  br label %221

221:                                              ; preds = %217, %213, %209, %206, %186
  %222 = phi i8 [ %220, %217 ], [ %216, %213 ], [ %212, %209 ], [ %208, %206 ], [ 0, %186 ]
  %223 = or i8 %222, %205
  store i8 %223, ptr %37, align 1
  %224 = load i8, ptr %4, align 2
  %225 = lshr i8 %224, 3
  %226 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 3, i32 1
  %227 = load i8, ptr %226, align 1
  %228 = or i8 %225, %227
  %229 = or i8 %228, -8
  store i8 %229, ptr %226, align 1
  br label %230

230:                                              ; preds = %221, %85, %66
  %231 = add nuw nsw i32 %19, 1
  %232 = getelementptr %struct.v4l2_rds_data, ptr %18, i32 4
  %233 = icmp eq i32 %231, 57
  br i1 %233, label %234, label %17

234:                                              ; preds = %230, %109
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_rds_gen_fill(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i1 %2 to i8
  %5 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 2, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %2, i8 16, i8 3
  %9 = select i1 %2, i8 29, i8 2
  %10 = select i1 %7, i16 -32632, i16 11893
  %11 = select i1 %7, i8 %8, i8 %9
  %12 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 2
  store i16 %10, ptr %12, align 2
  %13 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 3
  store i8 %11, ptr %13, align 2
  %14 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 4
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 5
  store i8 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 6
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 7
  store i8 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 9
  store i8 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 8
  store i8 %4, ptr %19, align 1
  %20 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 10
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 11
  %22 = lshr i32 %1, 4
  %23 = and i32 %1, 15
  %24 = mul nuw nsw i32 %23, 10
  %25 = lshr i32 %24, 4
  %26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %25)
  %27 = select i1 %2, ptr @.str.1, ptr @.str.2
  %28 = getelementptr inbounds %struct.vivid_rds_gen, ptr %0, i32 0, i32 12
  %29 = tail call i32 @strscpy(ptr noundef %28, ptr noundef nonnull %27, i32 noundef 65) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
