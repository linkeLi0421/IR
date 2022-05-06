; ModuleID = '/llk/IR/lib/sg_pool.c_pt.bc'
source_filename = "../lib/sg_pool.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_free_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_free_table_chained\22\09\09\09\09\09"
module asm "__kstrtabns_sg_free_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sg_alloc_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22sg_alloc_table_chained\22\09\09\09\09\09"
module asm "__kstrtabns_sg_alloc_table_chained:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sg_pool = type { i32, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }

@__kstrtab_sg_free_table_chained = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_free_table_chained = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_free_table_chained = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_free_table_chained to i32), ptr @__kstrtab_sg_free_table_chained, ptr @__kstrtabns_sg_free_table_chained }, section "___ksymtab_gpl+sg_free_table_chained", align 4
@__kstrtab_sg_alloc_table_chained = external dso_local constant [0 x i8], align 1
@__kstrtabns_sg_alloc_table_chained = external dso_local constant [0 x i8], align 1
@__ksymtab_sg_alloc_table_chained = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sg_alloc_table_chained to i32), ptr @__kstrtab_sg_alloc_table_chained, ptr @__kstrtabns_sg_alloc_table_chained }, section "___ksymtab_gpl+sg_alloc_table_chained", align 4
@sg_pools = internal unnamed_addr global [5 x %struct.sg_pool] [%struct.sg_pool { i32 8, ptr @.str, ptr null, ptr null }, %struct.sg_pool { i32 16, ptr @.str.1, ptr null, ptr null }, %struct.sg_pool { i32 32, ptr @.str.2, ptr null, ptr null }, %struct.sg_pool { i32 64, ptr @.str.3, ptr null, ptr null }, %struct.sg_pool { i32 128, ptr @.str.4, ptr null, ptr null }], align 4
@__initcall__kmod_sg_pool__220_191_sg_pool_init6 = internal global ptr @sg_pool_init, section ".initcall6.init", align 4
@__exitcall_sg_pool_exit = internal global ptr @sg_pool_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [9 x i8] c"sgpool-8\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sgpool-16\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sgpool-32\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sgpool-64\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sgpool-128\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\013SG_POOL: can't init sg slab %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\013SG_POOL: can't init sg mempool %s\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__exitcall_sg_pool_exit, ptr @__initcall__kmod_sg_pool__220_191_sg_pool_init6, ptr @__ksymtab_sg_alloc_table_chained, ptr @__ksymtab_sg_free_table_chained, ptr @sg_pool_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sg_free_table_chained(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 1
  %8 = select i1 %7, i32 0, i32 %1
  tail call void @__sg_free_table(ptr noundef %0, i32 noundef 128, i32 noundef %8, ptr noundef nonnull @sg_pool_free, i32 noundef %4) #5
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_free_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sg_pool_free(ptr noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %1 to i16
  %4 = icmp ugt i16 %3, 128
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/sg_pool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 44, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = and i32 %1, 65535
  %8 = icmp ult i16 %3, 9
  %9 = add nsw i32 %7, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #5, !range !10
  %11 = sub nsw i32 29, %10
  %12 = select i1 %8, i32 0, i32 %11
  %13 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %12, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @mempool_free(ptr noundef %0, ptr noundef %14) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sg_alloc_table_chained(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/sg_pool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  %9 = icmp ugt i32 %1, %3
  %10 = or i1 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  store i32 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 1
  store i32 %1, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  tail call void @sg_init_table(ptr noundef %14, i32 noundef %1) #5
  br label %28

15:                                               ; preds = %7
  %16 = icmp ult i32 %3, 2
  %17 = select i1 %16, ptr null, ptr %2
  %18 = select i1 %16, i32 0, i32 %3
  %19 = tail call i32 @__sg_alloc_table(ptr noundef %0, i32 noundef %1, i32 noundef 128, ptr noundef %17, i32 noundef %18, i32 noundef 2592, ptr noundef nonnull @sg_pool_alloc) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21, !prof !12

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sg_table, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, %18
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = icmp eq i32 %18, 1
  %27 = select i1 %26, i32 0, i32 %18
  tail call void @__sg_free_table(ptr noundef %0, i32 noundef 128, i32 noundef %27, ptr noundef nonnull @sg_pool_free, i32 noundef %23) #5
  br label %28

28:                                               ; preds = %25, %21, %15, %11
  %29 = phi i32 [ 0, %11 ], [ 0, %15 ], [ %19, %21 ], [ %19, %25 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sg_alloc_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sg_pool_alloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i16
  %4 = icmp ugt i16 %3, 128
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/sg_pool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 44, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

6:                                                ; preds = %2
  %7 = and i32 %0, 65535
  %8 = icmp ult i16 %3, 9
  %9 = add nsw i32 %7, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #5, !range !10
  %11 = sub nsw i32 29, %10
  %12 = select i1 %8, i32 0, i32 %11
  %13 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %12, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call noalias ptr @mempool_alloc(ptr noundef %14, i32 noundef %1) #5
  ret ptr %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sg_pool_exit() #2 section ".exit.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %1 ]
  %3 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %2, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @mempool_destroy(ptr noundef %4) #5
  %5 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %2, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #5
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %1

9:                                                ; preds = %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sg_pool_init() #2 section ".init.text" {
  br label %4

1:                                                ; preds = %14
  %2 = add nuw nsw i32 %5, 1
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %30, label %4

4:                                                ; preds = %1, %0
  %5 = phi i32 [ 0, %0 ], [ %2, %1 ]
  %6 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 20
  %9 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %5, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @kmem_cache_create(ptr noundef %10, i32 noundef %8, i32 noundef 0, i32 noundef 8192, ptr noundef null) #5
  %12 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %5, i32 2
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %11) #5
  %16 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %5, i32 3
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %1

18:                                               ; preds = %14, %4
  %19 = phi ptr [ @.str.5, %4 ], [ @.str.6, %14 ]
  %20 = load ptr, ptr %9, align 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %19, ptr noundef %20) #6
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ 0, %18 ], [ %28, %22 ]
  %24 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %23, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void @mempool_destroy(ptr noundef %25) #5
  %26 = getelementptr %struct.sg_pool, ptr @sg_pools, i32 %23, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @kmem_cache_destroy(ptr noundef %27) #5
  %28 = add nuw nsw i32 %23, 1
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %1
  %31 = phi i32 [ -12, %22 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152338369, i64 2152338846, i64 2152338406, i64 2152338462, i64 2152338496, i64 2152338520, i64 2152338561, i64 2152338582, i64 2152338610, i64 2152338644}
!10 = !{i32 0, i32 33}
!11 = !{i64 2152344776, i64 2152345254, i64 2152344813, i64 2152344869, i64 2152344903, i64 2152344927, i64 2152344968, i64 2152344989, i64 2152345017, i64 2152345051}
!12 = !{!"branch_weights", i32 2000, i32 1}
