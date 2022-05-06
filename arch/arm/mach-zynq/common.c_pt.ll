; ModuleID = '/llk/IR/arch/arm/mach-zynq/common.c_pt.bc'
source_filename = "../arch/arm/mach-zynq/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
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
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [21 x i8] c"Xilinx Zynq Platform\00", align 1
@zynq_dt_match = internal constant [2 x ptr] [ptr @.str.1, ptr null], align 4
@zynq_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_XILINX_EP107 = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @zynq_dt_match, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 4194304, i32 -4194305, ptr null, ptr @zynq_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @zynq_memory_init, ptr @zynq_map_io, ptr null, ptr @zynq_irq_init, ptr @zynq_timer_init, ptr @zynq_init_machine, ptr @zynq_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@zynq_scu_base = dso_local local_unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"xlnx,zynq-7000\00", align 1
@zynq_cortex_a9_scu_map = internal global %struct.map_desc { i32 0, i32 0, i32 256, i32 0 }, section ".init.data", align 4
@system_rev = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Xilinx Zynq\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@zynq_cpuidle_device = internal global %struct.platform_device { ptr @.str.7, i32 0, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"xlnx,zynq-devcfg-1.0\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\013%s: no devcfg node found\0A\00", align 1
@__func__.zynq_get_revision = private unnamed_addr constant [18 x i8] c"zynq_get_revision\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\013%s: Unable to map I/O memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"cpuidle-zynq\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_XILINX_EP107], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_memory_init() #0 section ".init.text" {
  %1 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 -1073741824, i32 -2130706432, i32 8454144) #4, !srcloc !8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @memblock_reserve(i32 noundef 0, i32 noundef 524288) #5
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_map_io() #0 section ".init.text" {
  tail call fastcc void @zynq_scu_map_io() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_irq_init() #0 section ".init.text" {
  %1 = tail call i32 @zynq_early_slcr_init() #5
  tail call void @irqchip_init() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_timer_init() #0 section ".init.text" {
  tail call void @zynq_clock_init() #5
  tail call void @of_clk_init(ptr noundef null) #5
  tail call void @timer_probe() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_init_machine() #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 28) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = tail call fastcc i32 @zynq_get_revision() #6
  store i32 %5, ptr @system_rev, align 4
  %6 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2) #5
  %7 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = load i32, ptr @system_rev, align 4
  %9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %8) #5
  %10 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 2
  store ptr %9, ptr %10, align 8
  %11 = tail call i32 @zynq_slcr_get_device_id() #5
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %11) #5
  %13 = getelementptr inbounds %struct.soc_device_attribute, ptr %2, i32 0, i32 4
  store ptr %12, ptr %13, align 8
  %14 = tail call ptr @soc_device_register(ptr noundef nonnull %2) #5
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %17) #5
  %18 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %18) #5
  %19 = load ptr, ptr %13, align 8
  tail call void @kfree(ptr noundef %19) #5
  tail call void @kfree(ptr noundef nonnull %2) #5
  br label %22

20:                                               ; preds = %4
  %21 = tail call ptr @soc_device_to_device(ptr noundef %14) #5
  br label %22

22:                                               ; preds = %20, %16, %0
  %23 = phi ptr [ null, %16 ], [ %21, %20 ], [ null, %0 ]
  %24 = tail call i32 @of_platform_default_populate(ptr noundef null, ptr noundef null, ptr noundef %23) #5
  %25 = tail call i32 @platform_device_register(ptr noundef nonnull @zynq_cpuidle_device) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_init_late() #0 section ".init.text" {
  tail call void asm sideeffect "mrc  p15, 0, r12, c15, c0, 0\0Aorr  r12, r12, #1\0Amcr  p15, 0, r12, c15, c0, 0\0A", "~{r12}"() #5, !srcloc !9
  tail call void @zynq_pm_late_init() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @zynq_scu_map_io() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #4, !srcloc !10
  %2 = lshr i32 %1, 12
  store i32 %2, ptr getelementptr inbounds (%struct.map_desc, ptr @zynq_cortex_a9_scu_map, i32 0, i32 1), align 4
  store i32 %1, ptr @zynq_cortex_a9_scu_map, align 4
  tail call void @iotable_init(ptr noundef nonnull @zynq_cortex_a9_scu_map, i32 noundef 1) #5
  %3 = inttoptr i32 %1 to ptr
  store ptr %3, ptr @zynq_scu_base, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-zynq/common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 164, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

6:                                                ; preds = %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynq_early_slcr_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irqchip_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_clock_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @zynq_get_revision() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.zynq_get_revision) #8
  br label %14

5:                                                ; preds = %0
  %6 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.zynq_get_revision) #8
  br label %14

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %13 = lshr i32 %12, 28
  tail call void @iounmap(ptr noundef nonnull %6) #5
  br label %14

14:                                               ; preds = %10, %8, %3
  %15 = phi i32 [ %13, %10 ], [ -1, %8 ], [ -1, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zynq_slcr_get_device_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_to_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_pm_late_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{i64 2147907303, i64 2147907326, i64 2147907358, i64 2147907390, i64 2147907428, i64 2147907458}
!9 = !{i64 6136412, i64 6136454, i64 6136484}
!10 = !{i64 6114226}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2153624618, i64 2153625110, i64 2153624655, i64 2153624711, i64 2153624745, i64 2153624769, i64 2153624810, i64 2153624831, i64 2153624859, i64 2153624893}
!13 = !{i64 364059}
!14 = !{i64 2153622582}
