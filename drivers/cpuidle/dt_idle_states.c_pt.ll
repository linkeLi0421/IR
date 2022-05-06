; ModuleID = '/llk/IR/drivers/cpuidle/dt_idle_states.c_pt.bc'
source_filename = "../drivers/cpuidle/dt_idle_states.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dt_init_idle_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22dt_init_idle_driver\22\09\09\09\09\09"
module asm "__kstrtabns_dt_init_idle_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str = private unnamed_addr constant [58 x i8] c"\014DT idle-states: %pOF idle state not valid, bailing out\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"\014DT idle-states: State index reached static CPU idle driver states array size\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"\013DT idle-states: Parsing idle state node %pOF failed with err %d\0A\00", align 1
@__kstrtab_dt_init_idle_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_dt_init_idle_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_dt_init_idle_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dt_init_idle_driver to i32), ptr @__kstrtab_dt_init_idle_driver, ptr @__kstrtabns_dt_init_idle_driver }, section "___ksymtab_gpl+dt_init_idle_driver", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"wakeup-latency-us\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"entry-latency-us\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"exit-latency-us\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"min-residency-us\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"idle-state-name\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"local-timer-stop\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_dt_init_idle_driver], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dt_init_idle_driver(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp ugt i32 %2, 9
  br i1 %7, label %130, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @__cpu_possible_mask, ptr %10
  %13 = tail call i32 @_find_first_bit_le(ptr noundef %12, i32 noundef 16) #6
  %14 = tail call ptr @get_cpu_device(i32 noundef %13) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = tail call ptr @of_get_cpu_node(i32 noundef %13, ptr noundef null) #6
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @of_node_get(ptr noundef %20) #6
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi ptr [ %21, %18 ], [ %17, %16 ]
  %24 = call ptr @of_get_cpu_state_node(ptr noundef %23, i32 noundef 0) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %120, label %26

26:                                               ; preds = %109, %22
  %27 = phi ptr [ %112, %109 ], [ %24, %22 ]
  %28 = phi i32 [ %110, %109 ], [ %2, %22 ]
  %29 = phi i32 [ %111, %109 ], [ 0, %22 ]
  %30 = call ptr @of_match_node(ptr noundef %1, ptr noundef nonnull %27) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %114, label %32

32:                                               ; preds = %26
  %33 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %27) #6
  br i1 %33, label %34, label %109

34:                                               ; preds = %32
  %35 = call i32 @_find_first_bit_le(ptr noundef %12, i32 noundef 16) #6
  %36 = call i32 @cpumask_next(i32 noundef %35, ptr noundef %12) #7
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %53, %34
  %40 = phi i32 [ %54, %53 ], [ %36, %34 ]
  %41 = call ptr @get_cpu_device(i32 noundef %40) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call ptr @of_get_cpu_node(i32 noundef %40, ptr noundef null) #6
  br label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 25
  %47 = load ptr, ptr %46, align 8
  %48 = call ptr @of_node_get(ptr noundef %47) #6
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi ptr [ %48, %45 ], [ %44, %43 ]
  %51 = call ptr @of_get_cpu_state_node(ptr noundef %50, i32 noundef %29) #6
  %52 = icmp eq ptr %51, %27
  call void @of_node_put(ptr noundef %51) #6
  call void @of_node_put(ptr noundef %50) #6
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i32 @cpumask_next(i32 noundef %40, ptr noundef %12) #7
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %39, label %59

57:                                               ; preds = %49
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %27) #8
  br label %120

59:                                               ; preds = %53, %34
  %60 = icmp eq i32 %28, 10
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %120

63:                                               ; preds = %59
  %64 = add i32 %28, 1
  %65 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %66 = getelementptr inbounds %struct.of_device_id, ptr %30, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28, i32 8
  store ptr %67, ptr %68, align 8
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28, i32 10
  store ptr %69, ptr %70, align 8
  %71 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28, i32 5
  %72 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.3, ptr noundef %71, i32 noundef 1, i32 noundef 0) #6
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %85, label %74

74:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %75 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #6
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #6
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, ptr %5, align 4
  %82 = load i32, ptr %6, align 4
  %83 = add i32 %82, %81
  store i32 %83, ptr %71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %85

84:                                               ; preds = %77, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %101

85:                                               ; preds = %80, %63
  %86 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28, i32 7
  %87 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %27, ptr noundef nonnull @.str.6, ptr noundef %86, i32 noundef 1, i32 noundef 0) #6
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = call i32 @of_property_read_string(ptr noundef nonnull %27, ptr noundef nonnull @.str.7, ptr noundef nonnull %4) #6
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %27, align 4
  store ptr %93, ptr %4, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28, i32 4
  store i32 0, ptr %95, align 8
  %96 = call ptr @of_find_property(ptr noundef nonnull %27, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %95, align 8
  %100 = or i32 %99, 4
  store i32 %100, ptr %95, align 8
  br label %103

101:                                              ; preds = %85, %84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %27, i32 noundef -22) #8
  br label %120

103:                                              ; preds = %98, %94
  %104 = load ptr, ptr %27, align 4
  %105 = call ptr @strncpy(ptr noundef %65, ptr noundef %104, i32 noundef 15) #6
  %106 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %28, i32 1
  %107 = load ptr, ptr %4, align 4
  %108 = call ptr @strncpy(ptr noundef %106, ptr noundef %107, i32 noundef 31) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %109

109:                                              ; preds = %103, %32
  %110 = phi i32 [ %64, %103 ], [ %28, %32 ]
  call void @of_node_put(ptr noundef nonnull %27) #6
  %111 = add i32 %29, 1
  %112 = call ptr @of_get_cpu_state_node(ptr noundef %23, i32 noundef %111) #6
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %26

114:                                              ; preds = %109, %26
  %115 = phi i32 [ %29, %26 ], [ %111, %109 ]
  %116 = phi ptr [ %27, %26 ], [ null, %109 ]
  %117 = phi i32 [ -19, %26 ], [ 0, %109 ]
  %118 = phi i32 [ %28, %26 ], [ %110, %109 ]
  %119 = xor i1 %31, true
  br label %120

120:                                              ; preds = %114, %101, %61, %57, %22
  %121 = phi i32 [ %29, %101 ], [ %29, %61 ], [ %29, %57 ], [ 0, %22 ], [ %115, %114 ]
  %122 = phi ptr [ %27, %101 ], [ %27, %61 ], [ %27, %57 ], [ null, %22 ], [ %116, %114 ]
  %123 = phi i1 [ false, %101 ], [ true, %61 ], [ false, %57 ], [ true, %22 ], [ %119, %114 ]
  %124 = phi i32 [ -22, %101 ], [ 0, %61 ], [ -22, %57 ], [ 0, %22 ], [ %117, %114 ]
  %125 = phi i32 [ %64, %101 ], [ 10, %61 ], [ %28, %57 ], [ %2, %22 ], [ %118, %114 ]
  call void @of_node_put(ptr noundef %122) #6
  call void @of_node_put(ptr noundef %23) #6
  br i1 %123, label %126, label %130

126:                                              ; preds = %120
  %127 = icmp eq i32 %121, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  store i32 %125, ptr %129, align 8
  br label %130

130:                                              ; preds = %128, %126, %120, %3
  %131 = phi i32 [ -22, %3 ], [ %124, %120 ], [ %121, %128 ], [ 0, %126 ]
  ret i32 %131
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_state_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { cold nounwind }

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
!8 = !{!"auto-init"}
