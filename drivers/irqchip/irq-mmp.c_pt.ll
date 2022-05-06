; ModuleID = '/llk/IR/drivers/irqchip/irq-mmp.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.icu_chip_data = type { i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@.str = private unnamed_addr constant [8 x i8] c"icu_irq\00", align 1
@icu_irq_chip = dso_local global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icu_mask_irq, ptr @icu_mask_ack_irq, ptr @icu_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@max_icu_nr = internal unnamed_addr global i32 0, align 4
@mmp_icu_base = internal unnamed_addr global ptr null, align 4
@icu_data = internal global [16 x %struct.icu_chip_data] zeroinitializer, align 4
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@__of_table_mmp_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp_of_init }, section "__irqchip_of_table", align 4
@__of_table_mmp2_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_of_init }, section "__irqchip_of_table", align 4
@__of_table_mmp3_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp3-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp3_of_init }, section "__irqchip_of_table", align 4
@__of_table_mmp2_mux_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp2-mux-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_mux_of_init }, section "__irqchip_of_table", align 4
@mmp_icu2_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\013Spurious irq %d in MMP INTC\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mrvl,intc-nr-irqs\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\013Not found mrvl,intc-nr-irqs property\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013Failed to get interrupt controller register\0A\00", align 1
@mmp_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @mmp_irq_domain_map, ptr null, ptr @mmp_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"\013Failed to mapping hwirq\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\013Failed to get interrupt controller register #2\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\013Not found reg property\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"mrvl,clr-mfp-irq\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_mmp2_intc, ptr @__of_table_mmp2_mux_intc, ptr @__of_table_mmp3_intc, ptr @__of_table_mmp_intc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @icu_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.icu_chip_data, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp eq ptr %5, @icu_data
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load ptr, ptr @mmp_icu_base, align 4
  %14 = shl i32 %10, 2
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  %21 = or i32 %19, %20
  %22 = load ptr, ptr @mmp_icu_base, align 4
  %23 = getelementptr i8, ptr %22, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 8), align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %12
  %27 = load ptr, ptr @mmp_icu2_base, align 4
  %28 = getelementptr i8, ptr %27, i32 %14
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !8
  %30 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 8), align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load ptr, ptr @mmp_icu2_base, align 4
  %34 = getelementptr i8, ptr %33, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #7, !srcloc !9
  br label %42

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.icu_chip_data, ptr %5, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !8
  %39 = shl nuw i32 1, %10
  %40 = or i32 %38, %39
  %41 = load ptr, ptr %36, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #7, !srcloc !9
  br label %42

42:                                               ; preds = %35, %26, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @icu_mask_ack_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.icu_chip_data, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp eq ptr %5, @icu_data
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load ptr, ptr @mmp_icu_base, align 4
  %14 = shl i32 %10, 2
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  %21 = or i32 %19, %20
  %22 = load ptr, ptr @mmp_icu_base, align 4
  %23 = getelementptr i8, ptr %22, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  br label %31

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.icu_chip_data, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  %28 = shl nuw i32 1, %10
  %29 = or i32 %27, %28
  %30 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #7, !srcloc !9
  br label %31

31:                                               ; preds = %24, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @icu_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.icu_chip_data, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp eq ptr %5, @icu_data
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load ptr, ptr @mmp_icu_base, align 4
  %14 = shl i32 %10, 2
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  %21 = or i32 %19, %20
  %22 = load ptr, ptr @mmp_icu_base, align 4
  %23 = getelementptr i8, ptr %22, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  br label %32

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.icu_chip_data, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !8
  %28 = shl nuw i32 1, %10
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #7, !srcloc !9
  br label %32

32:                                               ; preds = %24, %12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @icu_init_irq() local_unnamed_addr #1 section ".init.text" {
  store i32 1, ptr @max_icu_nr, align 4
  %1 = tail call ptr @ioremap(i32 noundef -735567872, i32 noundef 4096) #7
  store ptr %1, ptr @mmp_icu_base, align 4
  store i32 81, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 127, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  store i32 64, ptr @icu_data, align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %2 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef nonnull @icu_data) #7
  store ptr %2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ 0, %0 ], [ %6, %3 ]
  %5 = tail call ptr @irq_get_irq_data(i32 noundef %4) #7
  tail call void @icu_mask_irq(ptr noundef %5)
  tail call void @irq_set_chip_and_handler_name(i32 noundef %4, ptr noundef nonnull @icu_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  %6 = add nuw nsw i32 %4, 1
  %7 = icmp eq i32 %6, 64
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  tail call void @irq_set_default_host(ptr noundef %9) #7
  %10 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp_handle_irq) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_default_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmp_handle_irq(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @mmp_icu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 268
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, 63
  %9 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %10 = tail call i32 @generic_handle_domain_irq(ptr noundef %9, i32 noundef %8) #7
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mmp2_init_icu() local_unnamed_addr #1 section ".init.text" {
  store i32 8, ptr @max_icu_nr, align 4
  %1 = tail call ptr @ioremap(i32 noundef -735567872, i32 noundef 4096) #7
  store ptr %1, ptr @mmp_icu_base, align 4
  store i32 32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 96, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  store i32 64, ptr @icu_data, align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %2 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef nonnull @icu_data) #7
  store ptr %2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %3 = load ptr, ptr @mmp_icu_base, align 4
  %4 = getelementptr i8, ptr %3, i32 336
  store ptr %4, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 3), align 4
  %5 = getelementptr i8, ptr %3, i32 360
  store ptr %5, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 4), align 4
  %6 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %7 = load i32, ptr @icu_data, align 4
  %8 = add i32 %7, %6
  store i32 %8, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 9), align 4
  store i32 1, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 10), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1), align 4
  store i32 4, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 2), align 4
  store i32 %8, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 1), align 4
  %9 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %8, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1)) #7
  store ptr %9, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 11), align 4
  %10 = load ptr, ptr @mmp_icu_base, align 4
  %11 = getelementptr i8, ptr %10, i32 340
  store ptr %11, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 3), align 4
  %12 = getelementptr i8, ptr %10, i32 364
  store ptr %12, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 4), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2), align 4
  store i32 5, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 2), align 4
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 1), align 4
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1), align 4
  %15 = add i32 %14, %13
  store i32 %15, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 1), align 4
  %16 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2)) #7
  store ptr %16, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 11), align 4
  %17 = load ptr, ptr @mmp_icu_base, align 4
  %18 = getelementptr i8, ptr %17, i32 384
  store ptr %18, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 3), align 4
  %19 = getelementptr i8, ptr %17, i32 380
  store ptr %19, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 4), align 4
  store i32 3, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3), align 4
  store i32 9, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 2), align 4
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2), align 4
  %22 = add i32 %21, %20
  store i32 %22, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 1), align 4
  %23 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 3, i32 noundef %22, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3)) #7
  store ptr %23, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 11), align 4
  %24 = load ptr, ptr @mmp_icu_base, align 4
  %25 = getelementptr i8, ptr %24, i32 344
  store ptr %25, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 3), align 4
  %26 = getelementptr i8, ptr %24, i32 368
  store ptr %26, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 4), align 4
  store i32 5, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4), align 4
  store i32 17, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 2), align 4
  %27 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 1), align 4
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3), align 4
  %29 = add i32 %28, %27
  store i32 %29, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 1), align 4
  %30 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 5, i32 noundef %29, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4)) #7
  store ptr %30, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 11), align 4
  %31 = load ptr, ptr @mmp_icu_base, align 4
  %32 = getelementptr i8, ptr %31, i32 348
  store ptr %32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 3), align 4
  %33 = getelementptr i8, ptr %31, i32 372
  store ptr %33, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 4), align 4
  store i32 15, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5), align 4
  store i32 35, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 2), align 4
  %34 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 1), align 4
  %35 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4), align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 1), align 4
  %37 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 15, i32 noundef %36, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5)) #7
  store ptr %37, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 11), align 4
  %38 = load ptr, ptr @mmp_icu_base, align 4
  %39 = getelementptr i8, ptr %38, i32 352
  store ptr %39, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 3), align 4
  %40 = getelementptr i8, ptr %38, i32 376
  store ptr %40, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 4), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6), align 4
  store i32 51, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 2), align 4
  %41 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 1), align 4
  %42 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5), align 4
  %43 = add i32 %42, %41
  store i32 %43, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 1), align 4
  %44 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %43, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6)) #7
  store ptr %44, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 11), align 4
  %45 = load ptr, ptr @mmp_icu_base, align 4
  %46 = getelementptr i8, ptr %45, i32 392
  store ptr %46, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 3), align 4
  %47 = getelementptr i8, ptr %45, i32 388
  store ptr %47, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 4), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7), align 4
  store i32 55, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 2), align 4
  %48 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 1), align 4
  %49 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6), align 4
  %50 = add i32 %49, %48
  store i32 %50, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 1), align 4
  %51 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %50, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7)) #7
  store ptr %51, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 11), align 4
  %52 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 1), align 4
  %53 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7), align 4
  %54 = add i32 %53, %52
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %82, %0
  %57 = phi i32 [ %83, %82 ], [ 0, %0 ]
  %58 = tail call ptr @irq_get_irq_data(i32 noundef %57) #7
  tail call void @icu_mask_irq(ptr noundef %58)
  %59 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 2), align 4
  %60 = icmp eq i32 %57, %59
  %61 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 2), align 4
  %62 = icmp eq i32 %57, %61
  %63 = select i1 %60, i1 true, i1 %62
  %64 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 2), align 4
  %65 = icmp eq i32 %57, %64
  %66 = select i1 %63, i1 true, i1 %65
  %67 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 2), align 4
  %68 = icmp eq i32 %57, %67
  %69 = select i1 %66, i1 true, i1 %68
  %70 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 2), align 4
  %71 = icmp eq i32 %57, %70
  %72 = select i1 %69, i1 true, i1 %71
  %73 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 2), align 4
  %74 = icmp eq i32 %57, %73
  %75 = select i1 %72, i1 true, i1 %74
  %76 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 2), align 4
  %77 = icmp eq i32 %57, %76
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %56
  %80 = tail call i32 @irq_set_chip(i32 noundef %57, ptr noundef nonnull @icu_irq_chip) #7
  tail call void @__irq_set_handler(i32 noundef %57, ptr noundef nonnull @icu_mux_irq_demux, i32 noundef 1, ptr noundef null) #7
  br label %82

81:                                               ; preds = %56
  tail call void @irq_set_chip_and_handler_name(i32 noundef %57, ptr noundef nonnull @icu_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  br label %82

82:                                               ; preds = %81, %79
  %83 = add nuw nsw i32 %57, 1
  %84 = icmp eq i32 %83, %54
  br i1 %84, label %85, label %56

85:                                               ; preds = %82, %0
  %86 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  tail call void @irq_set_default_host(ptr noundef %86) #7
  %87 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp2_handle_irq) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @icu_mux_irq_demux(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #7
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #7
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = load i32, ptr @max_icu_nr, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %32, %24
  %28 = phi i32 [ %33, %32 ], [ 1, %24 ]
  %29 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %28, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %4, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, %25
  br i1 %34, label %35, label %27

35:                                               ; preds = %32, %24
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %4) #8
  br label %69

37:                                               ; preds = %27
  %38 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %28, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.irq_domain, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.icu_chip_data, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !8
  %45 = getelementptr inbounds %struct.icu_chip_data, ptr %41, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !8
  %48 = xor i32 %44, -1
  %49 = and i32 %47, %48
  store i32 %49, ptr %2, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %37
  %52 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %28, i32 1
  br label %58

53:                                               ; preds = %61, %58
  %54 = load ptr, ptr %45, align 4
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !8
  %56 = and i32 %55, %48
  store i32 %56, ptr %2, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53, %51
  %59 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #7
  %60 = icmp ult i32 %59, 32
  br i1 %60, label %61, label %53

61:                                               ; preds = %61, %58
  %62 = phi i32 [ %67, %61 ], [ %59, %58 ]
  %63 = load i32, ptr %52, align 4
  %64 = add i32 %63, %62
  %65 = call i32 @generic_handle_irq(i32 noundef %64) #7
  %66 = add nuw nsw i32 %62, 1
  %67 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %66) #7
  %68 = icmp ult i32 %67, 32
  br i1 %68, label %61, label %53

69:                                               ; preds = %53, %37, %35
  %70 = load ptr, ptr %7, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi ptr [ %74, %72 ], [ %70, %69 ]
  %77 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %76(ptr noundef %77) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmp2_handle_irq(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @mmp_icu_base, align 4
  %3 = getelementptr i8, ptr %2, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = and i32 %4, 63
  %9 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %10 = tail call i32 @generic_handle_domain_irq(ptr noundef %9, i32 noundef %8) #7
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmp_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = tail call fastcc i32 @mmp_init_bases(ptr noundef %0) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i32 81, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 127, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %6 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp_handle_irq) #8
  store i32 1, ptr @max_icu_nr, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmp2_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #1 section ".init.text" {
  %3 = tail call fastcc i32 @mmp_init_bases(ptr noundef %0) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i32 32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 96, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %6 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp2_handle_irq) #8
  store i32 1, ptr @max_icu_nr, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmp3_of_init(ptr noundef %0, ptr noundef readnone %1) #1 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #7
  store ptr %3, ptr @mmp_icu2_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %17

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @mmp_init_bases(ptr noundef %0) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load ptr, ptr @mmp_icu2_base, align 4
  tail call void @iounmap(ptr noundef %11) #7
  br label %17

12:                                               ; preds = %7
  store i32 32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 96, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  store i32 240, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 8), align 4
  %13 = icmp eq ptr %1, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp2_handle_irq) #8
  br label %16

16:                                               ; preds = %14, %12
  store i32 1, ptr @max_icu_nr, align 4
  br label %17

17:                                               ; preds = %16, %10, %5
  %18 = phi i32 [ %8, %10 ], [ 0, %16 ], [ -19, %5 ]
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmp2_mux_of_init(ptr noundef %0, ptr noundef readnone %1) #1 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !10
  %6 = icmp eq ptr %1, null
  br i1 %6, label %87, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @max_icu_nr, align 4
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %87

13:                                               ; preds = %7
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %5, i32 noundef 4, i32 noundef 4) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %87

18:                                               ; preds = %13
  %19 = load ptr, ptr @mmp_icu_base, align 4
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8
  %23 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 3
  store ptr %21, ptr %23, align 4
  %24 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %19, i32 %25
  %27 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 4
  store ptr %26, ptr %27, align 4
  %28 = call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %29 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 2
  store i32 %28, ptr %29, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %87, label %31

31:                                               ; preds = %18
  %32 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 1
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %3, align 4
  %34 = icmp eq ptr %0, null
  %35 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %36 = select i1 %34, ptr null, ptr %35
  %37 = call ptr @__irq_domain_add(ptr noundef %36, i32 noundef %33, i32 noundef %33, i32 noundef 0, ptr noundef nonnull @mmp_irq_domain_ops, ptr noundef %22) #7
  %38 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 11
  store ptr %37, ptr %38, align 4
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %31
  %42 = call i32 @irq_create_mapping_affinity(ptr noundef %37, i32 noundef 0, ptr noundef null) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %62, %41
  %45 = phi i32 [ 0, %41 ], [ %59, %62 ]
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %47 = load i32, ptr %32, align 4
  %48 = icmp ne i32 %47, 0
  %49 = icmp sgt i32 %45, 0
  %50 = and i1 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %44
  call void @irq_dispose_mapping(i32 noundef %47) #7
  %52 = icmp eq i32 %45, 1
  br i1 %52, label %85, label %79

53:                                               ; preds = %62, %41
  %54 = phi i32 [ %64, %62 ], [ %42, %41 ]
  %55 = phi i32 [ %59, %62 ], [ 0, %41 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 %54, ptr %32, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = add nuw i32 %55, 1
  %60 = load i32, ptr %3, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load ptr, ptr %38, align 4
  %64 = call i32 @irq_create_mapping_affinity(ptr noundef %63, i32 noundef %59, ptr noundef null) #7
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %44, label %53

66:                                               ; preds = %58, %31
  %67 = phi i32 [ 0, %31 ], [ %60, %58 ]
  store i32 %67, ptr %22, align 4
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, ptr %32, align 4
  %72 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 9
  store i32 %71, ptr %72, align 4
  %73 = load i32, ptr %4, align 4
  %74 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %8, i32 10
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, ptr %29, align 4
  call void @__irq_set_handler(i32 noundef %76, ptr noundef nonnull @icu_mux_irq_demux, i32 noundef 1, ptr noundef null) #7
  %77 = load i32, ptr @max_icu_nr, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr @max_icu_nr, align 4
  br label %87

79:                                               ; preds = %79, %51
  %80 = phi i32 [ %83, %79 ], [ 1, %51 ]
  %81 = load i32, ptr %32, align 4
  %82 = add i32 %81, %80
  call void @irq_dispose_mapping(i32 noundef %82) #7
  %83 = add nuw nsw i32 %80, 1
  %84 = icmp eq i32 %83, %45
  br i1 %84, label %85, label %79

85:                                               ; preds = %79, %51, %44
  %86 = load ptr, ptr %38, align 4
  call void @irq_domain_remove(ptr noundef %86) #7
  br label %87

87:                                               ; preds = %85, %75, %18, %16, %11, %2
  %88 = phi i32 [ -22, %11 ], [ -22, %16 ], [ -22, %85 ], [ 0, %75 ], [ -19, %2 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mmp_init_bases(ptr noundef %0) unnamed_addr #1 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %56

7:                                                ; preds = %1
  %8 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %8, ptr @mmp_icu_base, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %56

12:                                               ; preds = %7
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq ptr %0, null
  %15 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %16 = select i1 %14, ptr null, ptr %15
  %17 = call ptr @__irq_domain_add(ptr noundef %16, i32 noundef %13, i32 noundef %13, i32 noundef 0, ptr noundef nonnull @mmp_irq_domain_ops, ptr noundef nonnull @icu_data) #7
  store ptr %17, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %18 = load i32, ptr %2, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %12
  %21 = call i32 @irq_create_mapping_affinity(ptr noundef %17, i32 noundef 0, ptr noundef null) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %41, %20
  %24 = phi i32 [ 0, %20 ], [ %38, %41 ]
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne i32 %24, 0
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %23
  call void @irq_dispose_mapping(i32 noundef %26) #7
  %31 = icmp eq i32 %24, 1
  br i1 %31, label %53, label %47

32:                                               ; preds = %41, %20
  %33 = phi i32 [ %43, %41 ], [ %21, %20 ]
  %34 = phi i32 [ %38, %41 ], [ 0, %20 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 %33, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = add nuw nsw i32 %34, 1
  %39 = load i32, ptr %2, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %43 = call i32 @irq_create_mapping_affinity(ptr noundef %42, i32 noundef %38, ptr noundef null) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %23, label %32

45:                                               ; preds = %37, %12
  %46 = phi i32 [ %18, %12 ], [ %39, %37 ]
  store i32 %46, ptr @icu_data, align 4
  br label %56

47:                                               ; preds = %47, %30
  %48 = phi i32 [ %51, %47 ], [ 1, %30 ]
  %49 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %50 = add i32 %49, %48
  call void @irq_dispose_mapping(i32 noundef %50) #7
  %51 = add nuw nsw i32 %48, 1
  %52 = icmp eq i32 %51, %24
  br i1 %52, label %53, label %47

53:                                               ; preds = %47, %30, %23
  %54 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  call void @irq_domain_remove(ptr noundef %54) #7
  %55 = load ptr, ptr @mmp_icu_base, align 4
  call void @iounmap(ptr noundef %55) #7
  br label %56

56:                                               ; preds = %53, %45, %10, %5
  %57 = phi i32 [ %3, %5 ], [ -22, %53 ], [ 0, %45 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_irq_domain_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @icu_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mmp_irq_domain_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readnone %5) #5 {
  %7 = load i32, ptr %2, align 4
  store i32 %7, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

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
!8 = !{i64 2933560}
!9 = !{i64 2933142}
!10 = !{!"auto-init"}
