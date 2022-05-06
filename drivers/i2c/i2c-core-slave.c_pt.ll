; ModuleID = '/llk/IR/drivers/i2c/i2c-core-slave.c_pt.bc'
source_filename = "../drivers/i2c/i2c-core-slave.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_slave_register:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_slave_register\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_slave_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_slave_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_detect_slave_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_detect_slave_mode\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_detect_slave_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [29 x i8] c"drivers/i2c/i2c-core-slave.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"insufficient data\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"%s: client slave flag not set. You might see address collisions\0A\00", align 1
@__func__.i2c_slave_register = private unnamed_addr constant [19 x i8] c"i2c_slave_register\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: invalid address\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: not supported by adapter\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: adapter returned error %d\0A\00", align 1
@__kstrtab_i2c_slave_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_slave_register = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_slave_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_slave_register to i32), ptr @__kstrtab_i2c_slave_register, ptr @__kstrtabns_i2c_slave_register }, section "___ksymtab_gpl+i2c_slave_register", align 4
@__func__.i2c_slave_unregister = private unnamed_addr constant [21 x i8] c"i2c_slave_unregister\00", align 1
@__kstrtab_i2c_slave_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_slave_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_slave_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_slave_unregister to i32), ptr @__kstrtab_i2c_slave_unregister, ptr @__kstrtabns_i2c_slave_unregister }, section "___ksymtab_gpl+i2c_slave_unregister", align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_i2c_detect_slave_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_detect_slave_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_detect_slave_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_detect_slave_mode to i32), ptr @__kstrtab_i2c_detect_slave_mode, ptr @__kstrtabns_i2c_detect_slave_mode }, section "___ksymtab_gpl+i2c_detect_slave_mode", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_i2c_detect_slave_mode, ptr @__ksymtab_i2c_slave_register, ptr @__ksymtab_i2c_slave_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_slave_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %56

9:                                                ; preds = %2
  %10 = load i16, ptr %0, align 8
  %11 = and i16 %10, 32
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.i2c_slave_register) #5
  %15 = load i16, ptr %0, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i16 [ %15, %13 ], [ %10, %9 ]
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = tail call i32 @i2c_check_7bit_addr_validity_strict(i16 noundef zeroext %22) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.i2c_slave_register) #5
  br label %56

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.i2c_algorithm, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.i2c_slave_register) #5
  br label %56

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 8
  store ptr %1, ptr %38, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 4
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %29, i32 noundef 1) #4
  %42 = load ptr, ptr %28, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.i2c_algorithm, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef nonnull %0) #4
  %48 = load ptr, ptr %28, align 8
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.i2c_lock_operations, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %48, i32 noundef 1) #4
  %53 = icmp eq i32 %47, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %37
  store ptr null, ptr %38, align 8
  %55 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.i2c_slave_register, i32 noundef %47) #5
  br label %56

56:                                               ; preds = %54, %37, %35, %25, %8
  %57 = phi i32 [ -22, %8 ], [ -95, %35 ], [ %23, %25 ], [ %47, %54 ], [ 0, %37 ]
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_check_7bit_addr_validity_strict(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_slave_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.i2c_slave_unregister) #5
  br label %35

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %7, i32 noundef 1) #4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.i2c_algorithm, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef nonnull %0) #4
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.i2c_lock_operations, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %25, i32 noundef 1) #4
  %30 = icmp eq i32 %24, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 8
  store ptr null, ptr %32, align 8
  br label %35

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.i2c_slave_unregister, i32 noundef %24) #5
  br label %35

35:                                               ; preds = %33, %31, %13, %1
  %36 = phi i32 [ -95, %13 ], [ -22, %1 ], [ %24, %33 ], [ 0, %31 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @i2c_detect_slave_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !9
  %7 = tail call ptr @of_get_next_child(ptr noundef nonnull %4, ptr noundef null) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %16, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %21

10:                                               ; preds = %16, %6
  %11 = phi ptr [ %18, %16 ], [ %7, %6 ]
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #4
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 1073741824
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8
  %18 = call ptr @of_get_next_child(ptr noundef %17, ptr noundef nonnull %11) #4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %9, label %10

20:                                               ; preds = %10
  call void @of_node_put(ptr noundef nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  br label %21

21:                                               ; preds = %20, %9, %1
  %22 = phi i1 [ true, %20 ], [ false, %9 ], [ false, %1 ]
  ret i1 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!9 = !{!"auto-init"}
