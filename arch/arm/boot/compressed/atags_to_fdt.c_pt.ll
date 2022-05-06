; ModuleID = '/llk/IR/arch/arm/boot/compressed/atags_to_fdt.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/atags_to_fdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.tag_header = type { i32, i32 }
%struct.tag = type { %struct.tag_header, %union.anon }
%union.anon = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"serial-number\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define i32 @atags_to_fdt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 4
  %8 = alloca [18 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %7, i8 0, i32 256, i1 false), !annotation !9
  %9 = ptrtoint ptr %0 to i32
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %280

12:                                               ; preds = %3
  %13 = load i32, ptr %0, align 4
  %14 = icmp eq i32 %13, -302117424
  br i1 %14, label %280, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tag_header, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1413545985
  br i1 %18, label %19, label %280

19:                                               ; preds = %15
  switch i32 %13, label %280 [
    i32 5, label %20
    i32 2, label %20
  ]

20:                                               ; preds = %19, %19
  %21 = tail call i32 @fdt_open_into(ptr noundef %1, ptr noundef %1, i32 noundef %2) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %280, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %0, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %278, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %8, i32 1
  %28 = getelementptr inbounds i8, ptr %8, i32 2
  %29 = getelementptr inbounds i8, ptr %8, i32 3
  %30 = getelementptr inbounds i8, ptr %8, i32 4
  %31 = getelementptr inbounds i8, ptr %8, i32 5
  %32 = getelementptr inbounds i8, ptr %8, i32 6
  %33 = getelementptr inbounds i8, ptr %8, i32 7
  %34 = getelementptr inbounds i8, ptr %8, i32 8
  %35 = getelementptr inbounds i8, ptr %8, i32 9
  %36 = getelementptr inbounds i8, ptr %8, i32 10
  %37 = getelementptr inbounds i8, ptr %8, i32 11
  %38 = getelementptr inbounds i8, ptr %8, i32 12
  %39 = getelementptr inbounds i8, ptr %8, i32 13
  %40 = getelementptr inbounds i8, ptr %8, i32 14
  %41 = getelementptr inbounds i8, ptr %8, i32 15
  %42 = getelementptr inbounds i8, ptr %8, i32 16
  %43 = getelementptr inbounds i8, ptr %8, i32 17
  br label %44

44:                                               ; preds = %257, %26
  %45 = phi ptr [ %0, %26 ], [ %261, %257 ]
  %46 = phi i32 [ 0, %26 ], [ %259, %257 ]
  %47 = phi i32 [ 0, %26 ], [ %258, %257 ]
  %48 = getelementptr inbounds %struct.tag_header, ptr %45, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  switch i32 %49, label %257 [
    i32 1413545993, label %50
    i32 1413545986, label %63
    i32 1413611525, label %103
    i32 1413545990, label %130
  ]

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1
  %52 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str) #6
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @fdt_add_subnode(ptr noundef %1, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str, i32 0, i32 1)) #6
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %55, %54 ], [ %52, %50 ]
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %257, label %59

59:                                               ; preds = %56
  %60 = call i32 @strlen(ptr noundef %51) #6
  %61 = add i32 %60, 1
  %62 = call i32 @fdt_setprop(ptr noundef %1, i32 noundef %57, ptr noundef nonnull @.str.1, ptr noundef %51, i32 noundef %61) #6
  br label %257

63:                                               ; preds = %44
  %64 = icmp ugt i32 %46, 63
  br i1 %64, label %257, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %257, label %69

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !9
  %70 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = call ptr @fdt_getprop(ptr noundef %1, i32 noundef %70, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #6
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72, %69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %92

76:                                               ; preds = %72
  %77 = load i32, ptr %73, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %79 = icmp eq i32 %77, 33554432
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = call i64 @llvm.bswap.i64(i64 %83)
  %85 = add nuw nsw i32 %46, 1
  %86 = getelementptr i64, ptr %7, i32 %46
  store i64 %84, ptr %86, align 8
  %87 = load i32, ptr %66, align 4
  %88 = zext i32 %87 to i64
  %89 = call i64 @llvm.bswap.i64(i64 %88)
  %90 = add nuw nsw i32 %46, 2
  %91 = getelementptr i64, ptr %7, i32 %85
  store i64 %89, ptr %91, align 8
  br label %257

92:                                               ; preds = %76, %75
  %93 = phi i32 [ 1, %75 ], [ %78, %76 ]
  %94 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %97 = add nuw nsw i32 %46, 1
  %98 = getelementptr [64 x i32], ptr %7, i32 0, i32 %46
  store i32 %96, ptr %98, align 4
  %99 = load i32, ptr %66, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %101 = add nuw nsw i32 %46, 2
  %102 = getelementptr [64 x i32], ptr %7, i32 0, i32 %97
  store i32 %100, ptr %102, align 4
  br label %257

103:                                              ; preds = %44
  %104 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str) #6
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = call i32 @fdt_add_subnode(ptr noundef %1, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str, i32 0, i32 1)) #6
  br label %112

112:                                              ; preds = %110, %103
  %113 = phi i32 [ %111, %110 ], [ %108, %103 ]
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %116 = call i32 @llvm.bswap.i32(i32 %105) #5
  store i32 %116, ptr %5, align 4
  %117 = call i32 @fdt_setprop(ptr noundef %1, i32 noundef %113, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  br label %118

118:                                              ; preds = %115, %112
  %119 = add i32 %107, %105
  %120 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str) #6
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 @fdt_add_subnode(ptr noundef %1, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str, i32 0, i32 1)) #6
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi i32 [ %123, %122 ], [ %120, %118 ]
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %257, label %127

127:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  %128 = call i32 @llvm.bswap.i32(i32 %119) #5
  store i32 %128, ptr %4, align 4
  %129 = call i32 @fdt_setprop(ptr noundef %1, i32 noundef %125, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %257

130:                                              ; preds = %44
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #5
  store i8 0, ptr %43, align 1, !annotation !9
  %131 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1
  %132 = getelementptr inbounds %struct.tag, ptr %45, i32 0, i32 1, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = lshr i32 %133, 28
  %135 = shl i32 %133, 4
  %136 = icmp ult i32 %133, -1610612736
  %137 = or i32 %134, 48
  %138 = add nuw nsw i32 %134, 55
  %139 = select i1 %136, i32 %137, i32 %138
  %140 = trunc i32 %139 to i8
  store i8 %140, ptr %8, align 1
  %141 = lshr i32 %135, 28
  %142 = shl i32 %133, 8
  %143 = icmp ult i32 %135, -1610612736
  %144 = or i32 %141, 48
  %145 = add nuw nsw i32 %141, 55
  %146 = select i1 %143, i32 %144, i32 %145
  %147 = trunc i32 %146 to i8
  store i8 %147, ptr %27, align 1
  %148 = lshr i32 %142, 28
  %149 = shl i32 %133, 12
  %150 = icmp ult i32 %142, -1610612736
  %151 = or i32 %148, 48
  %152 = add nuw nsw i32 %148, 55
  %153 = select i1 %150, i32 %151, i32 %152
  %154 = trunc i32 %153 to i8
  store i8 %154, ptr %28, align 1
  %155 = lshr i32 %149, 28
  %156 = shl i32 %133, 16
  %157 = icmp ult i32 %149, -1610612736
  %158 = or i32 %155, 48
  %159 = add nuw nsw i32 %155, 55
  %160 = select i1 %157, i32 %158, i32 %159
  %161 = trunc i32 %160 to i8
  store i8 %161, ptr %29, align 1
  %162 = lshr i32 %156, 28
  %163 = shl i32 %133, 20
  %164 = icmp ult i32 %156, -1610612736
  %165 = or i32 %162, 48
  %166 = add nuw nsw i32 %162, 55
  %167 = select i1 %164, i32 %165, i32 %166
  %168 = trunc i32 %167 to i8
  store i8 %168, ptr %30, align 1
  %169 = lshr i32 %163, 28
  %170 = shl i32 %133, 24
  %171 = icmp ult i32 %163, -1610612736
  %172 = or i32 %169, 48
  %173 = add nuw nsw i32 %169, 55
  %174 = select i1 %171, i32 %172, i32 %173
  %175 = trunc i32 %174 to i8
  store i8 %175, ptr %31, align 1
  %176 = lshr i32 %170, 28
  %177 = shl i32 %133, 28
  %178 = icmp ult i32 %170, -1610612736
  %179 = or i32 %176, 48
  %180 = add nuw nsw i32 %176, 55
  %181 = select i1 %178, i32 %179, i32 %180
  %182 = trunc i32 %181 to i8
  store i8 %182, ptr %32, align 1
  %183 = and i32 %133, 15
  %184 = icmp ult i32 %177, -1610612736
  %185 = or i32 %183, 48
  %186 = add nuw nsw i32 %183, 55
  %187 = select i1 %184, i32 %185, i32 %186
  %188 = trunc i32 %187 to i8
  store i8 %188, ptr %33, align 1
  %189 = load i32, ptr %131, align 4
  %190 = lshr i32 %189, 28
  %191 = shl i32 %189, 4
  %192 = icmp ult i32 %189, -1610612736
  %193 = or i32 %190, 48
  %194 = add nuw nsw i32 %190, 55
  %195 = select i1 %192, i32 %193, i32 %194
  %196 = trunc i32 %195 to i8
  store i8 %196, ptr %34, align 1
  %197 = lshr i32 %191, 28
  %198 = shl i32 %189, 8
  %199 = icmp ult i32 %191, -1610612736
  %200 = or i32 %197, 48
  %201 = add nuw nsw i32 %197, 55
  %202 = select i1 %199, i32 %200, i32 %201
  %203 = trunc i32 %202 to i8
  store i8 %203, ptr %35, align 1
  %204 = lshr i32 %198, 28
  %205 = shl i32 %189, 12
  %206 = icmp ult i32 %198, -1610612736
  %207 = or i32 %204, 48
  %208 = add nuw nsw i32 %204, 55
  %209 = select i1 %206, i32 %207, i32 %208
  %210 = trunc i32 %209 to i8
  store i8 %210, ptr %36, align 1
  %211 = lshr i32 %205, 28
  %212 = shl i32 %189, 16
  %213 = icmp ult i32 %205, -1610612736
  %214 = or i32 %211, 48
  %215 = add nuw nsw i32 %211, 55
  %216 = select i1 %213, i32 %214, i32 %215
  %217 = trunc i32 %216 to i8
  store i8 %217, ptr %37, align 1
  %218 = lshr i32 %212, 28
  %219 = shl i32 %189, 20
  %220 = icmp ult i32 %212, -1610612736
  %221 = or i32 %218, 48
  %222 = add nuw nsw i32 %218, 55
  %223 = select i1 %220, i32 %221, i32 %222
  %224 = trunc i32 %223 to i8
  store i8 %224, ptr %38, align 1
  %225 = lshr i32 %219, 28
  %226 = shl i32 %189, 24
  %227 = icmp ult i32 %219, -1610612736
  %228 = or i32 %225, 48
  %229 = add nuw nsw i32 %225, 55
  %230 = select i1 %227, i32 %228, i32 %229
  %231 = trunc i32 %230 to i8
  store i8 %231, ptr %39, align 1
  %232 = lshr i32 %226, 28
  %233 = shl i32 %189, 28
  %234 = icmp ult i32 %226, -1610612736
  %235 = or i32 %232, 48
  %236 = add nuw nsw i32 %232, 55
  %237 = select i1 %234, i32 %235, i32 %236
  %238 = trunc i32 %237 to i8
  store i8 %238, ptr %40, align 1
  %239 = and i32 %189, 15
  %240 = icmp ult i32 %233, -1610612736
  %241 = or i32 %239, 48
  %242 = add nuw nsw i32 %239, 55
  %243 = select i1 %240, i32 %241, i32 %242
  %244 = trunc i32 %243 to i8
  store i8 %244, ptr %41, align 1
  store i8 0, ptr %42, align 1
  %245 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %246 = icmp eq i32 %245, -1
  br i1 %246, label %247, label %249

247:                                              ; preds = %130
  %248 = call i32 @fdt_add_subnode(ptr noundef %1, i32 noundef 0, ptr noundef getelementptr inbounds ([2 x i8], ptr @.str.4, i32 0, i32 1)) #6
  br label %249

249:                                              ; preds = %247, %130
  %250 = phi i32 [ %248, %247 ], [ %245, %130 ]
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = call i32 @strlen(ptr noundef nonnull %8) #6
  %254 = add i32 %253, 1
  %255 = call i32 @fdt_setprop(ptr noundef %1, i32 noundef %250, ptr noundef nonnull @.str.5, ptr noundef nonnull %8, i32 noundef %254) #6
  br label %256

256:                                              ; preds = %252, %249
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #5
  br label %257

257:                                              ; preds = %256, %127, %124, %92, %80, %65, %63, %59, %56, %44
  %258 = phi i32 [ %47, %63 ], [ 2, %80 ], [ %93, %92 ], [ %47, %65 ], [ %47, %256 ], [ %47, %44 ], [ %47, %56 ], [ %47, %59 ], [ %47, %124 ], [ %47, %127 ]
  %259 = phi i32 [ %46, %63 ], [ %90, %80 ], [ %101, %92 ], [ %46, %65 ], [ %46, %256 ], [ %46, %44 ], [ %46, %56 ], [ %46, %59 ], [ %46, %124 ], [ %46, %127 ]
  %260 = load i32, ptr %45, align 4
  %261 = getelementptr i32, ptr %45, i32 %260
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %44

264:                                              ; preds = %257
  %265 = icmp eq i32 %259, 0
  br i1 %265, label %278, label %266

266:                                              ; preds = %264
  %267 = shl i32 %258, 2
  %268 = mul i32 %267, %259
  %269 = call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = call i32 @fdt_add_subnode(ptr noundef %1, i32 noundef 0, ptr noundef getelementptr inbounds ([8 x i8], ptr @.str.6, i32 0, i32 1)) #6
  br label %273

273:                                              ; preds = %271, %266
  %274 = phi i32 [ %272, %271 ], [ %269, %266 ]
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = call i32 @fdt_setprop(ptr noundef %1, i32 noundef %274, ptr noundef nonnull @.str.7, ptr noundef nonnull %7, i32 noundef %268) #6
  br label %278

278:                                              ; preds = %276, %273, %264, %23
  %279 = call i32 @fdt_pack(ptr noundef %1) #6
  br label %280

280:                                              ; preds = %278, %20, %19, %15, %12, %3
  %281 = phi i32 [ %279, %278 ], [ 1, %3 ], [ 0, %12 ], [ 1, %19 ], [ 1, %15 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #5
  ret i32 %281
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @fdt_add_subnode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
