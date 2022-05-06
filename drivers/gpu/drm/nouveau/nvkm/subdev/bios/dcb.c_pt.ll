; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.127, i8 }
%union.anon.127 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: DCB table not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: DCB version 0x%02x unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"DEV_REC\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: DCB contains no useful data\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s: DCB header validation failed\0A\00", align 1
@switch.table.dcb_outp_parse = private unnamed_addr constant [3 x i32] [i32 6, i32 10, i32 20], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 15
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef 54) #5
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11, %5
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %94

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %22) #6
  br label %94

23:                                               ; preds = %11
  %24 = zext i16 %12 to i32
  %25 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %24) #5
  store i8 %25, ptr %1, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ugt i8 %25, 65
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %94

32:                                               ; preds = %28
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %26) #6
  br label %94

37:                                               ; preds = %23
  %38 = icmp ugt i8 %25, 47
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = add nuw nsw i32 %24, 6
  %41 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %40) #5
  %42 = icmp eq i32 %41, 1323089355
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = add nuw nsw i32 %24, 1
  %45 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %44) #5
  store i8 %45, ptr %2, align 1
  %46 = add nuw nsw i32 %24, 2
  %47 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %46) #5
  store i8 %47, ptr %3, align 1
  %48 = add nuw nsw i32 %24, 3
  %49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %48) #5
  store i8 %49, ptr %4, align 1
  br label %94

50:                                               ; preds = %37
  %51 = icmp ugt i8 %25, 31
  br i1 %51, label %52, label %63

52:                                               ; preds = %50
  %53 = add nuw nsw i32 %24, 4
  %54 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %53) #5
  %55 = icmp eq i32 %54, 1323089355
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = add nuw nsw i32 %24, 2
  %58 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %57) #5
  store i8 8, ptr %2, align 1
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %59, %24
  %61 = sdiv i32 %60, 8
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %3, align 1
  store i8 8, ptr %4, align 1
  br label %94

63:                                               ; preds = %50
  %64 = icmp ugt i8 %25, 20
  br i1 %64, label %65, label %76

65:                                               ; preds = %63
  %66 = add nsw i32 %24, -7
  %67 = tail call i32 @nvbios_memcmp(ptr noundef %0, i32 noundef %66, ptr noundef nonnull @.str.2, i32 noundef 7) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %24, 2
  %71 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %70) #5
  store i8 4, ptr %2, align 1
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 %72, %24
  %74 = sdiv i32 %73, 10
  %75 = trunc i32 %74 to i8
  store i8 %75, ptr %3, align 1
  store i8 10, ptr %4, align 1
  br label %94

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 3
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load ptr, ptr %6, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.3, ptr noundef %84) #6
  br label %94

85:                                               ; preds = %65, %52, %39
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load ptr, ptr %6, align 4
  %91 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %92, ptr noundef nonnull @.str.4, ptr noundef %93) #6
  br label %94

94:                                               ; preds = %89, %85, %80, %76, %69, %56, %43, %32, %28, %18, %14
  %95 = phi i16 [ %12, %43 ], [ %12, %56 ], [ %12, %69 ], [ 0, %18 ], [ 0, %14 ], [ 0, %32 ], [ 0, %28 ], [ 0, %80 ], [ 0, %76 ], [ 0, %89 ], [ 0, %85 ]
  ret i16 %95
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_memcmp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_outp(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3)
  %8 = icmp ne i16 %7, 0
  %9 = load i8, ptr %6, align 1
  %10 = icmp ugt i8 %9, %1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = zext i8 %1 to i16
  %14 = load i8, ptr %5, align 1
  %15 = zext i8 %14 to i16
  %16 = add i16 %7, %15
  %17 = load i8, ptr %3, align 1
  %18 = zext i8 %17 to i16
  %19 = mul nuw i16 %18, %13
  %20 = add i16 %16, %19
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i16 [ %20, %12 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i16 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_outp_parse(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3) #5
  %9 = icmp ne i16 %8, 0
  %10 = load i8, ptr %7, align 1
  %11 = icmp ugt i8 %10, %1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  br label %121

14:                                               ; preds = %5
  %15 = zext i8 %1 to i16
  %16 = load i8, ptr %6, align 1
  %17 = zext i8 %16 to i16
  %18 = add i16 %8, %17
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i16
  %21 = mul nuw i16 %20, %15
  %22 = add i16 %18, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %121, label %24

24:                                               ; preds = %14
  %25 = load i8, ptr %2, align 1
  %26 = icmp ugt i8 %25, 31
  br i1 %26, label %27, label %94

27:                                               ; preds = %24
  %28 = zext i16 %22 to i32
  %29 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %28) #5
  %30 = lshr i32 %29, 24
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 15
  %33 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 9
  store i8 %32, ptr %33, align 1
  %34 = lshr i32 %29, 20
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 3
  %37 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 8
  store i8 %36, ptr %37, align 4
  %38 = lshr i32 %29, 16
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 15
  %41 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 7
  store i8 %40, ptr %41, align 1
  %42 = lshr i32 %29, 12
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 15
  %45 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 6
  store i8 %44, ptr %45, align 2
  %46 = lshr i32 %29, 8
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 15
  %49 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 5
  store i8 %48, ptr %49, align 1
  %50 = trunc i32 %29 to i8
  %51 = lshr i8 %50, 4
  %52 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 4
  store i8 %51, ptr %52, align 4
  %53 = and i32 %29, 15
  %54 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 10
  store i8 0, ptr %55, align 2
  %56 = load i8, ptr %2, align 1
  %57 = icmp ugt i8 %56, 63
  br i1 %57, label %58, label %94

58:                                               ; preds = %27
  %59 = add nuw nsw i32 %28, 4
  %60 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %59) #5
  %61 = load i32, ptr %54, align 4
  switch i32 %61, label %62 [
    i32 6, label %65
    i32 2, label %82
    i32 3, label %82
  ]

62:                                               ; preds = %58
  %63 = load i8, ptr %37, align 4
  %64 = load i8, ptr %55, align 2
  br label %94

65:                                               ; preds = %58
  %66 = lshr i32 %60, 21
  %67 = and i32 %66, 7
  %68 = icmp ult i32 %67, 3
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = getelementptr inbounds [3 x i32], ptr @switch.table.dcb_outp_parse, i32 0, i32 %67
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %71, %69 ], [ 30, %65 ]
  %74 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 13, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  %75 = lshr i32 %60, 24
  %76 = and i32 %75, 15
  switch i32 %76, label %78 [
    i32 15, label %79
    i32 4, label %79
    i32 3, label %77
    i32 2, label %77
  ]

77:                                               ; preds = %72, %72
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %77, %72, %72
  %80 = phi i32 [ 2, %77 ], [ 1, %78 ], [ 4, %72 ], [ 4, %72 ]
  %81 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 13, i32 0, i32 1
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %79, %58, %58
  %83 = trunc i32 %60 to i8
  %84 = lshr i8 %83, 4
  %85 = and i8 %84, 3
  store i8 %85, ptr %55, align 2
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 13
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 12
  store i8 0, ptr %88, align 4
  %89 = load i8, ptr %37, align 4
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = lshr i32 %60, 8
  %93 = trunc i32 %92 to i8
  store i8 %93, ptr %88, align 4
  br label %94

94:                                               ; preds = %91, %82, %62, %27, %24
  %95 = phi i8 [ %85, %91 ], [ %85, %82 ], [ %64, %62 ], [ 0, %27 ], [ 0, %24 ]
  %96 = phi i32 [ %61, %91 ], [ %61, %82 ], [ %61, %62 ], [ %53, %27 ], [ 0, %24 ]
  %97 = phi i8 [ %89, %91 ], [ 0, %82 ], [ %63, %62 ], [ %36, %27 ], [ 0, %24 ]
  %98 = phi i16 [ %22, %91 ], [ %22, %82 ], [ %22, %62 ], [ %22, %27 ], [ 0, %24 ]
  %99 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 12
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 8
  %103 = zext i8 %97 to i32
  %104 = shl nuw nsw i32 %103, 4
  %105 = or i32 %96, %102
  %106 = or i32 %105, %104
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 1
  store i16 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 5
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i16
  %112 = shl nuw i16 %111, 8
  %113 = zext i8 %95 to i16
  %114 = shl nuw nsw i16 %113, 6
  %115 = or i16 %114, %112
  %116 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 9
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i16
  %119 = or i16 %115, %118
  %120 = getelementptr inbounds %struct.dcb_output, ptr %4, i32 0, i32 2
  store i16 %119, ptr %120, align 2
  br label %121

121:                                              ; preds = %94, %14, %13
  %122 = phi i16 [ %98, %94 ], [ 0, %14 ], [ 0, %13 ]
  ret i16 %122
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_outp_match(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 5
  %8 = tail call zeroext i16 @dcb_outp_parse(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 8
  %12 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 10
  %14 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 9
  br label %15

15:                                               ; preds = %40, %10
  %16 = phi i16 [ %8, %10 ], [ %43, %40 ]
  %17 = phi i16 [ 1, %10 ], [ %41, %40 ]
  %18 = load i8, ptr %11, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 4
  %21 = load i32, ptr %12, align 4
  %22 = or i32 %20, %21
  %23 = trunc i32 %22 to i16
  %24 = xor i16 %23, %1
  %25 = and i16 %24, 255
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = load i8, ptr %7, align 1
  %29 = zext i8 %28 to i16
  %30 = shl nuw i16 %29, 8
  %31 = load i8, ptr %13, align 2
  %32 = zext i8 %31 to i16
  %33 = shl nuw nsw i16 %32, 6
  %34 = or i16 %33, %30
  %35 = load i8, ptr %14, align 1
  %36 = zext i8 %35 to i16
  %37 = or i16 %34, %36
  %38 = and i16 %37, %2
  %39 = icmp eq i16 %38, %2
  br i1 %39, label %45, label %40

40:                                               ; preds = %27, %15
  %41 = add i16 %17, 1
  %42 = trunc i16 %17 to i8
  %43 = tail call zeroext i16 @dcb_outp_parse(ptr noundef %0, i8 noundef zeroext %42, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %15

45:                                               ; preds = %40, %27, %6
  %46 = phi i16 [ 0, %6 ], [ %16, %27 ], [ 0, %40 ]
  ret i16 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dcb_outp_foreach(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #5
  %9 = icmp ne i16 %8, 0
  %10 = load i8, ptr %5, align 1
  %11 = icmp ne i8 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %14, label %13

13:                                               ; preds = %37, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %51

14:                                               ; preds = %37, %3
  %15 = phi i16 [ %40, %37 ], [ %8, %3 ]
  %16 = phi i32 [ %38, %37 ], [ 0, %3 ]
  %17 = trunc i32 %16 to i16
  %18 = and i16 %17, 255
  %19 = load i8, ptr %4, align 1
  %20 = zext i8 %19 to i16
  %21 = add i16 %15, %20
  %22 = load i8, ptr %7, align 1
  %23 = zext i8 %22 to i16
  %24 = mul nuw i16 %18, %23
  %25 = add i16 %21, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %14
  %28 = zext i16 %25 to i32
  %29 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %28) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %28) #5
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %51, label %34

34:                                               ; preds = %31
  %35 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #5
  %36 = icmp eq i8 %35, 15
  br i1 %36, label %37, label %45

37:                                               ; preds = %48, %34
  %38 = add i32 %16, 1
  %39 = trunc i32 %38 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %40 = call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #5
  %41 = icmp ne i16 %40, 0
  %42 = load i8, ptr %5, align 1
  %43 = icmp ugt i8 %42, %39
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %14, label %13

45:                                               ; preds = %34
  %46 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #5
  %47 = icmp eq i8 %46, 14
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 %2(ptr noundef %0, ptr noundef %1, i32 noundef %16, i16 noundef zeroext %25) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %37, label %51

51:                                               ; preds = %48, %45, %31, %27, %14, %13
  %52 = phi i32 [ 0, %13 ], [ 0, %14 ], [ 0, %27 ], [ 0, %31 ], [ 0, %45 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  ret i32 %52
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
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
!8 = !{!"auto-init"}
