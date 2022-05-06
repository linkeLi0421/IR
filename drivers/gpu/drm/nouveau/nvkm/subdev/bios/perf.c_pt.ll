; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/perf.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/perf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_perfE = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_perf_table(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %8, i8 0, i32 6, i1 false), !annotation !8
  %9 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %8) #5
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp ult i8 %12, 3
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %15, label %48

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bit_entry, ptr %8, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %18) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %15
  %22 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %19) #5
  store i8 %22, ptr %1, align 1
  %23 = add i32 %19, 1
  %24 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %23) #5
  store i8 %24, ptr %2, align 1
  %25 = load i8, ptr %1, align 1
  %26 = icmp eq i8 %25, 64
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = add i32 %19, 5
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #5
  store i8 %29, ptr %3, align 1
  %30 = add i32 %19, 2
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #5
  store i8 %31, ptr %4, align 1
  %32 = add i32 %19, 4
  %33 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %32) #5
  store i8 %33, ptr %5, align 1
  %34 = add i32 %19, 3
  %35 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %34) #5
  br label %70

36:                                               ; preds = %21
  %37 = and i8 %25, -32
  %38 = icmp eq i8 %37, 32
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = add i32 %19, 2
  %41 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %40) #5
  store i8 %41, ptr %3, align 1
  %42 = add i32 %19, 3
  %43 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #5
  store i8 %43, ptr %4, align 1
  %44 = add i32 %19, 4
  %45 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %44) #5
  store i8 %45, ptr %5, align 1
  %46 = add i32 %19, 5
  %47 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %46) #5
  br label %70

48:                                               ; preds = %36, %15, %7
  %49 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %48
  %53 = add i32 %50, 6
  %54 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %53) #5
  %55 = icmp ugt i8 %54, 36
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i32, ptr %49, align 4
  %58 = add i32 %57, 148
  %59 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %58) #5
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = zext i16 %59 to i32
  %63 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %62) #5
  store i8 %63, ptr %2, align 1
  %64 = add nuw nsw i32 %62, 1
  %65 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %64) #5
  store i8 %65, ptr %1, align 1
  %66 = add nuw nsw i32 %62, 2
  %67 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %66) #5
  store i8 %67, ptr %3, align 1
  %68 = add nuw nsw i32 %62, 3
  %69 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %68) #5
  store i8 %69, ptr %4, align 1
  store i8 0, ptr %5, align 1
  br label %70

70:                                               ; preds = %61, %39, %27
  %71 = phi i8 [ 0, %61 ], [ %47, %39 ], [ %35, %27 ]
  %72 = phi i32 [ %62, %61 ], [ %19, %39 ], [ %19, %27 ]
  store i8 %71, ptr %6, align 1
  br label %73

73:                                               ; preds = %70, %56, %52, %48
  %74 = phi i32 [ 0, %52 ], [ 0, %56 ], [ 0, %48 ], [ %72, %70 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #5
  ret i32 %74
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_perf_entry(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = call i32 @nvbios_perf_table(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8)
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
define dso_local i32 @nvbios_perfEp(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = call i32 @nvbios_perf_table(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #5
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
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %32 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %31) #5
  store i8 %32, ptr %6, align 4
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %160, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %2, align 1
  switch i8 %35, label %160 [
    i8 18, label %36
    i8 19, label %36
    i8 20, label %36
    i8 33, label %54
    i8 35, label %54
    i8 36, label %54
    i8 37, label %88
    i8 48, label %110
    i8 53, label %115
    i8 64, label %147
  ]

36:                                               ; preds = %34, %34, %34
  %37 = add i32 %31, 1
  %38 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %37) #5
  %39 = mul i32 %38, 10
  %40 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = add i32 %31, 5
  %42 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %41) #5
  %43 = mul i32 %42, 20
  %44 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 5
  store i32 %43, ptr %44, align 4
  %45 = add i32 %31, 55
  %46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %45) #5
  %47 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = load i8, ptr %3, align 1
  %49 = icmp ugt i8 %48, 56
  br i1 %49, label %50, label %160

50:                                               ; preds = %36
  %51 = add i32 %31, 56
  %52 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %51) #5
  %53 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 2
  store i8 %52, ptr %53, align 2
  br label %160

54:                                               ; preds = %34, %34, %34
  %55 = add i32 %31, 4
  %56 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %55) #5
  %57 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 1
  store i8 %56, ptr %57, align 1
  %58 = add i32 %31, 5
  %59 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %58) #5
  %60 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 2
  store i8 %59, ptr %60, align 2
  %61 = add i32 %31, 6
  %62 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %61) #5
  %63 = zext i16 %62 to i32
  %64 = mul nuw nsw i32 %63, 1000
  %65 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 4
  store i32 %64, ptr %65, align 4
  %66 = add i32 %31, 8
  %67 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %66) #5
  %68 = sext i8 %67 to i32
  %69 = mul nsw i32 %68, 1000
  %70 = add nsw i32 %69, %64
  %71 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 3
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 16
  %75 = load i32, ptr %74, align 4
  switch i32 %75, label %82 [
    i32 73, label %76
    i32 75, label %76
  ]

76:                                               ; preds = %54, %54
  %77 = add i32 %31, 11
  %78 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %77) #5
  %79 = zext i16 %78 to i32
  %80 = mul nuw nsw i32 %79, 1000
  %81 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 5
  store i32 %80, ptr %81, align 4
  br label %160

82:                                               ; preds = %54
  %83 = add i32 %31, 11
  %84 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %83) #5
  %85 = zext i16 %84 to i32
  %86 = mul nuw nsw i32 %85, 2000
  %87 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 5
  store i32 %86, ptr %87, align 4
  br label %160

88:                                               ; preds = %34
  %89 = add i32 %31, 4
  %90 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %89) #5
  %91 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 1
  store i8 %90, ptr %91, align 1
  %92 = add i32 %31, 5
  %93 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %92) #5
  %94 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 2
  store i8 %93, ptr %94, align 2
  %95 = add i32 %31, 6
  %96 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %95) #5
  %97 = zext i16 %96 to i32
  %98 = mul nuw nsw i32 %97, 1000
  %99 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = add i32 %31, 10
  %101 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %100) #5
  %102 = zext i16 %101 to i32
  %103 = mul nuw nsw i32 %102, 1000
  %104 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 4
  store i32 %103, ptr %104, align 4
  %105 = add i32 %31, 12
  %106 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %105) #5
  %107 = zext i16 %106 to i32
  %108 = mul nuw nsw i32 %107, 1000
  %109 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 5
  store i32 %108, ptr %109, align 4
  br label %160

110:                                              ; preds = %34
  %111 = add i32 %31, 2
  %112 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %111) #5
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 8
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %110, %34
  %116 = add i32 %31, 6
  %117 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %116) #5
  %118 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 1
  store i8 %117, ptr %118, align 1
  %119 = add i32 %31, 7
  %120 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %119) #5
  %121 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 2
  store i8 %120, ptr %121, align 2
  %122 = add i32 %31, 8
  %123 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %122) #5
  %124 = zext i16 %123 to i32
  %125 = mul nuw nsw i32 %124, 1000
  %126 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 3
  store i32 %125, ptr %126, align 4
  %127 = add i32 %31, 10
  %128 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %127) #5
  %129 = zext i16 %128 to i32
  %130 = mul nuw nsw i32 %129, 1000
  %131 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 4
  store i32 %130, ptr %131, align 4
  %132 = add i32 %31, 12
  %133 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %132) #5
  %134 = zext i16 %133 to i32
  %135 = mul nuw nsw i32 %134, 1000
  %136 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 5
  store i32 %135, ptr %136, align 4
  %137 = add i32 %31, 16
  %138 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %137) #5
  %139 = zext i16 %138 to i32
  %140 = mul nuw nsw i32 %139, 1000
  %141 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 6
  store i32 %140, ptr %141, align 4
  %142 = add i32 %31, 20
  %143 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %142) #5
  %144 = zext i16 %143 to i32
  %145 = mul nuw nsw i32 %144, 1000
  %146 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 7
  store i32 %145, ptr %146, align 4
  br label %160

147:                                              ; preds = %34
  %148 = add i32 %31, 2
  %149 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %148) #5
  %150 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 2
  store i8 %149, ptr %150, align 2
  %151 = add i32 %31, 11
  %152 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %151) #5
  %153 = shl i8 %152, 3
  %154 = and i8 %153, 24
  %155 = zext i8 %154 to i32
  %156 = lshr i32 131073, %155
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 9
  store i8 %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.nvbios_perfE, ptr %6, i32 0, i32 10
  store i8 -1, ptr %159, align 1
  br label %160

160:                                              ; preds = %147, %115, %88, %82, %76, %50, %36, %34, %30
  %161 = phi i32 [ 0, %34 ], [ %31, %76 ], [ %31, %82 ], [ %31, %36 ], [ %31, %50 ], [ %31, %147 ], [ %31, %115 ], [ %31, %88 ], [ 0, %30 ]
  ret i32 %161
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nvbios_perfSe(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr nocapture noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6) local_unnamed_addr #4 {
  %8 = zext i8 %5 to i32
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i8, ptr %4, align 1
  %12 = zext i8 %11 to i32
  %13 = zext i8 %6 to i32
  %14 = mul i32 %13, %2
  %15 = add i32 %14, %1
  %16 = add i32 %15, %12
  store i8 %6, ptr %4, align 1
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i32 [ %16, %10 ], [ 0, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_perfSp(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = zext i8 %5 to i32
  %10 = icmp sgt i32 %9, %2
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = load i8, ptr %4, align 1
  %13 = zext i8 %12 to i32
  %14 = zext i8 %6 to i32
  %15 = mul i32 %14, %2
  %16 = add i32 %15, %1
  %17 = add i32 %16, %13
  store i8 %6, ptr %4, align 1
  store i32 0, ptr %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = load i8, ptr %3, align 1
  %20 = icmp eq i8 %19, 64
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %17) #5
  %24 = and i16 %23, 16383
  %25 = zext i16 %24 to i32
  %26 = mul nuw nsw i32 %25, 1000
  br label %27

27:                                               ; preds = %22, %8
  %28 = phi i32 [ %26, %22 ], [ 0, %8 ]
  %29 = phi i32 [ %17, %22 ], [ 0, %8 ]
  store i32 %28, ptr %7, align 4
  br label %30

30:                                               ; preds = %27, %11
  %31 = phi i32 [ %17, %11 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_perf_fan_parse(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  %9 = call i32 @nvbios_perf_table(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = and i8 %12, -32
  %14 = icmp eq i8 %13, 32
  %15 = load i8, ptr %4, align 1
  %16 = icmp ugt i8 %15, 6
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = add i32 %9, 6
  %20 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %19) #5
  %21 = zext i16 %20 to i32
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %21, %18 ], [ 0, %11 ]
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi i32 [ 0, %22 ], [ -19, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 %25
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
