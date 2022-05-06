; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/iccsense.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bit_entry = type { i8, i8, i16, i16 }
%struct.nvbios_extdev_func = type { i8, i8, i8 }
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
%struct.nvbios_iccsense = type { i32, ptr }
%struct.pwr_rail_t = type { i8, i8, i8, [3 x %struct.pwr_rail_resistor_t], i16 }
%struct.pwr_rail_resistor_t = type { i8, i8 }

@.str = private unnamed_addr constant [37 x i8] c"%s: ICCSENSE version 0x%02x unknown\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_iccsense_parse(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bit_entry, align 2
  %4 = alloca %struct.nvbios_extdev_func, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %3, i8 0, i32 6, i1 false) #6, !annotation !8
  %5 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 80, ptr noundef nonnull %3) #6
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp ne i8 %8, 2
  %10 = select i1 %6, i1 true, i1 %9
  %11 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = icmp ult i16 %12, 44
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.bit_entry, ptr %3, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 40
  %20 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %20) #6
  switch i8 %23, label %24 [
    i8 16, label %25
    i8 32, label %25
  ]

24:                                               ; preds = %22, %15, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  br label %128

25:                                               ; preds = %22, %22
  %26 = add i32 %20, 1
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %26) #6
  %28 = add i32 %20, 2
  %29 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %28) #6
  %30 = add i32 %20, 3
  %31 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %128, label %33

33:                                               ; preds = %25
  %34 = zext i8 %23 to i32
  switch i8 %23, label %35 [
    i8 32, label %45
    i8 16, label %45
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %128, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef %44, i32 noundef %34) #7
  br label %128

45:                                               ; preds = %33, %33
  %46 = zext i8 %31 to i32
  store i32 %46, ptr %1, align 4
  %47 = mul nuw nsw i32 %46, 12
  %48 = call noalias align 64 ptr @__kmalloc(i32 noundef %47, i32 noundef 3264) #8
  %49 = getelementptr inbounds %struct.nvbios_iccsense, ptr %1, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %128, label %51

51:                                               ; preds = %45
  %52 = zext i8 %27 to i32
  %53 = add i32 %20, %52
  %54 = zext i8 %29 to i32
  %55 = zext i8 %31 to i32
  br label %56

56:                                               ; preds = %126, %51
  %57 = phi ptr [ %48, %51 ], [ %127, %126 ]
  %58 = phi i32 [ 0, %51 ], [ %124, %126 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  %59 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58
  %60 = mul nuw nsw i32 %58, %54
  %61 = add i32 %53, %60
  switch i8 %23, label %62 [
    i8 16, label %65
    i8 32, label %73
  ]

62:                                               ; preds = %56
  %63 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 1
  %64 = load i8, ptr %63, align 1
  br label %78

65:                                               ; preds = %56
  %66 = add i32 %61, 1
  %67 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %66) #6
  %68 = icmp ugt i8 %67, -9
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %59, align 2
  %70 = add i32 %61, 2
  %71 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %70) #6
  %72 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 1
  store i8 %71, ptr %72, align 1
  br label %78

73:                                               ; preds = %56
  %74 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %61) #6
  store i8 %74, ptr %59, align 2
  %75 = add i32 %61, 1
  %76 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %75) #6
  %77 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 1
  store i8 %76, ptr %77, align 1
  br label %78

78:                                               ; preds = %73, %65, %62
  %79 = phi i8 [ %64, %62 ], [ %76, %73 ], [ %71, %65 ]
  %80 = phi i32 [ 0, %62 ], [ 5, %73 ], [ 3, %65 ]
  %81 = zext i8 %79 to i32
  %82 = call i32 @nvbios_extdev_parse(ptr noundef %0, i32 noundef %81, ptr noundef nonnull %4) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %123

84:                                               ; preds = %78
  %85 = load i8, ptr %4, align 1
  %86 = add i8 %85, -76
  %87 = icmp ult i8 %86, 3
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 2
  store i8 0, ptr %89, align 2
  %90 = add i32 %80, %61
  br label %115

91:                                               ; preds = %84
  %92 = zext i8 %86 to i24
  %93 = shl nuw nsw i24 %92, 3
  %94 = lshr i24 196865, %93
  %95 = trunc i24 %94 to i8
  %96 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 2
  store i8 %95, ptr %96, align 2
  %97 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 2
  %98 = add i32 %80, %61
  br label %99

99:                                               ; preds = %99, %91
  %100 = phi i32 [ 0, %91 ], [ %111, %99 ]
  %101 = shl nuw i32 %100, 1
  %102 = add i32 %98, %101
  %103 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %102) #6
  %104 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 3, i32 %100
  store i8 %103, ptr %104, align 1
  %105 = add i32 %102, 1
  %106 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %105) #6
  %107 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 3, i32 %100, i32 1
  %108 = lshr i8 %106, 6
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, ptr %107, align 1
  %111 = add nuw nsw i32 %100, 1
  %112 = load i8, ptr %97, align 2
  %113 = zext i8 %112 to i32
  %114 = icmp ult i32 %111, %113
  br i1 %114, label %99, label %115

115:                                              ; preds = %99, %88
  %116 = phi i32 [ %90, %88 ], [ %98, %99 ]
  %117 = phi i8 [ 0, %88 ], [ %112, %99 ]
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 1
  %120 = add i32 %116, %119
  %121 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %120) #6
  %122 = getelementptr %struct.pwr_rail_t, ptr %57, i32 %58, i32 4
  store i16 %121, ptr %122, align 2
  br label %123

123:                                              ; preds = %115, %78
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #6
  %124 = add nuw nsw i32 %58, 1
  %125 = icmp eq i32 %124, %55
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %49, align 4
  br label %56

128:                                              ; preds = %123, %45, %39, %35, %25, %24
  %129 = phi i32 [ -22, %25 ], [ -22, %39 ], [ -22, %35 ], [ -12, %45 ], [ -22, %24 ], [ 0, %123 ]
  ret i32 %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extdev_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

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
