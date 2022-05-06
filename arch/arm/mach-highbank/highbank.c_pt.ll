; ModuleID = '/llk/IR/arch/arm/mach-highbank/highbank.c_pt.bc'
source_filename = "../arch/arm/mach-highbank/highbank.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.dma_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Highbank\00", align 1
@highbank_match = internal constant [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr null], section ".init.rodata", align 4
@__mach_desc_HIGHBANK = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @highbank_match, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 -1, ptr @highbank_l2c310_write_sec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @highbank_init_irq, ptr null, ptr @highbank_init, ptr null, ptr null, ptr @highbank_restart }, section ".arch.info.init", align 4
@sregs_base = dso_local local_unnamed_addr global ptr null, align 4
@scu_base_addr = dso_local local_unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"calxeda,highbank\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"calxeda,ecx-2000\00", align 1
@highbank_l2c310_write_sec.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"arch/arm/mach-highbank/highbank.c\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Highbank L2C310: ignoring write to reg 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"arm,cortex-a9\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"calxeda,hb-sregs\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@highbank_platform_nb = internal global %struct.notifier_block { ptr @highbank_platform_notifier, ptr null, i32 0 }, align 4
@amba_bustype = external dso_local global %struct.bus_type, align 4
@highbank_amba_nb = internal global %struct.notifier_block { ptr @highbank_platform_notifier, ptr null, i32 0 }, align 4
@hb_keys_nb = internal global %struct.notifier_block { ptr @hb_keys_notifier, ptr null, i32 0 }, align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@highbank_cpuidle_device = internal global %struct.platform_device { ptr @.str.12, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"calxeda,hb-ahci\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"calxeda,hb-sdhci\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"arm,pl330\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"calxeda,hb-xgmac\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@arm_coherent_dma_ops = external dso_local constant %struct.dma_map_ops, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"cpuidle-calxeda\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_HIGHBANK], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @highbank_l2c310_write_sec(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 256
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @highbank_smc1(i32 noundef 258, i32 noundef %0) #5
  br label %8

5:                                                ; preds = %2
  %6 = load i1, ptr @highbank_l2c310_write_sec.__already_done, align 1
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %5
  store i1 true, ptr @highbank_l2c310_write_sec.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %1) #5
  br label %8

8:                                                ; preds = %7, %5, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @highbank_init_irq() #1 section ".init.text" {
  tail call void @irqchip_init() #5
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #6, !srcloc !9
  %5 = tail call ptr @ioremap(i32 noundef %4, i32 noundef 4096) #5
  store ptr %5, ptr @scu_base_addr, align 4
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @highbank_init() #1 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #5
  %2 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #5
  store ptr %2, ptr @sregs_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !10

4:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 9, ptr noundef null) #5
  br label %5

5:                                                ; preds = %4, %0
  store ptr @highbank_power_off, ptr @pm_power_off, align 4
  tail call void @highbank_pm_init() #5
  %6 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @highbank_platform_nb) #5
  %7 = tail call i32 @bus_register_notifier(ptr noundef nonnull @amba_bustype, ptr noundef nonnull @highbank_amba_nb) #5
  %8 = tail call i32 @pl320_ipc_register_notifier(ptr noundef nonnull @hb_keys_nb) #5
  %9 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @platform_device_register(ptr noundef nonnull @highbank_cpuidle_device) #5
  br label %13

13:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @highbank_restart(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @highbank_smc1(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @highbank_power_off() #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %1 = load ptr, ptr @sregs_base, align 4
  %2 = getelementptr i8, ptr %1, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 3) #5, !srcloc !12
  %3 = load ptr, ptr @scu_base_addr, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i32 @scu_power_mode(ptr noundef nonnull %3, i32 noundef 3) #5
  br label %18

7:                                                ; preds = %0
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @sregs_base, align 4
  %14 = shl i32 %12, 2
  %15 = and i32 %14, 1020
  %16 = add nuw nsw i32 %15, 512
  %17 = getelementptr i8, ptr %13, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #5, !srcloc !12
  br label %18

18:                                               ; preds = %7, %5
  br label %19

19:                                               ; preds = %19, %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %21 = tail call i32 %20() #5
  br label %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @highbank_pm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl320_ipc_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @highbank_platform_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.7) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8
  %12 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.8) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8
  %16 = tail call i32 @of_device_is_compatible(ptr noundef %15, ptr noundef nonnull @.str.9) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8
  %20 = tail call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef nonnull @.str.10) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %2, i32 -16
  %24 = tail call ptr @platform_get_resource(ptr noundef %23, i32 noundef 512, i32 noundef 0) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 4
  switch i32 %27, label %42 [
    i32 -720896, label %29
    i32 -716800, label %28
  ]

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %26, %14, %10, %5
  %30 = phi i32 [ 0, %26 ], [ 32, %14 ], [ 24, %10 ], [ 12, %5 ], [ 4, %28 ]
  %31 = load ptr, ptr %6, align 8
  %32 = tail call ptr @of_find_property(ptr noundef %31, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr @sregs_base, align 4
  %36 = getelementptr i8, ptr %35, i32 %30
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %38 = or i32 %37, 65281
  %39 = load ptr, ptr @sregs_base, align 4
  %40 = getelementptr i8, ptr %39, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !12
  %41 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 15
  store ptr @arm_coherent_dma_ops, ptr %41, align 8
  br label %42

42:                                               ; preds = %34, %29, %26, %22, %18, %3
  %43 = phi i32 [ 0, %3 ], [ 1, %34 ], [ 1, %29 ], [ 0, %18 ], [ 0, %22 ], [ 0, %26 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hb_keys_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq i32 %1, 4096
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  switch i32 %6, label %9 [
    i32 116, label %7
    i32 65535, label %8
  ]

7:                                                ; preds = %5
  tail call void @orderly_poweroff(i1 noundef zeroext false) #5
  br label %9

8:                                                ; preds = %5
  tail call void @ctrl_alt_del() #5
  br label %9

9:                                                ; preds = %8, %7, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_poweroff(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ctrl_alt_del() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!9 = !{i64 774}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154308863}
!12 = !{i64 2967088}
!13 = !{i64 2967506}
!14 = !{i64 2154313757}
!15 = !{i64 2154313950}
