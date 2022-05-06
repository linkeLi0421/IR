; ModuleID = '/llk/IR/drivers/irqchip/irq-sunxi-nmi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-sunxi-nmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_sc_nmi_reg_offs = type { i32, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__of_table_sun6i_sc_nmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-sc-nmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_sc_nmi_irq_init }, section "__irqchip_of_table", align 4
@__of_table_sun7i_sc_nmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-sc-nmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_sc_nmi_irq_init }, section "__irqchip_of_table", align 4
@__of_table_sun9i_nmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-nmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_nmi_irq_init }, section "__irqchip_of_table", align 4
@sun6i_reg_offs = internal constant %struct.sunxi_sc_nmi_reg_offs { i32 0, i32 4, i32 52 }, section ".init.rodata", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str = private unnamed_addr constant [51 x i8] c"\013sunxi-nmi: Could not register interrupt domain.\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sunxi-nmi\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\013sunxi-nmi: Could not allocate generic interrupt chip.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\013sunxi-nmi: unable to parse irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\013sunxi-nmi: unable to map resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\013sunxi-nmi: Cannot assign multiple trigger modes to IRQ %d.\0A\00", align 1
@sun7i_reg_offs = internal constant %struct.sunxi_sc_nmi_reg_offs { i32 0, i32 4, i32 8 }, section ".init.rodata", align 4
@sun9i_reg_offs = internal constant %struct.sunxi_sc_nmi_reg_offs { i32 0, i32 8, i32 4 }, section ".init.rodata", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_sun6i_sc_nmi, ptr @__of_table_sun7i_sc_nmi, ptr @__of_table_sun9i_nmi], section "llvm.metadata"
@switch.table.sunxi_sc_nmi_set_type = private unnamed_addr constant [9 x i32] [i32 0, i32 3, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_sc_nmi_irq_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %0, ptr noundef nonnull @sun6i_reg_offs) #4
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun7i_sc_nmi_irq_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %0, ptr noundef nonnull @sun7i_reg_offs) #4
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun9i_nmi_irq_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %0, ptr noundef nonnull @sun9i_reg_offs) #4
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_sc_nmi_irq_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %5 = select i1 %3, ptr null, ptr %4
  %6 = tail call ptr @__irq_domain_add(ptr noundef %5, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %86

10:                                               ; preds = %2
  %11 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @handle_fasteoi_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %84

15:                                               ; preds = %10
  %16 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %84

20:                                               ; preds = %15
  %21 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %6, i32 noundef 0) #5
  br i1 %3, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %24, %22 ], [ @.str.5, %20 ]
  %27 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %26) #5
  %28 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  %32 = load ptr, ptr %28, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %84

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 3, i32 2
  store i32 12, ptr %35, align 4
  %36 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %36, align 4
  %37 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %37, align 4
  %38 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 1, i32 10
  store ptr @irq_gc_ack_set_bit, ptr %38, align 4
  %39 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 1, i32 13
  store ptr @sunxi_sc_nmi_set_type, ptr %39, align 4
  %40 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 2, i32 13
  store i32 66, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sunxi_sc_nmi_reg_offs, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 2, i32 17
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sunxi_sc_nmi_reg_offs, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 2, i32 16
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %1, align 4
  %48 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 2, i32 18, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr %struct.irq_chip_generic, ptr %21, i32 5, i32 7
  store i32 3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 1, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.irq_chip_generic, ptr %21, i32 3, i32 6
  store ptr %51, ptr %52, align 4
  %53 = getelementptr %struct.irq_chip_generic, ptr %21, i32 3, i32 11
  store ptr @irq_gc_ack_set_bit, ptr %53, align 4
  %54 = getelementptr %struct.irq_chip_generic, ptr %21, i32 3, i32 12
  store ptr @irq_gc_mask_clr_bit, ptr %54, align 4
  %55 = getelementptr %struct.irq_chip_generic, ptr %21, i32 3, i32 14
  store ptr @irq_gc_mask_set_bit, ptr %55, align 4
  %56 = getelementptr %struct.irq_chip_generic, ptr %21, i32 3, i32 18
  store ptr @sunxi_sc_nmi_set_type, ptr %56, align 4
  %57 = load i32, ptr %41, align 4
  %58 = getelementptr %struct.irq_chip_generic, ptr %21, i32 5, i32 2
  store i32 %57, ptr %58, align 4
  %59 = load i32, ptr %44, align 4
  %60 = getelementptr %struct.irq_chip_generic, ptr %21, i32 5, i32 1
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr %1, align 4
  %62 = getelementptr %struct.irq_chip_generic, ptr %21, i32 5, i32 4
  store i32 %61, ptr %62, align 4
  %63 = getelementptr %struct.irq_chip_generic, ptr %21, i32 5, i32 6
  store ptr @handle_edge_irq, ptr %63, align 4
  %64 = load i32, ptr %44, align 4
  %65 = getelementptr inbounds %struct.irq_chip_generic, ptr %21, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %34
  %69 = getelementptr i8, ptr %27, i32 %64
  tail call void %66(i32 noundef 0, ptr noundef %69) #5
  br label %73

70:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %71 = load ptr, ptr %28, align 4
  %72 = getelementptr i8, ptr %71, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #5, !srcloc !9
  br label %73

73:                                               ; preds = %70, %68
  %74 = load i32, ptr %41, align 4
  %75 = load ptr, ptr %65, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %28, align 4
  %79 = getelementptr i8, ptr %78, i32 %74
  tail call void %75(i32 noundef 1, ptr noundef %79) #5
  br label %83

80:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %81 = load ptr, ptr %28, align 4
  %82 = getelementptr i8, ptr %81, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 1) #5, !srcloc !9
  br label %83

83:                                               ; preds = %80, %77
  tail call void @irq_set_chained_handler_and_data(i32 noundef %16, ptr noundef nonnull @sunxi_sc_nmi_handle_irq, ptr noundef nonnull %6) #5
  br label %86

84:                                               ; preds = %30, %18, %13
  %85 = phi i32 [ %11, %13 ], [ -22, %18 ], [ %33, %30 ]
  tail call void @irq_domain_remove(ptr noundef nonnull %6) #5
  br label %86

86:                                               ; preds = %84, %83, %8
  %87 = phi i32 [ %85, %84 ], [ 0, %83 ], [ -12, %8 ]
  ret i32 %87
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_sc_nmi_set_type(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 19
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 2, i32 18, i32 1
  %7 = load i32, ptr %6, align 4
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  %8 = and i32 %1, 15
  %9 = icmp ult i32 %8, 9
  br i1 %9, label %16, label %10

10:                                               ; preds = %16, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %11 = load i16, ptr %4, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %14) #6
  br label %82

16:                                               ; preds = %2
  %17 = trunc i32 %8 to i16
  %18 = lshr i16 279, %17
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds [9 x i32], ptr @switch.table.sunxi_sc_nmi_set_type, i32 0, i32 %8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -16
  store i32 %27, ptr %25, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %8
  store i32 %30, ptr %28, align 4
  %31 = load ptr, ptr %24, align 4
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 33554432
  store i32 %33, ptr %31, align 4
  %34 = tail call i32 @irq_setup_alt_chip(ptr noundef %0, i32 noundef %1) #5
  %35 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %49, %21
  %39 = phi i32 [ %51, %49 ], [ 0, %21 ]
  %40 = phi i32 [ %50, %49 ], [ %7, %21 ]
  %41 = phi ptr [ %52, %49 ], [ %5, %21 ]
  %42 = getelementptr inbounds %struct.irq_chip_type, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, %1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.irq_chip_type, ptr %41, i32 0, i32 1, i32 5
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i32 [ %48, %46 ], [ %40, %38 ]
  %51 = add nuw i32 %39, 1
  %52 = getelementptr %struct.irq_chip_type, ptr %41, i32 1
  %53 = icmp eq i32 %51, %36
  br i1 %53, label %54, label %38

54:                                               ; preds = %49, %21
  %55 = phi i32 [ %7, %21 ], [ %50, %49 ]
  %56 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 %55
  br i1 %58, label %64, label %62

62:                                               ; preds = %54
  %63 = tail call i32 %57(ptr noundef %61) #5
  br label %66

64:                                               ; preds = %54
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #5, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = and i32 %67, -4
  %69 = or i32 %68, %23
  %70 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %59, align 4
  %75 = getelementptr i8, ptr %74, i32 %55
  tail call void %71(i32 noundef %69, ptr noundef %75) #5
  br label %79

76:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %77 = load ptr, ptr %59, align 4
  %78 = getelementptr i8, ptr %77, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %69) #5, !srcloc !9
  br label %79

79:                                               ; preds = %76, %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %80 = load i16, ptr %4, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  br label %82

82:                                               ; preds = %79, %10
  %83 = phi i32 [ -53, %10 ], [ 0, %79 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_sc_nmi_handle_irq(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #5
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #5
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #5
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef 0) #5
  %25 = load ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %29, %27 ], [ %25, %23 ]
  %32 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %31(ptr noundef %32) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_setup_alt_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2151373188}
!9 = !{i64 3610961}
!10 = !{i64 2149214426}
!11 = !{i64 2149210250}
!12 = !{i64 2149210325, i64 2149210352, i64 2149210399, i64 2149210421, i64 2149210449, i64 2149210469}
!13 = !{i64 2149237429}
!14 = !{i64 3611379}
!15 = !{i64 2151373852}
