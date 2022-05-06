; ModuleID = '/llk/IR/drivers/of/kobj.c_pt.bc'
source_filename = "../drivers/of/kobj.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@of_node_ktype = dso_local local_unnamed_addr global %struct.kobj_type { ptr @of_node_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [10 x i8] c"security-\00", align 1
@of_kset = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"drivers/of/kobj.c\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"error adding attribute %s to node %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s#%i\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\014Duplicate name in %s, renamed to \22%s\22\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @of_node_is_attached(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = lshr i8 %5, 1
  %7 = and i8 %6, 1
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_add_property_sysfs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str, i32 noundef 9)
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr @of_kset, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %0, null
  %9 = or i1 %8, %7
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9, i32 7
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  %17 = tail call fastcc ptr @safe_name(ptr noundef %16, ptr noundef %3)
  %18 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = select i1 %5, i16 256, i16 292
  %20 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i16 %19, ptr %20, align 4
  br i1 %5, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %23, %21 ], [ 0, %15 ]
  %26 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 5, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 5, i32 4
  store ptr @of_node_property_read, ptr %27, align 4
  %28 = tail call i32 @sysfs_create_bin_file(ptr noundef %16, ptr noundef %18) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !8

30:                                               ; preds = %24
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %31, ptr noundef nonnull %0) #5
  br label %32

32:                                               ; preds = %30, %24, %10, %2
  %33 = phi i32 [ 0, %10 ], [ 0, %2 ], [ %28, %30 ], [ 0, %24 ]
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @safe_name(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5
  br label %4

4:                                                ; preds = %13, %2
  %5 = phi ptr [ %1, %2 ], [ %15, %13 ]
  %6 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %7 = load ptr, ptr %3, align 4
  %8 = tail call ptr @kernfs_find_and_get_ns(ptr noundef %7, ptr noundef %5, ptr noundef null) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  tail call void @kernfs_put(ptr noundef nonnull %8) #5
  %11 = icmp eq ptr %5, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call void @kfree(ptr noundef %5) #5
  br label %13

13:                                               ; preds = %12, %10
  %14 = add nuw nsw i32 %6, 1
  %15 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %14) #5
  %16 = icmp eq i32 %14, 16
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %4
  %18 = phi ptr [ %15, %13 ], [ %5, %4 ]
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #5
  br label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %23, ptr noundef %18) #6
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %18, %22 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_node_property_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i64, align 8
  store i64 %4, ptr %7, align 8
  %8 = getelementptr i8, ptr %2, i32 -12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %2, i32 -16
  %11 = load i32, ptr %10, align 4
  %12 = call i32 @memory_read_from_buffer(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %9, i32 noundef %11) #5
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__of_sysfs_remove_bin_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %3, ptr noundef %4) #5
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__of_remove_property_sysfs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @of_kset, align 4
  %4 = icmp eq ptr %3, null
  %5 = icmp eq ptr %0, null
  %6 = or i1 %5, %4
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9, i32 7
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %13, ptr noundef %14) #5
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #5
  br label %16

16:                                               ; preds = %12, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__of_update_property_sysfs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @of_kset, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %9, ptr noundef %10) #5
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %8, %6
  %13 = tail call i32 @__of_add_property_sysfs(ptr noundef %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_attach_node_sysfs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @of_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9, i32 3
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 2
  %12 = tail call fastcc ptr @safe_name(ptr noundef %11, ptr noundef nonnull @.str.3)
  br label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 9
  %15 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @strrchr(ptr noundef %16, i32 noundef 47) #5
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 1
  %20 = select i1 %18, ptr %16, ptr %19
  %21 = tail call fastcc ptr @safe_name(ptr noundef %14, ptr noundef %20)
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.device_node, ptr %22, i32 0, i32 9
  br label %24

24:                                               ; preds = %13, %10
  %25 = phi ptr [ %21, %13 ], [ %12, %10 ]
  %26 = phi ptr [ %23, %13 ], [ null, %10 ]
  %27 = icmp eq ptr %25, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %5, ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull %25) #5
  tail call void @kfree(ptr noundef nonnull %25) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %39, %35 ], [ %33, %31 ]
  %37 = tail call i32 @__of_add_property_sysfs(ptr noundef %0, ptr noundef nonnull %36)
  %38 = getelementptr inbounds %struct.property, ptr %36, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35

41:                                               ; preds = %35, %31
  %42 = tail call ptr @of_node_get(ptr noundef %0) #5
  br label %43

43:                                               ; preds = %41, %28, %24, %1
  %44 = phi i32 [ 0, %41 ], [ 0, %1 ], [ -12, %24 ], [ %29, %28 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__of_detach_node_sysfs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %3, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/kobj.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

9:                                                ; preds = %3
  %10 = load ptr, ptr @of_kset, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = and i8 %5, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi ptr [ %17, %19 ], [ %26, %21 ]
  %23 = getelementptr inbounds %struct.property, ptr %22, i32 0, i32 5
  tail call void @sysfs_remove_bin_file(ptr noundef %20, ptr noundef %23) #5
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #5
  %25 = getelementptr inbounds %struct.property, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21

28:                                               ; preds = %21, %15
  %29 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  tail call void @kobject_del(ptr noundef %29) #5
  br label %30

30:                                               ; preds = %28, %12
  tail call void @of_node_put(ptr noundef nonnull %0) #5
  br label %31

31:                                               ; preds = %30, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150419385, i64 2150419867, i64 2150419422, i64 2150419478, i64 2150419512, i64 2150419536, i64 2150419577, i64 2150419598, i64 2150419626, i64 2150419660}
