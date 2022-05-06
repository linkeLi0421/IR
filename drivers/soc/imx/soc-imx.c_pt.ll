; ModuleID = '/llk/IR/drivers/soc/imx/soc-imx.c_pt.bc'
source_filename = "../drivers/soc/imx/soc-imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_soc_imx__166_214_imx_soc_device_init6 = internal global ptr @imx_soc_device_init, section ".initcall6.init", align 4
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"fsl,ls1021a\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Freescale i.MX\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"i.MX1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"i.MX21\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"i.MX25\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"i.MX27\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"i.MX31\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"i.MX35\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"i.MX50\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"fsl,imx51-iim\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"i.MX51\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"fsl,imx53-iim\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"i.MX53\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"fsl,imx6sl-ocotp\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"i.MX6SL\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"fsl,imx6q-ocotp\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"i.MX6DL\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"fsl,imx6sx-ocotp\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"i.MX6SX\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"i.MX6Q\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"fsl,imx6ul-ocotp\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"i.MX6UL\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"fsl,imx6ull-ocotp\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"i.MX6ULL\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"i.MX6ULZ\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"fsl,imx6sll-ocotp\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"i.MX6SLL\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"fsl,imx7d-ocotp\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"i.MX7D\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"fsl,imx7ulp-ocotp\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"i.MX7ULP\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"fsl,vf610-ocotp\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"VF500\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"VF510\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"VF600\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"VF610\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"\013%s: failed to find %s regmap!\0A\00", align 1
@__func__.imx_soc_device_init = private unnamed_addr constant [20 x i8] c"imx_soc_device_init\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"%016llX\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_soc_imx__166_214_imx_soc_device_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_soc_device_init() #0 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @__mxc_cpu_type, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %124, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %124

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %124, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 1
  store ptr @.str.1, ptr %12, align 4
  %13 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.2, ptr noundef null) #5
  %14 = tail call i32 @of_property_read_string(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #5
  tail call void @of_node_put(ptr noundef %13) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %122

16:                                               ; preds = %11
  %17 = load i32, ptr @__mxc_cpu_type, align 4
  switch i32 %17, label %39 [
    i32 1, label %40
    i32 21, label %18
    i32 25, label %19
    i32 27, label %20
    i32 31, label %21
    i32 35, label %22
    i32 50, label %23
    i32 51, label %43
    i32 53, label %24
    i32 96, label %25
    i32 97, label %26
    i32 98, label %27
    i32 99, label %28
    i32 100, label %29
    i32 101, label %30
    i32 107, label %31
    i32 103, label %32
    i32 114, label %33
    i32 255, label %34
    i32 1280, label %35
    i32 1296, label %36
    i32 1536, label %37
    i32 1552, label %38
  ]

18:                                               ; preds = %16
  br label %40

19:                                               ; preds = %16
  br label %40

20:                                               ; preds = %16
  br label %40

21:                                               ; preds = %16
  br label %40

22:                                               ; preds = %16
  br label %40

23:                                               ; preds = %16
  br label %40

24:                                               ; preds = %16
  br label %43

25:                                               ; preds = %16
  br label %43

26:                                               ; preds = %16
  br label %43

27:                                               ; preds = %16
  br label %43

28:                                               ; preds = %16
  br label %43

29:                                               ; preds = %16
  br label %43

30:                                               ; preds = %16
  br label %43

31:                                               ; preds = %16
  br label %43

32:                                               ; preds = %16
  br label %43

33:                                               ; preds = %16
  br label %43

34:                                               ; preds = %16
  br label %43

35:                                               ; preds = %16
  br label %43

36:                                               ; preds = %16
  br label %43

37:                                               ; preds = %16
  br label %43

38:                                               ; preds = %16
  br label %43

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %23, %22, %21, %20, %19, %18, %16
  %41 = phi ptr [ @.str.38, %39 ], [ @.str.10, %23 ], [ @.str.9, %22 ], [ @.str.8, %21 ], [ @.str.7, %20 ], [ @.str.6, %19 ], [ @.str.5, %18 ], [ @.str.4, %16 ]
  %42 = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 4
  store ptr %41, ptr %42, align 8
  br label %99

43:                                               ; preds = %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %16
  %44 = phi ptr [ @.str.13, %24 ], [ @.str.15, %25 ], [ @.str.17, %26 ], [ @.str.19, %27 ], [ @.str.17, %28 ], [ @.str.22, %29 ], [ @.str.24, %30 ], [ @.str.24, %31 ], [ @.str.27, %32 ], [ @.str.29, %33 ], [ @.str.31, %34 ], [ @.str.33, %35 ], [ @.str.33, %36 ], [ @.str.33, %37 ], [ @.str.33, %38 ], [ @.str.11, %16 ]
  %45 = phi ptr [ @.str.14, %24 ], [ @.str.16, %25 ], [ @.str.18, %26 ], [ @.str.20, %27 ], [ @.str.21, %28 ], [ @.str.23, %29 ], [ @.str.25, %30 ], [ @.str.26, %31 ], [ @.str.28, %32 ], [ @.str.30, %33 ], [ @.str.32, %34 ], [ @.str.34, %35 ], [ @.str.35, %36 ], [ @.str.36, %37 ], [ @.str.37, %38 ], [ @.str.12, %16 ]
  %46 = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 4
  store ptr %45, ptr %46, align 8
  %47 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %44) #5
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.imx_soc_device_init, ptr noundef nonnull %44) #7
  br label %99

51:                                               ; preds = %43
  %52 = icmp eq ptr %47, null
  %53 = or i1 %52, %48
  br i1 %53, label %99, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr @__mxc_cpu_type, align 4
  switch i32 %55, label %90 [
    i32 255, label %57
    i32 53, label %56
    i32 51, label %56
  ]

56:                                               ; preds = %54, %54
  br label %77

57:                                               ; preds = %54
  %58 = call i32 @regmap_read(ptr noundef nonnull %47, i32 noundef 1248, ptr noundef nonnull %1) #5
  %59 = load i32, ptr %1, align 4
  %60 = call i32 @regmap_read(ptr noundef nonnull %47, i32 noundef 1232, ptr noundef nonnull %1) #5
  %61 = shl i32 %59, 16
  %62 = load i32, ptr %1, align 4
  %63 = and i32 %62, 65535
  %64 = or i32 %63, %61
  %65 = zext i32 %64 to i64
  %66 = call i32 @regmap_read(ptr noundef nonnull %47, i32 noundef 1216, ptr noundef nonnull %1) #5
  %67 = load i32, ptr %1, align 4
  %68 = call i32 @regmap_read(ptr noundef nonnull %47, i32 noundef 1200, ptr noundef nonnull %1) #5
  %69 = shl nuw i64 %65, 32
  %70 = shl i32 %67, 16
  %71 = zext i32 %70 to i64
  %72 = or i64 %69, %71
  %73 = load i32, ptr %1, align 4
  %74 = and i32 %73, 65535
  %75 = zext i32 %74 to i64
  %76 = or i64 %72, %75
  br label %99

77:                                               ; preds = %77, %56
  %78 = phi i32 [ %88, %77 ], [ 0, %56 ]
  %79 = phi i64 [ %87, %77 ], [ 0, %56 ]
  %80 = shl i32 %78, 2
  %81 = add nuw nsw i32 %80, 2080
  %82 = call i32 @regmap_read(ptr noundef %47, i32 noundef %81, ptr noundef nonnull %1) #5
  %83 = shl i64 %79, 8
  %84 = load i32, ptr %1, align 4
  %85 = and i32 %84, 255
  %86 = zext i32 %85 to i64
  %87 = or i64 %83, %86
  %88 = add nuw nsw i32 %78, 1
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %99, label %77

90:                                               ; preds = %54
  %91 = call i32 @regmap_read(ptr noundef nonnull %47, i32 noundef 1056, ptr noundef nonnull %1) #5
  %92 = load i32, ptr %1, align 4
  %93 = zext i32 %92 to i64
  %94 = call i32 @regmap_read(ptr noundef nonnull %47, i32 noundef 1040, ptr noundef nonnull %1) #5
  %95 = shl nuw i64 %93, 32
  %96 = load i32, ptr %1, align 4
  %97 = zext i32 %96 to i64
  %98 = or i64 %95, %97
  br label %99

99:                                               ; preds = %90, %77, %57, %51, %49, %40
  %100 = phi i64 [ 0, %51 ], [ %76, %57 ], [ %98, %90 ], [ 0, %40 ], [ 0, %49 ], [ %87, %77 ]
  %101 = call i32 @imx_get_soc_revision() #5
  %102 = lshr i32 %101, 4
  %103 = and i32 %102, 15
  %104 = call i32 @imx_get_soc_revision() #5
  %105 = and i32 %104, 15
  %106 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.40, i32 noundef %103, i32 noundef %105) #5
  %107 = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 2
  store ptr %106, ptr %107, align 8
  %108 = icmp eq ptr %106, null
  br i1 %108, label %122, label %109

109:                                              ; preds = %99
  %110 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.41, i64 noundef %100) #5
  %111 = getelementptr inbounds %struct.soc_device_attribute, ptr %9, i32 0, i32 3
  store ptr %110, ptr %111, align 4
  %112 = icmp eq ptr %110, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = call ptr @soc_device_register(ptr noundef nonnull %9) #5
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = ptrtoint ptr %114 to i32
  %118 = load ptr, ptr %111, align 4
  call void @kfree(ptr noundef %118) #5
  br label %119

119:                                              ; preds = %116, %109
  %120 = phi i32 [ %117, %116 ], [ -12, %109 ]
  %121 = load ptr, ptr %107, align 8
  call void @kfree(ptr noundef %121) #5
  br label %122

122:                                              ; preds = %119, %99, %11
  %123 = phi i32 [ %14, %11 ], [ %120, %119 ], [ -12, %99 ]
  call void @kfree(ptr noundef nonnull %9) #5
  br label %124

124:                                              ; preds = %122, %113, %7, %4, %0
  %125 = phi i32 [ %123, %122 ], [ 0, %0 ], [ 0, %4 ], [ -12, %7 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret i32 %125
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_soc_revision() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

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
