; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/disp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_outp = type { i16, i16, [3 x i16] }
%struct.nvbios_ocfg = type { i8, i8, [2 x i16] }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_disp_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %7, i8 0, i32 6, i1 false), !annotation !8
  %8 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 85, ptr noundef nonnull %7) #5
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.bit_entry, ptr %7, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bit_entry, ptr %7, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %17) #5
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = zext i16 %18 to i32
  %22 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %21) #5
  store i8 %22, ptr %1, align 1
  %23 = add i8 %22, -32
  %24 = icmp ult i8 %23, 3
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %21, 1
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #5
  store i8 %27, ptr %2, align 1
  %28 = add nuw nsw i32 %21, 2
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #5
  store i8 %29, ptr %4, align 1
  %30 = add nuw nsw i32 %21, 3
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #5
  store i8 %31, ptr %3, align 1
  %32 = add nuw nsw i32 %21, 4
  %33 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %32) #5
  store i8 %33, ptr %5, align 1
  br label %34

34:                                               ; preds = %25, %20, %14, %6
  %35 = phi i16 [ %18, %25 ], [ 0, %20 ], [ 0, %14 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #5
  ret i16 %35
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
define dso_local zeroext i16 @nvbios_disp_entry(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call zeroext i16 @nvbios_disp_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4)
  %9 = icmp ne i16 %8, 0
  %10 = load i8, ptr %7, align 1
  %11 = icmp ugt i8 %10, %1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = zext i8 %1 to i16
  %15 = load i8, ptr %6, align 1
  %16 = zext i8 %15 to i16
  %17 = add i16 %8, %16
  %18 = load i8, ptr %3, align 1
  %19 = zext i8 %18 to i16
  %20 = mul nuw i16 %19, %14
  %21 = add i16 %17, %20
  br label %23

22:                                               ; preds = %5
  store i8 0, ptr %2, align 1
  br label %23

23:                                               ; preds = %22, %13
  %24 = phi i16 [ %21, %13 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  ret i16 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_disp_parse(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call zeroext i16 @nvbios_disp_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %3, ptr noundef %4) #5
  %10 = icmp ne i16 %9, 0
  %11 = load i8, ptr %8, align 1
  %12 = icmp ugt i8 %11, %1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  br label %30

15:                                               ; preds = %6
  %16 = zext i8 %1 to i16
  %17 = load i8, ptr %7, align 1
  %18 = zext i8 %17 to i16
  %19 = add i16 %9, %18
  %20 = load i8, ptr %3, align 1
  %21 = zext i8 %20 to i16
  %22 = mul nuw i16 %21, %16
  %23 = add i16 %19, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  %24 = icmp ne i16 %23, 0
  %25 = icmp ugt i8 %20, 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = zext i16 %23 to i32
  %29 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %28) #5
  store i16 %29, ptr %5, align 2
  br label %30

30:                                               ; preds = %27, %15, %14
  %31 = phi i16 [ %23, %27 ], [ 0, %15 ], [ 0, %14 ]
  ret i16 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_outp_entry(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call zeroext i16 @nvbios_disp_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %5, ptr noundef %3) #5
  %10 = icmp ne i16 %9, 0
  %11 = load i8, ptr %8, align 1
  %12 = icmp ugt i8 %11, %1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  br label %33

15:                                               ; preds = %6
  %16 = zext i8 %1 to i16
  %17 = load i8, ptr %7, align 1
  %18 = zext i8 %17 to i16
  %19 = add i16 %9, %18
  %20 = load i8, ptr %5, align 1
  %21 = zext i8 %20 to i16
  %22 = mul nuw i16 %21, %16
  %23 = add i16 %19, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  %24 = icmp ne i16 %23, 0
  %25 = icmp ugt i8 %20, 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = zext i16 %23 to i32
  %29 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %28) #5
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %30, 5
  %32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #5
  store i8 %32, ptr %4, align 1
  store i8 6, ptr %5, align 1
  br label %33

33:                                               ; preds = %27, %15, %14
  %34 = phi i16 [ %29, %27 ], [ 0, %15 ], [ 0, %14 ]
  ret i16 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_outp_parse(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call zeroext i16 @nvbios_disp_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %5, ptr noundef %3) #5
  %11 = icmp ne i16 %10, 0
  %12 = load i8, ptr %9, align 1
  %13 = icmp ugt i8 %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  br label %61

16:                                               ; preds = %7
  %17 = zext i8 %1 to i16
  %18 = load i8, ptr %8, align 1
  %19 = zext i8 %18 to i16
  %20 = add i16 %10, %19
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i16
  %23 = mul nuw i16 %22, %17
  %24 = add i16 %20, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  %25 = icmp ne i16 %24, 0
  %26 = icmp ugt i8 %21, 1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %61

28:                                               ; preds = %16
  %29 = zext i16 %24 to i32
  %30 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %29) #5
  %31 = zext i16 %30 to i32
  %32 = add nuw nsw i32 %31, 5
  %33 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %32) #5
  store i8 %33, ptr %4, align 1
  store i8 6, ptr %5, align 1
  %34 = icmp eq i16 %30, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %28
  %36 = load i8, ptr %3, align 1
  %37 = icmp ugt i8 %36, 9
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %31) #5
  store i16 %39, ptr %6, align 2
  %40 = add nuw nsw i32 %31, 2
  %41 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %40) #5
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.nvbios_outp, ptr %6, i32 0, i32 1
  store i16 %42, ptr %43, align 2
  %44 = load i8, ptr %2, align 1
  %45 = icmp ult i8 %44, 33
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = or i16 %42, 192
  store i16 %47, ptr %43, align 2
  br label %48

48:                                               ; preds = %46, %38
  %49 = add nuw nsw i32 %31, 6
  %50 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %49) #5
  %51 = getelementptr inbounds %struct.nvbios_outp, ptr %6, i32 0, i32 2
  store i16 %50, ptr %51, align 2
  %52 = add nuw nsw i32 %31, 8
  %53 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %52) #5
  %54 = getelementptr %struct.nvbios_outp, ptr %6, i32 0, i32 2, i32 1
  store i16 %53, ptr %54, align 2
  %55 = getelementptr %struct.nvbios_outp, ptr %6, i32 0, i32 2, i32 2
  store i16 0, ptr %55, align 2
  %56 = load i8, ptr %3, align 1
  %57 = icmp ugt i8 %56, 11
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = add nuw nsw i32 %31, 10
  %60 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %59) #5
  store i16 %60, ptr %55, align 2
  br label %61

61:                                               ; preds = %58, %48, %35, %28, %16, %15
  %62 = phi i16 [ %30, %58 ], [ %30, %48 ], [ 0, %35 ], [ 0, %28 ], [ 0, %16 ], [ 0, %15 ]
  ret i16 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_outp_match(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.nvbios_outp, ptr %7, i32 0, i32 1
  br label %10

10:                                               ; preds = %19, %8
  %11 = phi i16 [ 0, %8 ], [ %12, %19 ]
  %12 = add i16 %11, 1
  %13 = trunc i16 %11 to i8
  %14 = tail call zeroext i16 @nvbios_outp_parse(ptr noundef %0, i8 noundef zeroext %13, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i8, ptr %3, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %23, %20, %16
  br label %10

20:                                               ; preds = %10
  %21 = load i16, ptr %7, align 2
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @nvbios_ocfg_entry(ptr nocapture readnone %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #4 {
  %8 = load i8, ptr %5, align 1
  %9 = icmp ugt i8 %8, %2
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = zext i8 %2 to i16
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i16
  %14 = add i16 %13, %1
  %15 = load i8, ptr %6, align 1
  %16 = zext i8 %15 to i16
  %17 = mul nuw i16 %16, %11
  %18 = add i16 %14, %17
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i16 [ %18, %10 ], [ 0, %7 ]
  ret i16 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_ocfg_parse(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load i8, ptr %5, align 1
  %10 = icmp ugt i8 %9, %2
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = zext i8 %2 to i16
  %13 = load i8, ptr %4, align 1
  %14 = zext i8 %13 to i16
  %15 = add i16 %14, %1
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i16
  %18 = mul nuw i16 %17, %12
  %19 = add i16 %15, %18
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %11
  %22 = zext i16 %19 to i32
  %23 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #5
  store i8 %23, ptr %7, align 2
  %24 = add nuw nsw i32 %22, 1
  %25 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %24) #5
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds %struct.nvbios_ocfg, ptr %7, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = add nuw nsw i32 %22, 2
  %29 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %28) #5
  %30 = getelementptr inbounds %struct.nvbios_ocfg, ptr %7, i32 0, i32 2
  store i16 %29, ptr %30, align 2
  %31 = add nuw nsw i32 %22, 4
  %32 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %31) #5
  %33 = getelementptr %struct.nvbios_ocfg, ptr %7, i32 0, i32 2, i32 1
  store i16 %32, ptr %33, align 2
  br label %34

34:                                               ; preds = %21, %11, %8
  %35 = phi i16 [ %19, %21 ], [ 0, %11 ], [ 0, %8 ]
  ret i16 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_ocfg_match(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr nocapture noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.nvbios_ocfg, ptr %8, i32 0, i32 1
  %11 = load i8, ptr %6, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvbios_ocfg, ptr %8, i32 0, i32 2
  %15 = getelementptr %struct.nvbios_ocfg, ptr %8, i32 0, i32 2, i32 1
  br label %16

16:                                               ; preds = %45, %13
  %17 = phi i16 [ 1, %13 ], [ %46, %45 ]
  %18 = phi i16 [ 0, %13 ], [ %17, %45 ]
  %19 = and i16 %18, 255
  %20 = load i8, ptr %5, align 1
  %21 = zext i8 %20 to i16
  %22 = add i16 %21, %1
  %23 = load i8, ptr %7, align 1
  %24 = zext i8 %23 to i16
  %25 = mul nuw i16 %19, %24
  %26 = add i16 %22, %25
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %16
  %29 = zext i16 %26 to i32
  %30 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %29) #5
  store i8 %30, ptr %8, align 2
  %31 = add nuw nsw i32 %29, 1
  %32 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %31) #5
  %33 = trunc i16 %32 to i8
  store i8 %33, ptr %10, align 1
  %34 = add nuw nsw i32 %29, 2
  %35 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %34) #5
  store i16 %35, ptr %14, align 2
  %36 = add nuw nsw i32 %29, 4
  %37 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %36) #5
  store i16 %37, ptr %15, align 2
  %38 = load i8, ptr %8, align 2
  %39 = icmp eq i8 %38, %2
  %40 = icmp eq i8 %38, -1
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i8, ptr %10, align 1
  %44 = icmp eq i8 %43, %3
  br i1 %44, label %50, label %45

45:                                               ; preds = %42, %28
  %46 = add i16 %17, 1
  %47 = trunc i16 %17 to i8
  %48 = load i8, ptr %6, align 1
  %49 = icmp ugt i8 %48, %47
  br i1 %49, label %16, label %50

50:                                               ; preds = %45, %42, %16, %9
  %51 = phi i16 [ 0, %9 ], [ 0, %45 ], [ 0, %16 ], [ %26, %42 ]
  ret i16 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @nvbios_oclk_match(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i16 %1, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %2, 10
  br label %10

7:                                                ; preds = %10
  %8 = add i16 %11, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7, %5
  %11 = phi i16 [ %1, %5 ], [ %8, %7 ]
  %12 = zext i16 %11 to i32
  %13 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %12) #5
  %14 = zext i16 %13 to i32
  %15 = icmp ult i32 %6, %14
  br i1 %15, label %7, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i32 %12, 2
  %18 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %17) #5
  br label %19

19:                                               ; preds = %16, %7, %3
  %20 = phi i16 [ %18, %16 ], [ 0, %3 ], [ 0, %7 ]
  ret i16 %20
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
