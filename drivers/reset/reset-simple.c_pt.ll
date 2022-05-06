; ModuleID = '/llk/IR/drivers/reset/reset-simple.c_pt.bc'
source_filename = "../drivers/reset/reset-simple.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reset_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22reset_simple_ops\22\09\09\09\09\09"
module asm "__kstrtabns_reset_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_simple_devdata = type { i32, i32, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@reset_simple_ops = dso_local constant %struct.reset_control_ops { ptr @reset_simple_reset, ptr @reset_simple_assert, ptr @reset_simple_deassert, ptr @reset_simple_status }, align 4
@__kstrtab_reset_simple_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_reset_simple_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_reset_simple_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reset_simple_ops to i32), ptr @__kstrtab_reset_simple_ops, ptr @__kstrtabns_reset_simple_ops }, section "___ksymtab_gpl+reset_simple_ops", align 4
@__initcall__kmod_reset_simple__162_204_reset_simple_driver_init6 = internal global ptr @reset_simple_driver_init, section ".initcall6.init", align 4
@reset_simple_driver = internal global %struct.platform_driver { ptr @reset_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @reset_simple_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"simple-reset\00", align 1
@reset_simple_dt_ids = internal constant [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,stratix10-rst-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_socfpga }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-clock-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zte,zx296718-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-lpc-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-lpc-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bitmain,bm1880-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-misc-pcie-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-high-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-low-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_simple_active_low }, %struct.of_device_id zeroinitializer], align 4
@reset_simple_socfpga = internal constant %struct.reset_simple_devdata { i32 32, i32 256, i8 0, i8 1 }, align 4
@reset_simple_active_low = internal constant %struct.reset_simple_devdata { i32 0, i32 0, i8 1, i8 1 }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_reset_simple__162_204_reset_simple_driver_init6, ptr @__ksymtab_reset_simple_ops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_simple_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 48
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = and i32 %1, 31
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #3
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = lshr i32 %1, 3
  %13 = and i32 %12, 536870908
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %16 = getelementptr i8, ptr %0, i32 44
  %17 = load i8, ptr %16, align 4, !range !10
  %18 = icmp eq i8 %17, 1
  %19 = shl nuw i32 1, %8
  %20 = or i32 %15, %19
  %21 = xor i32 %19, -1
  %22 = and i32 %15, %21
  %23 = select i1 %18, i32 %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #3, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %9) #3
  %26 = load i32, ptr %3, align 4
  %27 = shl i32 %26, 1
  tail call void @usleep_range_state(i32 noundef %26, i32 noundef %27, i32 noundef 2) #3
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #3
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr i8, ptr %29, i32 %13
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %32 = load i8, ptr %16, align 4, !range !10
  %33 = icmp eq i8 %32, 0
  %34 = or i32 %31, %19
  %35 = and i32 %31, %21
  %36 = select i1 %33, i32 %35, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr i8, ptr %37, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #3, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %28) #3
  br label %39

39:                                               ; preds = %6, %2
  %40 = phi i32 [ 0, %6 ], [ -524, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_simple_assert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = and i32 %1, 31
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %1, 3
  %9 = and i32 %8, 536870908
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 44
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 1
  %15 = shl nuw i32 1, %4
  %16 = or i32 %11, %15
  %17 = xor i32 %15, -1
  %18 = and i32 %11, %17
  %19 = select i1 %14, i32 %18, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #3, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_simple_deassert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = and i32 %1, 31
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #3
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %1, 3
  %9 = and i32 %8, 536870908
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %12 = getelementptr i8, ptr %0, i32 44
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = shl nuw i32 1, %4
  %16 = or i32 %11, %15
  %17 = xor i32 %15, -1
  %18 = and i32 %11, %17
  %19 = select i1 %14, i32 %18, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #3, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %5) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_simple_status(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 31
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 3
  %7 = and i32 %6, 536870908
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !13
  %10 = xor i32 %9, -1
  %11 = lshr i32 %10, %3
  %12 = and i32 %11, 1
  %13 = getelementptr i8, ptr %0, i32 45
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = xor i8 %14, 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %12, %16
  ret i32 %17
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @reset_simple_driver_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @reset_simple_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_simple_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 60, i32 noundef 3520) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #3
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %7) #3
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %44

12:                                               ; preds = %6
  store i32 0, ptr %4, align 4
  %13 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 2, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %7, align 4
  %19 = add i32 %17, 1
  %20 = sub i32 %19, %18
  %21 = shl i32 %20, 3
  %22 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 2, i32 8
  store i32 %21, ptr %22, align 4
  store ptr @reset_simple_ops, ptr %14, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 2, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %3, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %12
  %28 = load i32, ptr %3, align 4
  %29 = getelementptr inbounds %struct.reset_simple_devdata, ptr %3, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 %30, ptr %22, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct.reset_simple_devdata, ptr %3, i32 0, i32 2
  %35 = load i8, ptr %34, align 4, !range !10
  %36 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 3
  store i8 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.reset_simple_devdata, ptr %3, i32 0, i32 3
  %38 = load i8, ptr %37, align 1, !range !10
  %39 = getelementptr inbounds %struct.reset_simple_data, ptr %4, i32 0, i32 4
  store i8 %38, ptr %39, align 1
  br label %40

40:                                               ; preds = %33, %12
  %41 = phi i32 [ %28, %33 ], [ 0, %12 ]
  %42 = getelementptr i8, ptr %8, i32 %41
  store ptr %42, ptr %13, align 4
  %43 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %14) #3
  br label %44

44:                                               ; preds = %40, %10, %1
  %45 = phi i32 [ %11, %10 ], [ %43, %40 ], [ -12, %1 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 3618090}
!9 = !{i64 2151349166}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151349528}
!12 = !{i64 3617672}
!13 = !{i64 2151350067}
