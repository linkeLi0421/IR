; ModuleID = '/llk/IR/drivers/clk/renesas/clk-r8a7778.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-r8a7778.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.4 = type { i32, i32 }
%struct.anon.5 = type { ptr, [4 x i32] }
%struct.r8a7778_cpg = type { %struct.clk_onecell_data, %struct.spinlock, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@__of_table_r8a7778_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7778-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7778_cpg_clocks_init }, section "__clk_of_table", align 4
@cpg_mode_rates = internal unnamed_addr global i32 0, section ".init.data", align 4
@cpg_mode_divs = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013%s: failed to count clocks\0A\00", align 1
@__func__.r8a7778_cpg_clocks_init = private unnamed_addr constant [24 x i8] c"r8a7778_cpg_clocks_init\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/clk/renesas/clk-r8a7778.c\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"plla\00", align 1
@r8a7778_rates = internal unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { i32 21, i32 21 }, %struct.anon.4 { i32 24, i32 24 }, %struct.anon.4 { i32 28, i32 28 }, %struct.anon.4 { i32 32, i32 32 }, %struct.anon.4 zeroinitializer, %struct.anon.4 { i32 24, i32 21 }, %struct.anon.4 { i32 28, i32 21 }, %struct.anon.4 { i32 32, i32 24 }], section ".init.rodata", align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"pllb\00", align 1
@r8a7778_divs = internal unnamed_addr constant [6 x %struct.anon.5] [%struct.anon.5 { ptr @.str.6, [4 x i32] [i32 12, i32 12, i32 16, i32 18] }, %struct.anon.5 { ptr @.str.7, [4 x i32] [i32 12, i32 12, i32 16, i32 18] }, %struct.anon.5 { ptr @.str.8, [4 x i32] [i32 16, i32 12, i32 16, i32 12] }, %struct.anon.5 { ptr @.str.9, [4 x i32] [i32 4, i32 3, i32 4, i32 3] }, %struct.anon.5 { ptr @.str.10, [4 x i32] [i32 8, i32 6, i32 8, i32 6] }, %struct.anon.5 zeroinitializer], section ".init.rodata", align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"s1\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_r8a7778_cpg_clks], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @r8a7778_cpg_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = call i32 @rcar_rst_read_mode_pins(ptr noundef nonnull %2) #8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %63

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 524288
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-r8a7778.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

11:                                               ; preds = %6
  %12 = lshr i32 %7, 16
  %13 = and i32 %12, 4
  %14 = lshr i32 %7, 11
  %15 = and i32 %14, 2
  %16 = or i32 %13, %15
  %17 = and i32 %14, 1
  %18 = or i32 %16, %17
  store i32 %18, ptr @cpg_mode_rates, align 4
  %19 = lshr i32 %7, 1
  %20 = and i32 %19, 3
  store i32 %20, ptr @cpg_mode_divs, align 4
  %21 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.r8a7778_cpg_clocks_init) #9
  br label %63

25:                                               ; preds = %11
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 16) #10
  %28 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %63, label %30, !prof !9

30:                                               ; preds = %25
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #11
  %33 = icmp eq ptr %27, null
  %34 = icmp eq ptr %32, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %63, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.r8a7778_cpg, ptr %27, i32 0, i32 1
  store i32 0, ptr %37, align 8
  store ptr %32, ptr %27, align 8
  %38 = getelementptr inbounds %struct.clk_onecell_data, ptr %27, i32 0, i32 1
  store i32 %21, ptr %38, align 4
  %39 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %40 = getelementptr inbounds %struct.r8a7778_cpg, ptr %27, i32 0, i32 2
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %44, label %42, !prof !9

42:                                               ; preds = %36
  %43 = icmp eq i32 %21, 0
  br i1 %43, label %61, label %45

44:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 118, i32 noundef 9, ptr noundef null) #8
  br label %63

45:                                               ; preds = %58, %42
  %46 = phi i32 [ %59, %58 ], [ 0, %42 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %47 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %46) #8
  %48 = load ptr, ptr %3, align 4
  %49 = call fastcc ptr @r8a7778_cpg_register_clock(ptr noundef %0, ptr noundef %48) #12
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load ptr, ptr %3, align 4
  %53 = ptrtoint ptr %49 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.r8a7778_cpg_clocks_init, ptr noundef %0, ptr noundef %52, i32 noundef %53) #9
  br label %58

55:                                               ; preds = %45
  %56 = load ptr, ptr %27, align 8
  %57 = getelementptr ptr, ptr %56, i32 %46
  store ptr %49, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %59 = add nuw i32 %46, 1
  %60 = icmp eq i32 %59, %21
  br i1 %60, label %61, label %45

61:                                               ; preds = %58, %42
  %62 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %27) #8
  call void @cpg_mstp_add_clk_domain(ptr noundef %0) #8
  br label %63

63:                                               ; preds = %61, %44, %30, %25, %23, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_rst_read_mode_pins(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @r8a7778_cpg_register_clock(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.4)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %7 = load i32, ptr @cpg_mode_rates, align 4
  %8 = getelementptr [8 x %struct.anon.4], ptr @r8a7778_rates, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef %6, i32 noundef 0, i32 noundef %9, i32 noundef 1) #8
  br label %34

11:                                               ; preds = %2
  %12 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %16 = load i32, ptr @cpg_mode_rates, align 4
  %17 = getelementptr [8 x %struct.anon.4], ptr @r8a7778_rates, i32 0, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %15, i32 noundef 0, i32 noundef %18, i32 noundef 1) #8
  br label %34

20:                                               ; preds = %26, %11
  %21 = phi i32 [ %27, %26 ], [ 0, %11 ]
  %22 = getelementptr [6 x %struct.anon.5], ptr @r8a7778_divs, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %34, label %20

29:                                               ; preds = %20
  %30 = load i32, ptr @cpg_mode_divs, align 4
  %31 = getelementptr [6 x %struct.anon.5], ptr @r8a7778_divs, i32 0, i32 %21, i32 1, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %23, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1, i32 noundef %32) #8
  br label %34

34:                                               ; preds = %29, %26, %14, %5
  %35 = phi ptr [ %33, %29 ], [ %19, %14 ], [ %10, %5 ], [ inttoptr (i32 -22 to ptr), %26 ]
  ret ptr %35
}

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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }

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
!10 = !{i64 2150570020, i64 2150570517, i64 2150570057, i64 2150570113, i64 2150570147, i64 2150570171, i64 2150570212, i64 2150570233, i64 2150570261, i64 2150570295}
