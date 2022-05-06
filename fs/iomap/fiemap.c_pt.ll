; ModuleID = '/llk/IR/fs/iomap/fiemap.c_pt.bc'
source_filename = "../fs/iomap/fiemap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_fiemap:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_fiemap\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_fiemap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_bmap\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { ptr }

@__kstrtab_iomap_fiemap = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_fiemap = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_fiemap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_fiemap to i32), ptr @__kstrtab_iomap_fiemap, ptr @__kstrtabns_iomap_fiemap }, section "___ksymtab_gpl+iomap_fiemap", align 4
@__kstrtab_iomap_bmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_bmap = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_bmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_bmap to i32), ptr @__kstrtab_iomap_bmap, ptr @__kstrtabns_iomap_bmap }, section "___ksymtab_gpl+iomap_bmap", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_iomap_bmap, ptr @__ksymtab_iomap_fiemap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iomap_fiemap(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.iomap_iter, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 1
  store i64 %2, ptr %7, align 8
  %8 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 2
  store i64 %3, ptr %8, align 8
  %9 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 4
  store i32 4, ptr %9, align 8
  %10 = call i32 @fiemap_prep(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %8, i32 noundef 0) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %130

12:                                               ; preds = %5
  %13 = call i32 @iomap_iter(ptr noundef nonnull %6, ptr noundef %4) #5
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %124

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 3
  %17 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5
  %18 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 1
  %19 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 2
  %20 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 5, i32 4
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 6, i32 3
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 6, i32 1
  %23 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 6, i32 2
  %24 = getelementptr inbounds %struct.iomap_iter, ptr %6, i32 0, i32 3
  br label %25

25:                                               ; preds = %98, %15
  %26 = phi i16 [ 0, %15 ], [ %103, %98 ]
  %27 = phi i16 [ 0, %15 ], [ %102, %98 ]
  %28 = phi i64 [ 0, %15 ], [ %101, %98 ]
  %29 = phi i64 [ 0, %15 ], [ %100, %98 ]
  %30 = phi i64 [ 0, %15 ], [ %99, %98 ]
  %31 = load i16, ptr %16, align 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %25
  %34 = load i64, ptr %18, align 8
  %35 = load i64, ptr %19, align 8
  %36 = add i64 %35, %34
  %37 = load i16, ptr %21, align 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i64, ptr %22, align 8
  %41 = load i64, ptr %23, align 8
  %42 = add i64 %41, %40
  %43 = call i64 @llvm.umin.i64(i64 %36, i64 %42) #5
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i64 [ %43, %39 ], [ %36, %33 ]
  %46 = load i64, ptr %8, align 8
  %47 = load i64, ptr %7, align 8
  %48 = sub i64 %45, %47
  %49 = call i64 @llvm.umin.i64(i64 %46, i64 %48) #5
  br label %98

50:                                               ; preds = %25
  switch i16 %27, label %59 [
    i16 0, label %51
    i16 1, label %56
    i16 4, label %58
    i16 3, label %57
  ]

51:                                               ; preds = %50
  %52 = load i64, ptr %17, align 8
  %53 = load i64, ptr %18, align 8
  %54 = load i64, ptr %19, align 8
  %55 = load i16, ptr %20, align 2
  br label %76

56:                                               ; preds = %50
  br label %59

57:                                               ; preds = %50
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %57, %56, %50
  %60 = phi i32 [ 0, %50 ], [ 2048, %57 ], [ 512, %58 ], [ 6, %56 ]
  %61 = shl i16 %26, 9
  %62 = and i16 %61, 4096
  %63 = shl i16 %26, 11
  %64 = and i16 %63, 8192
  %65 = or i16 %64, %62
  %66 = zext i16 %65 to i32
  %67 = or i32 %60, %66
  %68 = icmp eq i64 %30, -1
  %69 = select i1 %68, i64 0, i64 %30
  %70 = call i32 @fiemap_fill_next_extent(ptr noundef %1, i64 noundef %29, i64 noundef %69, i64 noundef %28, i32 noundef %67) #5
  %71 = load i64, ptr %17, align 8
  %72 = load i64, ptr %18, align 8
  %73 = load i64, ptr %19, align 8
  %74 = load i16, ptr %16, align 8
  %75 = load i16, ptr %20, align 2
  switch i32 %70, label %96 [
    i32 0, label %76
    i32 1, label %98
  ]

76:                                               ; preds = %59, %51
  %77 = phi i64 [ %71, %59 ], [ %52, %51 ]
  %78 = phi i64 [ %72, %59 ], [ %53, %51 ]
  %79 = phi i64 [ %73, %59 ], [ %54, %51 ]
  %80 = phi i16 [ %74, %59 ], [ %31, %51 ]
  %81 = phi i16 [ %75, %59 ], [ %55, %51 ]
  %82 = add i64 %79, %78
  %83 = load i16, ptr %21, align 8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %76
  %86 = load i64, ptr %22, align 8
  %87 = load i64, ptr %23, align 8
  %88 = add i64 %87, %86
  %89 = call i64 @llvm.umin.i64(i64 %82, i64 %88) #5
  br label %90

90:                                               ; preds = %85, %76
  %91 = phi i64 [ %89, %85 ], [ %82, %76 ]
  %92 = load i64, ptr %8, align 8
  %93 = load i64, ptr %7, align 8
  %94 = sub i64 %91, %93
  %95 = call i64 @llvm.umin.i64(i64 %92, i64 %94) #5
  br label %98

96:                                               ; preds = %59
  %97 = sext i32 %70 to i64
  br label %98

98:                                               ; preds = %96, %90, %59, %44
  %99 = phi i64 [ %30, %44 ], [ %71, %96 ], [ %71, %59 ], [ %77, %90 ]
  %100 = phi i64 [ %29, %44 ], [ %72, %96 ], [ %72, %59 ], [ %78, %90 ]
  %101 = phi i64 [ %28, %44 ], [ %73, %96 ], [ %73, %59 ], [ %79, %90 ]
  %102 = phi i16 [ %27, %44 ], [ %74, %96 ], [ %74, %59 ], [ %80, %90 ]
  %103 = phi i16 [ %26, %44 ], [ %75, %96 ], [ %75, %59 ], [ %81, %90 ]
  %104 = phi i64 [ %49, %44 ], [ %97, %96 ], [ 0, %59 ], [ %95, %90 ]
  store i64 %104, ptr %24, align 8
  %105 = call i32 @iomap_iter(ptr noundef nonnull %6, ptr noundef %4) #5
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %25, label %107

107:                                              ; preds = %98
  switch i16 %102, label %111 [
    i16 0, label %124
    i16 3, label %109
    i16 1, label %108
    i16 4, label %110
  ]

108:                                              ; preds = %107
  br label %111

109:                                              ; preds = %107
  br label %111

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %109, %108, %107
  %112 = phi i32 [ 2049, %109 ], [ 513, %110 ], [ 7, %108 ], [ 1, %107 ]
  %113 = shl i16 %103, 9
  %114 = and i16 %113, 4096
  %115 = shl i16 %103, 11
  %116 = and i16 %115, 8192
  %117 = or i16 %116, %114
  %118 = zext i16 %117 to i32
  %119 = or i32 %112, %118
  %120 = icmp eq i64 %99, -1
  %121 = select i1 %120, i64 0, i64 %99
  %122 = call i32 @fiemap_fill_next_extent(ptr noundef %1, i64 noundef %100, i64 noundef %121, i64 noundef %101, i32 noundef %119) #5
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %111, %107, %12
  %125 = phi i32 [ %122, %111 ], [ %105, %107 ], [ %13, %12 ]
  %126 = icmp slt i32 %125, 0
  %127 = icmp ne i32 %125, -2
  %128 = and i1 %126, %127
  %129 = select i1 %128, i32 %125, i32 0
  br label %130

130:                                              ; preds = %124, %111, %5
  %131 = phi i32 [ %10, %5 ], [ %122, %111 ], [ %129, %124 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #5
  ret i32 %131
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_prep(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @iomap_bmap(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.iomap_iter, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 19
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i64
  %10 = shl i64 %1, %9
  store i64 %10, ptr %6, align 8
  %11 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 2
  %12 = zext i8 %8 to i32
  %13 = shl nuw i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, ptr %11, align 8
  %15 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 4
  store i32 4, ptr %15, align 8
  %16 = add nsw i32 %12, -9
  %17 = tail call i32 @filemap_write_and_wait_range(ptr noundef %0, i64 noundef 0, i64 noundef 9223372036854775807) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %3
  %20 = call i32 @iomap_iter(ptr noundef nonnull %4, ptr noundef %2) #5
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 3
  %24 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5
  %25 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 1
  %26 = zext i32 %16 to i64
  br label %27

27:                                               ; preds = %39, %22
  %28 = phi i64 [ 0, %22 ], [ %40, %39 ]
  %29 = load i16, ptr %23, align 8
  %30 = icmp eq i16 %29, 2
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64, ptr %6, align 8
  %33 = load i64, ptr %24, align 8
  %34 = add i64 %33, %32
  %35 = load i64, ptr %25, align 8
  %36 = sub i64 %34, %35
  %37 = lshr i64 %36, 9
  %38 = lshr i64 %37, %26
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i64 [ %38, %31 ], [ %28, %27 ]
  %41 = call i32 @iomap_iter(ptr noundef nonnull %4, ptr noundef %2) #5
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %27, label %43

43:                                               ; preds = %39, %19
  %44 = phi i64 [ 0, %19 ], [ %40, %39 ]
  %45 = phi i32 [ %20, %19 ], [ %41, %39 ]
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i64 %44, i64 0
  br label %48

48:                                               ; preds = %43, %3
  %49 = phi i64 [ 0, %3 ], [ %47, %43 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #5
  ret i64 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_fill_next_extent(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
