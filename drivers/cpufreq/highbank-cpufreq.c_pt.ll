; ModuleID = '/llk/IR/drivers/cpufreq/highbank-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/highbank-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__mod_of__hb_cpufreq_of_match_device_table = dso_local local_unnamed_addr constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,highbank\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,ecx-2000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author162 = internal constant [51 x i8] c"author=Mark Langsdorf <mark.langsdorf@calxeda.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description163 = internal constant [44 x i8] c"description=Calxeda Highbank cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@__const.hb_cpufreq_driver_init.devinfo = private unnamed_addr constant { ptr, ptr, i8, [3 x i8], ptr, i32, ptr, i32, ptr, i32, [4 x i8], i64, ptr, [4 x i8] } { ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @.str, i32 0, ptr null, i32 0, ptr null, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, [4 x i8] zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"calxeda,highbank\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"calxeda,ecx-2000\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\013highbank_cpufreq: failed to get highbank cpufreq device\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"\013highbank_cpufreq: failed to find highbank cpufreq node\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\013highbank_cpufreq: failed to get cpu0 clock: %d\0A\00", align 1
@hb_cpufreq_clk_nb = internal global %struct.notifier_block { ptr @hb_cpufreq_clk_notify, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"\013highbank_cpufreq: failed to register clk notifier: %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_license164], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = alloca %struct.platform_device_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) @__const.hb_cpufreq_driver_init.devinfo, i32 56, i1 false)
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %4, %0
  %8 = tail call ptr @get_cpu_device(i32 noundef 0) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %34

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call ptr @of_node_get(ptr noundef %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %34

19:                                               ; preds = %12
  %20 = tail call ptr @clk_get(ptr noundef nonnull %8, ptr noundef null) #6
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %23) #7
  br label %32

25:                                               ; preds = %19
  %26 = tail call i32 @clk_notifier_register(ptr noundef %20, ptr noundef nonnull @hb_cpufreq_clk_nb) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %26) #7
  br label %32

30:                                               ; preds = %25
  %31 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #6
  br label %32

32:                                               ; preds = %30, %28, %22
  %33 = phi i32 [ %23, %22 ], [ %26, %28 ], [ 0, %30 ]
  call void @of_node_put(ptr noundef nonnull %15) #6
  br label %34

34:                                               ; preds = %32, %17, %10, %4
  %35 = phi i32 [ %33, %32 ], [ -2, %17 ], [ -19, %10 ], [ -19, %4 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #6
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hb_cpufreq_clk_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [7 x i32], align 4
  %5 = alloca [7 x i32], align 4
  switch i32 %1, label %48 [
    i32 1, label %6
    i32 2, label %27
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = getelementptr inbounds i32, ptr %5, i32 1
  %14 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  store i32 -2147483647, ptr %5, align 4
  %15 = udiv i32 %8, 1000000
  store i32 %15, ptr %13, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %14, i8 0, i32 20, i1 false) #6
  %16 = call i32 @pl320_ipc_transmit(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %22, %12
  %19 = phi i32 [ %20, %22 ], [ 0, %12 ]
  %20 = add nuw nsw i32 %19, 1
  %21 = icmp eq i32 %20, 17
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  store i32 -2147483647, ptr %5, align 4
  %24 = udiv i32 %23, 1000000
  store i32 %24, ptr %13, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %14, i8 0, i32 20, i1 false) #6
  %25 = call i32 @pl320_ipc_transmit(ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %18

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = getelementptr inbounds i32, ptr %4, i32 1
  %35 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  store i32 -2147483647, ptr %4, align 4
  %36 = udiv i32 %29, 1000000
  store i32 %36, ptr %34, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %35, i8 0, i32 20, i1 false) #6
  %37 = call i32 @pl320_ipc_transmit(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %43, %33
  %40 = phi i32 [ %41, %43 ], [ 0, %33 ]
  %41 = add nuw nsw i32 %40, 1
  %42 = icmp eq i32 %41, 17
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  store i32 -2147483647, ptr %4, align 4
  %45 = udiv i32 %44, 1000000
  store i32 %45, ptr %34, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %35, i8 0, i32 20, i1 false) #6
  %46 = call i32 @pl320_ipc_transmit(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %39

48:                                               ; preds = %43, %39, %33, %27, %22, %18, %12, %6, %3
  %49 = phi i32 [ 0, %3 ], [ 0, %27 ], [ 0, %6 ], [ 0, %12 ], [ 0, %33 ], [ 0, %22 ], [ 32770, %18 ], [ 0, %43 ], [ 32770, %39 ]
  ret i32 %49
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl320_ipc_transmit(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
