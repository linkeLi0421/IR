; ModuleID = '/llk/IR/drivers/soc/rockchip/grf.c_pt.bc'
source_filename = "../drivers/soc/rockchip/grf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_grf_info = type { ptr, i32 }
%struct.rockchip_grf_value = type { ptr, i32, i32 }

@__initcall__kmod_grf__162_175_rockchip_grf_init2 = internal global ptr @rockchip_grf_init, section ".initcall2.init", align 4
@rockchip_grf_dt_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3128_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3328_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_grf }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-grf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_grf }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [24 x i8] c"\013%s: missing grf data\0A\00", align 1
@__func__.rockchip_grf_init = private unnamed_addr constant [18 x i8] c"rockchip_grf_init\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: could not get grf syscon\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%s: write to %#6x failed with %d\0A\00", align 1
@rk3036_grf = internal constant %struct.rockchip_grf_info { ptr @rk3036_defaults, i32 1 }, section ".init.rodata", align 4
@rk3128_grf = internal constant %struct.rockchip_grf_info { ptr @rk3128_defaults, i32 1 }, section ".init.rodata", align 4
@rk3228_grf = internal constant %struct.rockchip_grf_info { ptr @rk3228_defaults, i32 1 }, section ".init.rodata", align 4
@rk3288_grf = internal constant %struct.rockchip_grf_info { ptr @rk3288_defaults, i32 2 }, section ".init.rodata", align 4
@rk3328_grf = internal constant %struct.rockchip_grf_info { ptr @rk3328_defaults, i32 1 }, section ".init.rodata", align 4
@rk3368_grf = internal constant %struct.rockchip_grf_info { ptr @rk3368_defaults, i32 1 }, section ".init.rodata", align 4
@rk3399_grf = internal constant %struct.rockchip_grf_info { ptr @rk3399_defaults, i32 1 }, section ".init.rodata", align 4
@rk3036_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 320, i32 134217728 }], section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"jtag switching\00", align 1
@rk3128_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 320, i32 16777216 }], section ".init.rodata", align 4
@rk3228_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 1048, i32 16777216 }], section ".init.rodata", align 4
@rk3288_defaults = internal constant [2 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 580, i32 268435456 }, %struct.rockchip_grf_value { ptr @.str.4, i32 588, i32 65537 }], section ".init.rodata", align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"pwm select\00", align 1
@rk3328_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 1040, i32 268435456 }], section ".init.rodata", align 4
@rk3368_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 1084, i32 536870912 }], section ".init.rodata", align 4
@rk3399_defaults = internal constant [1 x %struct.rockchip_grf_value] [%struct.rockchip_grf_value { ptr @.str.3, i32 57884, i32 268435456 }], section ".init.rodata", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_grf__162_175_rockchip_grf_init2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rockchip_grf_init() #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #4
  store ptr null, ptr %1, align 4, !annotation !8
  %2 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rockchip_grf_dt_match, ptr noundef nonnull %1) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %4
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_grf_init) #5
  br label %39

13:                                               ; preds = %7
  %14 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %2) #4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.rockchip_grf_info, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %23, label %39

20:                                               ; preds = %13
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rockchip_grf_init) #5
  %22 = ptrtoint ptr %14 to i32
  br label %39

23:                                               ; preds = %35, %16
  %24 = phi i32 [ %36, %35 ], [ 0, %16 ]
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr %struct.rockchip_grf_value, ptr %25, i32 %24, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.rockchip_grf_value, ptr %25, i32 %24, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @regmap_write(ptr noundef %14, i32 noundef %27, i32 noundef %29) #4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, ptr %26, align 4
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rockchip_grf_init, i32 noundef %33, i32 noundef %30) #5
  br label %35

35:                                               ; preds = %32, %23
  %36 = add nuw nsw i32 %24, 1
  %37 = load i32, ptr %17, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %23, label %39

39:                                               ; preds = %35, %20, %16, %11, %0
  %40 = phi i32 [ %22, %20 ], [ -22, %11 ], [ -19, %0 ], [ 0, %16 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #4
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
