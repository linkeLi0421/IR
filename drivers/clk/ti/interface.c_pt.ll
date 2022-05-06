; ModuleID = '/llk/IR/drivers/clk/ti/interface.c_pt.bc'
source_filename = "../drivers/clk/ti/interface.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }

@__of_table_ti_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_no_wait_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-no-wait-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_no_wait_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_hsotgusb_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-hsotgusb-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_hsotgusb_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_dss_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dss-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_dss_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_ssi_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-ssi-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_ssi_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_am35xx_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am35xx-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am35xx_interface_clk_setup }, section "__clk_of_table", align 4
@clkhwops_iclk_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@.str = private unnamed_addr constant [13 x i8] c"ti,bit-shift\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: %pOFn must have a parent\0A\00", align 1
@__func__._of_ti_interface_clk_setup = private unnamed_addr constant [27 x i8] c"_of_ti_interface_clk_setup\00", align 1
@ti_interface_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_dflt_clk_enable, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clkhwops_iclk = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_omap3430es2_iclk_hsotgusb_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_omap3430es2_iclk_dss_usbhost_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_omap3430es2_iclk_ssi_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_am35xx_ipss_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__of_table_ti_am35xx_interface_clk, ptr @__of_table_ti_dss_interface_clk, ptr @__of_table_ti_hsotgusb_interface_clk, ptr @__of_table_ti_interface_clk, ptr @__of_table_ti_no_wait_interface_clk, ptr @__of_table_ti_ssi_interface_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_interface_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_iclk_wait) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_no_wait_interface_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_iclk) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_hsotgusb_interface_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_omap3430es2_iclk_hsotgusb_wait) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_dss_interface_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_omap3430es2_iclk_dss_usbhost_wait) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_ssi_interface_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_omap3430es2_iclk_ssi_wait) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am35xx_interface_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_am35xx_ipss_wait) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_of_ti_interface_clk_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca %struct.clk_omap_reg, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #7
  %11 = icmp sgt i32 %10, -1
  %12 = load i32, ptr %6, align 4
  %13 = trunc i32 %12 to i8
  %14 = select i1 %11, i8 %13, i8 0
  %15 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._of_ti_interface_clk_setup, ptr noundef %0) #8
  br label %41

19:                                               ; preds = %9
  %20 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store ptr %15, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #7
  %21 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %21, i8 0, i32 12, i1 false) #7
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 76) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %41

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.clk_hw, ptr %23, i32 0, i32 2
  store ptr %4, ptr %27, align 8
  %28 = getelementptr inbounds %struct.clk_hw_omap, ptr %23, i32 0, i32 11
  store ptr %1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.clk_hw_omap, ptr %23, i32 0, i32 4
  %30 = load i64, ptr %5, align 8
  store i64 %30, ptr %29, align 4
  %31 = getelementptr inbounds %struct.clk_hw_omap, ptr %23, i32 0, i32 5
  store i8 %14, ptr %31, align 4
  store ptr %20, ptr %4, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @ti_interface_clk_ops, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %3, ptr %35, align 4
  %36 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %23, ptr noundef %20) #7
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  call void @kfree(ptr noundef nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %41

39:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %40 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %36) #7
  br label %41

41:                                               ; preds = %39, %38, %25, %17, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_dflt_clk_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_init_clk_clkdm(ptr noundef) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
