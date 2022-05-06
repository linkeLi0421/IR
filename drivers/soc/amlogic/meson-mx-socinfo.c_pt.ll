; ModuleID = '/llk/IR/drivers/soc/amlogic/meson-mx-socinfo.c_pt.bc'
source_filename = "../drivers/soc/amlogic/meson-mx-socinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_meson_mx_socinfo__166_175_meson_mx_socinfo_init6 = internal global ptr @meson_mx_socinfo_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [24 x i8] c"amlogic,meson-mx-assist\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"amlogic,meson-mx-bootrom\00", align 1
@meson_mx_socinfo_analog_top_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-analog-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-analog-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Amlogic Meson\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Amlogic %s %s detected\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Rev%X (%x - 0:%X)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Meson6 (AML8726-MX)\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Meson8m2 (S812)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Meson8 (S802)\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Meson8b (S805)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_meson_mx_socinfo__166_175_meson_mx_socinfo_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_mx_socinfo_init() #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str) #5
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = ptrtoint ptr %4 to i32
  br label %79

8:                                                ; preds = %0
  %9 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #5
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %79

13:                                               ; preds = %8
  %14 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @meson_mx_socinfo_analog_top_ids, ptr noundef null) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %14) #5
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  br label %79

21:                                               ; preds = %16
  %22 = call i32 @regmap_read(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %3) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %21, %13
  %25 = call i32 @regmap_read(ptr noundef %4, i32 noundef 332, ptr noundef nonnull %1) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %79, label %27

27:                                               ; preds = %24
  %28 = call i32 @regmap_read(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %2) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 28) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %79, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.soc_device_attribute, ptr %32, i32 0, i32 1
  store ptr @.str.2, ptr %35, align 4
  %36 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.3, ptr noundef null) #5
  %37 = call i32 @of_property_read_string(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull %32) #5
  call void @of_node_put(ptr noundef %36) #5
  %38 = load i32, ptr %1, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load i32, ptr %3, align 4
  switch i32 %38, label %52 [
    i32 22, label %53
    i32 25, label %41
    i32 27, label %49
  ]

41:                                               ; preds = %34
  %42 = icmp eq i32 %40, 286331154
  %43 = select i1 %42, i32 29, i32 25
  %44 = add i32 %40, -286331153
  %45 = icmp ult i32 %44, 2
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  switch i32 %40, label %48 [
    i32 286331155, label %53
    i32 286331187, label %47
  ]

47:                                               ; preds = %46
  br label %53

48:                                               ; preds = %46
  br label %53

49:                                               ; preds = %34
  %50 = icmp eq i32 %40, 286331153
  %51 = select i1 %50, i32 10, i32 11
  br label %53

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52, %49, %48, %47, %46, %41, %34
  %54 = phi i32 [ %38, %52 ], [ %43, %47 ], [ %43, %48 ], [ %38, %34 ], [ %43, %41 ], [ %43, %46 ], [ 27, %49 ]
  %55 = phi i32 [ 0, %52 ], [ 12, %47 ], [ 13, %48 ], [ 10, %34 ], [ 10, %41 ], [ 11, %46 ], [ %51, %49 ]
  %56 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %55, i32 noundef %54, i32 noundef %39) #5
  %57 = getelementptr inbounds %struct.soc_device_attribute, ptr %32, i32 0, i32 2
  store ptr %56, ptr %57, align 8
  %58 = load i32, ptr %1, align 4
  switch i32 %58, label %64 [
    i32 22, label %65
    i32 25, label %59
    i32 27, label %63
  ]

59:                                               ; preds = %53
  %60 = load i32, ptr %3, align 4
  %61 = icmp eq i32 %60, 286331154
  %62 = select i1 %61, ptr @.str.8, ptr @.str.9
  br label %65

63:                                               ; preds = %53
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %63, %59, %53
  %66 = phi ptr [ @.str.11, %64 ], [ @.str.10, %63 ], [ @.str.7, %53 ], [ %62, %59 ]
  %67 = call ptr @kstrdup_const(ptr noundef nonnull %66, i32 noundef 3264) #5
  %68 = getelementptr inbounds %struct.soc_device_attribute, ptr %32, i32 0, i32 4
  store ptr %67, ptr %68, align 8
  %69 = call ptr @soc_device_register(ptr noundef nonnull %32) #5
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load ptr, ptr %57, align 8
  call void @kfree_const(ptr noundef %72) #5
  %73 = load ptr, ptr %68, align 8
  call void @kfree_const(ptr noundef %73) #5
  call void @kfree(ptr noundef nonnull %32) #5
  %74 = ptrtoint ptr %69 to i32
  br label %79

75:                                               ; preds = %65
  %76 = call ptr @soc_device_to_device(ptr noundef %69) #5
  %77 = load ptr, ptr %68, align 8
  %78 = load ptr, ptr %57, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.5, ptr noundef %77, ptr noundef %78) #7
  br label %79

79:                                               ; preds = %75, %71, %30, %27, %24, %21, %19, %11, %6
  %80 = phi i32 [ %7, %6 ], [ %12, %11 ], [ %20, %19 ], [ %74, %71 ], [ 0, %75 ], [ %22, %21 ], [ %25, %24 ], [ %28, %27 ], [ -19, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_to_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
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
