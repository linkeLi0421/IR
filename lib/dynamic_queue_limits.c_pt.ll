; ModuleID = '/llk/IR/lib/dynamic_queue_limits.c_pt.bc'
source_filename = "../lib/dynamic_queue_limits.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dql_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22dql_completed\22\09\09\09\09\09"
module asm "__kstrtabns_dql_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dql_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22dql_reset\22\09\09\09\09\09"
module asm "__kstrtabns_dql_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dql_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dql_init\22\09\09\09\09\09"
module asm "__kstrtabns_dql_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_dql_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_dql_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_dql_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dql_completed to i32), ptr @__kstrtab_dql_completed, ptr @__kstrtabns_dql_completed }, section "___ksymtab+dql_completed", align 4
@__kstrtab_dql_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_dql_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_dql_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dql_reset to i32), ptr @__kstrtab_dql_reset, ptr @__kstrtabns_dql_reset }, section "___ksymtab+dql_reset", align 4
@__kstrtab_dql_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dql_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dql_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dql_init to i32), ptr @__kstrtab_dql_init, ptr @__kstrtabns_dql_init }, section "___ksymtab+dql_init", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_dql_completed, ptr @__ksymtab_dql_init, ptr @__ksymtab_dql_reset], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dql_completed(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr %0, align 64
  %4 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/dynamic_queue_limits.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 27, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

9:                                                ; preds = %2
  %10 = add i32 %5, %1
  %11 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 64
  %13 = sub i32 %6, %12
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %10, %16
  %18 = icmp sgt i32 %17, -1
  %19 = icmp slt i32 %13, 1
  %20 = icmp ne i32 %3, %10
  %21 = select i1 %19, i1 true, i1 %20
  %22 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  br i1 %21, label %24, label %28

24:                                               ; preds = %9
  %25 = icmp eq i32 %23, 0
  %26 = xor i1 %18, true
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %9
  %29 = tail call i32 @llvm.smax.i32(i32 %17, i32 0)
  %30 = add i32 %29, %12
  %31 = add i32 %30, %23
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 10
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 9
  br label %71

35:                                               ; preds = %24
  %36 = icmp eq i32 %16, %5
  %37 = xor i1 %20, true
  %38 = select i1 %37, i1 true, i1 %36
  %39 = select i1 %38, i1 true, i1 %18
  br i1 %39, label %74, label %40

40:                                               ; preds = %35
  %41 = mul i32 %1, -2
  %42 = add i32 %12, %41
  %43 = add i32 %42, %23
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  br i1 %25, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 8
  %47 = load i32, ptr %46, align 16
  %48 = sub i32 %47, %23
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ 0, %40 ], [ %49, %45 ]
  %52 = tail call i32 @llvm.umax.i32(i32 %44, i32 %51)
  %53 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 %52, ptr %53, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = phi i32 [ %52, %56 ], [ %54, %50 ]
  %59 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 10
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 13
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = load volatile i32, ptr @jiffies, align 64
  %65 = sub i32 %63, %64
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = sub i32 %12, %58
  %69 = tail call i32 @llvm.smax.i32(i32 %68, i32 0)
  %70 = load volatile i32, ptr @jiffies, align 64
  store i32 %70, ptr %59, align 8
  br label %71

71:                                               ; preds = %67, %28
  %72 = phi ptr [ %53, %67 ], [ %34, %28 ]
  %73 = phi i32 [ %69, %67 ], [ %31, %28 ]
  store i32 -1, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %57, %35
  %75 = phi i32 [ %12, %35 ], [ %12, %57 ], [ %73, %71 ]
  %76 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 12
  %77 = load i32, ptr %76, align 32
  %78 = tail call i32 @llvm.umax.i32(i32 %75, i32 %77)
  %79 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 11
  %80 = load i32, ptr %79, align 4
  %81 = tail call i32 @llvm.umin.i32(i32 %78, i32 %80)
  %82 = icmp eq i32 %81, %12
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i32 %81, ptr %11, align 64
  br label %84

84:                                               ; preds = %83, %74
  %85 = phi i32 [ 0, %83 ], [ %14, %74 ]
  %86 = add i32 %81, %10
  %87 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 1
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 6
  store i32 %85, ptr %88, align 8
  %89 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 8
  store i32 %90, ptr %91, align 16
  store i32 %10, ptr %4, align 4
  store i32 %3, ptr %15, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dql_reset(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 4
  store i32 0, ptr %0, align 64
  %3 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 2
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 64 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  store i32 -1, ptr %4, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 10
  store i32 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dql_init(ptr nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 11
  store i32 1879048192, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 12
  store i32 0, ptr %4, align 32
  %5 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 13
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 4
  store i32 0, ptr %0, align 64
  %7 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 2
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef align 64 dereferenceable(20) %6, i8 0, i64 20, i1 false) #5
  store i32 -1, ptr %8, align 4
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 10
  store i32 %9, ptr %10, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148523458, i64 2148523948, i64 2148523495, i64 2148523551, i64 2148523585, i64 2148523609, i64 2148523650, i64 2148523671, i64 2148523699, i64 2148523733}
