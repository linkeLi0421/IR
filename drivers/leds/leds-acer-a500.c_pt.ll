; ModuleID = '/llk/IR/drivers/leds/leds-acer-a500.c_pt.bc'
source_filename = "../drivers/leds/leds-acer-a500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.a500_led = type { %struct.led_classdev, ptr, ptr, ptr }

@__UNIQUE_ID_description162 = internal constant [61 x i8] c"description=LED driver for Acer Iconia Tab A500 Power Button\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [42 x i8] c"author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias164 = internal constant [37 x i8] c"alias=platform:acer-a500-iconia-leds\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@a500_ec_leds_driver = internal global %struct.platform_driver { ptr @a500_ec_leds_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [22 x i8] c"acer-a500-iconia-leds\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"KB930\00", align 1
@a500_ec_leds_reset_seq = internal constant [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 64, i32 0, i32 100000 }, %struct.reg_sequence { i32 90, i32 0, i32 100000 }], align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"power:white\00", align 1
@a500_ec_white_led_enable_seq = internal constant [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 66, i32 0, i32 100000 }], align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"power:orange\00", align 1
@a500_ec_orange_led_enable_seq = internal constant [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 67, i32 0, i32 100000 }], align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to register white LED\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to register orange LED\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias164, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description162, ptr @__UNIQUE_ID_license165], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @a500_ec_leds_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @a500_ec_leds_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_leds_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @regmap_multi_reg_write(ptr noundef nonnull %5, ptr noundef nonnull @a500_ec_leds_reset_seq, i32 noundef 2) #7
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 204, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  store ptr @.str.2, ptr %9, align 4
  %12 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 6
  store ptr @a500_ec_led_brightness_set, ptr %12, align 4
  %13 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 3
  store i32 65536, ptr %13, align 4
  %14 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 2
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.a500_led, ptr %9, i32 0, i32 1
  store ptr @a500_ec_white_led_enable_seq, ptr %15, align 4
  %16 = getelementptr inbounds %struct.a500_led, ptr %9, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 204, i32 noundef 3520) #7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %11
  store ptr @.str.3, ptr %17, align 4
  %20 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 6
  store ptr @a500_ec_led_brightness_set, ptr %20, align 4
  %21 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 3
  store i32 65536, ptr %21, align 4
  %22 = getelementptr inbounds %struct.led_classdev, ptr %17, i32 0, i32 2
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.a500_led, ptr %17, i32 0, i32 1
  store ptr @a500_ec_orange_led_enable_seq, ptr %23, align 4
  %24 = getelementptr inbounds %struct.a500_led, ptr %17, i32 0, i32 3
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.a500_led, ptr %9, i32 0, i32 2
  store ptr %17, ptr %25, align 4
  %26 = getelementptr inbounds %struct.a500_led, ptr %17, i32 0, i32 2
  store ptr %9, ptr %26, align 4
  %27 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %2, ptr noundef nonnull %9, ptr noundef null) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %2, ptr noundef nonnull %17, ptr noundef null) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %19
  %33 = phi ptr [ @.str.4, %19 ], [ @.str.5, %29 ]
  %34 = phi i32 [ %27, %19 ], [ %30, %29 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %33) #8
  br label %35

35:                                               ; preds = %32, %29, %11, %7, %1
  %36 = phi i32 [ -22, %1 ], [ -12, %7 ], [ -12, %11 ], [ 0, %29 ], [ %34, %32 ]
  ret i32 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_ec_led_brightness_set(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [2 x %struct.reg_sequence], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !8
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.a500_led, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef align 4 dereferenceable(12) %7, i32 12, i1 false)
  br label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.a500_led, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.led_classdev, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @a500_ec_leds_reset_seq, i32 12, i1 false)
  %15 = getelementptr inbounds [2 x %struct.reg_sequence], ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.a500_led, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %15, ptr noundef align 4 dereferenceable(12) %17, i32 12, i1 false)
  br label %18

18:                                               ; preds = %8, %5
  %19 = phi i32 [ 1, %5 ], [ %14, %8 ]
  %20 = getelementptr inbounds %struct.a500_led, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @regmap_multi_reg_write(ptr noundef %21, ptr noundef nonnull %3, i32 noundef %19) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
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
