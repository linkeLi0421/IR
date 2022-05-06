; ModuleID = '/llk/IR/drivers/clk/clk-conf.c_pt.bc'
source_filename = "../drivers/clk/clk-conf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_set_defaults:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_set_defaults\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_set_defaults:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_of_clk_set_defaults = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_set_defaults = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_set_defaults = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_set_defaults to i32), ptr @__kstrtab_of_clk_set_defaults, ptr @__kstrtabns_of_clk_set_defaults }, section "___ksymtab_gpl+of_clk_set_defaults", align 4
@.str = private unnamed_addr constant [23 x i8] c"assigned-clock-parents\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\013clk: invalid value of clock-parents property at %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\014clk: couldn't get parent clock %d for %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"assigned-clocks\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\014clk: couldn't get assigned clock %d for %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013clk: failed to reparent %s to %s: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"assigned-clock-rates\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\014clk: couldn't get clock %d for %pOF\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"\013clk: couldn't set %s clk rate to %u (%d), current rate: %lu\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_of_clk_set_defaults], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_set_defaults(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %110, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #5, !annotation !8
  %8 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %9 = icmp eq i32 %8, -22
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #6
  br label %60

12:                                               ; preds = %7
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %55, %12
  %15 = phi i32 [ %56, %55 ], [ 0, %12 ]
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %15, ptr noundef nonnull %5) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = icmp eq i32 %16, -2
  br i1 %19, label %55, label %61

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 4
  %22 = icmp ne ptr %21, %0
  %23 = or i1 %22, %1
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %5) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, inttoptr (i32 -517 to ptr)
  br i1 %28, label %61, label %29

29:                                               ; preds = %27
  %30 = ptrtoint ptr %25 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %15, ptr noundef nonnull %0) #6
  br label %63

32:                                               ; preds = %24
  %33 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %15, ptr noundef nonnull %5) #5
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %5, align 4
  %37 = icmp ne ptr %36, %0
  %38 = or i1 %37, %1
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %5) #5
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = icmp eq ptr %40, inttoptr (i32 -517 to ptr)
  br i1 %43, label %58, label %44

44:                                               ; preds = %42
  %45 = ptrtoint ptr %40 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %15, ptr noundef nonnull %0) #6
  br label %58

47:                                               ; preds = %39
  %48 = call i32 @clk_set_parent(ptr noundef %40, ptr noundef %25) #5
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call ptr @__clk_get_name(ptr noundef %40) #5
  %52 = call ptr @__clk_get_name(ptr noundef %25) #5
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %51, ptr noundef %52, i32 noundef %48) #6
  br label %54

54:                                               ; preds = %50, %47
  call void @clk_put(ptr noundef %40) #5
  call void @clk_put(ptr noundef %25) #5
  br label %55

55:                                               ; preds = %54, %18
  %56 = add nuw nsw i32 %15, 1
  %57 = icmp eq i32 %56, %8
  br i1 %57, label %60, label %14

58:                                               ; preds = %44, %42, %35, %32
  %59 = phi i32 [ %45, %44 ], [ -517, %42 ], [ %33, %32 ], [ 0, %35 ]
  call void @clk_put(ptr noundef %25) #5
  br label %63

60:                                               ; preds = %55, %20, %12, %10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #5
  br label %66

61:                                               ; preds = %27, %18
  %62 = phi i32 [ -517, %27 ], [ %16, %18 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #5
  br label %110

63:                                               ; preds = %58, %29
  %64 = phi i32 [ %59, %58 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #5
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %110, label %66

66:                                               ; preds = %63, %60
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #5, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %67 = call ptr @of_find_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef null) #5
  %68 = call ptr @of_prop_next_u32(ptr noundef %67, ptr noundef null, ptr noundef nonnull %4) #5
  %69 = icmp eq ptr %68, null
  br i1 %69, label %108, label %70

70:                                               ; preds = %104, %66
  %71 = phi i32 [ %105, %104 ], [ 0, %66 ]
  %72 = phi ptr [ %106, %104 ], [ %68, %66 ]
  %73 = load i32, ptr %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %102, label %75

75:                                               ; preds = %70
  %76 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %71, ptr noundef nonnull %3) #5
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = icmp eq i32 %76, -2
  br i1 %79, label %104, label %108

80:                                               ; preds = %75
  %81 = load ptr, ptr %3, align 4
  %82 = icmp ne ptr %81, %0
  %83 = or i1 %82, %1
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3) #5
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = icmp eq ptr %85, inttoptr (i32 -517 to ptr)
  br i1 %88, label %108, label %89

89:                                               ; preds = %87
  %90 = ptrtoint ptr %85 to i32
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %71, ptr noundef nonnull %0) #6
  br label %108

92:                                               ; preds = %84
  %93 = load i32, ptr %4, align 4
  %94 = call i32 @clk_set_rate(ptr noundef %85, i32 noundef %93) #5
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = call ptr @__clk_get_name(ptr noundef %85) #5
  %98 = load i32, ptr %4, align 4
  %99 = call i32 @clk_get_rate(ptr noundef %85) #5
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %97, i32 noundef %98, i32 noundef %94, i32 noundef %99) #6
  br label %101

101:                                              ; preds = %96, %92
  call void @clk_put(ptr noundef %85) #5
  br label %102

102:                                              ; preds = %101, %70
  %103 = add i32 %71, 1
  br label %104

104:                                              ; preds = %102, %78
  %105 = phi i32 [ %71, %78 ], [ %103, %102 ]
  %106 = call ptr @of_prop_next_u32(ptr noundef %67, ptr noundef nonnull %72, ptr noundef nonnull %4) #5
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %70

108:                                              ; preds = %104, %89, %87, %80, %78, %66
  %109 = phi i32 [ %90, %89 ], [ -517, %87 ], [ 0, %66 ], [ 0, %104 ], [ 0, %80 ], [ %76, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #5
  br label %110

110:                                              ; preds = %108, %63, %61, %2
  %111 = phi i32 [ %109, %108 ], [ 0, %2 ], [ %64, %63 ], [ %62, %61 ]
  ret i32 %111
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
