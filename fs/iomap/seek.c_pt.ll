; ModuleID = '/llk/IR/fs/iomap/seek.c_pt.bc'
source_filename = "../fs/iomap/seek.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_seek_hole:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_seek_hole\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_seek_hole:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iomap_seek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22iomap_seek_data\22\09\09\09\09\09"
module asm "__kstrtabns_iomap_seek_data:\09\09\09\09\09"
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

@__kstrtab_iomap_seek_hole = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_seek_hole = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_seek_hole = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_seek_hole to i32), ptr @__kstrtab_iomap_seek_hole, ptr @__kstrtabns_iomap_seek_hole }, section "___ksymtab_gpl+iomap_seek_hole", align 4
@__kstrtab_iomap_seek_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_iomap_seek_data = external dso_local constant [0 x i8], align 1
@__ksymtab_iomap_seek_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iomap_seek_data to i32), ptr @__kstrtab_iomap_seek_data, ptr @__kstrtabns_iomap_seek_data }, section "___ksymtab_gpl+iomap_seek_data", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_iomap_seek_data, ptr @__ksymtab_iomap_seek_hole], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @iomap_seek_hole(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.iomap_iter, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %15, %3
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !9
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %17 = load i64, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %18 = load volatile i32, ptr %5, align 4
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %20, label %7

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  store ptr %0, ptr %4, align 8
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 1
  store i64 %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 4
  store i32 4, ptr %22, align 8
  %23 = icmp sgt i64 %1, -1
  %24 = icmp sgt i64 %17, %1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %84

26:                                               ; preds = %20
  %27 = sub i64 %17, %1
  %28 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 2
  store i64 %27, ptr %28, align 8
  %29 = call i32 @iomap_iter(ptr noundef nonnull %4, ptr noundef %2) #5
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 1
  %33 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 2
  %34 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, i32 3
  %35 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, i32 1
  %36 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, i32 2
  %37 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 3
  %38 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 3
  br label %39

39:                                               ; preds = %69, %31
  %40 = phi i64 [ %1, %31 ], [ %70, %69 ]
  %41 = load i64, ptr %32, align 8
  %42 = load i64, ptr %33, align 8
  %43 = add i64 %42, %41
  %44 = load i16, ptr %34, align 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i64, ptr %35, align 8
  %48 = load i64, ptr %36, align 8
  %49 = add i64 %48, %47
  %50 = call i64 @llvm.umin.i64(i64 %43, i64 %49) #5
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i64 [ %50, %46 ], [ %43, %39 ]
  %53 = load i64, ptr %28, align 8
  %54 = load i64, ptr %21, align 8
  %55 = sub i64 %52, %54
  %56 = call i64 @llvm.umin.i64(i64 %53, i64 %55) #5
  %57 = load i16, ptr %37, align 8
  switch i16 %57, label %69 [
    i16 3, label %58
    i16 0, label %68
  ]

58:                                               ; preds = %51
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 9
  %61 = load ptr, ptr %60, align 8
  %62 = add i64 %56, %54
  %63 = call i64 @mapping_seek_hole_data(ptr noundef %61, i64 noundef %54, i64 noundef %62, i32 noundef 4) #5
  %64 = load i64, ptr %21, align 8
  %65 = add i64 %64, %56
  %66 = icmp eq i64 %63, %65
  %67 = select i1 %66, i64 %56, i64 0
  br label %69

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %58, %51
  %70 = phi i64 [ %40, %51 ], [ %54, %68 ], [ %63, %58 ]
  %71 = phi i64 [ %56, %51 ], [ 0, %68 ], [ %67, %58 ]
  store i64 %71, ptr %38, align 8
  %72 = call i32 @iomap_iter(ptr noundef nonnull %4, ptr noundef %2) #5
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %39, label %74

74:                                               ; preds = %69, %26
  %75 = phi i64 [ %1, %26 ], [ %70, %69 ]
  %76 = phi i32 [ %29, %26 ], [ %72, %69 ]
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = sext i32 %76 to i64
  br label %84

80:                                               ; preds = %74
  %81 = load i64, ptr %28, align 8
  %82 = icmp eq i64 %81, 0
  %83 = select i1 %82, i64 %17, i64 %75
  br label %84

84:                                               ; preds = %80, %78, %20
  %85 = phi i64 [ %79, %78 ], [ -6, %20 ], [ %83, %80 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #5
  ret i64 %85
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_iter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @iomap_seek_data(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.iomap_iter, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %7

7:                                                ; preds = %15, %3
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !9
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %17 = load i64, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  %18 = load volatile i32, ptr %5, align 4
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %20, label %7

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  store ptr %0, ptr %4, align 8
  %21 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 1
  store i64 %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 4
  store i32 4, ptr %22, align 8
  %23 = icmp sgt i64 %1, -1
  %24 = icmp sgt i64 %17, %1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %82

26:                                               ; preds = %20
  %27 = sub i64 %17, %1
  %28 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 2
  store i64 %27, ptr %28, align 8
  %29 = call i32 @iomap_iter(ptr noundef nonnull %4, ptr noundef %2) #5
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 1
  %33 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 2
  %34 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, i32 3
  %35 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, i32 1
  %36 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 6, i32 2
  %37 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 5, i32 3
  %38 = getelementptr inbounds %struct.iomap_iter, ptr %4, i32 0, i32 3
  br label %39

39:                                               ; preds = %67, %31
  %40 = phi i64 [ %1, %31 ], [ %68, %67 ]
  %41 = load i64, ptr %32, align 8
  %42 = load i64, ptr %33, align 8
  %43 = add i64 %42, %41
  %44 = load i16, ptr %34, align 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i64, ptr %35, align 8
  %48 = load i64, ptr %36, align 8
  %49 = add i64 %48, %47
  %50 = call i64 @llvm.umin.i64(i64 %43, i64 %49) #5
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i64 [ %50, %46 ], [ %43, %39 ]
  %53 = load i64, ptr %28, align 8
  %54 = load i64, ptr %21, align 8
  %55 = sub i64 %52, %54
  %56 = call i64 @llvm.umin.i64(i64 %53, i64 %55) #5
  %57 = load i16, ptr %37, align 8
  switch i16 %57, label %66 [
    i16 0, label %67
    i16 3, label %58
  ]

58:                                               ; preds = %51
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 9
  %61 = load ptr, ptr %60, align 8
  %62 = add i64 %56, %54
  %63 = call i64 @mapping_seek_hole_data(ptr noundef %61, i64 noundef %54, i64 noundef %62, i32 noundef 3) #5
  %64 = icmp slt i64 %63, 0
  %65 = select i1 %64, i64 %56, i64 0
  br label %67

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %58, %51
  %68 = phi i64 [ %54, %66 ], [ %63, %58 ], [ %40, %51 ]
  %69 = phi i64 [ 0, %66 ], [ %65, %58 ], [ %56, %51 ]
  store i64 %69, ptr %38, align 8
  %70 = call i32 @iomap_iter(ptr noundef nonnull %4, ptr noundef %2) #5
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %39, label %72

72:                                               ; preds = %67, %26
  %73 = phi i64 [ %1, %26 ], [ %68, %67 ]
  %74 = phi i32 [ %29, %26 ], [ %70, %67 ]
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = sext i32 %74 to i64
  br label %82

78:                                               ; preds = %72
  %79 = load i64, ptr %28, align 8
  %80 = icmp eq i64 %79, 0
  %81 = select i1 %80, i64 -6, i64 %73
  br label %82

82:                                               ; preds = %78, %76, %20
  %83 = phi i64 [ %77, %76 ], [ -6, %20 ], [ %81, %78 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #5
  ret i64 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mapping_seek_hole_data(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

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
!8 = !{i64 2151509040}
!9 = !{i64 2151508882}
!10 = !{i64 2151509184}
!11 = !{i64 2149382263}
