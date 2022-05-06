; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/rammap.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/rammap.c"
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
define dso_local i32 @nvbios_rammapTe(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %8) #5
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 2
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %37

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 4
  %20 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %19) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %15
  %23 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #5
  store i8 %23, ptr %1, align 1
  %24 = and i8 %23, -2
  %25 = icmp eq i8 %24, 16
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = add i32 %20, 1
  %28 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #5
  store i8 %28, ptr %2, align 1
  %29 = add i32 %20, 5
  %30 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #5
  store i8 %30, ptr %3, align 1
  %31 = add i32 %20, 2
  %32 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #5
  store i8 %32, ptr %4, align 1
  %33 = add i32 %20, 4
  %34 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #5
  store i8 %34, ptr %5, align 1
  %35 = add i32 %20, 3
  %36 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %35) #5
  store i8 %36, ptr %6, align 1
  br label %37

37:                                               ; preds = %26, %22, %15, %7
  %38 = phi i32 [ %20, %26 ], [ 0, %22 ], [ 0, %15 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #5
  ret i32 %38
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
define dso_local i32 @nvbios_rammapEe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_rammapTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8)
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
  %18 = add i32 %9, %17
  %19 = load i8, ptr %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, ptr %7, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, ptr %8, align 1
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, %22
  %26 = add nuw nsw i32 %25, %20
  %27 = mul i32 %26, %1
  %28 = add i32 %18, %27
  store i8 %19, ptr %3, align 1
  store i8 %21, ptr %4, align 1
  store i8 %23, ptr %5, align 1
  br label %29

29:                                               ; preds = %15, %11, %6
  %30 = phi i32 [ %28, %15 ], [ 0, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapEp_from_perf(ptr noundef %0, i32 noundef returned %1, i8 noundef zeroext %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(132) %3, i8 0, i32 132, i1 false)
  %5 = add i32 %1, 22
  %6 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %5) #5
  %7 = lshr i8 %6, 5
  %8 = and i8 %7, 1
  %9 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %3, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, -2
  %12 = or i8 %11, %8
  store i8 %12, ptr %9, align 4
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %5) #5
  %14 = load i8, ptr %9, align 4
  %15 = lshr i8 %13, 5
  %16 = and i8 %15, 2
  %17 = and i8 %14, -3
  %18 = or i8 %17, %16
  store i8 %18, ptr %9, align 4
  %19 = add i32 %1, 23
  %20 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %19) #5
  %21 = load i8, ptr %9, align 4
  %22 = shl i8 %20, 1
  %23 = and i8 %22, 4
  %24 = and i8 %21, -5
  %25 = or i8 %24, %23
  store i8 %25, ptr %9, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapEp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_rammapTe(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, %1
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i8, ptr %3, align 1
  %18 = zext i8 %17 to i32
  %19 = add i32 %10, %18
  %20 = load i8, ptr %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr %8, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, ptr %9, align 1
  %25 = zext i8 %24 to i32
  %26 = mul nuw nsw i32 %25, %23
  %27 = add nuw nsw i32 %26, %21
  %28 = mul i32 %27, %1
  %29 = add i32 %19, %28
  store i8 %20, ptr %3, align 1
  store i8 %22, ptr %4, align 1
  store i8 %24, ptr %5, align 1
  br label %30

30:                                               ; preds = %16, %12, %7
  %31 = phi i32 [ %29, %16 ], [ 0, %12 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(132) %6, i8 0, i32 132, i1 false)
  %32 = load i8, ptr %2, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, ptr %6, align 4
  %34 = load i8, ptr %3, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = icmp eq i32 %31, 0
  br i1 %37, label %151, label %38

38:                                               ; preds = %30
  %39 = load i8, ptr %2, align 1
  switch i8 %39, label %151 [
    i8 16, label %40
    i8 17, label %62
  ]

40:                                               ; preds = %38
  %41 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %31) #5
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = add i32 %31, 2
  %45 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %44) #5
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = add i32 %31, 4
  %49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %48) #5
  %50 = lshr i8 %49, 1
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 4
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, -2
  %55 = or i8 %54, %51
  store i8 %55, ptr %52, align 4
  %56 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %48) #5
  %57 = load i8, ptr %52, align 4
  %58 = lshr i8 %56, 2
  %59 = and i8 %58, 2
  %60 = and i8 %57, -3
  %61 = or i8 %60, %59
  store i8 %61, ptr %52, align 4
  br label %151

62:                                               ; preds = %38
  %63 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %31) #5
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  %66 = add i32 %31, 2
  %67 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %66) #5
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 3
  store i32 %68, ptr %69, align 4
  %70 = add i32 %31, 8
  %71 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %70) #5
  %72 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 4
  %73 = load i64, ptr %72, align 4
  %74 = and i8 %71, 1
  %75 = zext i8 %74 to i64
  %76 = and i64 %73, -2
  %77 = or i64 %76, %75
  store i64 %77, ptr %72, align 4
  %78 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %70) #5
  %79 = load i64, ptr %72, align 4
  %80 = lshr i8 %78, 1
  %81 = and i8 %80, 6
  %82 = zext i8 %81 to i64
  %83 = and i64 %79, -7
  %84 = or i64 %83, %82
  store i64 %84, ptr %72, align 4
  %85 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %70) #5
  %86 = load i64, ptr %72, align 4
  %87 = lshr i8 %85, 1
  %88 = and i8 %87, 8
  %89 = zext i8 %88 to i64
  %90 = and i64 %86, -9
  %91 = or i64 %90, %89
  store i64 %91, ptr %72, align 4
  %92 = add i32 %31, 9
  %93 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %92) #5
  %94 = load i64, ptr %72, align 4
  %95 = shl i32 %93, 4
  %96 = and i32 %95, 8176
  %97 = zext i32 %96 to i64
  %98 = and i64 %94, -4294967281
  %99 = or i64 %98, %97
  %100 = and i32 %95, 4186112
  %101 = zext i32 %100 to i64
  %102 = or i64 %99, %101
  %103 = and i32 %95, 4194304
  %104 = zext i32 %103 to i64
  %105 = or i64 %102, %104
  %106 = and i32 %95, 520093696
  %107 = zext i32 %106 to i64
  %108 = and i32 %95, 536870912
  %109 = zext i32 %108 to i64
  %110 = and i32 %95, 1073741824
  %111 = zext i32 %110 to i64
  %112 = and i32 %95, -2147483648
  %113 = zext i32 %112 to i64
  %114 = and i32 %95, 8388608
  %115 = zext i32 %114 to i64
  %116 = or i64 %105, %115
  %117 = or i64 %116, %107
  %118 = or i64 %117, %109
  %119 = or i64 %118, %111
  %120 = or i64 %119, %113
  store i64 %120, ptr %72, align 4
  %121 = add i32 %31, 13
  %122 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %121) #5
  %123 = zext i8 %122 to i64
  %124 = load i64, ptr %72, align 4
  %125 = shl nuw nsw i64 %123, 32
  %126 = and i64 %124, -1095216660481
  %127 = or i64 %126, %125
  store i64 %127, ptr %72, align 4
  %128 = add i32 %31, 14
  %129 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %128) #5
  %130 = zext i8 %129 to i64
  %131 = load i64, ptr %72, align 4
  %132 = shl nuw nsw i64 %130, 40
  %133 = and i64 %131, -280375465082881
  %134 = or i64 %133, %132
  store i64 %134, ptr %72, align 4
  %135 = add i32 %31, 15
  %136 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %135) #5
  %137 = zext i8 %136 to i64
  %138 = load i64, ptr %72, align 4
  %139 = shl nuw nsw i64 %137, 48
  %140 = and i64 %138, -71776119061217281
  %141 = or i64 %140, %139
  store i64 %141, ptr %72, align 4
  %142 = add i32 %31, 17
  %143 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %142) #5
  %144 = lshr i8 %143, 2
  %145 = load i64, ptr %72, align 4
  %146 = and i8 %144, 3
  %147 = zext i8 %146 to i64
  %148 = shl nuw nsw i64 %147, 56
  %149 = and i64 %145, -216172782113783809
  %150 = or i64 %148, %149
  store i64 %150, ptr %72, align 4
  br label %151

151:                                              ; preds = %62, %40, %38, %30
  %152 = phi i32 [ %31, %62 ], [ %31, %40 ], [ 0, %38 ], [ 0, %30 ]
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapEm(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 3
  %9 = tail call i32 @nvbios_rammapEp(ptr noundef %0, i32 noundef 0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = zext i16 %1 to i32
  %13 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %6, i32 0, i32 2
  br label %14

14:                                               ; preds = %22, %11
  %15 = phi i32 [ %9, %11 ], [ %24, %22 ]
  %16 = phi i32 [ 1, %11 ], [ %23, %22 ]
  %17 = load i32, ptr %13, align 4
  %18 = icmp ugt i32 %17, %12
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %8, align 4
  %21 = icmp ult i32 %20, %12
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %14
  %23 = add i32 %16, 1
  %24 = tail call i32 @nvbios_rammapEp(ptr noundef %0, i32 noundef %16, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14

26:                                               ; preds = %22, %19, %7
  %27 = phi i32 [ 0, %7 ], [ %15, %19 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nvbios_rammapSe(ptr nocapture readnone %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #4 {
  %10 = zext i8 %4 to i32
  %11 = icmp sgt i32 %10, %6
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = zext i8 %3 to i32
  %14 = add i32 %13, %1
  %15 = zext i8 %5 to i32
  %16 = mul i32 %15, %6
  %17 = add i32 %14, %16
  store i8 %2, ptr %7, align 1
  store i8 %5, ptr %8, align 1
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %17, %12 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapSp_from_perf(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = icmp ult i8 %2, 11
  br i1 %6, label %123, label %7

7:                                                ; preds = %5
  %8 = zext i8 %2 to i32
  %9 = mul i32 %8, %3
  %10 = add i32 %9, %1
  %11 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 5
  store i32 0, ptr %11, align 4
  %12 = add i32 %10, 1
  %13 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %12) #5
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  %16 = add i32 %10, 3
  %17 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #5
  %18 = and i8 %17, 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -2
  %23 = or i32 %22, %19
  store i32 %23, ptr %20, align 4
  %24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #5
  %25 = load i32, ptr %20, align 4
  %26 = and i8 %24, 2
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, -3
  %29 = or i32 %28, %27
  store i32 %29, ptr %20, align 4
  %30 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #5
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 8
  store i32 %33, ptr %34, align 4
  %35 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #5
  %36 = load i32, ptr %20, align 4
  %37 = lshr i8 %35, 1
  %38 = and i8 %37, 4
  %39 = zext i8 %38 to i32
  %40 = and i32 %36, -5
  %41 = or i32 %40, %39
  store i32 %41, ptr %20, align 4
  %42 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #5
  %43 = lshr i8 %42, 3
  %44 = and i8 %43, 2
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 9
  store i32 %45, ptr %46, align 4
  %47 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %16) #5
  %48 = lshr i8 %47, 7
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 10
  store i32 %49, ptr %50, align 4
  %51 = add i32 %10, 4
  %52 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %51) #5
  %53 = load i32, ptr %20, align 4
  %54 = shl i8 %52, 3
  %55 = and i8 %54, 16
  %56 = zext i8 %55 to i32
  %57 = and i32 %53, -17
  %58 = or i32 %57, %56
  store i32 %58, ptr %20, align 4
  %59 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %51) #5
  %60 = load i32, ptr %20, align 4
  %61 = shl i8 %59, 3
  %62 = and i8 %61, 32
  %63 = zext i8 %62 to i32
  %64 = and i32 %60, -33
  %65 = or i32 %64, %63
  store i32 %65, ptr %20, align 4
  %66 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %51) #5
  %67 = load i32, ptr %20, align 4
  %68 = shl i8 %66, 1
  %69 = and i8 %68, 64
  %70 = zext i8 %69 to i32
  %71 = and i32 %67, -65
  %72 = or i32 %71, %70
  store i32 %72, ptr %20, align 4
  %73 = add i32 %10, 5
  %74 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %73) #5
  %75 = zext i8 %74 to i32
  %76 = load i32, ptr %20, align 4
  %77 = shl nuw nsw i32 %75, 7
  %78 = and i32 %76, -32641
  %79 = or i32 %78, %77
  store i32 %79, ptr %20, align 4
  %80 = add i32 %10, 6
  %81 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %80) #5
  %82 = zext i8 %81 to i32
  %83 = load i32, ptr %20, align 4
  %84 = shl nuw nsw i32 %82, 15
  %85 = and i32 %83, -8355841
  %86 = or i32 %85, %84
  store i32 %86, ptr %20, align 4
  %87 = add i32 %10, 7
  %88 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %87) #5
  %89 = zext i8 %88 to i32
  %90 = load i32, ptr %20, align 4
  %91 = shl nuw nsw i32 %89, 23
  %92 = and i32 %90, -2139095041
  %93 = or i32 %92, %91
  store i32 %93, ptr %20, align 4
  %94 = add i32 %10, 8
  %95 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %94) #5
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %4, i32 0, i32 11, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, -256
  %100 = or i32 %99, %96
  store i32 %100, ptr %97, align 4
  %101 = add i32 %10, 9
  %102 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %101) #5
  %103 = zext i8 %102 to i32
  %104 = load i32, ptr %97, align 4
  %105 = shl nuw nsw i32 %103, 8
  %106 = and i32 %104, -65281
  %107 = or i32 %106, %105
  store i32 %107, ptr %97, align 4
  %108 = add i32 %10, 10
  %109 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %108) #5
  %110 = and i8 %109, 15
  %111 = zext i8 %110 to i32
  %112 = load i32, ptr %97, align 4
  %113 = shl nuw nsw i32 %111, 16
  %114 = and i32 %112, -983041
  %115 = or i32 %113, %114
  store i32 %115, ptr %97, align 4
  %116 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %108) #5
  %117 = lshr i8 %116, 4
  %118 = zext i8 %117 to i32
  %119 = load i32, ptr %97, align 4
  %120 = shl nuw nsw i32 %118, 20
  %121 = and i32 %119, -15728641
  %122 = or i32 %120, %121
  store i32 %122, ptr %97, align 4
  br label %123

123:                                              ; preds = %7, %5
  %124 = phi i32 [ %10, %7 ], [ 0, %5 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_rammapSp(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = zext i8 %4 to i32
  %12 = icmp sgt i32 %11, %6
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %7, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = load i8, ptr %8, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 6
  store i32 %18, ptr %19, align 4
  br label %392

20:                                               ; preds = %10
  %21 = zext i8 %3 to i32
  %22 = add i32 %21, %1
  %23 = zext i8 %5 to i32
  %24 = mul i32 %23, %6
  %25 = add i32 %22, %24
  store i8 %2, ptr %7, align 1
  store i8 %5, ptr %8, align 1
  %26 = load i8, ptr %7, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = load i8, ptr %8, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 6
  store i32 %30, ptr %31, align 4
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %392, label %33

33:                                               ; preds = %20
  %34 = load i8, ptr %7, align 1
  switch i8 %34, label %392 [
    i8 16, label %35
    i8 17, label %147
  ]

35:                                               ; preds = %33
  %36 = add i32 %25, 1
  %37 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #5
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  %40 = add i32 %25, 2
  %41 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %42 = and i8 %41, 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -2
  %47 = or i32 %46, %43
  store i32 %47, ptr %44, align 4
  %48 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %49 = load i32, ptr %44, align 4
  %50 = and i8 %48, 2
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, -3
  %53 = or i32 %52, %51
  store i32 %53, ptr %44, align 4
  %54 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %55 = load i32, ptr %44, align 4
  %56 = and i8 %54, 4
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, -5
  %59 = or i32 %58, %57
  store i32 %59, ptr %44, align 4
  %60 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %61 = load i32, ptr %44, align 4
  %62 = and i8 %60, 8
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, -9
  %65 = or i32 %64, %63
  store i32 %65, ptr %44, align 4
  %66 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %67 = load i32, ptr %44, align 4
  %68 = and i8 %66, 16
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, -17
  %71 = or i32 %70, %69
  store i32 %71, ptr %44, align 4
  %72 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %73 = load i32, ptr %44, align 4
  %74 = and i8 %72, 32
  %75 = zext i8 %74 to i32
  %76 = and i32 %73, -33
  %77 = or i32 %76, %75
  store i32 %77, ptr %44, align 4
  %78 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  %79 = lshr i8 %78, 6
  %80 = and i8 %79, 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 8
  store i32 %81, ptr %82, align 4
  %83 = add i32 %25, 3
  %84 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %83) #5
  %85 = and i8 %84, 15
  %86 = zext i8 %85 to i32
  %87 = load i32, ptr %44, align 4
  %88 = shl nuw nsw i32 %86, 6
  %89 = and i32 %87, -961
  %90 = or i32 %88, %89
  store i32 %90, ptr %44, align 4
  %91 = add i32 %25, 4
  %92 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %91) #5
  %93 = and i8 %92, 1
  %94 = zext i8 %93 to i32
  %95 = load i32, ptr %44, align 4
  %96 = shl nuw nsw i32 %94, 10
  %97 = and i32 %95, -1025
  %98 = or i32 %96, %97
  store i32 %98, ptr %44, align 4
  %99 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %91) #5
  %100 = lshr i8 %99, 3
  %101 = and i8 %100, 1
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 10
  store i32 %102, ptr %103, align 4
  %104 = add i32 %25, 5
  %105 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %104) #5
  %106 = zext i8 %105 to i32
  %107 = load i32, ptr %44, align 4
  %108 = shl nuw nsw i32 %106, 11
  %109 = and i32 %107, -522241
  %110 = or i32 %109, %108
  store i32 %110, ptr %44, align 4
  %111 = add i32 %25, 6
  %112 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %111) #5
  %113 = zext i8 %112 to i32
  %114 = load i32, ptr %44, align 4
  %115 = shl nuw nsw i32 %113, 19
  %116 = and i32 %114, -133693441
  %117 = or i32 %116, %115
  store i32 %117, ptr %44, align 4
  %118 = add i32 %25, 7
  %119 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %118) #5
  %120 = zext i8 %119 to i32
  %121 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 11, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, -256
  %124 = or i32 %123, %120
  store i32 %124, ptr %121, align 4
  %125 = add i32 %25, 8
  %126 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %125) #5
  %127 = zext i8 %126 to i32
  %128 = load i32, ptr %121, align 4
  %129 = shl nuw nsw i32 %127, 8
  %130 = and i32 %128, -65281
  %131 = or i32 %130, %129
  store i32 %131, ptr %121, align 4
  %132 = add i32 %25, 9
  %133 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %132) #5
  %134 = and i8 %133, 15
  %135 = zext i8 %134 to i32
  %136 = load i32, ptr %121, align 4
  %137 = shl nuw nsw i32 %135, 16
  %138 = and i32 %136, -983041
  %139 = or i32 %137, %138
  store i32 %139, ptr %121, align 4
  %140 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %132) #5
  %141 = lshr i8 %140, 4
  %142 = zext i8 %141 to i32
  %143 = load i32, ptr %121, align 4
  %144 = shl nuw nsw i32 %142, 20
  %145 = and i32 %143, -15728641
  %146 = or i32 %144, %145
  store i32 %146, ptr %121, align 4
  br label %392

147:                                              ; preds = %33
  %148 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %25) #5
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 7
  store i32 %149, ptr %150, align 4
  %151 = add i32 %25, 1
  %152 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %153 = and i8 %152, 1
  %154 = zext i8 %153 to i32
  %155 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 11
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, -2
  %158 = or i32 %157, %154
  store i32 %158, ptr %155, align 4
  %159 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %160 = load i32, ptr %155, align 4
  %161 = and i8 %159, 2
  %162 = zext i8 %161 to i32
  %163 = and i32 %160, -3
  %164 = or i32 %163, %162
  store i32 %164, ptr %155, align 4
  %165 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %166 = load i32, ptr %155, align 4
  %167 = and i8 %165, 4
  %168 = zext i8 %167 to i32
  %169 = and i32 %166, -5
  %170 = or i32 %169, %168
  store i32 %170, ptr %155, align 4
  %171 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %172 = load i32, ptr %155, align 4
  %173 = and i8 %171, 8
  %174 = zext i8 %173 to i32
  %175 = and i32 %172, -9
  %176 = or i32 %175, %174
  store i32 %176, ptr %155, align 4
  %177 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %178 = load i32, ptr %155, align 4
  %179 = and i8 %177, 16
  %180 = zext i8 %179 to i32
  %181 = and i32 %178, -17
  %182 = or i32 %181, %180
  store i32 %182, ptr %155, align 4
  %183 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %184 = lshr i8 %183, 5
  %185 = and i8 %184, 1
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 8
  store i32 %186, ptr %187, align 4
  %188 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %189 = load i32, ptr %155, align 4
  %190 = lshr i8 %188, 1
  %191 = and i8 %190, 32
  %192 = zext i8 %191 to i32
  %193 = and i32 %189, -33
  %194 = or i32 %193, %192
  store i32 %194, ptr %155, align 4
  %195 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %196 = load i32, ptr %155, align 4
  %197 = lshr i8 %195, 1
  %198 = and i8 %197, 64
  %199 = zext i8 %198 to i32
  %200 = and i32 %196, -65
  %201 = or i32 %200, %199
  store i32 %201, ptr %155, align 4
  %202 = add i32 %25, 2
  %203 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %202) #5
  %204 = and i8 %203, 3
  %205 = zext i8 %204 to i32
  %206 = load i32, ptr %155, align 4
  %207 = shl nuw nsw i32 %205, 7
  %208 = and i32 %206, -385
  %209 = or i32 %207, %208
  store i32 %209, ptr %155, align 4
  %210 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %202) #5
  %211 = lshr i8 %210, 2
  %212 = load i32, ptr %155, align 4
  %213 = and i8 %211, 1
  %214 = zext i8 %213 to i32
  %215 = shl nuw nsw i32 %214, 9
  %216 = and i32 %212, -513
  %217 = or i32 %215, %216
  store i32 %217, ptr %155, align 4
  %218 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %202) #5
  %219 = lshr i8 %218, 3
  %220 = load i32, ptr %155, align 4
  %221 = and i8 %219, 1
  %222 = zext i8 %221 to i32
  %223 = shl nuw nsw i32 %222, 10
  %224 = and i32 %220, -1025
  %225 = or i32 %223, %224
  store i32 %225, ptr %155, align 4
  %226 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %202) #5
  %227 = lshr i8 %226, 4
  %228 = load i32, ptr %155, align 4
  %229 = and i8 %227, 1
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 11
  %232 = and i32 %228, -2049
  %233 = or i32 %231, %232
  store i32 %233, ptr %155, align 4
  %234 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %202) #5
  %235 = lshr i8 %234, 6
  %236 = load i32, ptr %155, align 4
  %237 = and i8 %235, 1
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 12
  %240 = and i32 %236, -4097
  %241 = or i32 %239, %240
  store i32 %241, ptr %155, align 4
  %242 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %202) #5
  %243 = lshr i8 %242, 7
  %244 = zext i8 %243 to i32
  %245 = load i32, ptr %155, align 4
  %246 = shl nuw nsw i32 %244, 13
  %247 = and i32 %245, -8193
  %248 = or i32 %246, %247
  store i32 %248, ptr %155, align 4
  %249 = add i32 %25, 3
  %250 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %249) #5
  %251 = and i8 %250, 15
  %252 = zext i8 %251 to i32
  %253 = load i32, ptr %155, align 4
  %254 = shl nuw nsw i32 %252, 14
  %255 = and i32 %253, -245761
  %256 = or i32 %254, %255
  store i32 %256, ptr %155, align 4
  %257 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %249) #5
  %258 = lshr i8 %257, 4
  %259 = load i32, ptr %155, align 4
  %260 = and i8 %258, 3
  %261 = zext i8 %260 to i32
  %262 = shl nuw nsw i32 %261, 18
  %263 = and i32 %259, -786433
  %264 = or i32 %262, %263
  store i32 %264, ptr %155, align 4
  %265 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %249) #5
  %266 = lshr i8 %265, 6
  %267 = zext i8 %266 to i32
  %268 = load i32, ptr %155, align 4
  %269 = shl nuw nsw i32 %267, 20
  %270 = and i32 %268, -3145729
  %271 = or i32 %269, %270
  store i32 %271, ptr %155, align 4
  %272 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %249) #5
  %273 = lshr i8 %272, 4
  %274 = zext i8 %273 to i32
  %275 = load i32, ptr %155, align 4
  %276 = shl nuw nsw i32 %274, 22
  %277 = and i32 %275, -62914561
  %278 = or i32 %276, %277
  store i32 %278, ptr %155, align 4
  %279 = add i32 %25, 4
  %280 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %279) #5
  %281 = zext i8 %280 to i32
  %282 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 11, i32 0, i32 1
  %283 = load i32, ptr %282, align 4
  %284 = and i32 %283, -256
  %285 = or i32 %284, %281
  store i32 %285, ptr %282, align 4
  %286 = add i32 %25, 6
  %287 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %286) #5
  %288 = zext i8 %287 to i32
  %289 = load i32, ptr %282, align 4
  %290 = shl nuw nsw i32 %288, 8
  %291 = and i32 %289, -65281
  %292 = or i32 %291, %290
  store i32 %292, ptr %282, align 4
  %293 = add i32 %25, 7
  %294 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %293) #5
  %295 = lshr i8 %294, 1
  %296 = load i32, ptr %282, align 4
  %297 = and i8 %295, 1
  %298 = zext i8 %297 to i32
  %299 = shl nuw nsw i32 %298, 16
  %300 = and i32 %296, -65537
  %301 = or i32 %299, %300
  store i32 %301, ptr %282, align 4
  %302 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %293) #5
  %303 = lshr i8 %302, 2
  %304 = load i32, ptr %282, align 4
  %305 = and i8 %303, 1
  %306 = zext i8 %305 to i32
  %307 = shl nuw nsw i32 %306, 17
  %308 = and i32 %304, -131073
  %309 = or i32 %307, %308
  store i32 %309, ptr %282, align 4
  %310 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %293) #5
  %311 = lshr i8 %310, 3
  %312 = load i32, ptr %282, align 4
  %313 = and i8 %311, 1
  %314 = zext i8 %313 to i32
  %315 = shl nuw nsw i32 %314, 18
  %316 = and i32 %312, -262145
  %317 = or i32 %315, %316
  store i32 %317, ptr %282, align 4
  %318 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %293) #5
  %319 = lshr i8 %318, 4
  %320 = load i32, ptr %282, align 4
  %321 = and i8 %319, 1
  %322 = zext i8 %321 to i32
  %323 = shl nuw nsw i32 %322, 19
  %324 = and i32 %320, -524289
  %325 = or i32 %323, %324
  store i32 %325, ptr %282, align 4
  %326 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %293) #5
  %327 = lshr i8 %326, 6
  %328 = load i32, ptr %282, align 4
  %329 = and i8 %327, 1
  %330 = zext i8 %329 to i32
  %331 = shl nuw nsw i32 %330, 20
  %332 = and i32 %328, -1048577
  %333 = or i32 %331, %332
  store i32 %333, ptr %282, align 4
  %334 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %293) #5
  %335 = lshr i8 %334, 7
  %336 = zext i8 %335 to i32
  %337 = load i32, ptr %282, align 4
  %338 = shl nuw nsw i32 %336, 21
  %339 = and i32 %337, -2097153
  %340 = or i32 %338, %339
  store i32 %340, ptr %282, align 4
  %341 = add i32 %25, 8
  %342 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %341) #5
  %343 = and i8 %342, 1
  %344 = zext i8 %343 to i32
  %345 = load i32, ptr %282, align 4
  %346 = shl nuw nsw i32 %344, 22
  %347 = and i32 %345, -4194305
  %348 = or i32 %346, %347
  store i32 %348, ptr %282, align 4
  %349 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %341) #5
  %350 = lshr i8 %349, 1
  %351 = load i32, ptr %282, align 4
  %352 = and i8 %350, 1
  %353 = zext i8 %352 to i32
  %354 = shl nuw nsw i32 %353, 23
  %355 = and i32 %351, -8388609
  %356 = or i32 %354, %355
  store i32 %356, ptr %282, align 4
  %357 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %341) #5
  %358 = lshr i8 %357, 2
  %359 = load i32, ptr %282, align 4
  %360 = and i8 %358, 1
  %361 = zext i8 %360 to i32
  %362 = shl nuw nsw i32 %361, 24
  %363 = and i32 %359, -16777217
  %364 = or i32 %362, %363
  store i32 %364, ptr %282, align 4
  %365 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %341) #5
  %366 = lshr i8 %365, 3
  %367 = load i32, ptr %282, align 4
  %368 = and i8 %366, 1
  %369 = zext i8 %368 to i32
  %370 = shl nuw nsw i32 %369, 25
  %371 = and i32 %367, -33554433
  %372 = or i32 %370, %371
  store i32 %372, ptr %282, align 4
  %373 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %341) #5
  %374 = lshr i8 %373, 4
  %375 = load i32, ptr %282, align 4
  %376 = and i8 %374, 1
  %377 = zext i8 %376 to i32
  %378 = shl nuw nsw i32 %377, 26
  %379 = and i32 %375, -67108865
  %380 = or i32 %378, %379
  store i32 %380, ptr %282, align 4
  %381 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %341) #5
  %382 = lshr i8 %381, 5
  %383 = load i32, ptr %282, align 4
  %384 = and i8 %382, 1
  %385 = zext i8 %384 to i32
  %386 = shl nuw nsw i32 %385, 27
  %387 = and i32 %383, -134217729
  %388 = or i32 %386, %387
  store i32 %388, ptr %282, align 4
  %389 = add i32 %25, 9
  %390 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %389) #5
  %391 = getelementptr inbounds %struct.nvbios_ramcfg, ptr %9, i32 0, i32 11, i32 0, i32 2
  store i8 %390, ptr %391, align 4
  br label %392

392:                                              ; preds = %147, %35, %33, %20, %13
  %393 = phi i32 [ %25, %147 ], [ %25, %35 ], [ 0, %33 ], [ 0, %20 ], [ 0, %13 ]
  ret i32 %393
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
