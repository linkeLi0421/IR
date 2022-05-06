; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.nvbios_dpcfg = type { i8, i8, i8, i8 }

@nvbios_dpcfg_match.vsoff = internal unnamed_addr constant [4 x i8] c"\00\04\07\09", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dp_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 100, ptr noundef nonnull %6) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  %13 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 2
  %14 = load i16, ptr %13, align 2
  %15 = icmp ugt i16 %14, 1
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %20) #4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = zext i16 %21 to i32
  %25 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #4
  store i8 %25, ptr %1, align 1
  switch i8 %25, label %33 [
    i8 32, label %26
    i8 33, label %26
    i8 48, label %26
    i8 64, label %26
    i8 65, label %26
    i8 66, label %26
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23
  %27 = add nuw nsw i32 %24, 1
  %28 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %27) #4
  store i8 %28, ptr %2, align 1
  %29 = add nuw nsw i32 %24, 2
  %30 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #4
  store i8 %30, ptr %4, align 1
  %31 = add nuw nsw i32 %24, 3
  %32 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #4
  store i8 %32, ptr %3, align 1
  br label %33

33:                                               ; preds = %26, %23, %17, %9, %5
  %34 = phi i16 [ %21, %26 ], [ 0, %23 ], [ 0, %17 ], [ 0, %9 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #4
  ret i16 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpout_parse(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = tail call zeroext i16 @nvbios_dp_table(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4
  %9 = zext i16 %8 to i32
  %10 = icmp eq i16 %8, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %4, align 1
  %13 = icmp ugt i8 %12, %1
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = zext i8 %1 to i32
  %16 = load i8, ptr %3, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %17, %9
  %19 = load i8, ptr %5, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, %15
  %22 = add nuw nsw i32 %18, %21
  %23 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %22) #4
  %24 = load i8, ptr %2, align 1
  %25 = icmp eq i16 %23, 0
  %26 = select i1 %25, i8 0, i8 %24
  switch i8 %26, label %39 [
    i8 32, label %27
    i8 33, label %27
    i8 48, label %27
    i8 64, label %35
    i8 65, label %35
    i8 66, label %35
  ]

27:                                               ; preds = %14, %14, %14
  %28 = add nuw nsw i32 %9, 4
  %29 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #4
  store i8 %29, ptr %3, align 1
  %30 = add nuw nsw i32 %9, 5
  %31 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #4
  store i8 %31, ptr %5, align 1
  %32 = zext i16 %23 to i32
  %33 = add nuw nsw i32 %32, 4
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #4
  store i8 %34, ptr %4, align 1
  br label %39

35:                                               ; preds = %14, %14, %14
  %36 = add nuw nsw i32 %9, 4
  %37 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #4
  store i8 %37, ptr %3, align 1
  store i8 0, ptr %4, align 1
  store i8 0, ptr %5, align 1
  br label %39

38:                                               ; preds = %11, %7
  store i8 0, ptr %2, align 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  br label %117

39:                                               ; preds = %35, %27, %14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %40 = zext i16 %23 to i32
  br i1 %25, label %117, label %41

41:                                               ; preds = %39
  %42 = load i8, ptr %2, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %117, label %44

44:                                               ; preds = %41
  %45 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %40) #4
  store i16 %45, ptr %6, align 4
  %46 = add nuw nsw i32 %40, 2
  %47 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %46) #4
  %48 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 1
  store i16 %47, ptr %48, align 2
  %49 = load i8, ptr %2, align 1
  switch i8 %49, label %117 [
    i8 32, label %50
    i8 33, label %52
    i8 48, label %52
    i8 64, label %89
    i8 65, label %89
    i8 66, label %89
  ]

50:                                               ; preds = %44
  %51 = or i16 %47, 192
  store i16 %51, ptr %48, align 2
  br label %52

52:                                               ; preds = %50, %44, %44
  %53 = add nuw nsw i32 %40, 5
  %54 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %53) #4
  %55 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 2
  store i8 %54, ptr %55, align 4
  %56 = add nuw nsw i32 %40, 6
  %57 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %56) #4
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 3
  store i32 %58, ptr %59, align 4
  %60 = add nuw nsw i32 %40, 8
  %61 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %60) #4
  %62 = zext i16 %61 to i32
  %63 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 1
  store i32 %62, ptr %63, align 4
  %64 = load i8, ptr %5, align 1
  %65 = icmp ugt i8 %64, 11
  br i1 %65, label %66, label %117

66:                                               ; preds = %52
  %67 = add nuw nsw i32 %40, 10
  %68 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %67) #4
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 4
  store i32 %69, ptr %70, align 4
  %71 = load i8, ptr %5, align 1
  %72 = icmp ugt i8 %71, 14
  br i1 %72, label %73, label %117

73:                                               ; preds = %66
  %74 = add nuw nsw i32 %40, 12
  %75 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %74) #4
  %76 = zext i16 %75 to i32
  %77 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 2
  store i32 %76, ptr %77, align 4
  %78 = add nuw nsw i32 %40, 14
  %79 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %78) #4
  %80 = zext i16 %79 to i32
  %81 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 3
  store i32 %80, ptr %81, align 4
  %82 = load i8, ptr %5, align 1
  %83 = icmp ugt i8 %82, 16
  br i1 %83, label %84, label %117

84:                                               ; preds = %73
  %85 = add nuw nsw i32 %40, 16
  %86 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %85) #4
  %87 = zext i16 %86 to i32
  %88 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 4
  store i32 %87, ptr %88, align 4
  br label %117

89:                                               ; preds = %44, %44, %44
  %90 = add nuw nsw i32 %40, 4
  %91 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %90) #4
  %92 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 2
  store i8 %91, ptr %92, align 4
  %93 = add nuw nsw i32 %40, 5
  %94 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %93) #4
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 3
  store i32 %95, ptr %96, align 4
  %97 = add nuw nsw i32 %40, 7
  %98 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %97) #4
  %99 = zext i16 %98 to i32
  %100 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 1
  store i32 %99, ptr %100, align 4
  %101 = add nuw nsw i32 %40, 9
  %102 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %101) #4
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds %struct.nvbios_dpout, ptr %6, i32 0, i32 4
  store i32 %103, ptr %104, align 4
  %105 = add nuw nsw i32 %40, 11
  %106 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %105) #4
  %107 = zext i16 %106 to i32
  %108 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 2
  store i32 %107, ptr %108, align 4
  %109 = add nuw nsw i32 %40, 13
  %110 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %109) #4
  %111 = zext i16 %110 to i32
  %112 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 3
  store i32 %111, ptr %112, align 4
  %113 = add nuw nsw i32 %40, 15
  %114 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %113) #4
  %115 = zext i16 %114 to i32
  %116 = getelementptr %struct.nvbios_dpout, ptr %6, i32 0, i32 3, i32 4
  store i32 %115, ptr %116, align 4
  br label %117

117:                                              ; preds = %89, %84, %73, %66, %52, %44, %41, %39, %38
  %118 = phi i16 [ %23, %89 ], [ %23, %84 ], [ %23, %73 ], [ %23, %41 ], [ 0, %39 ], [ 0, %44 ], [ 0, %38 ], [ %23, %66 ], [ %23, %52 ]
  ret i16 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpout_match(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.nvbios_dpout, ptr %7, i32 0, i32 1
  br label %10

10:                                               ; preds = %19, %8
  %11 = phi i16 [ 0, %8 ], [ %12, %19 ]
  %12 = add i16 %11, 1
  %13 = trunc i16 %11 to i8
  %14 = tail call zeroext i16 @nvbios_dpout_parse(ptr noundef %0, i8 noundef zeroext %13, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i8, ptr %3, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %23, %20, %16
  br label %10

20:                                               ; preds = %10
  %21 = load i16, ptr %7, align 4
  %22 = icmp eq i16 %21, %1
  br i1 %22, label %23, label %19

23:                                               ; preds = %20
  %24 = load i16, ptr %9, align 2
  %25 = and i16 %24, %2
  %26 = icmp eq i16 %25, %2
  br i1 %26, label %27, label %19

27:                                               ; preds = %23, %16
  ret i16 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpcfg_parse(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = tail call fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store i32 0, ptr %7, align 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %3, align 1
  switch i8 %12, label %44 [
    i8 32, label %13
    i8 33, label %13
    i8 48, label %22
    i8 64, label %22
    i8 65, label %22
    i8 66, label %32
  ]

13:                                               ; preds = %11, %11
  %14 = zext i16 %9 to i32
  %15 = add nuw nsw i32 %14, 2
  %16 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %15) #4
  %17 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = add nuw nsw i32 %14, 3
  %19 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %18) #4
  %20 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 2
  store i8 %19, ptr %20, align 1
  %21 = add nuw nsw i32 %14, 4
  br label %40

22:                                               ; preds = %11, %11, %11
  %23 = zext i16 %9 to i32
  %24 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %23) #4
  store i8 %24, ptr %7, align 1
  %25 = add nuw nsw i32 %23, 1
  %26 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %25) #4
  %27 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = add nuw nsw i32 %23, 2
  %29 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #4
  %30 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 2
  store i8 %29, ptr %30, align 1
  %31 = add nuw nsw i32 %23, 3
  br label %40

32:                                               ; preds = %11
  %33 = zext i16 %9 to i32
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #4
  %35 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = add nuw nsw i32 %33, 1
  %37 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #4
  %38 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 2
  store i8 %37, ptr %38, align 1
  %39 = add nuw nsw i32 %33, 2
  br label %40

40:                                               ; preds = %32, %22, %13
  %41 = phi i32 [ %21, %13 ], [ %31, %22 ], [ %39, %32 ]
  %42 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %41) #4
  %43 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %7, i32 0, i32 3
  store i8 %42, ptr %43, align 1
  br label %44

44:                                               ; preds = %40, %11, %8
  %45 = phi i16 [ 0, %8 ], [ 0, %11 ], [ %9, %40 ]
  ret i16 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = load i8, ptr %3, align 1
  %9 = icmp ugt i8 %8, 63
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %5, align 1
  br label %27

12:                                               ; preds = %7
  %13 = tail call zeroext i16 @nvbios_dp_table(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %14 = load i8, ptr %4, align 1
  %15 = load i8, ptr %6, align 1
  %16 = load i8, ptr %5, align 1
  %17 = mul i8 %16, %15
  %18 = add i8 %17, %14
  store i8 %18, ptr %4, align 1
  %19 = zext i16 %13 to i32
  %20 = add nuw nsw i32 %19, 6
  %21 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #4
  store i8 %21, ptr %6, align 1
  %22 = add nuw nsw i32 %19, 7
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  %24 = add nuw nsw i32 %19, 5
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #4
  %26 = mul i8 %25, %23
  store i8 %26, ptr %5, align 1
  br label %27

27:                                               ; preds = %12, %10
  %28 = phi i8 [ %26, %12 ], [ %11, %10 ]
  %29 = phi i16 [ %13, %12 ], [ %1, %10 ]
  %30 = icmp ugt i8 %28, %2
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = zext i8 %2 to i16
  %33 = load i8, ptr %4, align 1
  %34 = zext i8 %33 to i16
  %35 = add i16 %29, %34
  %36 = load i8, ptr %6, align 1
  %37 = zext i8 %36 to i16
  %38 = mul nuw i16 %37, %32
  %39 = add i16 %35, %38
  br label %40

40:                                               ; preds = %31, %27
  %41 = phi i16 [ %39, %31 ], [ 0, %27 ]
  ret i16 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_dpcfg_match(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr nocapture noundef %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #0 {
  %11 = load i8, ptr %5, align 1
  %12 = icmp ugt i8 %11, 47
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %51, label %30

16:                                               ; preds = %10
  %17 = mul i8 %2, 10
  %18 = zext i8 %3 to i32
  %19 = getelementptr [4 x i8], ptr @nvbios_dpcfg_match.vsoff, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = add i8 %17, %4
  %22 = add i8 %21, %20
  %23 = and i8 %11, -2
  %24 = icmp eq i8 %23, 64
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i8, ptr %6, align 1
  %27 = icmp ugt i8 %26, 17
  br i1 %27, label %44, label %51

28:                                               ; preds = %16
  %29 = icmp ugt i8 %11, 65
  br i1 %29, label %44, label %51

30:                                               ; preds = %40, %13
  %31 = phi i16 [ %42, %40 ], [ %14, %13 ]
  %32 = phi i8 [ %41, %40 ], [ 0, %13 ]
  %33 = zext i16 %31 to i32
  %34 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %33) #4
  %35 = icmp eq i8 %34, %3
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = add nuw nsw i32 %33, 1
  %38 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %37) #4
  %39 = icmp eq i8 %38, %4
  br i1 %39, label %51, label %40

40:                                               ; preds = %36, %30
  %41 = add i8 %32, 1
  %42 = tail call fastcc zeroext i16 @nvbios_dpcfg_entry(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %41, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %51, label %30

44:                                               ; preds = %28, %25
  %45 = phi i8 [ 40, %25 ], [ 10, %28 ]
  %46 = zext i16 %1 to i32
  %47 = add nuw nsw i32 %46, 17
  %48 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %47) #4
  %49 = mul i8 %48, %45
  %50 = add i8 %49, %22
  br label %51

51:                                               ; preds = %44, %40, %36, %28, %25, %13
  %52 = phi i8 [ %22, %28 ], [ %22, %25 ], [ 0, %13 ], [ %50, %44 ], [ %32, %36 ], [ %41, %40 ]
  %53 = tail call zeroext i16 @nvbios_dpcfg_parse(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %52, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i16 %53
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
