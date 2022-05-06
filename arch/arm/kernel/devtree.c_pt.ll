; ModuleID = '/llk/IR/arch/arm/kernel/devtree.c_pt.bc'
source_filename = "../arch/arm/kernel/devtree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@__const.arm_dt_init_cpu_maps.tmp_map = private unnamed_addr constant [16 x i32] [i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216, i32 -16777216], align 4
@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"arch/arm/kernel/devtree.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Duplicate /cpu reg properties in the DT\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"DT /cpu %u nodes greater than max cores %u, capping them\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"\014DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@setup_machine_fdt.__mach_desc_GENERIC_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.5, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Generic DT based system\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\0AError: unrecognized/unsupported device tree compatible list:\0A[ \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"'%s' \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@__machine_arch_type = external dso_local local_unnamed_addr global i32, align 4
@__cpu_method_of_table_sentinel = internal constant %struct.of_cpu_method zeroinitializer, section "__cpu_method_of_table_end", align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@__cpu_method_of_table = external dso_local local_unnamed_addr global [0 x %struct.of_cpu_method], align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"enable-method\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@arch_get_next_mach.mdesc = internal unnamed_addr global ptr @__arch_info_begin, align 4
@__arch_info_begin = external dso_local constant [0 x %struct.machine_desc], align 4
@__arch_info_end = external dso_local constant [0 x %struct.machine_desc], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_sentinel, ptr @setup_machine_fdt.__mach_desc_GENERIC_DT], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @arm_dt_init_cpu_maps() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca [16 x i32], align 4
  %2 = load i32, ptr @smp_on_up, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !8
  %6 = and i32 %5, 16777215
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi i32 [ %6, %4 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) @__const.arm_dt_init_cpu_maps.tmp_map, i32 64, i1 false)
  %9 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str, ptr noundef null) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @set_smp_ops_by_method(ptr noundef nonnull %9) #10
  br label %65

16:                                               ; preds = %52, %11
  %17 = phi ptr [ %54, %52 ], [ %12, %11 ]
  %18 = phi i32 [ %53, %52 ], [ 0, %11 ]
  %19 = phi i1 [ %41, %52 ], [ false, %11 ]
  %20 = phi i32 [ %40, %52 ], [ 1, %11 ]
  %21 = tail call i64 @of_get_cpu_hwid(ptr noundef nonnull %17, i32 noundef 0) #9
  %22 = trunc i64 %21 to i32
  %23 = icmp ult i32 %22, 16777216
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = icmp eq i32 %20, 0
  br i1 %25, label %36, label %30

26:                                               ; preds = %16
  tail call void @of_node_put(ptr noundef nonnull %17) #9
  br label %74

27:                                               ; preds = %30
  %28 = add nuw i32 %31, 1
  %29 = icmp eq i32 %28, %20
  br i1 %29, label %36, label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %32 = getelementptr [16 x i32], ptr %1, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %22
  br i1 %34, label %35, label %27, !prof !9

35:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 109, i32 noundef 9, ptr noundef nonnull @.str.2) #9
  tail call void @of_node_put(ptr noundef nonnull %17) #9
  br label %74

36:                                               ; preds = %27, %24
  %37 = icmp eq i32 %8, %22
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = add i32 %20, %39
  %41 = select i1 %37, i1 true, i1 %19
  %42 = load i32, ptr @nr_cpu_ids, align 4
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %50, label %44, !prof !9

44:                                               ; preds = %36
  %45 = select i1 %37, i32 0, i32 %20
  %46 = getelementptr [16 x i32], ptr %1, i32 0, i32 %45
  store i32 %22, ptr %46, align 4
  %47 = icmp eq i32 %18, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = tail call fastcc i32 @set_smp_ops_by_method(ptr noundef nonnull %17) #10
  br label %52

50:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %40, i32 noundef %42) #9
  %51 = load i32, ptr @nr_cpu_ids, align 4
  tail call void @of_node_put(ptr noundef nonnull %17) #9
  br label %56

52:                                               ; preds = %48, %44
  %53 = phi i32 [ %49, %48 ], [ 1, %44 ]
  %54 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %17) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %16

56:                                               ; preds = %52, %50
  %57 = phi i32 [ %18, %50 ], [ %53, %52 ]
  %58 = phi i32 [ %51, %50 ], [ %40, %52 ]
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call fastcc i32 @set_smp_ops_by_method(ptr noundef nonnull %9) #10
  br i1 %41, label %63, label %65

62:                                               ; preds = %56
  br i1 %41, label %63, label %65

63:                                               ; preds = %62, %60
  %64 = icmp eq i32 %58, 0
  br i1 %64, label %74, label %67

65:                                               ; preds = %62, %60, %14
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %74

67:                                               ; preds = %67, %63
  %68 = phi i32 [ %72, %67 ], [ 0, %63 ]
  tail call void @_set_bit(i32 noundef %68, ptr noundef nonnull @__cpu_possible_mask) #9
  %69 = getelementptr [16 x i32], ptr %1, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %68
  store i32 %70, ptr %71, align 4
  %72 = add nuw i32 %68, 1
  %73 = icmp eq i32 %72, %58
  br i1 %73, label %74, label %67

74:                                               ; preds = %67, %65, %63, %35, %26, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_get_cpu_hwid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @set_smp_ops_by_method(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !10
  %3 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load ptr, ptr @__cpu_method_of_table, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 4
  br label %10

10:                                               ; preds = %18, %8
  %11 = phi ptr [ %6, %8 ], [ %20, %18 ]
  %12 = phi ptr [ @__cpu_method_of_table, %8 ], [ %19, %18 ]
  %13 = call i32 @strcmp(ptr noundef nonnull %11, ptr noundef %9)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_cpu_method, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @smp_set_ops(ptr noundef %17) #9
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr %struct.of_cpu_method, ptr %12, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10

22:                                               ; preds = %18, %15, %5, %1
  %23 = phi i32 [ 1, %15 ], [ 0, %1 ], [ 0, %5 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @arch_match_cpu_phys_id(i32 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp eq i64 %5, %1
  ret i1 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @setup_machine_fdt(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @early_init_dt_verify(ptr noundef nonnull %0) #9
  br i1 %5, label %6, label %32

6:                                                ; preds = %4
  %7 = tail call ptr @of_flat_dt_match_machine(ptr noundef nonnull @setup_machine_fdt.__mach_desc_GENERIC_DT, ptr noundef nonnull @arch_get_next_mach) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  tail call void (ptr, ...) @early_print(ptr noundef nonnull @.str.6) #9
  %10 = tail call i32 @of_get_flat_dt_root() #9
  %11 = call ptr @of_get_flat_dt_prop(i32 noundef %10, ptr noundef nonnull @.str.7, ptr noundef nonnull %2) #9
  %12 = load i32, ptr %2, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %14, %9
  %15 = phi ptr [ %22, %14 ], [ %11, %9 ]
  call void (ptr, ...) @early_print(ptr noundef nonnull @.str.8, ptr noundef %15) #9
  %16 = call i32 @strlen(ptr noundef %15)
  %17 = xor i32 %16, -1
  %18 = load i32, ptr %2, align 4
  %19 = add i32 %18, %17
  store i32 %19, ptr %2, align 4
  %20 = call i32 @strlen(ptr noundef %15)
  %21 = add i32 %20, 1
  %22 = getelementptr i8, ptr %15, i32 %21
  %23 = icmp sgt i32 %19, 0
  br i1 %23, label %14, label %24

24:                                               ; preds = %14, %9
  call void (ptr, ...) @early_print(ptr noundef nonnull @.str.9) #9
  call void @dump_machine_table() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %25

25:                                               ; preds = %24, %6
  %26 = getelementptr inbounds %struct.machine_desc, ptr %7, i32 0, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  call void %27() #9
  br label %30

30:                                               ; preds = %29, %25
  call void @early_init_dt_scan_nodes() #9
  %31 = load i32, ptr %7, align 4
  store i32 %31, ptr @__machine_arch_type, align 4
  br label %32

32:                                               ; preds = %30, %4, %1
  %33 = phi ptr [ %7, %30 ], [ null, %4 ], [ null, %1 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @early_init_dt_verify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_flat_dt_match_machine(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal ptr @arch_get_next_mach(ptr nocapture noundef writeonly %0) #6 section ".init.text" {
  %2 = load ptr, ptr @arch_get_next_mach.mdesc, align 4
  %3 = icmp ult ptr %2, @__arch_info_end
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr %struct.machine_desc, ptr %2, i32 1
  store ptr %5, ptr @arch_get_next_mach.mdesc, align 4
  %6 = getelementptr inbounds %struct.machine_desc, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %0, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %2, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_print(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_flat_dt_root() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_machine_table() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_init_dt_scan_nodes() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { cold }
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
!8 = !{i64 2152855825}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
