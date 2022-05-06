; ModuleID = '/llk/IR/drivers/irqchip/irq-hip04.c_pt.bc'
source_filename = "../drivers/irqchip/irq-hip04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hip04_irq_data = type { ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__of_table_hip04_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip04-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hip04_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/irqchip/irq-hip04.c\00", align 1
@hip04_data = internal global %struct.hip04_irq_data zeroinitializer, section ".data..read_mostly", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"fail to map hip04 intc dist registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to map hip04 intc cpu registers\0A\00", align 1
@hip04_cpu_map = internal unnamed_addr global [16 x i16] zeroinitializer, section ".data..read_mostly", align 2
@.str.3 = private unnamed_addr constant [34 x i8] c"\013failed to allocate IRQ numbers\0A\00", align 1
@hip04_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @hip04_irq_domain_map, ptr null, ptr @hip04_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"irqchip/hip04:starting\00", align 1
@hip04_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hip04_mask_irq, ptr null, ptr @hip04_unmask_irq, ptr @hip04_eoi_irq, ptr @hip04_irq_set_affinity, ptr null, ptr @hip04_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hip04_ipi_send_mask, ptr null, ptr null, i32 21 }, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"HIP04 INTC\00", align 1
@irq_controller_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"\014GIC: PPI%d is secure or misconfigured\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"\012GIC CPU mask not found - kernel will fail to boot.\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_hip04_intc], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hip04_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #9
  br label %32

5:                                                ; preds = %2
  %6 = tail call ptr @of_iomap(ptr noundef nonnull %0, i32 noundef 0) #9
  store ptr %6, ptr @hip04_data, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %8, %5
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %0, i32 noundef 1) #9
  store ptr %10, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 1), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 9, ptr noundef nonnull @.str.2) #9
  br label %13

13:                                               ; preds = %12, %9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(32) @hip04_cpu_map, i8 -1, i32 32, i1 false)
  %14 = load ptr, ptr @hip04_data, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !9
  %17 = shl i32 %16, 5
  %18 = and i32 %17, 992
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 478)
  %20 = add nuw nsw i32 %19, 32
  store i32 %20, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 3), align 4
  %21 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef %20, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %32

25:                                               ; preds = %13
  %26 = tail call ptr @irq_domain_add_legacy(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %21, i32 noundef 0, ptr noundef nonnull @hip04_irq_domain_ops, ptr noundef nonnull @hip04_data) #9
  store ptr %26, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 2), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 393, i32 noundef 9, ptr noundef null) #9
  br label %32

29:                                               ; preds = %25
  tail call void @set_smp_ipi_range(i32 noundef %21, i32 noundef 16) #9
  %30 = tail call i32 @set_handle_irq(ptr noundef nonnull @hip04_handle_irq) #10
  tail call fastcc void @hip04_irq_dist_init() #11
  %31 = tail call i32 @__cpuhp_setup_state(i32 noundef 98, ptr noundef nonnull @.str.4, i1 noundef zeroext true, ptr noundef nonnull @hip04_irq_starting_cpu, ptr noundef null, i1 noundef zeroext false) #9
  br label %32

32:                                               ; preds = %29, %28, %23, %4
  %33 = phi i32 [ -19, %4 ], [ -22, %23 ], [ -22, %28 ], [ 0, %29 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hip04_handle_irq(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %2, i32 12
  br label %4

4:                                                ; preds = %4, %1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !9
  %6 = and i32 %5, 1023
  %7 = icmp ult i32 %6, 511
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 2), align 4
  %10 = tail call i32 @generic_handle_domain_irq(ptr noundef %9, i32 noundef %6) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hip04_irq_dist_init() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 3), align 4
  %2 = load ptr, ptr @hip04_data, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #9, !srcloc !10
  %3 = tail call fastcc zeroext i16 @hip04_get_cpumask()
  %4 = zext i16 %3 to i32
  %5 = mul nuw i32 %4, 65537
  %6 = icmp ugt i32 %1, 32
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = getelementptr i8, ptr %2, i32 2048
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 32, %7 ], [ %13, %9 ]
  %11 = shl i32 %10, 1
  %12 = getelementptr i8, ptr %8, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %5) #9, !srcloc !10
  %13 = add i32 %10, 2
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %9, label %15

15:                                               ; preds = %9, %0
  tail call void @gic_dist_config(ptr noundef %2, i32 noundef %1, ptr noundef null) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip04_irq_starting_cpu(i32 noundef %0) #3 {
  %2 = load ptr, ptr @hip04_data, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.hip04_irq_data, ptr @hip04_data, i32 0, i32 1), align 4
  %4 = tail call ptr @llvm.thread.pointer() #9
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 15
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-hip04.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

9:                                                ; preds = %1
  %10 = tail call fastcc zeroext i16 @hip04_get_cpumask() #9
  %11 = getelementptr [16 x i16], ptr @hip04_cpu_map, i32 0, i32 %6
  store i16 %10, ptr %11, align 2
  %12 = xor i16 %10, -1
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  %16 = and i16 %15, %12
  store i16 %16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  br label %25

17:                                               ; preds = %9
  %18 = load i16, ptr @hip04_cpu_map, align 2
  %19 = and i16 %18, %12
  store i16 %19, ptr @hip04_cpu_map, align 2
  %20 = icmp eq i32 %6, 1
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  %23 = and i16 %22, %12
  store i16 %23, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 1), align 2
  %24 = icmp eq i32 %6, 2
  br i1 %24, label %32, label %28

25:                                               ; preds = %17, %14
  %26 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  %27 = and i16 %26, %12
  store i16 %27, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  br label %32

28:                                               ; preds = %21
  %29 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  %30 = and i16 %29, %12
  store i16 %30, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 2), align 2
  %31 = icmp eq i32 %6, 3
  br i1 %31, label %39, label %35

32:                                               ; preds = %25, %21
  %33 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  %34 = and i16 %33, %12
  store i16 %34, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  br label %39

35:                                               ; preds = %28
  %36 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  %37 = and i16 %36, %12
  store i16 %37, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 3), align 2
  %38 = icmp eq i32 %6, 4
  br i1 %38, label %46, label %42

39:                                               ; preds = %32, %28
  %40 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  %41 = and i16 %40, %12
  store i16 %41, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  br label %46

42:                                               ; preds = %35
  %43 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  %44 = and i16 %43, %12
  store i16 %44, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 4), align 2
  %45 = icmp eq i32 %6, 5
  br i1 %45, label %53, label %49

46:                                               ; preds = %39, %35
  %47 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  %48 = and i16 %47, %12
  store i16 %48, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  br label %53

49:                                               ; preds = %42
  %50 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  %51 = and i16 %50, %12
  store i16 %51, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 5), align 2
  %52 = icmp eq i32 %6, 6
  br i1 %52, label %60, label %56

53:                                               ; preds = %46, %42
  %54 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  %55 = and i16 %54, %12
  store i16 %55, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  br label %60

56:                                               ; preds = %49
  %57 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  %58 = and i16 %57, %12
  store i16 %58, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 6), align 2
  %59 = icmp eq i32 %6, 7
  br i1 %59, label %67, label %63

60:                                               ; preds = %53, %49
  %61 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  %62 = and i16 %61, %12
  store i16 %62, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  br label %67

63:                                               ; preds = %56
  %64 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  %65 = and i16 %64, %12
  store i16 %65, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 7), align 2
  %66 = icmp eq i32 %6, 8
  br i1 %66, label %74, label %70

67:                                               ; preds = %60, %56
  %68 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  %69 = and i16 %68, %12
  store i16 %69, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  br label %74

70:                                               ; preds = %63
  %71 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  %72 = and i16 %71, %12
  store i16 %72, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 8), align 2
  %73 = icmp eq i32 %6, 9
  br i1 %73, label %81, label %77

74:                                               ; preds = %67, %63
  %75 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  %76 = and i16 %75, %12
  store i16 %76, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  br label %81

77:                                               ; preds = %70
  %78 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  %79 = and i16 %78, %12
  store i16 %79, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 9), align 2
  %80 = icmp eq i32 %6, 10
  br i1 %80, label %88, label %84

81:                                               ; preds = %74, %70
  %82 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  %83 = and i16 %82, %12
  store i16 %83, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  br label %88

84:                                               ; preds = %77
  %85 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  %86 = and i16 %85, %12
  store i16 %86, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 10), align 2
  %87 = icmp eq i32 %6, 11
  br i1 %87, label %95, label %91

88:                                               ; preds = %81, %77
  %89 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  %90 = and i16 %89, %12
  store i16 %90, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  br label %95

91:                                               ; preds = %84
  %92 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  %93 = and i16 %92, %12
  store i16 %93, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 11), align 2
  %94 = icmp eq i32 %6, 12
  br i1 %94, label %102, label %98

95:                                               ; preds = %88, %84
  %96 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  %97 = and i16 %96, %12
  store i16 %97, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  br label %102

98:                                               ; preds = %91
  %99 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  %100 = and i16 %99, %12
  store i16 %100, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 12), align 2
  %101 = icmp eq i32 %6, 13
  br i1 %101, label %109, label %105

102:                                              ; preds = %95, %91
  %103 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  %104 = and i16 %103, %12
  store i16 %104, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  br label %109

105:                                              ; preds = %98
  %106 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  %107 = and i16 %106, %12
  store i16 %107, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 13), align 2
  %108 = icmp eq i32 %6, 14
  br i1 %108, label %112, label %113

109:                                              ; preds = %102, %98
  %110 = load i16, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 14), align 2
  %111 = and i16 %110, %12
  store i16 %111, ptr getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 14), align 2
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %105
  %114 = phi ptr [ getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 15), %112 ], [ getelementptr inbounds ([16 x i16], ptr @hip04_cpu_map, i32 0, i32 14), %105 ]
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, %12
  store i16 %116, ptr %114, align 2
  tail call void @gic_cpu_config(ptr noundef %2, i32 noundef 32, ptr noundef null) #9
  %117 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 240) #9, !srcloc !10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #9, !srcloc !10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip04_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp ult i32 %2, 32
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @irq_set_percpu_devid(i32 noundef %1) #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @hip04_irq_chip, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null) #9
  br label %13

7:                                                ; preds = %3
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @hip04_irq_chip, ptr noundef nonnull @handle_fasteoi_irq, ptr noundef null) #9
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 1024, i32 noundef 0) #9
  %8 = tail call ptr @irq_to_desc(i32 noundef %1) #9
  %9 = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 16777216
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %7, %5
  %14 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %15) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hip04_irq_domain_xlate(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.fwnode_handle, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @of_fwnode_ops
  %16 = getelementptr i8, ptr %8, i32 -12
  %17 = select i1 %15, ptr %16, ptr null
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi ptr [ null, %6 ], [ %17, %12 ]
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = icmp eq i32 %3, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load i32, ptr %2, align 4
  %25 = icmp ult i32 %24, 16
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  store i32 %24, ptr %4, align 4
  br label %41

27:                                               ; preds = %21
  %28 = icmp ult i32 %3, 3
  br i1 %28, label %43, label %29

29:                                               ; preds = %27
  %30 = getelementptr i32, ptr %2, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 16
  store i32 %32, ptr %4, align 4
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = add i32 %31, 32
  store i32 %36, ptr %4, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = getelementptr i32, ptr %2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 15
  br label %41

41:                                               ; preds = %37, %26
  %42 = phi i32 [ %40, %37 ], [ 1, %26 ]
  store i32 %42, ptr %5, align 4
  br label %43

43:                                               ; preds = %41, %27, %23, %18
  %44 = phi i32 [ -22, %18 ], [ -22, %27 ], [ -22, %23 ], [ 0, %41 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hip04_mask_irq(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #9
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 384
  %10 = load i32, ptr %2, align 4
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 536870908
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #9, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %14 = load i16, ptr @irq_controller_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @irq_controller_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hip04_unmask_irq(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #9
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 256
  %10 = load i32, ptr %2, align 4
  %11 = lshr i32 %10, 3
  %12 = and i32 %11, 536870908
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %5) #9, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %14 = load i16, ptr @irq_controller_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @irq_controller_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hip04_eoi_irq(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hip04_irq_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %3) #9, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip04_irq_set_affinity(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) #3 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 4
  %7 = and i32 %6, 16
  br i1 %2, label %16, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %1, align 4
  %10 = load i32, ptr @__cpu_online_mask, align 4
  %11 = and i32 %9, 65535
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  %14 = tail call i32 @llvm.cttz.i32(i32 %12, i1 true) #9, !range !16
  %15 = select i1 %13, i32 16, i32 %14
  br label %18

16:                                               ; preds = %3
  %17 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #9
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %17, %16 ], [ %15, %8 ]
  %20 = icmp ult i32 %19, 16
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %19, %21
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #9
  %25 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 2048
  %29 = load i32, ptr %4, align 4
  %30 = shl i32 %29, 1
  %31 = and i32 %30, -4
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = shl nuw i32 65535, %7
  %34 = getelementptr [16 x i16], ptr @hip04_cpu_map, i32 0, i32 %19
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = shl nuw i32 %36, %7
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !9
  %39 = xor i32 %33, -1
  %40 = and i32 %38, %39
  %41 = or i32 %40, %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %41) #9, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %42 = load i16, ptr @irq_controller_lock, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr @irq_controller_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %44 = add nuw nsw i32 %19, 1
  %45 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %44
  %46 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.irq_common_data, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %45, align 4
  store i32 %49, ptr %48, align 4
  br label %50

50:                                               ; preds = %24, %18
  %51 = phi i32 [ 0, %24 ], [ -22, %18 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip04_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = freeze i32 %7
  %11 = icmp ugt i32 %10, 31
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 4, label %13
    i32 1, label %13
  ]

13:                                               ; preds = %12, %12, %9
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #9
  %14 = getelementptr i8, ptr %5, i32 3072
  %15 = tail call i32 @gic_configure_irq(i32 noundef %10, i32 noundef %1, ptr noundef %14, ptr noundef null) #9
  %16 = icmp ne i32 %15, 0
  %17 = icmp ult i32 %10, 32
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = add nsw i32 %10, -16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %20) #10
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ 0, %19 ], [ %15, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %24 = load i16, ptr @irq_controller_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @irq_controller_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  br label %26

26:                                               ; preds = %22, %12, %2
  %27 = phi i32 [ %23, %22 ], [ -22, %2 ], [ -22, %12 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hip04_ipi_send_mask(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #3 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @irq_controller_lock) #9
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #12
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %7, label %18

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %14, %7 ], [ %5, %2 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %10 = getelementptr [16 x i16], ptr @hip04_cpu_map, i32 0, i32 %8
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %9, %12
  %14 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef %1) #12
  %15 = icmp ult i32 %14, %4
  br i1 %15, label %7, label %16

16:                                               ; preds = %7
  %17 = shl i32 %13, 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !17
  %20 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %19
  %23 = load ptr, ptr @hip04_data, align 4
  %24 = getelementptr i8, ptr %23, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @irq_controller_lock, i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_configure_irq(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @hip04_get_cpumask() unnamed_addr #3 {
  %1 = load ptr, ptr @hip04_data, align 4
  %2 = getelementptr i8, ptr %1, i32 2048
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !9
  %4 = lshr i32 %3, 16
  %5 = or i32 %4, %3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %99

7:                                                ; preds = %0
  %8 = getelementptr i8, ptr %1, i32 2052
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !9
  %10 = lshr i32 %9, 16
  %11 = or i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %99

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %1, i32 2056
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  %16 = lshr i32 %15, 16
  %17 = or i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %99

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %1, i32 2060
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !9
  %22 = lshr i32 %21, 16
  %23 = or i32 %22, %21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %99

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %1, i32 2064
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !9
  %28 = lshr i32 %27, 16
  %29 = or i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %99

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %1, i32 2068
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !9
  %34 = lshr i32 %33, 16
  %35 = or i32 %34, %33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %99

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %1, i32 2072
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !9
  %40 = lshr i32 %39, 16
  %41 = or i32 %40, %39
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %1, i32 2076
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !9
  %46 = lshr i32 %45, 16
  %47 = or i32 %46, %45
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %99

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %1, i32 2080
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !9
  %52 = lshr i32 %51, 16
  %53 = or i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %49
  %56 = getelementptr i8, ptr %1, i32 2084
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !9
  %58 = lshr i32 %57, 16
  %59 = or i32 %58, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %1, i32 2088
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !9
  %64 = lshr i32 %63, 16
  %65 = or i32 %64, %63
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %1, i32 2092
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !9
  %70 = lshr i32 %69, 16
  %71 = or i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %67
  %74 = getelementptr i8, ptr %1, i32 2096
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !9
  %76 = lshr i32 %75, 16
  %77 = or i32 %76, %75
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = getelementptr i8, ptr %1, i32 2100
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #9, !srcloc !9
  %82 = lshr i32 %81, 16
  %83 = or i32 %82, %81
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = getelementptr i8, ptr %1, i32 2104
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !9
  %88 = lshr i32 %87, 16
  %89 = or i32 %88, %87
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = getelementptr i8, ptr %1, i32 2108
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !9
  %94 = lshr i32 %93, 16
  %95 = or i32 %94, %93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %99

99:                                               ; preds = %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7, %0
  %100 = phi i32 [ 0, %97 ], [ %5, %0 ], [ %11, %7 ], [ %17, %13 ], [ %23, %19 ], [ %29, %25 ], [ %35, %31 ], [ %41, %37 ], [ %47, %43 ], [ %53, %49 ], [ %59, %55 ], [ %65, %61 ], [ %71, %67 ], [ %77, %73 ], [ %83, %79 ], [ %89, %85 ], [ %95, %91 ]
  %101 = trunc i32 %100 to i16
  ret i16 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_cpu_config(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3653127}
!10 = !{i64 3652709}
!11 = !{i64 2152213407, i64 2152213899, i64 2152213444, i64 2152213500, i64 2152213534, i64 2152213558, i64 2152213599, i64 2152213620, i64 2152213648, i64 2152213682}
!12 = !{i64 2148934749}
!13 = !{i64 2148930573}
!14 = !{i64 2148930648, i64 2148930675, i64 2148930722, i64 2148930744, i64 2148930772, i64 2148930792}
!15 = !{i64 2148957752}
!16 = !{i32 0, i32 33}
!17 = !{i64 2152210962}
