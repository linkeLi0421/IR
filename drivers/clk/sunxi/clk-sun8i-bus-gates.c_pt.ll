; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sun8i-bus-gates.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun8i-bus-gates.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun8i_h3_bus_gates = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-bus-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_bus_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a83t_bus_gates = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-bus-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_bus_gates_init }, section "__clk_of_table", align 4
@sun8i_h3_bus_gates_init.names = internal unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@.str = private unnamed_addr constant [5 x i8] c"ahb1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ahb2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"apb1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"apb2\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"clock-indices\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"drivers/clk/sunxi/clk-sun8i-bus-gates.c\00", align 1
@gates_lock = internal global %struct.spinlock zeroinitializer, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_sun8i_a83t_bus_gates, ptr @__of_table_sun8i_h3_bus_gates], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_h3_bus_gates_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [4 x ptr], align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ @.str.8, %1 ]
  %13 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %12) #7
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %96, label %15

15:                                               ; preds = %21, %11
  %16 = phi i32 [ %24, %21 ], [ 0, %11 ]
  %17 = getelementptr [4 x ptr], ptr @sun8i_h3_bus_gates_init.names, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %18) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %96, label %21

21:                                               ; preds = %15
  %22 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %19) #7
  %23 = getelementptr [4 x ptr], ptr %2, i32 0, i32 %16
  store ptr %22, ptr %23, align 4
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %15

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 8) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %89, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @of_property_count_elems_of_size(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef 4) #7
  store i32 %31, ptr %5, align 4
  %32 = add i32 %31, -1
  %33 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %32, ptr noundef nonnull %5) #7
  %34 = load i32, ptr %5, align 4
  %35 = add i32 %34, 1
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 4) #7
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %30
  store ptr null, ptr %28, align 8
  br label %88

39:                                               ; preds = %30
  %40 = extractvalue { i32, i1 } %36, 0
  %41 = call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #9
  store ptr %41, ptr %28, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %88, label %43

43:                                               ; preds = %39
  %44 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %45 = call ptr @of_prop_next_u32(ptr noundef %44, ptr noundef null, ptr noundef nonnull %6) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %80, %43
  %48 = phi ptr [ %74, %80 ], [ %41, %43 ]
  %49 = phi i32 [ %73, %80 ], [ 0, %43 ]
  %50 = phi ptr [ %81, %80 ], [ %45, %43 ]
  %51 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %49) #7
  %52 = load i32, ptr %6, align 4
  switch i32 %52, label %53 [
    i32 31, label %59
    i32 30, label %59
    i32 29, label %59
    i32 17, label %59
  ]

53:                                               ; preds = %47
  %54 = add i32 %52, -128
  %55 = icmp ult i32 %54, -64
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = icmp ult i32 %52, 96
  %58 = select i1 %57, i32 2, i32 3
  br label %59

59:                                               ; preds = %56, %53, %47, %47, %47, %47
  %60 = phi i32 [ 1, %47 ], [ 0, %53 ], [ 1, %47 ], [ 1, %47 ], [ 1, %47 ], [ %58, %56 ]
  %61 = sdiv i32 %52, 32
  %62 = shl nsw i32 %61, 2
  %63 = getelementptr i8, ptr %13, i32 %62
  %64 = mul i32 %61, 32
  %65 = sub i32 %52, %64
  %66 = trunc i32 %65 to i8
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr [4 x ptr], ptr %2, i32 0, i32 %60
  %69 = load ptr, ptr %68, align 4
  %70 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %67, ptr noundef %69, i32 noundef 0, ptr noundef %63, i8 noundef zeroext %66, i8 noundef zeroext 0, ptr noundef nonnull @gates_lock) #7
  %71 = load i32, ptr %6, align 4
  %72 = getelementptr ptr, ptr %48, i32 %71
  store ptr %70, ptr %72, align 4
  %73 = add i32 %49, 1
  %74 = load ptr, ptr %28, align 8
  %75 = load i32, ptr %6, align 4
  %76 = getelementptr ptr, ptr %74, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 88, i32 noundef 9, ptr noundef null) #7
  br label %80

80:                                               ; preds = %79, %59
  %81 = call ptr @of_prop_next_u32(ptr noundef %44, ptr noundef nonnull %50, ptr noundef nonnull %6) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %47

83:                                               ; preds = %80, %43
  %84 = load i32, ptr %5, align 4
  %85 = add i32 %84, 1
  %86 = getelementptr inbounds %struct.clk_onecell_data, ptr %28, i32 0, i32 1
  store i32 %85, ptr %86, align 4
  %87 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %28) #7
  br label %96

88:                                               ; preds = %39, %38
  call void @kfree(ptr noundef nonnull %28) #7
  br label %89

89:                                               ; preds = %88, %26
  call void @iounmap(ptr noundef %13) #7
  %90 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #7
  %91 = load i32, ptr %4, align 4
  %92 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = sub i32 1, %91
  %95 = add i32 %94, %93
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %91, i32 noundef %95) #7
  br label %96

96:                                               ; preds = %89, %83, %15, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
