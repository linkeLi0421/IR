; ModuleID = '/llk/IR/drivers/clk/renesas/clk-r8a7779.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-r8a7779.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpg_clk_config = type { i32, i32, i32, i32, i32, i32 }
%struct.r8a7779_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__of_table_r8a7779_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7779-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7779_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013%s: failed to count clocks\0A\00", align 1
@__func__.r8a7779_cpg_clocks_init = private unnamed_addr constant [24 x i8] c"r8a7779_cpg_clocks_init\00", align 1
@cpg_clk_configs = internal constant [4 x %struct.cpg_clk_config] [%struct.cpg_clk_config { i32 1, i32 2, i32 8, i32 16, i32 32, i32 24 }, %struct.cpg_clk_config { i32 2, i32 3, i32 6, i32 12, i32 24, i32 24 }, %struct.cpg_clk_config { i32 1, i32 2, i32 8, i32 16, i32 32, i32 32 }, %struct.cpg_clk_config { i32 2, i32 3, i32 6, i32 12, i32 24, i32 36 }], section ".init.rodata", align 4
@cpg_plla_mult = internal unnamed_addr constant [4 x i32] [i32 42, i32 48, i32 56, i32 64], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"plla\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"zs\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"s1\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_r8a7779_cpg_clks], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @r8a7779_cpg_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = call i32 @rcar_rst_read_mode_pins(ptr noundef nonnull %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.r8a7779_cpg_clocks_init) #7
  br label %49

11:                                               ; preds = %6
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 16) #8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 32) #8
  %16 = icmp eq ptr %13, null
  %17 = icmp eq ptr %15, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %49, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.r8a7779_cpg, ptr %13, i32 0, i32 1
  store i32 0, ptr %20, align 8
  store ptr %15, ptr %13, align 8
  %21 = getelementptr inbounds %struct.clk_onecell_data, ptr %13, i32 0, i32 1
  store i32 %7, ptr %21, align 4
  %22 = load i32, ptr %2, align 4
  %23 = lshr i32 %22, 1
  %24 = and i32 %23, 3
  %25 = getelementptr [4 x %struct.cpg_clk_config], ptr @cpg_clk_configs, i32 0, i32 %24
  %26 = lshr i32 %22, 11
  %27 = and i32 %26, 3
  %28 = getelementptr [4 x i32], ptr @cpg_plla_mult, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %7, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %44, %19
  %32 = phi i32 [ %45, %44 ], [ 0, %19 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %33 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %32) #6
  %34 = load ptr, ptr %3, align 4
  %35 = call fastcc ptr @r8a7779_cpg_register_clock(ptr noundef %0, ptr noundef %25, i32 noundef %29, ptr noundef %34) #9
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 4
  %39 = ptrtoint ptr %35 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r8a7779_cpg_clocks_init, ptr noundef %0, ptr noundef %38, i32 noundef %39) #7
  br label %44

41:                                               ; preds = %31
  %42 = load ptr, ptr %13, align 8
  %43 = getelementptr ptr, ptr %42, i32 %32
  store ptr %35, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %45 = add nuw i32 %32, 1
  %46 = icmp eq i32 %45, %7
  br i1 %46, label %47, label %31

47:                                               ; preds = %44, %19
  %48 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %13) #6
  call void @cpg_mstp_add_clk_domain(ptr noundef %0) #6
  br label %49

49:                                               ; preds = %47, %11, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_rst_read_mode_pins(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @r8a7779_cpg_register_clock(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(5) @.str.3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #6
  br label %46

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(2) @.str.4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.cpg_clk_config, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %1, align 4
  br label %46

16:                                               ; preds = %9
  %17 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(3) @.str.5)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(2) @.str.6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds %struct.cpg_clk_config, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br label %46

25:                                               ; preds = %19
  %26 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(3) @.str.7)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.cpg_clk_config, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  br label %46

31:                                               ; preds = %25
  %32 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(2) @.str.8)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cpg_clk_config, ptr %1, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  br label %46

37:                                               ; preds = %31
  %38 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(2) @.str.9)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(4) @.str.10)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40, %37
  %44 = getelementptr inbounds %struct.cpg_clk_config, ptr %1, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %34, %28, %22, %12, %7
  %47 = phi ptr [ @.str.3, %43 ], [ @.str.3, %34 ], [ @.str.3, %28 ], [ @.str.3, %22 ], [ @.str.3, %12 ], [ %8, %7 ]
  %48 = phi i32 [ 1, %43 ], [ 1, %34 ], [ 1, %28 ], [ 1, %22 ], [ %15, %12 ], [ %2, %7 ]
  %49 = phi i32 [ %45, %43 ], [ %36, %34 ], [ %30, %28 ], [ %24, %22 ], [ %14, %12 ], [ 1, %7 ]
  %50 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %3, ptr noundef %47, i32 noundef 0, i32 noundef %48, i32 noundef %49) #6
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi ptr [ %50, %46 ], [ inttoptr (i32 -22 to ptr), %40 ]
  ret ptr %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_add_clk_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold }

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
