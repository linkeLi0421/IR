; ModuleID = '/llk/IR/drivers/reset/reset-socfpga.c_pt.bc'
source_filename = "../drivers/reset/reset-socfpga.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@socfpga_early_reset_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,rst-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@__initcall__kmod_reset_socfpga__166_120_reset_socfpga_driver_init6 = internal global ptr @reset_socfpga_driver_init, section ".initcall6.init", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str = private unnamed_addr constant [19 x i8] c"altr,modrst-offset\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\014missing altr,modrst-offset property, assuming 0x10\0A\00", align 1
@reset_simple_ops = external dso_local constant %struct.reset_control_ops, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\013unable to register device\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@reset_socfpga_driver = internal global %struct.platform_driver { ptr @reset_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @socfpga_reset_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"socfpga-reset\00", align 1
@socfpga_reset_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,rst-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_reset_socfpga__166_120_reset_socfpga_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @socfpga_reset_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.resource, align 4
  %2 = alloca i32, align 4
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @socfpga_early_reset_dt_ids, ptr noundef null) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %48, %5
  %8 = phi ptr [ %3, %5 ], [ %49, %48 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 16, ptr %2, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 60) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %7
  %13 = call i32 @of_address_to_resource(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %1) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %1, align 4
  %18 = add i32 %16, 1
  %19 = sub i32 %18, %17
  %20 = load ptr, ptr %8, align 4
  %21 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %17, i32 noundef %19, ptr noundef %20, i32 noundef 0) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %1, align 4
  %25 = call ptr @ioremap(i32 noundef %24, i32 noundef %19) #7
  %26 = getelementptr inbounds %struct.reset_simple_data, ptr %10, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, ptr %1, align 4
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %29, i32 noundef %19) #7
  br label %47

30:                                               ; preds = %23
  %31 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, ptr %2, align 4
  %37 = getelementptr i8, ptr %25, i32 %36
  store ptr %37, ptr %26, align 4
  store i32 0, ptr %10, align 8
  %38 = getelementptr inbounds %struct.reset_simple_data, ptr %10, i32 0, i32 2
  %39 = getelementptr inbounds %struct.reset_simple_data, ptr %10, i32 0, i32 2, i32 1
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.reset_simple_data, ptr %10, i32 0, i32 2, i32 8
  store i32 256, ptr %40, align 8
  store ptr @reset_simple_ops, ptr %38, align 8
  %41 = getelementptr inbounds %struct.reset_simple_data, ptr %10, i32 0, i32 2, i32 5
  store ptr %8, ptr %41, align 4
  %42 = getelementptr inbounds %struct.reset_simple_data, ptr %10, i32 0, i32 4
  store i8 1, ptr %42, align 1
  %43 = call i32 @reset_controller_register(ptr noundef %38) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %48

47:                                               ; preds = %28, %15, %12
  call void @kfree(ptr noundef nonnull %10) #7
  br label %48

48:                                               ; preds = %47, %45, %35, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #7
  %49 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %8, ptr noundef nonnull @socfpga_early_reset_dt_ids, ptr noundef null) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %7

51:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @reset_socfpga_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @reset_socfpga_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @reset_simple_probe(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
