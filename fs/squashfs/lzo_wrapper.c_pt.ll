; ModuleID = '/llk/IR/fs/squashfs/lzo_wrapper.c_pt.bc'
source_filename = "../fs/squashfs/lzo_wrapper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_lzo = type { ptr, ptr }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.68, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.68 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.34, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@squashfs_lzo_comp_ops = dso_local local_unnamed_addr constant %struct.squashfs_decompressor { ptr @lzo_init, ptr null, ptr @lzo_free, ptr @lzo_uncompress, i32 3, ptr @.str, i32 1 }, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"\013SQUASHFS error: Failed to allocate lzo workspace\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @lzo_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.squashfs_sb_info, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 8192)
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = tail call noalias ptr @vmalloc(i32 noundef %5) #9
  store ptr %10, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call noalias ptr @vmalloc(i32 noundef %5) #9
  %14 = getelementptr inbounds %struct.squashfs_lzo, ptr %7, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  tail call void @vfree(ptr noundef nonnull %10) #10
  br label %17

17:                                               ; preds = %16, %9, %2
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  tail call void @kfree(ptr noundef %7) #10
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %7, %12 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lzo_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @vfree(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.squashfs_lzo, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @vfree(ptr noundef %6) #10
  br label %7

7:                                                ; preds = %3, %1
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lzo_uncompress(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %9 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %7, align 4
  %11 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 13
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %112, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.bio, ptr %2, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.bio_vec, ptr %16, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 12
  %21 = getelementptr %struct.page, ptr %17, i32 %20
  %22 = and i32 %19, 4095
  %23 = load i32, ptr %21, align 4
  %24 = lshr i32 %23, 30
  %25 = sub nuw nsw i32 4096, %22
  %26 = getelementptr %struct.bio_vec, ptr %16, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27) #10
  %29 = icmp ule i32 %27, %25
  %30 = zext i1 %29 to i32
  %31 = select i1 %29, i32 0, i32 %28
  %32 = sub i32 %28, %3
  %33 = tail call i32 @llvm.smin.i32(i32 %4, i32 %32)
  %34 = icmp eq i32 %24, 2
  br i1 %34, label %40, label %35

35:                                               ; preds = %14
  %36 = icmp eq i32 %24, 3
  %37 = load i32, ptr @movable_zone, align 4
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %36, i1 %38, i1 false
  br label %40

40:                                               ; preds = %35, %14
  %41 = phi i1 [ true, %14 ], [ %39, %35 ]
  %42 = load i1, ptr @bvec_virt.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %40
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #10
  br label %46

46:                                               ; preds = %45, %40
  %47 = tail call ptr @page_address(ptr noundef %21) #10
  %48 = getelementptr i8, ptr %47, i32 %22
  %49 = getelementptr i8, ptr %48, i32 %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %49, i32 %33, i1 false)
  %50 = load i16, ptr %11, align 4
  %51 = zext i1 %29 to i16
  %52 = icmp ugt i16 %50, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %46
  %54 = sub i32 %4, %33
  %55 = getelementptr i8, ptr %8, i32 %33
  br label %56

56:                                               ; preds = %102, %53
  %57 = phi i32 [ %54, %53 ], [ %106, %102 ]
  %58 = phi ptr [ %55, %53 ], [ %105, %102 ]
  %59 = phi i32 [ %31, %53 ], [ %86, %102 ]
  %60 = phi i32 [ %30, %53 ], [ %85, %102 ]
  %61 = phi ptr [ %21, %53 ], [ %75, %102 ]
  %62 = load ptr, ptr %15, align 4
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = getelementptr %struct.page, ptr %61, i32 1
  br label %74

66:                                               ; preds = %56
  %67 = getelementptr %struct.bio_vec, ptr %62, i32 %60
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.bio_vec, ptr %62, i32 %60, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 12
  %72 = getelementptr %struct.page, ptr %68, i32 %71
  %73 = and i32 %70, 4095
  br label %74

74:                                               ; preds = %66, %64
  %75 = phi ptr [ %72, %66 ], [ %65, %64 ]
  %76 = phi i32 [ %73, %66 ], [ 0, %64 ]
  %77 = sub nuw nsw i32 4096, %76
  %78 = getelementptr %struct.bio_vec, ptr %62, i32 %60, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %79, %59
  %81 = tail call i32 @llvm.umin.i32(i32 %77, i32 %80) #10
  %82 = add i32 %81, %59
  %83 = icmp eq i32 %82, %79
  %84 = zext i1 %83 to i32
  %85 = add nuw nsw i32 %60, %84
  %86 = select i1 %83, i32 0, i32 %82
  %87 = tail call i32 @llvm.smin.i32(i32 %57, i32 %81)
  %88 = load i32, ptr %75, align 4
  %89 = lshr i32 %88, 30
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %96, label %91

91:                                               ; preds = %74
  %92 = icmp eq i32 %89, 3
  %93 = load i32, ptr @movable_zone, align 4
  %94 = icmp eq i32 %93, 2
  %95 = select i1 %92, i1 %94, i1 false
  br label %96

96:                                               ; preds = %91, %74
  %97 = phi i1 [ true, %74 ], [ %95, %91 ]
  %98 = load i1, ptr @bvec_virt.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !8

101:                                              ; preds = %96
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #10
  br label %102

102:                                              ; preds = %101, %96
  %103 = tail call ptr @page_address(ptr noundef %75) #10
  %104 = getelementptr i8, ptr %103, i32 %76
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 1 %104, i32 %87, i1 false)
  %105 = getelementptr i8, ptr %58, i32 %87
  %106 = sub i32 %57, %87
  %107 = load i16, ptr %11, align 4
  %108 = zext i16 %107 to i32
  %109 = icmp ult i32 %85, %108
  br i1 %109, label %56, label %110, !llvm.loop !9

110:                                              ; preds = %102, %46
  %111 = load ptr, ptr %1, align 4
  br label %112

112:                                              ; preds = %110, %6
  %113 = phi ptr [ %111, %110 ], [ %8, %6 ]
  %114 = getelementptr inbounds %struct.squashfs_lzo, ptr %1, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = call i32 @lzo1x_decompress_safe(ptr noundef %113, i32 noundef %4, ptr noundef %115, ptr noundef nonnull %7) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %112
  %119 = load i32, ptr %7, align 4
  %120 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 3
  store i32 1, ptr %120, align 4
  %121 = load ptr, ptr %5, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %145, label %124

124:                                              ; preds = %118
  %125 = load ptr, ptr %114, align 4
  %126 = getelementptr inbounds %struct.squashfs_page_actor, ptr %5, i32 0, i32 1
  br label %127

127:                                              ; preds = %137, %124
  %128 = phi i32 [ %119, %124 ], [ %138, %137 ]
  %129 = phi ptr [ %122, %124 ], [ %143, %137 ]
  %130 = phi ptr [ %125, %124 ], [ %139, %137 ]
  %131 = icmp ult i32 %128, 4097
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %129, ptr align 1 %130, i32 %128, i1 false)
  br label %145

133:                                              ; preds = %127
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(4096) %129, ptr noundef align 1 dereferenceable(4096) %130, i32 4096, i1 false)
  %134 = load i32, ptr %120, align 4
  %135 = load i32, ptr %126, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = add i32 %128, -4096
  %139 = getelementptr i8, ptr %130, i32 4096
  %140 = load ptr, ptr %5, align 4
  %141 = add i32 %134, 1
  store i32 %141, ptr %120, align 4
  %142 = getelementptr ptr, ptr %140, i32 %134
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %127

145:                                              ; preds = %137, %133, %132, %118, %112
  %146 = phi i32 [ -5, %112 ], [ %119, %132 ], [ %119, %118 ], [ %119, %137 ], [ %119, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret i32 %146
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lzo1x_decompress_safe(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
