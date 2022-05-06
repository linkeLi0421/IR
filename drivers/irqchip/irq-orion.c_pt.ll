; ModuleID = '/llk/IR/drivers/irqchip/irq-orion.c_pt.bc'
source_filename = "../drivers/irqchip/irq-orion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }

@__of_table_orion_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_irq_init }, section "__irqchip_of_table", align 4
@__of_table_orion_bridge_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-bridge-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_bridge_irq_init }, section "__irqchip_of_table", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@orion_irq_domain = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [33 x i8] c"%pOFn: unable to add irq domain\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%pOFn: unable to alloc irq domain gc\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%pOFn: unable to request mem region %d\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%pOFn: unable to map resource %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"marvell,#interrupts\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013%pOFn: unable to add irq domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013%pOFn: unable to alloc irq domain gc\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\013%pOFn: unable to get resource\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\013%s: unable to request mem region\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\013%pOFn: unable to parse irq\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\013%pOFn: unable to map resource\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_orion_bridge_intc, ptr @__of_table_orion_intc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @orion_irq_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %8, %4 ]
  %6 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  %8 = add i32 %5, 1
  br i1 %7, label %4, label %9

9:                                                ; preds = %4
  %10 = shl i32 %5, 5
  %11 = icmp eq ptr %0, null
  %12 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %13 = select i1 %11, ptr null, ptr %12
  %14 = call ptr @__irq_domain_add(ptr noundef %13, i32 noundef %10, i32 noundef %10, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #8
  store ptr %14, ptr @orion_irq_domain, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %0) #9
  unreachable

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %14, i32 noundef 32, i32 noundef 1, ptr noundef %19, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = icmp sgt i32 %5, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  br label %27

26:                                               ; preds = %17
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  unreachable

27:                                               ; preds = %50, %24
  %28 = phi i32 [ 0, %24 ], [ %57, %50 ]
  %29 = phi i32 [ 0, %24 ], [ %56, %50 ]
  %30 = load ptr, ptr @orion_irq_domain, align 4
  %31 = call ptr @irq_get_domain_generic_chip(ptr noundef %30, i32 noundef %28) #8
  %32 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %3) #8
  %33 = load i32, ptr %3, align 4
  %34 = load i32, ptr %25, align 4
  %35 = sub i32 1, %33
  %36 = add i32 %35, %34
  %37 = load ptr, ptr %0, align 4
  %38 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %33, i32 noundef %36, ptr noundef %37, i32 noundef 0) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef %29) #9
  unreachable

41:                                               ; preds = %27
  %42 = load i32, ptr %3, align 4
  %43 = load i32, ptr %25, align 4
  %44 = sub i32 1, %42
  %45 = add i32 %44, %43
  %46 = call ptr @ioremap(i32 noundef %42, i32 noundef %45) #8
  %47 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef %0, i32 noundef %29) #9
  unreachable

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 2, i32 16
  store i32 4, ptr %51, align 4
  %52 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %52, align 4
  %53 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %53, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %47, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #8, !srcloc !10
  %56 = add nuw nsw i32 %29, 1
  %57 = add i32 %28, 32
  %58 = icmp eq i32 %56, %5
  br i1 %58, label %59, label %27

59:                                               ; preds = %50, %22
  %60 = call i32 @set_handle_irq(ptr noundef nonnull @orion_handle_irq) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @orion_bridge_irq_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 32, ptr %4, align 4
  %5 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %6 = load i32, ptr %4, align 4
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  %10 = call ptr @__irq_domain_add(ptr noundef %9, i32 noundef %6, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #10
  br label %67

14:                                               ; preds = %2
  %15 = load i32, ptr %4, align 4
  %16 = icmp sgt i32 %15, 32
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %14
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-orion.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 158, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  %20 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %10, i32 noundef %15, i32 noundef 1, ptr noundef %19, ptr noundef nonnull @handle_edge_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %0) #10
  br label %67

24:                                               ; preds = %18
  %25 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0) #10
  br label %67

29:                                               ; preds = %24
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 1, %30
  %34 = add i32 %33, %32
  %35 = load ptr, ptr %0, align 4
  %36 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %30, i32 noundef %34, ptr noundef %35, i32 noundef 0) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr %0, align 4
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %39) #10
  br label %67

41:                                               ; preds = %29
  %42 = call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #8
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %0) #10
  br label %67

46:                                               ; preds = %41
  %47 = call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %10, i32 noundef 0) #8
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %31, align 4
  %50 = sub i32 1, %48
  %51 = add i32 %50, %49
  %52 = call ptr @ioremap(i32 noundef %48, i32 noundef %51) #8
  %53 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %0) #10
  br label %67

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 2, i32 17
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 2, i32 16
  store i32 4, ptr %59, align 4
  %60 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 1, i32 2
  store ptr @orion_bridge_irq_startup, ptr %60, align 4
  %61 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 1, i32 6
  store ptr @irq_gc_ack_clr_bit, ptr %61, align 4
  %62 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %62, align 4
  %63 = getelementptr inbounds %struct.irq_chip_generic, ptr %47, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %63, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  call void @arm_heavy_mb() #8
  %64 = load ptr, ptr %53, align 4
  %65 = getelementptr i8, ptr %64, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #8, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  %66 = load ptr, ptr %53, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #8, !srcloc !10
  call void @irq_set_chained_handler_and_data(i32 noundef %42, ptr noundef nonnull @orion_bridge_irq_handler, ptr noundef nonnull %10) #8
  br label %67

67:                                               ; preds = %57, %55, %44, %38, %27, %22, %12
  %68 = phi i32 [ %20, %22 ], [ %25, %27 ], [ -22, %44 ], [ 0, %57 ], [ -12, %55 ], [ -12, %38 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @orion_handle_irq(ptr nocapture noundef readnone %0) #6 {
  %2 = load ptr, ptr @orion_irq_domain, align 4
  %3 = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain_chip_generic, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %38, %1
  %9 = phi ptr [ %40, %38 ], [ %2, %1 ]
  %10 = phi i32 [ %35, %38 ], [ 0, %1 ]
  %11 = phi i32 [ %39, %38 ], [ 0, %1 ]
  %12 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %9, i32 noundef %11) #8
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !15
  %16 = getelementptr inbounds %struct.irq_chip_generic, ptr %12, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.irq_chip_generic, ptr %12, i32 0, i32 6
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %18, %20 ], [ %32, %22 ]
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 true) #8, !range !16
  %25 = xor i32 %24, 31
  %26 = load ptr, ptr @orion_irq_domain, align 4
  %27 = load i32, ptr %21, align 4
  %28 = add i32 %27, %25
  %29 = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %28) #8
  %30 = shl nuw i32 1, %25
  %31 = xor i32 %30, -1
  %32 = and i32 %23, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %22

34:                                               ; preds = %22, %8
  %35 = add nuw i32 %10, 1
  %36 = load i32, ptr %5, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = add i32 %11, 32
  %40 = load ptr, ptr @orion_irq_domain, align 4
  br label %8

41:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_bridge_irq_startup(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_clr_bit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @orion_bridge_irq_handler(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef 0) #8
  %5 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !15
  %8 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.irq_chip_generic, ptr %4, i32 0, i32 6
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %10, %12 ], [ %23, %14 ]
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #8, !range !16
  %17 = xor i32 %16, 31
  %18 = load i32, ptr %13, align 4
  %19 = add i32 %18, %17
  %20 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %19) #8
  %21 = shl nuw i32 1, %17
  %22 = xor i32 %21, -1
  %23 = and i32 %15, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %14

25:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i64 2152143252}
!10 = !{i64 364822}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2152147452, i64 2152147944, i64 2152147489, i64 2152147545, i64 2152147579, i64 2152147603, i64 2152147644, i64 2152147665, i64 2152147693, i64 2152147727}
!13 = !{i64 2152150778}
!14 = !{i64 2152151095}
!15 = !{i64 365240}
!16 = !{i32 0, i32 33}
