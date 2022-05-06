; ModuleID = '/llk/IR/drivers/dma/dw/core.c_pt.bc'
source_filename = "../drivers/dma/dw/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_dma_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_dma_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dw_dma_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_dw_dma_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22do_dw_dma_disable\22\09\09\09\09\09"
module asm "__kstrtabns_do_dw_dma_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_dw_dma_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22do_dw_dma_enable\22\09\09\09\09\09"
module asm "__kstrtabns_do_dw_dma_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
%struct.dw_dma_chan = type { %struct.dma_chan, ptr, i8, i8, i32, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i32, i32, i8, i32, %struct.dw_dma_slave, %struct.dma_slave_config }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dw_dma = type { %struct.dma_device, [20 x i8], ptr, ptr, %struct.tasklet_struct, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dw_dma_regs = type { [8 x %struct.dw_dma_chan_regs], %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, %struct.dw_dma_irq_regs, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_irq_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.dw_dma_platform_data = type { i32, i32, i32, i32, i32, [4 x i32], [8 x i32], [8 x i32], i32, i32 }
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
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dw_desc = type { %struct.dw_lli, %struct.list_head, %struct.list_head, %struct.dma_async_tx_descriptor, i32, i32, i32 }
%struct.dw_lli = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_caps = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__kstrtab_dw_dma_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_dma_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_dma_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_dma_filter to i32), ptr @__kstrtab_dw_dma_filter, ptr @__kstrtabns_dw_dma_filter }, section "___ksymtab_gpl+dw_dma_filter", align 4
@.str = private unnamed_addr constant [36 x i8] c"No memory for descriptors dma pool\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"DesignWare DMA Controller, %d channels\0A\00", align 1
@__kstrtab_do_dw_dma_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_dw_dma_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_do_dw_dma_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_dw_dma_disable to i32), ptr @__kstrtab_do_dw_dma_disable, ptr @__kstrtabns_do_dw_dma_disable }, section "___ksymtab_gpl+do_dw_dma_disable", align 4
@__kstrtab_do_dw_dma_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_dw_dma_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_do_dw_dma_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_dw_dma_enable to i32), ptr @__kstrtab_do_dw_dma_enable, ptr @__kstrtabns_do_dw_dma_enable }, section "___ksymtab_gpl+do_dw_dma_enable", align 4
@__UNIQUE_ID_file237 = internal constant [46 x i8] c"dw_dmac_core.file=drivers/dma/dw/dw_dmac_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"dw_dmac_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [72 x i8] c"dw_dmac_core.description=Synopsys DesignWare DMA Controller core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [47 x i8] c"dw_dmac_core.author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [54 x i8] c"dw_dmac_core.author=Viresh Kumar <vireshk@kernel.org>\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"drivers/dma/dw/core.c\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s %s: Bad descriptor submitted for DMA!\0A  cookie: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s: BUG: Attempted to start non-idle channel\0A\00", align 1
@__func__.dwc_dostart = private unnamed_addr constant [12 x i8] c"dwc_dostart\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"BUG: Attempted to start new LLP transfer inside ongoing one\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"  SAR: 0x%x DAR: 0x%x LLP: 0x%x CTL: 0x%x:%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"  desc: s0x%x d0x%x l0x%x c0x%x:%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"BUG: All descriptors done, but channel not idle!\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"BUG: XFER bit set, but channel not idle!\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"BUG: Unexpected interrupts pending: 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Wrong controller-specific data\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"not enough descriptors available. Direction %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__ksymtab_do_dw_dma_disable, ptr @__ksymtab_do_dw_dma_enable, ptr @__ksymtab_dw_dma_filter], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dw_dma_filter(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dw_dma_slave, ptr %1, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, %10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %18, ptr noundef align 4 dereferenceable(12) %1, i32 12, i1 false)
  br label %19

19:                                               ; preds = %17, %12, %2
  %20 = phi i1 [ true, %17 ], [ false, %2 ], [ false, %12 ]
  ret i1 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_dw_dma_off(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !8
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !10
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dw_dma_regs, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !11
  tail call void @arm_heavy_mb() #10
  %11 = load i8, ptr %5, align 4
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.dw_dma_regs, ptr %14, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %16 = load i8, ptr %5, align 4
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.dw_dma_regs, ptr %19, i32 0, i32 3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %21 = load i8, ptr %5, align 4
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.dw_dma_regs, ptr %24, i32 0, i32 3, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %26 = load i8, ptr %5, align 4
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.dw_dma_regs, ptr %29, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !9
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.dw_dma_regs, ptr %31, i32 0, i32 19
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %36, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !18
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.dw_dma_regs, ptr %37, i32 0, i32 19
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %36

42:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_dw_dma_on(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma_regs, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_dma_probe(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 108, i32 noundef 3520) #10
  %6 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 18
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %249, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 2
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #10
  %14 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %8
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.dw_dma_regs, ptr %18, i32 0, i32 35
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %21 = and i32 %20, 268435456
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %245, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 4
  %25 = lshr i32 %20, 8
  %26 = and i32 %25, 7
  %27 = add nuw nsw i32 %26, 1
  %28 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %24, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = lshr i32 %20, 11
  %30 = and i32 %29, 3
  %31 = add nuw nsw i32 %30, 1
  store i32 %31, ptr %24, align 4
  br label %32

32:                                               ; preds = %32, %23
  %33 = phi i32 [ %40, %32 ], [ 0, %23 ]
  %34 = shl i32 %33, 1
  %35 = add i32 %34, 15
  %36 = lshr i32 %20, %35
  %37 = and i32 %36, 3
  %38 = shl nuw nsw i32 4, %37
  %39 = getelementptr %struct.dw_dma_platform_data, ptr %24, i32 0, i32 5, i32 %33
  store i32 %38, ptr %39, align 4
  %40 = add nuw i32 %33, 1
  %41 = load i32, ptr %24, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %32, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr inbounds %struct.dw_dma_regs, ptr %44, i32 0, i32 34
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %47 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %24, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %24, i32 0, i32 2
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %24, i32 0, i32 3
  store i32 0, ptr %49, align 4
  br label %57

50:                                               ; preds = %8
  %51 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %15, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 8
  br i1 %53, label %245, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %55, ptr noundef nonnull align 4 dereferenceable(108) %15, i32 108, i1 false)
  %56 = load ptr, ptr %6, align 4
  br label %57

57:                                               ; preds = %54, %43
  %58 = phi ptr [ %56, %54 ], [ %24, %43 ]
  %59 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %60, i32 180) #10
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %63, label %65, !prof !22

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 5
  store ptr null, ptr %64, align 4
  br label %245

65:                                               ; preds = %57
  %66 = load ptr, ptr %0, align 4
  %67 = extractvalue { i32, i1 } %61, 0
  %68 = tail call noalias ptr @devm_kmalloc(ptr noundef %66, i32 noundef %67, i32 noundef 3520) #10
  %69 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 5
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %245, label %71

71:                                               ; preds = %65
  %72 = load i32, ptr %59, align 4
  %73 = shl nsw i32 -1, %72
  %74 = trunc i32 %73 to i8
  %75 = xor i8 %74, -1
  %76 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 6
  store i8 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 16
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %3) #10
  %79 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 15
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  tail call void %80(ptr noundef %3, i32 noundef %82) #10
  %83 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 1
  %84 = load ptr, ptr %0, align 4
  %85 = tail call ptr @dmam_pool_create(ptr noundef %83, ptr noundef %84, i32 noundef 116, i32 noundef 4, i32 noundef 0) #10
  %86 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 3
  store ptr %85, ptr %86, align 4
  %87 = icmp eq ptr %85, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %71
  %89 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str) #11
  br label %245

90:                                               ; preds = %71
  %91 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 4
  tail call void @tasklet_setup(ptr noundef %91, ptr noundef nonnull @dw_dma_tasklet) #10
  %92 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @request_threaded_irq(i32 noundef %93, ptr noundef nonnull @dw_dma_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %83, ptr noundef %3) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %245

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3, i32 1
  store ptr %97, ptr %98, align 4
  %99 = load i32, ptr %59, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %188, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %58, i32 0, i32 2
  %103 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %58, i32 0, i32 3
  %104 = getelementptr inbounds %struct.dw_dma_platform_data, ptr %58, i32 0, i32 4
  br label %105

105:                                              ; preds = %182, %101
  %106 = phi i32 [ 0, %101 ], [ %185, %182 ]
  %107 = load ptr, ptr %69, align 4
  %108 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106
  store ptr %3, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dma_chan, ptr %108, i32 0, i32 2
  store i32 1, ptr %109, align 4
  %110 = getelementptr inbounds %struct.dma_chan, ptr %108, i32 0, i32 3
  store i32 1, ptr %110, align 4
  %111 = load i32, ptr %102, align 4
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr inbounds %struct.dma_chan, ptr %108, i32 0, i32 8
  br i1 %112, label %114, label %116

114:                                              ; preds = %105
  %115 = load ptr, ptr %98, align 4
  br label %119

116:                                              ; preds = %105
  %117 = load ptr, ptr %97, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi ptr [ %118, %116 ], [ %98, %114 ]
  %121 = phi ptr [ %117, %116 ], [ %97, %114 ]
  %122 = phi ptr [ %97, %116 ], [ %115, %114 ]
  store ptr %113, ptr %120, align 4
  store ptr %121, ptr %113, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  store volatile ptr %113, ptr %122, align 4
  %124 = load i32, ptr %103, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32, ptr %59, align 4
  %128 = xor i32 %106, -1
  %129 = add i32 %127, %128
  br label %130

130:                                              ; preds = %126, %119
  %131 = phi i32 [ %129, %126 ], [ %106, %119 ]
  %132 = trunc i32 %131 to i8
  %133 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 3
  store i8 %132, ptr %133, align 1
  %134 = load ptr, ptr %11, align 4
  %135 = getelementptr [8 x %struct.dw_dma_chan_regs], ptr %134, i32 0, i32 %106
  %136 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 1
  store ptr %135, ptr %136, align 4
  %137 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 6
  store i32 0, ptr %137, align 4
  %138 = shl nuw i32 1, %106
  %139 = trunc i32 %138 to i8
  %140 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 2
  store i8 %139, ptr %140, align 4
  %141 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 8
  store volatile ptr %141, ptr %141, align 4
  %142 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 8, i32 1
  store ptr %141, ptr %142, align 4
  %143 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 9
  store volatile ptr %143, ptr %143, align 4
  %144 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 9, i32 1
  store ptr %143, ptr %144, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %145 = load i8, ptr %140, align 4
  %146 = zext i8 %145 to i32
  %147 = shl nuw nsw i32 %146, 8
  %148 = load ptr, ptr %11, align 4
  %149 = getelementptr inbounds %struct.dw_dma_regs, ptr %148, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #10, !srcloc !9
  %150 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 4
  store i32 4, ptr %150, align 4
  br i1 %16, label %151, label %170

151:                                              ; preds = %130
  %152 = sub i32 7, %106
  %153 = load ptr, ptr %11, align 4
  %154 = getelementptr %struct.dw_dma_regs, ptr %153, i32 0, i32 32, i32 %152
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %156 = load i32, ptr %104, align 4
  %157 = shl i32 %106, 2
  %158 = lshr i32 %156, %157
  %159 = and i32 %158, 15
  %160 = shl nuw nsw i32 4, %159
  %161 = add nsw i32 %160, -1
  %162 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 11
  store i32 %161, ptr %162, align 4
  %163 = and i32 %155, 10240
  %164 = icmp ne i32 %163, 2048
  %165 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 12
  %166 = zext i1 %164 to i8
  store i8 %166, ptr %165, align 4
  %167 = lshr i32 %155, 16
  %168 = and i32 %167, 7
  %169 = shl nuw nsw i32 4, %168
  br label %182

170:                                              ; preds = %130
  %171 = load i32, ptr %104, align 4
  %172 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 11
  store i32 %171, ptr %172, align 4
  %173 = getelementptr %struct.dw_dma_platform_data, ptr %58, i32 0, i32 6, i32 %106
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 12
  %177 = zext i1 %175 to i8
  store i8 %177, ptr %176, align 4
  %178 = getelementptr %struct.dw_dma_platform_data, ptr %58, i32 0, i32 7, i32 %106
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 256, i32 %179
  br label %182

182:                                              ; preds = %170, %151
  %183 = phi i32 [ %169, %151 ], [ %181, %170 ]
  %184 = getelementptr %struct.dw_dma_chan, ptr %107, i32 %106, i32 13
  store i32 %183, ptr %184, align 4
  %185 = add nuw i32 %106, 1
  %186 = load i32, ptr %59, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %105, label %188

188:                                              ; preds = %182, %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %189 = load i8, ptr %76, align 4
  %190 = zext i8 %189 to i32
  %191 = load ptr, ptr %11, align 4
  %192 = getelementptr inbounds %struct.dw_dma_regs, ptr %191, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %190) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !26
  tail call void @arm_heavy_mb() #10
  %193 = load i8, ptr %76, align 4
  %194 = zext i8 %193 to i32
  %195 = load ptr, ptr %11, align 4
  %196 = getelementptr inbounds %struct.dw_dma_regs, ptr %195, i32 0, i32 4, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %194) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %197 = load i8, ptr %76, align 4
  %198 = zext i8 %197 to i32
  %199 = load ptr, ptr %11, align 4
  %200 = getelementptr inbounds %struct.dw_dma_regs, ptr %199, i32 0, i32 4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %201 = load i8, ptr %76, align 4
  %202 = zext i8 %201 to i32
  %203 = load ptr, ptr %11, align 4
  %204 = getelementptr inbounds %struct.dw_dma_regs, ptr %203, i32 0, i32 4, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %205 = load i8, ptr %76, align 4
  %206 = zext i8 %205 to i32
  %207 = load ptr, ptr %11, align 4
  %208 = getelementptr inbounds %struct.dw_dma_regs, ptr %207, i32 0, i32 4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %206) #10, !srcloc !9
  %209 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %209) #10
  tail call void @_set_bit(i32 noundef 9, ptr noundef %209) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %209) #10
  %210 = load ptr, ptr %0, align 4
  %211 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  store ptr %210, ptr %211, align 4
  %212 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 27
  store ptr @dwc_alloc_chan_resources, ptr %212, align 4
  %213 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 29
  store ptr @dwc_free_chan_resources, ptr %213, align 4
  %214 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 30
  store ptr @dwc_prep_dma_memcpy, ptr %214, align 4
  %215 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 39
  store ptr @dwc_prep_slave_sg, ptr %215, align 4
  %216 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 43
  store ptr @dwc_caps, ptr %216, align 4
  %217 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 44
  store ptr @dwc_config, ptr %217, align 4
  %218 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 45
  store ptr @dwc_pause, ptr %218, align 4
  %219 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 46
  store ptr @dwc_resume, ptr %219, align 4
  %220 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  store ptr @dwc_terminate_all, ptr %220, align 4
  %221 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 49
  store ptr @dwc_tx_status, ptr %221, align 4
  %222 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 50
  store ptr @dwc_issue_pending, ptr %222, align 4
  %223 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 22
  store i32 1, ptr %223, align 4
  %224 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 23
  store i32 256, ptr %224, align 4
  %225 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 19
  store i32 23, ptr %225, align 4
  %226 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 20
  store i32 23, ptr %226, align 4
  %227 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 21
  store i32 7, ptr %227, align 4
  %228 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 26
  store i32 2, ptr %228, align 4
  %229 = getelementptr inbounds %struct.device, ptr %210, i32 0, i32 20
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %188
  %233 = load ptr, ptr %69, align 4
  %234 = getelementptr inbounds %struct.dw_dma_chan, ptr %233, i32 0, i32 11
  %235 = load i32, ptr %234, align 4
  store i32 %235, ptr %230, align 4
  br label %236

236:                                              ; preds = %232, %188
  %237 = tail call i32 @dma_async_device_register(ptr noundef %3) #10
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load ptr, ptr %0, align 4
  %241 = load i32, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %240, ptr noundef nonnull @.str.1, i32 noundef %241) #11
  br label %245

242:                                              ; preds = %236
  %243 = load i32, ptr %92, align 4
  %244 = tail call ptr @free_irq(i32 noundef %243, ptr noundef %3) #10
  br label %245

245:                                              ; preds = %242, %239, %90, %88, %65, %63, %50, %17
  %246 = phi i32 [ 0, %239 ], [ %94, %90 ], [ %237, %242 ], [ -12, %88 ], [ -22, %17 ], [ -22, %50 ], [ -12, %65 ], [ -12, %63 ]
  %247 = load ptr, ptr %0, align 4
  %248 = tail call i32 @__pm_runtime_suspend(ptr noundef %247, i32 noundef 4) #10
  br label %249

249:                                              ; preds = %245, %1
  %250 = phi i32 [ -12, %1 ], [ %246, %245 ]
  ret i32 %250
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_dma_tasklet(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -280
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_regs, ptr %4, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !30
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dw_dma_regs, ptr %7, i32 0, i32 1, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !31
  %10 = getelementptr i8, ptr %0, i32 -276
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %111, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 24
  br label %15

15:                                               ; preds = %107, %13
  %16 = phi i32 [ 0, %13 ], [ %108, %107 ]
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16
  %19 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16, i32 7
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %15
  %24 = shl nuw i32 1, %16
  %25 = and i32 %24, %9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %103, label %27

27:                                               ; preds = %23
  tail call fastcc void @dwc_scan_descriptors(ptr noundef %2, ptr noundef %18) #10
  %28 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16, i32 6
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %30 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 -28
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %33, align 4
  %37 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16, i32 8, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  %45 = load ptr, ptr %40, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %38, ptr %46, align 4
  store ptr %45, ptr %38, align 4
  store ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !32
  tail call void @arm_heavy_mb() #10
  %47 = getelementptr %struct.dw_dma_chan, ptr %17, i32 %16, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr inbounds %struct.dw_dma_regs, ptr %50, i32 0, i32 4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #10, !srcloc !9
  %52 = load volatile ptr, ptr %30, align 4
  %53 = icmp eq ptr %52, %30
  br i1 %53, label %56, label %54

54:                                               ; preds = %27
  %55 = getelementptr i8, ptr %52, i32 -28
  tail call fastcc void @dwc_dostart(ptr noundef %18, ptr noundef %55) #10
  br label %56

56:                                               ; preds = %54, %27
  %57 = getelementptr inbounds %struct.dma_chan, ptr %18, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  %60 = tail call ptr @dev_driver_string(ptr noundef %59) #10
  %61 = load ptr, ptr %57, align 4
  %62 = getelementptr inbounds %struct.dma_chan_dev, ptr %61, i32 0, i32 1, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.dma_chan_dev, ptr %61, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %56
  %69 = phi ptr [ %67, %65 ], [ %63, %56 ]
  %70 = getelementptr i8, ptr %31, i32 16
  %71 = load i32, ptr %70, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 455, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %60, ptr noundef %69, i32 noundef %71) #10
  %72 = load ptr, ptr %57, align 4
  %73 = getelementptr inbounds %struct.dma_chan_dev, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %32, align 4
  %75 = getelementptr i8, ptr %31, i32 -24
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %31, i32 -20
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %31, i32 -12
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %31, i32 -16
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %73, ptr noundef nonnull @.str.7, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82) #11
  %83 = getelementptr i8, ptr %31, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %102, label %86

86:                                               ; preds = %86, %68
  %87 = phi ptr [ %100, %86 ], [ %84, %68 ]
  %88 = getelementptr i8, ptr %87, i32 -28
  %89 = load ptr, ptr %57, align 4
  %90 = getelementptr inbounds %struct.dma_chan_dev, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %88, align 4
  %92 = getelementptr i8, ptr %87, i32 -24
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i8, ptr %87, i32 -20
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i8, ptr %87, i32 -12
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %87, i32 -16
  %99 = load i32, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %90, ptr noundef nonnull @.str.7, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99) #11
  %100 = load ptr, ptr %87, align 4
  %101 = icmp eq ptr %100, %83
  br i1 %101, label %102, label %86

102:                                              ; preds = %86, %68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #10
  tail call fastcc void @dwc_descriptor_complete(ptr noundef %18, ptr noundef %32, i1 noundef zeroext true) #10
  br label %107

103:                                              ; preds = %23
  %104 = and i32 %24, %6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  tail call fastcc void @dwc_scan_descriptors(ptr noundef %2, ptr noundef %18)
  br label %107

107:                                              ; preds = %106, %103, %102, %15
  %108 = add nuw i32 %16, 1
  %109 = load i32, ptr %10, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %15, label %111

111:                                              ; preds = %107, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %112 = getelementptr i8, ptr %0, i32 28
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  %116 = or i32 %115, %114
  %117 = load ptr, ptr %3, align 4
  %118 = getelementptr inbounds %struct.dw_dma_regs, ptr %117, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  %119 = load i8, ptr %112, align 4
  %120 = zext i8 %119 to i32
  %121 = shl nuw nsw i32 %120, 8
  %122 = or i32 %121, %120
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr inbounds %struct.dw_dma_regs, ptr %123, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_dma_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 7
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_dma_regs, ptr %8, i32 0, i32 5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !35
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !36
  tail call void @arm_heavy_mb() #10
  %13 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 6
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.dw_dma_regs, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.dw_dma_regs, ptr %22, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  tail call void @arm_heavy_mb() #10
  %24 = load i8, ptr %13, align 4
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.dw_dma_regs, ptr %27, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #10, !srcloc !9
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.dw_dma_regs, ptr %29, i32 0, i32 5
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !39
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %31) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !40
  tail call void @arm_heavy_mb() #10
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.dw_dma_regs, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 65280) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  tail call void @arm_heavy_mb() #10
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.dw_dma_regs, ptr %38, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 65280) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !42
  tail call void @arm_heavy_mb() #10
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.dw_dma_regs, ptr %40, i32 0, i32 3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 65280) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.dw_dma_regs, ptr %42, i32 0, i32 3, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 65280) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !44
  tail call void @arm_heavy_mb() #10
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr inbounds %struct.dw_dma_regs, ptr %44, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 65280) #10, !srcloc !9
  br label %46

46:                                               ; preds = %33, %12
  %47 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 4, i32 1
  %48 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %47) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.dw_dma, ptr %1, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %51) #10
  br label %52

52:                                               ; preds = %50, %46, %6, %2
  %53 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 1, %46 ], [ 1, %50 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_alloc_chan_resources(ptr nocapture noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_regs, ptr %4, i32 0, i32 21
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !45
  %7 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = and i32 %6, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %16, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dw_dma_slave, ptr %16, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = icmp ne i8 %26, 0
  %28 = and i8 %26, %8
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %32, ptr noundef nonnull align 4 dereferenceable(12) %16, i32 12, i1 false) #10
  br label %37

33:                                               ; preds = %24, %18
  %34 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.11) #11
  br label %50

37:                                               ; preds = %31, %12
  %38 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.dw_dma_regs, ptr %42, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #10, !srcloc !9
  %44 = load i8, ptr %7, align 4
  %45 = load i8, ptr %38, align 1
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i8 [ %45, %41 ], [ %39, %37 ]
  %48 = phi i8 [ %44, %41 ], [ %8, %37 ]
  %49 = or i8 %47, %48
  store i8 %49, ptr %38, align 1
  br label %50

50:                                               ; preds = %46, %33, %1
  %51 = phi i32 [ 0, %46 ], [ -22, %33 ], [ -5, %1 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc_free_chan_resources(ptr noundef %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 8
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %7, label %6, !prof !46

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1025, 0\0A.popsection", ""() #10, !srcloc !47
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 9
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !46

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1026, 0\0A.popsection", ""() #10, !srcloc !48
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dw_dma_regs, ptr %14, i32 0, i32 21
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !49
  %17 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !46

22:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1027, 0\0A.popsection", ""() #10, !srcloc !50
  unreachable

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #10
  %26 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %26, i8 0, i32 12, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %27 = load i8, ptr %17, align 4
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = load ptr, ptr %13, align 4
  %31 = getelementptr inbounds %struct.dw_dma_regs, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %32 = load i8, ptr %17, align 4
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr inbounds %struct.dw_dma_regs, ptr %35, i32 0, i32 3, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %37 = load i8, ptr %17, align 4
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr inbounds %struct.dw_dma_regs, ptr %40, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #10, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #10
  %42 = load i8, ptr %17, align 4
  %43 = xor i8 %42, -1
  %44 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 7
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, %43
  store i8 %46, ptr %44, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  tail call void @do_dw_dma_off(ptr noundef %2)
  br label %49

49:                                               ; preds = %48, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dwc_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #3 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !54
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %123, label %10, !prof !22

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 3
  %14 = zext i8 %12 to i32
  %15 = getelementptr inbounds %struct.dw_dma, ptr %8, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.dw_dma_platform_data, ptr %16, i32 0, i32 5, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 4
  store i32 0, ptr %19, align 4
  %20 = or i32 %2, %1
  %21 = or i32 %20, %3
  %22 = or i32 %21, %18
  %23 = tail call i32 @llvm.cttz.i32(i32 %22, i1 true) #10, !range !55
  %24 = getelementptr inbounds %struct.dw_dma, ptr %8, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0) #10
  %27 = shl nuw nsw i32 %23, 1
  %28 = or i32 %27, %26
  %29 = shl nuw nsw i32 %23, 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  %32 = getelementptr inbounds %struct.dw_dma, ptr %8, i32 0, i32 13
  %33 = zext i8 %13 to i32
  br label %34

34:                                               ; preds = %74, %10
  %35 = phi i32 [ 0, %10 ], [ %77, %74 ]
  %36 = phi ptr [ null, %10 ], [ %41, %74 ]
  %37 = phi ptr [ null, %10 ], [ %76, %74 ]
  %38 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !54
  %39 = getelementptr inbounds %struct.dw_dma, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = call ptr @dma_pool_alloc(ptr noundef %40, i32 noundef 2848, ptr noundef nonnull %6) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %94, label %43

43:                                               ; preds = %34
  %44 = load i32, ptr %31, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %31, align 4
  %46 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 2
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 2, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %48, ptr noundef %0) #10
  %49 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 3, i32 4
  store ptr @dwc_tx_submit, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 3, i32 1
  store i32 2, ptr %50, align 4
  %51 = load i32, ptr %6, align 4
  %52 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 3, i32 2
  store i32 %51, ptr %52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %53 = load ptr, ptr %32, align 4
  %54 = sub i32 %3, %35
  %55 = call i32 %53(ptr noundef %0, i32 noundef %54, i32 noundef %23, ptr noundef nonnull %7) #10
  %56 = add i32 %35, %2
  store i32 %56, ptr %41, align 4
  %57 = add i32 %35, %1
  %58 = getelementptr inbounds %struct.dw_lli, ptr %41, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dw_lli, ptr %41, i32 0, i32 3
  store i32 %30, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dw_lli, ptr %41, i32 0, i32 4
  store i32 %55, ptr %60, align 4
  %61 = load i32, ptr %7, align 4
  %62 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 4
  store i32 %61, ptr %62, align 4
  %63 = icmp eq ptr %37, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %43
  %65 = load i32, ptr %52, align 4
  %66 = or i32 %65, %33
  %67 = getelementptr inbounds %struct.dw_lli, ptr %36, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 1
  %69 = getelementptr inbounds %struct.dw_desc, ptr %37, i32 0, i32 2
  %70 = getelementptr inbounds %struct.dw_desc, ptr %37, i32 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 4
  store ptr %68, ptr %70, align 4
  store ptr %69, ptr %68, align 4
  %72 = getelementptr inbounds %struct.dw_desc, ptr %41, i32 0, i32 1, i32 1
  store ptr %71, ptr %72, align 4
  store volatile ptr %68, ptr %71, align 4
  %73 = load i32, ptr %7, align 4
  br label %74

74:                                               ; preds = %64, %43
  %75 = phi i32 [ %73, %64 ], [ %61, %43 ]
  %76 = phi ptr [ %37, %64 ], [ %41, %43 ]
  %77 = add i32 %75, %35
  %78 = icmp ult i32 %77, %3
  br i1 %78, label %34, label %79

79:                                               ; preds = %74
  %80 = and i32 %4, 1
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.dw_lli, ptr %41, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  br i1 %81, label %86, label %84

84:                                               ; preds = %79
  %85 = or i32 %83, 1
  store i32 %85, ptr %82, align 4
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i32 [ %85, %84 ], [ %83, %79 ]
  %88 = getelementptr inbounds %struct.dw_lli, ptr %41, i32 0, i32 2
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dw_lli, ptr %41, i32 0, i32 3
  %90 = and i32 %87, -402653185
  store i32 %90, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dw_desc, ptr %76, i32 0, i32 3
  %92 = getelementptr inbounds %struct.dw_desc, ptr %76, i32 0, i32 3, i32 1
  store i32 %4, ptr %92, align 4
  %93 = getelementptr inbounds %struct.dw_desc, ptr %76, i32 0, i32 5
  store i32 %3, ptr %93, align 4
  br label %123

94:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %95 = load ptr, ptr %0, align 4
  %96 = icmp eq ptr %37, null
  br i1 %96, label %123, label %97, !prof !22

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.dw_desc, ptr %37, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  br i1 %100, label %116, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.dw_dma, ptr %95, i32 0, i32 3
  br label %103

103:                                              ; preds = %103, %101
  %104 = phi ptr [ %99, %101 ], [ %106, %103 ]
  %105 = getelementptr i8, ptr %104, i32 -28
  %106 = load ptr, ptr %104, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %108, ptr %109, align 4
  store volatile ptr %106, ptr %108, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %104, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %107, align 4
  %110 = load ptr, ptr %102, align 4
  %111 = getelementptr i8, ptr %104, i32 24
  %112 = load i32, ptr %111, align 4
  call void @dma_pool_free(ptr noundef %110, ptr noundef %105, i32 noundef %112) #10
  %113 = load i32, ptr %31, align 4
  %114 = add i32 %113, -1
  store i32 %114, ptr %31, align 4
  %115 = icmp eq ptr %106, %98
  br i1 %115, label %116, label %103

116:                                              ; preds = %103, %97
  %117 = getelementptr inbounds %struct.dw_dma, ptr %95, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.dw_desc, ptr %37, i32 0, i32 3, i32 2
  %120 = load i32, ptr %119, align 4
  call void @dma_pool_free(ptr noundef %118, ptr noundef nonnull %37, i32 noundef %120) #10
  %121 = load i32, ptr %31, align 4
  %122 = add i32 %121, -1
  store i32 %122, ptr %31, align 4
  br label %123

123:                                              ; preds = %116, %94, %86, %5
  %124 = phi ptr [ %91, %86 ], [ null, %5 ], [ null, %94 ], [ null, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret ptr %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dwc_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #3 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = and i8 %13, 3
  %16 = getelementptr inbounds %struct.dw_dma, ptr %11, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.dw_dma_platform_data, ptr %17, i32 0, i32 5, i32 %14
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %3, -1
  %21 = icmp ult i32 %20, 2
  %22 = icmp ne i32 %2, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %249, !prof !46

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 4
  store i32 %3, ptr %25, align 4
  switch i32 %3, label %249 [
    i32 1, label %26
    i32 2, label %112
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.cttz.i32(i32 %28, i1 false) #10, !range !55
  %30 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dw_dma, ptr %11, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %0) #10
  %35 = shl nuw nsw i32 %29, 1
  %36 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 9
  %37 = load i8, ptr %36, align 4, !range !56
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 1048576, i32 6291456
  %40 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  %41 = getelementptr inbounds %struct.dw_dma, ptr %11, i32 0, i32 13
  %42 = or i32 %35, %34
  %43 = or i32 %42, %39
  %44 = zext i8 %15 to i32
  br label %45

45:                                               ; preds = %108, %26
  %46 = phi i32 [ %105, %108 ], [ 0, %26 ]
  %47 = phi ptr [ %110, %108 ], [ %1, %26 ]
  %48 = phi i32 [ %109, %108 ], [ 0, %26 ]
  %49 = phi ptr [ %102, %108 ], [ null, %26 ]
  %50 = phi ptr [ %70, %108 ], [ null, %26 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4, !annotation !54
  %51 = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.scatterlist, ptr %47, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %52, %19
  %56 = or i32 %55, %54
  %57 = call i32 @llvm.cttz.i32(i32 %56, i1 false) #10, !range !55
  %58 = shl nuw nsw i32 %57, 4
  %59 = or i32 %43, %58
  %60 = or i32 %59, 256
  br label %61

61:                                               ; preds = %100, %45
  %62 = phi ptr [ %50, %45 ], [ %70, %100 ]
  %63 = phi ptr [ %49, %45 ], [ %102, %100 ]
  %64 = phi i32 [ %46, %45 ], [ %105, %100 ]
  %65 = phi i32 [ %54, %45 ], [ %104, %100 ]
  %66 = phi i32 [ %52, %45 ], [ %103, %100 ]
  %67 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !54
  %68 = getelementptr inbounds %struct.dw_dma, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = call ptr @dma_pool_alloc(ptr noundef %69, i32 noundef 2848, ptr noundef nonnull %8) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %107, label %72

72:                                               ; preds = %61
  %73 = load i32, ptr %40, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %40, align 4
  %75 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 2
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 2, i32 1
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %77, ptr noundef %0) #10
  %78 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 3, i32 4
  store ptr @dwc_tx_submit, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 3, i32 1
  store i32 2, ptr %79, align 4
  %80 = load i32, ptr %8, align 4
  %81 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 3, i32 2
  store i32 %80, ptr %81, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %82 = load ptr, ptr %41, align 4
  %83 = call i32 %82(ptr noundef %0, i32 noundef %65, i32 noundef %57, ptr noundef nonnull %9) #10
  store i32 %66, ptr %70, align 4
  %84 = getelementptr inbounds %struct.dw_lli, ptr %70, i32 0, i32 1
  store i32 %31, ptr %84, align 4
  %85 = getelementptr inbounds %struct.dw_lli, ptr %70, i32 0, i32 4
  store i32 %83, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dw_lli, ptr %70, i32 0, i32 3
  store i32 %60, ptr %86, align 4
  %87 = load i32, ptr %9, align 4
  %88 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 4
  store i32 %87, ptr %88, align 4
  %89 = icmp eq ptr %63, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %72
  %91 = load i32, ptr %81, align 4
  %92 = or i32 %91, %44
  %93 = getelementptr inbounds %struct.dw_lli, ptr %62, i32 0, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 1
  %95 = getelementptr inbounds %struct.dw_desc, ptr %63, i32 0, i32 2
  %96 = getelementptr inbounds %struct.dw_desc, ptr %63, i32 0, i32 2, i32 1
  %97 = load ptr, ptr %96, align 4
  store ptr %94, ptr %96, align 4
  store ptr %95, ptr %94, align 4
  %98 = getelementptr inbounds %struct.dw_desc, ptr %70, i32 0, i32 1, i32 1
  store ptr %97, ptr %98, align 4
  store volatile ptr %94, ptr %97, align 4
  %99 = load i32, ptr %9, align 4
  br label %100

100:                                              ; preds = %90, %72
  %101 = phi i32 [ %99, %90 ], [ %87, %72 ]
  %102 = phi ptr [ %63, %90 ], [ %70, %72 ]
  %103 = add i32 %101, %66
  %104 = sub i32 %65, %101
  %105 = add i32 %101, %64
  %106 = icmp eq i32 %104, 0
  br i1 %106, label %108, label %61

107:                                              ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %214

108:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  %109 = add nuw i32 %48, 1
  %110 = call ptr @sg_next(ptr noundef %47) #10
  %111 = icmp eq i32 %109, %2
  br i1 %111, label %197, label %45

112:                                              ; preds = %24
  %113 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = tail call i32 @llvm.cttz.i32(i32 %114, i1 false) #10, !range !55
  %116 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.dw_dma, ptr %11, i32 0, i32 11
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 %119(ptr noundef %0) #10
  %121 = shl nuw nsw i32 %115, 4
  %122 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 9
  %123 = load i8, ptr %122, align 4, !range !56
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i32 2097152, i32 4194304
  %126 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  %127 = getelementptr inbounds %struct.dw_dma, ptr %11, i32 0, i32 13
  %128 = or i32 %121, %120
  %129 = or i32 %128, %125
  %130 = zext i8 %15 to i32
  br label %131

131:                                              ; preds = %193, %112
  %132 = phi i32 [ %190, %193 ], [ 0, %112 ]
  %133 = phi ptr [ %195, %193 ], [ %1, %112 ]
  %134 = phi i32 [ %194, %193 ], [ 0, %112 ]
  %135 = phi ptr [ %187, %193 ], [ null, %112 ]
  %136 = phi ptr [ %150, %193 ], [ null, %112 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4, !annotation !54
  %137 = getelementptr inbounds %struct.scatterlist, ptr %133, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.scatterlist, ptr %133, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %185, %131
  %142 = phi ptr [ %136, %131 ], [ %150, %185 ]
  %143 = phi ptr [ %135, %131 ], [ %187, %185 ]
  %144 = phi i32 [ %132, %131 ], [ %190, %185 ]
  %145 = phi i32 [ %140, %131 ], [ %189, %185 ]
  %146 = phi i32 [ %138, %131 ], [ %188, %185 ]
  %147 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !54
  %148 = getelementptr inbounds %struct.dw_dma, ptr %147, i32 0, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = call ptr @dma_pool_alloc(ptr noundef %149, i32 noundef 2848, ptr noundef nonnull %7) #10
  %151 = icmp eq ptr %150, null
  br i1 %151, label %192, label %152

152:                                              ; preds = %141
  %153 = load i32, ptr %126, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %126, align 4
  %155 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 2
  store volatile ptr %155, ptr %155, align 4
  %156 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 2, i32 1
  store ptr %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %157, ptr noundef %0) #10
  %158 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 3, i32 4
  store ptr @dwc_tx_submit, ptr %158, align 4
  %159 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 3, i32 1
  store i32 2, ptr %159, align 4
  %160 = load i32, ptr %7, align 4
  %161 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 3, i32 2
  store i32 %160, ptr %161, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %162 = load ptr, ptr %127, align 4
  %163 = call i32 %162(ptr noundef %0, i32 noundef %145, i32 noundef %115, ptr noundef nonnull %10) #10
  store i32 %117, ptr %150, align 4
  %164 = getelementptr inbounds %struct.dw_lli, ptr %150, i32 0, i32 1
  store i32 %146, ptr %164, align 4
  %165 = getelementptr inbounds %struct.dw_lli, ptr %150, i32 0, i32 4
  store i32 %163, ptr %165, align 4
  %166 = or i32 %146, %19
  %167 = call i32 @llvm.cttz.i32(i32 %166, i1 false) #10, !range !55
  %168 = shl nuw nsw i32 %167, 1
  %169 = or i32 %129, %168
  %170 = or i32 %169, 1024
  %171 = getelementptr inbounds %struct.dw_lli, ptr %150, i32 0, i32 3
  store i32 %170, ptr %171, align 4
  %172 = load i32, ptr %10, align 4
  %173 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 4
  store i32 %172, ptr %173, align 4
  %174 = icmp eq ptr %143, null
  br i1 %174, label %185, label %175

175:                                              ; preds = %152
  %176 = load i32, ptr %161, align 4
  %177 = or i32 %176, %130
  %178 = getelementptr inbounds %struct.dw_lli, ptr %142, i32 0, i32 2
  store i32 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 1
  %180 = getelementptr inbounds %struct.dw_desc, ptr %143, i32 0, i32 2
  %181 = getelementptr inbounds %struct.dw_desc, ptr %143, i32 0, i32 2, i32 1
  %182 = load ptr, ptr %181, align 4
  store ptr %179, ptr %181, align 4
  store ptr %180, ptr %179, align 4
  %183 = getelementptr inbounds %struct.dw_desc, ptr %150, i32 0, i32 1, i32 1
  store ptr %182, ptr %183, align 4
  store volatile ptr %179, ptr %182, align 4
  %184 = load i32, ptr %10, align 4
  br label %185

185:                                              ; preds = %175, %152
  %186 = phi i32 [ %184, %175 ], [ %172, %152 ]
  %187 = phi ptr [ %143, %175 ], [ %150, %152 ]
  %188 = add i32 %186, %146
  %189 = sub i32 %145, %186
  %190 = add i32 %186, %144
  %191 = icmp eq i32 %189, 0
  br i1 %191, label %193, label %141

192:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br label %214

193:                                              ; preds = %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  %194 = add nuw i32 %134, 1
  %195 = call ptr @sg_next(ptr noundef %133) #10
  %196 = icmp eq i32 %194, %2
  br i1 %196, label %197, label %131

197:                                              ; preds = %193, %108
  %198 = phi ptr [ %70, %108 ], [ %150, %193 ]
  %199 = phi ptr [ %102, %108 ], [ %187, %193 ]
  %200 = phi i32 [ %105, %108 ], [ %190, %193 ]
  %201 = and i32 %4, 1
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.dw_lli, ptr %198, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  br i1 %202, label %207, label %205

205:                                              ; preds = %197
  %206 = or i32 %204, 1
  store i32 %206, ptr %203, align 4
  br label %207

207:                                              ; preds = %205, %197
  %208 = phi i32 [ %206, %205 ], [ %204, %197 ]
  %209 = getelementptr inbounds %struct.dw_lli, ptr %198, i32 0, i32 2
  store i32 0, ptr %209, align 4
  %210 = getelementptr inbounds %struct.dw_lli, ptr %198, i32 0, i32 3
  %211 = and i32 %208, -402653185
  store i32 %211, ptr %210, align 4
  %212 = getelementptr inbounds %struct.dw_desc, ptr %199, i32 0, i32 5
  store i32 %200, ptr %212, align 4
  %213 = getelementptr inbounds %struct.dw_desc, ptr %199, i32 0, i32 3
  br label %249

214:                                              ; preds = %192, %107
  %215 = phi ptr [ %143, %192 ], [ %63, %107 ]
  %216 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.dma_chan_dev, ptr %217, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.12, i32 noundef %3) #11
  %219 = load ptr, ptr %0, align 4
  %220 = icmp eq ptr %215, null
  br i1 %220, label %249, label %221, !prof !22

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.dw_desc, ptr %215, i32 0, i32 2
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, %222
  br i1 %224, label %241, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.dw_dma, ptr %219, i32 0, i32 3
  %227 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  br label %228

228:                                              ; preds = %228, %225
  %229 = phi ptr [ %223, %225 ], [ %231, %228 ]
  %230 = getelementptr i8, ptr %229, i32 -28
  %231 = load ptr, ptr %229, align 4
  %232 = getelementptr inbounds %struct.list_head, ptr %229, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  store ptr %233, ptr %234, align 4
  store volatile ptr %231, ptr %233, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %229, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %232, align 4
  %235 = load ptr, ptr %226, align 4
  %236 = getelementptr i8, ptr %229, i32 24
  %237 = load i32, ptr %236, align 4
  call void @dma_pool_free(ptr noundef %235, ptr noundef %230, i32 noundef %237) #10
  %238 = load i32, ptr %227, align 4
  %239 = add i32 %238, -1
  store i32 %239, ptr %227, align 4
  %240 = icmp eq ptr %231, %222
  br i1 %240, label %241, label %228

241:                                              ; preds = %228, %221
  %242 = getelementptr inbounds %struct.dw_dma, ptr %219, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.dw_desc, ptr %215, i32 0, i32 3, i32 2
  %245 = load i32, ptr %244, align 4
  call void @dma_pool_free(ptr noundef %243, ptr noundef nonnull %215, i32 noundef %245) #10
  %246 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, -1
  store i32 %248, ptr %246, align 4
  br label %249

249:                                              ; preds = %241, %214, %207, %24, %6
  %250 = phi ptr [ %213, %207 ], [ null, %6 ], [ null, %24 ], [ null, %214 ], [ null, %241 ]
  ret ptr %250
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwc_caps(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 4
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 4, !range !56
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.dma_slave_caps, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_config(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %4, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %5 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8)
  store i32 %9, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 15, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %8)
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, ptr noundef %5) #10
  %15 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %0, ptr noundef %10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_pause(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dw_dma, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i1 noundef zeroext false) #10
  %7 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %8, i32 0, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %13, %1
  %14 = phi i32 [ %15, %13 ], [ 20, %1 ]
  %15 = add nsw i32 %14, -1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496) #10
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %17, i32 0, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %20 = and i32 %19, 512
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %15, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %13

24:                                               ; preds = %13, %1
  %25 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 2, ptr noundef %25) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_resume(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 7
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.dw_dma, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0, i1 noundef zeroext false) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %4) #10
  br label %12

12:                                               ; preds = %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_terminate_all(ptr noundef %0) #3 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 7
  call void @_clear_bit(i32 noundef 1, ptr noundef %7) #10
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.dw_dma, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  call void %10(ptr noundef %0, i1 noundef zeroext true) #10
  %11 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %12, i32 0, i32 16
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %17, %1
  %18 = phi i32 [ %19, %17 ], [ 20, %1 ]
  %19 = add nsw i32 %18, -1
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 429496) #10
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %21, i32 0, i32 16
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %24 = and i32 %23, 512
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq i32 %19, 0
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %17

28:                                               ; preds = %17, %1
  call void @_set_bit(i32 noundef 2, ptr noundef %7) #10
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !58
  call void @arm_heavy_mb() #10
  %29 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 8
  %33 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dw_dma_regs, ptr %34, i32 0, i32 21
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #10, !srcloc !9
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.dw_dma_regs, ptr %36, i32 0, i32 21
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %39 = load i8, ptr %29, align 4
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %28
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !60
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !61
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr inbounds %struct.dw_dma_regs, ptr %44, i32 0, i32 21
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %47 = load i8, ptr %29, align 4
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %28
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.dw_dma, ptr %52, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef %0, i1 noundef zeroext true) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %7) #10
  %55 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 9
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %64, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %2, align 8
  %60 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 9, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %2, ptr %62, align 4
  store ptr %56, ptr %2, align 8
  store ptr %59, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %55, ptr %55, align 4
  store ptr %55, ptr %60, align 4
  br label %64

64:                                               ; preds = %58, %51
  %65 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 8
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %2, align 8
  %70 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %2, ptr %72, align 4
  store ptr %66, ptr %2, align 8
  store ptr %69, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %70, align 4
  br label %74

74:                                               ; preds = %68, %64
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  %75 = load ptr, ptr %2, align 8
  %76 = icmp eq ptr %75, %2
  br i1 %76, label %82, label %77

77:                                               ; preds = %77, %74
  %78 = phi ptr [ %80, %77 ], [ %75, %74 ]
  %79 = getelementptr i8, ptr %78, i32 -28
  %80 = load ptr, ptr %78, align 4
  call fastcc void @dwc_descriptor_complete(ptr noundef %0, ptr noundef %79, i1 noundef zeroext false)
  %81 = icmp eq ptr %80, %2
  br i1 %81, label %82, label %77

82:                                               ; preds = %77, %74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %92, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %92, label %21

21:                                               ; preds = %19, %17
  %22 = load ptr, ptr %0, align 4
  tail call fastcc void @dwc_scan_descriptors(ptr noundef %22, ptr noundef %0)
  %23 = load i32, ptr %4, align 4
  %24 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  br i1 %8, label %29, label %25

25:                                               ; preds = %21
  store i32 %24, ptr %2, align 4
  %26 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %23, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = icmp sgt i32 %24, %23
  %31 = icmp sge i32 %24, %1
  %32 = icmp slt i32 %23, %1
  br i1 %30, label %35, label %33

33:                                               ; preds = %29
  %34 = or i1 %32, %31
  br i1 %34, label %92, label %37

35:                                               ; preds = %29
  %36 = and i1 %32, %31
  br i1 %36, label %92, label %37

37:                                               ; preds = %35, %33
  %38 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #10
  %40 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 8
  br label %41

41:                                               ; preds = %45, %37
  %42 = phi ptr [ %40, %37 ], [ %43, %45 ]
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %40
  br i1 %44, label %82, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %43, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %49, label %41

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %43, i32 -28
  %51 = icmp eq ptr %50, null
  br i1 %51, label %82, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %40, align 4
  %54 = icmp eq ptr %43, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %43, i32 84
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 7
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  %62 = icmp ne i32 %57, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %67, i32 0, i32 7
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !63
  %70 = load ptr, ptr %66, align 4
  %71 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %70, i32 0, i32 6
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !64
  %73 = getelementptr inbounds %struct.dw_dma, ptr %65, i32 0, i32 14
  %74 = load ptr, ptr %73, align 4
  %75 = lshr i32 %72, 4
  %76 = and i32 %75, 7
  %77 = tail call i32 %74(ptr noundef %0, i32 noundef %69, i32 noundef %76) #10
  %78 = sub i32 %57, %77
  br label %82

79:                                               ; preds = %52
  %80 = getelementptr i8, ptr %43, i32 80
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %64, %55, %49, %41
  %83 = phi i32 [ %78, %64 ], [ %57, %55 ], [ %81, %79 ], [ 0, %49 ], [ 0, %41 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #10
  br i1 %8, label %86, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %83, ptr %85, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 7
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 1, i32 2
  br label %92

92:                                               ; preds = %86, %35, %33, %19, %17
  %93 = phi i32 [ %91, %86 ], [ 0, %17 ], [ 0, %19 ], [ 0, %33 ], [ 0, %35 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc_issue_pending(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 8
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 9
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %9, ptr %17, align 4
  store ptr %16, ptr %9, align 4
  store ptr %4, ptr %12, align 4
  store volatile ptr %9, ptr %4, align 4
  %18 = getelementptr i8, ptr %9, i32 -28
  tail call fastcc void @dwc_dostart(ptr noundef %0, ptr noundef %18) #10
  br label %19

19:                                               ; preds = %11, %7, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_dma_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #10
  tail call void @do_dw_dma_off(ptr noundef %3)
  tail call void @dma_async_device_unregister(ptr noundef %3) #10
  %6 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %3) #10
  %9 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 2
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %11, %13 ], [ %17, %15 ]
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %17, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !65
  tail call void @arm_heavy_mb() #10
  %21 = getelementptr i8, ptr %16, i32 36
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr inbounds %struct.dw_dma_regs, ptr %25, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #10, !srcloc !9
  %27 = icmp eq ptr %17, %10
  br i1 %27, label %28, label %15

28:                                               ; preds = %15, %1
  %29 = load ptr, ptr %0, align 4
  %30 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 4) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_dw_dma_disable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_dw_dma_enable(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chip, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc_scan_descriptors(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 6
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %7, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !66
  %10 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dw_dma_regs, ptr %11, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !67
  %14 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = and i32 %13, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %140, label %19

19:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !68
  tail call void @arm_heavy_mb() #10
  %20 = load i8, ptr %14, align 4
  %21 = zext i8 %20 to i32
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr inbounds %struct.dw_dma_regs, ptr %22, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !9
  %24 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 7
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %75, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  %34 = icmp eq ptr %30, %33
  br i1 %34, label %74, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %33, align 4
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %40, %38 ], [ %32, %35 ]
  %43 = getelementptr i8, ptr %42, i32 76
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %32, i32 84
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %46, %44
  store i32 %47, ptr %45, align 4
  %48 = getelementptr i8, ptr %30, i32 -28
  %49 = load ptr, ptr %1, align 4
  %50 = getelementptr i8, ptr %30, i32 -16
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %53 = load i32, ptr %48, align 4
  %54 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %55 = getelementptr i8, ptr %30, i32 -24
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %57, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %59, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %52) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %61 = getelementptr i8, ptr %30, i32 -12
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %63, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %65 = load i8, ptr %14, align 4
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 8
  %68 = or i32 %67, %66
  %69 = getelementptr inbounds %struct.dw_dma, ptr %49, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dw_dma_regs, ptr %70, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #10, !srcloc !9
  %72 = load ptr, ptr %29, align 4
  %73 = load ptr, ptr %72, align 4
  store ptr %73, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  br label %214

74:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %24) #10
  br label %75

75:                                               ; preds = %74, %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store ptr %3, ptr %3, align 8
  %76 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %76, align 4
  %77 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %78 = load ptr, ptr %10, align 4
  %79 = getelementptr inbounds %struct.dw_dma_regs, ptr %78, i32 0, i32 21
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !74
  %81 = load i8, ptr %14, align 4
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.dma_chan_dev, ptr %87, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.9) #11
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !58
  call void @arm_heavy_mb() #10
  %89 = load i8, ptr %14, align 4
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 8
  %92 = load ptr, ptr %10, align 4
  %93 = getelementptr inbounds %struct.dw_dma_regs, ptr %92, i32 0, i32 21
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #10, !srcloc !9
  %94 = load ptr, ptr %10, align 4
  %95 = getelementptr inbounds %struct.dw_dma_regs, ptr %94, i32 0, i32 21
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %97 = load i8, ptr %14, align 4
  %98 = zext i8 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %101, %85
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !60
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !61
  %102 = load ptr, ptr %10, align 4
  %103 = getelementptr inbounds %struct.dw_dma_regs, ptr %102, i32 0, i32 21
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #10, !srcloc !15
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %105 = load i8, ptr %14, align 4
  %106 = zext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %101

109:                                              ; preds = %101, %85, %75
  %110 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 8
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %110
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 8, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %3, ptr %117, align 4
  store ptr %111, ptr %3, align 8
  store ptr %114, ptr %116, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %116, ptr %118, align 4
  store volatile ptr %110, ptr %110, align 4
  store ptr %110, ptr %115, align 4
  br label %119

119:                                              ; preds = %113, %109
  %120 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 9
  %121 = load volatile ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, %120
  br i1 %122, label %131, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %121, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %125, ptr %127, align 4
  store volatile ptr %126, ptr %125, align 4
  %128 = load ptr, ptr %110, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  store ptr %121, ptr %129, align 4
  store ptr %128, ptr %121, align 4
  store ptr %110, ptr %124, align 4
  store volatile ptr %121, ptr %110, align 4
  %130 = getelementptr i8, ptr %121, i32 -28
  call fastcc void @dwc_dostart(ptr noundef %1, ptr noundef %130) #10
  br label %131

131:                                              ; preds = %123, %119
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %77) #10
  %132 = load ptr, ptr %3, align 8
  %133 = icmp eq ptr %132, %3
  br i1 %133, label %139, label %134

134:                                              ; preds = %134, %131
  %135 = phi ptr [ %137, %134 ], [ %132, %131 ]
  %136 = getelementptr i8, ptr %135, i32 -28
  %137 = load ptr, ptr %135, align 4
  call fastcc void @dwc_descriptor_complete(ptr noundef %1, ptr noundef %136, i1 noundef zeroext true) #10
  %138 = icmp eq ptr %137, %3
  br i1 %138, label %139, label %134

139:                                              ; preds = %134, %131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %214

140:                                              ; preds = %2
  %141 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 8
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %141
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  br label %214

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 7
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 2
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = and i32 %9, -4
  br label %153

152:                                              ; preds = %145
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  br label %214

153:                                              ; preds = %207, %150
  %154 = phi ptr [ %142, %150 ], [ %157, %207 ]
  %155 = phi i32 [ %5, %150 ], [ %208, %207 ]
  %156 = getelementptr i8, ptr %154, i32 -28
  %157 = load ptr, ptr %154, align 4
  %158 = getelementptr i8, ptr %154, i32 80
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr i8, ptr %154, i32 84
  store i32 %159, ptr %160, align 4
  %161 = getelementptr i8, ptr %154, i32 24
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, %151
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %155) #10
  br label %214

165:                                              ; preds = %153
  %166 = getelementptr i8, ptr %154, i32 -20
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, %9
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = tail call fastcc i32 @dwc_get_sent(ptr noundef %1)
  %171 = load i32, ptr %160, align 4
  %172 = sub i32 %171, %170
  store i32 %172, ptr %160, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %155) #10
  br label %214

173:                                              ; preds = %165
  %174 = getelementptr i8, ptr %154, i32 76
  %175 = load i32, ptr %174, align 4
  %176 = sub i32 %159, %175
  store i32 %176, ptr %160, align 4
  %177 = getelementptr i8, ptr %154, i32 8
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, %177
  br i1 %179, label %207, label %180

180:                                              ; preds = %201, %173
  %181 = phi i32 [ %204, %201 ], [ %176, %173 ]
  %182 = phi ptr [ %205, %201 ], [ %178, %173 ]
  %183 = getelementptr i8, ptr %182, i32 -20
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, %9
  br i1 %185, label %186, label %201

186:                                              ; preds = %180
  %187 = load ptr, ptr %1, align 4
  %188 = load ptr, ptr %6, align 4
  %189 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %188, i32 0, i32 7
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !63
  %191 = load ptr, ptr %6, align 4
  %192 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %191, i32 0, i32 6
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !64
  %194 = getelementptr inbounds %struct.dw_dma, ptr %187, i32 0, i32 14
  %195 = load ptr, ptr %194, align 4
  %196 = lshr i32 %193, 4
  %197 = and i32 %196, 7
  %198 = tail call i32 %195(ptr noundef %1, i32 noundef %190, i32 noundef %197) #10
  %199 = load i32, ptr %160, align 4
  %200 = sub i32 %199, %198
  store i32 %200, ptr %160, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %155) #10
  br label %214

201:                                              ; preds = %180
  %202 = getelementptr i8, ptr %182, i32 76
  %203 = load i32, ptr %202, align 4
  %204 = sub i32 %181, %203
  store i32 %204, ptr %160, align 4
  %205 = load ptr, ptr %182, align 4
  %206 = icmp eq ptr %205, %177
  br i1 %206, label %207, label %180

207:                                              ; preds = %201, %173
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %155) #10
  tail call fastcc void @dwc_descriptor_complete(ptr noundef %1, ptr noundef %156, i1 noundef zeroext true)
  %208 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %209 = icmp eq ptr %157, %141
  br i1 %209, label %210, label %153

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 5
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.dma_chan_dev, ptr %212, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.8) #11
  tail call fastcc void @dwc_chan_disable(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @dwc_dostart_first_queued(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %208) #10
  br label %214

214:                                              ; preds = %210, %186, %169, %164, %152, %144, %139, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc_dostart(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 14, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 3
  %7 = getelementptr inbounds %struct.dw_dma, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_dma_regs, ptr %8, i32 0, i32 21
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !75
  %11 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dwc_dostart) #11
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !76
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %25, i32 0, i32 2
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !77
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %28, i32 0, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !78
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %31, i32 0, i32 7
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !79
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %34, i32 0, i32 6
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36) #11
  br label %131

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 12
  %39 = load i8, ptr %38, align 4, !range !56
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %97, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 7
  %43 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %42) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.5) #11
  br label %131

49:                                               ; preds = %41
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.dw_dma, ptr %50, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %0) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !81
  tail call void @arm_heavy_mb() #10
  %53 = load i8, ptr %11, align 4
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = or i32 %55, %54
  %57 = getelementptr inbounds %struct.dw_dma, ptr %50, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dw_dma_regs, ptr %58, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %60 = load i8, ptr %11, align 4
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  %63 = or i32 %62, %61
  %64 = load ptr, ptr %57, align 4
  %65 = getelementptr inbounds %struct.dw_dma_regs, ptr %64, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #10, !srcloc !9
  %66 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 6
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 2
  %70 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 5
  store ptr %69, ptr %70, align 4
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.dw_lli, ptr %1, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %75 = load i32, ptr %1, align 4
  %76 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %78 = getelementptr inbounds %struct.dw_lli, ptr %1, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %76, align 4
  %81 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %80, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %82 = load ptr, ptr %76, align 4
  %83 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %82, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %74) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %84 = getelementptr inbounds %struct.dw_lli, ptr %1, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %76, align 4
  %87 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %86, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %88 = load i8, ptr %11, align 4
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or i32 %90, %89
  %92 = getelementptr inbounds %struct.dw_dma, ptr %71, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.dw_dma_regs, ptr %93, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #10, !srcloc !9
  %95 = load ptr, ptr %70, align 4
  %96 = load ptr, ptr %95, align 4
  store ptr %96, ptr %70, align 4
  br label %131

97:                                               ; preds = %37
  %98 = load ptr, ptr %0, align 4
  %99 = getelementptr inbounds %struct.dw_dma, ptr %98, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  tail call void %100(ptr noundef %0) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !81
  tail call void @arm_heavy_mb() #10
  %101 = load i8, ptr %11, align 4
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %103, %102
  %105 = getelementptr inbounds %struct.dw_dma, ptr %98, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.dw_dma_regs, ptr %106, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %108 = load i8, ptr %11, align 4
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %110, %109
  %112 = load ptr, ptr %105, align 4
  %113 = getelementptr inbounds %struct.dw_dma_regs, ptr %112, i32 0, i32 3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %114 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = zext i8 %6 to i32
  %117 = or i32 %115, %116
  %118 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %119, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %117) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !84
  tail call void @arm_heavy_mb() #10
  %121 = load ptr, ptr %118, align 4
  %122 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %121, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 402653184) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %123 = load ptr, ptr %118, align 4
  %124 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %123, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 0) #10, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %125 = load i8, ptr %11, align 4
  %126 = zext i8 %125 to i32
  %127 = shl nuw nsw i32 %126, 8
  %128 = or i32 %127, %126
  %129 = load ptr, ptr %7, align 4
  %130 = getelementptr inbounds %struct.dw_dma_regs, ptr %129, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #10, !srcloc !9
  br label %131

131:                                              ; preds = %97, %49, %45, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc_descriptor_complete(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = alloca %struct.dmaengine_result, align 8
  %5 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 6
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11, !prof !22

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan, ptr %13, i32 0, i32 3
  store i32 %8, ptr %14, align 4
  store i32 0, ptr %5, align 4
  br i1 %2, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 8
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %17, %15 ], [ null, %11 ]
  %24 = phi ptr [ %19, %15 ], [ null, %11 ]
  %25 = phi ptr [ %21, %15 ], [ null, %11 ]
  %26 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %36, label %29

29:                                               ; preds = %29, %22
  %30 = phi ptr [ %34, %29 ], [ %27, %22 ]
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 2
  store i32 %33, ptr %31, align 4
  %34 = load ptr, ptr %30, align 4
  %35 = icmp eq ptr %34, %26
  br i1 %35, label %36, label %29

36:                                               ; preds = %29, %22
  %37 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, 2
  store i32 %39, ptr %37, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = icmp eq ptr %1, null
  br i1 %41, label %69, label %42, !prof !22

42:                                               ; preds = %36
  %43 = load ptr, ptr %26, align 4
  %44 = icmp eq ptr %43, %26
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.dw_dma, ptr %40, i32 0, i32 3
  %47 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %43, %45 ], [ %51, %48 ]
  %50 = getelementptr i8, ptr %49, i32 -28
  %51 = load ptr, ptr %49, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  store volatile ptr %51, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %55 = load ptr, ptr %46, align 4
  %56 = getelementptr i8, ptr %49, i32 24
  %57 = load i32, ptr %56, align 4
  tail call void @dma_pool_free(ptr noundef %55, ptr noundef %50, i32 noundef %57) #10
  %58 = load i32, ptr %47, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %47, align 4
  %60 = icmp eq ptr %51, %26
  br i1 %60, label %61, label %48

61:                                               ; preds = %48, %42
  %62 = getelementptr inbounds %struct.dw_dma, ptr %40, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dw_desc, ptr %1, i32 0, i32 3, i32 2
  %65 = load i32, ptr %64, align 4
  tail call void @dma_pool_free(ptr noundef %63, ptr noundef nonnull %1, i32 noundef %65) #10
  %66 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  store i32 %68, ptr %66, align 4
  br label %69

69:                                               ; preds = %61, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8
  %70 = icmp eq ptr %24, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  call void %24(ptr noundef %25, ptr noundef nonnull %4) #10
  br label %75

72:                                               ; preds = %69
  %73 = icmp eq ptr %23, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  tail call void %23(ptr noundef %25) #10
  br label %75

75:                                               ; preds = %74, %72, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc_get_sent(ptr noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %4, i32 0, i32 7
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !63
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dw_dma_chan_regs, ptr %7, i32 0, i32 6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !64
  %10 = getelementptr inbounds %struct.dw_dma, ptr %2, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = lshr i32 %9, 4
  %13 = and i32 %12, 7
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef %6, i32 noundef %13) #10
  ret i32 %14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc_chan_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  %3 = getelementptr inbounds %struct.dw_dma_chan, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = getelementptr inbounds %struct.dw_dma, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dw_dma_regs, ptr %8, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #10, !srcloc !9
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.dw_dma_regs, ptr %10, i32 0, i32 21
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %13 = load i8, ptr %3, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !61
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr inbounds %struct.dw_dma_regs, ptr %18, i32 0, i32 21
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !15
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %21 = load i8, ptr %3, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc_dostart_first_queued(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 9
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dw_dma_chan, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  store ptr %11, ptr %3, align 4
  store ptr %6, ptr %7, align 4
  store volatile ptr %3, ptr %6, align 4
  %13 = getelementptr i8, ptr %3, i32 -28
  tail call fastcc void @dwc_dostart(ptr noundef %0, ptr noundef %13)
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_tx_submit(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dw_dma_chan, ptr %3, i32 0, i32 6
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #10
  store i32 %10, ptr %7, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr i8, ptr %0, i32 -16
  %12 = getelementptr inbounds %struct.dw_dma_chan, ptr %3, i32 0, i32 9
  %13 = getelementptr inbounds %struct.dw_dma_chan, ptr %3, i32 0, i32 9, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %15 = getelementptr i8, ptr %0, i32 -12
  store ptr %14, ptr %15, align 4
  store volatile ptr %11, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
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
!8 = !{i64 2153174354}
!9 = !{i64 5043625}
!10 = !{i64 2153174881}
!11 = !{i64 2153175479}
!12 = !{i64 2153176087}
!13 = !{i64 2153176698}
!14 = !{i64 2153177300}
!15 = !{i64 5044043}
!16 = !{i64 2153177905}
!17 = !{i64 2153178160}
!18 = !{i64 2153178002}
!19 = !{i64 2153178428}
!20 = !{i64 2153188513}
!21 = !{i64 2153189541}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2153191114}
!24 = !{i64 2153191600}
!25 = !{i64 2153192524}
!26 = !{i64 2153192994}
!27 = !{i64 2153193471}
!28 = !{i64 2153193951}
!29 = !{i64 2153194425}
!30 = !{i64 2153121919}
!31 = !{i64 2153122338}
!32 = !{i64 2153115595}
!33 = !{i64 2153124027}
!34 = !{i64 2153124728}
!35 = !{i64 2153125401}
!36 = !{i64 2153126362}
!37 = !{i64 2153126960}
!38 = !{i64 2153127559}
!39 = !{i64 2153128192}
!40 = !{i64 2153129235}
!41 = !{i64 2153129808}
!42 = !{i64 2153130391}
!43 = !{i64 2153130977}
!44 = !{i64 2153131554}
!45 = !{i64 2153179473}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2153181677, i64 2153182164, i64 2153181714, i64 2153181770, i64 2153181804, i64 2153181828, i64 2153181869, i64 2153181890, i64 2153181918, i64 2153181952}
!48 = !{i64 2153182726, i64 2153183213, i64 2153182763, i64 2153182819, i64 2153182853, i64 2153182877, i64 2153182918, i64 2153182939, i64 2153182967, i64 2153183001}
!49 = !{i64 2153184425}
!50 = !{i64 2153184650, i64 2153185137, i64 2153184687, i64 2153184743, i64 2153184777, i64 2153184801, i64 2153184842, i64 2153184863, i64 2153184891, i64 2153184925}
!51 = !{i64 2153186076}
!52 = !{i64 2153186634}
!53 = !{i64 2153187193}
!54 = !{!"auto-init"}
!55 = !{i32 0, i32 33}
!56 = !{i8 0, i8 2}
!57 = !{i64 2153162631}
!58 = !{i64 2153072944}
!59 = !{i64 2153073536}
!60 = !{i64 2153073782}
!61 = !{i64 2153073624}
!62 = !{i64 2152958779}
!63 = !{i64 2153097426}
!64 = !{i64 2153097842}
!65 = !{i64 2153202732}
!66 = !{i64 2153098598}
!67 = !{i64 2153099013}
!68 = !{i64 2153099285}
!69 = !{i64 2153074500}
!70 = !{i64 2153075171}
!71 = !{i64 2153075667}
!72 = !{i64 2153076271}
!73 = !{i64 2153076902}
!74 = !{i64 2153087096}
!75 = !{i64 2153077546}
!76 = !{i64 2153070785}
!77 = !{i64 2153071189}
!78 = !{i64 2153071593}
!79 = !{i64 2153072009}
!80 = !{i64 2153072425}
!81 = !{i64 2153068385}
!82 = !{i64 2153069006}
!83 = !{i64 2153079488}
!84 = !{i64 2153079984}
!85 = !{i64 2153080423}
!86 = !{i64 2153080958}
!87 = !{i64 2152957837, i64 2152958330, i64 2152957874, i64 2152957930, i64 2152957964, i64 2152957988, i64 2152958029, i64 2152958050, i64 2152958078, i64 2152958112}
