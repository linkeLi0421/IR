; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-a10-pll2.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-a10-pll2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_multiplier = type { %struct.clk_hw, ptr, i8, i8, i8, ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun4i_a10_pll2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_pll2_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_pll2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-pll2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_pll2_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [12 x i8] c"pll2-prediv\00", align 1
@sun4i_a10_pll2_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\013Couldn't register the prediv clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pll2-base\00", align 1
@clk_multiplier_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"\013Couldn't register the base multiplier clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"drivers/clk/sunxi/clk-a10-pll2.c\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_sun4i_a10_pll2, ptr @__of_table_sun5i_a13_pll2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_a10_pll2_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun4i_pll2_setup(ptr noundef %0, i32 noundef 0) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_a13_pll2_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sun4i_pll2_setup(ptr noundef %0, i32 noundef 1) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sun4i_pll2_setup(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ @.str.6, %2 ]
  %12 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %11) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %95, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 8) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %94, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 16) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %93, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #6
  store ptr %23, ptr %4, align 4
  %24 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str, ptr noundef %23, i32 noundef 0, ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @sun4i_a10_pll2_lock) #6
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %92

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 24) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %91, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.clk_gate, ptr %30, i32 0, i32 1
  store ptr %12, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_gate, ptr %30, i32 0, i32 2
  store i8 31, ptr %34, align 8
  %35 = getelementptr inbounds %struct.clk_gate, ptr %30, i32 0, i32 4
  store ptr @sun4i_a10_pll2_lock, ptr %35, align 4
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 24) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %90, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.clk_multiplier, ptr %37, i32 0, i32 1
  store ptr %12, ptr %40, align 4
  %41 = getelementptr inbounds %struct.clk_multiplier, ptr %37, i32 0, i32 2
  store i8 8, ptr %41, align 8
  %42 = getelementptr inbounds %struct.clk_multiplier, ptr %37, i32 0, i32 3
  store i8 7, ptr %42, align 1
  %43 = getelementptr inbounds %struct.clk_multiplier, ptr %37, i32 0, i32 4
  store i8 3, ptr %43, align 2
  %44 = getelementptr inbounds %struct.clk_multiplier, ptr %37, i32 0, i32 5
  store ptr @sun4i_a10_pll2_lock, ptr %44, align 4
  %45 = tail call ptr @__clk_get_name(ptr noundef %24) #6
  store ptr %45, ptr %4, align 4
  %46 = call ptr @clk_register_composite(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %37, ptr noundef nonnull @clk_multiplier_ops, ptr noundef nonnull %30, ptr noundef nonnull @clk_gate_ops, i32 noundef 4) #6
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  call void @kfree(ptr noundef nonnull %37) #6
  br label %90

50:                                               ; preds = %39
  %51 = call ptr @__clk_get_name(ptr noundef %46) #6
  store ptr %51, ptr %4, align 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %53 = and i32 %52, -1006632961
  %54 = mul i32 %1, -67108864
  %55 = add i32 %54, 268435456
  %56 = or i32 %53, %55
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %56) #6, !srcloc !12
  %57 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %58 = load ptr, ptr %3, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %58, ptr noundef %59, i32 noundef 4, i32 noundef 1, i32 noundef 4) #6
  store ptr %60, ptr %20, align 8
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %63, !prof !13

62:                                               ; preds = %50
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 127, i32 noundef 9, ptr noundef null) #6
  br label %63

63:                                               ; preds = %62, %50
  %64 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1) #6
  %65 = load ptr, ptr %3, align 4
  %66 = load ptr, ptr %4, align 4
  %67 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %65, ptr noundef %66, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %68 = getelementptr ptr, ptr %20, i32 1
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %71, !prof !13

70:                                               ; preds = %63
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 141, i32 noundef 9, ptr noundef null) #6
  br label %71

71:                                               ; preds = %70, %63
  %72 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2) #6
  %73 = load ptr, ptr %3, align 4
  %74 = load ptr, ptr %4, align 4
  %75 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %73, ptr noundef %74, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %76 = getelementptr ptr, ptr %20, i32 2
  store ptr %75, ptr %76, align 8
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %79, !prof !13

78:                                               ; preds = %71
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 150, i32 noundef 9, ptr noundef null) #6
  br label %79

79:                                               ; preds = %78, %71
  %80 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 3) #6
  %81 = load ptr, ptr %3, align 4
  %82 = load ptr, ptr %4, align 4
  %83 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %81, ptr noundef %82, i32 noundef 4, i32 noundef 2, i32 noundef 1) #6
  %84 = getelementptr ptr, ptr %20, i32 3
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %87, !prof !13

86:                                               ; preds = %79
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 159, i32 noundef 9, ptr noundef null) #6
  br label %87

87:                                               ; preds = %86, %79
  store ptr %20, ptr %16, align 8
  %88 = getelementptr inbounds %struct.clk_onecell_data, ptr %16, i32 0, i32 1
  store i32 4, ptr %88, align 4
  %89 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %16) #6
  br label %95

90:                                               ; preds = %48, %32
  call void @kfree(ptr noundef nonnull %30) #6
  br label %91

91:                                               ; preds = %90, %28
  call void @clk_unregister_divider(ptr noundef %24) #6
  br label %92

92:                                               ; preds = %91, %26
  call void @kfree(ptr noundef nonnull %20) #6
  br label %93

93:                                               ; preds = %92, %18
  call void @kfree(ptr noundef nonnull %16) #6
  br label %94

94:                                               ; preds = %93, %14
  call void @iounmap(ptr noundef %12) #6
  br label %95

95:                                               ; preds = %94, %87, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2845873}
!10 = !{i64 2150574520}
!11 = !{i64 2150575435}
!12 = !{i64 2845455}
!13 = !{!"branch_weights", i32 1, i32 2000}
