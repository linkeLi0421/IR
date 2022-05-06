; ModuleID = '/llk/IR/fs/binfmt_script.c_pt.bc'
source_filename = "../fs/binfmt_script.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }

@script_format = internal global %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_script, ptr null, ptr null, i32 0 }, align 4
@__initcall__kmod_binfmt_script__194_156_init_script_binfmt1 = internal global ptr @init_script_binfmt, section ".initcall1.init", align 4
@__exitcall_exit_script_binfmt = internal global ptr @exit_script_binfmt, section ".exitcall.exit", align 4
@__UNIQUE_ID_file195 = internal constant [36 x i8] c"binfmt_script.file=fs/binfmt_script\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [26 x i8] c"binfmt_script.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__exitcall_exit_script_binfmt, ptr @__initcall__kmod_binfmt_script__194_156_init_script_binfmt1, ptr @exit_script_binfmt], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_script_binfmt() #0 section ".exit.text" {
  tail call void @unregister_binfmt(ptr noundef nonnull @script_format) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_script_binfmt() #0 section ".init.text" {
  tail call void @__register_binfmt(ptr noundef nonnull @script_format, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @load_script(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 35
  br i1 %4, label %5, label %121

5:                                                ; preds = %1
  %6 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 33
  br i1 %8, label %9, label %121

9:                                                ; preds = %5
  %10 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 255
  %11 = tail call ptr @strnchr(ptr noundef %2, i32 noundef 256, i32 noundef 10) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 2
  %15 = icmp ugt ptr %14, %10
  br i1 %15, label %121, label %16

16:                                               ; preds = %19, %13
  %17 = phi ptr [ %20, %19 ], [ %14, %13 ]
  %18 = load i8, ptr %17, align 1
  switch i8 %18, label %22 [
    i8 32, label %19
    i8 9, label %19
  ]

19:                                               ; preds = %16, %16
  %20 = getelementptr i8, ptr %17, i32 1
  %21 = icmp ugt ptr %20, %10
  br i1 %21, label %121, label %16

22:                                               ; preds = %16
  %23 = icmp eq ptr %17, null
  %24 = icmp ugt ptr %17, %10
  %25 = or i1 %23, %24
  br i1 %25, label %121, label %26

26:                                               ; preds = %32, %22
  %27 = phi i8 [ %33, %32 ], [ %18, %22 ]
  %28 = phi ptr [ %30, %32 ], [ %17, %22 ]
  switch i8 %27, label %29 [
    i8 32, label %34
    i8 9, label %34
    i8 0, label %34
  ]

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %28, i32 1
  %31 = icmp ugt ptr %30, %10
  br i1 %31, label %121, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %30, align 1
  br label %26

34:                                               ; preds = %26, %26, %26
  %35 = icmp eq ptr %28, null
  br i1 %35, label %121, label %36

36:                                               ; preds = %34, %9
  %37 = phi ptr [ %10, %34 ], [ %11, %9 ]
  br label %38

38:                                               ; preds = %42, %36
  %39 = phi ptr [ %37, %36 ], [ %40, %42 ]
  %40 = getelementptr i8, ptr %39, i32 -1
  %41 = load i8, ptr %40, align 1
  switch i8 %41, label %43 [
    i8 32, label %42
    i8 9, label %42
  ]

42:                                               ; preds = %38, %38
  br label %38

43:                                               ; preds = %38
  %44 = getelementptr %struct.linux_binprm, ptr %0, i32 0, i32 22, i32 2
  %45 = icmp ugt ptr %44, %39
  br i1 %45, label %121, label %46

46:                                               ; preds = %49, %43
  %47 = phi ptr [ %50, %49 ], [ %44, %43 ]
  %48 = load i8, ptr %47, align 1
  switch i8 %48, label %52 [
    i8 32, label %49
    i8 9, label %49
  ]

49:                                               ; preds = %46, %46
  %50 = getelementptr i8, ptr %47, i32 1
  %51 = icmp ugt ptr %50, %39
  br i1 %51, label %121, label %46

52:                                               ; preds = %46
  %53 = icmp eq ptr %47, null
  %54 = icmp eq ptr %47, %39
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %121, label %56

56:                                               ; preds = %52
  %57 = icmp ugt ptr %47, %39
  br i1 %57, label %80, label %58

58:                                               ; preds = %64, %56
  %59 = phi i8 [ %65, %64 ], [ %48, %56 ]
  %60 = phi ptr [ %62, %64 ], [ %47, %56 ]
  switch i8 %59, label %61 [
    i8 32, label %66
    i8 9, label %66
    i8 0, label %66
  ]

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %60, i32 1
  %63 = icmp ugt ptr %62, %39
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = load i8, ptr %62, align 1
  br label %58

66:                                               ; preds = %58, %58, %58
  %67 = icmp eq ptr %60, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %66
  %69 = icmp eq i8 %59, 0
  %70 = icmp ugt ptr %60, %39
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %80, label %74

72:                                               ; preds = %77
  %73 = load i8, ptr %78, align 1
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i8 [ %73, %72 ], [ %59, %68 ]
  %76 = phi ptr [ %78, %72 ], [ %60, %68 ]
  switch i8 %75, label %80 [
    i8 32, label %77
    i8 9, label %77
  ]

77:                                               ; preds = %74, %74
  %78 = getelementptr i8, ptr %76, i32 1
  %79 = icmp ugt ptr %78, %39
  br i1 %79, label %80, label %72

80:                                               ; preds = %77, %74, %68, %66, %61, %56
  %81 = phi ptr [ %60, %68 ], [ null, %66 ], [ null, %56 ], [ %60, %74 ], [ %60, %77 ], [ null, %61 ]
  %82 = phi ptr [ null, %68 ], [ null, %66 ], [ null, %56 ], [ null, %77 ], [ %76, %74 ], [ null, %61 ]
  %83 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 17
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %80
  %88 = tail call i32 @remove_arg_zero(ptr noundef %0) #3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @copy_string_kernel(ptr noundef %92, ptr noundef %0) #3
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %121, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 12
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 4
  store i8 0, ptr %39, align 1
  %99 = icmp eq ptr %82, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  store i8 0, ptr %81, align 1
  %101 = tail call i32 @copy_string_kernel(ptr noundef nonnull %82, ptr noundef %0) #3
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %96, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %96, align 4
  br label %106

106:                                              ; preds = %103, %95
  %107 = tail call i32 @copy_string_kernel(ptr noundef nonnull %47, ptr noundef %0) #3
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, ptr %96, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %96, align 4
  %112 = tail call i32 @bprm_change_interp(ptr noundef nonnull %47, ptr noundef %0) #3
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %109
  %115 = tail call ptr @open_exec(ptr noundef nonnull %47) #3
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = ptrtoint ptr %115 to i32
  br label %121

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.linux_binprm, ptr %0, i32 0, i32 7
  store ptr %115, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %117, %109, %106, %100, %90, %87, %80, %52, %49, %43, %34, %29, %22, %19, %13, %5, %1
  %122 = phi i32 [ %118, %117 ], [ 0, %119 ], [ -8, %5 ], [ -8, %1 ], [ -8, %22 ], [ -8, %34 ], [ -8, %52 ], [ -2, %80 ], [ %88, %87 ], [ %93, %90 ], [ %101, %100 ], [ %107, %106 ], [ %112, %109 ], [ -8, %13 ], [ -8, %43 ], [ -8, %49 ], [ -8, %29 ], [ -8, %19 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_arg_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_string_kernel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bprm_change_interp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
