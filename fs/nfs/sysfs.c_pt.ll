; ModuleID = '/llk/IR/fs/nfs/sysfs.c_pt.bc'
source_filename = "../fs/nfs/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nfs_netns_client = type { %struct.kobject, ptr, ptr }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@nfs_client_kset = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@nfs_client_kobj = dso_local local_unnamed_addr global ptr null, align 4
@nfs_netns_object_type = internal global %struct.kobj_type { ptr @nfs_netns_object_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr @nfs_netns_object_child_ns_type, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@net_ns_type_operations = external dso_local constant %struct.kobj_ns_type_operations, align 4
@nfs_netns_client_type = internal global %struct.kobj_type { ptr @nfs_netns_client_release, ptr @kobj_sysfs_ops, ptr null, ptr @nfs_netns_client_groups, ptr null, ptr @nfs_netns_client_namespace, ptr null }, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"nfs_client\00", align 1
@nfs_netns_client_groups = internal global [2 x ptr] [ptr @nfs_netns_client_group, ptr null], align 4
@nfs_netns_client_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nfs_netns_client_attrs, ptr null }, align 4
@nfs_netns_client_attrs = internal global [2 x ptr] [ptr @nfs_netns_client_id, ptr null], align 4
@nfs_netns_client_id = internal global %struct.kobj_attribute { %struct.attribute { ptr @.str.4, i16 420 }, ptr @nfs_netns_identifier_show, ptr @nfs_netns_identifier_store }, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_sysfs_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @fs_kobj, align 4
  %2 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %1) #6
  store ptr %2, ptr @nfs_client_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 3
  store ptr %2, ptr %9, align 8
  %10 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %6, ptr noundef nonnull @nfs_netns_object_type, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @kobject_put(ptr noundef nonnull %6) #6
  br label %14

13:                                               ; preds = %8
  store ptr %6, ptr @nfs_client_kobj, align 4
  br label %16

14:                                               ; preds = %12, %4
  store ptr null, ptr @nfs_client_kobj, align 4
  %15 = load ptr, ptr @nfs_client_kset, align 4
  tail call void @kset_unregister(ptr noundef %15) #6
  store ptr null, ptr @nfs_client_kset, align 4
  br label %16

16:                                               ; preds = %14, %13, %0
  %17 = phi i32 [ -12, %14 ], [ -12, %0 ], [ 0, %13 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_sysfs_exit() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nfs_client_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #6
  %2 = load ptr, ptr @nfs_client_kset, align 4
  tail call void @kset_unregister(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_netns_sysfs_setup(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @nfs_client_kobj, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nfs_netns_client, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = load ptr, ptr @nfs_client_kset, align 4
  %10 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 3
  store ptr %9, ptr %10, align 8
  %11 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %5, ptr noundef nonnull @nfs_netns_client_type, ptr noundef %3, ptr noundef nonnull @.str.3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @kobject_put(ptr noundef nonnull %5) #6
  br label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nfs_net, ptr %0, i32 0, i32 11
  store ptr %5, ptr %15, align 8
  %16 = tail call i32 @kobject_uevent(ptr noundef nonnull %5, i32 noundef 0) #6
  br label %17

17:                                               ; preds = %14, %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_netns_sysfs_destroy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs_net, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @kobject_uevent(ptr noundef nonnull %3, i32 noundef 1) #6
  tail call void @kobject_del(ptr noundef nonnull %3) #6
  tail call void @kobject_put(ptr noundef nonnull %3) #6
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_netns_object_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nfs_netns_object_child_ns_type(ptr nocapture noundef readnone %0) #3 {
  ret ptr @net_ns_type_operations
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_netns_client_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_netns_client, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @nfs_netns_client_namespace(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.nfs_netns_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_netns_identifier_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %4 = getelementptr inbounds %struct.nfs_netns_client, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.5, ptr noundef %5) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_netns_identifier_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 64)
  br label %6

6:                                                ; preds = %9, %4
  %7 = phi i32 [ %5, %4 ], [ %10, %9 ]
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6
  %10 = add nsw i32 %7, -1
  %11 = getelementptr i8, ptr %2, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %6, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @kmemdup_nul(ptr noundef %2, i32 noundef %7, i32 noundef 3264) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nfs_netns_client, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %19 = ptrtoint ptr %15 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #6, !srcloc !11
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %19, ptr %18) #6, !srcloc !12
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = inttoptr i32 %21 to ptr
  tail call void @synchronize_rcu() #6
  tail call void @kfree(ptr noundef nonnull %24) #6
  br label %25

25:                                               ; preds = %23, %17, %14, %6
  %26 = phi i32 [ -12, %14 ], [ %3, %23 ], [ %3, %17 ], [ 0, %6 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 2149047021}
!9 = !{i64 2149047238}
!10 = !{i64 2156014864}
!11 = !{i64 544141, i64 2148034112, i64 2148034138, i64 2148034185, i64 2148034207, i64 2148034235, i64 2148034255}
!12 = !{i64 552791, i64 552808, i64 552832, i64 552858, i64 552876}
!13 = !{i64 2156015107}
