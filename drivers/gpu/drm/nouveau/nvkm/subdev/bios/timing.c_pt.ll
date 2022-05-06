; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/timing.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/timing.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.127, i32, i32, i32, i32, i32, i32, %union.anon.131, i32, i32, [11 x i32], %union.anon.135 }>
%union.anon.127 = type { %struct.anon.130 }
%struct.anon.130 = type { i64 }
%union.anon.131 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i32, i8 }
%union.anon.135 = type <{ %struct.anon.137, [12 x i8] }>
%struct.anon.137 = type { i48 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_timingTe(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %45 [
    i8 1, label %15
    i8 2, label %14
  ]

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ 8, %14 ], [ 4, %11 ]
  %17 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = add nuw nsw i32 %16, %19
  %21 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %20) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %15
  %24 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %21) #5
  store i8 %24, ptr %1, align 1
  switch i8 %24, label %45 [
    i8 16, label %25
    i8 32, label %32
  ]

25:                                               ; preds = %23
  %26 = add i32 %21, 1
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #5
  store i8 %27, ptr %2, align 1
  %28 = add i32 %21, 2
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #5
  store i8 %29, ptr %3, align 1
  %30 = add i32 %21, 3
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #5
  store i8 %31, ptr %4, align 1
  store i8 0, ptr %5, align 1
  br label %43

32:                                               ; preds = %23
  %33 = add i32 %21, 1
  %34 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #5
  store i8 %34, ptr %2, align 1
  %35 = add i32 %21, 5
  %36 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %35) #5
  store i8 %36, ptr %3, align 1
  %37 = add i32 %21, 2
  %38 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %37) #5
  store i8 %38, ptr %4, align 1
  %39 = add i32 %21, 4
  %40 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %39) #5
  store i8 %40, ptr %5, align 1
  %41 = add i32 %21, 3
  %42 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %41) #5
  br label %43

43:                                               ; preds = %32, %25
  %44 = phi i8 [ %42, %32 ], [ 0, %25 ]
  store i8 %44, ptr %6, align 1
  br label %45

45:                                               ; preds = %43, %23, %15, %11, %7
  %46 = phi i32 [ 0, %15 ], [ 0, %23 ], [ 0, %7 ], [ 0, %11 ], [ %21, %43 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #5
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_timingEe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_timingTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, ptr %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, ptr %7, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr %8, align 1
  %23 = zext i8 %22 to i32
  %24 = mul nuw nsw i32 %23, %21
  %25 = add nuw nsw i32 %24, %19
  %26 = mul i32 %25, %1
  %27 = add i32 %9, %17
  %28 = add i32 %27, %26
  store i8 %18, ptr %3, align 1
  store i8 %20, ptr %4, align 1
  store i8 %22, ptr %5, align 1
  br label %29

29:                                               ; preds = %15, %11, %6
  %30 = phi i32 [ %28, %15 ], [ 0, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_timingEp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_timingTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %23, label %16

16:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  %17 = load i8, ptr %2, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 12
  store i32 %18, ptr %19, align 4
  %20 = load i8, ptr %3, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 13
  store i32 %21, ptr %22, align 4
  br label %315

23:                                               ; preds = %12
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, ptr %5, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, ptr %8, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, ptr %9, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, %29
  %33 = add nuw nsw i32 %32, %27
  %34 = mul i32 %33, %1
  %35 = add i32 %10, %25
  %36 = add i32 %35, %34
  store i8 %26, ptr %3, align 1
  store i8 %28, ptr %4, align 1
  store i8 %30, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  %37 = load i8, ptr %2, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 12
  store i32 %38, ptr %39, align 4
  %40 = load i8, ptr %3, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %315, label %44

44:                                               ; preds = %23
  %45 = load i8, ptr %2, align 1
  switch i8 %45, label %315 [
    i8 16, label %46
    i8 32, label %194
  ]

46:                                               ; preds = %44
  %47 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #5
  %48 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 15
  %49 = zext i8 %47 to i96
  %50 = load i96, ptr %48, align 4
  %51 = and i96 %50, -256
  %52 = or i96 %51, %49
  store i96 %52, ptr %48, align 4
  %53 = add i32 %36, 1
  %54 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %53) #5
  %55 = zext i8 %54 to i96
  %56 = load i96, ptr %48, align 4
  %57 = shl nuw nsw i96 %55, 8
  %58 = and i96 %56, -65281
  %59 = or i96 %58, %57
  store i96 %59, ptr %48, align 4
  %60 = add i32 %36, 2
  %61 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %60) #5
  %62 = zext i8 %61 to i96
  %63 = load i96, ptr %48, align 4
  %64 = shl nuw nsw i96 %62, 16
  %65 = and i96 %63, -16711681
  %66 = or i96 %65, %64
  store i96 %66, ptr %48, align 4
  %67 = add i32 %36, 3
  %68 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %67) #5
  %69 = zext i8 %68 to i96
  %70 = load i96, ptr %48, align 4
  %71 = shl nuw nsw i96 %69, 24
  %72 = and i96 %70, -4278190081
  %73 = or i96 %72, %71
  store i96 %73, ptr %48, align 4
  %74 = add i32 %36, 5
  %75 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %74) #5
  %76 = zext i8 %75 to i96
  %77 = load i96, ptr %48, align 4
  %78 = shl nuw nsw i96 %76, 32
  %79 = and i96 %77, -1095216660481
  %80 = or i96 %79, %78
  store i96 %80, ptr %48, align 4
  %81 = add i32 %36, 7
  %82 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %81) #5
  %83 = zext i8 %82 to i96
  %84 = load i96, ptr %48, align 4
  %85 = shl nuw nsw i96 %83, 40
  %86 = and i96 %84, -280375465082881
  %87 = or i96 %86, %85
  store i96 %87, ptr %48, align 4
  %88 = add i32 %36, 9
  %89 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %88) #5
  %90 = zext i8 %89 to i96
  %91 = load i96, ptr %48, align 4
  %92 = shl nuw nsw i96 %90, 48
  %93 = and i96 %91, -71776119061217281
  %94 = or i96 %93, %92
  store i96 %94, ptr %48, align 4
  %95 = add i32 %36, 10
  %96 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %95) #5
  %97 = zext i8 %96 to i96
  %98 = load i96, ptr %48, align 4
  %99 = shl nuw nsw i96 %97, 56
  %100 = and i96 %98, -18374686479671623681
  %101 = or i96 %100, %99
  store i96 %101, ptr %48, align 4
  %102 = add i32 %36, 11
  %103 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %102) #5
  %104 = zext i8 %103 to i96
  %105 = load i96, ptr %48, align 4
  %106 = shl nuw nsw i96 %104, 64
  %107 = and i96 %105, -4703919738795935662081
  %108 = or i96 %107, %106
  store i96 %108, ptr %48, align 4
  %109 = add i32 %36, 12
  %110 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %109) #5
  %111 = zext i8 %110 to i96
  %112 = load i96, ptr %48, align 4
  %113 = shl nuw nsw i96 %111, 72
  %114 = and i96 %112, -1204203453131759529492481
  %115 = or i96 %114, %113
  store i96 %115, ptr %48, align 4
  %116 = add i32 %36, 13
  %117 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %116) #5
  %118 = zext i8 %117 to i96
  %119 = load i96, ptr %48, align 4
  %120 = shl nuw nsw i96 %118, 80
  %121 = and i96 %119, -308276084001730439550074881
  %122 = or i96 %121, %120
  store i96 %122, ptr %48, align 4
  %123 = add i32 %36, 14
  %124 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %123) #5
  %125 = load i96, ptr %48, align 4
  %126 = and i8 %124, 7
  %127 = zext i8 %126 to i96
  %128 = shl nuw nsw i96 %127, 88
  %129 = and i96 %125, -2166395068749415481073467393
  %130 = or i96 %128, %129
  store i96 %130, ptr %48, align 4
  %131 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 5
  %132 = load i32, ptr %131, align 4
  %133 = icmp ugt i32 %132, 15
  br i1 %133, label %134, label %139

134:                                              ; preds = %46
  %135 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %123) #5
  %136 = and i8 %135, 7
  %137 = zext i8 %136 to i32
  %138 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 9
  store i32 %137, ptr %138, align 4
  br label %139

139:                                              ; preds = %134, %46
  %140 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 15, i32 1, i32 4
  %141 = load i64, ptr %140, align 4
  %142 = and i64 %141, -281474976710656
  %143 = or i64 %142, 280375465082880
  store i64 %143, ptr %140, align 4
  %144 = load i8, ptr %3, align 1
  %145 = tail call i8 @llvm.umin.i8(i8 %144, i8 25)
  %146 = zext i8 %145 to i32
  switch i32 %146, label %315 [
    i32 25, label %147
    i32 24, label %155
    i32 23, label %155
    i32 22, label %155
    i32 21, label %163
    i32 20, label %171
    i32 19, label %179
    i32 18, label %187
    i32 17, label %187
  ]

147:                                              ; preds = %139
  %148 = add i32 %36, 24
  %149 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %148) #5
  %150 = zext i8 %149 to i64
  %151 = load i64, ptr %140, align 4
  %152 = shl nuw nsw i64 %150, 40
  %153 = and i64 %151, -280375465082881
  %154 = or i64 %153, %152
  store i64 %154, ptr %140, align 4
  br label %155

155:                                              ; preds = %147, %139, %139, %139
  %156 = add i32 %36, 21
  %157 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %156) #5
  %158 = zext i8 %157 to i64
  %159 = load i64, ptr %140, align 4
  %160 = shl nuw nsw i64 %158, 32
  %161 = and i64 %159, -1095216660481
  %162 = or i64 %161, %160
  store i64 %162, ptr %140, align 4
  br label %163

163:                                              ; preds = %155, %139
  %164 = add i32 %36, 20
  %165 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %164) #5
  %166 = zext i8 %165 to i64
  %167 = load i64, ptr %140, align 4
  %168 = shl nuw nsw i64 %166, 24
  %169 = and i64 %167, -4278190081
  %170 = or i64 %169, %168
  store i64 %170, ptr %140, align 4
  br label %171

171:                                              ; preds = %163, %139
  %172 = add i32 %36, 19
  %173 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %172) #5
  %174 = zext i8 %173 to i64
  %175 = load i64, ptr %140, align 4
  %176 = shl nuw nsw i64 %174, 16
  %177 = and i64 %175, -16711681
  %178 = or i64 %177, %176
  store i64 %178, ptr %140, align 4
  br label %179

179:                                              ; preds = %171, %139
  %180 = add i32 %36, 18
  %181 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %180) #5
  %182 = zext i8 %181 to i64
  %183 = load i64, ptr %140, align 4
  %184 = shl nuw nsw i64 %182, 8
  %185 = and i64 %183, -65281
  %186 = or i64 %185, %184
  store i64 %186, ptr %140, align 4
  br label %187

187:                                              ; preds = %179, %139, %139
  %188 = add i32 %36, 16
  %189 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %188) #5
  %190 = zext i8 %189 to i64
  %191 = load i64, ptr %140, align 4
  %192 = and i64 %191, -256
  %193 = or i64 %192, %190
  store i64 %193, ptr %140, align 4
  br label %315

194:                                              ; preds = %44
  %195 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %36) #5
  %196 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14
  store i32 %195, ptr %196, align 4
  %197 = add i32 %36, 4
  %198 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %197) #5
  %199 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 1
  store i32 %198, ptr %199, align 4
  %200 = add i32 %36, 8
  %201 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %200) #5
  %202 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 2
  store i32 %201, ptr %202, align 4
  %203 = add i32 %36, 12
  %204 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %203) #5
  %205 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 3
  store i32 %204, ptr %205, align 4
  %206 = add i32 %36, 16
  %207 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %206) #5
  %208 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 4
  store i32 %207, ptr %208, align 4
  %209 = add i32 %36, 20
  %210 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %209) #5
  %211 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 5
  store i32 %210, ptr %211, align 4
  %212 = add i32 %36, 24
  %213 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %212) #5
  %214 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 6
  store i32 %213, ptr %214, align 4
  %215 = add i32 %36, 28
  %216 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %215) #5
  %217 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 7
  store i32 %216, ptr %217, align 4
  %218 = add i32 %36, 32
  %219 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %218) #5
  %220 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 8
  store i32 %219, ptr %220, align 4
  %221 = add i32 %36, 36
  %222 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %221) #5
  %223 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 9
  store i32 %222, ptr %223, align 4
  %224 = add i32 %36, 40
  %225 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %224) #5
  %226 = getelementptr %struct.nvbios_ramcfg, ptr %6, i32 0, i32 14, i32 10
  store i32 %225, ptr %226, align 4
  %227 = add i32 %36, 46
  %228 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %227) #5
  %229 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 15
  %230 = load i64, ptr %229, align 4
  %231 = and i8 %228, 3
  %232 = zext i8 %231 to i64
  %233 = and i64 %230, -4
  %234 = or i64 %233, %232
  store i64 %234, ptr %229, align 4
  %235 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %227) #5
  %236 = load i64, ptr %229, align 4
  %237 = lshr i8 %235, 2
  %238 = and i8 %237, 12
  %239 = zext i8 %238 to i64
  %240 = and i64 %236, -13
  %241 = or i64 %240, %239
  store i64 %241, ptr %229, align 4
  %242 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %227) #5
  %243 = load i64, ptr %229, align 4
  %244 = lshr i8 %242, 2
  %245 = and i8 %244, 48
  %246 = zext i8 %245 to i64
  %247 = and i64 %243, -49
  %248 = or i64 %247, %246
  store i64 %248, ptr %229, align 4
  %249 = add i32 %36, 47
  %250 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %249) #5
  %251 = load i64, ptr %229, align 4
  %252 = shl i8 %250, 6
  %253 = zext i8 %252 to i64
  %254 = and i64 %251, -193
  %255 = or i64 %254, %253
  store i64 %255, ptr %229, align 4
  %256 = add i32 %36, 44
  %257 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %256) #5
  %258 = zext i16 %257 to i32
  %259 = load i64, ptr %229, align 4
  %260 = shl nuw nsw i32 %258, 8
  %261 = and i32 %260, 16128
  %262 = zext i32 %261 to i64
  %263 = and i64 %259, -2096897
  %264 = or i64 %263, %262
  %265 = and i32 %260, 2080768
  %266 = zext i32 %265 to i64
  %267 = or i64 %264, %266
  store i64 %267, ptr %229, align 4
  %268 = add i32 %36, 48
  %269 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %268) #5
  %270 = load i64, ptr %229, align 4
  %271 = and i8 %269, 7
  %272 = zext i8 %271 to i64
  %273 = shl nuw nsw i64 %272, 26
  %274 = and i64 %270, -469762049
  %275 = or i64 %273, %274
  store i64 %275, ptr %229, align 4
  %276 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %268) #5
  %277 = lshr i8 %276, 3
  %278 = zext i8 %277 to i64
  %279 = load i64, ptr %229, align 4
  %280 = shl nuw nsw i64 %278, 21
  %281 = and i64 %279, -65011713
  %282 = or i64 %280, %281
  store i64 %282, ptr %229, align 4
  %283 = add i32 %36, 49
  %284 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %283) #5
  %285 = zext i16 %284 to i32
  %286 = load i64, ptr %229, align 4
  %287 = shl i32 %285, 29
  %288 = zext i32 %287 to i64
  %289 = and i64 %286, -35183835217921
  %290 = or i64 %289, %288
  %291 = lshr i32 %285, 3
  %292 = and i32 %291, 15
  %293 = zext i32 %292 to i64
  %294 = shl nuw nsw i64 %293, 32
  %295 = or i64 %294, %290
  %296 = lshr i32 %285, 7
  %297 = and i32 %296, 15
  %298 = zext i32 %297 to i64
  %299 = shl nuw nsw i64 %298, 36
  %300 = or i64 %295, %299
  %301 = lshr i32 %285, 11
  %302 = and i32 %301, 1
  %303 = zext i32 %302 to i64
  %304 = shl nuw nsw i64 %303, 40
  %305 = lshr i32 %285, 12
  %306 = and i32 %305, 7
  %307 = zext i32 %306 to i64
  %308 = shl nuw nsw i64 %307, 41
  %309 = lshr i32 %285, 15
  %310 = zext i32 %309 to i64
  %311 = shl nuw nsw i64 %310, 44
  %312 = or i64 %300, %304
  %313 = or i64 %312, %308
  %314 = or i64 %313, %311
  store i64 %314, ptr %229, align 4
  br label %315

315:                                              ; preds = %194, %187, %139, %44, %23, %16
  %316 = phi i32 [ %36, %194 ], [ %36, %139 ], [ %36, %187 ], [ 0, %44 ], [ 0, %23 ], [ 0, %16 ]
  ret i32 %316
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
