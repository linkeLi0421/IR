; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_plane.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }

@.str = private unnamed_addr constant [5 x i8] c"GDP0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GDP1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"GDP2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"GDP3\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"HQVDP0\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"<UNKNOWN PLANE>\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%-8s %4dx%-4d %.4s @ %3d.%-3.3d fps (%s)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" - %3d.%-3.3d field/sec\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\016[drm] %s%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"drm plane:%d mapped to %s\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @sti_plane_to_str(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %9 [
    i32 256, label %10
    i32 257, label %4
    i32 258, label %5
    i32 259, label %6
    i32 512, label %7
    i32 768, label %8
  ]

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %1
  %11 = phi ptr [ @.str.6, %9 ], [ @.str.5, %8 ], [ @.str.4, %7 ], [ @.str.3, %6 ], [ @.str.2, %5 ], [ @.str.1, %4 ], [ @.str, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_plane_update_fps(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i64 @ktime_get() #6
  %7 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3
  br i1 %2, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %3
  br i1 %1, label %13, label %91

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = sub i64 %6, %18
  %20 = tail call i64 @llvm.abs.i64(i64 %19, i1 false) #6
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %20) #7, !srcloc !8
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %20, i64 %21, i32 0) #7, !srcloc !9
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = icmp slt i64 %19, 0
  %25 = lshr i64 %23, 18
  %26 = sub nsw i64 0, %25
  %27 = select i1 %24, i64 %26, i64 %25
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = sub i32 %16, %30
  %32 = icmp slt i32 %31, 1
  %33 = icmp slt i32 %28, 3000
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %91, label %35

35:                                               ; preds = %13
  store i64 %6, ptr %17, align 8
  store i32 %16, ptr %29, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  %40 = mul i32 %31, 1000000
  %41 = sdiv i32 %40, %28
  %42 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 6
  %43 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 9
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_framebuffer, ptr %37, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = freeze i32 %41
  %52 = sdiv i32 %51, 1000
  %53 = mul i32 %52, 1000
  %54 = sub i32 %51, %53
  %55 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 1
  %56 = load i32, ptr %55, align 8
  switch i32 %56, label %62 [
    i32 256, label %63
    i32 257, label %57
    i32 258, label %58
    i32 259, label %59
    i32 512, label %60
    i32 768, label %61
  ]

57:                                               ; preds = %39
  br label %63

58:                                               ; preds = %39
  br label %63

59:                                               ; preds = %39
  br label %63

60:                                               ; preds = %39
  br label %63

61:                                               ; preds = %39
  br label %63

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62, %61, %60, %59, %58, %57, %39
  %64 = phi ptr [ @.str.6, %62 ], [ @.str.5, %61 ], [ @.str.4, %60 ], [ @.str.3, %59 ], [ @.str.2, %58 ], [ @.str.1, %57 ], [ @.str, %39 ]
  %65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %42, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %44, i32 noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef %54, ptr noundef nonnull %64)
  br label %66

66:                                               ; preds = %63, %35
  %67 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = sub i32 %68, %72
  store i32 %68, ptr %71, align 8
  %74 = mul i32 %73, 1000000
  %75 = sdiv i32 %74, %28
  %76 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 7
  %77 = freeze i32 %75
  %78 = sdiv i32 %77, 1000
  %79 = mul i32 %78, 1000
  %80 = sub i32 %77, %79
  %81 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %76, i32 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %78, i32 noundef %80)
  br label %84

82:                                               ; preds = %66
  %83 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 7
  store i8 0, ptr %83, align 8
  br label %84

84:                                               ; preds = %82, %70
  %85 = load i8, ptr %7, align 8, !range !10
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 6
  %89 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 3, i32 7
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %88, ptr noundef %89) #8
  br label %91

91:                                               ; preds = %87, %84, %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_plane_reset(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @drm_atomic_helper_plane_reset(ptr noundef %0) #6
  %2 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = icmp eq i32 %3, 2
  %7 = select i1 %6, i32 7, i32 %5
  %8 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 15
  store i32 %7, ptr %10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_plane_init_property(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, i32 7, i32 %4
  switch i32 %1, label %11 [
    i32 1, label %7
    i32 0, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %2, %2
  %8 = tail call i32 @drm_plane_create_zpos_property(ptr noundef %0, i32 noundef %6, i32 noundef 0, i32 noundef 6) #6
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef %0, i32 noundef %6) #6
  br label %11

11:                                               ; preds = %9, %7, %2
  %12 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sti_plane, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %21 [
    i32 256, label %22
    i32 257, label %16
    i32 258, label %17
    i32 259, label %18
    i32 512, label %19
    i32 768, label %20
  ]

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  br label %22

19:                                               ; preds = %11
  br label %22

20:                                               ; preds = %11
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %11
  %23 = phi ptr [ @.str.6, %21 ], [ @.str.5, %20 ], [ @.str.4, %19 ], [ @.str.3, %18 ], [ @.str.2, %17 ], [ @.str.1, %16 ], [ @.str, %11 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %13, ptr noundef nonnull %23) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }

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
!8 = !{i64 743011, i64 743038}
!9 = !{i64 743706, i64 743733, i64 743766, i64 743787, i64 743814, i64 743840}
!10 = !{i8 0, i8 2}
