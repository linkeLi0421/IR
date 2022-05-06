; ModuleID = '/llk/IR/drivers/irqchip/irq-atmel-aic5.c_pt.bc'
source_filename = "../drivers/irqchip/irq-atmel-aic5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_sama5d2_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_aic5_of_init }, section "__irqchip_of_table", align 4
@__of_table_sama5d3_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_aic5_of_init }, section "__irqchip_of_table", align 4
@__of_table_sama5d4_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_aic5_of_init }, section "__irqchip_of_table", align 4
@__of_table_sam9x60_aic5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-aic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_aic5_of_init }, section "__irqchip_of_table", align 4
@smr_cache = internal unnamed_addr global ptr null, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@aic5_domain = internal unnamed_addr global ptr null, align 4
@aic5_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @irq_map_generic_chip, ptr null, ptr @aic5_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [11 x i8] c"atmel-aic5\00", align 1
@aic5_irq_fixups = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_aic_irq_fixup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_aic_irq_fixup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_aic_irq_fixup }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_sam9x60_aic5, ptr @__of_table_sama5d2_aic5, ptr @__of_table_sama5d3_aic5, ptr @__of_table_sama5d4_aic5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sama5d2_aic5_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 384) #6
  store ptr %4, ptr @smr_cache, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @aic5_of_init(ptr noundef %0, i32 noundef 77) #7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ -12, %2 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sama5d3_aic5_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @aic5_of_init(ptr noundef %0, i32 noundef 48) #7
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sama5d4_aic5_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @aic5_of_init(ptr noundef %0, i32 noundef 68) #7
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sam9x60_aic5_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @aic5_of_init(ptr noundef %0, i32 noundef 50) #7
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @aic5_of_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @aic5_domain, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  %6 = tail call ptr @aic_common_of_init(ptr noundef %0, ptr noundef nonnull @aic5_irq_ops, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef nonnull @aic5_irq_fixups) #8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %32

10:                                               ; preds = %5
  store ptr %6, ptr @aic5_domain, align 4
  %11 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = lshr i32 %12, 5
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %28, %16 ], [ 0, %14 ]
  %18 = shl i32 %17, 5
  %19 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %6, i32 noundef %18) #9
  %20 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 2, i32 18
  store i32 56, ptr %20, align 4
  %21 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 7
  store ptr @aic5_mask, ptr %21, align 4
  %22 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 9
  store ptr @aic5_unmask, ptr %22, align 4
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 12
  store ptr @aic5_retrigger, ptr %23, align 4
  %24 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 13
  store ptr @aic5_set_type, ptr %24, align 4
  %25 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 17
  store ptr @aic5_suspend, ptr %25, align 4
  %26 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 18
  store ptr @aic5_resume, ptr %26, align 4
  %27 = getelementptr inbounds %struct.irq_chip_generic, ptr %19, i32 1, i32 18, i32 1
  store ptr @aic5_pm_shutdown, ptr %27, align 4
  %28 = add nuw nsw i32 %17, 1
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %16

30:                                               ; preds = %16, %10
  tail call fastcc void @aic5_hw_init(ptr noundef %6) #7
  %31 = tail call i32 @set_handle_irq(ptr noundef nonnull @aic5_handle) #8
  br label %32

32:                                               ; preds = %30, %8, %2
  %33 = phi i32 [ %9, %8 ], [ 0, %30 ], [ -17, %2 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @aic_common_of_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic5_mask(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %10(i32 noundef %8, ptr noundef %14) #9
  br label %18

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %8) #9, !srcloc !9
  br label %18

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 68
  tail call void %19(i32 noundef 1, ptr noundef %24) #9
  br label %29

25:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %26 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #9, !srcloc !9
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %0, align 4
  %31 = xor i32 %30, -1
  %32 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %35 = load i16, ptr %4, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic5_unmask(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %10(i32 noundef %8, ptr noundef %14) #9
  br label %18

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %8) #9, !srcloc !9
  br label %18

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr %9, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 64
  tail call void %19(i32 noundef 1, ptr noundef %24) #9
  br label %29

25:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %26 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #9, !srcloc !9
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %34 = load i16, ptr %4, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aic5_retrigger(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #9
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %8(i32 noundef %6, ptr noundef %12) #9
  br label %16

13:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %6) #9, !srcloc !9
  br label %16

16:                                               ; preds = %13, %10
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 76
  tail call void %17(i32 noundef 1, ptr noundef %22) #9
  br label %27

23:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #9, !srcloc !9
  br label %27

27:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %28 = load i16, ptr %4, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aic5_set_type(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %5, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %10(i32 noundef %8, ptr noundef %14) #9
  br label %18

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %8) #9, !srcloc !9
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  br i1 %21, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call i32 %20(ptr noundef %24) #9
  br label %29

27:                                               ; preds = %18
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, ptr %3, align 4
  %31 = call i32 @aic_common_set_type(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, ptr %3, align 4
  %35 = load ptr, ptr %9, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  call void %35(i32 noundef %34, ptr noundef %39) #9
  br label %43

40:                                               ; preds = %33
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %22, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %34) #9, !srcloc !9
  br label %43

43:                                               ; preds = %40, %37, %29
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %44 = load i16, ptr %6, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic5_suspend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @smr_cache, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %17 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %18 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 2
  br label %19

19:                                               ; preds = %36, %15
  %20 = phi i32 [ 0, %15 ], [ %40, %36 ]
  %21 = load ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 4
  tail call void %21(i32 noundef %20, ptr noundef %24) #9
  br label %27

25:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %20) #9, !srcloc !9
  br label %27

27:                                               ; preds = %25, %23
  %28 = load ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  br i1 %29, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %28(ptr noundef %31) #9
  br label %36

34:                                               ; preds = %27
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load ptr, ptr @smr_cache, align 4
  %39 = getelementptr i32, ptr %38, i32 %20
  store i32 %37, ptr %39, align 4
  %40 = add nuw i32 %20, 1
  %41 = load i32, ptr %12, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %19, label %43

43:                                               ; preds = %36, %11, %1
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %44 = load i32, ptr %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %93, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 8
  %48 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 12
  %49 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 6
  %50 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %51 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  br label %52

52:                                               ; preds = %89, %46
  %53 = phi i32 [ 0, %46 ], [ %90, %89 ]
  %54 = shl nuw i32 1, %53
  %55 = load i32, ptr %47, align 4
  %56 = load i32, ptr %48, align 4
  %57 = xor i32 %56, %55
  %58 = and i32 %57, %54
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %52
  %61 = load i32, ptr %49, align 4
  %62 = add i32 %61, %53
  %63 = load ptr, ptr %50, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load ptr, ptr %51, align 4
  tail call void %63(i32 noundef %62, ptr noundef %66) #9
  br label %69

67:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %68 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %62) #9, !srcloc !9
  br label %69

69:                                               ; preds = %67, %65
  %70 = load i32, ptr %48, align 4
  %71 = and i32 %70, %54
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %50, align 4
  %74 = icmp eq ptr %73, null
  br i1 %72, label %82, label %75

75:                                               ; preds = %69
  br i1 %74, label %79, label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %51, align 4
  %78 = getelementptr i8, ptr %77, i32 64
  tail call void %73(i32 noundef 1, ptr noundef %78) #9
  br label %89

79:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %51, align 4
  %81 = getelementptr i8, ptr %80, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 1) #9, !srcloc !9
  br label %89

82:                                               ; preds = %69
  br i1 %74, label %86, label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %51, align 4
  %85 = getelementptr i8, ptr %84, i32 68
  tail call void %73(i32 noundef 1, ptr noundef %85) #9
  br label %89

86:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %87 = load ptr, ptr %51, align 4
  %88 = getelementptr i8, ptr %87, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1) #9, !srcloc !9
  br label %89

89:                                               ; preds = %86, %83, %79, %76, %52
  %90 = add nuw i32 %53, 1
  %91 = load i32, ptr %5, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %52, label %93

93:                                               ; preds = %89, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %94 = load i16, ptr %6, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic5_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %9 = load ptr, ptr @smr_cache, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 60
  tail call void %13(i32 noundef -1, ptr noundef %18) #9
  br label %23

19:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #9, !srcloc !9
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  br label %29

29:                                               ; preds = %58, %27
  %30 = phi i32 [ 0, %27 ], [ %59, %58 ]
  %31 = load ptr, ptr %12, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %28, align 4
  tail call void %31(i32 noundef %30, ptr noundef %34) #9
  br label %37

35:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %36 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %30) #9, !srcloc !9
  br label %37

37:                                               ; preds = %35, %33
  %38 = load ptr, ptr %12, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %28, align 4
  %42 = getelementptr i8, ptr %41, i32 8
  tail call void %38(i32 noundef %30, ptr noundef %42) #9
  br label %46

43:                                               ; preds = %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %44 = load ptr, ptr %28, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %30) #9, !srcloc !9
  br label %46

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr @smr_cache, align 4
  %48 = getelementptr i32, ptr %47, i32 %30
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %12, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %28, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  tail call void %50(i32 noundef %49, ptr noundef %54) #9
  br label %58

55:                                               ; preds = %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %56 = load ptr, ptr %28, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %49) #9, !srcloc !9
  br label %58

58:                                               ; preds = %55, %52
  %59 = add nuw i32 %30, 1
  %60 = load i32, ptr %24, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %29, label %62

62:                                               ; preds = %58, %23, %1
  %63 = load i32, ptr %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %115, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 8
  %67 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 12
  %68 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 6
  %69 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %70 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  br label %71

71:                                               ; preds = %111, %65
  %72 = phi i32 [ 0, %65 ], [ %112, %111 ]
  %73 = shl nuw i32 1, %72
  %74 = load ptr, ptr @smr_cache, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, ptr %66, align 4
  %78 = load i32, ptr %67, align 4
  %79 = xor i32 %78, %77
  %80 = and i32 %79, %73
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %76, %71
  %83 = load i32, ptr %68, align 4
  %84 = add i32 %83, %72
  %85 = load ptr, ptr %69, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %70, align 4
  tail call void %85(i32 noundef %84, ptr noundef %88) #9
  br label %91

89:                                               ; preds = %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %70, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %84) #9, !srcloc !9
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, ptr %66, align 4
  %93 = and i32 %92, %73
  %94 = icmp eq i32 %93, 0
  %95 = load ptr, ptr %69, align 4
  %96 = icmp eq ptr %95, null
  br i1 %94, label %104, label %97

97:                                               ; preds = %91
  br i1 %96, label %101, label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %70, align 4
  %100 = getelementptr i8, ptr %99, i32 64
  tail call void %95(i32 noundef 1, ptr noundef %100) #9
  br label %111

101:                                              ; preds = %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %102 = load ptr, ptr %70, align 4
  %103 = getelementptr i8, ptr %102, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 1) #9, !srcloc !9
  br label %111

104:                                              ; preds = %91
  br i1 %96, label %108, label %105

105:                                              ; preds = %104
  %106 = load ptr, ptr %70, align 4
  %107 = getelementptr i8, ptr %106, i32 68
  tail call void %95(i32 noundef 1, ptr noundef %107) #9
  br label %111

108:                                              ; preds = %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %109 = load ptr, ptr %70, align 4
  %110 = getelementptr i8, ptr %109, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 1) #9, !srcloc !9
  br label %111

111:                                              ; preds = %108, %105, %101, %98, %76
  %112 = add nuw i32 %72, 1
  %113 = load i32, ptr %5, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %71, label %115

115:                                              ; preds = %111, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %116 = load i16, ptr %6, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic5_pm_shutdown(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #9
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #9
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 6
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 3
  %14 = getelementptr inbounds %struct.irq_chip_generic, ptr %6, i32 0, i32 1
  br label %15

15:                                               ; preds = %43, %11
  %16 = phi i32 [ 0, %11 ], [ %44, %43 ]
  %17 = load i32, ptr %12, align 4
  %18 = add i32 %17, %16
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %14, align 4
  tail call void %19(i32 noundef %18, ptr noundef %22) #9
  br label %25

23:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %18) #9, !srcloc !9
  br label %25

25:                                               ; preds = %23, %21
  %26 = load ptr, ptr %13, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr i8, ptr %29, i32 68
  tail call void %26(i32 noundef 1, ptr noundef %30) #9
  br label %34

31:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr i8, ptr %32, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #9, !srcloc !9
  br label %34

34:                                               ; preds = %31, %28
  %35 = load ptr, ptr %13, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr i8, ptr %38, i32 72
  tail call void %35(i32 noundef 1, ptr noundef %39) #9
  br label %43

40:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1) #9, !srcloc !9
  br label %43

43:                                               ; preds = %40, %37
  %44 = add nuw i32 %16, 1
  %45 = load i32, ptr %5, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %15, label %47

47:                                               ; preds = %43, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %48 = load i16, ptr %6, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @aic5_hw_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef 0) #9
  %3 = getelementptr inbounds %struct.irq_chip_generic, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %2, i32 0, i32 1
  br label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 56
  tail call void %7(i32 noundef 0, ptr noundef %11) #9
  br label %15

12:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #9, !srcloc !9
  br label %15

15:                                               ; preds = %12, %9
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %5

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 60
  tail call void %19(i32 noundef -1, ptr noundef %23) #9
  br label %27

24:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #9, !srcloc !9
  br label %27

27:                                               ; preds = %24, %21
  %28 = load ptr, ptr %3, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 108
  tail call void %28(i32 noundef 0, ptr noundef %32) #9
  br label %36

33:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #9, !srcloc !9
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %79, label %40

40:                                               ; preds = %75, %36
  %41 = phi i32 [ %76, %75 ], [ 0, %36 ]
  %42 = load ptr, ptr %3, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %4, align 4
  tail call void %42(i32 noundef %41, ptr noundef %45) #9
  br label %48

46:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %41) #9, !srcloc !9
  br label %48

48:                                               ; preds = %46, %44
  %49 = load ptr, ptr %3, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  tail call void %49(i32 noundef %41, ptr noundef %53) #9
  br label %57

54:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %41) #9, !srcloc !9
  br label %57

57:                                               ; preds = %54, %51
  %58 = load ptr, ptr %3, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i8, ptr %61, i32 68
  tail call void %58(i32 noundef 1, ptr noundef %62) #9
  br label %66

63:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr i8, ptr %64, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 1) #9, !srcloc !9
  br label %66

66:                                               ; preds = %63, %60
  %67 = load ptr, ptr %3, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %4, align 4
  %71 = getelementptr i8, ptr %70, i32 72
  tail call void %67(i32 noundef 1, ptr noundef %71) #9
  br label %75

72:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i8, ptr %73, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 1) #9, !srcloc !9
  br label %75

75:                                               ; preds = %72, %69
  %76 = add nuw i32 %41, 1
  %77 = load i32, ptr %37, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %40, label %79

79:                                               ; preds = %75, %36
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aic5_handle(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr @aic5_domain, align 4
  %3 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %2, i32 noundef 0) #9
  %4 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  br i1 %6, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %5(ptr noundef %9) #9
  br label %14

12:                                               ; preds = %1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 24
  br i1 %17, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 %16(ptr noundef %19) #9
  br label %24

22:                                               ; preds = %14
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 56
  tail call void %29(i32 noundef 0, ptr noundef %33) #9
  br label %40

34:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr i8, ptr %35, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #9, !srcloc !9
  br label %40

37:                                               ; preds = %24
  %38 = load ptr, ptr @aic5_domain, align 4
  %39 = tail call i32 @generic_handle_domain_irq(ptr noundef %38, i32 noundef %15) #9
  br label %40

40:                                               ; preds = %37, %34, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_map_generic_chip(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aic5_irq_domain_xlate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #5 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %0, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @aic_common_irq_domain_xlate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #9
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %17(i32 noundef %15, ptr noundef %21) #9
  br label %25

22:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %15) #9, !srcloc !9
  br label %25

25:                                               ; preds = %22, %19
  %26 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 4
  br i1 %28, label %34, label %32

32:                                               ; preds = %25
  %33 = tail call i32 %27(ptr noundef %31) #9
  br label %36

34:                                               ; preds = %25
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, ptr %7, align 4
  %38 = getelementptr i32, ptr %2, i32 2
  %39 = load i32, ptr %38, align 4
  call void @aic_common_set_priority(i32 noundef %39, ptr noundef nonnull %7) #9
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %16, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  call void %41(i32 noundef %40, ptr noundef %45) #9
  br label %49

46:                                               ; preds = %36
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  call void @arm_heavy_mb() #9
  %47 = load ptr, ptr %29, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %40) #9, !srcloc !9
  br label %49

49:                                               ; preds = %46, %43
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %8, i32 noundef %14) #9
  br label %50

50:                                               ; preds = %49, %10, %6
  %51 = phi i32 [ 0, %49 ], [ -22, %6 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aic_common_irq_domain_xlate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @aic_common_set_priority(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sama5d3_aic_irq_fixup() #0 section ".init.text" {
  tail call void @aic_common_rtc_irq_fixup() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sam9x60_aic_irq_fixup() #0 section ".init.text" {
  tail call void @aic_common_rtc_irq_fixup() #8
  tail call void @aic_common_rtt_irq_fixup() #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @aic_common_rtc_irq_fixup() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @aic_common_rtt_irq_fixup() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aic_common_set_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
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
!8 = !{i64 2152418524}
!9 = !{i64 4768561}
!10 = !{i64 2148935140}
!11 = !{i64 2148930964}
!12 = !{i64 2148931039, i64 2148931066, i64 2148931113, i64 2148931135, i64 2148931163, i64 2148931183}
!13 = !{i64 2148958143}
!14 = !{i64 4768979}
!15 = !{i64 2152419188}
