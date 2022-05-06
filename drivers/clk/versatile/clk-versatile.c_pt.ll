; ModuleID = '/llk/IR/drivers/clk/versatile/clk-versatile.c_pt.bc'
source_filename = "../drivers/clk/versatile/clk-versatile.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_icst_desc = type { ptr, i32, i32 }
%struct.icst_params = type { i32, i32, i32, i16, i16, i8, i8, ptr, ptr }

@__of_table_integrator_cm_auxosc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,integrator-cm-auxosc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_integrator_cm_osc_setup }, section "__clk_of_table", align 4
@__of_table_versatile_cm_auxosc_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-cm-auxosc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_versatile_cm_osc_setup }, section "__clk_of_table", align 4
@cm_auxosc_desc = internal constant %struct.clk_icst_desc { ptr @cp_auxosc_params, i32 28, i32 20 }, section ".init.rodata", align 4
@cm_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [34 x i8] c"\013no parent on core module clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013could not remap core module base\0A\00", align 1
@cp_auxosc_params = internal constant %struct.icst_params { i32 0, i32 320000000, i32 10000000, i16 8, i16 263, i8 3, i8 65, ptr @icst525_s2div, ptr @icst525_idx2s }, align 4
@icst525_s2div = external dso_local constant [0 x i8], align 1
@icst525_idx2s = external dso_local constant [0 x i8], align 1
@versatile_auxosc_desc = internal constant %struct.clk_icst_desc { ptr @versatile_auxosc_params, i32 28, i32 32 }, section ".init.rodata", align 4
@versatile_auxosc_params = internal constant %struct.icst_params { i32 0, i32 200000000, i32 6000000, i16 12, i16 519, i8 3, i8 -127, ptr @icst307_s2div, ptr @icst307_idx2s }, align 4
@icst307_s2div = external dso_local constant [0 x i8], align 1
@icst307_idx2s = external dso_local constant [0 x i8], align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_integrator_cm_auxosc_clk, ptr @__of_table_versatile_cm_auxosc_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_integrator_cm_osc_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @cm_osc_setup(ptr noundef %0, ptr noundef nonnull @cm_auxosc_desc) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_versatile_cm_osc_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @cm_osc_setup(ptr noundef %0, ptr noundef nonnull @versatile_auxosc_desc) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cm_osc_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr @cm_base, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call ptr @of_get_parent(ptr noundef %0) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %24

11:                                               ; preds = %6
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #4
  store ptr %12, ptr @cm_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %7) #4
  %13 = load ptr, ptr @cm_base, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %24

17:                                               ; preds = %11, %2
  %18 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #4
  %19 = load ptr, ptr @cm_base, align 4
  %20 = tail call ptr @icst_clk_register(ptr noundef null, ptr noundef %1, ptr noundef %3, ptr noundef %18, ptr noundef %19) #4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %20) #4
  br label %24

24:                                               ; preds = %22, %17, %15, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icst_clk_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold }
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
