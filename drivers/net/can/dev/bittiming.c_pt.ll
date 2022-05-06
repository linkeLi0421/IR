; ModuleID = '/llk/IR/drivers/net/can/dev/bittiming.c_pt.bc'
source_filename = "../drivers/net/can/dev/bittiming.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc_const = type { i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"bitrate error %d.%d%% too high\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bitrate error %d.%d%%\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_calc_bittiming(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = icmp ugt i32 %8, 800000
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = icmp ugt i32 %8, 500000
  %12 = select i1 %11, i32 800, i32 875
  br label %13

13:                                               ; preds = %10, %7, %3
  %14 = phi i32 [ %5, %3 ], [ 750, %7 ], [ %12, %10 ]
  %15 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = shl i32 %19, 1
  %21 = or i32 %20, 1
  %22 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = shl i32 %26, 1
  %28 = icmp ult i32 %21, %27
  br i1 %28, label %122, label %29

29:                                               ; preds = %13
  %30 = getelementptr i8, ptr %0, i32 1544
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %1, align 4
  %33 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 7
  br label %38

38:                                               ; preds = %111, %29
  %39 = phi i32 [ -1, %29 ], [ %117, %111 ]
  %40 = phi i32 [ -1, %29 ], [ %116, %111 ]
  %41 = phi i32 [ %21, %29 ], [ %118, %111 ]
  %42 = phi i32 [ 0, %29 ], [ %115, %111 ]
  %43 = phi i32 [ 0, %29 ], [ %114, %111 ]
  %44 = phi i32 [ 0, %29 ], [ %113, %111 ]
  %45 = phi i32 [ 0, %29 ], [ %112, %111 ]
  %46 = lshr i32 %41, 1
  %47 = add nuw i32 %46, 1
  %48 = mul i32 %32, %47
  %49 = udiv i32 %31, %48
  %50 = and i32 %41, 1
  %51 = add i32 %49, %50
  %52 = urem i32 %51, %34
  %53 = sub i32 %51, %52
  %54 = icmp ult i32 %53, %36
  br i1 %54, label %111, label %55

55:                                               ; preds = %38
  %56 = load i32, ptr %37, align 4
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %111, label %58

58:                                               ; preds = %55
  %59 = mul i32 %53, %47
  %60 = udiv i32 %31, %59
  %61 = sub i32 %32, %60
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 false)
  %63 = icmp ugt i32 %62, %39
  br i1 %63, label %111, label %64

64:                                               ; preds = %58
  %65 = icmp ult i32 %62, %39
  %66 = select i1 %65, i32 -1, i32 %40
  %67 = mul i32 %47, %14
  %68 = udiv i32 %67, 1000
  %69 = sub i32 %47, %68
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 %25) #4
  %71 = tail call i32 @llvm.umin.i32(i32 %70, i32 %18) #4
  %72 = sub i32 %46, %71
  %73 = icmp ugt i32 %72, %16
  %74 = sub i32 %46, %16
  %75 = select i1 %73, i32 %74, i32 %71
  %76 = sub i32 %47, %75
  %77 = mul i32 %76, 1000
  %78 = udiv i32 %77, %47
  %79 = icmp ult i32 %14, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %64
  %81 = sub i32 %14, %78
  %82 = tail call i32 @llvm.abs.i32(i32 %81, i1 false) #4
  %83 = tail call i32 @llvm.umin.i32(i32 %72, i32 %16) #4
  br label %84

84:                                               ; preds = %80, %64
  %85 = phi i32 [ %45, %64 ], [ %83, %80 ]
  %86 = phi i32 [ %44, %64 ], [ %75, %80 ]
  %87 = phi i32 [ -1, %64 ], [ %82, %80 ]
  %88 = sub nsw i32 %46, %68
  %89 = tail call i32 @llvm.umax.i32(i32 %88, i32 %25) #4
  %90 = tail call i32 @llvm.umin.i32(i32 %89, i32 %18) #4
  %91 = sub i32 %46, %90
  %92 = icmp ugt i32 %91, %16
  %93 = select i1 %92, i32 %74, i32 %90
  %94 = sub i32 %47, %93
  %95 = mul i32 %94, 1000
  %96 = udiv i32 %95, %47
  %97 = sub i32 %14, %96
  %98 = tail call i32 @llvm.abs.i32(i32 %97, i1 false) #4
  %99 = icmp uge i32 %14, %96
  %100 = icmp ult i32 %98, %87
  %101 = select i1 %99, i1 %100, i1 false
  %102 = tail call i32 @llvm.umin.i32(i32 %91, i32 %16) #4
  %103 = select i1 %101, i32 %102, i32 %85
  %104 = select i1 %101, i32 %93, i32 %86
  %105 = select i1 %101, i32 %98, i32 %87
  %106 = icmp ugt i32 %105, %66
  br i1 %106, label %111, label %107

107:                                              ; preds = %84
  %108 = icmp eq i32 %32, %60
  %109 = icmp eq i32 %105, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %158, label %111

111:                                              ; preds = %107, %84, %58, %55, %38
  %112 = phi i32 [ %45, %38 ], [ %45, %55 ], [ %45, %58 ], [ %103, %84 ], [ %103, %107 ]
  %113 = phi i32 [ %44, %38 ], [ %44, %55 ], [ %44, %58 ], [ %104, %84 ], [ %104, %107 ]
  %114 = phi i32 [ %43, %38 ], [ %43, %55 ], [ %43, %58 ], [ %43, %84 ], [ %46, %107 ]
  %115 = phi i32 [ %42, %38 ], [ %42, %55 ], [ %42, %58 ], [ %42, %84 ], [ %53, %107 ]
  %116 = phi i32 [ %40, %38 ], [ %40, %55 ], [ %40, %58 ], [ %40, %84 ], [ %105, %107 ]
  %117 = phi i32 [ %39, %38 ], [ %39, %55 ], [ %39, %58 ], [ %39, %84 ], [ %62, %107 ]
  %118 = add i32 %41, -1
  %119 = icmp ult i32 %118, %27
  br i1 %119, label %120, label %38

120:                                              ; preds = %111
  %121 = icmp eq i32 %117, 0
  br i1 %121, label %158, label %122

122:                                              ; preds = %120, %13
  %123 = phi i32 [ %117, %120 ], [ -1, %13 ]
  %124 = phi i32 [ %115, %120 ], [ 0, %13 ]
  %125 = phi i32 [ %114, %120 ], [ 0, %13 ]
  %126 = phi i32 [ %113, %120 ], [ 0, %13 ]
  %127 = phi i32 [ %112, %120 ], [ 0, %13 ]
  %128 = zext i32 %123 to i64
  %129 = mul nuw nsw i64 %128, 1000
  %130 = load i32, ptr %1, align 4
  %131 = icmp ult i64 %129, 4294967296
  br i1 %131, label %132, label %135, !prof !8

132:                                              ; preds = %122
  %133 = trunc i64 %129 to i32
  %134 = udiv i32 %133, %130
  br label %139

135:                                              ; preds = %122
  %136 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %130, i64 %129) #5, !srcloc !9
  %137 = extractvalue { i64, i64 } %136, 1
  %138 = trunc i64 %137 to i32
  br label %139

139:                                              ; preds = %135, %132
  %140 = phi i32 [ %134, %132 ], [ %138, %135 ]
  %141 = icmp ugt i32 %140, 50
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = freeze i32 %140
  %144 = udiv i32 %143, 10
  %145 = mul i32 %144, 10
  %146 = sub i32 %143, %145
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %144, i32 noundef %146) #6
  br label %249

147:                                              ; preds = %139
  %148 = trunc i32 %140 to i8
  %149 = freeze i8 %148
  %150 = udiv i8 %149, 10
  %151 = zext i8 %150 to i32
  %152 = mul i8 %150, 10
  %153 = sub i8 %149, %152
  %154 = zext i8 %153 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %151, i32 noundef %154) #6
  %155 = load i32, ptr %24, align 4
  %156 = load i32, ptr %17, align 4
  %157 = load i32, ptr %15, align 4
  br label %158

158:                                              ; preds = %147, %120, %107
  %159 = phi i32 [ %157, %147 ], [ %16, %120 ], [ %16, %107 ]
  %160 = phi i32 [ %156, %147 ], [ %18, %120 ], [ %18, %107 ]
  %161 = phi i32 [ %155, %147 ], [ %25, %120 ], [ %25, %107 ]
  %162 = phi i32 [ %124, %147 ], [ %115, %120 ], [ %53, %107 ]
  %163 = phi i32 [ %125, %147 ], [ %114, %120 ], [ %46, %107 ]
  %164 = phi i32 [ %126, %147 ], [ %113, %120 ], [ %104, %107 ]
  %165 = phi i32 [ %127, %147 ], [ %112, %120 ], [ %103, %107 ]
  %166 = add i32 %163, 1
  %167 = mul i32 %166, %14
  %168 = udiv i32 %167, 1000
  %169 = sub i32 %166, %168
  %170 = tail call i32 @llvm.umax.i32(i32 %169, i32 %161) #4
  %171 = tail call i32 @llvm.umin.i32(i32 %170, i32 %160) #4
  %172 = sub i32 %163, %171
  %173 = icmp ugt i32 %172, %159
  %174 = sub i32 %163, %159
  %175 = select i1 %173, i32 %174, i32 %171
  %176 = sub i32 %166, %175
  %177 = mul i32 %176, 1000
  %178 = udiv i32 %177, %166
  %179 = icmp ult i32 %14, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %158
  %181 = sub i32 %14, %178
  %182 = tail call i32 @llvm.abs.i32(i32 %181, i1 false) #4
  %183 = tail call i32 @llvm.umin.i32(i32 %172, i32 %159) #4
  br label %184

184:                                              ; preds = %180, %158
  %185 = phi i32 [ %165, %158 ], [ %183, %180 ]
  %186 = phi i32 [ %164, %158 ], [ %175, %180 ]
  %187 = phi i32 [ 0, %158 ], [ %178, %180 ]
  %188 = phi i32 [ -1, %158 ], [ %182, %180 ]
  %189 = sub i32 %163, %168
  %190 = tail call i32 @llvm.umax.i32(i32 %189, i32 %161) #4
  %191 = tail call i32 @llvm.umin.i32(i32 %190, i32 %160) #4
  %192 = sub i32 %163, %191
  %193 = icmp ugt i32 %192, %159
  %194 = select i1 %193, i32 %174, i32 %191
  %195 = sub i32 %166, %194
  %196 = mul i32 %195, 1000
  %197 = udiv i32 %196, %166
  %198 = sub i32 %14, %197
  %199 = tail call i32 @llvm.abs.i32(i32 %198, i1 false) #4
  %200 = icmp uge i32 %14, %197
  %201 = icmp ult i32 %199, %188
  %202 = select i1 %200, i1 %201, i1 false
  %203 = tail call i32 @llvm.umin.i32(i32 %192, i32 %159) #4
  %204 = select i1 %202, i32 %203, i32 %185
  %205 = select i1 %202, i32 %194, i32 %186
  %206 = select i1 %202, i32 %197, i32 %187
  store i32 %206, ptr %4, align 4
  %207 = zext i32 %162 to i64
  %208 = mul nuw nsw i64 %207, 1000000000
  %209 = getelementptr i8, ptr %0, i32 1544
  %210 = load i32, ptr %209, align 4
  %211 = icmp ult i64 %208, 4294967296
  br i1 %211, label %212, label %215, !prof !8

212:                                              ; preds = %184
  %213 = trunc i64 %208 to i32
  %214 = udiv i32 %213, %210
  br label %219

215:                                              ; preds = %184
  %216 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %210, i64 %208) #5, !srcloc !9
  %217 = extractvalue { i64, i64 } %216, 1
  %218 = trunc i64 %217 to i32
  br label %219

219:                                              ; preds = %215, %212
  %220 = phi i32 [ %214, %212 ], [ %218, %215 ]
  %221 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 2
  store i32 %220, ptr %221, align 4
  %222 = lshr i32 %204, 1
  %223 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 3
  store i32 %222, ptr %223, align 4
  %224 = sub i32 %204, %222
  %225 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 4
  store i32 %224, ptr %225, align 4
  %226 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 5
  store i32 %205, ptr %226, align 4
  %227 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 6
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %219
  %231 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %230
  %235 = icmp ugt i32 %228, %232
  %236 = call i32 @llvm.umin.i32(i32 %228, i32 %232)
  %237 = icmp ult i32 %205, %236
  %238 = call i32 @llvm.umin.i32(i32 %205, i32 %236)
  %239 = or i1 %235, %237
  br i1 %239, label %240, label %242

240:                                              ; preds = %234, %230, %219
  %241 = phi i32 [ 1, %230 ], [ 1, %219 ], [ %238, %234 ]
  store i32 %241, ptr %227, align 4
  br label %242

242:                                              ; preds = %240, %234
  %243 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 7
  store i32 %162, ptr %243, align 4
  %244 = load i32, ptr %209, align 4
  %245 = add i32 %204, 1
  %246 = add i32 %245, %205
  %247 = mul i32 %246, %162
  %248 = udiv i32 %244, %247
  store i32 %248, ptr %1, align 4
  br label %249

249:                                              ; preds = %242, %142
  %250 = phi i32 [ -33, %142 ], [ 0, %242 ]
  ret i32 %250
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @can_calc_tdco(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %1, null
  %7 = and i32 %4, 512
  %8 = icmp eq i32 %7, 0
  %9 = or i1 %6, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4
  %12 = and i32 %11, -1537
  store i32 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.can_bittiming, ptr %2, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %35

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.can_bittiming, ptr %2, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = getelementptr inbounds %struct.can_bittiming, ptr %2, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %20, %22
  %24 = mul i32 %23, %14
  %25 = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.can_tdc_const, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %24, i32 %30)
  %32 = getelementptr inbounds %struct.can_tdc, ptr %0, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %3, align 4
  %34 = or i32 %33, 512
  store i32 %34, ptr %3, align 4
  br label %35

35:                                               ; preds = %28, %17, %10, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_get_bittiming(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr %1, align 4
  br i1 %8, label %10, label %16

10:                                               ; preds = %5
  %11 = icmp ne i32 %9, 0
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %101

14:                                               ; preds = %10
  %15 = tail call i32 @can_calc_bittiming(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %120

16:                                               ; preds = %5
  %17 = icmp eq i32 %9, 0
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %120

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = phi i32 [ 1, %29 ], [ %27, %20 ]
  %32 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %31, %33
  br i1 %34, label %120, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %25, %37
  br i1 %38, label %120, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %25, %41
  br i1 %42, label %120, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %120, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %45, %51
  br i1 %52, label %120, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 1544
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = zext i32 %7 to i64
  %58 = mul nuw i64 %56, %57
  %59 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = icmp ult i64 %58, 4294967296
  br i1 %63, label %64, label %68, !prof !8

64:                                               ; preds = %62
  %65 = trunc i64 %58 to i32
  %66 = udiv i32 %65, %60
  %67 = zext i32 %66 to i64
  br label %71

68:                                               ; preds = %62
  %69 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %60, i64 %58) #5, !srcloc !9
  %70 = extractvalue { i64, i64 } %69, 1
  br label %71

71:                                               ; preds = %68, %64, %53
  %72 = phi i64 [ %67, %64 ], [ %70, %68 ], [ %58, %53 ]
  %73 = add i64 %72, 499999999
  %74 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %73, i32 0) #5, !srcloc !10
  %75 = extractvalue { i64, i32 } %74, 0
  %76 = extractvalue { i64, i32 } %74, 1
  %77 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %73, i64 %75, i32 %76) #5, !srcloc !11
  %78 = extractvalue { i64, i32 } %77, 0
  %79 = lshr i64 %78, 29
  %80 = tail call i32 @llvm.umax.i32(i32 %60, i32 1) #4
  %81 = trunc i64 %79 to i32
  %82 = mul i32 %80, %81
  %83 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 7
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, %82
  br i1 %86, label %120, label %87

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.can_bittiming_const, ptr %2, i32 0, i32 7
  %89 = load i32, ptr %88, align 4
  %90 = icmp ult i32 %89, %82
  br i1 %90, label %120, label %91

91:                                               ; preds = %87
  %92 = add i32 %25, 1
  %93 = add i32 %92, %45
  %94 = load i32, ptr %54, align 4
  %95 = mul i32 %82, %93
  %96 = udiv i32 %94, %95
  store i32 %96, ptr %1, align 4
  %97 = mul i32 %25, 1000
  %98 = add i32 %97, 1000
  %99 = udiv i32 %98, %93
  %100 = getelementptr inbounds %struct.can_bittiming, ptr %1, i32 0, i32 1
  store i32 %99, ptr %100, align 4
  br label %120

101:                                              ; preds = %10
  %102 = icmp ne ptr %3, null
  %103 = and i1 %102, %11
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = icmp eq i32 %4, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %111, %104
  %107 = phi i32 [ %112, %111 ], [ 0, %104 ]
  %108 = getelementptr i32, ptr %3, i32 %107
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %9, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = add nuw i32 %107, 1
  %113 = icmp eq i32 %112, %4
  br i1 %113, label %114, label %106

114:                                              ; preds = %111, %106, %104
  %115 = phi i32 [ 0, %104 ], [ %4, %111 ], [ %107, %106 ]
  %116 = getelementptr i8, ptr %0, i32 1524
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %115, %117
  %119 = select i1 %118, i32 0, i32 -22
  br label %120

120:                                              ; preds = %114, %101, %91, %87, %71, %49, %43, %39, %35, %30, %16, %14
  %121 = phi i32 [ %119, %114 ], [ %15, %14 ], [ -22, %101 ], [ 0, %91 ], [ -34, %49 ], [ -34, %43 ], [ -34, %39 ], [ -34, %35 ], [ -34, %30 ], [ -22, %87 ], [ -22, %71 ], [ -22, %16 ]
  ret i32 %121
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147691926, i64 2147692206, i64 2147692540, i64 2147692874}
!10 = !{i64 184198, i64 184225, i64 184247, i64 184275}
!11 = !{i64 184606, i64 184633, i64 184666, i64 184687, i64 184714, i64 184740}
