; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_top_func = type { ptr }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
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
%struct.nvkm_top_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head }

@gk104_top = internal constant %struct.nvkm_top_func { ptr @gk104_top_oneinit }, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: %02x: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/top/gk104.c\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"%s: %02x.%d (%8s): addr %06x fault %2d engine %2d runlist %2d intr %2d reset %2d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"????????\00", align 1
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_top_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_top_new_(ptr noundef nonnull @gk104_top, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk104_top_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 1, i32 5
  %6 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 1, i32 4
  br label %7

7:                                                ; preds = %153, %1
  %8 = phi ptr [ null, %1 ], [ %156, %153 ]
  %9 = phi i32 [ 0, %1 ], [ %155, %153 ]
  %10 = phi i32 [ 0, %1 ], [ %154, %153 ]
  %11 = phi i32 [ 0, %1 ], [ %157, %153 ]
  %12 = icmp eq ptr %8, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = tail call ptr @nvkm_top_device_new(ptr noundef %0) #3
  %15 = icmp eq ptr %14, null
  br i1 %15, label %159, label %16

16:                                               ; preds = %13, %7
  %17 = phi i32 [ %10, %7 ], [ 0, %13 ]
  %18 = phi i32 [ %9, %7 ], [ -1, %13 ]
  %19 = phi ptr [ %8, %7 ], [ %14, %13 ]
  %20 = load ptr, ptr %4, align 4
  %21 = shl i32 %11, 2
  %22 = add nuw nsw i32 %21, 141056
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %25 = load i32, ptr %5, align 4
  %26 = icmp ugt i32 %25, 4
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %11, i32 noundef %24) #4
  br label %31

31:                                               ; preds = %27, %16
  %32 = and i32 %24, 3
  switch i32 %32, label %75 [
    i32 0, label %153
    i32 1, label %33
    i32 2, label %44
    i32 3, label %72
  ]

33:                                               ; preds = %31
  %34 = lshr i32 %24, 26
  %35 = and i32 %34, 15
  %36 = and i32 %24, 16773120
  %37 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = and i32 %24, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %76, label %40

40:                                               ; preds = %33
  %41 = lshr i32 %24, 3
  %42 = and i32 %41, 127
  %43 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  br label %76

44:                                               ; preds = %31
  %45 = and i32 %24, 32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = lshr i32 %24, 26
  %49 = and i32 %48, 15
  %50 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = and i32 %24, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = lshr i32 %24, 21
  %56 = and i32 %55, 15
  %57 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 5
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = and i32 %24, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = lshr i32 %24, 15
  %63 = and i32 %62, 31
  %64 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = and i32 %24, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = lshr i32 %24, 9
  %70 = and i32 %69, 31
  %71 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 6
  store i32 %70, ptr %71, align 4
  br label %76

72:                                               ; preds = %31
  %73 = lshr i32 %24, 2
  %74 = and i32 %73, 536870911
  br label %76

75:                                               ; preds = %31
  unreachable

76:                                               ; preds = %72, %68, %65, %40, %33
  %77 = phi i32 [ %17, %72 ], [ %17, %68 ], [ %17, %65 ], [ %35, %40 ], [ %35, %33 ]
  %78 = phi i32 [ %74, %72 ], [ %18, %68 ], [ %18, %65 ], [ %18, %40 ], [ %18, %33 ]
  %79 = icmp sgt i32 %24, -1
  br i1 %79, label %80, label %153

80:                                               ; preds = %76
  switch i32 %78, label %127 [
    i32 0, label %81
    i32 1, label %84
    i32 2, label %87
    i32 3, label %90
    i32 8, label %93
    i32 9, label %96
    i32 10, label %99
    i32 11, label %102
    i32 12, label %105
    i32 13, label %108
    i32 14, label %123
    i32 15, label %111
    i32 16, label %114
    i32 18, label %115
    i32 19, label %116
    i32 20, label %117
    i32 21, label %120
  ]

81:                                               ; preds = %80
  %82 = icmp eq i32 %77, 0
  br i1 %82, label %123, label %83, !prof !10

83:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 9, ptr noundef null) #3
  br label %123

84:                                               ; preds = %80
  %85 = icmp eq i32 %77, 0
  br i1 %85, label %123, label %86, !prof !10

86:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 77, i32 noundef 9, ptr noundef null) #3
  br label %123

87:                                               ; preds = %80
  %88 = icmp eq i32 %77, 0
  br i1 %88, label %123, label %89, !prof !10

89:                                               ; preds = %87
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 9, ptr noundef null) #3
  br label %123

90:                                               ; preds = %80
  %91 = icmp eq i32 %77, 0
  br i1 %91, label %123, label %92, !prof !10

92:                                               ; preds = %90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 9, ptr noundef null) #3
  br label %123

93:                                               ; preds = %80
  %94 = icmp eq i32 %77, 0
  br i1 %94, label %123, label %95, !prof !10

95:                                               ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #3
  br label %123

96:                                               ; preds = %80
  %97 = icmp eq i32 %77, 0
  br i1 %97, label %123, label %98, !prof !10

98:                                               ; preds = %96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 9, ptr noundef null) #3
  br label %123

99:                                               ; preds = %80
  %100 = icmp eq i32 %77, 0
  br i1 %100, label %123, label %101, !prof !10

101:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 9, ptr noundef null) #3
  br label %123

102:                                              ; preds = %80
  %103 = icmp eq i32 %77, 0
  br i1 %103, label %123, label %104, !prof !10

104:                                              ; preds = %102
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 9, ptr noundef null) #3
  br label %123

105:                                              ; preds = %80
  %106 = icmp eq i32 %77, 0
  br i1 %106, label %123, label %107, !prof !10

107:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 84, i32 noundef 9, ptr noundef null) #3
  br label %123

108:                                              ; preds = %80
  %109 = icmp eq i32 %77, 0
  br i1 %109, label %123, label %110, !prof !10

110:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 9, ptr noundef null) #3
  br label %123

111:                                              ; preds = %80
  %112 = icmp eq i32 %77, 0
  br i1 %112, label %123, label %113, !prof !10

113:                                              ; preds = %111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 87, i32 noundef 9, ptr noundef null) #3
  br label %123

114:                                              ; preds = %80
  br label %123

115:                                              ; preds = %80
  br label %123

116:                                              ; preds = %80
  br label %123

117:                                              ; preds = %80
  %118 = icmp eq i32 %77, 0
  br i1 %118, label %123, label %119, !prof !10

119:                                              ; preds = %117
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 91, i32 noundef 9, ptr noundef null) #3
  br label %123

120:                                              ; preds = %80
  %121 = icmp eq i32 %77, 0
  br i1 %121, label %123, label %122, !prof !10

122:                                              ; preds = %120
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 92, i32 noundef 9, ptr noundef null) #3
  br label %123

123:                                              ; preds = %122, %120, %119, %117, %116, %115, %114, %113, %111, %110, %108, %107, %105, %104, %102, %101, %99, %98, %96, %95, %93, %92, %90, %89, %87, %86, %84, %83, %81, %80
  %124 = phi i32 [ 41, %114 ], [ 25, %115 ], [ 28, %116 ], [ 33, %83 ], [ 33, %81 ], [ 28, %86 ], [ 28, %84 ], [ 28, %89 ], [ 28, %87 ], [ 28, %92 ], [ 28, %90 ], [ 38, %95 ], [ 38, %93 ], [ 39, %98 ], [ 39, %96 ], [ 40, %101 ], [ 40, %99 ], [ 37, %104 ], [ 37, %102 ], [ 49, %107 ], [ 49, %105 ], [ 47, %110 ], [ 47, %108 ], [ 42, %80 ], [ 42, %113 ], [ 42, %111 ], [ 24, %119 ], [ 24, %117 ], [ 43, %122 ], [ 43, %120 ]
  %125 = phi i32 [ %77, %114 ], [ %77, %115 ], [ %77, %116 ], [ 0, %83 ], [ 0, %81 ], [ 0, %86 ], [ 0, %84 ], [ 1, %89 ], [ 1, %87 ], [ 2, %92 ], [ 2, %90 ], [ 0, %95 ], [ 0, %93 ], [ 0, %98 ], [ 0, %96 ], [ 0, %101 ], [ 0, %99 ], [ 0, %104 ], [ 0, %102 ], [ 0, %107 ], [ 0, %105 ], [ 0, %110 ], [ 0, %108 ], [ %77, %80 ], [ 1, %113 ], [ 1, %111 ], [ 0, %119 ], [ 0, %117 ], [ 0, %122 ], [ 0, %120 ]
  store i32 %124, ptr %19, align 4
  %126 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 1
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %123, %80
  %128 = load i32, ptr %5, align 4
  %129 = icmp ugt i32 %128, 3
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = load ptr, ptr %2, align 4
  %132 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8
  %134 = load i32, ptr %19, align 4
  %135 = icmp eq i32 %134, 51
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %134
  %138 = load ptr, ptr %137, align 4
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi ptr [ %138, %136 ], [ @.str.3, %130 ]
  %141 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 4
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 5
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_top_device, ptr %19, i32 0, i32 6
  %152 = load i32, ptr %151, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %133, ptr noundef nonnull @.str.2, ptr noundef %6, i32 noundef %78, i32 noundef %77, ptr noundef %140, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152) #4
  br label %153

153:                                              ; preds = %139, %127, %76, %31
  %154 = phi i32 [ %77, %76 ], [ %17, %31 ], [ %77, %139 ], [ %77, %127 ]
  %155 = phi i32 [ %78, %76 ], [ %18, %31 ], [ %78, %139 ], [ %78, %127 ]
  %156 = phi ptr [ %19, %76 ], [ %19, %31 ], [ null, %139 ], [ null, %127 ]
  %157 = add nuw nsw i32 %11, 1
  %158 = icmp eq i32 %157, 64
  br i1 %158, label %159, label %7

159:                                              ; preds = %153, %13
  %160 = phi i32 [ -12, %13 ], [ 0, %153 ]
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_device_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3941312}
!9 = !{i64 2151480765}
!10 = !{!"branch_weights", i32 2000, i32 1}
