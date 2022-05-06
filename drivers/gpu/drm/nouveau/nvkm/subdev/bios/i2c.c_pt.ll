; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/i2c.c"
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
%struct.dcb_i2c_entry = type { i32, i8, i8, i8, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [28 x i8] c"%s: ccb %02x not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: unknown i2c type %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_i2c_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call zeroext i16 @dcb_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %1, align 1
  %10 = icmp ugt i8 %9, 20
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = zext i16 %6 to i32
  %13 = add nuw nsw i32 %12, 2
  %14 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %13) #4
  %15 = load i8, ptr %1, align 1
  %16 = icmp ugt i8 %15, 47
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = add nuw nsw i32 %12, 4
  %19 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %18) #4
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i16 [ %19, %17 ], [ %14, %11 ]
  %22 = zext i16 %21 to i32
  %23 = icmp eq i16 %21, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %1, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ugt i8 %25, 65
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %36, ptr noundef nonnull @.str, ptr noundef %37, i32 noundef %26) #5
  br label %53

38:                                               ; preds = %24
  %39 = icmp ugt i8 %25, 47
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %22) #4
  store i8 %41, ptr %1, align 1
  %42 = add nuw nsw i32 %22, 1
  %43 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %42) #4
  store i8 %43, ptr %2, align 1
  %44 = add nuw nsw i32 %22, 2
  %45 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %44) #4
  store i8 %45, ptr %3, align 1
  %46 = add nuw nsw i32 %22, 3
  %47 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %46) #4
  br label %50

48:                                               ; preds = %38, %20, %8, %5
  %49 = phi i16 [ 0, %20 ], [ %21, %38 ], [ 0, %5 ], [ 0, %8 ]
  store i8 0, ptr %2, align 1
  store i8 16, ptr %3, align 1
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi i16 [ %49, %48 ], [ %21, %40 ]
  %52 = phi i8 [ 4, %48 ], [ %47, %40 ]
  store i8 %52, ptr %4, align 1
  br label %53

53:                                               ; preds = %50, %32, %28
  %54 = phi i16 [ %51, %50 ], [ 0, %32 ], [ 0, %28 ]
  ret i16 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_i2c_entry(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = call zeroext i16 @dcb_i2c_table(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %3)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i16 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dcb_i2c_parse(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = call zeroext i16 @dcb_i2c_table(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #4
  %9 = icmp ne i16 %8, 0
  %10 = load i8, ptr %5, align 1
  %11 = icmp ugt i8 %10, %1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  br label %106

14:                                               ; preds = %3
  %15 = zext i8 %1 to i16
  %16 = load i8, ptr %4, align 1
  %17 = zext i8 %16 to i16
  %18 = add i16 %8, %17
  %19 = load i8, ptr %7, align 1
  %20 = zext i8 %19 to i16
  %21 = mul nuw i16 %20, %15
  %22 = add i16 %18, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %106, label %24

24:                                               ; preds = %14
  %25 = load i8, ptr %6, align 1
  %26 = icmp ugt i8 %25, 64
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = zext i16 %22 to i32
  %29 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %28) #4
  %30 = and i32 %29, 1023
  %31 = icmp eq i32 %30, 1023
  %32 = select i1 %31, i32 255, i32 128
  br label %45

33:                                               ; preds = %24
  %34 = icmp ugt i8 %25, 47
  %35 = zext i16 %22 to i32
  %36 = add nuw nsw i32 %35, 3
  %37 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %36) #4
  br i1 %34, label %38, label %40

38:                                               ; preds = %33
  %39 = zext i8 %37 to i32
  br label %45

40:                                               ; preds = %33
  %41 = and i8 %37, 7
  %42 = icmp eq i8 %41, 7
  %43 = select i1 %42, i8 -1, i8 %41
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %38, %27
  %46 = phi i32 [ %44, %40 ], [ %39, %38 ], [ %32, %27 ]
  store i32 %46, ptr %2, align 4
  %47 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 1
  %48 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 3
  %49 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 4
  %50 = trunc i32 %46 to i8
  store i32 -1, ptr %47, align 4
  switch i8 %50, label %95 [
    i8 0, label %51
    i8 4, label %57
    i8 5, label %61
    i8 6, label %72
    i8 -128, label %82
    i8 -1, label %147
  ]

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 2
  %53 = zext i16 %22 to i32
  %54 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %53) #4
  store i8 %54, ptr %47, align 4
  %55 = add nuw nsw i32 %53, 1
  %56 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %55) #4
  store i8 %56, ptr %52, align 1
  br label %147

57:                                               ; preds = %45
  %58 = zext i16 %22 to i32
  %59 = add nuw nsw i32 %58, 1
  %60 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %59) #4
  store i8 %60, ptr %47, align 4
  br label %147

61:                                               ; preds = %45
  %62 = zext i16 %22 to i32
  %63 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %62) #4
  %64 = and i8 %63, 15
  store i8 %64, ptr %47, align 4
  %65 = add nuw nsw i32 %62, 1
  %66 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %65) #4
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %147, label %69

69:                                               ; preds = %61
  %70 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %65) #4
  %71 = lshr i8 %70, 1
  store i8 %71, ptr %48, align 2
  br label %147

72:                                               ; preds = %45
  %73 = zext i16 %22 to i32
  %74 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %73) #4
  %75 = and i8 %74, 15
  store i8 %75, ptr %49, align 1
  %76 = add nuw nsw i32 %73, 1
  %77 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %76) #4
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %147, label %80

80:                                               ; preds = %72
  %81 = load i8, ptr %49, align 1
  store i8 %81, ptr %48, align 2
  br label %147

82:                                               ; preds = %45
  %83 = zext i16 %22 to i32
  %84 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %83) #4
  %85 = trunc i16 %84 to i8
  %86 = and i8 %85, 31
  %87 = icmp eq i8 %86, 31
  %88 = select i1 %87, i8 -1, i8 %86
  store i8 %88, ptr %47, align 4
  %89 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %83) #4
  %90 = lshr i16 %89, 5
  %91 = trunc i16 %90 to i8
  %92 = and i8 %91, 31
  %93 = icmp eq i8 %92, 31
  %94 = select i1 %93, i8 -1, i8 %92
  store i8 %94, ptr %49, align 1
  store i8 %94, ptr %48, align 2
  br label %147

95:                                               ; preds = %45
  %96 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %103, ptr noundef nonnull @.str.1, ptr noundef %104, i32 noundef %46) #5
  br label %105

105:                                              ; preds = %99, %95
  store i32 255, ptr %2, align 4
  br label %147

106:                                              ; preds = %14, %13
  %107 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = icmp ult i8 %1, 2
  %111 = and i1 %110, %109
  br i1 %111, label %112, label %147

112:                                              ; preds = %106
  %113 = add i32 %108, 5
  %114 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %113) #4
  %115 = icmp ult i8 %114, 4
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, ptr %107, align 4
  %118 = add i32 %117, 54
  %119 = and i32 %118, 65535
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %119, %116 ], [ 72, %112 ]
  %122 = icmp eq i8 %1, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = add nuw nsw i32 %121, 4
  %125 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %124) #4
  %126 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 1
  %127 = icmp eq i8 %125, 0
  %128 = select i1 %127, i8 63, i8 %125
  store i8 %128, ptr %126, align 4
  %129 = add nuw nsw i32 %121, 5
  %130 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %129) #4
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i8 62, i8 %130
  br label %143

133:                                              ; preds = %120
  %134 = add nuw nsw i32 %121, 6
  %135 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %134) #4
  %136 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 1
  %137 = icmp eq i8 %135, 0
  %138 = select i1 %137, i8 55, i8 %135
  store i8 %138, ptr %136, align 4
  %139 = add nuw nsw i32 %121, 7
  %140 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %139) #4
  %141 = icmp eq i8 %140, 0
  %142 = select i1 %141, i8 54, i8 %140
  br label %143

143:                                              ; preds = %133, %123
  %144 = phi i8 [ %132, %123 ], [ %142, %133 ]
  %145 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 2
  store i8 %144, ptr %145, align 1
  store i32 0, ptr %2, align 4
  %146 = getelementptr inbounds %struct.dcb_i2c_entry, ptr %2, i32 0, i32 3
  store i8 -1, ptr %146, align 2
  br label %147

147:                                              ; preds = %143, %106, %105, %82, %80, %72, %69, %61, %57, %51, %45
  %148 = phi i32 [ 0, %105 ], [ 0, %82 ], [ 0, %57 ], [ 0, %51 ], [ 0, %143 ], [ 0, %69 ], [ 0, %61 ], [ 0, %80 ], [ 0, %72 ], [ 0, %45 ], [ -2, %106 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
