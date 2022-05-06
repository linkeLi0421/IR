; ModuleID = '/llk/IR/arch/arm/kernel/topology.c_pt.bc'
source_filename = "../arch/arm/kernel/topology.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_efficiency = type { ptr, i32 }

@cpu_topology = external dso_local local_unnamed_addr global [16 x %struct.cpu_topology], align 4
@.str = private unnamed_addr constant [49 x i8] c"\016CPU%u: thread %d, cpu %d, socket %d, mpidr %x\0A\00", align 1
@__cpu_capacity = internal unnamed_addr global ptr null, align 4
@cap_from_dt = internal unnamed_addr global i1 false, align 1
@middle_capacity = internal unnamed_addr global i32 1, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\016CPU%u: update cpu_capacity %lu\0A\00", align 1
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\013missing device node for CPU %d\0A\00", align 1
@table_efficiency = internal unnamed_addr constant [3 x %struct.cpu_efficiency] [%struct.cpu_efficiency { ptr @.str.5, i32 3891 }, %struct.cpu_efficiency { ptr @.str.6, i32 2048 }, %struct.cpu_efficiency zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\013%pOF missing clock-frequency property\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"arm,cortex-a15\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"arm,cortex-a7\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @store_cpu_topology(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0
  %3 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %55

6:                                                ; preds = %1
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !8
  %8 = and i32 %7, -1073741824
  %9 = icmp eq i32 %8, -2147483648
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = and i32 %7, 16777216
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = and i32 %7, 255
  store i32 %14, ptr %2, align 4
  %15 = lshr i32 %7, 8
  %16 = and i32 %15, 255
  %17 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = lshr i32 %7, 16
  %19 = and i32 %18, 255
  br label %27

20:                                               ; preds = %10
  store i32 -1, ptr %2, align 4
  %21 = and i32 %7, 255
  %22 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = lshr i32 %7, 8
  %24 = and i32 %23, 255
  br label %27

25:                                               ; preds = %6
  store i32 -1, ptr %2, align 4
  %26 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 1
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %20, %13
  %28 = phi i32 [ %19, %13 ], [ %24, %20 ], [ -1, %25 ]
  %29 = phi i32 [ %16, %13 ], [ %21, %20 ], [ 0, %25 ]
  %30 = phi i32 [ %14, %13 ], [ -1, %20 ], [ -1, %25 ]
  store i32 %28, ptr %3, align 4
  %31 = load ptr, ptr @__cpu_capacity, align 4
  %32 = getelementptr i32, ptr %31, i32 %0
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %27
  %36 = load i1, ptr @cap_from_dt, align 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %35
  %38 = load i32, ptr @middle_capacity, align 4
  %39 = udiv i32 %33, %38
  tail call void @topology_set_cpu_scale(i32 noundef %0, i32 noundef %39) #9
  %40 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, ptrtoint (ptr @cpu_scale to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %44) #10
  %46 = load i32, ptr %2, align 4
  %47 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %3, align 4
  br label %50

50:                                               ; preds = %37, %35, %27
  %51 = phi i32 [ %28, %27 ], [ %28, %35 ], [ %49, %37 ]
  %52 = phi i32 [ %29, %27 ], [ %29, %35 ], [ %48, %37 ]
  %53 = phi i32 [ %30, %27 ], [ %30, %35 ], [ %46, %37 ]
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %53, i32 noundef %52, i32 noundef %51, i32 noundef %7) #10
  br label %55

55:                                               ; preds = %50, %1
  tail call void @update_siblings_masks(i32 noundef %0) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_siblings_masks(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_cpu_topology() local_unnamed_addr #4 section ".init.text" {
  tail call void @reset_cpu_topology() #9
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !9
  tail call fastcc void @parse_dt_topology() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_cpu_topology() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @parse_dt_topology() unnamed_addr #4 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #9
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %8, label %5, !prof !10

5:                                                ; preds = %0
  %6 = extractvalue { i32, i1 } %3, 0
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 2304) #12
  br label %8

8:                                                ; preds = %5, %0
  %9 = phi ptr [ %7, %5 ], [ null, %0 ]
  store ptr %9, ptr @__cpu_capacity, align 4
  %10 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %56, %8
  %14 = phi i32 [ %59, %56 ], [ %10, %8 ]
  %15 = phi i32 [ %58, %56 ], [ 0, %8 ]
  %16 = phi i32 [ %57, %56 ], [ -1, %8 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #9
  store i32 0, ptr %1, align 4, !annotation !11
  %17 = call ptr @of_get_cpu_node(i32 noundef %14, ptr noundef null) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %14) #10
  br label %56

21:                                               ; preds = %13
  %22 = call zeroext i1 @topology_parse_cpu_capacity(ptr noundef nonnull %17, i32 noundef %14) #9
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @of_node_put(ptr noundef nonnull %17) #9
  br label %56

24:                                               ; preds = %21
  store i1 true, ptr @cap_from_dt, align 1
  br label %25

25:                                               ; preds = %30, %24
  %26 = phi ptr [ @.str.5, %24 ], [ %32, %30 ]
  %27 = phi ptr [ @table_efficiency, %24 ], [ %31, %30 ]
  %28 = call i32 @of_device_is_compatible(ptr noundef nonnull %17, ptr noundef nonnull %26) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr %struct.cpu_efficiency, ptr %27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %25

34:                                               ; preds = %25
  %35 = load ptr, ptr %27, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = call ptr @of_get_property(ptr noundef nonnull %17, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #9
  %39 = icmp eq ptr %38, null
  %40 = load i32, ptr %1, align 4
  %41 = icmp ne i32 %40, 4
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #10
  br label %56

45:                                               ; preds = %37
  %46 = load i32, ptr %38, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = lshr i32 %47, 20
  %49 = getelementptr inbounds %struct.cpu_efficiency, ptr %27, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %48, %50
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 %16)
  %53 = call i32 @llvm.umax.i32(i32 %51, i32 %15)
  %54 = load ptr, ptr @__cpu_capacity, align 4
  %55 = getelementptr i32, ptr %54, i32 %14
  store i32 %51, ptr %55, align 4
  br label %56

56:                                               ; preds = %45, %43, %34, %30, %23, %19
  %57 = phi i32 [ %16, %23 ], [ %16, %43 ], [ %52, %45 ], [ %16, %19 ], [ %16, %34 ], [ %16, %30 ]
  %58 = phi i32 [ %15, %23 ], [ %15, %43 ], [ %53, %45 ], [ %15, %19 ], [ %15, %34 ], [ %15, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #9
  %59 = call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask) #13
  %60 = load i32, ptr @nr_cpu_ids, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %13, label %62

62:                                               ; preds = %56, %8
  %63 = phi i32 [ -1, %8 ], [ %57, %56 ]
  %64 = phi i32 [ 0, %8 ], [ %58, %56 ]
  %65 = shl i32 %64, 2
  %66 = add i32 %64, %63
  %67 = mul i32 %66, 3
  %68 = icmp ult i32 %65, %67
  %69 = udiv i32 %64, 3
  %70 = lshr i32 %69, 9
  %71 = add nuw nsw i32 %70, 1
  %72 = lshr i32 %66, 11
  %73 = select i1 %68, i32 %72, i32 %71
  store i32 %73, ptr @middle_capacity, align 4
  %74 = load i1, ptr @cap_from_dt, align 1
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  call void @topology_normalize_cpu_scale() #9
  br label %76

76:                                               ; preds = %75, %62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_set_cpu_scale(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @topology_parse_cpu_capacity(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_normalize_cpu_scale() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }

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
!8 = !{i64 2151545740}
!9 = !{i64 2151550142}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
