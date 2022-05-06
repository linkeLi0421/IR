; ModuleID = '/llk/IR/drivers/clk/socfpga/clk-pll-a10.c_pt.bc'
source_filename = "../drivers/clk/socfpga/clk-pll-a10.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr @clk_pll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_mgr_a10_base_addr = dso_local local_unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"drivers/clk/socfpga/clk-pll-a10.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"altr,clk-mgr\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @socfpga_a10_pll_init(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @__socfpga_pll_init(ptr noundef %0) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @__socfpga_pll_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca [5 x ptr], align 4
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #7
  %7 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 9, ptr noundef null) #7
  br label %47

13:                                               ; preds = %1
  %14 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #7
  %15 = call ptr @of_iomap(ptr noundef %14, i32 noundef 0) #7
  store ptr %15, ptr @clk_mgr_a10_base_addr, align 4
  call void @of_node_put(ptr noundef %14) #7
  %16 = load ptr, ptr @clk_mgr_a10_base_addr, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %13
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/socfpga/clk-pll-a10.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 87, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

19:                                               ; preds = %13
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = getelementptr inbounds %struct.clk_gate, ptr %10, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #7
  %24 = load ptr, ptr %3, align 4
  store ptr %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @clk_pll_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %32, %19
  %28 = phi i32 [ 0, %19 ], [ %33, %32 ]
  %29 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %28) #7
  %30 = getelementptr [5 x ptr], ptr %4, i32 0, i32 %28
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %27

35:                                               ; preds = %32, %27
  %36 = phi i32 [ 5, %32 ], [ %28, %27 ]
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %5, ptr %40, align 8
  %41 = getelementptr inbounds %struct.clk_gate, ptr %10, i32 0, i32 2
  store i8 2, ptr %41, align 8
  %42 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %10) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  call void @kfree(ptr noundef nonnull %10) #7
  br label %47

45:                                               ; preds = %35
  %46 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %10) #7
  br label %47

47:                                               ; preds = %45, %44, %12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
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
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %7 = and i32 %6, 8191
  %8 = lshr i32 %6, 16
  %9 = and i32 %8, 63
  %10 = zext i32 %1 to i64
  %11 = add nuw nsw i32 %7, 1
  %12 = zext i32 %11 to i64
  %13 = mul nuw nsw i64 %12, %10
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp ult i64 %13, 4294967296
  br i1 %15, label %16, label %19, !prof !13

16:                                               ; preds = %2
  %17 = trunc i64 %13 to i32
  %18 = udiv i32 %17, %14
  br label %23

19:                                               ; preds = %2
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %13) #9, !srcloc !14
  %21 = extractvalue { i64, i64 } %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ %18, %16 ], [ %22, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_pll_get_parent(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.clk_gate, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %5 = lshr i32 %4, 8
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 3
  ret i8 %7
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }

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
!10 = !{i64 2150578757, i64 2150579254, i64 2150578794, i64 2150578850, i64 2150578884, i64 2150578908, i64 2150578949, i64 2150578970, i64 2150578998, i64 2150579032}
!11 = !{i64 2989540}
!12 = !{i64 2150570751}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148107645, i64 2148107925, i64 2148108259, i64 2148108593}
!15 = !{i64 2150577483}
