; ModuleID = '/llk/IR/drivers/clk/ti/gate.c_pt.bc'
source_filename = "../drivers/clk/ti/gate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_omap_divider = type { %struct.clk_hw, %struct.clk_omap_reg, i8, i8, i8, i16, i16, i16, ptr, i32 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@omap_gate_clk_ops = dso_local constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_dflt_clk_enable, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr @clk_gate_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, align 4
@__of_table_ti_composite_no_wait_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-no-wait-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_no_wait_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_interface_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-interface-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_interface_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_composite_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,composite-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_composite_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_clkdm_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clkdm-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_clkdm_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_hsdiv_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,hsdiv-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_hsdiv_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_wait_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,wait-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_wait_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_am35xx_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am35xx-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am35xx_gate_clk_setup }, section "__clk_of_table", align 4
@__of_table_ti_dss_gate_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dss-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_dss_gate_clk_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [13 x i8] c"ti,bit-shift\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@clkhwops_iclk_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@omap_gate_clkdm_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap2_clkops_enable_clkdm, ptr @omap2_clkops_disable_clkdm, ptr null, ptr null, ptr null, ptr @clk_gate_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: %pOFn must have 1 parent\0A\00", align 1
@__func__._of_ti_gate_clk_setup = private unnamed_addr constant [22 x i8] c"_of_ti_gate_clk_setup\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ti,set-rate-parent\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ti,set-bit-to-disable\00", align 1
@omap_gate_clk_hsdiv_restore_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap36xx_gate_clk_enable_with_hsdiv_restore, ptr @omap2_dflt_clk_disable, ptr @omap2_dflt_clk_is_enabled, ptr null, ptr null, ptr @clk_gate_restore_context, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_init_clk_clkdm, ptr null, ptr null }, align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@clkhwops_am35xx_ipss_module_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@clkhwops_omap3430es2_dss_usbhost_wait = external dso_local constant %struct.clk_hw_omap_ops, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__of_table_ti_am35xx_gate_clk, ptr @__of_table_ti_clkdm_gate_clk, ptr @__of_table_ti_composite_gate_clk, ptr @__of_table_ti_composite_interface_clk, ptr @__of_table_ti_composite_no_wait_gate_clk, ptr @__of_table_ti_dss_gate_clk, ptr @__of_table_ti_gate_clk, ptr @__of_table_ti_hsdiv_gate_clk, ptr @__of_table_ti_wait_gate_clk], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_enable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_dflt_clk_disable(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dflt_clk_is_enabled(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_gate_restore_context(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_init_clk_clkdm(ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_composite_no_wait_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %0, ptr noundef null) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_composite_interface_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_iclk_wait) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_composite_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @clkhwops_wait) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_clkdm_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @omap_gate_clkdm_clk_ops, ptr noundef null) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_hsdiv_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @omap_gate_clk_hsdiv_restore_ops, ptr noundef nonnull @clkhwops_wait) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef null) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_wait_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef nonnull @clkhwops_wait) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am35xx_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef nonnull @clkhwops_am35xx_ipss_module_wait) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_dss_gate_clk_setup(ptr noundef %0) #1 section ".init.text" {
  tail call fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef nonnull @omap_gate_clk_ops, ptr noundef nonnull @clkhwops_omap3430es2_dss_usbhost_wait) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_of_ti_composite_gate_clk_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #1 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 76) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_hw_omap, ptr %5, i32 0, i32 4
  %9 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %13 = load i32, ptr %3, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.clk_hw_omap, ptr %5, i32 0, i32 5
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %5, i32 0, i32 11
  store ptr %1, ptr %16, align 8
  %17 = call i32 @ti_clk_add_component(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11, %7
  call void @kfree(ptr noundef nonnull %5) #8
  br label %20

20:                                               ; preds = %19, %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_of_ti_gate_clk_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  %6 = alloca %struct.clk_omap_reg, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  store i64 0, ptr %6, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp eq ptr %1, @omap_gate_clkdm_clk_ops
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #8
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr %7, align 4
  %17 = trunc i32 %16 to i8
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i8 [ 0, %12 ], [ %17, %15 ], [ 0, %3 ]
  %20 = call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._of_ti_gate_clk_setup, ptr noundef %0) #10
  br label %54

24:                                               ; preds = %18
  %25 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %26 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %27 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %28 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store ptr %25, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #8
  %29 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %29, i8 0, i32 12, i1 false) #8
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %31 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 76) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %54

34:                                               ; preds = %24
  %35 = icmp eq ptr %27, null
  %36 = icmp eq ptr %26, null
  %37 = select i1 %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.clk_hw, ptr %31, i32 0, i32 2
  store ptr %5, ptr %38, align 8
  store ptr %28, ptr %5, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.clk_hw_omap, ptr %31, i32 0, i32 4
  %41 = load i64, ptr %6, align 8
  store i64 %41, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_hw_omap, ptr %31, i32 0, i32 5
  store i8 %19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.clk_hw_omap, ptr %31, i32 0, i32 11
  store ptr %2, ptr %43, align 8
  %44 = select i1 %35, i32 0, i32 16
  %45 = getelementptr inbounds %struct.clk_hw_omap, ptr %31, i32 0, i32 6
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 %37, ptr %48, align 4
  %49 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %31, ptr noundef %28) #8
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  call void @kfree(ptr noundef nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %54

52:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %53 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %49) #8
  br label %54

54:                                               ; preds = %52, %51, %33, %22, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clkops_enable_clkdm(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clkops_disable_clkdm(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap36xx_gate_clk_enable_with_hsdiv_restore(ptr noundef %0) #6 {
  %2 = tail call i32 @omap2_dflt_clk_enable(ptr noundef %0) #8
  %3 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #8
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %3) #8
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load ptr, ptr @ti_clk_ll_ops, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 1
  %10 = tail call i32 %8(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.clk_omap_divider, ptr %4, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 1, %13
  %15 = xor i32 %14, %10
  %16 = load ptr, ptr @ti_clk_ll_ops, align 4
  %17 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(i32 noundef %15, ptr noundef %9) #8
  %19 = load ptr, ptr @ti_clk_ll_ops, align 4
  %20 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(i32 noundef %10, ptr noundef %9) #8
  br label %22

22:                                               ; preds = %6, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
