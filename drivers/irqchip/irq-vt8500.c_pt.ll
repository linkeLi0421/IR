; ModuleID = '/llk/IR/drivers/irqchip/irq-vt8500.c_pt.bc'
source_filename = "../drivers/irqchip/irq-vt8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.vt8500_irq_data = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__of_table_vt8500_irq = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_irq_init }, section "__irqchip_of_table", align 4
@active_cnt = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"\013%s: Interrupt controllers > VT8500_INTC_MAX\0A\00", align 1
@__func__.vt8500_irq_init = private unnamed_addr constant [16 x i8] c"vt8500_irq_init\00", align 1
@intc = internal global [2 x %struct.vt8500_irq_data] zeroinitializer, align 4
@vt8500_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @vt8500_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\013%s: Unable to map IO memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013%s: Unable to add irq domain!\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\016vt8500-irq: Added interrupt controller\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013%s: Incorrect IRQ map for slaved controller\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\016vt8500-irq: Enabled slave->parent interrupts\0A\00", align 1
@vt8500_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr @vt8500_irq_mask, ptr @vt8500_irq_mask, ptr null, ptr @vt8500_irq_unmask, ptr null, ptr null, ptr null, ptr @vt8500_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"vt8500\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_vt8500_irq], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vt8500_irq_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = load i32, ptr @active_cnt, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.vt8500_irq_init) #4
  br label %48

7:                                                ; preds = %2
  %8 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %9 = load i32, ptr @active_cnt, align 4
  %10 = getelementptr [2 x %struct.vt8500_irq_data], ptr @intc, i32 0, i32 %9
  store ptr %8, ptr %10, align 4
  %11 = icmp eq ptr %0, null
  %12 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %13 = select i1 %11, ptr null, ptr %12
  %14 = tail call ptr @__irq_domain_add(ptr noundef %13, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @vt8500_irq_domain_ops, ptr noundef %10) #5
  %15 = load i32, ptr @active_cnt, align 4
  %16 = getelementptr [2 x %struct.vt8500_irq_data], ptr @intc, i32 0, i32 %15, i32 1
  store ptr %14, ptr %16, align 4
  %17 = getelementptr [2 x %struct.vt8500_irq_data], ptr @intc, i32 0, i32 %15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vt8500_irq_init) #4
  br label %48

22:                                               ; preds = %7
  %23 = icmp eq ptr %14, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vt8500_irq_init) #4
  br label %48

26:                                               ; preds = %22
  %27 = tail call i32 @set_handle_irq(ptr noundef nonnull @vt8500_handle_irq) #4
  %28 = load i32, ptr @active_cnt, align 4
  %29 = getelementptr [2 x %struct.vt8500_irq_data], ptr @intc, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call fastcc void @vt8500_init_irq_hw(ptr noundef %30) #6
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #4
  %32 = load i32, ptr @active_cnt, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr @active_cnt, align 4
  %34 = tail call i32 @of_irq_count(ptr noundef %0) #5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %26
  %37 = tail call i32 @of_irq_count(ptr noundef %0) #5
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vt8500_irq_init) #4
  br label %48

41:                                               ; preds = %41, %36
  %42 = phi i32 [ %44, %41 ], [ 0, %36 ]
  %43 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %42) #5
  tail call void @enable_irq(i32 noundef %43) #5
  %44 = add nuw nsw i32 %42, 1
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %41

46:                                               ; preds = %41
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #4
  br label %48

48:                                               ; preds = %46, %39, %26, %24, %20, %5
  %49 = phi i32 [ -22, %39 ], [ 0, %26 ], [ 0, %46 ], [ 0, %24 ], [ 0, %20 ], [ 0, %5 ]
  ret i32 %49
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_handle_irq(ptr nocapture noundef readnone %0) #3 {
  %2 = load i32, ptr @active_cnt, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %19, %1
  %5 = phi i32 [ %20, %19 ], [ 0, %1 ]
  %6 = getelementptr [2 x %struct.vt8500_irq_data], ptr @intc, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = and i32 %8, 63
  %10 = icmp eq i32 %9, 63
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %7, i32 132
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %4
  %16 = getelementptr [2 x %struct.vt8500_irq_data], ptr @intc, i32 0, i32 %5, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @generic_handle_domain_irq(ptr noundef %17, i32 noundef %9) #5
  br label %19

19:                                               ; preds = %15, %11
  %20 = add nuw i32 %5, 1
  %21 = load i32, ptr @active_cnt, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @vt8500_init_irq_hw(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 64) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #5, !srcloc !10
  %4 = getelementptr i8, ptr %0, i32 64
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ 0, %1 ], [ %8, %5 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr i8, ptr %4, i32 %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #5, !srcloc !13
  %8 = add nuw nsw i32 %6, 1
  %9 = icmp eq i32 %8, 64
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_irq_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @vt8500_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_irq_mask(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 64
  %10 = getelementptr i8, ptr %9, i32 %8
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %12 = and i8 %11, 96
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %6, i32 128
  %16 = icmp ult i32 %8, 32
  %17 = select i1 %16, i32 0, i32 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %20 = load i32, ptr %7, align 4
  %21 = and i32 %20, 31
  %22 = shl nuw i32 1, %21
  %23 = or i32 %22, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %23) #5, !srcloc !10
  br label %31

24:                                               ; preds = %1
  %25 = load i32, ptr %7, align 4
  %26 = getelementptr i8, ptr %9, i32 %25
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %28 = and i8 %27, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %29 = load i32, ptr %7, align 4
  %30 = getelementptr i8, ptr %9, i32 %29
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %28) #5, !srcloc !13
  br label %31

31:                                               ; preds = %24, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vt8500_irq_unmask(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %12 = or i8 %11, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %13 = load i32, ptr %8, align 4
  %14 = getelementptr i8, ptr %7, i32 %13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %12) #5, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %13 = and i8 %12, -97
  switch i32 %1, label %24 [
    i32 8, label %28
    i32 4, label %18
    i32 2, label %14
    i32 1, label %16
  ]

14:                                               ; preds = %2
  %15 = or i8 %13, 64
  br label %18

16:                                               ; preds = %2
  %17 = or i8 %13, 32
  br label %18

18:                                               ; preds = %16, %14, %2
  %19 = phi ptr [ @handle_edge_irq, %14 ], [ @handle_edge_irq, %16 ], [ @handle_level_irq, %2 ]
  %20 = phi i8 [ %15, %14 ], [ %17, %16 ], [ %13, %2 ]
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_desc, ptr %22, i32 0, i32 3
  store ptr %19, ptr %23, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i8 [ %13, %2 ], [ %20, %18 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %26 = load i32, ptr %9, align 4
  %27 = getelementptr i8, ptr %8, i32 %26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %25) #5, !srcloc !13
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i32 [ 0, %24 ], [ -22, %2 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold }

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
!8 = !{i64 2600943}
!9 = !{i64 2152143763}
!10 = !{i64 2600525}
!11 = !{i64 2152144119}
!12 = !{i64 2152144444}
!13 = !{i64 2600328}
!14 = !{i64 2600723}
!15 = !{i64 2152140427}
!16 = !{i64 2152140954}
!17 = !{i64 2152141133}
!18 = !{i64 2152141477}
!19 = !{i64 2152141755}
!20 = !{i64 2152142034}
!21 = !{i64 2152142312}
!22 = !{i64 2152142591}
!23 = !{i64 2152143220}
