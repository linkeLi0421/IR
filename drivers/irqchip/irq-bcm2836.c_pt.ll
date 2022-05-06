; ModuleID = '/llk/IR/drivers/irqchip/irq-bcm2836.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm2836.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@__of_table_bcm2836_arm_irqchip_l1_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2836-l1-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2836_arm_irqchip_l1_intc_of_init }, section "__irqchip_of_table", align 4
@intc.0 = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@intc.1 = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [47 x i8] c"%pOF: unable to map local interrupt registers\0A\00", align 1
@bcm2836_arm_irqchip_intc_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @bcm2836_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%pOF: unable to create IRQ domain\0A\00", align 1
@bcm2836_arm_irqchip_dummy = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_dummy_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@bcm2836_arm_irqchip_timer = internal global %struct.irq_chip { ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_mask_timer_irq, ptr null, ptr @bcm2836_arm_irqchip_unmask_timer_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@bcm2836_arm_irqchip_gpu = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_mask_gpu_irq, ptr null, ptr @bcm2836_arm_irqchip_unmask_gpu_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@bcm2836_arm_irqchip_pmu = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_mask_pmu_irq, ptr null, ptr @bcm2836_arm_irqchip_unmask_pmu_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@bcm2836_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\014Unexpected hw irq: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bcm2836-dummy\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bcm2836-timer\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bcm2836-gpu\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"bcm2836-pmu\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"drivers/irqchip/irq-bcm2836.c\00", align 1
@ipi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_ipi_alloc, ptr @bcm2836_arm_irqchip_ipi_free, ptr null, ptr null, ptr null }, align 4
@ipi_domain = internal unnamed_addr global ptr null, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"irqchip/bcm2836:starting\00", align 1
@bcm2836_arm_irqchip_ipi = internal global %struct.irq_chip { ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_ipi_ack, ptr @bcm2836_arm_irqchip_dummy_op, ptr null, ptr @bcm2836_arm_irqchip_dummy_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2836_arm_irqchip_ipi_send_mask, ptr null, ptr null, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"IPI\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_bcm2836_arm_irqchip_l1_intc], section "llvm.metadata"
@switch.table.bcm2836_map = private unnamed_addr constant [10 x ptr] [ptr @bcm2836_arm_irqchip_timer, ptr @bcm2836_arm_irqchip_timer, ptr @bcm2836_arm_irqchip_timer, ptr @bcm2836_arm_irqchip_timer, ptr @bcm2836_arm_irqchip_dummy, ptr @bcm2836_arm_irqchip_dummy, ptr @bcm2836_arm_irqchip_dummy, ptr @bcm2836_arm_irqchip_dummy, ptr @bcm2836_arm_irqchip_gpu, ptr @bcm2836_arm_irqchip_pmu], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2836_arm_irqchip_l1_intc_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #11
  store ptr %3, ptr @intc.1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %0) #12
  unreachable

6:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  %7 = load ptr, ptr @intc.1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %8 = load ptr, ptr @intc.1, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -2147483648) #11, !srcloc !9
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %12 = select i1 %10, ptr null, ptr %11
  %13 = tail call ptr @__irq_domain_add(ptr noundef %12, i32 noundef 10, i32 noundef 10, i32 noundef 0, ptr noundef nonnull @bcm2836_arm_irqchip_intc_ops, ptr noundef null) #11
  store ptr %13, ptr @intc.0, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %0) #12
  unreachable

16:                                               ; preds = %6
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %13, i32 noundef 1) #11
  tail call fastcc void @bcm2836_arm_irqchip_smp_init() #13
  %17 = tail call i32 @set_handle_irq(ptr noundef nonnull @bcm2836_arm_irqchip_handle_irq) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @bcm2836_arm_irqchip_smp_init() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #11
  %2 = getelementptr inbounds i8, ptr %1, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %2, i8 0, i64 60, i1 false)
  %3 = load ptr, ptr @intc.0, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  store i32 4, ptr %7, align 4
  %8 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %1) #11
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %0
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 259, i32 noundef 9, ptr noundef null) #11
  br label %28

11:                                               ; preds = %0
  %12 = load ptr, ptr @intc.0, align 4
  %13 = getelementptr inbounds %struct.irq_domain, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = call ptr @__irq_domain_add(ptr noundef %14, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @ipi_domain_ops, ptr noundef null) #11
  store ptr %15, ptr @ipi_domain, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 265, i32 noundef 9, ptr noundef null) #11
  br label %28

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.irq_domain, ptr %15, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 8
  store i32 %21, ptr %19, align 4
  call void @irq_domain_update_bus_token(ptr noundef nonnull %15, i32 noundef 6) #11
  %22 = load ptr, ptr @ipi_domain, align 4
  %23 = call i32 @__irq_domain_alloc_irqs(ptr noundef %22, i32 noundef -1, i32 noundef 32, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 275, i32 noundef 9, ptr noundef null) #11
  br label %28

26:                                               ; preds = %18
  call void @set_smp_ipi_range(i32 noundef %23, i32 noundef 32) #11
  call void @irq_set_chained_handler_and_data(i32 noundef %8, ptr noundef nonnull @bcm2836_arm_irqchip_handle_ipi, ptr noundef null) #11
  %27 = call i32 @__cpuhp_setup_state(i32 noundef 101, ptr noundef nonnull @.str.8, i1 noundef zeroext true, ptr noundef nonnull @bcm2836_cpu_starting, ptr noundef nonnull @bcm2836_cpu_dying, i1 noundef zeroext false) #11
  br label %28

28:                                               ; preds = %26, %25, %17, %10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_handle_irq(ptr nocapture noundef readnone %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = load ptr, ptr @intc.1, align 4
  %6 = getelementptr i8, ptr %5, i32 96
  %7 = shl i32 %4, 2
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true), !range !13
  %13 = load ptr, ptr @intc.0, align 4
  %14 = tail call i32 @generic_handle_domain_irq(ptr noundef %13, i32 noundef %12) #11
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2836_map(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = icmp ult i32 %2, 10
  br i1 %4, label %9, label %5

5:                                                ; preds = %9, %3
  %6 = load i1, ptr @bcm2836_map.__already_done, align 1
  br i1 %6, label %20, label %7, !prof !14

7:                                                ; preds = %5
  store i1 true, ptr @bcm2836_map.__already_done, align 1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %2) #14
  br label %20

9:                                                ; preds = %3
  %10 = trunc i32 %2 to i16
  %11 = lshr i16 799, %10
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [10 x ptr], ptr @switch.table.bcm2836_map, i32 0, i32 %2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @irq_set_percpu_devid(i32 noundef %1) #11
  %18 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %16, ptr noundef %19, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #11
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 4096) #11
  br label %20

20:                                               ; preds = %14, %7, %5
  %21 = phi i32 [ 0, %14 ], [ -22, %7 ], [ -22, %5 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @bcm2836_arm_irqchip_dummy_op(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_mask_timer_irq(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = load ptr, ptr @intc.1, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = shl i32 %6, 2
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %12 = shl nuw i32 1, %3
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %14) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_unmask_timer_irq(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = load ptr, ptr @intc.1, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = shl i32 %6, 2
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %12 = shl nuw i32 1, %3
  %13 = or i32 %11, %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %13) #11, !srcloc !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @bcm2836_arm_irqchip_mask_gpu_irq(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @bcm2836_arm_irqchip_unmask_gpu_irq(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_mask_pmu_irq(ptr nocapture noundef readnone %0) #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = shl nuw i32 1, %4
  %6 = load ptr, ptr @intc.1, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_unmask_pmu_irq(ptr nocapture noundef readnone %0) #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = shl nuw i32 1, %4
  %6 = load ptr, ptr @intc.1, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_handle_ipi(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #11
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #11
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = load ptr, ptr @intc.1, align 4
  %26 = getelementptr i8, ptr %25, i32 192
  %27 = shl i32 %6, 4
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true), !range !13
  %33 = load ptr, ptr @ipi_domain, align 4
  %34 = tail call i32 @generic_handle_domain_irq(ptr noundef %33, i32 noundef %32) #11
  br label %35

35:                                               ; preds = %31, %24
  %36 = load ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %40, %38 ], [ %36, %35 ]
  %43 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %42(ptr noundef %43) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2836_cpu_starting(i32 noundef %0) #4 {
  %2 = load ptr, ptr @intc.1, align 4
  %3 = getelementptr i8, ptr %2, i32 80
  %4 = shl i32 %0, 2
  %5 = getelementptr i8, ptr %3, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !17
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %7 = or i32 %6, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2836_cpu_dying(i32 noundef %0) #4 {
  %2 = load ptr, ptr @intc.1, align 4
  %3 = getelementptr i8, ptr %2, i32 80
  %4 = shl i32 %0, 2
  %5 = getelementptr i8, ptr %3, i32 %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !15
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !16
  %7 = and i32 %6, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #11, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2836_arm_irqchip_ipi_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %10 = add i32 %9, %1
  %11 = tail call i32 @irq_set_percpu_devid(i32 noundef %10) #11
  %12 = load ptr, ptr %7, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %10, i32 noundef %9, ptr noundef nonnull @bcm2836_arm_irqchip_ipi, ptr noundef %12, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #11
  %13 = add nuw i32 %9, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @bcm2836_arm_irqchip_ipi_free(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_ipi_ack(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr @intc.1, align 4
  %9 = getelementptr i8, ptr %8, i32 192
  %10 = shl i32 %4, 4
  %11 = getelementptr i8, ptr %9, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #11, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_arm_irqchip_ipi_send_mask(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = load ptr, ptr @intc.1, align 4
  %4 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !21
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #15
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %5, %8 ], [ %16, %10 ]
  %12 = load i32, ptr %9, align 4
  %13 = shl nuw i32 1, %12
  %14 = shl i32 %11, 4
  %15 = getelementptr i8, ptr %4, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !9
  %16 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef %1) #15
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %10, label %19

19:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!8 = !{i64 2152189658}
!9 = !{i64 3766885}
!10 = !{i64 2152189981}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 3767303}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2152181710}
!16 = !{i64 2152182173}
!17 = !{i64 2152182939}
!18 = !{i64 2152183400}
!19 = !{i64 2152184051}
!20 = !{i64 2152184641}
!21 = !{i64 2152187276}
