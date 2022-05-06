; ModuleID = '/llk/IR/fs/kernfs/symlink.c_pt.bc'
source_filename = "../fs/kernfs/symlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon, ptr, i64, i16, i16, ptr }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%union.anon.59 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_call = type { ptr, ptr }

@kernfs_symlink_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @kernfs_iop_get_link, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8
  %9 = getelementptr inbounds %struct.kernfs_iattrs, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %13 = phi i32 [ %10, %7 ], [ 0, %3 ]
  %14 = insertvalue [1 x i32] poison, i32 %12, 0
  %15 = insertvalue [1 x i32] poison, i32 %13, 0
  %16 = tail call ptr @kernfs_new_node(ptr noundef %0, ptr noundef %1, i16 noundef zeroext -24065, [1 x i32] %14, [1 x i32] %15, i32 noundef 4) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 32
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 7
  store ptr %2, ptr %28, align 8
  tail call void @kernfs_get(ptr noundef %2) #5
  %29 = tail call i32 @kernfs_add_one(ptr noundef nonnull %16) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void @kernfs_put(ptr noundef nonnull %16) #5
  %32 = inttoptr i32 %29 to ptr
  br label %33

33:                                               ; preds = %31, %27, %11
  %34 = phi ptr [ %32, %31 ], [ %16, %27 ], [ inttoptr (i32 -12 to ptr), %11 ]
  ret ptr %34
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_new_node(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_add_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_iop_get_link(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 4096) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %108, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr %13, ptr %17
  %20 = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.kernfs_root, ptr %21, i32 0, i32 8
  tail call void @down_read(ptr noundef %22) #5
  %23 = load ptr, ptr %16, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %7 to i32
  %28 = sub i32 3, %27
  br label %29

29:                                               ; preds = %47, %25
  %30 = phi ptr [ %16, %25 ], [ %50, %47 ]
  %31 = phi ptr [ %7, %25 ], [ %48, %47 ]
  %32 = phi ptr [ %13, %25 ], [ %49, %47 ]
  %33 = load ptr, ptr %26, align 8
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi ptr [ %33, %29 ], [ %37, %34 ]
  %36 = getelementptr inbounds %struct.kernfs_node, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = icmp ne ptr %37, null
  %39 = icmp ne ptr %32, %35
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %34, label %41

41:                                               ; preds = %34
  %42 = icmp eq ptr %32, %35
  br i1 %42, label %53, label %43

43:                                               ; preds = %41
  %44 = ptrtoint ptr %31 to i32
  %45 = add i32 %28, %44
  %46 = icmp sgt i32 %45, 4095
  br i1 %46, label %104, label %47

47:                                               ; preds = %43
  store i32 3092014, ptr %31, align 1
  %48 = getelementptr i8, ptr %31, i32 3
  %49 = load ptr, ptr %30, align 8
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %29

53:                                               ; preds = %47, %41, %9
  %54 = phi ptr [ %13, %9 ], [ %32, %41 ], [ %49, %47 ]
  %55 = phi ptr [ %7, %9 ], [ %31, %41 ], [ %48, %47 ]
  %56 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = icmp ne ptr %57, null
  %59 = icmp ne ptr %54, %15
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %104

61:                                               ; preds = %61, %53
  %62 = phi ptr [ %71, %61 ], [ %57, %53 ]
  %63 = phi i32 [ %69, %61 ], [ 0, %53 ]
  %64 = phi ptr [ %62, %61 ], [ %15, %53 ]
  %65 = getelementptr inbounds %struct.kernfs_node, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @strlen(ptr noundef %66) #5
  %68 = add i32 %67, %63
  %69 = add i32 %68, 1
  %70 = getelementptr inbounds %struct.kernfs_node, ptr %62, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = icmp ne ptr %71, null
  %73 = icmp ne ptr %62, %54
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %61, label %75

75:                                               ; preds = %61
  %76 = icmp slt i32 %69, 2
  br i1 %76, label %104, label %77

77:                                               ; preds = %75
  %78 = ptrtoint ptr %55 to i32
  %79 = ptrtoint ptr %7 to i32
  %80 = sub i32 %78, %79
  %81 = add i32 %80, %68
  %82 = icmp sgt i32 %81, 4095
  br i1 %82, label %104, label %83

83:                                               ; preds = %96, %77
  %84 = phi ptr [ %99, %96 ], [ %56, %77 ]
  %85 = phi i32 [ %97, %96 ], [ %68, %77 ]
  %86 = phi ptr [ %98, %96 ], [ %15, %77 ]
  %87 = getelementptr inbounds %struct.kernfs_node, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @strlen(ptr noundef %88) #5
  %90 = sub i32 %85, %89
  %91 = getelementptr i8, ptr %55, i32 %90
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %91, ptr align 1 %88, i32 %89, i1 false) #5
  %92 = icmp eq i32 %85, %89
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = add i32 %90, -1
  %95 = getelementptr i8, ptr %55, i32 %94
  store i8 47, ptr %95, align 1
  br label %96

96:                                               ; preds = %93, %83
  %97 = phi i32 [ %94, %93 ], [ 0, %83 ]
  %98 = load ptr, ptr %84, align 8
  %99 = getelementptr inbounds %struct.kernfs_node, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = icmp ne ptr %100, null
  %102 = icmp ne ptr %98, %54
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %83, label %106

104:                                              ; preds = %77, %75, %53, %43
  %105 = phi ptr [ inttoptr (i32 -22 to ptr), %53 ], [ inttoptr (i32 -36 to ptr), %77 ], [ inttoptr (i32 -22 to ptr), %75 ], [ inttoptr (i32 -36 to ptr), %43 ]
  tail call void @up_read(ptr noundef %22) #5
  tail call void @kfree(ptr noundef nonnull %7) #5
  br label %108

106:                                              ; preds = %96
  tail call void @up_read(ptr noundef %22) #5
  store ptr @kfree_link, ptr %2, align 4
  %107 = getelementptr inbounds %struct.delayed_call, ptr %2, i32 0, i32 1
  store ptr %7, ptr %107, align 4
  br label %108

108:                                              ; preds = %106, %104, %5, %3
  %109 = phi ptr [ %105, %104 ], [ %7, %106 ], [ inttoptr (i32 -10 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
