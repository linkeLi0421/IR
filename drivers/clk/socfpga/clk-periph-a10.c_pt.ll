; ModuleID = '/llk/IR/drivers/clk/socfpga/clk-periph-a10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-periph-a10.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.socfpga_periph_clk = type { %struct.clk_gate, ptr, i32, ptr, ptr, i32, i32, i32 }

@periclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_periclk_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_periclk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"drivers/clk/socfpga/clk-periph-a10.c\00", align 1
@clk_mgr_a10_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"div-reg\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fixed-divider\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"\013Could not register clock provider for node:%s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"mpu_free_clk\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"noc_free_clk\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"sdmmc_free_clk\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @socfpga_a10_periph_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @__socfpga_periph_init(ptr noundef %0) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__socfpga_periph_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca [5 x ptr], align 4
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #9
  %9 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !8
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 52) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 9, ptr noundef null) #9
  br label %58

15:                                               ; preds = %1
  %16 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %17 = load i32, ptr %2, align 4
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr inbounds %struct.clk_gate, ptr %12, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0) #9
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %24 = load i32, ptr %7, align 4
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = getelementptr inbounds [3 x i32], ptr %7, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %12, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [3 x i32], ptr %7, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %12, i32 0, i32 5
  store i32 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %22, %15
  %33 = phi ptr [ %25, %22 ], [ null, %15 ]
  %34 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %12, i32 0, i32 3
  store ptr %33, ptr %34, align 8
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %36 = load i32, ptr %6, align 4
  %37 = icmp slt i32 %35, 0
  %38 = select i1 %37, i32 0, i32 %36
  %39 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %12, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #9
  %41 = load ptr, ptr %3, align 4
  store ptr %41, ptr %5, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @periclk_ops, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 0, ptr %43, align 4
  %44 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 5) #9
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %5, ptr %48, align 8
  %49 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %12) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  call void @kfree(ptr noundef nonnull %12) #9
  br label %58

52:                                               ; preds = %32
  %53 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %12) #9
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load ptr, ptr %3, align 4
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %56) #11
  call void @clk_hw_unregister(ptr noundef nonnull %12) #9
  br label %58

58:                                               ; preds = %55, %52, %51, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_periclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %12 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %11, %13
  %15 = getelementptr inbounds %struct.socfpga_periph_clk, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 32, %16
  %18 = lshr i32 -1, %17
  %19 = and i32 %18, %14
  %20 = add i32 %19, 1
  br label %27

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %25 = and i32 %24, 2047
  %26 = add nuw nsw i32 %25, 1
  br label %27

27:                                               ; preds = %21, %10, %2
  %28 = phi i32 [ %20, %10 ], [ %26, %21 ], [ %4, %2 ]
  %29 = udiv i32 %1, %28
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_periclk_get_parent(ptr noundef %0) #6 {
  %2 = tail call ptr @clk_hw_get_name(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %6 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(13) @.str.6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(13) @.str.7)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(15) @.str.8)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %8, %1
  %15 = lshr i32 %5, 16
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 7
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i8 [ %17, %14 ], [ 0, %11 ]
  ret i8 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2989635}
!11 = !{i64 2150542680}
!12 = !{i64 2150543837}
!13 = !{i64 2150545478}
