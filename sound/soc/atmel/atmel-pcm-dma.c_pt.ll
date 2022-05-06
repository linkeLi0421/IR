; ModuleID = '/llk/IR/sound/soc/atmel/atmel-pcm-dma.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-pcm-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pcm_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pcm_dma_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pcm_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.atmel_pcm_dma_params = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.atmel_ssc_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }

@atmel_dmaengine_pcm_config = internal constant %struct.snd_dmaengine_pcm_config { ptr @atmel_pcm_configure_dma, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @atmel_pcm_dma_hardware, i32 65536 }, align 4
@__kstrtab_atmel_pcm_dma_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pcm_dma_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pcm_dma_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pcm_dma_platform_register to i32), ptr @__kstrtab_atmel_pcm_dma_platform_register, ptr @__kstrtabns_atmel_pcm_dma_platform_register }, section "___ksymtab+atmel_pcm_dma_platform_register", align 4
@__UNIQUE_ID_author234 = internal constant [38 x i8] c"author=Bo Shen <voice.shen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [39 x i8] c"description=Atmel DMA based PCM module\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@atmel_pcm_dma_hardware = internal constant %struct.snd_pcm_hardware { i32 786691, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 524288, i32 256, i32 131070, i32 8, i32 1024, i32 0 }, align 8
@.str = private unnamed_addr constant [53 x i8] c"\013atmel-pcm: hwparams to dma slave configure failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"\014atmel-pcm: buffer %s on %s (SSC_SR=%#x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"underrun\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"overrun\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license236, ptr @__ksymtab_atmel_pcm_dma_platform_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_pcm_dma_platform_register(ptr noundef %0) #0 {
  %2 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %0, ptr noundef nonnull @atmel_dmaengine_pcm_config, i32 noundef 0) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pcm_configure_dma(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 7
  %13 = getelementptr inbounds %struct.snd_soc_dai, ptr %8, i32 0, i32 8
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  br label %33

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.ssc_device, ptr %17, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 36
  %26 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 6
  store i32 1, ptr %27, align 4
  %28 = load i32, ptr %23, align 4
  %29 = add i32 %28, 32
  %30 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %15, i32 0, i32 6
  store ptr @atmel_pcm_dma_irq, ptr %32, align 4
  br label %33

33:                                               ; preds = %22, %20
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_pcm_dma_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 7
  %12 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 8
  %13 = select i1 %10, ptr %11, ptr %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 37
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 8
  switch i32 %26, label %33 [
    i32 3, label %28
    i32 5, label %27
  ]

27:                                               ; preds = %21
  br i1 %10, label %28, label %33

28:                                               ; preds = %27, %21
  %29 = select i1 %10, ptr @.str.2, ptr @.str.3
  %30 = load ptr, ptr %14, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %29, ptr noundef %30, i32 noundef %0) #4
  %32 = load ptr, ptr %15, align 4
  br label %33

33:                                               ; preds = %28, %27, %21
  %34 = phi ptr [ %16, %21 ], [ %32, %28 ], [ %16, %27 ]
  %35 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %14, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ssc_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #3, !srcloc !8
  %41 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %1) #3
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr inbounds %struct.ssc_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #3, !srcloc !9
  %47 = load ptr, ptr %37, align 4
  %48 = getelementptr inbounds %struct.ssc_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 64
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !9
  br label %52

52:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 5012980}
!9 = !{i64 5013398}
