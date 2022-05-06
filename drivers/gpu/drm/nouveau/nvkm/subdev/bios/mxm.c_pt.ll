; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/mxm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [31 x i8] c"%s: BIT 'x' table not present\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: BIT 'x' table %d/%d unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: unknown sor map v%02x\0A\00", align 1
@g92_sor_map = internal unnamed_addr constant [16 x i8] c"\00\12\22\1121\111\111\00\00\00\00\00\00", align 1
@g94_sor_map = internal unnamed_addr constant [16 x i8] c"\00\14$\1141\111\111\12\00\00\00\00\00", align 1
@g98_sor_map = internal unnamed_addr constant [16 x i8] c"\00\14\12\11\001\111\111\00\00\00\00\00\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: missing sor map\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: unknown ddc map v%02x\0A\00", align 1
@g84_sor_map = internal unnamed_addr constant <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\00\12\22\1121\111", [8 x i8] zeroinitializer }>, align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @mxm_table(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  %5 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 120, ptr noundef nonnull %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %16) #7
  br label %43

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.bit_entry, ptr %4, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %1, align 1
  %20 = getelementptr inbounds %struct.bit_entry, ptr %4, i32 0, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = trunc i16 %21 to i8
  store i8 %22, ptr %2, align 1
  %23 = load i8, ptr %1, align 1
  %24 = icmp ne i8 %23, 1
  %25 = and i16 %21, 255
  %26 = icmp ult i16 %25, 3
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %38 = zext i8 %23 to i32
  %39 = zext i16 %25 to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef %37, i32 noundef %38, i32 noundef %39) #7
  br label %43

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.bit_entry, ptr %4, i32 0, i32 3
  %42 = load i16, ptr %41, align 2
  br label %43

43:                                               ; preds = %40, %32, %28, %11, %7
  %44 = phi i16 [ %42, %40 ], [ 0, %11 ], [ 0, %7 ], [ 0, %32 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  ret i16 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @mxm_sor_map(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #6, !annotation !8
  %4 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 120, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %15) #7
  br label %37

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = icmp ne i8 %18, 1
  %22 = and i16 %20, 255
  %23 = icmp ult i16 %22, 3
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %35 = zext i8 %18 to i32
  %36 = zext i16 %22 to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef %34, i32 noundef %35, i32 noundef %36) #7
  br label %37

37:                                               ; preds = %29, %25, %10, %6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  br label %79

38:                                               ; preds = %16
  %39 = trunc i16 %20 to i8
  %40 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %41 = load i16, ptr %40, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  %42 = icmp ne i16 %41, 0
  %43 = icmp ugt i8 %39, 5
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %79

45:                                               ; preds = %38
  %46 = zext i16 %41 to i32
  %47 = add nuw nsw i32 %46, 4
  %48 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %47) #6
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %45
  %51 = zext i16 %48 to i32
  %52 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %51) #6
  %53 = zext i8 %52 to i32
  %54 = and i8 %52, -2
  %55 = icmp eq i8 %54, 16
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %51, 3
  %58 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %57) #6
  %59 = icmp ugt i8 %58, %1
  br i1 %59, label %60, label %110

60:                                               ; preds = %56
  %61 = zext i8 %1 to i16
  %62 = add nuw nsw i32 %51, 1
  %63 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %62) #6
  %64 = zext i8 %63 to i16
  %65 = add i16 %48, %61
  %66 = add i16 %65, %64
  %67 = zext i16 %66 to i32
  %68 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %67) #6
  br label %110

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %77, ptr noundef nonnull @.str.2, ptr noundef %78, i32 noundef %53) #7
  br label %79

79:                                               ; preds = %73, %69, %45, %38, %37
  %80 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 7, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = add i8 %81, 124
  %83 = call i8 @llvm.fshl.i8(i8 %82, i8 %82, i8 7)
  switch i8 %83, label %100 [
    i8 0, label %84
    i8 1, label %84
    i8 7, label %88
    i8 8, label %92
    i8 9, label %92
    i8 10, label %96
  ]

84:                                               ; preds = %79, %79
  %85 = zext i8 %1 to i32
  %86 = getelementptr [16 x i8], ptr @g84_sor_map, i32 0, i32 %85
  %87 = load i8, ptr %86, align 1
  br label %110

88:                                               ; preds = %79
  %89 = zext i8 %1 to i32
  %90 = getelementptr [16 x i8], ptr @g92_sor_map, i32 0, i32 %89
  %91 = load i8, ptr %90, align 1
  br label %110

92:                                               ; preds = %79, %79
  %93 = zext i8 %1 to i32
  %94 = getelementptr [16 x i8], ptr @g94_sor_map, i32 0, i32 %93
  %95 = load i8, ptr %94, align 1
  br label %110

96:                                               ; preds = %79
  %97 = zext i8 %1 to i32
  %98 = getelementptr [16 x i8], ptr @g98_sor_map, i32 0, i32 %97
  %99 = load i8, ptr %98, align 1
  br label %110

100:                                              ; preds = %79
  %101 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %108, ptr noundef nonnull @.str.3, ptr noundef %109) #7
  br label %110

110:                                              ; preds = %104, %100, %96, %92, %88, %84, %60, %56
  %111 = phi i8 [ %87, %84 ], [ %91, %88 ], [ %95, %92 ], [ %99, %96 ], [ 0, %104 ], [ 0, %100 ], [ %68, %60 ], [ 0, %56 ]
  ret i8 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @mxm_ddc_map(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #6, !annotation !8
  %4 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 120, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %15) #7
  br label %37

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = icmp ne i8 %18, 1
  %22 = and i16 %20, 255
  %23 = icmp ult i16 %22, 3
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %35 = zext i8 %18 to i32
  %36 = zext i16 %22 to i32
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %33, ptr noundef nonnull @.str.1, ptr noundef %34, i32 noundef %35, i32 noundef %36) #7
  br label %37

37:                                               ; preds = %29, %25, %10, %6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  br label %78

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  %41 = icmp ne i16 %40, 0
  %42 = and i16 %20, 248
  %43 = icmp ne i16 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %78

45:                                               ; preds = %38
  %46 = zext i16 %40 to i32
  %47 = add nuw nsw i32 %46, 6
  %48 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %47) #6
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %45
  %51 = zext i16 %48 to i32
  %52 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %51) #6
  %53 = zext i8 %52 to i32
  %54 = icmp eq i8 %52, 16
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = add nuw nsw i32 %51, 3
  %57 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %56) #6
  %58 = icmp ugt i8 %57, %1
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = zext i8 %1 to i16
  %61 = add nuw nsw i32 %51, 1
  %62 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %61) #6
  %63 = zext i8 %62 to i16
  %64 = add i16 %48, %60
  %65 = add i16 %64, %63
  %66 = zext i16 %65 to i32
  %67 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %66) #6
  br label %81

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %76, ptr noundef nonnull @.str.4, ptr noundef %77, i32 noundef %53) #7
  br label %78

78:                                               ; preds = %72, %68, %45, %38, %37
  %79 = shl i8 %1, 4
  %80 = or i8 %79, %1
  br label %81

81:                                               ; preds = %78, %59, %55
  %82 = phi i8 [ %80, %78 ], [ %67, %59 ], [ 0, %55 ]
  ret i8 %82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
