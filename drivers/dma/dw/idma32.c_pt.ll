; ModuleID = '/llk/IR/drivers/dma/dw/idma32.c_pt.bc'
source_filename = "../drivers/dma/dw/idma32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idma32_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22idma32_dma_probe\22\09\09\09\09\09"
module asm "__kstrtabns_idma32_dma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idma32_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22idma32_dma_remove\22\09\09\09\09\09"
module asm "__kstrtabns_idma32_dma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dw_dma_chan = type { %struct.dma_chan, ptr, i8, i8, i32, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i32, i32, i8, i32, %struct.dw_dma_slave, %struct.dma_slave_config }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.dw_dma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_regs = type { [8 x %struct.dw_dma_chan_regs], %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_irq_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_idma32_dma_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_idma32_dma_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_idma32_dma_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idma32_dma_probe to i32), ptr @__kstrtab_idma32_dma_probe, ptr @__kstrtabns_idma32_dma_probe }, section "___ksymtab_gpl+idma32_dma_probe", align 4
@__kstrtab_idma32_dma_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_idma32_dma_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_idma32_dma_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idma32_dma_remove to i32), ptr @__kstrtab_idma32_dma_remove, ptr @__kstrtabns_idma32_dma_remove }, section "___ksymtab_gpl+idma32_dma_remove", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str = private unnamed_addr constant [14 x i8] c"idma32:dmac%d\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_idma32_dma_probe, ptr @__ksymtab_idma32_dma_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @idma32_dma_probe(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 356, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @idma32_initialize_chan_generic, ptr @idma32_initialize_chan_xbar
  %13 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 8
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 9
  store ptr @idma32_suspend_chan, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 10
  store ptr @idma32_resume_chan, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 11
  store ptr @idma32_prepare_ctllo, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 12
  store ptr @idma32_encode_maxburst, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 13
  store ptr @idma32_bytes2block, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 14
  store ptr @idma32_block2bytes, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 15
  store ptr @idma32_set_device_name, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 16
  store ptr @idma32_disable, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 17
  store ptr @idma32_enable, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 5
  store ptr %3, ptr %23, align 4
  %24 = tail call i32 @do_dma_probe(ptr noundef %0) #9
  br label %25

25:                                               ; preds = %5, %1
  %26 = phi i32 [ %24, %5 ], [ -12, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_initialize_chan_xbar(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 5120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %7 = and i32 %6, -8
  %8 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %10) #9, !srcloc !11
  %11 = load i32, ptr %8, align 4
  %12 = shl i32 %11, 2
  %13 = add i32 %12, 4096
  %14 = getelementptr i8, ptr %4, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %16 = and i32 %15, -892
  %17 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %88 [
    i32 1, label %20
    i32 2, label %19
  ]

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %1
  %21 = phi i32 [ 257, %19 ], [ 514, %1 ]
  %22 = or i32 %16, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %23 = load i32, ptr %8, align 4
  %24 = shl i32 %23, 2
  %25 = add i32 %24, 4096
  %26 = getelementptr i8, ptr %4, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #9, !srcloc !11
  %27 = load i32, ptr %8, align 4
  %28 = shl i32 %27, 2
  %29 = add i32 %28, 4864
  %30 = getelementptr i8, ptr %4, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %32 = and i32 %31, -65536
  %33 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, @pci_bus_type
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %34, i32 -108
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36, %20
  %44 = phi i32 [ %42, %40 ], [ 0, %36 ], [ 0, %20 ]
  %45 = or i32 %44, %32
  %46 = load i32, ptr %17, align 4
  switch i32 %46, label %88 [
    i32 1, label %47
    i32 2, label %49
  ]

47:                                               ; preds = %43
  %48 = or i32 %45, 65536
  br label %51

49:                                               ; preds = %43
  %50 = and i32 %45, -65537
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %50, %49 ], [ %48, %47 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %53 = load i32, ptr %8, align 4
  %54 = shl i32 %53, 2
  %55 = add i32 %54, 4864
  %56 = getelementptr i8, ptr %4, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #9, !srcloc !11
  %57 = load i32, ptr %17, align 4
  switch i32 %57, label %88 [
    i32 1, label %58
    i32 2, label %63
  ]

58:                                               ; preds = %51
  %59 = load i32, ptr %8, align 4
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 1
  %62 = load i8, ptr %61, align 4
  br label %68

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = load i32, ptr %8, align 4
  %67 = trunc i32 %66 to i8
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i8 [ %67, %63 ], [ %62, %58 ]
  %70 = phi i8 [ %65, %63 ], [ %60, %58 ]
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 4
  %73 = and i32 %72, 240
  %74 = zext i8 %69 to i32
  %75 = and i32 %74, 15
  %76 = shl i32 %71, 26
  %77 = and i32 %76, -1073741824
  %78 = shl nuw i32 %74, 24
  %79 = and i32 %78, 805306368
  %80 = or i32 %79, %75
  %81 = or i32 %80, %73
  %82 = or i32 %81, %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %83 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %84, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 3) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %86, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %82) #9, !srcloc !11
  br label %88

88:                                               ; preds = %68, %51, %43, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_initialize_chan_generic(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 4
  %6 = and i32 %5, 240
  %7 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 15
  %11 = or i32 %6, %10
  %12 = shl i32 %4, 26
  %13 = and i32 %12, -1073741824
  %14 = or i32 %11, %13
  %15 = shl nuw i32 %9, 24
  %16 = and i32 %15, 805306368
  %17 = or i32 %14, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %18 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %19, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 3) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %21, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %17) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_suspend_chan(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %4, i32 0, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %7 = or i32 %6, 1024
  %8 = select i1 %1, i32 %7, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %9 = or i32 %8, 256
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %10, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_resume_chan(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %4, i32 0, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %7 = and i32 %6, -1281
  %8 = select i1 %1, i32 %7, i32 %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %9 = and i32 %8, -257
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %10, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @idma32_prepare_ctllo(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %15 [
    i32 2, label %4
    i32 1, label %9
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 14
  %8 = and i32 %7, 4177920
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 11
  %13 = and i32 %12, 522240
  %14 = or i32 %13, 402653184
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i32 [ 0, %9 ], [ %8, %4 ], [ 0, %1 ]
  %17 = phi i32 [ %14, %9 ], [ 402653184, %4 ], [ 402653184, %1 ]
  %18 = or i32 %17, %16
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @idma32_encode_maxburst(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp ugt i32 %3, 1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #9, !range !24
  %6 = sub nsw i32 31, %5
  %7 = select i1 %4, i32 %6, i32 0
  store i32 %7, ptr %1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @idma32_bytes2block(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %1)
  store i32 %7, ptr %3, align 4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @idma32_block2bytes(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = and i32 %1, 131071
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_set_device_name(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 1
  %4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %3, i32 noundef 20, ptr noundef nonnull @.str, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_disable(ptr noundef %0) #0 {
  tail call void @do_dw_dma_off(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr %struct.dw_dma_regs, ptr %3, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 67633216) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 67633216) #9, !srcloc !11
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dw_dma_regs, ptr %6, i32 0, i32 38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %8 = getelementptr %struct.dw_dma_regs, ptr %6, i32 0, i32 39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 67633216) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 67633216) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @idma32_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %5 = getelementptr %struct.dw_dma_regs, ptr %3, i32 0, i32 41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 67633216) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 67633216) #9, !srcloc !11
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dw_dma_regs, ptr %6, i32 0, i32 38
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %8 = getelementptr %struct.dw_dma_regs, ptr %6, i32 0, i32 39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 67633216) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !26
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 67633216) #9, !srcloc !11
  tail call void @do_dw_dma_on(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @idma32_dma_remove(ptr noundef %0) #0 {
  %2 = tail call i32 @do_dma_remove(ptr noundef %0) #9
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_dma_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_off(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_dw_dma_on(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }

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
!8 = !{i64 5009316}
!9 = !{i64 2153293599}
!10 = !{i64 2153294467}
!11 = !{i64 5008898}
!12 = !{i64 2153295047}
!13 = !{i64 2153297651}
!14 = !{i64 2153298259}
!15 = !{i64 2153299360}
!16 = !{i64 2153299906}
!17 = !{i64 2153300321}
!18 = !{i64 2153300898}
!19 = !{i64 2153301313}
!20 = !{i64 2153301883}
!21 = !{i64 2153302185}
!22 = !{i64 2153302777}
!23 = !{i64 2153303083}
!24 = !{i32 0, i32 33}
!25 = !{i64 2153279395}
!26 = !{i64 2153279699}
